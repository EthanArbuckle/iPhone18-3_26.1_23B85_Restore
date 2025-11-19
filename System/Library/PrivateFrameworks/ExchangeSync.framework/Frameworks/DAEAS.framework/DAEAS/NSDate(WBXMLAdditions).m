@interface NSDate(WBXMLAdditions)
+ (id)dateWithActiveSyncString:()WBXMLAdditions;
+ (id)dateWithActiveSyncStringFromYearMonthDay:()WBXMLAdditions;
+ (id)dateWithActiveSyncStringWithoutSeparators:()WBXMLAdditions;
+ (uint64_t)acceptsTopLevelLeaves;
+ (uint64_t)frontingBasicTypes;
+ (uint64_t)notifyOfUnknownTokens;
+ (uint64_t)parsingLeafNode;
+ (uint64_t)parsingWithSubItems;
- (id)activeSyncString;
- (id)activeSyncStringForYearMonthDay;
- (id)activeSyncStringWithoutSeparators;
@end

@implementation NSDate(WBXMLAdditions)

+ (uint64_t)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked == 1)
  {
    v1 = acceptsTopLevelLeaves___result;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result = v1;
    acceptsTopLevelLeaves___haveChecked = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingLeafNode
{
  if (parsingLeafNode___haveChecked == 1)
  {
    v1 = parsingLeafNode___result;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result = v1;
    parsingLeafNode___haveChecked = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked == 1)
  {
    v1 = parsingWithSubItems___result;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result = v1;
    parsingWithSubItems___haveChecked = 1;
  }

  return v1 & 1;
}

+ (uint64_t)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked == 1)
  {
    v1 = frontingBasicTypes___result;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result = v1;
    frontingBasicTypes___haveChecked = 1;
  }

  return v1 & 1;
}

+ (uint64_t)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked == 1)
  {
    v1 = notifyOfUnknownTokens___result;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result = v1;
    notifyOfUnknownTokens___haveChecked = 1;
  }

  return v1 & 1;
}

+ (id)dateWithActiveSyncString:()WBXMLAdditions
{
  v3 = MEMORY[0x277CCA8F8];
  v4 = [a3 stringByAppendingString:@" +0000"];
  v5 = [v3 dateWithString:v4 calendarFormat:@"%Y-%m-%dT%H:%M:%S.%FZ%z"];

  return v5;
}

+ (id)dateWithActiveSyncStringWithoutSeparators:()WBXMLAdditions
{
  v3 = a3;
  v4 = MEMORY[0x277CCA8F8];
  v5 = [v3 stringByAppendingString:@" +0000"];
  v6 = [v4 dateWithString:v5 calendarFormat:@"%Y%m%dT%H%M%SZ%z"];

  if (!v6)
  {
    v7 = MEMORY[0x277CCA8F8];
    v8 = [v3 stringByAppendingString:@" +0000"];
    v6 = [v7 dateWithString:v8 calendarFormat:@"%Y%m%dT%H%M%S%z"];
  }

  return v6;
}

+ (id)dateWithActiveSyncStringFromYearMonthDay:()WBXMLAdditions
{
  v3 = MEMORY[0x277CCA8F8];
  v4 = [a3 stringByAppendingString:@" +0000"];
  v5 = [v3 dateWithString:v4 calendarFormat:@"%Y%m%d%z"];

  return v5;
}

- (id)activeSyncString
{
  v2 = [MEMORY[0x277CBEBB0] gmt];
  v3 = [a1 descriptionWithCalendarFormat:@"%Y-%m-%dT%H:%M:%S.%FZ" timeZone:v2 locale:0];

  return v3;
}

- (id)activeSyncStringWithoutSeparators
{
  v2 = [MEMORY[0x277CBEBB0] gmt];
  v3 = [a1 descriptionWithCalendarFormat:@"%Y%m%dT%H%M%SZ" timeZone:v2 locale:0];

  return v3;
}

- (id)activeSyncStringForYearMonthDay
{
  v2 = [MEMORY[0x277CBEBB0] gmt];
  v3 = [a1 descriptionWithCalendarFormat:@"%Y%m%d" timeZone:v2 locale:0];

  return v3;
}

@end