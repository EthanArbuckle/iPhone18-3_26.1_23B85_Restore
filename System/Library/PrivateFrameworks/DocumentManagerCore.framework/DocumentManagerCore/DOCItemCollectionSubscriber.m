@interface DOCItemCollectionSubscriber
- (DOCItemCollectionSubscriber)initWithUpdateBlock:(id)a3;
@end

@implementation DOCItemCollectionSubscriber

- (DOCItemCollectionSubscriber)initWithUpdateBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DOCItemCollectionSubscriber;
  v5 = [(DOCItemCollectionSubscriber *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    [(DOCItemCollectionSubscriber *)v5 setUUID:v6];

    [(DOCItemCollectionSubscriber *)v5 setUpdateBlock:v4];
  }

  return v5;
}

@end