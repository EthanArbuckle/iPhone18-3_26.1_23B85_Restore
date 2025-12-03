@interface SGEKEventStoreProvider
+ (id)defaultEKStoreProvider;
- (SGEKEventStoreProvider)initWithNewEKEventStoreGetter:(id)getter callBlockWithEKEventStoreForReading:(id)reading;
@end

@implementation SGEKEventStoreProvider

+ (id)defaultEKStoreProvider
{
  v2 = [[self alloc] initWithNewEKEventStoreGetter:&__block_literal_global_4063 callBlockWithEKEventStoreForReading:&__block_literal_global_177];

  return v2;
}

- (SGEKEventStoreProvider)initWithNewEKEventStoreGetter:(id)getter callBlockWithEKEventStoreForReading:(id)reading
{
  getterCopy = getter;
  readingCopy = reading;
  v14.receiver = self;
  v14.super_class = SGEKEventStoreProvider;
  v8 = [(SGEKEventStoreProvider *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x2383809F0](getterCopy);
    newEKEventStoreGetter = v8->_newEKEventStoreGetter;
    v8->_newEKEventStoreGetter = v9;

    v11 = MEMORY[0x2383809F0](readingCopy);
    callBlockWithEKEventStoreForReading = v8->_callBlockWithEKEventStoreForReading;
    v8->_callBlockWithEKEventStoreForReading = v11;
  }

  return v8;
}

@end