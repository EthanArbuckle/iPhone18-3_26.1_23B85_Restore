@interface MSVSegmentedEncoder
- (MSVSegmentedEncoder)initWithCodingPackage:(id)a3 userInfo:(id)a4;
- (id)_coderForKey:(id)a3;
- (id)msv_userInfo;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeRootObject:(id)a3;
- (void)finishEncoding;
- (void)msv_setUserInfo:(id)a3;
@end

@implementation MSVSegmentedEncoder

- (id)_coderForKey:(id)a3
{
  v4 = [(MSVSegmentedCoding *)self->_rootObject segmentForCodingKey:a3];
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

- (void)msv_setUserInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  userInfo = self->_userInfo;
  self->_userInfo = v5;

  subcoders = self->_subcoders;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__MSVSegmentedEncoder_msv_setUserInfo___block_invoke;
  v9[3] = &unk_1E79824F8;
  v10 = v4;
  v8 = v4;
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

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  v8 = a5;
  v9 = [(MSVSegmentedEncoder *)self _coderForKey:v8];
  [v9 encodeBytes:a3 length:a4 forKey:v8];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(MSVSegmentedEncoder *)self _coderForKey:v6];
  [v7 encodeDouble:v6 forKey:a3];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = [(MSVSegmentedEncoder *)self _coderForKey:v6];
  *&v7 = a3;
  [v8 encodeFloat:v6 forKey:v7];
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(MSVSegmentedEncoder *)self _coderForKey:v6];
  [v7 encodeInt64:a3 forKey:v6];
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MSVSegmentedEncoder *)self _coderForKey:v6];
  [v8 encodeObject:v7 forKey:v6];
}

- (void)encodeRootObject:(id)a3
{
  v5 = a3;
  if (![v5 conformsToProtocol:&unk_1F216E288] || (objc_msgSend(objc_opt_class(), "supportsSecureCoding") & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVSegmentedEncoder.m" lineNumber:64 description:@"Root objects must support segmented and secure coding."];
  }

  [(MSVSegmentedCodingPackage *)self->_package setArchivedClass:objc_opt_class()];
  rootObject = self->_rootObject;
  self->_rootObject = v5;
  v7 = v5;

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

- (MSVSegmentedEncoder)initWithCodingPackage:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MSVSegmentedEncoder;
  v9 = [(MSVSegmentedEncoder *)&v16 init];
  if (v9)
  {
    v10 = [v8 copy];
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

    objc_storeStrong(&v9->_package, a3);
    v13 = [MEMORY[0x1E695DF90] dictionary];
    subcoders = v9->_subcoders;
    v9->_subcoders = v13;
  }

  return v9;
}

@end