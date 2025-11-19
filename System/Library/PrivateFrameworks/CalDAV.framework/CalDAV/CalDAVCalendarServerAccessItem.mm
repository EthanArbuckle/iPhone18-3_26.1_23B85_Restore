@interface CalDAVCalendarServerAccessItem
- (CalDAVCalendarServerAccessItem)initWithAccess:(int)a3;
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerAccessItem

- (CalDAVCalendarServerAccessItem)initWithAccess:(int)a3
{
  v4 = [(CalDAVCalendarServerAccessItem *)self init];
  if (v4)
  {
    if ((a3 - 1) > 2)
    {
      v7 = 0;
    }

    else
    {
      v5 = off_278D669D0[a3 - 1];
      v6 = objc_alloc(MEMORY[0x277CFDC08]);
      v7 = [v6 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*v5];
    }

    [(CalDAVCalendarServerAccessItem *)v4 setAccessLevel:v7];
  }

  return v4;
}

- (id)copyParseRules
{
  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v3 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"read" objectClass:objc_opt_class() setterMethod:sel_setAccessLevel_];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"read"];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"read-write" objectClass:objc_opt_class() setterMethod:sel_setAccessLevel_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"read-write"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"read-write-schedule" objectClass:objc_opt_class() setterMethod:sel_setAccessLevel_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"read-write-schedule"];
  v9 = [v11 initWithObjectsAndKeys:{v3, v4, v5, v6, v7, v8, 0}];

  return v9;
}

@end