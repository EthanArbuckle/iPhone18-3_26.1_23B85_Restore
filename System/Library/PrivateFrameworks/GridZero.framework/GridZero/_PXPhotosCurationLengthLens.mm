@interface _PXPhotosCurationLengthLens
- (BOOL)allowsActionType:(id)type;
- (_PXPhotosCurationLengthLens)initWithCurationLength:(int64_t)length isDefault:(BOOL)default;
@end

@implementation _PXPhotosCurationLengthLens

- (BOOL)allowsActionType:(id)type
{
  v3 = _PXPhotosViewLensAllowedActionsForCuratedLens_onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&_PXPhotosViewLensAllowedActionsForCuratedLens_onceToken, &__block_literal_global_141);
  }

  v5 = [_PXPhotosViewLensAllowedActionsForCuratedLens_allowedActions containsObject:typeCopy];

  return v5;
}

- (_PXPhotosCurationLengthLens)initWithCurationLength:(int64_t)length isDefault:(BOOL)default
{
  if ((length - 1) >= 5)
  {
    if (!length)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewLens.m" lineNumber:200 description:@"Creating a lens with undefined curation length is not supported."];

      abort();
    }
  }

  else
  {
    v7 = PXGridZeroBundle();
    v8 = [v7 localizedStringForKey:@"PXPhotosGridLensSummary" value:&stru_282C2F4D0 table:0];
    self = [(PXPhotosViewLens *)self initWithTitle:v8 symbolName:0 defaultSectionBodyStyle:3];
  }

  self->_curationLength = length;
  self->_isDefaultCurationLength = default;
  return self;
}

@end