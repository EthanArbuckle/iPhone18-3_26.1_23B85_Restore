@interface GCEventInteraction(UI)
+ (_GCUIEventInteraction)allocWithZone:()UI;
@end

@implementation GCEventInteraction(UI)

+ (_GCUIEventInteraction)allocWithZone:()UI
{
  if (objc_opt_class() == self)
  {

    return [(GCEventInteraction *)_GCUIEventInteraction allocWithZone:a3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___GCEventInteraction_0;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end