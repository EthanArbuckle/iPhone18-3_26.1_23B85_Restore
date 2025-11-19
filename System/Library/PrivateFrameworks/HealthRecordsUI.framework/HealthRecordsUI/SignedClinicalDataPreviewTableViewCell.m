@interface SignedClinicalDataPreviewTableViewCell
- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 presentationOptions:(int64_t)a5;
@end

@implementation SignedClinicalDataPreviewTableViewCell

- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(HKObjectPickerTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6 presentationOptions:0];

  return v7;
}

- (_TtC15HealthRecordsUI38SignedClinicalDataPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 presentationOptions:(int64_t)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end