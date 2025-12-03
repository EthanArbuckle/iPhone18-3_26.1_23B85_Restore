@interface PBOfficeArtReaderState
- (PBOfficeArtReaderState)initWithPresentationState:(id)state;
- (PBPresentationReaderState)presentationState;
- (id)drawableOnTgtSlideForShapeId:(int)id;
- (id)xmlDocumentState;
- (id)xmlDrawingState;
@end

@implementation PBOfficeArtReaderState

- (PBPresentationReaderState)presentationState
{
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);

  return WeakRetained;
}

- (PBOfficeArtReaderState)initWithPresentationState:(id)state
{
  stateCopy = state;
  v5 = [(OABReaderState *)self initWithClient:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mPresentationState, stateCopy);
  }

  return v6;
}

- (id)xmlDrawingState
{
  mXmlDocumentState = self->mXmlDocumentState;
  if (!mXmlDocumentState)
  {
    WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
    tgtPresentation = [WeakRetained tgtPresentation];

    v6 = objc_alloc_init(PXPresentationState);
    v7 = self->mXmlDocumentState;
    self->mXmlDocumentState = v6;

    officeArtState = [(PXPresentationState *)self->mXmlDocumentState officeArtState];
    [OABDrawable setUpXmlDrawingState:officeArtState withBinaryReaderState:self targetDocument:tgtPresentation colorMap:0];

    mXmlDocumentState = self->mXmlDocumentState;
  }

  return [(PXPresentationState *)mXmlDocumentState officeArtState];
}

- (id)xmlDocumentState
{
  xmlDrawingState = [(PBOfficeArtReaderState *)self xmlDrawingState];
  client = [xmlDrawingState client];
  presentationState = [client presentationState];

  return presentationState;
}

- (id)drawableOnTgtSlideForShapeId:(int)id
{
  v4 = [(OABReaderState *)self drawableForShapeId:*&id];
  if (v4)
  {
    presentationState = [(PBOfficeArtReaderState *)self presentationState];
    tgtSlide = [presentationState tgtSlide];

    if (tgtSlide)
    {
      while (1)
      {
        drawables = [tgtSlide drawables];
        v8 = [drawables containsObject:v4];

        if (v8)
        {
          break;
        }

        parentSlideBase = [tgtSlide parentSlideBase];

        tgtSlide = parentSlideBase;
        if (!parentSlideBase)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      tgtSlide = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end