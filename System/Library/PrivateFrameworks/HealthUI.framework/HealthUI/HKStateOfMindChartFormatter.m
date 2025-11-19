@interface HKStateOfMindChartFormatter
- (HKStateOfMindChartFormatter)init;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (id)unitStringFromUnit:(id)a3 number:(id)a4;
@end

@implementation HKStateOfMindChartFormatter

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  sub_1C3C82884();
  v6 = sub_1C3D202B4();
  v7 = self;
  sub_1C3CDD504(v6, a4);

  sub_1C3C27CB4(0, &qword_1EC0866B0);
  v8 = sub_1C3D202A4();

  return v8;
}

- (id)unitStringFromUnit:(id)a3 number:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C3CDF5CC(v7);

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