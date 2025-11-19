@interface FICustomNode
- (FICustomNode)init;
- (id)fileOpNode;
- (void)dealloc;
@end

@implementation FICustomNode

- (FICustomNode)init
{
  v5.receiver = self;
  v5.super_class = FICustomNode;
  v2 = [(FICustomNode *)&v5 init];
  TNode::CreateCustomNode(v2, v3);
}

- (void)dealloc
{
  v3 = +[FIPresentationNodeMap shared];
  [v3 unregisterAllForPresentationNode:self];

  v4.receiver = self;
  v4.super_class = FICustomNode;
  [(FICustomNode *)&v4 dealloc];
}

- (id)fileOpNode
{
  v3 = [(FIDSNode *)self fileURL];
  if (!v3 || ([FINode fiNodeFromURL:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = self;
  }

  return v4;
}

@end