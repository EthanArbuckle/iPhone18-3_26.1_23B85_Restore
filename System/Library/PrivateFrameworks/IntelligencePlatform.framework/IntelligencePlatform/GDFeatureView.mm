@interface GDFeatureView
- (GDFeatureView)initWithAccessAssertion:(id)assertion database:(id)database;
- (id)expectedFeatureKeysWithError:(id *)error;
- (id)featureForKey:(id)key error:(id *)error;
- (id)featureKeysWithError:(id *)error;
@end

@implementation GDFeatureView

- (id)expectedFeatureKeysWithError:(id *)error
{
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A18D8];
  v4 = objc_opt_new();
  v5 = [v4 featureKeysWithError:error];

  return v5;
}

- (id)featureKeysWithError:(id *)error
{
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A18B8];
  featureRetriever = self->_featureRetriever;

  return [(GDSQLFeatureRetriever *)featureRetriever featureKeysWithError:error];
}

- (id)featureForKey:(id)key error:(id *)error
{
  keyCopy = key;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F2076530];
  v7 = [(GDSQLFeatureRetriever *)self->_featureRetriever featureForKey:keyCopy error:error];

  return v7;
}

- (GDFeatureView)initWithAccessAssertion:(id)assertion database:(id)database
{
  assertionCopy = assertion;
  databaseCopy = database;
  v14.receiver = self;
  v14.super_class = GDFeatureView;
  v9 = [(GDFeatureView *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessAssertion, assertion);
    objc_storeStrong(&v10->_db, database);
    v11 = [[GDSQLFeatureRetriever alloc] initWithDatabase:v10->_db];
    featureRetriever = v10->_featureRetriever;
    v10->_featureRetriever = v11;
  }

  return v10;
}

@end