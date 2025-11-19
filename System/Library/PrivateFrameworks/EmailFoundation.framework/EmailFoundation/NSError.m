@interface NSError
@end

@implementation NSError

BOOL __45__NSError_EmailFoundationAdditions__ef_match__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) domain];
  if ([v6 isEqualToString:v5])
  {
    v7 = [*(a1 + 32) code] == a3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __63__NSError_EFPubliclyDescribableAdditions__ef_publicDescription__block_invoke(uint64_t a1)
{
  v2 = sErrorDecoders;
  v3 = [*(a1 + 32) domain];
  v8 = [v2 objectForKeyedSubscript:v3];

  v4 = v8;
  if (v8)
  {
    v5 = (*(v8 + 2))(v8, [*(a1 + 32) code]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }
}

void __58__NSError_EmailFoundationAdditions__ef_secureCodableError__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:*MEMORY[0x1E696AA08]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 ef_secureCodableError];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
    if (([v7 isEqual:v6] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else if ([v5 isEqualToString:*MEMORY[0x1E696A750]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__NSError_EmailFoundationAdditions__ef_secureCodableError__block_invoke_2;
    v10[3] = &unk_1E8249048;
    v10[4] = &v11;
    v8 = [v6 ef_map:v10];
    v9 = *(a1 + 32);
    if (*(v12 + 24) == 1)
    {
      [v9 setObject:v8 forKeyedSubscript:v5];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      [v9 setObject:v6 forKeyedSubscript:v5];
    }

    _Block_object_dispose(&v11, 8);
  }

  else if (([v5 isEqualToString:@"NSErrorPeerCertificateChainKey"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"NSErrorClientCertificateChainKey") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696A988]) || !objc_msgSend(v6, "conformsToProtocol:", &unk_1F45B0850) || (objc_msgSend(objc_opt_class(), "supportsSecureCoding") & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

id __58__NSError_EmailFoundationAdditions__ef_secureCodableError__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 ef_secureCodableError];
    if (([v4 isEqual:v3] & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void __67__NSError_EFPubliclyDescribableAdditions__ef_setDecoder_forDomain___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = v2;
  [sErrorDecoders setObject:? forKeyedSubscript:?];
}

@end