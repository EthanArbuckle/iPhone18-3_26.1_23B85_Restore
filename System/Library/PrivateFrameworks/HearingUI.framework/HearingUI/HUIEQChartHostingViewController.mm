@interface HUIEQChartHostingViewController
+ (id)createWith:(id)with width:(double)width height:(double)height;
- (_TtC9HearingUI31HUIEQChartHostingViewController)init;
@end

@implementation HUIEQChartHostingViewController

+ (id)createWith:(id)with width:(double)width height:(double)height
{
  type metadata accessor for HUIEQChartModel();
  sub_2521A49D4(&qword_27F4D4390, type metadata accessor for HUIEQChartModel);
  withCopy = with;
  sub_2521A512C();
  v8 = v7;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4398));
  v9 = v8;
  v10 = sub_2521A535C();

  return v10;
}

- (_TtC9HearingUI31HUIEQChartHostingViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HUIEQChartHostingViewController();
  return [(HUIEQChartHostingViewController *)&v3 init];
}

@end