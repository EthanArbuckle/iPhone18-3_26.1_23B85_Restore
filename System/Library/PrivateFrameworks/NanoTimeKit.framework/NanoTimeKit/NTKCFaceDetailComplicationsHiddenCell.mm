@interface NTKCFaceDetailComplicationsHiddenCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailComplicationsHiddenCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)rowHeight;
@end

@implementation NTKCFaceDetailComplicationsHiddenCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailComplicationsHiddenCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailComplicationsHiddenCell;
  v4 = [(NTKCDetailTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(NTKCFaceDetailComplicationsHiddenCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    v7 = BPSDetailTextColor();
    textLabel2 = [(NTKCFaceDetailComplicationsHiddenCell *)v5 textLabel];
    [textLabel2 setTextColor:v7];

    v9 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_COMPLICATIONS_HIDDEN_TEXT_COMPANION", @"hidden complications");
    textLabel3 = [(NTKCFaceDetailComplicationsHiddenCell *)v5 textLabel];
    [textLabel3 setText:v9];
  }

  return v5;
}

- (double)rowHeight
{
  [(NTKCFaceDetailComplicationsHiddenCell *)self layoutIfNeeded];
  textLabel = [(NTKCFaceDetailComplicationsHiddenCell *)self textLabel];
  [textLabel _lastLineBaseline];
  v5 = v4;
  textLabel2 = [(NTKCFaceDetailComplicationsHiddenCell *)self textLabel];
  font = [textLabel2 font];
  [font _scaledValueForValue:16.0];
  v9 = v5 + v8;

  return v9;
}

@end