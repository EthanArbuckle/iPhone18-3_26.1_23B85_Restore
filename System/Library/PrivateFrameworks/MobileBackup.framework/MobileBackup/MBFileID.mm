@interface MBFileID
+ (MBFileID)fileIDWithData:(id)data;
+ (MBFileID)fileIDWithDomain:(id)domain relativePath:(id)path;
+ (MBFileID)fileIDWithDomainName:(id)name relativePath:(id)path;
+ (MBFileID)fileIDWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (MBFileID)initWithBytes:(const void *)bytes;
- (MBFileID)initWithData:(id)data;
- (MBFileID)initWithDecoder:(id)decoder;
- (MBFileID)initWithDomain:(id)domain relativePath:(id)path;
- (MBFileID)initWithDomainName:(id)name relativePath:(id)path;
- (MBFileID)initWithString:(id)string;
- (NSString)filenamePrefix;
- (NSString)filenameWithPrefix;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MBFileID

+ (MBFileID)fileIDWithDomain:(id)domain relativePath:(id)path
{
  pathCopy = path;
  domainCopy = domain;
  v7 = [[MBFileID alloc] initWithDomain:domainCopy relativePath:pathCopy];

  return v7;
}

+ (MBFileID)fileIDWithDomainName:(id)name relativePath:(id)path
{
  pathCopy = path;
  nameCopy = name;
  v7 = [[MBFileID alloc] initWithDomainName:nameCopy relativePath:pathCopy];

  return v7;
}

+ (MBFileID)fileIDWithString:(id)string
{
  stringCopy = string;
  v4 = [[MBFileID alloc] initWithString:stringCopy];

  return v4;
}

+ (MBFileID)fileIDWithData:(id)data
{
  dataCopy = data;
  v4 = [[MBFileID alloc] initWithData:dataCopy];

  return v4;
}

- (MBFileID)initWithBytes:(const void *)bytes
{
  v6.receiver = self;
  v6.super_class = MBFileID;
  result = [(MBFileID *)&v6 init];
  if (result)
  {
    v5 = *bytes;
    *&result->_bytes[16] = *(bytes + 4);
    *result->_bytes = v5;
  }

  return result;
}

- (MBFileID)initWithDecoder:(id)decoder
{
  decoderCopy = decoder;
  v8.receiver = self;
  v8.super_class = MBFileID;
  v5 = [(MBFileID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [decoderCopy decodeBytes:v5->_bytes length:20];
  }

  return v6;
}

- (MBFileID)initWithDomain:(id)domain relativePath:(id)path
{
  pathCopy = path;
  name = [domain name];
  v8 = [(MBFileID *)self initWithDomainName:name relativePath:pathCopy];

  return v8;
}

- (MBFileID)initWithDomainName:(id)name relativePath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  if (!pathCopy)
  {
    [NSException raise:NSInvalidArgumentException format:@"Null relative path"];
  }

  if ([pathCopy isEqualToString:&stru_1003C3430])
  {
    v13.receiver = self;
    v13.super_class = MBFileID;
    v8 = [(MBFileID *)&v13 init];
    if (v8)
    {
      MBGetFileIDBytes();
    }

    v9 = v8;
  }

  else
  {
    v10 = [[NSString alloc] initWithUTF8String:{objc_msgSend(pathCopy, "fileSystemRepresentation")}];
    v14.receiver = self;
    v14.super_class = MBFileID;
    v11 = [(MBFileID *)&v14 init];
    if (v11)
    {
      MBGetFileIDBytes();
    }

    v9 = v11;
  }

  return v9;
}

- (MBFileID)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = MBFileID;
  v5 = [(MBFileID *)&v8 init];
  if (v5 && !MBBytesWithString())
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (MBFileID)initWithData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] == 20)
  {
    self = -[MBFileID initWithBytes:](self, "initWithBytes:", [dataCopy bytes]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MBFileID allocWithZone:zone];

  return [(MBFileID *)v4 initWithBytes:self->_bytes];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MBFileID *)self isEqualToFileID:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  result = 0;
  for (i = 8; i != 28; ++i)
  {
    result = *(&self->super.isa + i) - result + 32 * result;
  }

  return result;
}

- (NSString)filenamePrefix
{
  filename = [(MBFileID *)self filename];
  v3 = [filename substringToIndex:2];

  return v3;
}

- (NSString)filenameWithPrefix
{
  filenamePrefix = [(MBFileID *)self filenamePrefix];
  filename = [(MBFileID *)self filename];
  v5 = [filenamePrefix stringByAppendingPathComponent:filename];

  return v5;
}

@end