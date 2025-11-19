@interface HKOverlayContextSectionContainer
- (HKOverlayContextSectionContainer)initWithContainerTitle:(id)a3 overlayContextSections:(id)a4 primaryDisplayType:(id)a5;
@end

@implementation HKOverlayContextSectionContainer

- (HKOverlayContextSectionContainer)initWithContainerTitle:(id)a3 overlayContextSections:(id)a4 primaryDisplayType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKOverlayContextSectionContainer;
  v12 = [(HKOverlayContextSectionContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localizedContainerTitle, a3);
    objc_storeStrong(&v13->_overlayContextSections, a4);
    objc_storeStrong(&v13->_primaryDisplayType, a5);
  }

  return v13;
}

@end