@interface VCPBackupFileHeader
+ (id)headerForTask:(unint64_t)a3;
+ (id)headerFromStream:(id)a3;
- (NSData)data;
- (VCPBackupFileHeader)initWithIdentifier:(unsigned int)a3 andVersion:(unsigned int)a4;
- (int)writeToStream:(id)a3;
@end

@implementation VCPBackupFileHeader

- (VCPBackupFileHeader)initWithIdentifier:(unsigned int)a3 andVersion:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = VCPBackupFileHeader;
  result = [(VCPBackupFileHeader *)&v7 init];
  if (result)
  {
    result->_identifier = a3;
    result->_version = a4;
  }

  return result;
}

+ (id)headerForTask:(unint64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 <= 9 && ((0x207u >> v4) & 1) != 0)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithIdentifier:**(&off_100285CF0 + v4) andVersion:**(&off_100285D40 + v4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)data
{
  v4 = vrev32_s8(*&self->_identifier);
  v2 = [NSData dataWithBytes:&v4 length:8];

  return v2;
}

+ (id)headerFromStream:(id)a3
{
  v3 = a3;
  v7 = 0;
  if ([v3 vcp_readUint32:&v7 + 4] || objc_msgSend(v3, "vcp_readUint32:", &v7))
  {
    v4 = 0;
  }

  else
  {
    v6 = objc_alloc(objc_opt_class());
    v4 = [v6 initWithIdentifier:HIDWORD(v7) andVersion:v7];
  }

  return v4;
}

- (int)writeToStream:(id)a3
{
  v4 = a3;
  v5 = [v4 vcp_writeUint32:self->_identifier];
  if (!v5)
  {
    v5 = [v4 vcp_writeUint32:self->_version];
  }

  return v5;
}

@end