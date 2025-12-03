@interface MSVSegmentedEncoder
- (MSVSegmentedEncoder)initWithCodingPackage:(id)package userInfo:(id)info;
- (id)_coderForKey:(id)key;
- (id)msv_userInfo;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeRootObject:(id)object;
- (void)finishEncoding;
- (void)msv_setUserInfo:(id)info;
@end

@implementation MSVSegmentedEncoder

- (id)_coderForKey:(id)key
{
  v4 = [(MSVSegmentedCoding *)self->_rootObject segmentForCodingKey:key];
  v5 = [(NSMutableDictionary *)self->_subcoders objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(MSVSegmentedCodingPackage *)self->_package encoderForSegment:v4 version:[(MSVSegmentedCoding *)self->_rootObject versionForSegment:v4]];
    if (v5)
    {
      [(NSMutableDictionary *)self->_subcoders setObject:v5 forKeyedSubscript:v4];
      [v5 msv_setUserInfo:self->_userInfo];
      [v5 beginEncodingPartialTopLevelObject:self->_rootObject];
    }
  }

  return v5;
}

- (void)msv_setUserInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy copy];
  userInfo = self->_userInfo;
  self->_userInfo = v5;

  subcoders = self->_subcoders;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__MSVSegmentedEncoder_msv_setUserInfo___block_invoke;
  v9[3] = &unk_1E79824F8;
  v10 = infoCopy;
  v8 = infoCopy;
  [(NSMutableDictionary *)subcoders enumerateKeysAndObjectsUsingBlock:v9];
}

- (id)msv_userInfo
{
  if (self->_userInfo)
  {
    return self->_userInfo;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key
{
  keyCopy = key;
  v9 = [(MSVSegmentedEncoder *)self _coderForKey:keyCopy];
  [v9 encodeBytes:bytes length:length forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  v7 = [(MSVSegmentedEncoder *)self _coderForKey:keyCopy];
  [v7 encodeDouble:keyCopy forKey:double];
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  v8 = [(MSVSegmentedEncoder *)self _coderForKey:keyCopy];
  *&v7 = float;
  [v8 encodeFloat:keyCopy forKey:v7];
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  keyCopy = key;
  v7 = [(MSVSegmentedEncoder *)self _coderForKey:keyCopy];
  [v7 encodeInt64:int64 forKey:keyCopy];
}

- (void)encodeObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v8 = [(MSVSegmentedEncoder *)self _coderForKey:keyCopy];
  [v8 encodeObject:objectCopy forKey:keyCopy];
}

- (void)encodeRootObject:(id)object
{
  objectCopy = object;
  if (![objectCopy conformsToProtocol:&unk_1F216E288] || (objc_msgSend(objc_opt_class(), "supportsSecureCoding") & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSegmentedEncoder.m" lineNumber:64 description:@"Root objects must support segmented and secure coding."];
  }

  [(MSVSegmentedCodingPackage *)self->_package setArchivedClass:objc_opt_class()];
  rootObject = self->_rootObject;
  self->_rootObject = objectCopy;
  v7 = objectCopy;

  [v7 encodeWithCoder:self];

  [(MSVSegmentedEncoder *)self finishEncoding];
}

- (void)finishEncoding
{
  if (![(MSVSegmentedEncoder *)self hasFinished])
  {
    [(NSMutableDictionary *)self->_subcoders enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4310];

    [(MSVSegmentedEncoder *)self setHasFinished:1];
  }
}

- (MSVSegmentedEncoder)initWithCodingPackage:(id)package userInfo:(id)info
{
  packageCopy = package;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = MSVSegmentedEncoder;
  v9 = [(MSVSegmentedEncoder *)&v16 init];
  if (v9)
  {
    v10 = [infoCopy copy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v9->_userInfo, v12);

    objc_storeStrong(&v9->_package, package);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    subcoders = v9->_subcoders;
    v9->_subcoders = dictionary;
  }

  return v9;
}

@end