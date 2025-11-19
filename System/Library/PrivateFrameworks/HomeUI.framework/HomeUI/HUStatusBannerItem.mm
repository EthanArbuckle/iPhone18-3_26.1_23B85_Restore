@interface HUStatusBannerItem
+ (id)_networkNameForHomeKitObjects:(id)a3;
+ (id)_sortedRoomNamesForHomeKitObjects:(id)a3;
- (HUStatusBannerItem)initWithSourceItem:(id)a3;
- (id)_descriptionForLocalizedStringKey:(id)a3 representedHomeKitObjects:(id)a4 options:(unint64_t)a5;
- (id)_sortedObjectDisplayNamesForHomeKitObjects:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUStatusBannerItem

- (HUStatusBannerItem)initWithSourceItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUStatusBannerItem;
  return [(HFTransformItem *)&v4 initWithSourceItem:a3 resultKeyExclusionFilter:MEMORY[0x277CBEBF8]];
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = MEMORY[0x277D2C900];
    v8 = MEMORY[0x277D14780];
    v14 = *MEMORY[0x277D13FB8];
    v15[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 outcomeWithResults:v9];
    v11 = [v7 futureWithResult:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUStatusBannerItem;
    v9 = [(HFTransformItem *)&v13 _subclass_updateWithOptions:v4];
    v11 = [v9 flatMap:&__block_literal_global_45];
  }

  return v11;
}

id __50__HUStatusBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D13FB8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 mutableCopy];

    v7 = _HULocalizedStringWithDefaultValue(@"HUBannerStatus_ViewDetails", @"HUBannerStatus_ViewDetails", 1);
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13DE8]];

    v3 = v6;
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v8;
}

- (id)_descriptionForLocalizedStringKey:(id)a3 representedHomeKitObjects:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v35[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (v5)
  {
    [objc_opt_class() _sortedRoomNamesForHomeKitObjects:v9];
  }

  else
  {
    [(HUStatusBannerItem *)self _sortedObjectDisplayNamesForHomeKitObjects:v9];
  }
  v11 = ;
  v12 = [v11 count];
  v13 = 0x277CCA000uLL;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = @"%@_TwoRooms";
      v15 = @"%@_TwoObjects";
      goto LABEL_23;
    }

    if (v12 == 3)
    {
      if (v5)
      {
        v16 = @"%@_ThreeRooms";
      }

      else
      {
        v16 = @"%@_ThreeObjects";
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v8];

      v18 = [v11 subarrayWithRange:{0, 2}];
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v14 = @"%@_OneRoom";
      v15 = @"%@_OneObject";
LABEL_23:
      if (v5)
      {
        v25 = v14;
      }

      else
      {
        v25 = v15;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:v25, v8];

      v18 = v11;
LABEL_27:
      v26 = v18;

      v10 = v26;
      goto LABEL_28;
    }

LABEL_14:
    if (v5)
    {
      v19 = @"%@_MoreThanThreeRooms";
    }

    else
    {
      v19 = @"%@_MoreThanThreeObjects";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v8];

    v20 = [v11 objectAtIndexedSubscript:0];
    v35[0] = v20;
    v21 = [v11 objectAtIndexedSubscript:1];
    v35[1] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count") - 2}];
    v35[2] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];

    v13 = 0x277CCA000;
    v10 = v23;
    goto LABEL_28;
  }

  if (v5)
  {
    v24 = @"%@_ZeroRooms";
  }

  else
  {
    v24 = @"%@_ZeroObjects";
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:v24, v8];

LABEL_28:
  if ((v5 & 2) != 0)
  {
    v27 = [v17 stringByAppendingString:@"_NetworkName"];
    if (v27)
    {
      v28 = [objc_opt_class() _networkNameForHomeKitObjects:v9];
      if ([v28 length])
      {
        v29 = v27;

        v30 = [v10 arrayByAddingObject:v28];

        v10 = v30;
        v17 = v29;
      }
    }
  }

  v31 = *(v13 + 3240);
  v32 = _HULocalizedStringWithDefaultValue(v17, v17, 1);
  v33 = [v31 hf_stringWithFormat:v32 arguments:v10];

  return v33;
}

+ (id)_networkNameForHomeKitObjects:(id)a3
{
  v3 = [a3 na_map:&__block_literal_global_122];
  if ([v3 count] == 1)
  {
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __52__HUStatusBannerItem__networkNameForHomeKitObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 wifiNetworkInfo];
  v7 = [v6 SSID];

  return v7;
}

+ (id)_sortedRoomNamesForHomeKitObjects:(id)a3
{
  v3 = [a3 na_map:&__block_literal_global_126];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_251];

  return v5;
}

id __56__HUStatusBannerItem__sortedRoomNamesForHomeKitObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = &unk_2825BCA78;
  v4 = v2;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:v3])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v10 = NSStringFromProtocol(v3);
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v10}];
  }

  v7 = 0;
LABEL_8:

  v11 = [v7 hf_safeRoom];
  v12 = [v11 name];

  return v12;
}

- (id)_sortedObjectDisplayNamesForHomeKitObjects:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HUStatusBannerItem__sortedObjectDisplayNamesForHomeKitObjects___block_invoke;
  v7[3] = &unk_277DB9ED8;
  v7[4] = self;
  v3 = [a3 na_map:v7];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_253_0];

  return v5;
}

id __65__HUStatusBannerItem__sortedObjectDisplayNamesForHomeKitObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sourceItem];
  v5 = [v4 displayNameForHomeKitObject:v3];

  return v5;
}

@end