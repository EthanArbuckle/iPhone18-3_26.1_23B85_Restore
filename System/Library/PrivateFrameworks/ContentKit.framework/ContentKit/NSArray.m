@interface NSArray
@end

@implementation NSArray

void __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    if ([*(a1 + 32) hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v3 = [MEMORY[0x277CBEAA8] date];
    }

    else if ([*(a1 + 32) hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v3 = &stru_282F53518;
    }

    else if ([*(a1 + 32) hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v3 = &unk_282F7A4E0;
    }

    else if ([*(a1 + 32) hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v3 = [WFPhoneNumber phoneNumberWithPhoneNumberString:@"0"];
    }

    else if ([*(a1 + 32) hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v3 = [WFEmailAddress addressWithEmailAddress:&stru_282F53518];
    }

    else
    {
      v4 = [*(a1 + 32) propertyClasses];
      [v4 firstObject];
      v8 = objc_opt_new();

      v3 = v8;
    }
  }

  v9 = v3;
  [*(a1 + 40) lock];
  v5 = [*(a1 + 48) objectForKey:*(a1 + 56)];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "equivalentHash")}];
  v7 = [v6 stringValue];
  [v5 setObject:v9 forKey:v7];

  [*(a1 + 40) unlock];
  dispatch_group_leave(*(a1 + 64));
}

void __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_74(uint64_t a1)
{
  v2 = [*(a1 + 32) objectEnumerator];
  v3 = [v2 allObjects];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_6;
  v7[3] = &unk_27834A200;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 if_mapAsynchronously:&__block_literal_global_77_23682 completionHandler:v7];
}

void __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) sortedArrayUsingDescriptors:a2];
  v3 = [v4 valueForKey:@"object"];
  (*(v2 + 16))(v2, v3);
}

void __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = [v5 property];
  v8 = [v7 possibleValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_3;
  v11[3] = &unk_278349A90;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 getValuesWithCompletionBlock:v11];
}

void __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = MEMORY[0x277CCAC98];
    v5 = MEMORY[0x277CCABB0];
    v6 = [*(a1 + 32) property];
    v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "equivalentHash")}];
    v8 = [v7 stringValue];
    v9 = [*(a1 + 32) ascending];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_4;
    v27[3] = &unk_278349A68;
    v28 = v3;
    v10 = [v4 sortDescriptorWithKey:v8 ascending:v9 comparator:v27];
  }

  else
  {
    v11 = [*(a1 + 32) comparator];

    if (v11)
    {
      v12 = MEMORY[0x277CCAC98];
      v13 = MEMORY[0x277CCABB0];
      v14 = [*(a1 + 32) property];
      v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "equivalentHash")}];
      v16 = [v15 stringValue];
      v17 = [*(a1 + 32) ascending];
      v18 = [*(a1 + 32) comparator];
      v10 = [v12 sortDescriptorWithKey:v16 ascending:v17 comparator:v18];
    }

    else
    {
      v19 = [*(a1 + 32) property];
      v20 = [v19 hasPropertyClass:objc_opt_class()];

      v21 = MEMORY[0x277CCAC98];
      v22 = MEMORY[0x277CCABB0];
      v23 = [*(a1 + 32) property];
      v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "equivalentHash")}];
      v25 = [v24 stringValue];
      v26 = [*(a1 + 32) ascending];
      if (v20)
      {
        [v21 sortDescriptorWithKey:v25 ascending:v26 selector:sel_localizedStandardCompare_];
      }

      else
      {
        [v21 sortDescriptorWithKey:v25 ascending:v26];
      }
      v10 = ;
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_5;
  aBlock[3] = &unk_278349A40;
  v13 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = _Block_copy(aBlock);
  v8 = v7[2](v7, v6);

  v9 = v7[2](v7, v5);

  v10 = [v8 compare:v9];
  return v10;
}

uint64_t __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) indexOfObject:a2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithUnsignedInteger:v3];
}

@end