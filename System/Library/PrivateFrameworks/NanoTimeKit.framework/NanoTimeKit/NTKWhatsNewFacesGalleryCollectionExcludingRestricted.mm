@interface NTKWhatsNewFacesGalleryCollectionExcludingRestricted
- (id)facesForDevice:(id)device;
@end

@implementation NTKWhatsNewFacesGalleryCollectionExcludingRestricted

- (id)facesForDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = NTKWhatsNewFacesGalleryCollectionExcludingRestricted;
  v3 = [(NTKWhatsNewFacesGalleryCollection *)&v7 facesForDevice:device];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_43];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

@end