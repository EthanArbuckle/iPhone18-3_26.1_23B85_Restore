@interface NTKUIAutomationAXID
+ (id)generateAppGroupCellAXID:(id)d;
+ (id)generateComplicationListCellAXID:(id)d;
+ (id)generateFeaturedWidgetAXID:(id)d name:(id)name appBundleIdentifier:(id)identifier;
+ (id)getAppBundleIdentifierFromFeaturedWidgetAXID:(id)d;
+ (id)getHeaderFromFeaturedWidgetAXID:(id)d;
+ (id)getNameFromFeaturedWidgetAXID:(id)d;
+ (id)typeIDForUIElement:(int64_t)element;
@end

@implementation NTKUIAutomationAXID

+ (id)typeIDForUIElement:(int64_t)element
{
  if ((element - 1) > 2)
  {
    return @"ComplicationPickerDetailView";
  }

  else
  {
    return off_2787846A8[element - 1];
  }
}

+ (id)generateFeaturedWidgetAXID:(id)d name:(id)name appBundleIdentifier:(id)identifier
{
  v16[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  dCopy = d;
  v11 = [self typeIDForUIElement:1];
  v16[0] = v11;
  v16[1] = dCopy;
  v16[2] = nameCopy;
  v16[3] = identifierCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  infix = [self infix];
  v14 = [v12 componentsJoinedByString:infix];

  return v14;
}

+ (id)getHeaderFromFeaturedWidgetAXID:(id)d
{
  dCopy = d;
  infix = [self infix];
  v6 = [dCopy componentsSeparatedByString:infix];

  if ([v6 count] >= 2)
  {
    v7 = [v6 objectAtIndexedSubscript:1];
  }

  else
  {
    v7 = &stru_284110E98;
  }

  return v7;
}

+ (id)getNameFromFeaturedWidgetAXID:(id)d
{
  dCopy = d;
  infix = [self infix];
  v6 = [dCopy componentsSeparatedByString:infix];

  if ([v6 count] >= 3)
  {
    v7 = [v6 objectAtIndexedSubscript:2];
  }

  else
  {
    v7 = &stru_284110E98;
  }

  return v7;
}

+ (id)getAppBundleIdentifierFromFeaturedWidgetAXID:(id)d
{
  dCopy = d;
  infix = [self infix];
  v6 = [dCopy componentsSeparatedByString:infix];

  if ([v6 count] >= 4)
  {
    v7 = [v6 objectAtIndexedSubscript:3];
  }

  else
  {
    v7 = &stru_284110E98;
  }

  return v7;
}

+ (id)generateAppGroupCellAXID:(id)d
{
  v10[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [self typeIDForUIElement:2];
  v10[0] = v5;
  v10[1] = dCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  infix = [self infix];
  v8 = [v6 componentsJoinedByString:infix];

  return v8;
}

+ (id)generateComplicationListCellAXID:(id)d
{
  v10[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [self typeIDForUIElement:3];
  v10[0] = v5;
  v10[1] = dCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  infix = [self infix];
  v8 = [v6 componentsJoinedByString:infix];

  return v8;
}

@end