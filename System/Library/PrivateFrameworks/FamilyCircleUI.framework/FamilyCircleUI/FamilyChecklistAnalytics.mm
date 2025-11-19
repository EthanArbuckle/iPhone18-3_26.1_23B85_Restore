@interface FamilyChecklistAnalytics
+ (_TtC14FamilyCircleUI24FamilyChecklistAnalytics)shared;
- (_TtC14FamilyCircleUI24FamilyChecklistAnalytics)init;
@end

@implementation FamilyChecklistAnalytics

+ (_TtC14FamilyCircleUI24FamilyChecklistAnalytics)shared
{
  if (qword_27CDB5008 != -1)
  {
    swift_once();
  }

  v3 = qword_27CDBDB90;

  return v3;
}

- (_TtC14FamilyCircleUI24FamilyChecklistAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FamilyChecklistAnalytics();
  return [(FamilyChecklistAnalytics *)&v3 init];
}

@end