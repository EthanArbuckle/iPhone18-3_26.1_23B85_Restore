@interface NSEntityDescription(HomeKitDaemon)
- (id)hmd_attributeForSettingsPath:()HomeKitDaemon;
- (id)hmd_attributesBySettingsPath;
- (void)hmd_recursivelyEnumerateSubentitiesUsingBlock:()HomeKitDaemon;
@end

@implementation NSEntityDescription(HomeKitDaemon)

- (id)hmd_attributeForSettingsPath:()HomeKitDaemon
{
  v4 = a3;
  v5 = [a1 hmd_attributesBySettingsPath];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)hmd_attributesBySettingsPath
{
  v2 = objc_getAssociatedObject(a1, sel_hmd_attributeForSettingsPath_);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [a1 attributesByName];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__NSEntityDescription_HomeKitDaemon__hmd_attributesBySettingsPath__block_invoke;
    v9[3] = &unk_278677F78;
    v5 = v3;
    v10 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];

    v2 = [v5 copy];
    v6 = [a1 managedObjectModel];
    v7 = [v6 hmd_isImmutable];

    if (v7)
    {
      objc_setAssociatedObject(a1, sel_hmd_attributeForSettingsPath_, v2, 0x301);
    }
  }

  return v2;
}

- (void)hmd_recursivelyEnumerateSubentitiesUsingBlock:()HomeKitDaemon
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v14 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NSEntityDescription_HomeKitDaemon__hmd_recursivelyEnumerateSubentitiesUsingBlock___block_invoke;
  aBlock[3] = &unk_278677F50;
  v9 = &v15;
  v5 = v4;
  v8 = v5;
  v10 = &v11;
  v6 = _Block_copy(aBlock);
  v12[3] = v6;
  v6[2](v6, a1, 0, v16 + 3);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

@end