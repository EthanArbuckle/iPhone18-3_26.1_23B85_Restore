@interface _NTKComplicationCacheKey
+ (id)keyWithVariant:(id)a3 complication:(id)a4 forDevice:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _NTKComplicationCacheKey

+ (id)keyWithVariant:(id)a3 complication:(id)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(a1);
  v12 = v11[1];
  v11[1] = v8;
  v13 = v8;

  v14 = v11[2];
  v11[2] = v9;
  v15 = v9;

  v16 = [v10 pairingID];

  v17 = v11[3];
  v11[3] = v16;

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_variant];
  v5 = [v3 appendObject:self->_complication];
  v6 = [v3 appendObject:self->_deviceUUID];
  v7 = [v3 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  variant = self->_variant;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __36___NTKComplicationCacheKey_isEqual___block_invoke;
  v20[3] = &unk_278780340;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendObject:variant counterpart:v20];
  complication = self->_complication;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36___NTKComplicationCacheKey_isEqual___block_invoke_2;
  v18[3] = &unk_278780340;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:complication counterpart:v18];
  deviceUUID = self->_deviceUUID;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __36___NTKComplicationCacheKey_isEqual___block_invoke_3;
  v16[3] = &unk_278780340;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendObject:deviceUUID counterpart:v16];
  LOBYTE(deviceUUID) = [v5 isEqual];

  return deviceUUID;
}

@end