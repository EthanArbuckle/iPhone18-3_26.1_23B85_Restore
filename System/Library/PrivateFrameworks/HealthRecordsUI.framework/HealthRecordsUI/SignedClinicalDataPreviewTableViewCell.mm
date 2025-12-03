@interface SignedClinicalDataPreviewTableViewCell
- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier presentationOptions:(int64_t)options;
@end

@implementation SignedClinicalDataPreviewTableViewCell

- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1D139016C();
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for SignedClinicalDataPreviewTableViewCell();
  v7 = [(HKObjectPickerTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6 presentationOptions:0];

  return v7;
}

- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier presentationOptions:(int64_t)options
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end