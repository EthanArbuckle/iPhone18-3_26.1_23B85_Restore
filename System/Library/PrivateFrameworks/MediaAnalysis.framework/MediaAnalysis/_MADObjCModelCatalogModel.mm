@interface _MADObjCModelCatalogModel
- (_MADObjCModelCatalogModel)init;
- (int64_t)getBridgeEmbeddingVersion;
@end

@implementation _MADObjCModelCatalogModel

- (_MADObjCModelCatalogModel)init
{
  Logger.init(subsystem:category:)();
  v4.receiver = self;
  v4.super_class = type metadata accessor for _MADObjCModelCatalogModel();
  return [(_MADObjCModelCatalogModel *)&v4 init];
}

- (int64_t)getBridgeEmbeddingVersion
{
  v2 = self;
  v3 = _MADObjCModelCatalogModel.getBridgeEmbeddingVersion()();

  return v3;
}

@end