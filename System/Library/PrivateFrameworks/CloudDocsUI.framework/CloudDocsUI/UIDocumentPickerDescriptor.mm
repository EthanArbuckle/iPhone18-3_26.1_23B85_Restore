@interface UIDocumentPickerDescriptor
@end

@implementation UIDocumentPickerDescriptor

intptr_t __41___UIDocumentPickerDescriptor_allPickers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

uint64_t __41___UIDocumentPickerDescriptor_allPickers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 identifier];
  v9 = [v7 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 identifier];
  v12 = [v10 indexOfObject:v11];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL && v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v5 compare:v6];
  }

  else
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = -1;
      if (v9 >= v12)
      {
        v15 = 1;
      }

      if (v9 == v12)
      {
        v15 = 0;
      }

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v15;
      }
    }
  }

  return v14;
}

uint64_t __64___UIDocumentPickerDescriptor_filteredPickersForPickers_filter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D773A0]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 extension];
    v7 = [v6 attributes];
    v8 = [v7 objectForKey:@"UIDocumentPickerVisibilityUserManageable"];

    if (v8)
    {
      v5 = [v8 BOOLValue];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

uint64_t __56___UIDocumentPickerDescriptor_descriptorWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __49___UIDocumentPickerDescriptor_cloudEnabledStatus__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__ubiquityIdentityTokenDidChange_ name:*MEMORY[0x277CCA7C8] object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__ubiquityIdentityTokenDidChange_ name:*MEMORY[0x277D76758] object:0];

  v4 = *(a1 + 32);

  return [v4 __updateCloudEnabledStatus];
}

void __61___UIDocumentPickerDescriptor__extensionValueOfClass_forKey___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) extension];
  v2 = [v3 identifier];
  NSLog(&cfstr_ExtensionHasMa.isa, v2, *(a1 + 40));
}

@end