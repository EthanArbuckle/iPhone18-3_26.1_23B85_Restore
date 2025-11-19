@interface CloudFeatureObject
- (CloudFeatureObject)init;
- (CloudFeatureObject)initWithFeatureID:(id)a3 status:(int64_t)a4 canUse:(BOOL)a5 limit:(id)a6 accessToken:(id)a7;
@end

@implementation CloudFeatureObject

- (CloudFeatureObject)initWithFeatureID:(id)a3 status:(int64_t)a4 canUse:(BOOL)a5 limit:(id)a6 accessToken:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v21.receiver = self;
  v21.super_class = CloudFeatureObject;
  v15 = [(CloudFeatureObject *)&v21 init];
  if (v15)
  {
    v16 = [v12 copy];
    featureID = v15->_featureID;
    v15->_featureID = v16;

    v15->_status = a4;
    v15->_canUse = a5;
    objc_storeStrong(&v15->_limit, a6);
    v18 = [v14 copy];
    accessToken = v15->_accessToken;
    v15->_accessToken = v18;
  }

  return v15;
}

- (CloudFeatureObject)init
{
  v3.receiver = self;
  v3.super_class = CloudFeatureObject;
  return [(CloudFeatureObject *)&v3 init];
}

@end