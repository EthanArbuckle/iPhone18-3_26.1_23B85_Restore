@interface MedicationsRecordDoseCollectionViewCell
- (_TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didTapAccessory;
@end

@implementation MedicationsRecordDoseCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  v9 = self;
  sub_228209FCC();

  (*(v5 + 8))(v8, v4);
}

- (void)didTapAccessory
{
  v2 = self;
  sub_22820C5A4();
}

- (_TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton;
  *(&self->super.super.super.super.super.super.isa + v8) = sub_228209020();
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell____lazy_storage___plusAccessory;
  v10 = sub_2283912F0();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v11 = self + OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  v12 = type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v12;
  return [(MedicationsRecordDoseCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton;
  v5 = a3;
  *(&self->super.super.super.super.super.super.isa + v4) = sub_228209020();
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell____lazy_storage___plusAccessory;
  v7 = sub_2283912F0();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  v9 = type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(MedicationsRecordDoseCollectionViewCell *)&v12 initWithCoder:v5];

  if (v10)
  {
  }

  return v10;
}

@end