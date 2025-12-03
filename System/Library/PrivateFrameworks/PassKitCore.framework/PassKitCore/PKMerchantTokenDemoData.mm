@interface PKMerchantTokenDemoData
+ (id)responseForPageNumber:(id)number;
+ (id)responseForSingleAMPMerchantToken;
+ (id)responseForSingleCashMerchantToken;
+ (id)responseForSingleMerchantToken;
+ (id)responseForSinglePage;
@end

@implementation PKMerchantTokenDemoData

+ (id)responseForSingleMerchantToken
{
  v2 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:&unk_1F23B3D40];
  v3 = [[PKRetrieveMerchantTokensResponse alloc] initWithMerchantTokens:v2 totalMerchantTokens:&unk_1F23B4CD0 pageSize:&unk_1F23B4CE8 totalPages:&unk_1F23B4CD0 pageNumber:&unk_1F23B4CD0];

  return v3;
}

+ (id)responseForSingleAMPMerchantToken
{
  v2 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:&unk_1F23B3D58];
  v3 = [[PKRetrieveMerchantTokensResponse alloc] initWithMerchantTokens:v2 totalMerchantTokens:&unk_1F23B4CD0 pageSize:&unk_1F23B4CE8 totalPages:&unk_1F23B4CD0 pageNumber:&unk_1F23B4CD0];

  return v3;
}

+ (id)responseForSingleCashMerchantToken
{
  v2 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:&unk_1F23B3D70];
  v3 = [[PKRetrieveMerchantTokensResponse alloc] initWithMerchantTokens:v2 totalMerchantTokens:&unk_1F23B4CD0 pageSize:&unk_1F23B4CE8 totalPages:&unk_1F23B4CD0 pageNumber:&unk_1F23B4CD0];

  return v3;
}

+ (id)responseForSinglePage
{
  v2 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:MEMORY[0x1E695E0F0]];
  v3 = [PKRetrieveMerchantTokensResponse alloc];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
  v5 = [(PKRetrieveMerchantTokensResponse *)v3 initWithMerchantTokens:v2 totalMerchantTokens:v4 pageSize:&unk_1F23B4CE8 totalPages:&unk_1F23B4CD0 pageNumber:&unk_1F23B4CD0];

  return v5;
}

+ (id)responseForPageNumber:(id)number
{
  v36[5] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v4 = MEMORY[0x1E695E0F0];
  v5 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:MEMORY[0x1E695E0F0]];
  v6 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:v4];
  v7 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:v4];
  v8 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:v4];
  v9 = v6;
  v10 = [PKMerchantTokenDemoData _generateTokensWithIdsUsing:v4];
  v36[0] = v5;
  v36[1] = v9;
  v36[2] = v7;
  v36[3] = v8;
  v36[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
  integerValue = [numberCopy integerValue];
  v13 = integerValue - 1;
  if (integerValue < 1 || v13 >= [v11 count])
  {
    v20 = [PKRetrieveMerchantTokensResponse alloc];
    v21 = [(PKRetrieveMerchantTokensResponse *)v20 initWithMerchantTokens:MEMORY[0x1E695E0F0] totalMerchantTokens:&unk_1F23B4D00 pageSize:&unk_1F23B4CE8 totalPages:&unk_1F23B4CD0 pageNumber:&unk_1F23B4CD0];
  }

  else
  {
    v28 = v9;
    v29 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    v30 = numberCopy;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v17 += [*(*(&v31 + 1) + 8 * i) count];
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v22 = [v14 objectAtIndexedSubscript:v13];
    v23 = [PKRetrieveMerchantTokensResponse alloc];
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
    v21 = [(PKRetrieveMerchantTokensResponse *)v23 initWithMerchantTokens:v22 totalMerchantTokens:v24 pageSize:v25 totalPages:v26 pageNumber:v30];

    numberCopy = v30;
    v9 = v28;
    v5 = v29;
  }

  return v21;
}

PKMerchantToken *__55__PKMerchantTokenDemoData__generateTokensWithIdsUsing___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  [v2 setObject:v4 forKeyedSubscript:@"merchantTokenId"];

  v5 = [[PKMerchantToken alloc] initWithDictionary:v2];

  return v5;
}

@end