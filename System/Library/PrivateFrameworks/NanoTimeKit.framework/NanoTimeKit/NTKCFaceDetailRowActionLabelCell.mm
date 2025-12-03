@interface NTKCFaceDetailRowActionLabelCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailRowActionLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)rowHeight;
@end

@implementation NTKCFaceDetailRowActionLabelCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (double)rowHeight
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v2 _scaledValueForValue:44.0];
  v4 = v3;

  return v4;
}

- (NTKCFaceDetailRowActionLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKCFaceDetailRowActionLabelCell;
  v4 = [(NTKCFaceDetailRowActionCell *)&v9 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(NTKCFaceDetailRowActionLabelCell *)v4 textLabel];
    v7 = NTKCActionColor();
    [textLabel setTextColor:v7];
  }

  return v5;
}

@end