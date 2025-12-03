@interface FIDSNode_Computer
+ (id)makeWithCoder:(id)coder;
@end

@implementation FIDSNode_Computer

+ (id)makeWithCoder:(id)coder
{
  TGlobalNodes::RootNode(&v7);
  v3 = TNodeFromFINode(v7);
  v4 = FIDSNodeFromTNode(v3);
  v5 = static_objc_cast<NSString,objc_object * {__strong}>(v4);

  return v5;
}

@end