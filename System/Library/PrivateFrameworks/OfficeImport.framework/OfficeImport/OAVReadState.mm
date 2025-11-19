@interface OAVReadState
- (OAVReadState)initWithClient:(Class)a3 packagePart:(id)a4;
- (OAXDrawingState)oaxState;
- (id)blipRefForURL:(id)a3;
- (id)drawableForVmlShapeId:(id)a3;
- (unsigned)officeArtShapeIdWithVmlShapeId:(id)a3;
- (unsigned)shapeTypeForId:(id)a3;
- (void)resetForNewDrawing;
- (void)setDrawable:(id)a3 forVmlShapeId:(id)a4;
- (void)setShapeType:(unsigned __int16)a3 forId:(id)a4;
@end

@implementation OAVReadState

- (OAVReadState)initWithClient:(Class)a3 packagePart:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = OAVReadState;
  v8 = [(OCXState *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->mClient = a3;
    objc_storeStrong(&v8->mPackagePart, a4);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mShapeTypes = v9->mShapeTypes;
    v9->mShapeTypes = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mShapeIdMap = v9->mShapeIdMap;
    v9->mShapeIdMap = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mDualDrawables = v9->mDualDrawables;
    v9->mDualDrawables = v14;
  }

  return v9;
}

- (void)resetForNewDrawing
{
  [(NSMutableDictionary *)self->mShapeTypes removeAllObjects];
  [(NSMutableDictionary *)self->mShapeIdMap removeAllObjects];
  [(NSMutableSet *)self->mDualDrawables removeAllObjects];

  [(OAVReadState *)self setPackagePart:0];
}

- (unsigned)shapeTypeForId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mShapeTypes objectForKey:a3];
  v4 = [v3 unsignedShortValue];

  return v4;
}

- (void)setShapeType:(unsigned __int16)a3 forId:(id)a4
{
  v4 = a3;
  v8 = a4;
  mShapeTypes = self->mShapeTypes;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v4];
  [(NSMutableDictionary *)mShapeTypes setObject:v7 forKey:v8];
}

- (id)drawableForVmlShapeId:(id)a3
{
  v4 = [(NSMutableDictionary *)self->mShapeIdMap objectForKey:a3];
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);
  v6 = [WeakRetained drawableForShapeId:{objc_msgSend(v4, "unsignedLongValue")}];

  return v6;
}

- (void)setDrawable:(id)a3 forVmlShapeId:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->mShapeIdMap count];
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);
  [WeakRetained setDrawable:v12 forShapeId:v7 ^ 0x80000000];

  if (v6)
  {
    v9 = [(NSMutableDictionary *)self->mShapeIdMap objectForKeyedSubscript:v6];

    if (!v9)
    {
      v10 = [v12 id];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
      [(NSMutableDictionary *)self->mShapeIdMap setObject:v11 forKeyedSubscript:v6];
    }
  }
}

- (unsigned)officeArtShapeIdWithVmlShapeId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mShapeIdMap objectForKey:a3];
  v4 = [v3 unsignedLongValue];

  return v4;
}

- (id)blipRefForURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);
  v6 = [WeakRetained blipRefForURL:v4];

  return v6;
}

- (OAXDrawingState)oaxState
{
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);

  return WeakRetained;
}

@end