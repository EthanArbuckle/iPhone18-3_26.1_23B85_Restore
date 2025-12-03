@interface HKOverlayContextSectionContainer
- (HKOverlayContextSectionContainer)initWithContainerTitle:(id)title overlayContextSections:(id)sections primaryDisplayType:(id)type;
@end

@implementation HKOverlayContextSectionContainer

- (HKOverlayContextSectionContainer)initWithContainerTitle:(id)title overlayContextSections:(id)sections primaryDisplayType:(id)type
{
  titleCopy = title;
  sectionsCopy = sections;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = HKOverlayContextSectionContainer;
  v12 = [(HKOverlayContextSectionContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localizedContainerTitle, title);
    objc_storeStrong(&v13->_overlayContextSections, sections);
    objc_storeStrong(&v13->_primaryDisplayType, type);
  }

  return v13;
}

@end