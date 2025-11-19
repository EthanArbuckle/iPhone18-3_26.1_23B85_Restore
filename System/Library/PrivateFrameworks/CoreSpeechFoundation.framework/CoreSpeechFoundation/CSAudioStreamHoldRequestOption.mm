@interface CSAudioStreamHoldRequestOption
+ (id)defaultOptionWithTimeout:(double)a3;
- (CSAudioStreamHoldRequestOption)initWithTimeout:(double)a3 clientIdentity:(unint64_t)a4 requireRecordModeLock:(BOOL)a5 requireListeningMicIndicatorLock:(BOOL)a6;
- (CSAudioStreamHoldRequestOption)initWithXPCObject:(id)a3;
- (id)xpcObject;
@end

@implementation CSAudioStreamHoldRequestOption

- (id)xpcObject
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = "timeout";
  keys[1] = "clientIdentity";
  keys[2] = "requireRecordModeLock";
  keys[3] = "requireListeningMicIndicatorLock";
  values[0] = xpc_double_create(self->_timeout);
  values[1] = xpc_uint64_create(self->_clientIdentity);
  values[2] = xpc_BOOL_create(self->_requireRecordModeLock);
  values[3] = xpc_BOOL_create(self->_requireListeningMicIndicatorLock);
  v3 = xpc_dictionary_create(keys, values, 4uLL);
  for (i = 3; i != -1; --i)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSAudioStreamHoldRequestOption)initWithXPCObject:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CSAudioStreamHoldRequestOption;
  v5 = [(CSAudioStreamHoldRequestOption *)&v7 init];
  if (v5)
  {
    v5->_timeout = xpc_dictionary_get_double(v4, "timeout");
    v5->_clientIdentity = xpc_dictionary_get_uint64(v4, "clientIdentity");
    v5->_requireRecordModeLock = xpc_dictionary_get_BOOL(v4, "requireRecordModeLock");
    v5->_requireListeningMicIndicatorLock = xpc_dictionary_get_BOOL(v4, "requireListeningMicIndicatorLock");
  }

  return v5;
}

- (CSAudioStreamHoldRequestOption)initWithTimeout:(double)a3 clientIdentity:(unint64_t)a4 requireRecordModeLock:(BOOL)a5 requireListeningMicIndicatorLock:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = CSAudioStreamHoldRequestOption;
  result = [(CSAudioStreamHoldRequestOption *)&v11 init];
  if (result)
  {
    result->_timeout = a3;
    result->_clientIdentity = a4;
    result->_requireRecordModeLock = a5;
    result->_requireListeningMicIndicatorLock = a6;
  }

  return result;
}

+ (id)defaultOptionWithTimeout:(double)a3
{
  v3 = [[CSAudioStreamHoldRequestOption alloc] initWithTimeout:0 clientIdentity:0 requireRecordModeLock:0 requireListeningMicIndicatorLock:a3];

  return v3;
}

@end