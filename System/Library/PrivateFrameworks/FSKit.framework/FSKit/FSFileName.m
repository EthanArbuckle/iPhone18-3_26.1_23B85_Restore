@interface FSFileName
+ (id)nameWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)nameWithCString:(const char *)a3;
+ (id)nameWithData:(id)a3;
+ (id)nameWithString:(id)a3;
- (FSFileName)initWithBytes:(const char *)a3 length:(unint64_t)a4;
- (FSFileName)initWithCString:(const char *)a3;
- (FSFileName)initWithCoder:(id)a3;
- (FSFileName)initWithData:(id)a3;
- (FSFileName)initWithString:(id)a3;
- (NSString)debugDescription;
- (NSString)string;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSFileName

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v6);
  }

  data = self->_data;
  v5 = v7;
  if (data)
  {
    [v7 encodeObject:data forKey:@"FSFileNameData"];
    v5 = v7;
  }
}

- (FSFileName)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSFileNameData"];
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

- (FSFileName)initWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  return [(FSFileName *)self initWithBytes:v7 length:v8];
}

- (FSFileName)initWithString:(id)a3
{
  v3 = a3;
  v4 = self;
  if (a3)
  {
    v4 = -[FSFileName initWithCString:](self, "initWithCString:", [a3 UTF8String]);
    v3 = v4;
  }

  return v3;
}

- (FSFileName)initWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = FSFileName;
  v6 = [(FSFileName *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:{strnlen(a3, a4)}];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (FSFileName)initWithCString:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = FSFileName;
  v4 = [(FSFileName *)&v9 init];
  if (v4)
  {
    if (a3)
    {
      v5 = strlen(a3);
    }

    else
    {
      v5 = 0;
    }

    v6 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:v5];
    data = v4->_data;
    v4->_data = v6;
  }

  return v4;
}

+ (id)nameWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

+ (id)nameWithCString:(const char *)a3
{
  v3 = [[a1 alloc] initWithCString:a3];

  return v3;
}

+ (id)nameWithData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithData:v4];

  return v5;
}

+ (id)nameWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithBytes:a3 length:a4];

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
  v2 = [(FSFileName *)self string];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_285DEFA28;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  data = self->_data;
  if (data && [(NSData *)data length]&& [(NSData *)self->_data bytes])
  {
    v6 = [objc_opt_class() allocWithZone:a3];
    v7 = self->_data;

    return [v6 initWithData:v7];
  }

  else
  {
    v9 = [objc_opt_class() allocWithZone:a3];

    return [v9 initWithCString:""];
  }
}

@end