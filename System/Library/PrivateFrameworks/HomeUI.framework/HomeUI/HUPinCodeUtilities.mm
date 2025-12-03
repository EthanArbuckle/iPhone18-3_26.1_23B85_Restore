@interface HUPinCodeUtilities
+ (id)createSharingViewControllerForPinCodeItem:(id)item inHome:(id)home;
@end

@implementation HUPinCodeUtilities

+ (id)createSharingViewControllerForPinCodeItem:(id)item inHome:(id)home
{
  v17[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  homeCopy = home;
  v7 = [[_HUPinCodeActivityItemSource alloc] initWithPinCodeItem:itemCopy];
  v8 = objc_alloc(MEMORY[0x277D546D8]);
  v17[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HUPinCodeUtilities_createSharingViewControllerForPinCodeItem_inHome___block_invoke;
  v14[3] = &unk_277DBE240;
  v15 = homeCopy;
  v16 = itemCopy;
  v11 = itemCopy;
  v12 = homeCopy;
  [v10 setCompletionWithItemsHandler:v14];

  return v10;
}

void __71__HUPinCodeUtilities_createSharingViewControllerForPinCodeItem_inHome___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *MEMORY[0x277D133C0];
    v6[0] = *MEMORY[0x277D13520];
    v6[1] = v3;
    v4 = *(a1 + 40);
    v7[0] = *(a1 + 32);
    v7[1] = &unk_2824918B0;
    v6[2] = *MEMORY[0x277D133B8];
    v7[2] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
    [MEMORY[0x277D143D8] sendEvent:26 withData:v5];
  }
}

@end