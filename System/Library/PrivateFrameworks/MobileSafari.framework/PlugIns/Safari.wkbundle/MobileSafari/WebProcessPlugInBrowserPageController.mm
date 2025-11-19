@interface WebProcessPlugInBrowserPageController
- (WebProcessPlugInBrowserPageController)initWithPlugIn:(id)a3 contextController:(id)a4;
- (id)_touchIconFetcherObserverProxy;
- (void)_readPageLoadTestParameters;
- (void)_setupPageLoadTestController;
- (void)_setupTouchIconFetcherController;
- (void)dealloc;
- (void)enablePageMemoryMeasurementCollection:(id)a3;
- (void)fetchTouchIconURLs;
- (void)webProcessPlugInBrowserContextController:(id)a3 didCommitLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFailLoadWithErrorForFrame:(id)a4 error:(id)a5;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFailProvisionalLoadWithErrorForFrame:(id)a4 error:(id)a5;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didStartProvisionalLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 renderingProgressDidChange:(unint64_t)a4;
- (void)willDestroyBrowserContextController:(id)a3;
@end

@implementation WebProcessPlugInBrowserPageController

- (WebProcessPlugInBrowserPageController)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = WebProcessPlugInBrowserPageController;
  v8 = [(_SFWebProcessPlugInReaderEnabledPageController *)&v27 initWithPlugIn:v6 contextController:v7];
  v12 = v8;
  if (v8)
  {
    objc_msgSend__setupPageLoadTestController(v8, v9, v10, v11);
    objc_msgSend__readPageLoadTestParameters(v12, v13, v14, v15);
    v12->_haveCheckedIfPageLoadTestIsEnabled = 0;
    objc_msgSend__setupTouchIconFetcherController(v12, v16, v17, v18);
    v19 = [SafariFormMetadataController alloc];
    v22 = objc_msgSend_initWithPageController_(v19, v20, v12, v21);
    objc_msgSend_setFormMetadataController_(v12, v23, v22, v24);
    v25 = v12;
  }

  return v12;
}

- (void)dealloc
{
  v5 = objc_msgSend_browserContextController(self, a2, v2, v3);
  objc_msgSend_setLoadDelegate_(v5, v6, 0, v7);

  v8.receiver = self;
  v8.super_class = WebProcessPlugInBrowserPageController;
  [(WebProcessPlugInBrowserPageController *)&v8 dealloc];
}

- (void)willDestroyBrowserContextController:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend__remoteObjectRegistry(v4, v5, v6, v7);
  objc_msgSend_unregisterExportedObject_interface_(v8, v9, self, self->_pageLoadTestControllerInterface);
  pageLoadTestControllerInterface = self->_pageLoadTestControllerInterface;
  self->_pageLoadTestControllerInterface = 0;

  objc_msgSend_unregisterExportedObject_interface_(v8, v11, self, self->_touchIconFetcherControllerInterface);
  touchIconFetcherControllerInterface = self->_touchIconFetcherControllerInterface;
  self->_touchIconFetcherControllerInterface = 0;

  v13.receiver = self;
  v13.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v13 willDestroyBrowserContextController:v4];
}

- (void)_setupTouchIconFetcherController
{
  v4 = objc_msgSend_remoteObjectInterfaceWithProtocol_(MEMORY[0x277CE3898], a2, &unk_286AD5910, v2);
  touchIconFetcherControllerInterface = self->_touchIconFetcherControllerInterface;
  self->_touchIconFetcherControllerInterface = v4;

  v14 = objc_msgSend_browserContextController(self, v6, v7, v8);
  v12 = objc_msgSend__remoteObjectRegistry(v14, v9, v10, v11);
  objc_msgSend_registerExportedObject_interface_(v12, v13, self, self->_touchIconFetcherControllerInterface);
}

- (void)fetchTouchIconURLs
{
  v40 = objc_msgSend_mainFrame(self, a2, v2, v3);
  v5 = objc_alloc(MEMORY[0x277D4A7A8]);
  v8 = objc_msgSend_initWithWebProcessPlugInFrame_(v5, v6, v40, v7);
  v12 = objc_msgSend_URL(v40, v9, v10, v11);
  v16 = objc_msgSend_appleTouchIconURLs(v8, v13, v14, v15);
  v20 = objc_msgSend_mutableCopy(v16, v17, v18, v19);

  v22 = objc_msgSend_URLWithString_relativeToURL_(MEMORY[0x277CBEBC0], v21, @"/apple-touch-icon-precomposed.png", v12);
  objc_msgSend_addObject_(v20, v23, v22, v24);

  v26 = objc_msgSend_URLWithString_relativeToURL_(MEMORY[0x277CBEBC0], v25, @"/apple-touch-icon.png", v12);
  objc_msgSend_addObject_(v20, v27, v26, v28);

  v32 = objc_msgSend_faviconURLs(v8, v29, v30, v31);
  objc_msgSend_addObjectsFromArray_(v20, v33, v32, v34);

  v38 = objc_msgSend__touchIconFetcherObserverProxy(self, v35, v36, v37);
  objc_msgSend_didFetchTouchIconURLs_forURL_(v38, v39, v20, v12);
}

- (id)_touchIconFetcherObserverProxy
{
  touchIconFetcherObserverProxy = self->_touchIconFetcherObserverProxy;
  if (touchIconFetcherObserverProxy)
  {
    v4 = touchIconFetcherObserverProxy;
  }

  else
  {
    v6 = objc_msgSend_remoteObjectInterfaceWithProtocol_(MEMORY[0x277CE3898], a2, &unk_286ADAC90, v2);
    v10 = objc_msgSend_browserContextController(self, v7, v8, v9);
    v14 = objc_msgSend__remoteObjectRegistry(v10, v11, v12, v13);
    v17 = objc_msgSend_remoteObjectProxyWithInterface_(v14, v15, v6, v16);
    v18 = self->_touchIconFetcherObserverProxy;
    self->_touchIconFetcherObserverProxy = v17;

    v4 = self->_touchIconFetcherObserverProxy;
  }

  return v4;
}

- (void)enablePageMemoryMeasurementCollection:(id)a3
{
  v12 = a3;
  v4 = [PageMemoryMeasurementController alloc];
  v8 = objc_msgSend_browserContextController(self, v5, v6, v7);
  v10 = objc_msgSend_initWithPluginPageContextController_pagesNeedingMemoryWarningSent_(v4, v9, v8, v12);
  pageLoadTestMeasurementController = self->_pageLoadTestMeasurementController;
  self->_pageLoadTestMeasurementController = v10;
}

- (void)_setupPageLoadTestController
{
  v4 = objc_msgSend_remoteObjectInterfaceWithProtocol_(MEMORY[0x277CE3898], a2, &unk_286AD5838, v2);
  pageLoadTestControllerInterface = self->_pageLoadTestControllerInterface;
  self->_pageLoadTestControllerInterface = v4;

  v14 = objc_msgSend_browserContextController(self, v6, v7, v8);
  v12 = objc_msgSend__remoteObjectRegistry(v14, v9, v10, v11);
  objc_msgSend_registerExportedObject_interface_(v12, v13, self, self->_pageLoadTestControllerInterface);
}

- (void)_readPageLoadTestParameters
{
  v63 = objc_msgSend_webProcessPlugIn(self, a2, v2, v3);
  v8 = objc_msgSend_plugInController(v63, v5, v6, v7);
  v12 = objc_msgSend_parameters(v8, v9, v10, v11);
  v15 = objc_msgSend_valueForKey_(v12, v13, @"enablePageLoadMeasurementCollection", v14);
  if (v15)
  {
    pageLoadTestMeasurementController = self->_pageLoadTestMeasurementController;

    if (pageLoadTestMeasurementController)
    {
      return;
    }

    v17 = [PageLoadTestMeasurementController alloc];
    v64 = objc_msgSend_browserContextController(self, v18, v19, v20);
    v23 = objc_msgSend_initWithPluginPageContextController_(v17, v21, v64, v22);
    v24 = self->_pageLoadTestMeasurementController;
    self->_pageLoadTestMeasurementController = v23;

    v65 = objc_msgSend_webProcessPlugIn(self, v25, v26, v27);
    v31 = objc_msgSend_plugInController(v65, v28, v29, v30);
    v35 = objc_msgSend_parameters(v31, v32, v33, v34);
    v38 = objc_msgSend_valueForKey_(v35, v36, @"pageLoadMeasurementVersionNumber", v37);
    v42 = objc_msgSend_intValue(v38, v39, v40, v41);
    objc_msgSend_setVersion_(self->_pageLoadTestMeasurementController, v43, v42, v44);

    v63 = objc_msgSend_webProcessPlugIn(self, v45, v46, v47);
    v8 = objc_msgSend_plugInController(v63, v48, v49, v50);
    v12 = objc_msgSend_parameters(v8, v51, v52, v53);
    v56 = objc_msgSend_valueForKey_(v12, v54, @"pageLoadMeasurementAllSubresourcesFinishedLoadingDelay", v55);
    objc_msgSend_doubleValue(v56, v57, v58, v59);
    objc_msgSend_setAllSubresourcesFinishedLoadingDelay_(self->_pageLoadTestMeasurementController, v60, v61, v62);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didStartProvisionalLoadForFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v17 webProcessPlugInBrowserContextController:v6 didStartProvisionalLoadForFrame:v7];
  v11 = objc_msgSend_mainFrame(v6, v8, v9, v10);

  if (v11 == v7)
  {
    objc_msgSend__logPageLoadStarted_(self, v12, v7, v13);
    if (!self->_haveCheckedIfPageLoadTestIsEnabled)
    {
      objc_msgSend__readPageLoadTestParameters(self, v14, v15, v16);
    }

    self->_haveCheckedIfPageLoadTestIsEnabled = 1;
    objc_msgSend_webProcessPlugInBrowserContextController_didStartProvisionalLoadForFrame_(self->_pageLoadTestMeasurementController, v14, v6, v7);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didCommitLoadForFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v9 webProcessPlugInBrowserContextController:v6 didCommitLoadForFrame:v7];
  objc_msgSend_webProcessPlugInBrowserContextController_didCommitLoadForFrame_(self->_pageLoadTestMeasurementController, v8, v6, v7);
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v9 webProcessPlugInBrowserContextController:v6 didFinishDocumentLoadForFrame:v7];
  objc_msgSend_webProcessPlugInBrowserContextController_didFinishDocumentLoadForFrame_(self->_pageLoadTestMeasurementController, v8, v6, v7);
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v14 webProcessPlugInBrowserContextController:v6 didFinishLoadForFrame:v7];
  v11 = objc_msgSend_mainFrame(v6, v8, v9, v10);

  if (v11 == v7)
  {
    objc_msgSend__logPageLoadCompleted_withErrorCode_(self, v12, v7, 0);
    objc_msgSend_webProcessPlugInBrowserContextController_didFinishLoadForFrame_(self->_pageLoadTestMeasurementController, v13, v6, v7);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v8 webProcessPlugInBrowserContextController:v6 renderingProgressDidChange:a4];
  objc_msgSend_webProcessPlugInBrowserContextController_renderingProgressDidChange_(self->_pageLoadTestMeasurementController, v7, v6, a4);
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFailProvisionalLoadWithErrorForFrame:(id)a4 error:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend_mainFrame(v24, v10, v11, v12);
  v17 = v13;
  if (v13 == v8)
  {
    v18 = objc_msgSend_code(v9, v14, v15, v16);

    if (v18 != -999)
    {
      v22 = objc_msgSend_code(v9, v19, v20, v21);
      objc_msgSend__logPageLoadCompleted_withErrorCode_(self, v23, v8, v22);
    }
  }

  else
  {
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFailLoadWithErrorForFrame:(id)a4 error:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend_mainFrame(v24, v10, v11, v12);
  v17 = v13;
  if (v13 == v8)
  {
    v19 = objc_msgSend_code(v9, v14, v15, v16);

    if (v19 != -999)
    {
      v22 = objc_msgSend_code(v9, v18, v20, v21);
      objc_msgSend__logPageLoadCompleted_withErrorCode_(self, v23, v8, v22);
    }
  }

  else
  {
  }

  objc_msgSend_webProcessPlugInBrowserContextController_didFailLoadWithErrorForFrame_error_(self->_pageLoadTestMeasurementController, v18, v24, v8, v9);
}

@end