@interface _NTKComplicationCacheKey
+ (id)keyWithVariant:(id)variant complication:(id)complication forDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _NTKComplicationCacheKey

+ (id)keyWithVariant:(id)variant complication:(id)complication forDevice:(id)device
{
  variantCopy = variant;
  complicationCopy = complication;
  deviceCopy = device;
  v11 = objc_alloc_init(self);
  v12 = v11[1];
  v11[1] = variantCopy;
  v13 = variantCopy;

  v14 = v11[2];
  v11[2] = complicationCopy;
  v15 = complicationCopy;

  pairingID = [deviceCopy pairingID];

  v17 = v11[3];
  v11[3] = pairingID;

  return v11;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_variant];
  v5 = [builder appendObject:self->_complication];
  v6 = [builder appendObject:self->_deviceUUID];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  variant = self->_variant;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __36___NTKComplicationCacheKey_isEqual___block_invoke;
  v20[3] = &unk_278780340;
  v7 = equalCopy;
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