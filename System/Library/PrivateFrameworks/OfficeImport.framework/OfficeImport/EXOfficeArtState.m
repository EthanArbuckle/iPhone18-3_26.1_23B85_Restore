@interface EXOfficeArtState
- (EXOfficeArtState)initWithExcelState:(id)a3;
- (EXReadState)excelState;
@end

@implementation EXOfficeArtState

- (EXReadState)excelState
{
  WeakRetained = objc_loadWeakRetained(&self->mExcelState);

  return WeakRetained;
}

- (EXOfficeArtState)initWithExcelState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(EXOfficeArtClient);
  v14.receiver = self;
  v14.super_class = EXOfficeArtState;
  v6 = [(OAXDrawingState *)&v14 initWithClient:v5];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->mExcelState, v4);
    mXMLFormat = v7->super.super.super.mXMLFormat;
    v10 = v8;
    v11 = [v4 xmlFormat];

    if (mXMLFormat != v11)
    {
      WeakRetained = objc_loadWeakRetained(&v7->mExcelState);
      -[OAXDrawingState setupNSForXMLFormat:](v7, "setupNSForXMLFormat:", [WeakRetained xmlFormat]);
    }
  }

  return v7;
}

@end