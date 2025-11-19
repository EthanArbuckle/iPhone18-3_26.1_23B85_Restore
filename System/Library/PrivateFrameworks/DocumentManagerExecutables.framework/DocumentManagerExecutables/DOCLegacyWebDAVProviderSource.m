@interface DOCLegacyWebDAVProviderSource
- (void)collection:(id)a3 didEncounterError:(id)a4;
- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)dealloc;
@end

@implementation DOCLegacyWebDAVProviderSource

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_rootItemCollection);
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  v5 = self;
  DOCRunInMainThread(_:)();

  v6.receiver = v5;
  v6.super_class = type metadata accessor for DOCLegacyWebDAVProviderSource();
  [(DOCLegacyWebDAVProviderSource *)&v6 dealloc];
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCLegacyWebDAVProviderSource.data(forCollectionShouldBeReloaded:)("WebDAV collection was reloaded. Setting is ejectable to true");
}

- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  specialized DOCLegacyWebDAVProviderSource.data(forCollectionShouldBeReloaded:)("WebDAV collection was updated. Setting is ejectable to true");
  _Block_release(v6);
}

- (void)collection:(id)a3 didEncounterError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized DOCLegacyWebDAVProviderSource.collection(_:didEncounterError:)();
}

@end