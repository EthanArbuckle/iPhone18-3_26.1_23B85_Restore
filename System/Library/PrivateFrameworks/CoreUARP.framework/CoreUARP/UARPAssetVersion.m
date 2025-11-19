@interface UARPAssetVersion
- (BOOL)isEqual:(id)a3;
- (UARPAssetVersion)init;
- (UARPAssetVersion)initWithBVERString:(id)a3;
- (UARPAssetVersion)initWithCoder:(id)a3;
- (UARPAssetVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 releaseVersion:(unint64_t)a5 buildVersion:(unint64_t)a6;
- (UARPAssetVersion)initWithVersionString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetVersion

- (UARPAssetVersion)init
{
  [(UARPAssetVersion *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAssetVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 releaseVersion:(unint64_t)a5 buildVersion:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = UARPAssetVersion;
  result = [(UARPAssetVersion *)&v11 init];
  if (result)
  {
    result->_majorVersion = a3;
    result->_minorVersion = a4;
    result->_releaseVersion = a5;
    result->_buildVersion = a6;
  }

  return result;
}

- (UARPAssetVersion)initWithVersionString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"."];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 integerValue];
    v7 = 0;
LABEL_5:
    v9 = 0;
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if ([v4 count] == 2)
  {
    v8 = [v4 objectAtIndexedSubscript:0];
    v6 = [v8 integerValue];

    v5 = [v4 objectAtIndexedSubscript:1];
    v7 = [v5 integerValue];
    goto LABEL_5;
  }

  if ([v4 count] == 3)
  {
    v13 = [v4 objectAtIndexedSubscript:0];
    v6 = [v13 integerValue];

    v14 = [v4 objectAtIndexedSubscript:1];
    v7 = [v14 integerValue];

    v5 = [v4 objectAtIndexedSubscript:2];
    v9 = [v5 integerValue];
    goto LABEL_6;
  }

  if ([v4 count] != 4)
  {
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v15 = [v4 objectAtIndexedSubscript:0];
  v6 = [v15 integerValue];

  v16 = [v4 objectAtIndexedSubscript:1];
  v7 = [v16 integerValue];

  v17 = [v4 objectAtIndexedSubscript:2];
  v9 = [v17 integerValue];

  v5 = [v4 objectAtIndexedSubscript:3];
  v10 = [v5 integerValue];
LABEL_7:

LABEL_8:
  v11 = [(UARPAssetVersion *)self initWithMajorVersion:v6 minorVersion:v7 releaseVersion:v9 buildVersion:v10];

  return v11;
}

- (UARPAssetVersion)initWithBVERString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"|"];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 componentsSeparatedByString:@"."];

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if ([v6 count] == 3)
  {
    v11 = [v6 objectAtIndexedSubscript:0];
    v10 = [v11 integerValue];

    v12 = [v6 objectAtIndexedSubscript:1];
    v13 = [v12 longLongValue];

    v9 = HIDWORD(v13);
    v7 = v13;
    v14 = [v6 objectAtIndexedSubscript:2];
    v8 = [v14 integerValue];
  }

  v15 = [(UARPAssetVersion *)self initWithMajorVersion:v10 minorVersion:v9 releaseVersion:v7 buildVersion:v8];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPAssetVersion alloc];
  majorVersion = self->_majorVersion;
  minorVersion = self->_minorVersion;
  releaseVersion = self->_releaseVersion;
  buildVersion = self->_buildVersion;

  return [(UARPAssetVersion *)v4 initWithMajorVersion:majorVersion minorVersion:minorVersion releaseVersion:releaseVersion buildVersion:buildVersion];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  majorVersion = self->_majorVersion;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:majorVersion];
  [v6 encodeObject:v7 forKey:@"majorVersion"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minorVersion];
  [v6 encodeObject:v8 forKey:@"minorVersion"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_releaseVersion];
  [v6 encodeObject:v9 forKey:@"releaseVersion"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_buildVersion];
  [v6 encodeObject:v10 forKey:@"buildVersion"];
}

- (UARPAssetVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minorVersion"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseVersion"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];

  v9 = -[UARPAssetVersion initWithMajorVersion:minorVersion:releaseVersion:buildVersion:](self, "initWithMajorVersion:minorVersion:releaseVersion:buildVersion:", [v5 unsignedIntegerValue], objc_msgSend(v6, "unsignedIntegerValue"), objc_msgSend(v7, "unsignedIntegerValue"), objc_msgSend(v8, "unsignedIntegerValue"));
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v10 = 1;
    }

    else
    {
      v5 = v4;
      majorVersion = self->_majorVersion;
      if (majorVersion == [(UARPAssetVersion *)v5 majorVersion]&& (minorVersion = self->_minorVersion, minorVersion == [(UARPAssetVersion *)v5 minorVersion]) && (releaseVersion = self->_releaseVersion, releaseVersion == [(UARPAssetVersion *)v5 releaseVersion]))
      {
        buildVersion = self->_buildVersion;
        v10 = buildVersion == [(UARPAssetVersion *)v5 buildVersion];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(UARPAssetVersion *)self majorVersion];
  if (v5 < [v4 majorVersion])
  {
    goto LABEL_2;
  }

  v7 = [(UARPAssetVersion *)self majorVersion];
  if (v7 > [v4 majorVersion])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v9 = [(UARPAssetVersion *)self minorVersion];
  if (v9 >= [v4 minorVersion])
  {
    v10 = [(UARPAssetVersion *)self minorVersion];
    if (v10 > [v4 minorVersion])
    {
      goto LABEL_4;
    }

    v11 = [(UARPAssetVersion *)self releaseVersion];
    if (v11 >= [v4 releaseVersion])
    {
      v12 = [(UARPAssetVersion *)self releaseVersion];
      if (v12 <= [v4 releaseVersion])
      {
        v13 = [(UARPAssetVersion *)self buildVersion];
        if (v13 >= [v4 buildVersion])
        {
          v14 = [(UARPAssetVersion *)self buildVersion];
          v6 = v14 > [v4 buildVersion];
          goto LABEL_5;
        }

        goto LABEL_2;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v6 = -1;
LABEL_5:

  return v6;
}

@end