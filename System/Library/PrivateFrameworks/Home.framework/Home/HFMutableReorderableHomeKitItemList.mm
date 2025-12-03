@interface HFMutableReorderableHomeKitItemList
- (id)saveWithSender:(id)sender;
- (void)_dispatchApplicationDataDidChangeMessageWithSender:(id)sender;
- (void)setSortedHomeKitItems:(id)items;
- (void)setSortedHomeKitObjects:(id)objects;
@end

@implementation HFMutableReorderableHomeKitItemList

- (void)setSortedHomeKitItems:(id)items
{
  itemsCopy = items;
  [itemsCopy na_each:&__block_literal_global_207_0];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HFMutableReorderableHomeKitItemList_setSortedHomeKitItems___block_invoke_2;
  v8[3] = &unk_277E018F8;
  v9 = v5;
  v6 = v5;
  [itemsCopy na_each:v8];

  v7 = [v6 copy];
  [(HFReorderableHomeKitItemList *)self setSortedHomeKitObjectIdentifiers:v7];
}

void __61__HFMutableReorderableHomeKitItemList_setSortedHomeKitItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = &unk_28252A8F8;
  v4 = v2;
  v10 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:v3])
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }

    v6 = v10;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v9 = NSStringFromProtocol(v3);
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v9}];
  }

  v6 = 0;
LABEL_8:
}

void __61__HFMutableReorderableHomeKitItemList_setSortedHomeKitItems___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 conformsToProtocol:&unk_28254C800])
  {
    v3 = v10;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 allHomeKitObjects];
      v6 = [v5 na_map:&__block_literal_global_212_1];

      [*(a1 + 32) addObjectsFromArray:v6];
      goto LABEL_10;
    }

    v7 = *(a1 + 32);
    v8 = [v4 primaryHomeKitObject];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v10 homeKitObject];
  }

  v6 = v8;
  v9 = [v8 uniqueIdentifier];
  [v7 addObject:v9];

LABEL_10:
}

- (void)setSortedHomeKitObjects:(id)objects
{
  v4 = [objects na_map:&__block_literal_global_214_1];
  [(HFReorderableHomeKitItemList *)self setSortedHomeKitObjectIdentifiers:v4];
}

- (id)saveWithSender:(id)sender
{
  senderCopy = sender;
  applicationDataContainer = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
  applicationData = [applicationDataContainer applicationData];
  if (applicationData)
  {
    sortedHomeKitObjectIdentifiers = [(HFReorderableHomeKitItemList *)self sortedHomeKitObjectIdentifiers];
    v8 = [sortedHomeKitObjectIdentifiers na_map:&__block_literal_global_218_0];
    v9 = [v8 copy];

    _applicationDataKey = [(HFReorderableHomeKitItemList *)self _applicationDataKey];
    v11 = [applicationData objectForKeyedSubscript:_applicationDataKey];
    v12 = [v9 isEqual:v11];

    if (v12)
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      _applicationDataKey2 = [(HFReorderableHomeKitItemList *)self _applicationDataKey];
      [applicationData setObject:v9 forKeyedSubscript:_applicationDataKey2];

      v15 = MEMORY[0x277D2C900];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __54__HFMutableReorderableHomeKitItemList_saveWithSender___block_invoke_2;
      v20[3] = &unk_277DF4150;
      v21 = applicationDataContainer;
      v22 = applicationData;
      v16 = [v15 futureWithErrorOnlyHandlerAdapterBlock:v20];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __54__HFMutableReorderableHomeKitItemList_saveWithSender___block_invoke_3;
      v18[3] = &unk_277DFA5C0;
      v18[4] = self;
      v19 = senderCopy;
      futureWithNoResult = [v16 flatMap:v18];
    }
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __54__HFMutableReorderableHomeKitItemList_saveWithSender___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _dispatchApplicationDataDidChangeMessageWithSender:v3];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

- (void)_dispatchApplicationDataDidChangeMessageWithSender:(id)sender
{
  senderCopy = sender;
  applicationDataContainer = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    applicationDataContainer5 = +[HFHomeKitDispatcher sharedDispatcher];
    [applicationDataContainer5 dispatchHomeManagerObserverMessage:&__block_literal_global_225_1 sender:senderCopy];
  }

  else
  {
    applicationDataContainer2 = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      v10 = +[HFHomeKitDispatcher sharedDispatcher];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __90__HFMutableReorderableHomeKitItemList__dispatchApplicationDataDidChangeMessageWithSender___block_invoke_2;
      v24[3] = &unk_277DF2CB8;
      v24[4] = self;
      [v10 dispatchHomeObserverMessage:v24 sender:senderCopy];

      goto LABEL_10;
    }

    applicationDataContainer3 = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    applicationDataContainer4 = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
    v14 = applicationDataContainer4;
    if (v12)
    {
      accessories = [applicationDataContainer4 accessories];
      firstObject = [accessories firstObject];
      home = [firstObject home];

      v18 = +[HFHomeKitDispatcher sharedDispatcher];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __90__HFMutableReorderableHomeKitItemList__dispatchApplicationDataDidChangeMessageWithSender___block_invoke_3;
      v21[3] = &unk_277DF3810;
      v22 = home;
      v23 = v14;
      v19 = v14;
      v20 = home;
      [v18 dispatchHomeObserverMessage:v21 sender:senderCopy];

      goto LABEL_10;
    }

    if (!v14)
    {
      goto LABEL_10;
    }

    applicationDataContainer5 = [(HFReorderableItemListAbstractBase *)self applicationDataContainer];
    NSLog(&cfstr_NoDispatcherFo.isa, applicationDataContainer5);
  }

LABEL_10:
}

void __90__HFMutableReorderableHomeKitItemList__dispatchApplicationDataDidChangeMessageWithSender___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v2 = +[HFHomeKitDispatcher sharedDispatcher];
    v3 = [v2 homeManager];
    [v4 homeManagerDidUpdateApplicationData:v3];
  }
}

void __90__HFMutableReorderableHomeKitItemList__dispatchApplicationDataDidChangeMessageWithSender___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) applicationDataContainer];
    [v4 homeDidUpdateApplicationData:v3];
  }
}

void __90__HFMutableReorderableHomeKitItemList__dispatchApplicationDataDidChangeMessageWithSender___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdateApplicationDataForRoom:*(a1 + 40)];
  }
}

@end