@interface CalDAVScheduleCalendarTranspItem
- (BOOL)isScheduleTransparent;
- (CalDAVScheduleCalendarTranspItem)init;
- (id)copyParseRules;
@end

@implementation CalDAVScheduleCalendarTranspItem

- (CalDAVScheduleCalendarTranspItem)init
{
  v2 = *MEMORY[0x277CFDEF8];
  v3 = *MEMORY[0x277CFDFF8];
  v5.receiver = self;
  v5.super_class = CalDAVScheduleCalendarTranspItem;
  return [(CoreDAVItem *)&v5 initWithNameSpace:v2 andName:v3];
}

- (BOOL)isScheduleTransparent
{
  v2 = [(CalDAVScheduleCalendarTranspItem *)self transparent];
  v3 = v2 != 0;

  return v3;
}

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDDC0];
  v4 = *MEMORY[0x277CFE040];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFE040] objectClass:objc_opt_class() setterMethod:sel_setTransparent_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, v4];
  v7 = [v2 initWithObjectsAndKeys:{v5, v6, 0}];

  return v7;
}

@end