@interface CloudFeatureObject
- (CloudFeatureObject)init;
- (CloudFeatureObject)initWithFeatureID:(id)d status:(int64_t)status canUse:(BOOL)use limit:(id)limit accessToken:(id)token;
@end

@implementation CloudFeatureObject

- (CloudFeatureObject)initWithFeatureID:(id)d status:(int64_t)status canUse:(BOOL)use limit:(id)limit accessToken:(id)token
{
  dCopy = d;
  limitCopy = limit;
  tokenCopy = token;
  v21.receiver = self;
  v21.super_class = CloudFeatureObject;
  v15 = [(CloudFeatureObject *)&v21 init];
  if (v15)
  {
    v16 = [dCopy copy];
    featureID = v15->_featureID;
    v15->_featureID = v16;

    v15->_status = status;
    v15->_canUse = use;
    objc_storeStrong(&v15->_limit, limit);
    v18 = [tokenCopy copy];
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