@interface NTKCFaceDetailEnumeratedEditOptionCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailEnumeratedEditOptionCell)initWithEditOption:(id)a3;
- (double)rowHeight;
- (void)setActive:(BOOL)a3;
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

- (NTKCFaceDetailEnumeratedEditOptionCell)initWithEditOption:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_editOption, a3);
    v9 = [(NTKEditOption *)v7->_editOption localizedName];
    v10 = [(NTKCFaceDetailEnumeratedEditOptionCell *)v7 textLabel];
    [v10 setText:v9];

    v11 = [(NTKCFaceDetailEnumeratedEditOptionCell *)v7 textLabel];
    v12 = [v11 text];
    v13 = [v12 isEqualToString:&stru_284110E98];
    v14 = [(NTKCFaceDetailEnumeratedEditOptionCell *)v7 textLabel];
    [v14 setHidden:v13];
  }

  return v7;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
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