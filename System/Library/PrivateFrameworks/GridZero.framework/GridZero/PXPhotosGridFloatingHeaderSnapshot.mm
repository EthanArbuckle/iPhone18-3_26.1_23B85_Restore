@interface PXPhotosGridFloatingHeaderSnapshot
- (BOOL)floatingEnableOverview;
- (NSAttributedString)floatingSummarySubtitle;
- (NSAttributedString)floatingSummaryTitle;
- (PXPhotosGridFloatingHeaderSnapshot)initWithTitle:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle buttonActionType:(unint64_t)type assetCollectionReference:(id)reference;
@end

@implementation PXPhotosGridFloatingHeaderSnapshot

- (NSAttributedString)floatingSummarySubtitle
{
  subtitle = [(PXPhotosGridFloatingHeaderSnapshot *)self subtitle];
  v3 = subtitle;
  if (subtitle)
  {
    v4 = subtitle;
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
  title = [(PXPhotosGridFloatingHeaderSnapshot *)self title];
  v3 = title;
  if (title)
  {
    v4 = title;
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
  assetCollectionReference = [(PXPhotosGridFloatingHeaderSnapshot *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    buttonTitle = [(PXPhotosGridFloatingHeaderSnapshot *)self buttonTitle];
    v5 = [buttonTitle length] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXPhotosGridFloatingHeaderSnapshot)initWithTitle:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle buttonActionType:(unint64_t)type assetCollectionReference:(id)reference
{
  titleCopy = title;
  subtitleCopy = subtitle;
  buttonTitleCopy = buttonTitle;
  referenceCopy = reference;
  v24.receiver = self;
  v24.super_class = PXPhotosGridFloatingHeaderSnapshot;
  v16 = [(PXPhotosGridFloatingHeaderSnapshot *)&v24 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [subtitleCopy copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [buttonTitleCopy copy];
    buttonTitle = v16->_buttonTitle;
    v16->_buttonTitle = v21;

    v16->_buttonActionType = type;
    objc_storeStrong(&v16->_assetCollectionReference, reference);
  }

  return v16;
}

@end