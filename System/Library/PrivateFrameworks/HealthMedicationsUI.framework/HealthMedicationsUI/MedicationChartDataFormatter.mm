@interface MedicationChartDataFormatter
- (_TtC19HealthMedicationsUI28MedicationChartDataFormatter)init;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
@end

@implementation MedicationChartDataFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  sub_228239ADC();
  v6 = sub_2283921A0();
  v7 = self;
  sub_228238AF4(v6, a4);

  sub_22817A958(0, &qword_27D825B90, 0x277D12A38);
  v8 = sub_228392190();

  return v8;
}

- (_TtC19HealthMedicationsUI28MedicationChartDataFormatter)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MedicationChartDataFormatter();
  return [(MedicationChartDataFormatter *)&v3 init];
}

@end