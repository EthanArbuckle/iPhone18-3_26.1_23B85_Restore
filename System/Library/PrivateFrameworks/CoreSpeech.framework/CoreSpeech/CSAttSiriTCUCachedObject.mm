@interface CSAttSiriTCUCachedObject
- (CSAttSiriTCUCachedObject)initWithTCUPackage:(id)package firstTRPId:(id)id lastTRPId:(id)pId;
- (id)description;
@end

@implementation CSAttSiriTCUCachedObject

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"{tcuId = %@, firstTRPId = %@, lastTRPId = %@, tcuPackager = %@}", self->_TCUID, self->_firstTRPId, self->_lastTRPId, self->_TCUPackage];

  return v2;
}

- (CSAttSiriTCUCachedObject)initWithTCUPackage:(id)package firstTRPId:(id)id lastTRPId:(id)pId
{
  packageCopy = package;
  idCopy = id;
  pIdCopy = pId;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[CSAttSiriTCUCachedObject initWithTCUPackage:firstTRPId:lastTRPId:]";
    v22 = 2112;
    v23 = pIdCopy;
    v24 = 2112;
    v25 = packageCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s lastTRPId:%@ TCUPackage:%@", buf, 0x20u);
  }

  v19.receiver = self;
  v19.super_class = CSAttSiriTCUCachedObject;
  v12 = [(CSAttSiriTCUCachedObject *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_firstTRPId, id);
    objc_storeStrong(&v13->_lastTRPId, pId);
    v14 = [packageCopy copy];
    TCUPackage = v13->_TCUPackage;
    v13->_TCUPackage = v14;

    tcuId = [packageCopy tcuId];
    TCUID = v13->_TCUID;
    v13->_TCUID = tcuId;
  }

  return v13;
}

@end