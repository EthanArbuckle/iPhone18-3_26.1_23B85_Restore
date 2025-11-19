@interface EDAccountECAccountTransformer
- (id)transformAccount:(id)a3;
- (id)transformDeliveryAccount:(id)a3;
- (id)transformReceivingAccount:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation EDAccountECAccountTransformer

- (id)transformedValue:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F461C6B0])
  {
    v5 = [(EDAccountECAccountTransformer *)self transformAccount:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)transformAccount:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F4628C10])
  {
    v5 = [(EDAccountECAccountTransformer *)self transformReceivingAccount:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 conformsToProtocol:&unk_1F4628CE0])
  {
    v5 = [(EDAccountECAccountTransformer *)self transformDeliveryAccount:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)transformReceivingAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E699AE08]);
  v6 = [v4 identifier];
  v7 = [v5 initWithRepresentedObjectID:v6];

  v8 = [v4 displayName];
  v9 = [v4 hostname];
  v10 = v9;
  v11 = &stru_1F45B4608;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = objc_alloc(MEMORY[0x1E699AE38]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__EDAccountECAccountTransformer_transformReceivingAccount___block_invoke;
  v17[3] = &unk_1E8250048;
  v14 = v4;
  v18 = v14;
  v19 = self;
  v15 = [v13 initWithObjectID:v7 name:v8 hostname:v12 builder:v17];

  return v15;
}

void __59__EDAccountECAccountTransformer_transformReceivingAccount___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) username];
  [v10 setUsername:v3];

  v4 = [*(a1 + 32) statisticsKind];
  [v10 setStatisticsKind:v4];

  [v10 setSourceIsManaged:{objc_msgSend(*(a1 + 32), "sourceIsManaged")}];
  v5 = [*(a1 + 32) emailAddresses];
  [v10 setEmailAddresses:v5];

  [v10 setShouldArchiveByDefault:{objc_msgSend(*(a1 + 32), "shouldArchiveByDefault")}];
  [v10 setPrimaryiCloudAccount:{objc_msgSend(*(a1 + 32), "primaryiCloudAccount")}];
  [v10 setIsLocalAccount:{objc_msgSend(*(a1 + 32), "isLocalAccount")}];
  v6 = [*(a1 + 32) deliveryAccount];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) deliveryAccount];
    v9 = [v7 transformDeliveryAccount:v8];
    [v10 setDeliveryAccount:v9];
  }
}

- (id)transformDeliveryAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E699AE08]);
  v5 = [v3 identifier];
  v6 = [v4 initWithRepresentedObjectID:v5];

  v7 = [v3 displayName];
  v8 = [v3 hostname];
  v9 = objc_alloc(MEMORY[0x1E699ACA0]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__EDAccountECAccountTransformer_transformDeliveryAccount___block_invoke;
  v13[3] = &unk_1E8250070;
  v10 = v3;
  v14 = v10;
  v11 = [v9 initWithObjectID:v6 name:v7 hostname:v8 builder:v13];

  return v11;
}

void __58__EDAccountECAccountTransformer_transformDeliveryAccount___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) username];
  [v4 setUsername:v3];

  [v4 setMaximumMessageBytes:{objc_msgSend(*(a1 + 32), "maximumMessageBytes")}];
  [v4 setPrimaryiCloudAccount:{objc_msgSend(*(a1 + 32), "primaryiCloudAccount")}];
}

@end