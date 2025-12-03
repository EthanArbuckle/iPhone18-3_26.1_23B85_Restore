@interface OAVReadState
- (OAVReadState)initWithClient:(Class)client packagePart:(id)part;
- (OAXDrawingState)oaxState;
- (id)blipRefForURL:(id)l;
- (id)drawableForVmlShapeId:(id)id;
- (unsigned)officeArtShapeIdWithVmlShapeId:(id)id;
- (unsigned)shapeTypeForId:(id)id;
- (void)resetForNewDrawing;
- (void)setDrawable:(id)drawable forVmlShapeId:(id)id;
- (void)setShapeType:(unsigned __int16)type forId:(id)id;
@end

@implementation OAVReadState

- (OAVReadState)initWithClient:(Class)client packagePart:(id)part
{
  partCopy = part;
  v17.receiver = self;
  v17.super_class = OAVReadState;
  v8 = [(OCXState *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->mClient = client;
    objc_storeStrong(&v8->mPackagePart, part);
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

- (unsigned)shapeTypeForId:(id)id
{
  v3 = [(NSMutableDictionary *)self->mShapeTypes objectForKey:id];
  unsignedShortValue = [v3 unsignedShortValue];

  return unsignedShortValue;
}

- (void)setShapeType:(unsigned __int16)type forId:(id)id
{
  typeCopy = type;
  idCopy = id;
  mShapeTypes = self->mShapeTypes;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:typeCopy];
  [(NSMutableDictionary *)mShapeTypes setObject:v7 forKey:idCopy];
}

- (id)drawableForVmlShapeId:(id)id
{
  v4 = [(NSMutableDictionary *)self->mShapeIdMap objectForKey:id];
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);
  v6 = [WeakRetained drawableForShapeId:{objc_msgSend(v4, "unsignedLongValue")}];

  return v6;
}

- (void)setDrawable:(id)drawable forVmlShapeId:(id)id
{
  drawableCopy = drawable;
  idCopy = id;
  v7 = [(NSMutableDictionary *)self->mShapeIdMap count];
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);
  [WeakRetained setDrawable:drawableCopy forShapeId:v7 ^ 0x80000000];

  if (idCopy)
  {
    v9 = [(NSMutableDictionary *)self->mShapeIdMap objectForKeyedSubscript:idCopy];

    if (!v9)
    {
      v10 = [drawableCopy id];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
      [(NSMutableDictionary *)self->mShapeIdMap setObject:v11 forKeyedSubscript:idCopy];
    }
  }
}

- (unsigned)officeArtShapeIdWithVmlShapeId:(id)id
{
  v3 = [(NSMutableDictionary *)self->mShapeIdMap objectForKey:id];
  unsignedLongValue = [v3 unsignedLongValue];

  return unsignedLongValue;
}

- (id)blipRefForURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);
  v6 = [WeakRetained blipRefForURL:lCopy];

  return v6;
}

- (OAXDrawingState)oaxState
{
  WeakRetained = objc_loadWeakRetained(&self->mOAXState);

  return WeakRetained;
}

@end