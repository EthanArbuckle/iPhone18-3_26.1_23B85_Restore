@interface NSData(ISCompositorResourceValidationToken)
+ (id)_is_invalidToken;
+ (id)_is_staleToken;
+ (id)_is_validToken;
- (id)_is_databaseUUID;
- (id)_is_getSequenceNumber:()ISCompositorResourceValidationToken andUUID:;
- (id)_is_persistentIdentifierDigest;
- (uint64_t)_is_SequenceNumber;
@end

@implementation NSData(ISCompositorResourceValidationToken)

+ (id)_is_invalidToken
{
  if (_is_invalidToken_onceToken != -1)
  {
    +[NSData(ISCompositorResourceValidationToken) _is_invalidToken];
  }

  v1 = _is_invalidToken_invalidToken;

  return v1;
}

+ (id)_is_staleToken
{
  if (_is_staleToken_onceToken != -1)
  {
    +[NSData(ISCompositorResourceValidationToken) _is_staleToken];
  }

  v1 = _is_staleToken_staleToken;

  return v1;
}

+ (id)_is_validToken
{
  if (_is_validToken_onceToken != -1)
  {
    +[NSData(ISCompositorResourceValidationToken) _is_validToken];
  }

  v1 = _is_validToken_validToken;

  return v1;
}

- (id)_is_getSequenceNumber:()ISCompositorResourceValidationToken andUUID:
{
  result = [self length];
  if (result == 40)
  {
    bytes = [self bytes];
    *a3 = *(bytes + 16);
    result = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes];
    *a4 = result;
  }

  return result;
}

- (id)_is_databaseUUID
{
  if ([self length] == 40)
  {
    bytes = [self bytes];
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_is_SequenceNumber
{
  if ([self length] == 40)
  {
    return *([self bytes] + 16);
  }

  else
  {
    return 0;
  }
}

- (id)_is_persistentIdentifierDigest
{
  if ([self length] == 40)
  {
    bytes = [self bytes];
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes + 24];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end