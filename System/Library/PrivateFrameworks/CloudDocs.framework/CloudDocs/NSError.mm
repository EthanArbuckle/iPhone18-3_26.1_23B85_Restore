@interface NSError
@end

@implementation NSError

void __61__NSError_BRFPAdditions___br_getFileProviderDomainErrorCode___block_invoke()
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19[0] = &unk_1F23E6400;
  v19[1] = &unk_1F23E6430;
  v20[0] = &unk_1F23E6418;
  v20[1] = &unk_1F23E6448;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v1 = _br_getFileProviderDomainErrorCode__cocoaErrorToFPError;
  _br_getFileProviderDomainErrorCode__cocoaErrorToFPError = v0;

  v17[0] = &unk_1F23E6460;
  v17[1] = &unk_1F23E6490;
  v18[0] = &unk_1F23E6478;
  v18[1] = &unk_1F23E64A8;
  v17[2] = &unk_1F23E64C0;
  v17[3] = &unk_1F23E64D8;
  v18[2] = &unk_1F23E64A8;
  v18[3] = &unk_1F23E64A8;
  v17[4] = &unk_1F23E64F0;
  v17[5] = &unk_1F23E6520;
  v18[4] = &unk_1F23E6508;
  v18[5] = &unk_1F23E6538;
  v17[6] = &unk_1F23E6550;
  v17[7] = &unk_1F23E6580;
  v18[6] = &unk_1F23E6568;
  v18[7] = &unk_1F23E6598;
  v17[8] = &unk_1F23E65B0;
  v17[9] = &unk_1F23E65E0;
  v18[8] = &unk_1F23E65C8;
  v18[9] = &unk_1F23E65F8;
  v17[10] = &unk_1F23E6610;
  v17[11] = &unk_1F23E6628;
  v18[10] = &unk_1F23E65F8;
  v18[11] = &unk_1F23E6418;
  v17[12] = &unk_1F23E6640;
  v17[13] = &unk_1F23E6670;
  v18[12] = &unk_1F23E6658;
  v18[13] = &unk_1F23E6688;
  v18[14] = &unk_1F23E6688;
  v17[14] = &unk_1F23E66A0;
  v17[15] = &unk_1F23E66B8;
  v2 = *MEMORY[0x1E69671E8];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69671E8]];
  v18[15] = v3;
  v17[16] = &unk_1F23E66D0;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  v18[16] = v4;
  v17[17] = &unk_1F23E66E8;
  v5 = *MEMORY[0x1E69671C0];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69671C0]];
  v18[17] = v6;
  v17[18] = &unk_1F23E6700;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v18[18] = v7;
  v18[19] = &unk_1F23E6418;
  v17[19] = &unk_1F23E6718;
  v17[20] = &unk_1F23E6730;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v18[20] = v8;
  v17[21] = &unk_1F23E6748;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v18[21] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:22];
  v11 = _br_getFileProviderDomainErrorCode__clouddocsErrorToFPError;
  _br_getFileProviderDomainErrorCode__clouddocsErrorToFPError = v10;

  v15[0] = &unk_1F23E6760;
  v15[1] = &unk_1F23E6778;
  v16[0] = &unk_1F23E6418;
  v16[1] = &unk_1F23E6418;
  v15[2] = &unk_1F23E6790;
  v15[3] = &unk_1F23E67A8;
  v16[2] = &unk_1F23E6418;
  v16[3] = &unk_1F23E6478;
  v15[4] = &unk_1F23E67C0;
  v15[5] = &unk_1F23E67D8;
  v16[4] = &unk_1F23E6478;
  v16[5] = &unk_1F23E64A8;
  v15[6] = &unk_1F23E6508;
  v15[7] = &unk_1F23E67F0;
  v16[6] = &unk_1F23E64A8;
  v16[7] = &unk_1F23E6448;
  v15[8] = &unk_1F23E6808;
  v15[9] = &unk_1F23E6820;
  v16[8] = &unk_1F23E6418;
  v16[9] = &unk_1F23E6418;
  v15[10] = &unk_1F23E6538;
  v15[11] = &unk_1F23E6838;
  v16[10] = &unk_1F23E6418;
  v16[11] = &unk_1F23E6418;
  v15[12] = &unk_1F23E6850;
  v16[12] = &unk_1F23E6418;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:13];
  v13 = _br_getFileProviderDomainErrorCode__cloudKitErrorToFPError;
  _br_getFileProviderDomainErrorCode__cloudKitErrorToFPError = v12;

  v14 = *MEMORY[0x1E69E9840];
}

void __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke()
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"BRUnderlyingItemKey";
  v11[1] = @"BRLocalizedDescriptionKey";
  v0 = *MEMORY[0x1E696A578];
  v12[0] = *MEMORY[0x1E69671A8];
  v12[1] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v2 = _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToFPUserInfoKey;
  _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToFPUserInfoKey = v1;

  v9 = @"BRUnderlyingItemIdentifierKey";
  v7 = &unk_1F23E6490;
  v8 = *MEMORY[0x1E69671B0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToBRErrorCodeFPUserInfoKeyMap;
  _br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError__brUserInfoKeyToBRErrorCodeFPUserInfoKeyMap = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __91__NSError_BRFPAdditions___br_populateUserInfoDictWithDomain_code_setSelfAsUnderlyingError___block_invoke_3(id *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [a1[4] objectForKey:a2];
  if (v5)
  {
    v6 = v9;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1[5], "code")}];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      [a1[6] setObject:v5 forKeyedSubscript:v8];
    }
  }
}

@end