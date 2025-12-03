@interface NTKCFaceDetailEnumeratedEditOptionCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailEnumeratedEditOptionCell)initWithEditOption:(id)option;
- (double)rowHeight;
- (void)setActive:(BOOL)active;
@end

@implementation NTKCFaceDetailEnumeratedEditOptionCell

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

- (NTKCFaceDetailEnumeratedEditOptionCell)initWithEditOption:(id)option
{
  optionCopy = option;
  v16.receiver = self;
  v16.super_class = NTKCFaceDetailEnumeratedEditOptionCell;
  v6 = [(NTKCDetailTableViewCell *)&v16 init];
  v7 = v6;
  if (v6)
  {
    [(NTKCFaceDetailEnumeratedEditOptionCell *)v6 setSelectionStyle:3];
    [(NTKCDetailTableViewCell *)v7 setShowsSeparator:1];
    v8 = NTKCActionColor();
    [(NTKCFaceDetailEnumeratedEditOptionCell *)v7 setTintColor:v8];

    objc_storeStrong(&v7->_editOption, option);
    localizedName = [(NTKEditOption *)v7->_editOption localizedName];
    textLabel = [(NTKCFaceDetailEnumeratedEditOptionCell *)v7 textLabel];
    [textLabel setText:localizedName];

    textLabel2 = [(NTKCFaceDetailEnumeratedEditOptionCell *)v7 textLabel];
    text = [textLabel2 text];
    v13 = [text isEqualToString:&stru_284110E98];
    textLabel3 = [(NTKCFaceDetailEnumeratedEditOptionCell *)v7 textLabel];
    [textLabel3 setHidden:v13];
  }

  return v7;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    [(NTKCFaceDetailEnumeratedEditOptionCell *)self setAccessoryType:v3];
  }
}

@end