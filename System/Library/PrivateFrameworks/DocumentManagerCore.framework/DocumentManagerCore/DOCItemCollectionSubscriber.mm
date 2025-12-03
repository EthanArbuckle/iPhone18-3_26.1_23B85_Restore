@interface DOCItemCollectionSubscriber
- (DOCItemCollectionSubscriber)initWithUpdateBlock:(id)block;
@end

@implementation DOCItemCollectionSubscriber

- (DOCItemCollectionSubscriber)initWithUpdateBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = DOCItemCollectionSubscriber;
  v5 = [(DOCItemCollectionSubscriber *)&v8 init];
  if (v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(DOCItemCollectionSubscriber *)v5 setUUID:uUID];

    [(DOCItemCollectionSubscriber *)v5 setUpdateBlock:blockCopy];
  }

  return v5;
}

@end