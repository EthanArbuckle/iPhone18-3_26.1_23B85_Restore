@interface _PXPhotosLayoutWithSectionHeadersSpec
- (_PXPhotosLayoutWithSectionHeadersSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options gridStyle:(int64_t)style backgroundStyle:(int64_t)backgroundStyle wantsToggleSidebarButton:(BOOL)button shouldMakeSpaceForLeadingChrome:(BOOL)chrome hasPhysicalHomeButton:(BOOL)homeButton dynamicHeaderHeight:(double)self0 overrideDefaultNumberOfColumns:(int64_t)self1;
@end

@implementation _PXPhotosLayoutWithSectionHeadersSpec

- (_PXPhotosLayoutWithSectionHeadersSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options gridStyle:(int64_t)style backgroundStyle:(int64_t)backgroundStyle wantsToggleSidebarButton:(BOOL)button shouldMakeSpaceForLeadingChrome:(BOOL)chrome hasPhysicalHomeButton:(BOOL)homeButton dynamicHeaderHeight:(double)self0 overrideDefaultNumberOfColumns:(int64_t)self1
{
  chromeCopy = chrome;
  buttonCopy = button;
  collectionCopy = collection;
  v24.receiver = self;
  v24.super_class = _PXPhotosLayoutWithSectionHeadersSpec;
  v19 = [(PXPhotosLayoutSpec *)&v24 initWithExtendedTraitCollection:collectionCopy options:options gridStyle:style backgroundStyle:backgroundStyle wantsToggleSidebarButton:buttonCopy shouldMakeSpaceForLeadingChrome:chromeCopy hasPhysicalHomeButton:height dynamicHeaderHeight:homeButton overrideDefaultNumberOfColumns:columns];
  if (v19)
  {
    v20 = [[PXPhotosSectionHeaderLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options];
    sectionHeaderSpec = v19->_sectionHeaderSpec;
    v19->_sectionHeaderSpec = v20;
  }

  return v19;
}

@end