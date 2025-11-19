@interface FIDSNode_FPv2
+ (id)makeWithCoder:(id)a3;
+ (uint64_t)makeWithCoder:(uint64_t)a1;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FIDSNode_FPv2

- (id)shortDescription
{
  v3 = [(FIDSNode *)self fpItem];
  v8.receiver = self;
  v8.super_class = FIDSNode_FPv2;
  v4 = [(FIDSNode *)&v8 shortDescription];
  v5 = [v4 stringByAppendingFormat:@" -- fpItem: %p", v3];

  if ([v3 isPlaceholder])
  {
    v6 = [v5 stringByAppendingString:{@", placeholder"}];

    v5 = v6;
  }

  return v5;
}

+ (id)makeWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"FI FPv2 FPItem"];
  v5 = static_objc_cast<NSString,objc_object * {__strong}>(v4);

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"FI FPv2 Domain"];
  v7 = static_objc_cast<NSString,objc_object * {__strong}>(v6);

  if (v5 && v7)
  {
    dispatch_semaphore_create(0);
    operator new();
  }

  return 0;
}

+ (uint64_t)makeWithCoder:(uint64_t)a1
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FIDSNode_FPv2;
  [(FIDSNode *)&v7 encodeWithCoder:v4];
  v5 = [(FIDSNode *)self fpItem];
  [v4 encodeObject:v5 forKey:@"FI FPv2 FPItem"];
  v6 = [(FIDSNode *)self fpDomain];
  [v4 encodeObject:v6 forKey:@"FI FPv2 Domain"];
}

@end