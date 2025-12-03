@interface HUQuickControlCollectionViewControllerLayoutOptions
+ (id)defaultOptionsForViewSize:(CGSize)size;
- (CGSize)viewSize;
- (HUQuickControlCollectionViewControllerLayoutOptions)initWithViewSize:(CGSize)size;
- (int64_t)viewSizeSubclass;
@end

@implementation HUQuickControlCollectionViewControllerLayoutOptions

+ (id)defaultOptionsForViewSize:(CGSize)size
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [[HUQuickControlCollectionViewControllerLayoutOptions alloc] initWithViewSize:size.width, size.height];
  viewSizeSubclass = [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 viewSizeSubclass];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setPreferredLayoutStyle:1];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setRowSpacing:33.0];
  v16[0] = &unk_282491808;
  v16[1] = &unk_282491820;
  v17[0] = &unk_282493430;
  v17[1] = &unk_282493440;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setMinimumSectionSpacing:HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v5)];

  v14[0] = &unk_282491808;
  v14[1] = &unk_282491820;
  v15[0] = &unk_282493450;
  v15[1] = &unk_282493460;
  v14[2] = &unk_282491838;
  v15[2] = &unk_282493470;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setMinimumNavBarToControlsSpacing:HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v6)];

  v12[0] = &unk_282491808;
  v12[1] = &unk_282491820;
  v13[0] = &unk_282493480;
  v13[1] = &unk_282493490;
  v12[2] = &unk_282491838;
  v13[2] = &unk_2824934A0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setMinimumSectionToSensorSectionSpacing:HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v7)];

  v10[0] = &unk_282491808;
  v10[1] = &unk_282491820;
  v11[0] = &unk_2824934B0;
  v11[1] = &unk_2824934C0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setThermostatSectionSpacingOverride:HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v8)];

  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setInteritemSpacingForExtraSmallControlSize:31.0];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setInteritemSpacingForSmallControlSize:31.0];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setInteritemSpacingForRegularControlSize:31.0];
  [(HUQuickControlCollectionViewControllerLayoutOptions *)v3 setInteritemSpacingForLargeControlSize:31.0];

  return v3;
}

- (HUQuickControlCollectionViewControllerLayoutOptions)initWithViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = HUQuickControlCollectionViewControllerLayoutOptions;
  result = [(HUQuickControlCollectionViewControllerLayoutOptions *)&v6 init];
  if (result)
  {
    result->_viewSize.width = width;
    result->_viewSize.height = height;
  }

  return result;
}

- (int64_t)viewSizeSubclass
{
  [(HUQuickControlCollectionViewControllerLayoutOptions *)self viewSize];

  return HUViewSizeSubclassForViewSize(v2, v3);
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end