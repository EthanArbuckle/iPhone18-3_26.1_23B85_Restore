@interface NAIdentityBuilder(NAUIAdditions)
- (id)appendCGFloatCharacteristic:()NAUIAdditions withRole:;
- (id)appendCGPointCharacteristic:()NAUIAdditions withRole:;
- (id)appendCGRectCharacteristic:()NAUIAdditions withRole:;
@end

@implementation NAIdentityBuilder(NAUIAdditions)

- (id)appendCGFloatCharacteristic:()NAUIAdditions withRole:
{
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__NAIdentityBuilder_NAUIAdditions__appendCGFloatCharacteristic_withRole___block_invoke;
  v11[3] = &unk_279966790;
  v12 = v6;
  v7 = v6;
  v8 = MEMORY[0x25F8702F0](v11);
  v9 = [self appendCharacteristic:v8 withRole:a4 comparatorBlock:0 hashBlock:0];

  return v9;
}

- (id)appendCGPointCharacteristic:()NAUIAdditions withRole:
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__NAIdentityBuilder_NAUIAdditions__appendCGPointCharacteristic_withRole___block_invoke;
  v10[3] = &unk_279966790;
  v11 = v6;
  v7 = v6;
  v8 = [self appendCharacteristic:v10 withRole:a4 comparatorBlock:0 hashBlock:0];

  return v8;
}

- (id)appendCGRectCharacteristic:()NAUIAdditions withRole:
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__NAIdentityBuilder_NAUIAdditions__appendCGRectCharacteristic_withRole___block_invoke;
  v10[3] = &unk_279966790;
  v11 = v6;
  v7 = v6;
  v8 = [self appendCharacteristic:v10 withRole:a4 comparatorBlock:0 hashBlock:0];

  return v8;
}

@end