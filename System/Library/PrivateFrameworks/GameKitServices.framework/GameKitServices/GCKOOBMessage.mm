@interface GCKOOBMessage
- (GCKOOBMessage)init;
- (GCKOOBMessage)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:self->type forKey:@"type"];
  [a3 encodeInt32:self->band forKey:@"band"];
  data = self->data;
  if (data && [(NSData *)data length])
  {
    v6 = self->data;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] data];
  }

  [a3 encodeObject:v6 forKey:@"data"];
}

- (GCKOOBMessage)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = GCKOOBMessage;
  v4 = [(GCKOOBMessage *)&v9 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc(MEMORY[0x277CBEA90]);
      BytePtr = CFDataGetBytePtr(v5);
      v4->data = [v6 initWithBytes:BytePtr length:CFDataGetLength(v5)];
    }

    v4->band = [a3 decodeInt32ForKey:@"band"];
    v4->type = [a3 decodeInt32ForKey:@"type"];
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