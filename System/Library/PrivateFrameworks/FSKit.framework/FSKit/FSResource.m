@interface FSResource
+ (id)dynamicCast:(id)a3;
- (FSResource)initWithCoder:(id)a3;
- (NSURL)getProgressURLKey;
- (id)initResource;
- (id)makeProxy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSResource

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [v5 encodeInt:self->_state forKey:@"FSResource.State"];
}

- (FSResource)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v6);
  }

  if (self)
  {
    self->_state = [v4 decodeIntForKey:@"FSResource.State"];
  }

  return self;
}

- (id)makeProxy
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE648];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't create a proxy object of a base FSResource"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (id)initResource
{
  v3.receiver = self;
  v3.super_class = FSResource;
  return [(FSResource *)&v3 init];
}

+ (id)dynamicCast:(id)a3
{
  v3 = a3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSURL)getProgressURLKey
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FSResource *)self getResourceID];
  v5 = [v3 stringWithFormat:@"/tmp/%@", v4];
  v6 = [v2 fileURLWithPath:v5];

  return v6;
}

@end