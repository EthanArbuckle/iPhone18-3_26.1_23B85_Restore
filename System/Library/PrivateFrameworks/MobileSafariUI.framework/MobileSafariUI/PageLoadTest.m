@interface PageLoadTest
- (PageLoadTest)initWithTabDocument:(id)a3 pagesNeedingMemoryWarningSent:(id)a4;
- (void)_enablePageLoadMeasurementCollection;
- (void)_invalidateRemoteObjects;
- (void)_setUpPageLoadTestEventsListener;
- (void)_setUpWebProcessForPageLoadMeasurementCollection;
- (void)dealloc;
- (void)didFinishPageLoadWithLoadData:(id)a3;
- (void)resetAfterWebProcessCrash;
@end

@implementation PageLoadTest

- (PageLoadTest)initWithTabDocument:(id)a3 pagesNeedingMemoryWarningSent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PageLoadTest;
  v9 = [(PageLoadTest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pagesNeedingMemoryWarningSent, a4);
    objc_storeStrong(&v10->_tabDocument, a3);
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
  v3 = [(TabDocument *)self->_tabDocument webView];
  v5 = [v3 _remoteObjectRegistry];

  [v5 unregisterExportedObject:self interface:self->_eventsListenerInterface];
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
  v3 = [(TabDocument *)self->_tabDocument webView];
  v6 = [v3 _remoteObjectRegistry];

  v4 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2828EF078];
  eventsListenerInterface = self->_eventsListenerInterface;
  self->_eventsListenerInterface = v4;

  [v6 registerExportedObject:self interface:self->_eventsListenerInterface];
}

- (void)_enablePageLoadMeasurementCollection
{
  v3 = [(TabDocument *)self->_tabDocument webView];
  v7 = [v3 _remoteObjectRegistry];

  v4 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2828EF0D8];
  v5 = [v7 remoteObjectProxyWithInterface:v4];
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

- (void)didFinishPageLoadWithLoadData:(id)a3
{
  tabDocument = self->_tabDocument;
  v4 = a3;
  v5 = [(TabDocument *)tabDocument pageLoadStatistics];
  [v5 pageLoadFinishedForTestsWK2WithLoadData:v4];
}

@end