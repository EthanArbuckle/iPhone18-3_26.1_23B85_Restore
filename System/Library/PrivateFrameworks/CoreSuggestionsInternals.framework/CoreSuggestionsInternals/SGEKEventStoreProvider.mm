@interface SGEKEventStoreProvider
+ (id)defaultEKStoreProvider;
- (SGEKEventStoreProvider)initWithNewEKEventStoreGetter:(id)a3 callBlockWithEKEventStoreForReading:(id)a4;
@end

@implementation SGEKEventStoreProvider

+ (id)defaultEKStoreProvider
{
  v2 = [[a1 alloc] initWithNewEKEventStoreGetter:&__block_literal_global_4063 callBlockWithEKEventStoreForReading:&__block_literal_global_177];

  return v2;
}

- (SGEKEventStoreProvider)initWithNewEKEventStoreGetter:(id)a3 callBlockWithEKEventStoreForReading:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SGEKEventStoreProvider;
  v8 = [(SGEKEventStoreProvider *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x2383809F0](v6);
    newEKEventStoreGetter = v8->_newEKEventStoreGetter;
    v8->_newEKEventStoreGetter = v9;

    v11 = MEMORY[0x2383809F0](v7);
    callBlockWithEKEventStoreForReading = v8->_callBlockWithEKEventStoreForReading;
    v8->_callBlockWithEKEventStoreForReading = v11;
  }

  return v8;
}

@end