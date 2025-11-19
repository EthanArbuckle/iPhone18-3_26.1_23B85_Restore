@interface NTKPigmentCollectionConfig
+ (id)collectionConfigFromProtoBuffer:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protoBuffer;
- (void)applyCollectionOverrideNameOnItems:(id)a3;
- (void)overridePropertiesFromConfig:(id)a3;
- (void)removeExcludedItemsFromList:(id)a3;
@end

@implementation NTKPigmentCollectionConfig

- (void)overridePropertiesFromConfig:(id)a3
{
  v31 = a3;
  v4 = [v31 defaultColorOptionName];

  if (v4)
  {
    v5 = [v31 defaultColorOptionName];
    [(NTKPigmentCollectionConfig *)self setDefaultColorOptionName:v5];
  }

  v6 = [v31 sensitivity];

  if (v6)
  {
    v7 = [v31 sensitivity];
    [(NTKPigmentCollectionConfig *)self setSensitivity:v7];
  }

  v8 = [v31 isAddable];

  if (v8)
  {
    v9 = [v31 isAddable];
    [(NTKPigmentCollectionConfig *)self setIsAddable:v9];
  }

  v10 = [v31 supportsSlider];

  if (v10)
  {
    v11 = [v31 supportsSlider];
    [(NTKPigmentCollectionConfig *)self setSupportsSlider:v11];
  }

  v12 = [(NTKPigmentCollectionConfig *)self migration];
  if (v12 && (v13 = v12, [v31 migration], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    v15 = [(NTKPigmentCollectionConfig *)self migration];
    v16 = [v15 mutableCopy];

    v17 = [v31 migration];
    [v16 addEntriesFromDictionary:v17];
  }

  else
  {
    v18 = [v31 migration];

    if (!v18)
    {
      goto LABEL_15;
    }

    v16 = [v31 migration];
  }

  [(NTKPigmentCollectionConfig *)self setMigration:v16];

LABEL_15:
  v19 = [v31 exclusions];

  if (v19)
  {
    v20 = [(NTKPigmentCollectionConfig *)self exclusions];
    v21 = [v31 exclusions];
    v22 = [v20 arrayByAddingObjectsFromArray:v21];
    [(NTKPigmentCollectionConfig *)self setExclusions:v22];
  }

  v23 = [v31 excludesDuotone];

  if (v23)
  {
    v24 = [v31 excludesDuotone];
    [(NTKPigmentCollectionConfig *)self setExcludesDuotone:v24];
  }

  [v31 collectionOverride];

  v25 = [v31 defaultGalleryColorNames];

  if (v25)
  {
    v26 = [v31 defaultGalleryColorNames];
    [(NTKPigmentCollectionConfig *)self setDefaultGalleryColorNames:v26];
  }

  v27 = [v31 defaultColorOptionName];
  if (v27)
  {
    v28 = v27;
    v29 = [v31 defaultConfigAttributeName];

    if (v29)
    {
      v30 = [v31 defaultConfigAttributeName];
      [(NTKPigmentCollectionConfig *)self setDefaultConfigAttributeName:v30];
    }
  }
}

- (void)removeExcludedItemsFromList:(id)a3
{
  v4 = a3;
  v5 = [(NTKPigmentCollectionConfig *)self exclusions];
  if ([v5 count])
  {
    v6 = [v4 count];

    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_6:
    v9 = MEMORY[0x277CBEB58];
    v10 = [(NTKPigmentCollectionConfig *)self exclusions];
    v11 = [v9 setWithArray:v10];

    v12 = [(NTKPigmentCollectionConfig *)self exclusions];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__NTKPigmentCollectionConfig_removeExcludedItemsFromList___block_invoke;
    v19[3] = &unk_27877DED0;
    v13 = v11;
    v20 = v13;
    [v12 enumerateObjectsUsingBlock:v19];

    v14 = [v4 copy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__NTKPigmentCollectionConfig_removeExcludedItemsFromList___block_invoke_2;
    v16[3] = &unk_278780730;
    v16[4] = self;
    v17 = v4;
    v18 = v13;
    v15 = v13;
    [v14 enumerateObjectsUsingBlock:v16];

    goto LABEL_8;
  }

  v7 = [(NTKPigmentCollectionConfig *)self excludesDuotone];
  if (([v7 BOOLValue] & 1) == 0)
  {

    goto LABEL_8;
  }

  v8 = [v4 count];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_8:
}

void __58__NTKPigmentCollectionConfig_removeExcludedItemsFromList___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 containsString:@":"])
  {
    v3 = *(a1 + 32);
    v4 = [v5 stringByReplacingOccurrencesOfString:@":" withString:@"."];
    [v3 addObject:v4];
  }
}

void __58__NTKPigmentCollectionConfig_removeExcludedItemsFromList___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 isMultitoneOption] && (objc_msgSend(*(a1 + 32), "excludesDuotone"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLValue"), v3, (v4 & 1) != 0) || objc_msgSend(v11, "isMultitoneOption") && (v5 = *(a1 + 48), objc_msgSend(v11, "multitoneNamesWithoutCollection"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = objc_msgSend(v5, "containsObject:", v6), v6, (v5 & 1) != 0) || (v7 = *(a1 + 48), objc_msgSend(v11, "effectiveOptionName"), v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v7, "containsObject:", v8), v8, (v7 & 1) != 0) || (v9 = *(a1 + 48), objc_msgSend(v11, "fullname"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend(v9, "containsObject:", v10), v10, v9))
  {
    [*(a1 + 40) removeObject:v11];
  }
}

- (void)applyCollectionOverrideNameOnItems:(id)a3
{
  v14 = a3;
  v4 = [(NTKPigmentCollectionConfig *)self collectionOverride];
  v5 = v14;
  if (v4)
  {
    v6 = [v14 count];

    v5 = v14;
    if (v6)
    {
      v7 = [v14 copy];
      if ([v7 count])
      {
        v8 = 0;
        do
        {
          v9 = [v7 objectAtIndexedSubscript:v8];
          v10 = [v9 collectionName];
          v11 = [v9 effectiveCollectionName];
          if ([v10 isEqualToString:v11])
          {
            v12 = [(NTKPigmentCollectionConfig *)self collectionOverride];
            v13 = [v9 copyWithCollectionOverride:v12];

            [v14 removeObject:v9];
            if ([v14 count] - 1 <= v8)
            {
              [v14 addObject:v13];
            }

            else
            {
              [v14 insertObject:v13 atIndex:v8];
            }
          }

          ++v8;
        }

        while ([v7 count] > v8);
      }

      v5 = v14;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_defaultColorOptionName copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_fallbackDefaultColorOptionName copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_defaultConfigAttributeName copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSArray *)self->_defaultGalleryColorNames copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSNumber *)self->_sensitivity copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [(NSNumber *)self->_isAddable copy];
  v16 = v4[6];
  v4[6] = v15;

  v17 = [(NSNumber *)self->_excludesDuotone copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSDictionary *)self->_migration copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSString *)self->_featureFlag copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(NSNumber *)self->_supportsSlider copy];
  v24 = v4[7];
  v4[7] = v23;

  v25 = [(NSNumber *)self->_sortedByHue copy];
  v26 = v4[11];
  v4[11] = v25;

  v27 = [(NSArray *)self->_exclusions copy];
  v28 = v4[12];
  v4[12] = v27;

  v29 = [(NSString *)self->_collectionOverride copy];
  v30 = v4[13];
  v4[13] = v29;

  v31 = [(NSNumber *)self->_sku copy];
  v32 = v4[14];
  v4[14] = v31;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = NTKEqualObjects(self->_defaultColorOptionName, v4[1]);
    v5 = v30;
    if (*(v30 + 24) == 1)
    {
      v6 = NTKEqualObjects(self->_fallbackDefaultColorOptionName, v4[2]);
      v5 = v30;
      *(v30 + 24) = v6;
      if (v6)
      {
        v7 = NTKEqualObjects(self->_defaultConfigAttributeName, v4[3]);
        v5 = v30;
        *(v30 + 24) = v7;
        if (v7)
        {
          v8 = NTKEqualObjects(self->_sensitivity, v4[5]);
          v5 = v30;
          *(v30 + 24) = v8;
          if (v8)
          {
            v9 = NTKEqualObjects(self->_isAddable, v4[6]);
            v5 = v30;
            *(v30 + 24) = v9;
            if (v9)
            {
              v10 = NTKEqualObjects(self->_supportsSlider, v4[7]);
              v5 = v30;
              *(v30 + 24) = v10;
              if (v10)
              {
                v11 = NTKEqualObjects(self->_featureFlag, v4[10]);
                v5 = v30;
                *(v30 + 24) = v11;
                if (v11)
                {
                  v12 = NTKEqualObjects(self->_sortedByHue, v4[11]);
                  v5 = v30;
                  *(v30 + 24) = v12;
                  if (v12)
                  {
                    v13 = NTKEqualObjects(self->_collectionOverride, v4[13]);
                    v5 = v30;
                    *(v30 + 24) = v13;
                    if (v13)
                    {
                      v14 = self->_excludesDuotone == v4[8];
                      *(v5 + 24) = v14;
                      if (v14)
                      {
                        v15 = [(NSArray *)self->_exclusions count];
                        v16 = [v4[12] count];
                        v5 = v30;
                        *(v30 + 24) = v15 == v16;
                        if (v15 == v16)
                        {
                          v17 = [(NSDictionary *)self->_migration count];
                          v18 = [v4[9] count];
                          *(v30 + 24) = v17 == v18;
                          if (v17 != v18)
                          {
                            goto LABEL_35;
                          }

                          v19 = 0;
                          while ([(NSArray *)self->_exclusions count]> v19)
                          {
                            v20 = [(NSArray *)self->_exclusions objectAtIndexedSubscript:v19];
                            v21 = [v4[12] objectAtIndexedSubscript:v19];
                            v22 = [v20 isEqualToString:v21];
                            *(v30 + 24) = v22;

                            v23 = 0;
                            ++v19;
                            if ((v30[3] & 1) == 0)
                            {
                              goto LABEL_31;
                            }
                          }

                          if (v30[3])
                          {
                            migration = self->_migration;
                            v26[0] = MEMORY[0x277D85DD0];
                            v26[1] = 3221225472;
                            v26[2] = __38__NTKPigmentCollectionConfig_isEqual___block_invoke;
                            v26[3] = &unk_278787438;
                            v27 = v4;
                            v28 = &v29;
                            [(NSDictionary *)migration enumerateKeysAndObjectsUsingBlock:v26];

                            v23 = *(v30 + 24);
                          }

                          else
                          {
LABEL_35:
                            v23 = 0;
                          }

                          goto LABEL_31;
                        }

LABEL_30:
                        v23 = 0;
                        *(v5 + 24) = 0;
LABEL_31:
                        _Block_object_dispose(&v29, 8);
                        goto LABEL_32;
                      }

LABEL_29:
                      *(v5 + 24) = 0;
                      goto LABEL_30;
                    }

LABEL_28:
                    *(v5 + 24) = 0;
                    goto LABEL_29;
                  }

LABEL_27:
                  *(v5 + 24) = 0;
                  goto LABEL_28;
                }

LABEL_26:
                *(v5 + 24) = 0;
                goto LABEL_27;
              }

LABEL_25:
              *(v5 + 24) = 0;
              goto LABEL_26;
            }

LABEL_24:
            *(v5 + 24) = 0;
            goto LABEL_25;
          }

LABEL_23:
          *(v5 + 24) = 0;
          goto LABEL_24;
        }

LABEL_22:
        *(v5 + 24) = 0;
        goto LABEL_23;
      }
    }

    else
    {
      *(v30 + 24) = 0;
    }

    *(v5 + 24) = 0;
    goto LABEL_22;
  }

  v23 = 0;
LABEL_32:

  return v23 & 1;
}

void __38__NTKPigmentCollectionConfig_isEqual___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 72);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  LOBYTE(a2) = NTKEqualObjects(v8, v9);

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  collectionOverride = self->_collectionOverride;
  defaultColorOptionName = self->_defaultColorOptionName;
  v5 = [(NSArray *)self->_defaultGalleryColorNames ntk_flatDescription];
  v6 = [v2 stringWithFormat:@"config [collectionOverride: %@, defaultColorOptionName:%@, defaultGalleryColorNames:%@]", collectionOverride, defaultColorOptionName, v5];

  return v6;
}

+ (id)collectionConfigFromProtoBuffer:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(NTKPigmentCollectionConfig);
    v5 = [v3 defaultColorOptionName];
    [(NTKPigmentCollectionConfig *)v4 setDefaultColorOptionName:v5];

    v6 = [v3 fallbackDefaultColorOptionName];
    [(NTKPigmentCollectionConfig *)v4 setFallbackDefaultColorOptionName:v6];

    v7 = [v3 defaultConfigAttributeName];
    [(NTKPigmentCollectionConfig *)v4 setDefaultConfigAttributeName:v7];

    if ([v3 hasSensitivity])
    {
      v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "sensitivity")}];
      [(NTKPigmentCollectionConfig *)v4 setSensitivity:v8];
    }

    if ([v3 hasIsAddable])
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isAddable")}];
      [(NTKPigmentCollectionConfig *)v4 setIsAddable:v9];
    }

    if ([v3 hasSupportsSlider])
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "supportsSlider")}];
      [(NTKPigmentCollectionConfig *)v4 setSupportsSlider:v10];
    }

    v11 = [v3 featureFlag];
    [(NTKPigmentCollectionConfig *)v4 setFeatureFlag:v11];

    if ([v3 hasSortedByHue])
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "sortedByHue")}];
      [(NTKPigmentCollectionConfig *)v4 setSortedByHue:v12];
    }

    if ([v3 hasExcludesDuotone])
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "excludesDuotone")}];
      [(NTKPigmentCollectionConfig *)v4 setExcludesDuotone:v13];
    }

    v14 = [v3 collectionOverride];
    [(NTKPigmentCollectionConfig *)v4 setCollectionOverride:v14];

    v15 = [v3 exclusions];
    [(NTKPigmentCollectionConfig *)v4 setExclusions:v15];

    v16 = [v3 migrations];

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "migrationsCount")}];
      v18 = [v3 migrations];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __62__NTKPigmentCollectionConfig_collectionConfigFromProtoBuffer___block_invoke;
      v22[3] = &unk_278787460;
      v23 = v17;
      v19 = v17;
      [v18 enumerateObjectsUsingBlock:v22];

      [(NTKPigmentCollectionConfig *)v4 setMigration:v19];
    }

    v20 = [v3 defaultGalleryColorNames];
    [(NTKPigmentCollectionConfig *)v4 setDefaultGalleryColorNames:v20];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __62__NTKPigmentCollectionConfig_collectionConfigFromProtoBuffer___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 from];
  if (v3)
  {
    v4 = v3;
    v5 = [v9 to];

    if (v5)
    {
      v6 = [v9 to];
      v7 = *(a1 + 32);
      v8 = [v9 from];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }
  }
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(NTKProtoPigmentCollectionConfig);
  v4 = [(NSString *)self->_defaultColorOptionName copy];
  [(NTKProtoPigmentCollectionConfig *)v3 setDefaultColorOptionName:v4];

  v5 = [(NSString *)self->_fallbackDefaultColorOptionName copy];
  [(NTKProtoPigmentCollectionConfig *)v3 setFallbackDefaultColorOptionName:v5];

  v6 = [(NSString *)self->_defaultConfigAttributeName copy];
  [(NTKProtoPigmentCollectionConfig *)v3 setDefaultConfigAttributeName:v6];

  sensitivity = self->_sensitivity;
  if (sensitivity)
  {
    [(NTKProtoPigmentCollectionConfig *)v3 setSensitivity:[(NSNumber *)sensitivity BOOLValue]];
  }

  isAddable = self->_isAddable;
  if (isAddable)
  {
    [(NTKProtoPigmentCollectionConfig *)v3 setIsAddable:[(NSNumber *)isAddable BOOLValue]];
  }

  supportsSlider = self->_supportsSlider;
  if (supportsSlider)
  {
    [(NTKProtoPigmentCollectionConfig *)v3 setSupportsSlider:[(NSNumber *)supportsSlider BOOLValue]];
  }

  [(NTKProtoPigmentCollectionConfig *)v3 setFeatureFlag:self->_featureFlag];
  sortedByHue = self->_sortedByHue;
  if (sortedByHue)
  {
    [(NTKProtoPigmentCollectionConfig *)v3 setSortedByHue:[(NSNumber *)sortedByHue BOOLValue]];
  }

  excludesDuotone = self->_excludesDuotone;
  if (excludesDuotone)
  {
    [(NTKProtoPigmentCollectionConfig *)v3 setExcludesDuotone:[(NSNumber *)excludesDuotone BOOLValue]];
  }

  v12 = [(NSArray *)self->_defaultGalleryColorNames copy];
  [(NTKProtoPigmentCollectionConfig *)v3 setDefaultGalleryColorNames:v12];

  v13 = [(NSArray *)self->_exclusions copy];
  [(NTKProtoPigmentCollectionConfig *)v3 setExclusions:v13];

  v14 = [(NSString *)self->_collectionOverride copy];
  [(NTKProtoPigmentCollectionConfig *)v3 setCollectionOverride:v14];

  migration = self->_migration;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__NTKPigmentCollectionConfig_protoBuffer__block_invoke;
  v18[3] = &unk_278787488;
  v16 = v3;
  v19 = v16;
  [(NSDictionary *)migration enumerateKeysAndObjectsUsingBlock:v18];

  return v16;
}

void __41__NTKPigmentCollectionConfig_protoBuffer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_alloc_init(NTKProtoMigration);
  v7 = [v6 copy];

  [(NTKProtoMigration *)v9 setFrom:v7];
  v8 = [v5 copy];

  [(NTKProtoMigration *)v9 setTo:v8];
  [*(a1 + 32) addMigration:v9];
}

@end