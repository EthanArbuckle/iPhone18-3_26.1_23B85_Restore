@interface FIDSNode_FPv2
+ (id)makeWithCoder:(id)coder;
+ (uint64_t)makeWithCoder:(uint64_t)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FIDSNode_FPv2

- (id)shortDescription
{
  fpItem = [(FIDSNode *)self fpItem];
  v8.receiver = self;
  v8.super_class = FIDSNode_FPv2;
  shortDescription = [(FIDSNode *)&v8 shortDescription];
  v5 = [shortDescription stringByAppendingFormat:@" -- fpItem: %p", fpItem];

  if ([fpItem isPlaceholder])
  {
    v6 = [v5 stringByAppendingString:{@", placeholder"}];

    v5 = v6;
  }

  return v5;
}

+ (id)makeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FI FPv2 FPItem"];
  v5 = static_objc_cast<NSString,objc_object * {__strong}>(v4);

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FI FPv2 Domain"];
  v7 = static_objc_cast<NSString,objc_object * {__strong}>(v6);

  if (v5 && v7)
  {
    dispatch_semaphore_create(0);
    operator new();
  }

  return 0;
}

+ (uint64_t)makeWithCoder:(uint64_t)coder
{
  v2 = *(coder + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return coder;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FIDSNode_FPv2;
  [(FIDSNode *)&v7 encodeWithCoder:coderCopy];
  fpItem = [(FIDSNode *)self fpItem];
  [coderCopy encodeObject:fpItem forKey:@"FI FPv2 FPItem"];
  fpDomain = [(FIDSNode *)self fpDomain];
  [coderCopy encodeObject:fpDomain forKey:@"FI FPv2 Domain"];
}

@end