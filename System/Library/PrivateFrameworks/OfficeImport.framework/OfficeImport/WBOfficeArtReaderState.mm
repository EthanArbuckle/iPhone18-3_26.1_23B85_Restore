@interface WBOfficeArtReaderState
- (WBOfficeArtReaderState)initWithClient:(Class)client;
- (WBReader)reader;
- (id)xmlDrawingState;
@end

@implementation WBOfficeArtReaderState

- (WBReader)reader
{
  WeakRetained = objc_loadWeakRetained(&self->mReader);

  return WeakRetained;
}

- (WBOfficeArtReaderState)initWithClient:(Class)client
{
  v4.receiver = self;
  v4.super_class = WBOfficeArtReaderState;
  result = [(OABReaderState *)&v4 initWithClient:client];
  if (result)
  {
    result->mCurrentTextType = -1;
  }

  return result;
}

- (id)xmlDrawingState
{
  mXmlDocumentState = self->mXmlDocumentState;
  if (!mXmlDocumentState)
  {
    WeakRetained = objc_loadWeakRetained(&self->mReader);
    targetDocument = [WeakRetained targetDocument];

    v6 = objc_alloc_init(WXReadState);
    v7 = self->mXmlDocumentState;
    self->mXmlDocumentState = v6;

    drawingState = [(WXReadState *)self->mXmlDocumentState drawingState];
    colorMap = [targetDocument colorMap];
    [OABDrawable setUpXmlDrawingState:drawingState withBinaryReaderState:self targetDocument:targetDocument colorMap:colorMap];

    mXmlDocumentState = self->mXmlDocumentState;
  }

  return [(WXReadState *)mXmlDocumentState drawingState];
}

@end