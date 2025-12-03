@interface OAXDrawingState
- (OAXDrawingState)initWithClient:(id)client;
- (id)appVersion;
- (id)blipRefForURL:(id)l;
- (id)blipRefWithURL:(id)l blipArray:(id)array blipURLtoIndexMap:(id)map;
- (id)bulletBlipRefForURL:(id)l;
- (id)documentState;
- (id)drawableForShapeId:(unsigned int)id;
- (id)popGroup;
- (id)vmlShapeIdForDrawableId:(unsigned int)id;
- (void)clearTargetBlipCollection;
- (void)resetForNewDrawing;
- (void)setDocumentState:(id)state;
- (void)setDrawable:(id)drawable forShapeId:(unsigned int)id;
- (void)setTargetBlipCollection:(id)collection;
- (void)setTargetBulletBlipArray:(id)array;
- (void)setVmlShapeId:(id)id forDrawableId:(unsigned int)drawableId;
- (void)setupNSForXMLFormat:(int)format;
@end

@implementation OAXDrawingState

- (void)resetForNewDrawing
{
  [(NSMutableDictionary *)self->mShapeIdMap removeAllObjects];
  mDrawableIdToVmlShapeIdMap = self->mDrawableIdToVmlShapeIdMap;

  [(NSMutableDictionary *)mDrawableIdToVmlShapeIdMap removeAllObjects];
}

- (id)popGroup
{
  peekGroup = [(OAXDrawingState *)self peekGroup];
  [(NSMutableArray *)self->mGroupStack removeLastObject];

  return peekGroup;
}

- (id)documentState
{
  WeakRetained = objc_loadWeakRetained(&self->mDocumentState);

  return WeakRetained;
}

- (void)clearTargetBlipCollection
{
  mTgtBlipCollection = self->mTgtBlipCollection;
  self->mTgtBlipCollection = 0;

  mSrcURLToTgtBlipIndexMap = self->mSrcURLToTgtBlipIndexMap;
  self->mSrcURLToTgtBlipIndexMap = 0;
}

- (OAXDrawingState)initWithClient:(id)client
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = OAXDrawingState;
  v6 = [(OCXState *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mClient, client);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mShapeIdMap = v7->mShapeIdMap;
    v7->mShapeIdMap = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mDrawableIdToVmlShapeIdMap = v7->mDrawableIdToVmlShapeIdMap;
    v7->mDrawableIdToVmlShapeIdMap = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mGroupStack = v7->mGroupStack;
    v7->mGroupStack = v12;
  }

  return v7;
}

- (id)appVersion
{
  packagePart = [(OAXDrawingState *)self packagePart];
  package = [packagePart package];
  properties = [package properties];
  appVersion = [properties appVersion];

  return appVersion;
}

- (id)drawableForShapeId:(unsigned int)id
{
  mShapeIdMap = self->mShapeIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:id];
  v5 = [(NSMutableDictionary *)mShapeIdMap objectForKey:v4];

  return v5;
}

- (void)setDrawable:(id)drawable forShapeId:(unsigned int)id
{
  v4 = *&id;
  drawableCopy = drawable;
  mShapeIdMap = self->mShapeIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
  v8 = [(NSMutableDictionary *)mShapeIdMap objectForKey:v7];

  [drawableCopy setId:v4];
  v9 = self->mShapeIdMap;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
  [(NSMutableDictionary *)v9 setObject:drawableCopy forKey:v10];
}

- (id)vmlShapeIdForDrawableId:(unsigned int)id
{
  mDrawableIdToVmlShapeIdMap = self->mDrawableIdToVmlShapeIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:id];
  v5 = [(NSMutableDictionary *)mDrawableIdToVmlShapeIdMap objectForKey:v4];

  return v5;
}

- (void)setVmlShapeId:(id)id forDrawableId:(unsigned int)drawableId
{
  idCopy = id;
  mDrawableIdToVmlShapeIdMap = self->mDrawableIdToVmlShapeIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:drawableId];
  [(NSMutableDictionary *)mDrawableIdToVmlShapeIdMap setObject:idCopy forKey:v7];
}

- (void)setDocumentState:(id)state
{
  stateCopy = state;
  objc_storeWeak(&self->mDocumentState, stateCopy);
  -[OAXDrawingState setupNSForXMLFormat:](self, "setupNSForXMLFormat:", [stateCopy xmlFormat]);
}

- (void)setTargetBlipCollection:(id)collection
{
  collectionCopy = collection;
  if (self->mTgtBlipCollection != collectionCopy)
  {
    objc_storeStrong(&self->mTgtBlipCollection, collection);
  }

  mSrcURLToTgtBlipIndexMap = self->mSrcURLToTgtBlipIndexMap;
  if (mSrcURLToTgtBlipIndexMap)
  {
    self->mSrcURLToTgtBlipIndexMap = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = self->mSrcURLToTgtBlipIndexMap;
  self->mSrcURLToTgtBlipIndexMap = v6;
}

- (void)setTargetBulletBlipArray:(id)array
{
  arrayCopy = array;
  objc_storeStrong(&self->mTgtBulletBlips, array);
  if (self->mTgtBulletBlips)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mSrcURLToTgtBulletBlipIndexMap = self->mSrcURLToTgtBulletBlipIndexMap;
    self->mSrcURLToTgtBulletBlipIndexMap = v5;
  }
}

- (id)blipRefWithURL:(id)l blipArray:(id)array blipURLtoIndexMap:(id)map
{
  lCopy = l;
  arrayCopy = array;
  mapCopy = map;
  if (lCopy)
  {
    package = [(OCPPackagePart *)self->mPackagePart package];
    v11 = [package partForLocation:lCopy];

    if (v11)
    {
      location = [v11 location];
      path = [location path];

      lastPathComponent = [path lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      v15 = [mapCopy objectForKey:path];
      v41 = v15;
      if (v15)
      {
        intValue = [v15 intValue];
        v17 = [arrayCopy objectAtIndex:intValue];
        referenceCount = [v17 referenceCount];
        ++*referenceCount;
        v19 = [OADBlipRef blipRefWithIndex:intValue name:stringByDeletingPathExtension blip:0];
      }

      else
      {
        v39 = lastPathComponent;
        package2 = [(OCPPackagePart *)self->mPackagePart package];
        v21 = [package2 contentTypeForPartLocation:lCopy];

        v40 = v21;
        v22 = [OADBlipRef blipTypeForContentType:v21];
        if (v22 || ([lCopy pathExtension], v23 = objc_claimAutoreleasedReturnValue(), v22 = +[OADBlipRef blipTypeForExtension:](OADBlipRef, "blipTypeForExtension:", v23), v23, v22) || (context = objc_autoreleasePoolPush(), -[OCPPackagePart package](self->mPackagePart, "package"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "partForLocation:", lCopy), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "data"), v25 = objc_claimAutoreleasedReturnValue(), v22 = +[OADBlipRef blipTypeForImageData:](OADBlipRef, "blipTypeForImageData:", v25), v25, v24, v37, objc_autoreleasePoolPop(context), v22))
        {
          v26 = [[OADSubBlip alloc] initWithData:0 type:v22];
          v27 = [OAXBlipContext alloc];
          package3 = [(OCPPackagePart *)self->mPackagePart package];
          v29 = [(OCXDelayedMediaContext *)v27 initWithTargetLocation:lCopy package:package3];

          v38 = v29;
          [(OCDDelayedNode *)v26 setDelayedContext:v29];
          data = [v11 data];
          -[OADSubBlip setSizeInBytes:](v26, "setSizeInBytes:", [data length]);

          v31 = objc_alloc_init(OADBlip);
          [(OADBlip *)v31 setMainSubBlip:v26];
          [arrayCopy addObject:v31];
          *[(OADBlip *)v31 referenceCount]= 1;
          v32 = [arrayCopy count] - 1;
          v33 = [MEMORY[0x277CCABB0] numberWithInt:v32];
          [mapCopy setObject:v33 forKey:path];

          v19 = [OADBlipRef blipRefWithIndex:v32 name:stringByDeletingPathExtension blip:0];
          package4 = [(OCPPackagePart *)self->mPackagePart package];
          [package4 resetPartForLocation:lCopy];

          lastPathComponent = v39;
        }

        else
        {
          v19 = [OADBlipRef blipRefWithIndex:0xFFFFFFFFLL name:0 blip:0];
        }

        v17 = v40;
      }
    }

    else
    {
      v19 = [OADBlipRef blipRefWithIndex:0xFFFFFFFFLL name:0 blip:0];
    }
  }

  else
  {
    v19 = [OADBlipRef blipRefWithIndex:0xFFFFFFFFLL name:0 blip:0];
  }

  return v19;
}

- (id)blipRefForURL:(id)l
{
  lCopy = l;
  blips = [(OADBlipCollection *)self->mTgtBlipCollection blips];
  v6 = [(OAXDrawingState *)self blipRefWithURL:lCopy blipArray:blips blipURLtoIndexMap:self->mSrcURLToTgtBlipIndexMap];

  if (v6)
  {
    index = [v6 index];
    name = [v6 name];
    v9 = [OADBlipRef blipRefWithIndex:(index + 1) name:name blip:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bulletBlipRefForURL:(id)l
{
  v3 = [(OAXDrawingState *)self blipRefWithURL:l blipArray:self->mTgtBulletBlips blipURLtoIndexMap:self->mSrcURLToTgtBulletBlipIndexMap];

  return v3;
}

- (void)setupNSForXMLFormat:(int)format
{
  v35.receiver = self;
  v35.super_class = OAXDrawingState;
  [(OCXState *)&v35 setupNSForXMLFormat:?];
  v5 = [CXNamespace alloc];
  v6 = v5;
  if (format)
  {
    v7 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/main"];
    v8 = [(CXNamespace *)v6 initWithUri:"http://purl.oclc.org/ooxml/drawingml/main" fallbackNamespace:v7];
    [(OAXDrawingState *)self setOAXMainNamespace:v8];

    v9 = [CXNamespace alloc];
    v10 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/chart"];
    v11 = [(CXNamespace *)v9 initWithUri:"http://purl.oclc.org/ooxml/drawingml/chart" fallbackNamespace:v10];
    [(OAXDrawingState *)self setOAXChartNamespace:v11];

    v12 = [CXNamespace alloc];
    v13 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/chartDrawing"];
    v14 = [(CXNamespace *)v12 initWithUri:"http://purl.oclc.org/ooxml/drawingml/chartDrawing" fallbackNamespace:v13];
    [(OAXDrawingState *)self setOAXChartDrawingNamespace:v14];

    v15 = [CXNamespace alloc];
    v16 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/lockedCanvas"];
    v17 = [(CXNamespace *)v15 initWithUri:"http://purl.oclc.org/ooxml/drawingml/lockedCanvas" fallbackNamespace:v16];
    [(OAXDrawingState *)self setOAXLockedCanvasNamespace:v17];

    v18 = [CXNamespace alloc];
    v19 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/picture"];
    v20 = [(CXNamespace *)v18 initWithUri:"http://purl.oclc.org/ooxml/drawingml/picture" fallbackNamespace:v19];
    [(OAXDrawingState *)self setOAXPictureNamespace:v20];

    v21 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/table"];
    [(OAXDrawingState *)self setOAXTableNamespace:v21];

    v22 = [CXNamespace alloc];
    v23 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/wordprocessingml/2006/main"];
    v24 = [(CXNamespace *)v22 initWithUri:"http://purl.oclc.org/ooxml/wordprocessingml/main" fallbackNamespace:v23];
    [(OAXDrawingState *)self setOAXWordProcessingMLNamespace:v24];

    v25 = [CXNamespace alloc];
    v26 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/math"];
    v27 = [(CXNamespace *)v25 initWithUri:"http://purl.oclc.org/ooxml/officeDocument/math" fallbackNamespace:v26];
    [(OAXDrawingState *)self setOAXMathNamespace:v27];
  }

  else
  {
    v28 = [(CXNamespace *)v5 initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/main"];
    [(OAXDrawingState *)self setOAXMainNamespace:v28];

    v29 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/chart"];
    [(OAXDrawingState *)self setOAXChartNamespace:v29];

    v30 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/chartDrawing"];
    [(OAXDrawingState *)self setOAXChartDrawingNamespace:v30];

    v31 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/lockedCanvas"];
    [(OAXDrawingState *)self setOAXLockedCanvasNamespace:v31];

    v32 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/picture"];
    [(OAXDrawingState *)self setOAXPictureNamespace:v32];

    v33 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/table"];
    [(OAXDrawingState *)self setOAXTableNamespace:v33];

    v34 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/wordprocessingml/2006/main"];
    [(OAXDrawingState *)self setOAXWordProcessingMLNamespace:v34];

    v26 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/math"];
    [(OAXDrawingState *)self setOAXMathNamespace:v26];
  }

  [(OAXDrawingState *)self setOAXCompatNamespace:OAXCompatNamespace];
  [(OAXDrawingState *)self setOAXChart2012Namespace:OAXChart2012Namespace];
  [(OAXDrawingState *)self setOAXDrawing2010Namespace:OAXDrawing2010Namespace];
}

@end