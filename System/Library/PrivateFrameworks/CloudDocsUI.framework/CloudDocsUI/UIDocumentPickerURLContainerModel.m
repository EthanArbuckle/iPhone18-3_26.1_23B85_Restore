@interface UIDocumentPickerURLContainerModel
@end

@implementation UIDocumentPickerURLContainerModel

uint64_t __52___UIDocumentPickerURLContainerModel_tagColorsByTag__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CCA7C0];
  v5 = [MEMORY[0x277CCAD80] defaultStore];
  [v2 addObserver:v3 selector:sel__tagColorsDidChange name:v4 object:v5];

  v6 = *(a1 + 32);

  return [v6 _tagColorsDidChange];
}

void __52___UIDocumentPickerURLContainerModel__tagBlipColors__block_invoke()
{
  v11[8] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  v11[0] = v0;
  v1 = [MEMORY[0x277D75348] systemGrayColor];
  v11[1] = v1;
  v2 = [MEMORY[0x277D75348] systemGreenColor];
  v11[2] = v2;
  v3 = [MEMORY[0x277D75348] systemPurpleColor];
  v11[3] = v3;
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v11[4] = v4;
  v5 = [MEMORY[0x277D75348] systemYellowColor];
  v11[5] = v5;
  v6 = [MEMORY[0x277D75348] systemRedColor];
  v11[6] = v6;
  v7 = [MEMORY[0x277D75348] systemOrangeColor];
  v11[7] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:8];
  v9 = [v8 copy];
  v10 = _tagBlipColors_colors;
  _tagBlipColors_colors = v9;
}

void __69___UIDocumentPickerURLContainerModel_initWithURL_pickableTypes_mode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69___UIDocumentPickerURLContainerModel_initWithURL_pickableTypes_mode___block_invoke_2;
  v5[3] = &unk_278DD6420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __69___UIDocumentPickerURLContainerModel_initWithURL_pickableTypes_mode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateObserverForURL:*(a1 + 32)];
}

uint64_t __59___UIDocumentPickerURLContainerModel_updateSortDescriptors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 compare:v5 options:833 range:0 locale:{objc_msgSend(v6, "length"), *(a1 + 32)}];

  return v7;
}

uint64_t __59___UIDocumentPickerURLContainerModel_updateSortDescriptors__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 type];
  v7 = [v5 type];
  if (v6 && v7)
  {
    v8 = 0;
  }

  else if (!v6 || v7)
  {
    if (v6 || !v7)
    {
      v9 = [v4 modificationDate];
      v10 = [v5 modificationDate];
      v8 = [v9 compare:v10];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __59___UIDocumentPickerURLContainerModel_updateSortDescriptors__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v7 = [v6 componentsJoinedByString:&stru_285690698];

  v8 = [v5 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v9 = [v8 componentsJoinedByString:&stru_285690698];

  v10 = (*(*(a1 + 32) + 16))();
  return v10;
}

void __79___UIDocumentPickerURLContainerModel_arrayController_modelChanged_differences___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 callUpdateHandlerWithNewItems:v4 diff:v5];
  }
}

void __59___UIDocumentPickerURLContainerModel_updateObserverForURL___block_invoke(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59___UIDocumentPickerURLContainerModel_updateObserverForURL___block_invoke_cold_1(v2);
  }

  [*(a1 + 32) callUpdateHandlerWithNewItems:MEMORY[0x277CBEBF8] diff:0];
  v3 = [*(a1 + 32) _createObserver];
  [*(a1 + 32) setObserver:v3];
}

@end