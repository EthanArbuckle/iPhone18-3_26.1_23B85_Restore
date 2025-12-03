@interface FIDSNode_FPProvider
+ (id)makeWithCoder:(id)coder;
- (BOOL)isFPv2;
- (BOOL)isUsingFPFS;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FIDSNode_FPProvider

+ (id)makeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FI Domain"];
  v5 = static_objc_cast<NSString,objc_object * {__strong}>(v4);

  identifier = [v5 identifier];
  if ([identifier length])
  {
    v7 = identifier;
    v12.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v12, v7);

    TNode::RootNodeForFPDomain(&v12, 0, &v13);
    v8 = TNodeFromFINode(v13);
    v9 = FIDSNodeFromTNode(v8);
    v10 = static_objc_cast<NSString,objc_object * {__strong}>(v9);

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = FIDSNode_FPProvider;
  [(FIDSNode *)&v6 encodeWithCoder:coderCopy];
  fpDomain = [(FIDSNode *)self fpDomain];
  if (fpDomain)
  {
    [coderCopy encodeObject:fpDomain forKey:@"FI Domain"];
  }
}

- (BOOL)isUsingFPFS
{
  fiDomain = [(FIDSNode *)self fiDomain];
  isUsingFPFS = [fiDomain isUsingFPFS];

  return isUsingFPFS;
}

- (BOOL)isFPv2
{
  fiDomain = [(FIDSNode *)self fiDomain];
  isFPv2 = [fiDomain isFPv2];

  return isFPv2;
}

@end