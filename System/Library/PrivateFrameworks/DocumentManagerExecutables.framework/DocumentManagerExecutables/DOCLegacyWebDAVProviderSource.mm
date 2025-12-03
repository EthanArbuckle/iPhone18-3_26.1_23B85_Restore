@interface DOCLegacyWebDAVProviderSource
- (void)collection:(id)collection didEncounterError:(id)error;
- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)dealloc;
@end

@implementation DOCLegacyWebDAVProviderSource

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCLegacyWebDAVProviderSource_rootItemCollection);
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  selfCopy = self;
  DOCRunInMainThread(_:)();

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DOCLegacyWebDAVProviderSource();
  [(DOCLegacyWebDAVProviderSource *)&v6 dealloc];
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  selfCopy = self;
  specialized DOCLegacyWebDAVProviderSource.data(forCollectionShouldBeReloaded:)("WebDAV collection was reloaded. Setting is ejectable to true");
}

- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block
{
  v6 = _Block_copy(block);
  collectionCopy = collection;
  selfCopy = self;
  specialized DOCLegacyWebDAVProviderSource.data(forCollectionShouldBeReloaded:)("WebDAV collection was updated. Setting is ejectable to true");
  _Block_release(v6);
}

- (void)collection:(id)collection didEncounterError:(id)error
{
  collectionCopy = collection;
  errorCopy = error;
  selfCopy = self;
  specialized DOCLegacyWebDAVProviderSource.collection(_:didEncounterError:)();
}

@end