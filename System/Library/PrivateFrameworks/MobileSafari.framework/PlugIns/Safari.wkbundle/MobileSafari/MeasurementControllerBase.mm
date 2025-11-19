@interface MeasurementControllerBase
- (BOOL)_shouldConsiderPageLoadEnded;
- (MeasurementControllerBase)initWithPluginPageContextController:(id)a3;
- (id).cxx_construct;
- (void)_clearPageLoadState;
- (void)_maybeEndPageLoadSoon;
- (void)_postPageLoadEnd;
- (void)_resourceLoadCompleted:(unint64_t)a3;
- (void)_sendPageLoadFinishedEvent;
- (void)_waitforLoadEndTimerFired:(id)a3;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFailLoadWithErrorForFrame:(id)a4 error:(id)a5;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFirstVisuallyNonEmptyLayoutForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didHandleOnloadEventsForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didStartProvisionalLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFailLoadForResource:(unint64_t)a5 error:(id)a6;
- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFinishLoadForResource:(unint64_t)a5;
- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didInitiateLoadForResource:(unint64_t)a5 request:(id)a6;
- (void)webProcessPlugInBrowserContextController:(id)a3 renderingProgressDidChange:(unint64_t)a4;
@end

@implementation MeasurementControllerBase

- (MeasurementControllerBase)initWithPluginPageContextController:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MeasurementControllerBase;
  v5 = [(MeasurementControllerBase *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contextController, v4);
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
  v4 = self;
  self->_currentPageLoadFinished = 0;
  objc_msgSend_removeAllObjects(self->_loadingFrames, a2, v2, v3);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  loadData = v4->_loadData;
  v4->_loadData = v5;

  left = v4->_loadingSubresources.__tree_.__end_node_.__left_;
  v4 = (v4 + 40);
  sub_259B4B184(&v4[-1]._allSubresourcesFinishedLoadingDelay, left);
  v4->super.isa = 0;
  v4->_waitForLoadToReallyEnd = 0;
  *&v4[-1]._allSubresourcesFinishedLoadingDelay = v4;
  contextController = v4[-1]._contextController;

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

- (void)_waitforLoadEndTimerFired:(id)a3
{
  if (objc_msgSend__shouldConsiderPageLoadEnded(self, a2, a3, v3))
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

- (void)_resourceLoadCompleted:(unint64_t)a3
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
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = left;
      }

      left = left[v10];
    }

    while (left);
    if (v7 != p_end_node && v7[4] <= a3)
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

- (void)webProcessPlugInBrowserContextController:(id)a3 didStartProvisionalLoadForFrame:(id)a4
{
  v17 = a3;
  v6 = a4;
  v10 = objc_msgSend_mainFrame(v17, v7, v8, v9);

  if (v10 == v6)
  {
    objc_msgSend__clearPageLoadState(self, v11, v12, v13);
    objc_msgSend__doBeforePageLoad(self, v14, v15, v16);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4
{
  v14 = a3;
  v6 = a4;
  v10 = objc_msgSend_mainFrame(v14, v7, v8, v9);

  if (v10 == v6)
  {
    self->_currentPageLoadFinished = 1;
    objc_msgSend__maybeEndPageLoadSoon(self, v11, v12, v13);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didHandleOnloadEventsForFrame:(id)a4
{
  v10 = a4;
  objc_msgSend_removeObject_(self->_loadingFrames, v5, v10, v6);
  objc_msgSend__maybeEndPageLoadSoon(self, v7, v8, v9);
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFailLoadWithErrorForFrame:(id)a4 error:(id)a5
{
  v11 = a4;
  objc_msgSend_removeObject_(self->_loadingFrames, v6, v11, v7);
  objc_msgSend__maybeEndPageLoadSoon(self, v8, v9, v10);
}

- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didInitiateLoadForResource:(unint64_t)a5 request:(id)a6
{
  v10 = a3;
  v11 = a4;
  v19 = a5;
  v12 = a6;
  v16 = v12;
  if (!a5)
  {
    WTFLogAlways();
    goto LABEL_8;
  }

  objc_msgSend__CFURLRequest(v12, v13, v14, v15);
  v17 = _CFURLRequestCopyProtocolPropertyForKey();
  v18 = v17;
  if (!v17)
  {
LABEL_7:
    sub_259B4B5CC(&self->_loadingSubresources, &v19);
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

- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFinishLoadForResource:(unint64_t)a5
{
  if (a5)
  {
    MEMORY[0x2821F9670](self, sel__resourceLoadCompleted_, a5, a4);
  }

  else
  {
    WTFLogAlways();
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFailLoadForResource:(unint64_t)a5 error:(id)a6
{
  if (a5)
  {
    MEMORY[0x2821F9670](self, sel__resourceLoadCompleted_, a5, a4);
  }

  else
  {
    WTFLogAlways();
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFirstVisuallyNonEmptyLayoutForFrame:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4);
  objc_msgSend_timeIntervalSinceReferenceDate(v6, v7, v8, v9);
  v14 = objc_msgSend_numberWithDouble_(v5, v10, v11, v12);

  objc_msgSend_setValue_forKey_(self->_loadData, v13, v14, @"PageLoadFirstVisuallyNonEmptyLayoutTime");
}

- (void)webProcessPlugInBrowserContextController:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if ((v4 & 0x100) != 0 && self->_version >= 5)
  {
    v26 = v6;
    v9 = objc_msgSend_objectForKeyedSubscript_(self->_loadData, v7, @"PageLoadFirstMeaningfulPaintTime", v8);

    v6 = v26;
    if (!v9)
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = objc_msgSend_date(MEMORY[0x277CBEAA8], v10, v11, v12);
      objc_msgSend_timeIntervalSinceReferenceDate(v14, v15, v16, v17);
      v21 = objc_msgSend_numberWithDouble_(v13, v18, v19, v20);

      objc_msgSend_setValue_forKey_(self->_loadData, v22, v21, @"PageLoadFirstMeaningfulPaintTime");
      objc_msgSend__maybeEndPageLoadSoon(self, v23, v24, v25);

      v6 = v26;
    }
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4
{
  v27 = a3;
  v9 = a4;
  if (self->_version >= 5)
  {
    v10 = objc_msgSend_mainFrame(v27, v6, v7, v8);

    if (v10 == v9)
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