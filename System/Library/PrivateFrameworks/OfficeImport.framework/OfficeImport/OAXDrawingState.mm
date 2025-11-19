@interface OAXDrawingState
- (OAXDrawingState)initWithClient:(id)a3;
- (id)appVersion;
- (id)blipRefForURL:(id)a3;
- (id)blipRefWithURL:(id)a3 blipArray:(id)a4 blipURLtoIndexMap:(id)a5;
- (id)bulletBlipRefForURL:(id)a3;
- (id)documentState;
- (id)drawableForShapeId:(unsigned int)a3;
- (id)popGroup;
- (id)vmlShapeIdForDrawableId:(unsigned int)a3;
- (void)clearTargetBlipCollection;
- (void)resetForNewDrawing;
- (void)setDocumentState:(id)a3;
- (void)setDrawable:(id)a3 forShapeId:(unsigned int)a4;
- (void)setTargetBlipCollection:(id)a3;
- (void)setTargetBulletBlipArray:(id)a3;
- (void)setVmlShapeId:(id)a3 forDrawableId:(unsigned int)a4;
- (void)setupNSForXMLFormat:(int)a3;
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
  v3 = [(OAXDrawingState *)self peekGroup];
  [(NSMutableArray *)self->mGroupStack removeLastObject];

  return v3;
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

- (OAXDrawingState)initWithClient:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = OAXDrawingState;
  v6 = [(OCXState *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mClient, a3);
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
  v2 = [(OAXDrawingState *)self packagePart];
  v3 = [v2 package];
  v4 = [v3 properties];
  v5 = [v4 appVersion];

  return v5;
}

- (id)drawableForShapeId:(unsigned int)a3
{
  mShapeIdMap = self->mShapeIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v5 = [(NSMutableDictionary *)mShapeIdMap objectForKey:v4];

  return v5;
}

- (void)setDrawable:(id)a3 forShapeId:(unsigned int)a4
{
  v4 = *&a4;
  v11 = a3;
  mShapeIdMap = self->mShapeIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
  v8 = [(NSMutableDictionary *)mShapeIdMap objectForKey:v7];

  [v11 setId:v4];
  v9 = self->mShapeIdMap;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
  [(NSMutableDictionary *)v9 setObject:v11 forKey:v10];
}

- (id)vmlShapeIdForDrawableId:(unsigned int)a3
{
  mDrawableIdToVmlShapeIdMap = self->mDrawableIdToVmlShapeIdMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v5 = [(NSMutableDictionary *)mDrawableIdToVmlShapeIdMap objectForKey:v4];

  return v5;
}

- (void)setVmlShapeId:(id)a3 forDrawableId:(unsigned int)a4
{
  v8 = a3;
  mDrawableIdToVmlShapeIdMap = self->mDrawableIdToVmlShapeIdMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  [(NSMutableDictionary *)mDrawableIdToVmlShapeIdMap setObject:v8 forKey:v7];
}

- (void)setDocumentState:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->mDocumentState, v4);
  -[OAXDrawingState setupNSForXMLFormat:](self, "setupNSForXMLFormat:", [v4 xmlFormat]);
}

- (void)setTargetBlipCollection:(id)a3
{
  v8 = a3;
  if (self->mTgtBlipCollection != v8)
  {
    objc_storeStrong(&self->mTgtBlipCollection, a3);
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

- (void)setTargetBulletBlipArray:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->mTgtBulletBlips, a3);
  if (self->mTgtBulletBlips)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mSrcURLToTgtBulletBlipIndexMap = self->mSrcURLToTgtBulletBlipIndexMap;
    self->mSrcURLToTgtBulletBlipIndexMap = v5;
  }
}

- (id)blipRefWithURL:(id)a3 blipArray:(id)a4 blipURLtoIndexMap:(id)a5
{
  v8 = a3;
  v43 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(OCPPackagePart *)self->mPackagePart package];
    v11 = [v10 partForLocation:v8];

    if (v11)
    {
      v12 = [v11 location];
      v13 = [v12 path];

      v14 = [v13 lastPathComponent];
      v42 = [v14 stringByDeletingPathExtension];
      v15 = [v9 objectForKey:v13];
      v41 = v15;
      if (v15)
      {
        v16 = [v15 intValue];
        v17 = [v43 objectAtIndex:v16];
        v18 = [v17 referenceCount];
        ++*v18;
        v19 = [OADBlipRef blipRefWithIndex:v16 name:v42 blip:0];
      }

      else
      {
        v39 = v14;
        v20 = [(OCPPackagePart *)self->mPackagePart package];
        v21 = [v20 contentTypeForPartLocation:v8];

        v40 = v21;
        v22 = [OADBlipRef blipTypeForContentType:v21];
        if (v22 || ([v8 pathExtension], v23 = objc_claimAutoreleasedReturnValue(), v22 = +[OADBlipRef blipTypeForExtension:](OADBlipRef, "blipTypeForExtension:", v23), v23, v22) || (context = objc_autoreleasePoolPush(), -[OCPPackagePart package](self->mPackagePart, "package"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "partForLocation:", v8), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "data"), v25 = objc_claimAutoreleasedReturnValue(), v22 = +[OADBlipRef blipTypeForImageData:](OADBlipRef, "blipTypeForImageData:", v25), v25, v24, v37, objc_autoreleasePoolPop(context), v22))
        {
          v26 = [[OADSubBlip alloc] initWithData:0 type:v22];
          v27 = [OAXBlipContext alloc];
          v28 = [(OCPPackagePart *)self->mPackagePart package];
          v29 = [(OCXDelayedMediaContext *)v27 initWithTargetLocation:v8 package:v28];

          v38 = v29;
          [(OCDDelayedNode *)v26 setDelayedContext:v29];
          v30 = [v11 data];
          -[OADSubBlip setSizeInBytes:](v26, "setSizeInBytes:", [v30 length]);

          v31 = objc_alloc_init(OADBlip);
          [(OADBlip *)v31 setMainSubBlip:v26];
          [v43 addObject:v31];
          *[(OADBlip *)v31 referenceCount]= 1;
          v32 = [v43 count] - 1;
          v33 = [MEMORY[0x277CCABB0] numberWithInt:v32];
          [v9 setObject:v33 forKey:v13];

          v19 = [OADBlipRef blipRefWithIndex:v32 name:v42 blip:0];
          v34 = [(OCPPackagePart *)self->mPackagePart package];
          [v34 resetPartForLocation:v8];

          v14 = v39;
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

- (id)blipRefForURL:(id)a3
{
  v4 = a3;
  v5 = [(OADBlipCollection *)self->mTgtBlipCollection blips];
  v6 = [(OAXDrawingState *)self blipRefWithURL:v4 blipArray:v5 blipURLtoIndexMap:self->mSrcURLToTgtBlipIndexMap];

  if (v6)
  {
    v7 = [v6 index];
    v8 = [v6 name];
    v9 = [OADBlipRef blipRefWithIndex:(v7 + 1) name:v8 blip:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bulletBlipRefForURL:(id)a3
{
  v3 = [(OAXDrawingState *)self blipRefWithURL:a3 blipArray:self->mTgtBulletBlips blipURLtoIndexMap:self->mSrcURLToTgtBulletBlipIndexMap];

  return v3;
}

- (void)setupNSForXMLFormat:(int)a3
{
  v35.receiver = self;
  v35.super_class = OAXDrawingState;
  [(OCXState *)&v35 setupNSForXMLFormat:?];
  v5 = [CXNamespace alloc];
  v6 = v5;
  if (a3)
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