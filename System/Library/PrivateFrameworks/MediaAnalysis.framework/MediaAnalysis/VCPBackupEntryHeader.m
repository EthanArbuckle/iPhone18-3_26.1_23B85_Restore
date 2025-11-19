@interface VCPBackupEntryHeader
+ (id)header;
- (int)readFromStream:(id)a3;
- (int)writeToStream:(id)a3;
@end

@implementation VCPBackupEntryHeader

+ (id)header
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (int)readFromStream:(id)a3
{
  v6 = 0;
  result = [a3 vcp_readUint32:&v6];
  if (!result)
  {
    v5 = HIBYTE(v6);
    self->_dataLength = v6 & 0xFFFFFF;
    self->_isCompressed = v5 & 1;
  }

  return result;
}

- (int)writeToStream:(id)a3
{
  v4 = a3;
  v5 = v4;
  dataLength = self->_dataLength;
  if (dataLength <= 0x200000)
  {
    v7 = [v4 vcp_writeUint32:dataLength | (self->_isCompressed << 24)];
  }

  else
  {
    v7 = -50;
  }

  return v7;
}

@end