@interface FSFileName
+ (id)nameWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)nameWithCString:(const char *)string;
+ (id)nameWithData:(id)data;
+ (id)nameWithString:(id)string;
- (FSFileName)initWithBytes:(const char *)bytes length:(unint64_t)length;
- (FSFileName)initWithCString:(const char *)string;
- (FSFileName)initWithCoder:(id)coder;
- (FSFileName)initWithData:(id)data;
- (FSFileName)initWithString:(id)string;
- (NSString)debugDescription;
- (NSString)string;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSFileName

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v6);
  }

  data = self->_data;
  v5 = coderCopy;
  if (data)
  {
    [coderCopy encodeObject:data forKey:@"FSFileNameData"];
    v5 = coderCopy;
  }
}

- (FSFileName)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSFileNameData"];
  if (v5)
  {
    v6 = [(FSFileName *)self initWithData:v5];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (FSFileName)initWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  return [(FSFileName *)self initWithBytes:bytes length:v8];
}

- (FSFileName)initWithString:(id)string
{
  stringCopy = string;
  selfCopy = self;
  if (string)
  {
    selfCopy = -[FSFileName initWithCString:](self, "initWithCString:", [string UTF8String]);
    stringCopy = selfCopy;
  }

  return stringCopy;
}

- (FSFileName)initWithBytes:(const char *)bytes length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = FSFileName;
  v6 = [(FSFileName *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:{strnlen(bytes, length)}];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (FSFileName)initWithCString:(const char *)string
{
  v9.receiver = self;
  v9.super_class = FSFileName;
  v4 = [(FSFileName *)&v9 init];
  if (v4)
  {
    if (string)
    {
      v5 = strlen(string);
    }

    else
    {
      v5 = 0;
    }

    v6 = [MEMORY[0x277CBEA90] dataWithBytes:string length:v5];
    data = v4->_data;
    v4->_data = v6;
  }

  return v4;
}

+ (id)nameWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

+ (id)nameWithCString:(const char *)string
{
  v3 = [[self alloc] initWithCString:string];

  return v3;
}

+ (id)nameWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy];

  return v5;
}

+ (id)nameWithBytes:(const char *)bytes length:(unint64_t)length
{
  v4 = [[self alloc] initWithBytes:bytes length:length];

  return v4;
}

- (NSString)string
{
  data = self->_data;
  if (data && [(NSData *)data length])
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_data encoding:4];
  }

  else
  {
    v4 = &stru_285DEFA28;
  }

  return v4;
}

- (NSString)debugDescription
{
  string = [(FSFileName *)self string];
  v3 = string;
  if (string)
  {
    v4 = string;
  }

  else
  {
    v4 = &stru_285DEFA28;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  data = self->_data;
  if (data && [(NSData *)data length]&& [(NSData *)self->_data bytes])
  {
    v6 = [objc_opt_class() allocWithZone:zone];
    v7 = self->_data;

    return [v6 initWithData:v7];
  }

  else
  {
    v9 = [objc_opt_class() allocWithZone:zone];

    return [v9 initWithCString:""];
  }
}

@end