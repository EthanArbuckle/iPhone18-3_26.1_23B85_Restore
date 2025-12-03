@interface HKStateOfMindChartFormatter
- (HKStateOfMindChartFormatter)init;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)unitStringFromUnit:(id)unit number:(id)number;
@end

@implementation HKStateOfMindChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  selfCopy = self;
  sub_1C3CDD504(v6, context);

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v8 = sub_1C3D202A4();

  return v8;
}

- (id)unitStringFromUnit:(id)unit number:(id)number
{
  unitCopy = unit;
  numberCopy = number;
  selfCopy = self;
  sub_1C3CDF5CC(numberCopy);

  v9 = sub_1C3D200C4();

  return v9;
}

- (HKStateOfMindChartFormatter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StateOfMindChartFormatter();
  return [(HKStateOfMindChartFormatter *)&v3 init];
}

@end