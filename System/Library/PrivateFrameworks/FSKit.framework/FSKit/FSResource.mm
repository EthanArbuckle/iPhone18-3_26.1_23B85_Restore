@interface FSResource
+ (id)dynamicCast:(id)cast;
- (FSResource)initWithCoder:(id)coder;
- (NSURL)getProgressURLKey;
- (id)initResource;
- (id)makeProxy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSResource

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [coderCopy encodeInt:self->_state forKey:@"FSResource.State"];
}

- (FSResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v6);
  }

  if (self)
  {
    self->_state = [coderCopy decodeIntForKey:@"FSResource.State"];
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

+ (id)dynamicCast:(id)cast
{
  castCopy = cast;
  if (objc_opt_isKindOfClass())
  {
    v4 = castCopy;
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
  getResourceID = [(FSResource *)self getResourceID];
  v5 = [v3 stringWithFormat:@"/tmp/%@", getResourceID];
  v6 = [v2 fileURLWithPath:v5];

  return v6;
}

@end