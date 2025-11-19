@interface CNComposeAddressConcatenator
@end

@implementation CNComposeAddressConcatenator

void __65___CNComposeAddressConcatenator_defaultRecipientListConcatenator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultRecipientListConcatenator___context;
  defaultRecipientListConcatenator___context = v1;

  v3 = defaultRecipientListConcatenator___context;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"AND_N_MORE" value:&stru_1F3002C60 table:@"Localized"];
  [v3 setAndNMoreFormat:v5];

  v6 = defaultRecipientListConcatenator___context;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"AND_N_MORE_NO_ELLIPSIS" value:&stru_1F3002C60 table:@"Localized"];
  [v6 setAndNMoreNoEllipsisFormat:v8];

  v9 = defaultRecipientListConcatenator___context;
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"N_RECIPIENTS" value:&stru_1F3002C60 table:@"Localized"];
  [v9 setNAddressesFormat:v11];

  v12 = defaultRecipientListConcatenator___context;
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v14 localizedStringForKey:@"TRUNCATED_RECIPIENT_FORMAT" value:&stru_1F3002C60 table:@"Localized"];
  [v12 setTruncatedAddressFormat:v13];
}

id __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 64) - 1;
  v7 = v6 - v5;
  if (v6 <= v5)
  {
    v14 = *(*(a1 + 48) + 8);
    v13 = *(v14 + 40);
    *(v14 + 40) = 0;
    v15 = a2;
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = a2;
    v11 = [v9 localizedStringWithFormat:a3, v7];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v16 = *(a1 + 40);
  v17 = &stru_1F3002C60;
  if (!v16)
  {
    v16 = &stru_1F3002C60;
  }

  if (a2)
  {
    v17 = a2;
  }

  v18 = [*(a1 + 32) stringByAppendingFormat:@"%@%@", v16, v17];

  return v18;
}

id __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 32);
  v6 = [*(a1 + 40) substringToIndex:a2];
  v7 = [v3 stringWithFormat:v5, v6];
  v8 = (*(v4 + 16))(v4, v7, *(*(a1 + 32) + 16));

  return v8;
}

uint64_t __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[5] + 16))();
  v4 = (*(v2 + 16))(v2, v3, *(*(a1[6] + 8) + 40));

  return v4;
}

uint64_t __145___CNComposeAddressConcatenator_commaSeparatedAddressListWithAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = [a2 stringByAppendingString:?];
    v5 = (*(v3 + 16))(v3, v4);

    return v5;
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = *(a1 + 32);

    return v7(v8);
  }
}

@end