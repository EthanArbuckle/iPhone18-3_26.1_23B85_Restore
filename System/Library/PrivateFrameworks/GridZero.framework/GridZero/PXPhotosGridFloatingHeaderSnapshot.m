@interface PXPhotosGridFloatingHeaderSnapshot
- (BOOL)floatingEnableOverview;
- (NSAttributedString)floatingSummarySubtitle;
- (NSAttributedString)floatingSummaryTitle;
- (PXPhotosGridFloatingHeaderSnapshot)initWithTitle:(id)a3 subtitle:(id)a4 buttonTitle:(id)a5 buttonActionType:(unint64_t)a6 assetCollectionReference:(id)a7;
@end

@implementation PXPhotosGridFloatingHeaderSnapshot

- (NSAttributedString)floatingSummarySubtitle
{
  v2 = [(PXPhotosGridFloatingHeaderSnapshot *)self subtitle];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_282C2F4D0];
  }

  v5 = v4;

  return v5;
}

- (NSAttributedString)floatingSummaryTitle
{
  v2 = [(PXPhotosGridFloatingHeaderSnapshot *)self title];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_282C2F4D0];
  }

  v5 = v4;

  return v5;
}

- (BOOL)floatingEnableOverview
{
  v3 = [(PXPhotosGridFloatingHeaderSnapshot *)self assetCollectionReference];
  if (v3)
  {
    v4 = [(PXPhotosGridFloatingHeaderSnapshot *)self buttonTitle];
    v5 = [v4 length] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXPhotosGridFloatingHeaderSnapshot)initWithTitle:(id)a3 subtitle:(id)a4 buttonTitle:(id)a5 buttonActionType:(unint64_t)a6 assetCollectionReference:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = PXPhotosGridFloatingHeaderSnapshot;
  v16 = [(PXPhotosGridFloatingHeaderSnapshot *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [v13 copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [v14 copy];
    buttonTitle = v16->_buttonTitle;
    v16->_buttonTitle = v21;

    v16->_buttonActionType = a6;
    objc_storeStrong(&v16->_assetCollectionReference, a7);
  }

  return v16;
}

@end