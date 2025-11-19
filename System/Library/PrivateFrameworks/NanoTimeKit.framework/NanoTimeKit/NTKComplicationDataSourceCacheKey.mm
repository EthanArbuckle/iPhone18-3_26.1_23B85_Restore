@interface NTKComplicationDataSourceCacheKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation NTKComplicationDataSourceCacheKey

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_pairingID];
  v5 = [v3 appendUnsignedInteger:self->_complicationType];
  v6 = [v3 appendInteger:self->_complicationFamily];
  v7 = [v3 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  pairingID = self->_pairingID;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__NTKComplicationDataSourceCacheKey_isEqual___block_invoke;
  v20[3] = &unk_278780340;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendObject:pairingID counterpart:v20];
  complicationType = self->_complicationType;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__NTKComplicationDataSourceCacheKey_isEqual___block_invoke_2;
  v18[3] = &unk_278781868;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendUnsignedInteger:complicationType counterpart:v18];
  complicationFamily = self->_complicationFamily;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__NTKComplicationDataSourceCacheKey_isEqual___block_invoke_3;
  v16[3] = &unk_278780170;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendInteger:complicationFamily counterpart:v16];
  LOBYTE(complicationFamily) = [v5 isEqual];

  return complicationFamily;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  objc_storeStrong((v4 + 8), self->_pairingID);
  *(v4 + 16) = self->_complicationType;
  *(v4 + 24) = self->_complicationFamily;
  return v4;
}

@end