@interface DTSysmonTapSupportedAttributes
+ (id)localCoalitionAttributes;
+ (id)localCoalitionAttributesMap;
+ (id)localProcessAttributes;
+ (id)localProcessAttributesMap;
+ (id)localSystemAttributes;
+ (id)localSystemAttributesMap;
@end

@implementation DTSysmonTapSupportedAttributes

+ (id)localProcessAttributes
{
  if (qword_27EE84398 != -1)
  {
    sub_24802F824();
  }

  v3 = qword_27EE84390;

  return v3;
}

+ (id)localSystemAttributes
{
  if (qword_27EE843A8 != -1)
  {
    sub_24802F838();
  }

  v3 = qword_27EE843A0;

  return v3;
}

+ (id)localCoalitionAttributes
{
  if (qword_27EE843B8 != -1)
  {
    sub_24802F84C();
  }

  v3 = qword_27EE843B0;

  return v3;
}

+ (id)localProcessAttributesMap
{
  if (qword_27EE843C8 != -1)
  {
    sub_24802F860();
  }

  v3 = qword_27EE843C0;

  return v3;
}

+ (id)localSystemAttributesMap
{
  if (qword_27EE843D8 != -1)
  {
    sub_24802F874();
  }

  v3 = qword_27EE843D0;

  return v3;
}

+ (id)localCoalitionAttributesMap
{
  if (qword_27EE843E8 != -1)
  {
    sub_24802F888();
  }

  v3 = qword_27EE843E0;

  return v3;
}

@end