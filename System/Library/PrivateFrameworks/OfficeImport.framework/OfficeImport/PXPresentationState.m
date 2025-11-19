@interface PXPresentationState
- (PXPresentationState)init;
- (id)modelObjectForLocation:(id)a3;
- (int64_t)slideIndexForSlideURL:(id)a3;
- (void)resetOfficeArtState;
- (void)setModelObject:(id)a3 forLocation:(id)a4;
- (void)setSlideIndex:(int64_t)a3 forSlideURL:(id)a4;
- (void)setTgtPresentation:(id)a3;
- (void)setupNSForXMLFormat:(int)a3;
@end

@implementation PXPresentationState

- (PXPresentationState)init
{
  v17.receiver = self;
  v17.super_class = PXPresentationState;
  v2 = [(OCXState *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mModelObjects = v2->mModelObjects;
    v2->mModelObjects = v3;

    v5 = [[PXOfficeArtClient alloc] initWithState:v2];
    v6 = [[OAXDrawingState alloc] initWithClient:v5];
    mOfficeArtState = v2->mOfficeArtState;
    v2->mOfficeArtState = v6;

    v8 = [(OAVReadState *)[PXVmlState alloc] initWithClient:objc_opt_class() packagePart:0];
    mOAVState = v2->mOAVState;
    v2->mOAVState = &v8->super;

    [(OAXDrawingState *)v2->mOfficeArtState setDocumentState:v2];
    [(OAXDrawingState *)v2->mOfficeArtState setOavState:v2->mOAVState];
    [(OAVReadState *)v2->mOAVState setOaxState:v2->mOfficeArtState];
    v10 = objc_alloc_init(OAXTableStyleCache);
    mTableStyleCache = v2->mTableStyleCache;
    v2->mTableStyleCache = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mSlideURLToIndexMap = v2->mSlideURLToIndexMap;
    v2->mSlideURLToIndexMap = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mCommentAuthorIdToIndexMap = v2->mCommentAuthorIdToIndexMap;
    v2->mCommentAuthorIdToIndexMap = v14;

    [PXPresentationState setPptChartGraphicPropertyDefaultBlock:v2->mOfficeArtState];
  }

  return v2;
}

- (void)resetOfficeArtState
{
  v13 = [(OAXDrawingState *)self->mOfficeArtState styleMatrix];
  v3 = [(OAXDrawingState *)self->mOfficeArtState sourceURLToTargetBlipIndexMap];
  v4 = [(OAXDrawingState *)self->mOfficeArtState sourceURLToTargetBulletBlipIndexMap];
  mOfficeArtState = self->mOfficeArtState;
  self->mOfficeArtState = 0;

  v6 = [[PXOfficeArtClient alloc] initWithState:self];
  v7 = [[OAXDrawingState alloc] initWithClient:v6];
  v8 = self->mOfficeArtState;
  self->mOfficeArtState = v7;

  [(OAXDrawingState *)self->mOfficeArtState setDocumentState:self];
  [(OAXDrawingState *)self->mOfficeArtState setOavState:self->mOAVState];
  [(OAVReadState *)self->mOAVState setOaxState:self->mOfficeArtState];
  v9 = self->mOfficeArtState;
  v10 = [(OCDDocument *)self->mTgtPresentation blips];
  [(OAXDrawingState *)v9 setTargetBlipCollection:v10];

  v11 = self->mOfficeArtState;
  v12 = [(PDPresentation *)self->mTgtPresentation bulletBlips];
  [(OAXDrawingState *)v11 setTargetBulletBlipArray:v12];

  [(OAXDrawingState *)self->mOfficeArtState setStyleMatrix:v13];
  [(OAXDrawingState *)self->mOfficeArtState setSourceURLToTargetBlipIndexMap:v3];
  [(OAXDrawingState *)self->mOfficeArtState setSourceURLToTargetBulletBlipIndexMap:v4];
  [PXPresentationState setPptChartGraphicPropertyDefaultBlock:self->mOfficeArtState];
}

id __62__PXPresentationState_setPptChartGraphicPropertyDefaultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = TSUDynamicCast(v10, v9);
        if ([v11 isEqualToString:{@"AutomaticChartMarkerSize", v17}] && objc_msgSend(v4, "hasStroke"))
        {
          v13 = MEMORY[0x277CCABB0];
          v14 = [v4 stroke];
          [v14 width];
          v12 = [v13 numberWithDouble:floor(v15 * 2.0 + 3.0)];

          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)modelObjectForLocation:(id)a3
{
  mModelObjects = self->mModelObjects;
  v4 = [a3 absoluteURL];
  v5 = [(NSMutableDictionary *)mModelObjects objectForKey:v4];

  return v5;
}

- (void)setModelObject:(id)a3 forLocation:(id)a4
{
  v8 = a3;
  mModelObjects = self->mModelObjects;
  v7 = [a4 absoluteURL];
  [(NSMutableDictionary *)mModelObjects setObject:v8 forKey:v7];
}

- (int64_t)slideIndexForSlideURL:(id)a3
{
  mSlideURLToIndexMap = self->mSlideURLToIndexMap;
  v4 = [a3 absoluteURL];
  v5 = [(NSMutableDictionary *)mSlideURLToIndexMap objectForKey:v4];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)setSlideIndex:(int64_t)a3 forSlideURL:(id)a4
{
  v9 = a4;
  mSlideURLToIndexMap = self->mSlideURLToIndexMap;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [v9 absoluteURL];
  [(NSMutableDictionary *)mSlideURLToIndexMap setObject:v7 forKey:v8];
}

- (void)setTgtPresentation:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->mTgtPresentation, a3);
  mOfficeArtState = self->mOfficeArtState;
  v6 = [v9 blips];
  [(OAXDrawingState *)mOfficeArtState setTargetBlipCollection:v6];

  v7 = self->mOfficeArtState;
  v8 = [v9 bulletBlips];
  [(OAXDrawingState *)v7 setTargetBulletBlipArray:v8];
}

- (void)setupNSForXMLFormat:(int)a3
{
  v3 = *&a3;
  v9.receiver = self;
  v9.super_class = PXPresentationState;
  [(OCXState *)&v9 setupNSForXMLFormat:?];
  v5 = [CXNamespace alloc];
  v6 = v5;
  if (v3)
  {
    v7 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/presentationml/2006/main"];
    v8 = [(CXNamespace *)v6 initWithUri:"http://purl.oclc.org/ooxml/presentationml/main" fallbackNamespace:v7];
    [(PXPresentationState *)self setPXPresentationMLNamespace:v8];
  }

  else
  {
    v7 = [(CXNamespace *)v5 initWithUri:"http://schemas.openxmlformats.org/presentationml/2006/main"];
    [(PXPresentationState *)self setPXPresentationMLNamespace:v7];
  }

  [(OAXDrawingState *)self->mOfficeArtState setupNSForXMLFormat:v3];
  [(OCXState *)self->mOAVState setupNSForXMLFormat:v3];
}

@end