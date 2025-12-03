@interface HUGridCameraCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUGridCameraCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___HUGridCameraCellLayoutOptions;
  v4 = objc_msgSendSuper2(&v9, sel_defaultOptionsForCellSizeSubclass_);
  v10[0] = &unk_282492288;
  v10[1] = &unk_282492270;
  v11[0] = &unk_282493660;
  v11[1] = &unk_282493680;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = HUConstantForCellSizeSubclass(subclass, v5);

  v7 = [MEMORY[0x277D74300] systemFontOfSize:v6 weight:*MEMORY[0x277D743F8]];
  [v4 setFont:v7];

  [v4 setHeaderViewHeight:36.0];
  [v4 setCameraViewAspectRatio:1.77777778];
  [v4 setHeaderHorizontalInnerMargins:10.0];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HUGridCameraCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v6 copyWithZone:zone];
  [(HUGridCameraCellLayoutOptions *)self headerViewHeight];
  [v4 setHeaderViewHeight:?];
  [(HUGridCameraCellLayoutOptions *)self cameraViewAspectRatio];
  [v4 setCameraViewAspectRatio:?];
  [(HUGridCameraCellLayoutOptions *)self headerHorizontalInnerMargins];
  [v4 setHeaderHorizontalInnerMargins:?];
  [(HUGridCameraCellLayoutOptions *)self cellHeight];
  [v4 setCellHeight:?];
  return v4;
}

@end