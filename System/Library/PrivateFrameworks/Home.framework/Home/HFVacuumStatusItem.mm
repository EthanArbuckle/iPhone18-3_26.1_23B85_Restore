@interface HFVacuumStatusItem
+ (NSSet)serviceTypes;
- (HFVacuumStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFVacuumStatusItem

+ (NSSet)serviceTypes
{
  v2 = sub_20DD651C4();

  return v2;
}

- (id)_subclass_updateWithOptions:(id)options
{
  if (options)
  {
    sub_20DD64DC4();
  }

  selfCopy = self;
  updated = _sSo18HFVacuumStatusItemC4HomeE16_subclass_update7optionsSo8NAFutureCySo19HFItemUpdateOutcomeCGSgSDys11AnyHashableVypGSg_tF_0();

  return updated;
}

- (HFVacuumStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source
{
  v6.receiver = self;
  v6.super_class = HFVacuumStatusItem;
  return [(HFStatusItem *)&v6 initWithHome:home room:room valueSource:source];
}

@end