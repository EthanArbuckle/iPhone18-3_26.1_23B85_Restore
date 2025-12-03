@interface IDSQueryCompletionMetric
- (IDSQueryCompletionMetric)initWithService:(id)service querySuccess:(BOOL)success connectionType:(unsigned int)type queryTimeInterval:(double)interval queryURITypes:(unsigned int)types conferenceResultCode:(unsigned int)code queryErrorType:(unsigned int)errorType queryError:(id)self0 wasReversePushAttempted:(BOOL)self1 hasEmptyResult:(BOOL)self2 queryReason:(id)self3 retryCount:(unint64_t)self4 uriCount:(unint64_t)self5 isForced:(BOOL)self6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQueryCompletionMetric

- (IDSQueryCompletionMetric)initWithService:(id)service querySuccess:(BOOL)success connectionType:(unsigned int)type queryTimeInterval:(double)interval queryURITypes:(unsigned int)types conferenceResultCode:(unsigned int)code queryErrorType:(unsigned int)errorType queryError:(id)self0 wasReversePushAttempted:(BOOL)self1 hasEmptyResult:(BOOL)self2 queryReason:(id)self3 retryCount:(unint64_t)self4 uriCount:(unint64_t)self5 isForced:(BOOL)self6
{
  serviceCopy = service;
  errorCopy = error;
  reasonCopy = reason;
  v30.receiver = self;
  v30.super_class = IDSQueryCompletionMetric;
  v25 = [(IDSQueryCompletionMetric *)&v30 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_serviceIdentifier, service);
    v26->_success = success;
    v26->_queryTimeInterval = interval;
    v26->_connectionType = type;
    v26->_queryURITypes = types;
    v26->_conferenceResultCode = code;
    v26->_queryErrorType = errorType;
    objc_storeStrong(&v26->_queryError, error);
    v26->_wasReversePushAttempted = attempted;
    v26->_hasEmptyResult = result;
    objc_storeStrong(&v26->_queryReason, reason);
    v26->_retryCount = count;
    v26->_uriCount = uriCount;
    v26->_isForced = forced;
    v26->_ktQueryTimeInterval = -1.0;
  }

  return v26;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    CFDictionarySetValue(v3, @"service", serviceIdentifier);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_success];
  if (v6)
  {
    CFDictionarySetValue(v4, @"querySuccess", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_connectionType];
  if (v7)
  {
    CFDictionarySetValue(v4, @"connectionType", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_queryTimeInterval];
  if (v8)
  {
    CFDictionarySetValue(v4, @"queryTimeInterval", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_queryURITypes];
  if (v9)
  {
    CFDictionarySetValue(v4, @"queryURITypes", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_queryErrorType];
  if (v10)
  {
    CFDictionarySetValue(v4, @"queryErrorType", v10);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSError code](self->_queryError, "code")}];
  if (v11)
  {
    CFDictionarySetValue(v4, @"queryErrorCode", v11);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasReversePushAttempted];
  if (v12)
  {
    CFDictionarySetValue(v4, @"wasReversePushAttempted", v12);
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasEmptyResult];
  if (v13)
  {
    CFDictionarySetValue(v4, @"hasEmptyResult", v13);
  }

  queryReason = self->_queryReason;
  if (queryReason)
  {
    CFDictionarySetValue(v4, @"queryReason", queryReason);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_retryCount];
  if (v15)
  {
    CFDictionarySetValue(v4, @"retryCount", v15);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_uriCount];
  if (v16)
  {
    CFDictionarySetValue(v4, @"uriCount", v16);
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForced];
  if (v17)
  {
    CFDictionarySetValue(v4, @"isForced", v17);
  }

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ktQueryTimeInterval];
  if (v18)
  {
    CFDictionarySetValue(v4, @"ktQueryTime", v18);
  }

  return v4;
}

@end