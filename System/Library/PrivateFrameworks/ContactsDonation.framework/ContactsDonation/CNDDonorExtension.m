@interface CNDDonorExtension
- (CNDDonorExtension)initWithExtension:(id)a3;
- (CNDDonorExtension)initWithExtension:(id)a3 logger:(id)a4;
- (id)description;
- (void)redonateAllValuesWithReason:(unint64_t)a3;
- (void)renewExpirationDateForDonatedValue:(id)a3 acknowledgementHandler:(id)a4;
@end

@implementation CNDDonorExtension

- (CNDDonorExtension)initWithExtension:(id)a3
{
  v4 = a3;
  v5 = +[CNDonationLoggerProvider defaultProvider];
  v6 = [v5 extensionLogger];

  v7 = [(CNDDonorExtension *)self initWithExtension:v4 logger:v6];
  return v7;
}

- (CNDDonorExtension)initWithExtension:(id)a3 logger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNDDonorExtension;
  v9 = [(CNDDonorExtension *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, a3);
    objc_storeStrong(&v10->_logger, a4);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNDDonorExtension *)self extension];
  v5 = [v4 identifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

- (void)renewExpirationDateForDonatedValue:(id)a3 acknowledgementHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNDDonorExtension *)self logger];
  [v8 willRenewDonation:v6];

  v9 = [(CNDDonorExtension *)self extension];
  v10 = [v9 _cnd_requestWithInputItems:MEMORY[0x277CBEBF8]];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke;
  v21[3] = &unk_278569EB0;
  v21[4] = self;
  v11 = [v10 flatMap:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke_2;
  v17[3] = &unk_278569F00;
  v12 = v6;
  v18 = v12;
  v19 = self;
  v20 = v7;
  v13 = v7;
  [v11 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke_4;
  v15[3] = &unk_278569C70;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v11 addFailureBlock:v15];
}

id __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 extension];
  v5 = [v4 _extensionContextForUUID:v3];

  v6 = [v5 _auxiliaryConnection];
  v7 = MEMORY[0x277CFBE28];
  v8 = [v6 remoteObjectProxy];
  v9 = [v7 futureWithResult:v8];

  return v9;
}

void __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke_3;
  v6[3] = &unk_278569ED8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  [a2 renewExpirationDateForDonatedValue:v4 acknowledgementHandler:v6];
}

void __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v10 = a2;
  v7 = [v5 logger];
  v8 = v7;
  v9 = a1[5];
  if (a2)
  {
    [v7 didRenewDonation:v9 untilDate:v10];
  }

  else
  {
    [v7 didExpireDonation:v9 withError:v6];
  }

  (*(a1[6] + 16))();
}

void __79__CNDDonorExtension_renewExpirationDateForDonatedValue_acknowledgementHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 logger];
  [v5 couldNotRenewDonation:*(a1 + 40) error:v4];
}

- (void)redonateAllValuesWithReason:(unint64_t)a3
{
  v5 = [(CNDDonorExtension *)self logger];
  [v5 willRedonateValuesWithReason:a3];

  v6 = [(CNDDonorExtension *)self extension];
  v7 = [v6 _cnd_requestWithInputItems:MEMORY[0x277CBEBF8]];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__CNDDonorExtension_redonateAllValuesWithReason___block_invoke;
  v11[3] = &unk_278569EB0;
  v11[4] = self;
  v8 = [v7 flatMap:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__CNDDonorExtension_redonateAllValuesWithReason___block_invoke_2;
  v10[3] = &unk_278569F28;
  v10[4] = self;
  v10[5] = a3;
  [v8 addSuccessBlock:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CNDDonorExtension_redonateAllValuesWithReason___block_invoke_3;
  v9[3] = &unk_278569F50;
  v9[4] = self;
  v9[5] = a3;
  [v8 addFailureBlock:v9];
}

id __49__CNDDonorExtension_redonateAllValuesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) extension];
  v8 = [v7 _extensionContextForUUID:v6];

  v9 = [v8 _auxiliaryConnection];
  v10 = MEMORY[0x277CFBE28];
  v11 = [v9 remoteObjectProxy];
  v12 = [v10 futureWithResult:v11];

  return v12;
}

void __49__CNDDonorExtension_redonateAllValuesWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 redonateAllValuesWithReason:*(a1 + 40)];
  v3 = [*(a1 + 32) logger];
  [v3 didRedonateValuesWithReason:*(a1 + 40)];
}

void __49__CNDDonorExtension_redonateAllValuesWithReason___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 logger];
  [v5 couldNotRedonateValuesWithReason:*(a1 + 40) error:v4];
}

@end