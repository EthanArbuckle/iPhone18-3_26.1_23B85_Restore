@interface EMActivityObjectID
- (EMActivityObjectID)init;
- (EMActivityObjectID)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMActivityObjectID

- (EMActivityObjectID)init
{
  v3.receiver = self;
  v3.super_class = EMActivityObjectID;
  return [(EMObjectID *)&v3 initAsEphemeralID:1];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  EFEncodeCacheableInstance();
}

id __38__EMActivityObjectID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = EMActivityObjectID;
  return objc_msgSendSuper2(&v3, sel_encodeWithCoder_, v1);
}

- (EMActivityObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  selfCopy2 = self;
  v5 = coderCopy;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

id __36__EMActivityObjectID_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v6.receiver = v2;
  v6.super_class = EMActivityObjectID;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, v3);

  return v4;
}

@end