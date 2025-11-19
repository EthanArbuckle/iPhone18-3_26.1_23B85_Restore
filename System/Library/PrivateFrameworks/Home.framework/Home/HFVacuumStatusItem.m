@interface HFVacuumStatusItem
+ (NSSet)serviceTypes;
- (HFVacuumStatusItem)initWithHome:(id)a3 room:(id)a4 valueSource:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFVacuumStatusItem

+ (NSSet)serviceTypes
{
  v2 = sub_20DD651C4();

  return v2;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  if (a3)
  {
    sub_20DD64DC4();
  }

  v4 = self;
  updated = _sSo18HFVacuumStatusItemC4HomeE16_subclass_update7optionsSo8NAFutureCySo19HFItemUpdateOutcomeCGSgSDys11AnyHashableVypGSg_tF_0();

  return updated;
}

- (HFVacuumStatusItem)initWithHome:(id)a3 room:(id)a4 valueSource:(id)a5
{
  v6.receiver = self;
  v6.super_class = HFVacuumStatusItem;
  return [(HFStatusItem *)&v6 initWithHome:a3 room:a4 valueSource:a5];
}

@end