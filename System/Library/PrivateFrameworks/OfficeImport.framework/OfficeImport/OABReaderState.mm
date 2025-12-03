@interface OABReaderState
- (OABReaderState)initWithClient:(Class)client;
- (id)contentObjectForId:(int)id;
- (id)drawableForShapeId:(int)id;
- (id)popGroup;
- (void)setContentObject:(id)object forId:(int)id;
- (void)setDrawable:(id)drawable forShapeId:(unsigned int)id;
@end

@implementation OABReaderState

- (OABReaderState)initWithClient:(Class)client
{
  v13.receiver = self;
  v13.super_class = OABReaderState;
  v4 = [(OABReaderState *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->mClient = client;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mShapeIdMap = v5->mShapeIdMap;
    v5->mShapeIdMap = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mEshContentIdMap = v5->mEshContentIdMap;
    v5->mEshContentIdMap = v8;

    v10 = objc_opt_new();
    mGroupStack = v5->mGroupStack;
    v5->mGroupStack = v10;
  }

  return v5;
}

- (id)drawableForShapeId:(int)id
{
  mShapeIdMap = self->mShapeIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&id];
  v5 = [(NSMutableDictionary *)mShapeIdMap objectForKey:v4];

  return v5;
}

- (void)setDrawable:(id)drawable forShapeId:(unsigned int)id
{
  drawableCopy = drawable;
  mShapeIdMap = self->mShapeIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:id];
  [(NSMutableDictionary *)mShapeIdMap setObject:drawableCopy forKey:v7];
}

- (id)contentObjectForId:(int)id
{
  mEshContentIdMap = self->mEshContentIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&id];
  v5 = [(NSMutableDictionary *)mEshContentIdMap objectForKey:v4];

  return v5;
}

- (void)setContentObject:(id)object forId:(int)id
{
  v4 = *&id;
  objectCopy = object;
  mEshContentIdMap = self->mEshContentIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)mEshContentIdMap setObject:objectCopy forKey:v7];
}

- (id)popGroup
{
  peekGroup = [(OABReaderState *)self peekGroup];
  [(NSMutableArray *)self->mGroupStack removeLastObject];

  return peekGroup;
}

@end