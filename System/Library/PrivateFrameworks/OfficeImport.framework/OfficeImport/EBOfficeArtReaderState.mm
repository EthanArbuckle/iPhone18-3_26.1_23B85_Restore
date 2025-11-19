@interface EBOfficeArtReaderState
- (EBOfficeArtReaderState)initWithReaderState:(id)a3;
- (EBReaderState)readerState;
- (id)xmlDrawingState;
@end

@implementation EBOfficeArtReaderState

- (EBOfficeArtReaderState)initWithReaderState:(id)a3
{
  v4 = a3;
  v5 = [(OABReaderState *)self initWithClient:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mReaderState, v4);
  }

  return v6;
}

- (EBReaderState)readerState
{
  WeakRetained = objc_loadWeakRetained(&self->mReaderState);

  return WeakRetained;
}

- (id)xmlDrawingState
{
  mXmlDocumentState = self->mXmlDocumentState;
  if (!mXmlDocumentState)
  {
    v4 = [[EXReadState alloc] initWithWorkbookPart:0 cancelDelegate:0];
    v5 = self->mXmlDocumentState;
    self->mXmlDocumentState = v4;

    WeakRetained = objc_loadWeakRetained(&self->mReaderState);
    v7 = [WeakRetained workbook];

    [(EXReadState *)self->mXmlDocumentState setWorkbook:v7];
    v8 = [(EXReadState *)self->mXmlDocumentState officeArtState];
    [v8 clearTargetBlipCollection];

    v9 = [(EXReadState *)self->mXmlDocumentState officeArtState];
    v10 = +[EDWorkbook impliedColorMap];
    [OABDrawable setUpXmlDrawingState:v9 withBinaryReaderState:self targetDocument:v7 colorMap:v10];

    mXmlDocumentState = self->mXmlDocumentState;
  }

  return [(EXReadState *)mXmlDocumentState officeArtState];
}

@end