@interface FCTopicalLeafNode
- (double)initWithNode:(double)node score:;
@end

@implementation FCTopicalLeafNode

- (double)initWithNode:(double)node score:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = FCTopicalLeafNode;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      self[2] = node;
    }
  }

  return self;
}

@end