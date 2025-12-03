@interface HUGridCellBackgroundDisplayOptions
+ (id)defaultOptions;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUGridCellBackgroundDisplayOptions

+ (id)defaultOptions
{
  v2 = objc_alloc_init(HUGridCellBackgroundDisplayOptions);
  [(HUGridCellBackgroundDisplayOptions *)v2 setContentColorStyle:0];
  [(HUGridCellBackgroundDisplayOptions *)v2 setContentSizeCategory:*MEMORY[0x277D76860]];
  [(HUGridCellBackgroundDisplayOptions *)v2 setDisplayStyle:0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HUGridCellBackgroundDisplayOptions);
  [(HUGridCellBackgroundDisplayOptions *)v4 setContentColorStyle:[(HUGridCellBackgroundDisplayOptions *)self contentColorStyle]];
  contentSizeCategory = [(HUGridCellBackgroundDisplayOptions *)self contentSizeCategory];
  [(HUGridCellBackgroundDisplayOptions *)v4 setContentSizeCategory:contentSizeCategory];

  [(HUGridCellBackgroundDisplayOptions *)v4 setDisplayStyle:[(HUGridCellBackgroundDisplayOptions *)self displayStyle]];
  return v4;
}

@end