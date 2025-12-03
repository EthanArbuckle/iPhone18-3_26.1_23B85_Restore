@interface EDTokenTreeNode
+ (id)tokenTreeNodeWithIndexAndType:(unsigned int)type type:(int)a4;
- (EDTokenTreeNode)init;
- (EDTokenTreeNode)initWithIndexAndType:(unsigned int)type type:(int)a4;
- (id)description;
- (void)setFirstChild:(id)child;
- (void)setSibling:(id)sibling;
@end

@implementation EDTokenTreeNode

- (EDTokenTreeNode)init
{
  v3.receiver = self;
  v3.super_class = EDTokenTreeNode;
  result = [(EDTokenTreeNode *)&v3 init];
  if (result)
  {
    *&result->mTokenIndex = 0xFFFFFFFFLL;
  }

  return result;
}

- (EDTokenTreeNode)initWithIndexAndType:(unsigned int)type type:(int)a4
{
  v7.receiver = self;
  v7.super_class = EDTokenTreeNode;
  result = [(EDTokenTreeNode *)&v7 init];
  if (result)
  {
    result->mTokenIndex = type;
    result->mTokenType = a4;
  }

  return result;
}

+ (id)tokenTreeNodeWithIndexAndType:(unsigned int)type type:(int)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithIndexAndType:*&type type:*&a4];

  return v4;
}

- (void)setFirstChild:(id)child
{
  childCopy = child;
  mFirstChild = self->mFirstChild;
  p_mFirstChild = &self->mFirstChild;
  if (mFirstChild != childCopy)
  {
    v8 = childCopy;
    objc_storeStrong(p_mFirstChild, child);
    childCopy = v8;
  }
}

- (void)setSibling:(id)sibling
{
  siblingCopy = sibling;
  mSibling = self->mSibling;
  p_mSibling = &self->mSibling;
  if (mSibling != siblingCopy)
  {
    v8 = siblingCopy;
    objc_storeStrong(p_mSibling, sibling);
    siblingCopy = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDTokenTreeNode;
  v2 = [(EDTokenTreeNode *)&v4 description];

  return v2;
}

@end