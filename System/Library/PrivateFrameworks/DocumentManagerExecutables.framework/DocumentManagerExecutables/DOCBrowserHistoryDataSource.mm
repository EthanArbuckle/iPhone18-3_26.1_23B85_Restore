@interface DOCBrowserHistoryDataSource
- (_TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource)init;
- (void)dealloc;
- (void)tagRegistry:(id)registry didRemoveTag:(id)tag;
- (void)tagRegistry:(id)registry didReplaceTag:(id)tag withTag:(id)withTag;
@end

@implementation DOCBrowserHistoryDataSource

- (void)dealloc
{
  selfCopy = self;
  DOCBrowserHistoryDataSource.stopObservingForChanges()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for DOCBrowserHistoryDataSource();
  [(DOCBrowserHistoryDataSource *)&v3 dealloc];
}

- (_TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tagRegistry:(id)registry didRemoveTag:(id)tag
{
  v6 = swift_allocObject();
  *(v6 + 16) = tag;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:)partial apply;
  *(v7 + 24) = v6;
  tagCopy = tag;
  selfCopy = self;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v7);
}

- (void)tagRegistry:(id)registry didReplaceTag:(id)tag withTag:(id)withTag
{
  v8 = swift_allocObject();
  *(v8 + 16) = tag;
  *(v8 + 24) = withTag;
  v9 = swift_allocObject();
  *(v9 + 16) = closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:)partial apply;
  *(v9 + 24) = v8;
  tagCopy = tag;
  withTagCopy = withTag;
  v12 = tagCopy;
  v13 = withTagCopy;
  selfCopy = self;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v9);
}

@end