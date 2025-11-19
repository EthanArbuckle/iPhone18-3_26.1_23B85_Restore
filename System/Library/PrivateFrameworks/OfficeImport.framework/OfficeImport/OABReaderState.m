@interface OABReaderState
- (OABReaderState)initWithClient:(Class)a3;
- (id)contentObjectForId:(int)a3;
- (id)drawableForShapeId:(int)a3;
- (id)popGroup;
- (void)setContentObject:(id)a3 forId:(int)a4;
- (void)setDrawable:(id)a3 forShapeId:(unsigned int)a4;
@end

@implementation OABReaderState

- (OABReaderState)initWithClient:(Class)a3
{
  v13.receiver = self;
  v13.super_class = OABReaderState;
  v4 = [(OABReaderState *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->mClient = a3;
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

- (id)drawableForShapeId:(int)a3
{
  mShapeIdMap = self->mShapeIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  v5 = [(NSMutableDictionary *)mShapeIdMap objectForKey:v4];

  return v5;
}

- (void)setDrawable:(id)a3 forShapeId:(unsigned int)a4
{
  v8 = a3;
  mShapeIdMap = self->mShapeIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  [(NSMutableDictionary *)mShapeIdMap setObject:v8 forKey:v7];
}

- (id)contentObjectForId:(int)a3
{
  mEshContentIdMap = self->mEshContentIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  v5 = [(NSMutableDictionary *)mEshContentIdMap objectForKey:v4];

  return v5;
}

- (void)setContentObject:(id)a3 forId:(int)a4
{
  v4 = *&a4;
  v8 = a3;
  mEshContentIdMap = self->mEshContentIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)mEshContentIdMap setObject:v8 forKey:v7];
}

- (id)popGroup
{
  v3 = [(OABReaderState *)self peekGroup];
  [(NSMutableArray *)self->mGroupStack removeLastObject];

  return v3;
}

@end