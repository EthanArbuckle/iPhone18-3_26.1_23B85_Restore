@interface VCPBackupFileHeader
+ (id)headerForTask:(unint64_t)task;
+ (id)headerFromStream:(id)stream;
- (NSData)data;
- (VCPBackupFileHeader)initWithIdentifier:(unsigned int)identifier andVersion:(unsigned int)version;
- (int)writeToStream:(id)stream;
@end

@implementation VCPBackupFileHeader

- (VCPBackupFileHeader)initWithIdentifier:(unsigned int)identifier andVersion:(unsigned int)version
{
  v7.receiver = self;
  v7.super_class = VCPBackupFileHeader;
  result = [(VCPBackupFileHeader *)&v7 init];
  if (result)
  {
    result->_identifier = identifier;
    result->_version = version;
  }

  return result;
}

+ (id)headerForTask:(unint64_t)task
{
  v4 = task - 1;
  if (task - 1 <= 9 && ((0x207u >> v4) & 1) != 0)
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

+ (id)headerFromStream:(id)stream
{
  streamCopy = stream;
  v7 = 0;
  if ([streamCopy vcp_readUint32:&v7 + 4] || objc_msgSend(streamCopy, "vcp_readUint32:", &v7))
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

- (int)writeToStream:(id)stream
{
  streamCopy = stream;
  v5 = [streamCopy vcp_writeUint32:self->_identifier];
  if (!v5)
  {
    v5 = [streamCopy vcp_writeUint32:self->_version];
  }

  return v5;
}

@end