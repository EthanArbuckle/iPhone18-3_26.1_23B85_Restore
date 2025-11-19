@interface EDTokenTreeNode
+ (id)tokenTreeNodeWithIndexAndType:(unsigned int)a3 type:(int)a4;
- (EDTokenTreeNode)init;
- (EDTokenTreeNode)initWithIndexAndType:(unsigned int)a3 type:(int)a4;
- (id)description;
- (void)setFirstChild:(id)a3;
- (void)setSibling:(id)a3;
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

- (EDTokenTreeNode)initWithIndexAndType:(unsigned int)a3 type:(int)a4
{
  v7.receiver = self;
  v7.super_class = EDTokenTreeNode;
  result = [(EDTokenTreeNode *)&v7 init];
  if (result)
  {
    result->mTokenIndex = a3;
    result->mTokenType = a4;
  }

  return result;
}

+ (id)tokenTreeNodeWithIndexAndType:(unsigned int)a3 type:(int)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithIndexAndType:*&a3 type:*&a4];

  return v4;
}

- (void)setFirstChild:(id)a3
{
  v5 = a3;
  mFirstChild = self->mFirstChild;
  p_mFirstChild = &self->mFirstChild;
  if (mFirstChild != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mFirstChild, a3);
    v5 = v8;
  }
}

- (void)setSibling:(id)a3
{
  v5 = a3;
  mSibling = self->mSibling;
  p_mSibling = &self->mSibling;
  if (mSibling != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mSibling, a3);
    v5 = v8;
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