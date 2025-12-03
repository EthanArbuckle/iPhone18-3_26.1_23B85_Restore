@interface PageLoadTest
- (PageLoadTest)initWithTabDocument:(id)document pagesNeedingMemoryWarningSent:(id)sent;
- (void)_enablePageLoadMeasurementCollection;
- (void)_invalidateRemoteObjects;
- (void)_setUpPageLoadTestEventsListener;
- (void)_setUpWebProcessForPageLoadMeasurementCollection;
- (void)dealloc;
- (void)didFinishPageLoadWithLoadData:(id)data;
- (void)resetAfterWebProcessCrash;
@end

@implementation PageLoadTest

- (PageLoadTest)initWithTabDocument:(id)document pagesNeedingMemoryWarningSent:(id)sent
{
  documentCopy = document;
  sentCopy = sent;
  v13.receiver = self;
  v13.super_class = PageLoadTest;
  v9 = [(PageLoadTest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pagesNeedingMemoryWarningSent, sent);
    objc_storeStrong(&v10->_tabDocument, document);
    [(PageLoadTest *)v10 _setUpWebProcessForPageLoadMeasurementCollection];
    v11 = v10;
  }

  return v10;
}

- (void)dealloc
{
  [(PageLoadTest *)self _invalidateRemoteObjects];
  v3.receiver = self;
  v3.super_class = PageLoadTest;
  [(PageLoadTest *)&v3 dealloc];
}

- (void)_invalidateRemoteObjects
{
  webView = [(TabDocument *)self->_tabDocument webView];
  _remoteObjectRegistry = [webView _remoteObjectRegistry];

  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_eventsListenerInterface];
  eventsListenerInterface = self->_eventsListenerInterface;
  self->_eventsListenerInterface = 0;
}

- (void)_setUpWebProcessForPageLoadMeasurementCollection
{
  [(PageLoadTest *)self _setUpPageLoadTestEventsListener];

  [(PageLoadTest *)self _enablePageLoadMeasurementCollection];
}

- (void)_setUpPageLoadTestEventsListener
{
  webView = [(TabDocument *)self->_tabDocument webView];
  _remoteObjectRegistry = [webView _remoteObjectRegistry];

  v4 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2828EF078];
  eventsListenerInterface = self->_eventsListenerInterface;
  self->_eventsListenerInterface = v4;

  [_remoteObjectRegistry registerExportedObject:self interface:self->_eventsListenerInterface];
}

- (void)_enablePageLoadMeasurementCollection
{
  webView = [(TabDocument *)self->_tabDocument webView];
  _remoteObjectRegistry = [webView _remoteObjectRegistry];

  v4 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2828EF0D8];
  v5 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v4];
  v6 = v5;
  if (self->_pagesNeedingMemoryWarningSent)
  {
    [v5 enablePageMemoryMeasurementCollection:?];
  }
}

- (void)resetAfterWebProcessCrash
{
  [(PageLoadTest *)self _invalidateRemoteObjects];

  [(PageLoadTest *)self _setUpWebProcessForPageLoadMeasurementCollection];
}

- (void)didFinishPageLoadWithLoadData:(id)data
{
  tabDocument = self->_tabDocument;
  dataCopy = data;
  pageLoadStatistics = [(TabDocument *)tabDocument pageLoadStatistics];
  [pageLoadStatistics pageLoadFinishedForTestsWK2WithLoadData:dataCopy];
}

@end