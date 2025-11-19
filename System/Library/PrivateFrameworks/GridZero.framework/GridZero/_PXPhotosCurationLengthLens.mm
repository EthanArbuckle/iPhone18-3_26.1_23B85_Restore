@interface _PXPhotosCurationLengthLens
- (BOOL)allowsActionType:(id)a3;
- (_PXPhotosCurationLengthLens)initWithCurationLength:(int64_t)a3 isDefault:(BOOL)a4;
@end

@implementation _PXPhotosCurationLengthLens

- (BOOL)allowsActionType:(id)a3
{
  v3 = _PXPhotosViewLensAllowedActionsForCuratedLens_onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_PXPhotosViewLensAllowedActionsForCuratedLens_onceToken, &__block_literal_global_141);
  }

  v5 = [_PXPhotosViewLensAllowedActionsForCuratedLens_allowedActions containsObject:v4];

  return v5;
}

- (_PXPhotosCurationLengthLens)initWithCurationLength:(int64_t)a3 isDefault:(BOOL)a4
{
  if ((a3 - 1) >= 5)
  {
    if (!a3)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosViewLens.m" lineNumber:200 description:@"Creating a lens with undefined curation length is not supported."];

      abort();
    }
  }

  else
  {
    v7 = PXGridZeroBundle();
    v8 = [v7 localizedStringForKey:@"PXPhotosGridLensSummary" value:&stru_282C2F4D0 table:0];
    self = [(PXPhotosViewLens *)self initWithTitle:v8 symbolName:0 defaultSectionBodyStyle:3];
  }

  self->_curationLength = a3;
  self->_isDefaultCurationLength = a4;
  return self;
}

@end