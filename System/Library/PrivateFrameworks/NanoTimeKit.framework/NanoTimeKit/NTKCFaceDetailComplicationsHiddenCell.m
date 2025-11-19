@interface NTKCFaceDetailComplicationsHiddenCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailComplicationsHiddenCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)rowHeight;
@end

@implementation NTKCFaceDetailComplicationsHiddenCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailComplicationsHiddenCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailComplicationsHiddenCell;
  v4 = [(NTKCDetailTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(NTKCFaceDetailComplicationsHiddenCell *)v4 textLabel];
    [v6 setNumberOfLines:0];

    v7 = BPSDetailTextColor();
    v8 = [(NTKCFaceDetailComplicationsHiddenCell *)v5 textLabel];
    [v8 setTextColor:v7];

    v9 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_COMPLICATIONS_HIDDEN_TEXT_COMPANION", @"hidden complications");
    v10 = [(NTKCFaceDetailComplicationsHiddenCell *)v5 textLabel];
    [v10 setText:v9];
  }

  return v5;
}

- (double)rowHeight
{
  [(NTKCFaceDetailComplicationsHiddenCell *)self layoutIfNeeded];
  v3 = [(NTKCFaceDetailComplicationsHiddenCell *)self textLabel];
  [v3 _lastLineBaseline];
  v5 = v4;
  v6 = [(NTKCFaceDetailComplicationsHiddenCell *)self textLabel];
  v7 = [v6 font];
  [v7 _scaledValueForValue:16.0];
  v9 = v5 + v8;

  return v9;
}

@end