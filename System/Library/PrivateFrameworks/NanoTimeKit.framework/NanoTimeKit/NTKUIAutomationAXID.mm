@interface NTKUIAutomationAXID
+ (id)generateAppGroupCellAXID:(id)a3;
+ (id)generateComplicationListCellAXID:(id)a3;
+ (id)generateFeaturedWidgetAXID:(id)a3 name:(id)a4 appBundleIdentifier:(id)a5;
+ (id)getAppBundleIdentifierFromFeaturedWidgetAXID:(id)a3;
+ (id)getHeaderFromFeaturedWidgetAXID:(id)a3;
+ (id)getNameFromFeaturedWidgetAXID:(id)a3;
+ (id)typeIDForUIElement:(int64_t)a3;
@end

@implementation NTKUIAutomationAXID

+ (id)typeIDForUIElement:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"ComplicationPickerDetailView";
  }

  else
  {
    return off_2787846A8[a3 - 1];
  }
}

+ (id)generateFeaturedWidgetAXID:(id)a3 name:(id)a4 appBundleIdentifier:(id)a5
{
  v16[4] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 typeIDForUIElement:1];
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v9;
  v16[3] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  v13 = [a1 infix];
  v14 = [v12 componentsJoinedByString:v13];

  return v14;
}

+ (id)getHeaderFromFeaturedWidgetAXID:(id)a3
{
  v4 = a3;
  v5 = [a1 infix];
  v6 = [v4 componentsSeparatedByString:v5];

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

+ (id)getNameFromFeaturedWidgetAXID:(id)a3
{
  v4 = a3;
  v5 = [a1 infix];
  v6 = [v4 componentsSeparatedByString:v5];

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

+ (id)getAppBundleIdentifierFromFeaturedWidgetAXID:(id)a3
{
  v4 = a3;
  v5 = [a1 infix];
  v6 = [v4 componentsSeparatedByString:v5];

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

+ (id)generateAppGroupCellAXID:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 typeIDForUIElement:2];
  v10[0] = v5;
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v7 = [a1 infix];
  v8 = [v6 componentsJoinedByString:v7];

  return v8;
}

+ (id)generateComplicationListCellAXID:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 typeIDForUIElement:3];
  v10[0] = v5;
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v7 = [a1 infix];
  v8 = [v6 componentsJoinedByString:v7];

  return v8;
}

@end