@interface EBOfficeArtReaderState
- (EBOfficeArtReaderState)initWithReaderState:(id)state;
- (EBReaderState)readerState;
- (id)xmlDrawingState;
@end

@implementation EBOfficeArtReaderState

- (EBOfficeArtReaderState)initWithReaderState:(id)state
{
  stateCopy = state;
  v5 = [(OABReaderState *)self initWithClient:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mReaderState, stateCopy);
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
    workbook = [WeakRetained workbook];

    [(EXReadState *)self->mXmlDocumentState setWorkbook:workbook];
    officeArtState = [(EXReadState *)self->mXmlDocumentState officeArtState];
    [officeArtState clearTargetBlipCollection];

    officeArtState2 = [(EXReadState *)self->mXmlDocumentState officeArtState];
    v10 = +[EDWorkbook impliedColorMap];
    [OABDrawable setUpXmlDrawingState:officeArtState2 withBinaryReaderState:self targetDocument:workbook colorMap:v10];

    mXmlDocumentState = self->mXmlDocumentState;
  }

  return [(EXReadState *)mXmlDocumentState officeArtState];
}

@end