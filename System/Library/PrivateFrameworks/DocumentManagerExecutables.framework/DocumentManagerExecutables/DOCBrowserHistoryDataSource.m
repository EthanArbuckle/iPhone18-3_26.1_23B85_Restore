@interface DOCBrowserHistoryDataSource
- (_TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource)init;
- (void)dealloc;
- (void)tagRegistry:(id)a3 didRemoveTag:(id)a4;
- (void)tagRegistry:(id)a3 didReplaceTag:(id)a4 withTag:(id)a5;
@end

@implementation DOCBrowserHistoryDataSource

- (void)dealloc
{
  v2 = self;
  DOCBrowserHistoryDataSource.stopObservingForChanges()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DOCBrowserHistoryDataSource();
  [(DOCBrowserHistoryDataSource *)&v3 dealloc];
}

- (_TtC26DocumentManagerExecutables27DOCBrowserHistoryDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tagRegistry:(id)a3 didRemoveTag:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didRemove:)partial apply;
  *(v7 + 24) = v6;
  v8 = a4;
  v9 = self;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v7);
}

- (void)tagRegistry:(id)a3 didReplaceTag:(id)a4 withTag:(id)a5
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = closure #1 in DOCBrowserHistoryDataSource.tagRegistry(_:didReplace:with:)partial apply;
  *(v9 + 24) = v8;
  v10 = a4;
  v11 = a5;
  v12 = v10;
  v13 = v11;
  v14 = self;

  _DOCBrowserHistoryDataSourceBase.mutateState(endBackgroundRefresh:_:)(0, closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)partial apply, v9);
}

@end