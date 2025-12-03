@interface GCKOOBMessage
- (GCKOOBMessage)init;
- (GCKOOBMessage)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCKOOBMessage

- (GCKOOBMessage)init
{
  v3.receiver = self;
  v3.super_class = GCKOOBMessage;
  result = [(GCKOOBMessage *)&v3 init];
  if (result)
  {
    *&result->type = 0;
    result->data = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->type forKey:@"type"];
  [coder encodeInt32:self->band forKey:@"band"];
  data = self->data;
  if (data && [(NSData *)data length])
  {
    data = self->data;
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  [coder encodeObject:data forKey:@"data"];
}

- (GCKOOBMessage)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = GCKOOBMessage;
  v4 = [(GCKOOBMessage *)&v9 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc(MEMORY[0x277CBEA90]);
      BytePtr = CFDataGetBytePtr(v5);
      v4->data = [v6 initWithBytes:BytePtr length:CFDataGetLength(v5)];
    }

    v4->band = [coder decodeInt32ForKey:@"band"];
    v4->type = [coder decodeInt32ForKey:@"type"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GCKOOBMessage;
  [(GCKOOBMessage *)&v3 dealloc];
}

@end