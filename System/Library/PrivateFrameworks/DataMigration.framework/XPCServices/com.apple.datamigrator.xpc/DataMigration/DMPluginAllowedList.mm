@interface DMPluginAllowedList
- (id)concurrentUserSpecificPluginSpecifiers;
- (id)orderedUserAgnosticPluginSpecifiers;
- (id)orderedUserSpecificPluginSpecifiers;
@end

@implementation DMPluginAllowedList

- (id)orderedUserAgnosticPluginSpecifiers
{
  if (qword_100030A00 != -1)
  {
    sub_100012B24();
  }

  v3 = qword_1000309F8;

  return v3;
}

- (id)orderedUserSpecificPluginSpecifiers
{
  if (qword_100030A10 != -1)
  {
    sub_100012B38();
  }

  v3 = qword_100030A08;

  return v3;
}

- (id)concurrentUserSpecificPluginSpecifiers
{
  if (qword_100030A20 != -1)
  {
    sub_100012B4C();
  }

  v3 = qword_100030A18;

  return v3;
}

@end