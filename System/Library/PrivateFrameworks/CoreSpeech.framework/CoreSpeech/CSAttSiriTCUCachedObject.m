@interface CSAttSiriTCUCachedObject
- (CSAttSiriTCUCachedObject)initWithTCUPackage:(id)a3 firstTRPId:(id)a4 lastTRPId:(id)a5;
- (id)description;
@end

@implementation CSAttSiriTCUCachedObject

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"{tcuId = %@, firstTRPId = %@, lastTRPId = %@, tcuPackager = %@}", self->_TCUID, self->_firstTRPId, self->_lastTRPId, self->_TCUPackage];

  return v2;
}

- (CSAttSiriTCUCachedObject)initWithTCUPackage:(id)a3 firstTRPId:(id)a4 lastTRPId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[CSAttSiriTCUCachedObject initWithTCUPackage:firstTRPId:lastTRPId:]";
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s lastTRPId:%@ TCUPackage:%@", buf, 0x20u);
  }

  v19.receiver = self;
  v19.super_class = CSAttSiriTCUCachedObject;
  v12 = [(CSAttSiriTCUCachedObject *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_firstTRPId, a4);
    objc_storeStrong(&v13->_lastTRPId, a5);
    v14 = [v8 copy];
    TCUPackage = v13->_TCUPackage;
    v13->_TCUPackage = v14;

    v16 = [v8 tcuId];
    TCUID = v13->_TCUID;
    v13->_TCUID = v16;
  }

  return v13;
}

@end