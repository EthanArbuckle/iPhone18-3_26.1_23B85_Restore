@interface NTKWhatsNewFacesGalleryCollectionExcludingRestricted
- (id)facesForDevice:(id)a3;
@end

@implementation NTKWhatsNewFacesGalleryCollectionExcludingRestricted

- (id)facesForDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKWhatsNewFacesGalleryCollectionExcludingRestricted;
  v3 = [(NTKWhatsNewFacesGalleryCollection *)&v7 facesForDevice:a3];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_43];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

@end