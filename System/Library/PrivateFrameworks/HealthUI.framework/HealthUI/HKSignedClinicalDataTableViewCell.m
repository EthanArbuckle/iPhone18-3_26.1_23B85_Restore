@interface HKSignedClinicalDataTableViewCell
- (HKSignedClinicalDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HKSignedClinicalDataTableViewCell

- (HKSignedClinicalDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = HKSignedClinicalDataTableViewCell;
  v4 = [(HKObjectPickerTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4 presentationOptions:3];
  v5 = v4;
  if (v4)
  {
    v6 = [(HKSignedClinicalDataTableViewCell *)v4 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 6)
    {
      v8 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      [(HKSignedClinicalDataTableViewCell *)v5 setBackgroundColor:v8];
    }
  }

  return v5;
}

@end