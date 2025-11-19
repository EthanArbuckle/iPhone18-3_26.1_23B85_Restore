@interface _PXPhotosLayoutWithSectionHeadersSpec
- (_PXPhotosLayoutWithSectionHeadersSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 gridStyle:(int64_t)a5 backgroundStyle:(int64_t)a6 wantsToggleSidebarButton:(BOOL)a7 shouldMakeSpaceForLeadingChrome:(BOOL)a8 hasPhysicalHomeButton:(BOOL)a9 dynamicHeaderHeight:(double)a10 overrideDefaultNumberOfColumns:(int64_t)a11;
@end

@implementation _PXPhotosLayoutWithSectionHeadersSpec

- (_PXPhotosLayoutWithSectionHeadersSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 gridStyle:(int64_t)a5 backgroundStyle:(int64_t)a6 wantsToggleSidebarButton:(BOOL)a7 shouldMakeSpaceForLeadingChrome:(BOOL)a8 hasPhysicalHomeButton:(BOOL)a9 dynamicHeaderHeight:(double)a10 overrideDefaultNumberOfColumns:(int64_t)a11
{
  v12 = a8;
  v13 = a7;
  v18 = a3;
  v24.receiver = self;
  v24.super_class = _PXPhotosLayoutWithSectionHeadersSpec;
  v19 = [(PXPhotosLayoutSpec *)&v24 initWithExtendedTraitCollection:v18 options:a4 gridStyle:a5 backgroundStyle:a6 wantsToggleSidebarButton:v13 shouldMakeSpaceForLeadingChrome:v12 hasPhysicalHomeButton:a10 dynamicHeaderHeight:a9 overrideDefaultNumberOfColumns:a11];
  if (v19)
  {
    v20 = [[PXPhotosSectionHeaderLayoutSpec alloc] initWithExtendedTraitCollection:v18 options:a4];
    sectionHeaderSpec = v19->_sectionHeaderSpec;
    v19->_sectionHeaderSpec = v20;
  }

  return v19;
}

@end