@interface WBOfficeArtReaderState
- (WBOfficeArtReaderState)initWithClient:(Class)a3;
- (WBReader)reader;
- (id)xmlDrawingState;
@end

@implementation WBOfficeArtReaderState

- (WBReader)reader
{
  WeakRetained = objc_loadWeakRetained(&self->mReader);

  return WeakRetained;
}

- (WBOfficeArtReaderState)initWithClient:(Class)a3
{
  v4.receiver = self;
  v4.super_class = WBOfficeArtReaderState;
  result = [(OABReaderState *)&v4 initWithClient:a3];
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
    v5 = [WeakRetained targetDocument];

    v6 = objc_alloc_init(WXReadState);
    v7 = self->mXmlDocumentState;
    self->mXmlDocumentState = v6;

    v8 = [(WXReadState *)self->mXmlDocumentState drawingState];
    v9 = [v5 colorMap];
    [OABDrawable setUpXmlDrawingState:v8 withBinaryReaderState:self targetDocument:v5 colorMap:v9];

    mXmlDocumentState = self->mXmlDocumentState;
  }

  return [(WXReadState *)mXmlDocumentState drawingState];
}

@end