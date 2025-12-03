@interface MeasurementControllerBase
- (BOOL)_shouldConsiderPageLoadEnded;
- (MeasurementControllerBase)initWithPluginPageContextController:(id)controller;
- (id).cxx_construct;
- (void)_clearPageLoadState;
- (void)_maybeEndPageLoadSoon;
- (void)_postPageLoadEnd;
- (void)_resourceLoadCompleted:(unint64_t)completed;
- (void)_sendPageLoadFinishedEvent;
- (void)_waitforLoadEndTimerFired:(id)fired;
- (void)webProcessPlugInBrowserContextController:(id)controller didFailLoadWithErrorForFrame:(id)frame error:(id)error;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFirstVisuallyNonEmptyLayoutForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didHandleOnloadEventsForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFailLoadForResource:(unint64_t)resource error:(id)error;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFinishLoadForResource:(unint64_t)resource;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didInitiateLoadForResource:(unint64_t)resource request:(id)request;
- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change;
@end

@implementation MeasurementControllerBase

- (MeasurementControllerBase)initWithPluginPageContextController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = MeasurementControllerBase;
  v5 = [(MeasurementControllerBase *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contextController, controllerCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loadingFrames = v6->_loadingFrames;
    v6->_loadingFrames = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    loadData = v6->_loadData;
    v6->_loadData = v9;

    v6->_version = 4;
    v6->_allSubresourcesFinishedLoadingDelay = 1.0;
    v11 = v6;
  }

  return v6;
}

- (void)_clearPageLoadState
{
  selfCopy = self;
  self->_currentPageLoadFinished = 0;
  objc_msgSend_removeAllObjects(self->_loadingFrames, a2, v2, v3);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  loadData = selfCopy->_loadData;
  selfCopy->_loadData = v5;

  left = selfCopy->_loadingSubresources.__tree_.__end_node_.__left_;
  selfCopy = (selfCopy + 40);
  sub_259B4B184(&selfCopy[-1]._allSubresourcesFinishedLoadingDelay, left);
  selfCopy->super.isa = 0;
  selfCopy->_waitForLoadToReallyEnd = 0;
  *&selfCopy[-1]._allSubresourcesFinishedLoadingDelay = selfCopy;
  contextController = selfCopy[-1]._contextController;

  MEMORY[0x2821F9670](contextController, sel_invalidate, v8, v9);
}

- (BOOL)_shouldConsiderPageLoadEnded
{
  if (self->_version <= 4)
  {
    if (self->_currentPageLoadFinished && !self->_loadingSubresources.__tree_.__size_)
    {
      return objc_msgSend_count(self->_loadingFrames, a2, v2, v3) == 0;
    }

    return 0;
  }

  if (self->_loadingSubresources.__tree_.__size_)
  {
    return 0;
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(self->_loadData, a2, @"PageLoadDOMContentLoadedTime", v3);
  if (v8)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(self->_loadData, v6, @"PageLoadFirstMeaningfulPaintTime", v7);
    v5 = v9 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_waitforLoadEndTimerFired:(id)fired
{
  if (objc_msgSend__shouldConsiderPageLoadEnded(self, a2, fired, v3))
  {

    MEMORY[0x2821F9670](self, sel__postPageLoadEnd, v5, v6);
  }
}

- (void)_postPageLoadEnd
{
  objc_msgSend__sendPageLoadFinishedEvent(self, a2, v2, v3);

  objc_msgSend__clearPageLoadState(self, v5, v6, v7);
}

- (void)_maybeEndPageLoadSoon
{
  if (objc_msgSend__shouldConsiderPageLoadEnded(self, a2, v2, v3))
  {
    objc_msgSend__doAfterPageLoad(self, v5, v6, v7);
    if (objc_msgSend_isValid(self->_waitForLoadToReallyEnd, v8, v9, v10))
    {
      waitForLoadToReallyEnd = self->_waitForLoadToReallyEnd;
      v28 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v11, v12, v13, self->_allSubresourcesFinishedLoadingDelay);
      objc_msgSend_setFireDate_(waitForLoadToReallyEnd, v15, v28, v16);
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CBEBB8]);
      v28 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v18, v19, v20, self->_allSubresourcesFinishedLoadingDelay);
      v22 = objc_msgSend_initWithFireDate_interval_target_selector_userInfo_repeats_(v17, v21, v28, self, sel__waitforLoadEndTimerFired_, 0, 0, 0.0);
      v23 = self->_waitForLoadToReallyEnd;
      self->_waitForLoadToReallyEnd = v22;
    }

    v29 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v24, v25, v26);
    objc_msgSend_addTimer_forMode_(v29, v27, self->_waitForLoadToReallyEnd, *MEMORY[0x277CBE640]);
  }
}

- (void)_sendPageLoadFinishedEvent
{
  kdebug_trace();
  pageLoadTestEventsProxy = self->_pageLoadTestEventsProxy;
  if (!pageLoadTestEventsProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contextController);
    v9 = objc_msgSend__remoteObjectRegistry(WeakRetained, v6, v7, v8);

    v12 = objc_msgSend_remoteObjectInterfaceWithProtocol_(MEMORY[0x277CE3898], v10, &unk_286ADABD8, v11);
    v15 = objc_msgSend_remoteObjectProxyWithInterface_(v9, v13, v12, v14);
    v16 = self->_pageLoadTestEventsProxy;
    self->_pageLoadTestEventsProxy = v15;

    pageLoadTestEventsProxy = self->_pageLoadTestEventsProxy;
  }

  loadData = self->_loadData;

  MEMORY[0x2821F9670](pageLoadTestEventsProxy, sel_didFinishPageLoadWithLoadData_, loadData, v3);
}

- (void)_resourceLoadCompleted:(unint64_t)completed
{
  p_end_node = &self->_loadingSubresources.__tree_.__end_node_;
  left = self->_loadingSubresources.__tree_.__end_node_.__left_;
  if (left)
  {
    p_loadingSubresources = &self->_loadingSubresources;
    v7 = p_end_node;
    do
    {
      v8 = left[4];
      v9 = v8 >= completed;
      v10 = v8 < completed;
      if (v9)
      {
        v7 = left;
      }

      left = left[v10];
    }

    while (left);
    if (v7 != p_end_node && v7[4] <= completed)
    {
      sub_259B4B1D8(p_loadingSubresources, v7);
      operator delete(v7);
      if (!self->_loadingSubresources.__tree_.__size_)
      {
        v14 = MEMORY[0x277CCABB0];
        v15 = objc_msgSend_date(MEMORY[0x277CBEAA8], v11, v12, v13);
        objc_msgSend_timeIntervalSinceReferenceDate(v15, v16, v17, v18);
        v22 = objc_msgSend_numberWithDouble_(v14, v19, v20, v21);

        objc_msgSend_setValue_forKey_(self->_loadData, v23, v22, @"PageLoadAllSubresourcesLoadedTime");
      }

      objc_msgSend__maybeEndPageLoadSoon(self, v11, v12, v13);
    }
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v10 = objc_msgSend_mainFrame(controllerCopy, v7, v8, v9);

  if (v10 == frameCopy)
  {
    objc_msgSend__clearPageLoadState(self, v11, v12, v13);
    objc_msgSend__doBeforePageLoad(self, v14, v15, v16);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v10 = objc_msgSend_mainFrame(controllerCopy, v7, v8, v9);

  if (v10 == frameCopy)
  {
    self->_currentPageLoadFinished = 1;
    objc_msgSend__maybeEndPageLoadSoon(self, v11, v12, v13);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didHandleOnloadEventsForFrame:(id)frame
{
  frameCopy = frame;
  objc_msgSend_removeObject_(self->_loadingFrames, v5, frameCopy, v6);
  objc_msgSend__maybeEndPageLoadSoon(self, v7, v8, v9);
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFailLoadWithErrorForFrame:(id)frame error:(id)error
{
  frameCopy = frame;
  objc_msgSend_removeObject_(self->_loadingFrames, v6, frameCopy, v7);
  objc_msgSend__maybeEndPageLoadSoon(self, v8, v9, v10);
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didInitiateLoadForResource:(unint64_t)resource request:(id)request
{
  controllerCopy = controller;
  frameCopy = frame;
  resourceCopy = resource;
  requestCopy = request;
  v16 = requestCopy;
  if (!resource)
  {
    WTFLogAlways();
    goto LABEL_8;
  }

  objc_msgSend__CFURLRequest(requestCopy, v13, v14, v15);
  v17 = _CFURLRequestCopyProtocolPropertyForKey();
  v18 = v17;
  if (!v17)
  {
LABEL_7:
    sub_259B4B5CC(&self->_loadingSubresources, &resourceCopy);
    goto LABEL_8;
  }

  if (!CFBooleanGetValue(v17))
  {
    CFRelease(v18);
    goto LABEL_7;
  }

  CFRelease(v18);
LABEL_8:
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFinishLoadForResource:(unint64_t)resource
{
  if (resource)
  {
    MEMORY[0x2821F9670](self, sel__resourceLoadCompleted_, resource, frame);
  }

  else
  {
    WTFLogAlways();
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFailLoadForResource:(unint64_t)resource error:(id)error
{
  if (resource)
  {
    MEMORY[0x2821F9670](self, sel__resourceLoadCompleted_, resource, frame);
  }

  else
  {
    WTFLogAlways();
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFirstVisuallyNonEmptyLayoutForFrame:(id)frame
{
  v5 = MEMORY[0x277CCABB0];
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, controller, frame);
  objc_msgSend_timeIntervalSinceReferenceDate(v6, v7, v8, v9);
  v14 = objc_msgSend_numberWithDouble_(v5, v10, v11, v12);

  objc_msgSend_setValue_forKey_(self->_loadData, v13, v14, @"PageLoadFirstVisuallyNonEmptyLayoutTime");
}

- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  controllerCopy = controller;
  if ((changeCopy & 0x100) != 0 && self->_version >= 5)
  {
    v26 = controllerCopy;
    v9 = objc_msgSend_objectForKeyedSubscript_(self->_loadData, v7, @"PageLoadFirstMeaningfulPaintTime", v8);

    controllerCopy = v26;
    if (!v9)
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = objc_msgSend_date(MEMORY[0x277CBEAA8], v10, v11, v12);
      objc_msgSend_timeIntervalSinceReferenceDate(v14, v15, v16, v17);
      v21 = objc_msgSend_numberWithDouble_(v13, v18, v19, v20);

      objc_msgSend_setValue_forKey_(self->_loadData, v22, v21, @"PageLoadFirstMeaningfulPaintTime");
      objc_msgSend__maybeEndPageLoadSoon(self, v23, v24, v25);

      controllerCopy = v26;
    }
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  if (self->_version >= 5)
  {
    v10 = objc_msgSend_mainFrame(controllerCopy, v6, v7, v8);

    if (v10 == frameCopy)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = objc_msgSend_date(MEMORY[0x277CBEAA8], v11, v12, v13);
      objc_msgSend_timeIntervalSinceReferenceDate(v15, v16, v17, v18);
      v22 = objc_msgSend_numberWithDouble_(v14, v19, v20, v21);

      objc_msgSend_setValue_forKey_(self->_loadData, v23, v22, @"PageLoadDOMContentLoadedTime");
      objc_msgSend__maybeEndPageLoadSoon(self, v24, v25, v26);
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end