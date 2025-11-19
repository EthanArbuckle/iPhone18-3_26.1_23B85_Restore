@interface GDFeatureView
- (GDFeatureView)initWithAccessAssertion:(id)a3 database:(id)a4;
- (id)expectedFeatureKeysWithError:(id *)a3;
- (id)featureForKey:(id)a3 error:(id *)a4;
- (id)featureKeysWithError:(id *)a3;
@end

@implementation GDFeatureView

- (id)expectedFeatureKeysWithError:(id *)a3
{
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A18D8];
  v4 = objc_opt_new();
  v5 = [v4 featureKeysWithError:a3];

  return v5;
}

- (id)featureKeysWithError:(id *)a3
{
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A18B8];
  featureRetriever = self->_featureRetriever;

  return [(GDSQLFeatureRetriever *)featureRetriever featureKeysWithError:a3];
}

- (id)featureForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F2076530];
  v7 = [(GDSQLFeatureRetriever *)self->_featureRetriever featureForKey:v6 error:a4];

  return v7;
}

- (GDFeatureView)initWithAccessAssertion:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = GDFeatureView;
  v9 = [(GDFeatureView *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessAssertion, a3);
    objc_storeStrong(&v10->_db, a4);
    v11 = [[GDSQLFeatureRetriever alloc] initWithDatabase:v10->_db];
    featureRetriever = v10->_featureRetriever;
    v10->_featureRetriever = v11;
  }

  return v10;
}

@end