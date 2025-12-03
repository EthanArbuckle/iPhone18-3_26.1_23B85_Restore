@interface HKSignedClinicalDataTableViewCell
- (HKSignedClinicalDataTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HKSignedClinicalDataTableViewCell

- (HKSignedClinicalDataTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HKSignedClinicalDataTableViewCell;
  v4 = [(HKObjectPickerTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier presentationOptions:3];
  v5 = v4;
  if (v4)
  {
    traitCollection = [(HKSignedClinicalDataTableViewCell *)v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != 6)
    {
      secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      [(HKSignedClinicalDataTableViewCell *)v5 setBackgroundColor:secondarySystemBackgroundColor];
    }
  }

  return v5;
}

@end