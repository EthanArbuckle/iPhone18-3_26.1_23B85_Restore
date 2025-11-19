@interface NTKFaceConfiguration
- (BOOL)isEqual:(id)a3;
- (NTKFaceConfiguration)init;
- (NTKFaceConfiguration)initWithCoder:(id)a3;
- (NTKFaceConfiguration)initWithJSONDictionary:(id)a3 editModeMapping:(id)a4 forDevice:(id)a5;
- (id)_dateMetricsKeys;
- (id)colorEditModeConfigurationWithJsonRepresentation:(id)a3 editMode:(int64_t)a4 editModeMapping:(id)a5 forDevice:(id)a6;
- (id)complicationForSlot:(id)a3;
- (id)complications;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customData;
- (id)customDataForKey:(id)a3;
- (id)description;
- (id)editModeConfigurations;
- (id)metricForKey:(id)a3;
- (id)metrics;
- (id)optionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)validationString;
- (unint64_t)hash;
- (void)_applyComplicationsDescription:(id)a3;
- (void)_applyCustomData:(id)a3;
- (void)_applyCustomizationDescription:(id)a3 editModeMapping:(id)a4 forDevice:(id)a5;
- (void)_applyMetrics:(id)a3;
- (void)_enumerateComplicationsWithBlock:(id)a3;
- (void)_enumerateCustomDataWithBlock:(id)a3;
- (void)_enumerateEditModeConfigurationsWithBlock:(id)a3;
- (void)_invalidateDescription;
- (void)addConfigurationKeysToJSONDictionary:(id)a3 face:(id)a4;
- (void)appendCustomDataToDailySnapshotKey:(id)a3;
- (void)appendEditModesToDailySnapshotKey:(id)a3;
- (void)clearMetrics;
- (void)encodeWithCoder:(id)a3;
- (void)incrementMetricForKey:(id)a3;
- (void)setComplication:(id)a3 forSlot:(id)a4;
- (void)setCustomData:(id)a3 forKey:(id)a4;
- (void)setCustomDataFromConfiguration:(id)a3;
- (void)setMetric:(id)a3 forKey:(id)a4;
- (void)setMetricsFromConfiguration:(id)a3;
- (void)setOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
@end

@implementation NTKFaceConfiguration

- (NTKFaceConfiguration)init
{
  v12.receiver = self;
  v12.super_class = NTKFaceConfiguration;
  v2 = [(NTKFaceConfiguration *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    complications = v2->_complications;
    v2->_complications = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    editModeConfigurations = v2->_editModeConfigurations;
    v2->_editModeConfigurations = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metrics = v2->_metrics;
    v2->_metrics = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    customData = v2->_customData;
    v2->_customData = v9;

    *&v2->_complicationsLock._os_unfair_lock_opaque = 0;
    *&v2->_metricsLock._os_unfair_lock_opaque = 0;
    *&v2->_cachedDescriptionLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)optionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_editModeConfigurationsLock);
  editModeConfigurations = self->_editModeConfigurations;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [(NSMutableDictionary *)editModeConfigurations objectForKey:v8];

  v10 = [v9 editOptionForSlot:v6];

  os_unfair_lock_unlock(&self->_editModeConfigurationsLock);

  return v10;
}

- (void)setOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14 = a3;
  v8 = a5;
  os_unfair_lock_lock(&self->_editModeConfigurationsLock);
  editModeConfigurations = self->_editModeConfigurations;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v11 = [(NSMutableDictionary *)editModeConfigurations objectForKey:v10];

  if (!v11)
  {
    v11 = objc_alloc_init(NTKEditModeConfiguration);
    v12 = self->_editModeConfigurations;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v12 setObject:v11 forKey:v13];
  }

  [(NTKEditModeConfiguration *)v11 setEditOption:v14 forSlot:v8];
  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_editModeConfigurationsLock);
}

- (id)complicationForSlot:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_complicationsLock);
  v5 = [(NSMutableDictionary *)self->_complications objectForKey:v4];

  os_unfair_lock_unlock(&self->_complicationsLock);

  return v5;
}

- (void)setComplication:(id)a3 forSlot:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_complicationsLock);
  complications = self->_complications;
  if (v8)
  {
    [(NSMutableDictionary *)complications setObject:v8 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)complications removeObjectForKey:v6];
  }

  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_complicationsLock);
}

- (id)description
{
  os_unfair_lock_lock(&self->_descriptionLock);
  os_unfair_lock_lock(&self->_cachedDescriptionLock);
  v3 = self->_cachedDescription;
  os_unfair_lock_unlock(&self->_cachedDescriptionLock);
  if (!v3)
  {
    v3 = [(NTKFaceConfiguration *)self validationString];
    os_unfair_lock_lock(&self->_cachedDescriptionLock);
    objc_storeStrong(&self->_cachedDescription, v3);
    os_unfair_lock_unlock(&self->_cachedDescriptionLock);
  }

  os_unfair_lock_unlock(&self->_descriptionLock);

  return v3;
}

- (void)_invalidateDescription
{
  os_unfair_lock_lock(&self->_cachedDescriptionLock);
  cachedDescription = self->_cachedDescription;
  self->_cachedDescription = 0;

  os_unfair_lock_unlock(&self->_cachedDescriptionLock);
}

- (id)validationString
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  if (self->_resourceDirectoryExists)
  {
    [v3 appendString:@"resource-directory "];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v5 = objc_autoreleasePoolPush();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__NTKFaceConfiguration_validationString__block_invoke;
  v25[3] = &unk_278786CB0;
  v27 = &v28;
  v6 = v4;
  v26 = v6;
  [(NTKFaceConfiguration *)self _enumerateEditModeConfigurationsWithBlock:v25];

  objc_autoreleasePoolPop(v5);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = objc_autoreleasePoolPush();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__NTKFaceConfiguration_validationString__block_invoke_2;
  v18[3] = &unk_278786CD8;
  v20 = &v21;
  v8 = v6;
  v19 = v8;
  [(NTKFaceConfiguration *)self _enumerateComplicationsWithBlock:v18];
  if (*(v22 + 24) == 1)
  {
    [v8 appendString:@">"];
  }

  objc_autoreleasePoolPop(v7);
  *(v29 + 24) = 0;
  v9 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __40__NTKFaceConfiguration_validationString__block_invoke_3;
  v15 = &unk_278786D00;
  v17 = &v28;
  v10 = v8;
  v16 = v10;
  [(NTKFaceConfiguration *)self _enumerateCustomDataWithBlock:&v12];
  if (*(v29 + 24) == 1)
  {
    [v10 appendString:{@">", v12, v13, v14, v15}];
  }

  objc_autoreleasePoolPop(v9);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v28, 8);

  return v10;
}

void __40__NTKFaceConfiguration_validationString__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  else
  {
    *(v4 + 24) = 1;
  }

  v5 = *(a1 + 32);
  v6 = [v7 description];
  [v5 appendFormat:@"%@", v6];
}

void __40__NTKFaceConfiguration_validationString__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = a3;
  v8 = a2;
  if (v6 == 1)
  {
    [v5 appendString:{@", "}];
  }

  else
  {
    [v5 appendString:@" <"];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  [*(a1 + 32) appendFormat:@"%@:%@", v8, v7];
}

void __40__NTKFaceConfiguration_validationString__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v6 appendString:{@", "}];
  }

  else
  {
    [v6 appendString:@" custom-data<"];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 description];
  }

  else
  {
    v7 = @"#";
  }

  [*(a1 + 32) appendFormat:@"%@:%@", v8, v7];
}

- (void)appendEditModesToDailySnapshotKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__NTKFaceConfiguration_appendEditModesToDailySnapshotKey___block_invoke;
  v6[3] = &unk_278786D28;
  v7 = v4;
  v5 = v4;
  [(NTKFaceConfiguration *)self _enumerateEditModeConfigurationsWithBlock:v6];
}

void __58__NTKFaceConfiguration_appendEditModesToDailySnapshotKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 dailySnapshotKey];
  v5 = v4;
  v6 = &stru_284110E98;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [*(a1 + 32) appendFormat:@"(%@)", v7];
}

- (void)appendCustomDataToDailySnapshotKey:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKFaceConfiguration *)self customData];
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 objectForKey:*(*(&v15 + 1) + 8 * v12)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 appendFormat:@"(%@)", v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 stringValue];
            [v4 appendFormat:@"(%@)", v14];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)metricForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_metricsLock);
  v5 = [(NSMutableDictionary *)self->_metrics objectForKey:v4];

  os_unfair_lock_unlock(&self->_metricsLock);

  return v5;
}

- (void)setMetric:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_metricsLock);
  [(NSMutableDictionary *)self->_metrics setObject:v7 forKey:v6];

  [(NTKFaceConfiguration *)self _invalidateDescription];

  os_unfair_lock_unlock(&self->_metricsLock);
}

- (void)incrementMetricForKey:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_metricsLock);
  v4 = [(NSMutableDictionary *)self->_metrics objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_metrics setObject:v5 forKey:v6];
  }

  else if (!v4)
  {
    [(NSMutableDictionary *)self->_metrics setObject:&unk_2841859F8 forKey:v6];
  }

  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_metricsLock);
}

- (void)setMetricsFromConfiguration:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_metricsLock);
  if (a3)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  metrics = self->_metrics;
  self->_metrics = v6;

  [(NTKFaceConfiguration *)self _invalidateDescription];

  os_unfair_lock_unlock(&self->_metricsLock);
}

- (void)clearMetrics
{
  os_unfair_lock_lock(&self->_metricsLock);
  [(NSMutableDictionary *)self->_metrics removeAllObjects];
  [(NTKFaceConfiguration *)self _invalidateDescription];

  os_unfair_lock_unlock(&self->_metricsLock);
}

- (void)_enumerateEditModeConfigurationsWithBlock:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKFaceConfiguration *)self editModeConfigurations];
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      v14 = [v13 integerValue];
      v15 = [v5 objectForKey:v13];
      v4[2](v4, v14, v15, &v20);

      if (v20)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_enumerateCustomDataWithBlock:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_customDataLock);
  v5 = [(NSMutableDictionary *)self->_customData copy];
  os_unfair_lock_unlock(&self->_customDataLock);
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      v14 = [v5 objectForKeyedSubscript:{v13, v15}];
      v4[2](v4, v13, v14, &v19);

      if (v19)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_enumerateComplicationsWithBlock:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKFaceConfiguration *)self complications];
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      v14 = [v5 objectForKey:{v13, v15}];
      v4[2](v4, v13, v14, &v19);

      if (v19)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setName:self->_name];
  [v4 setResourceDirectoryExists:self->_resourceDirectoryExists];
  os_unfair_lock_lock(&self->_metricsLock);
  v5 = [(NSMutableDictionary *)self->_metrics mutableCopy];
  v6 = v4[3];
  v4[3] = v5;

  os_unfair_lock_unlock(&self->_metricsLock);
  os_unfair_lock_lock(&self->_customDataLock);
  v7 = [(NSMutableDictionary *)self->_customData mutableCopy];
  v8 = v4[4];
  v4[4] = v7;

  os_unfair_lock_unlock(&self->_customDataLock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__NTKFaceConfiguration_copyWithZone___block_invoke;
  v19[3] = &unk_278780708;
  v9 = v4;
  v20 = v9;
  [(NTKFaceConfiguration *)self _enumerateComplicationsWithBlock:v19];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __37__NTKFaceConfiguration_copyWithZone___block_invoke_2;
  v17 = &unk_278786D28;
  v10 = v9;
  v18 = v10;
  [(NTKFaceConfiguration *)self _enumerateEditModeConfigurationsWithBlock:&v14];
  [v10 _invalidateDescription];
  v11 = v18;
  v12 = v10;

  return v12;
}

void __37__NTKFaceConfiguration_copyWithZone___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__NTKFaceConfiguration_copyWithZone___block_invoke_3;
  v7[3] = &unk_278783520;
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = a2;
  v6 = v5;
  [v6 enumerateSlotsWithBlock:v7];
}

void __37__NTKFaceConfiguration_copyWithZone___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 editOptionForSlot:v5];
  [v3 setOption:v6 forCustomEditMode:a1[6] slot:v5];
}

- (id)complications
{
  os_unfair_lock_lock(&self->_complicationsLock);
  v3 = [(NSMutableDictionary *)self->_complications copy];
  os_unfair_lock_unlock(&self->_complicationsLock);

  return v3;
}

- (id)editModeConfigurations
{
  os_unfair_lock_lock(&self->_editModeConfigurationsLock);
  v3 = [(NSMutableDictionary *)self->_editModeConfigurations copy];
  os_unfair_lock_unlock(&self->_editModeConfigurationsLock);

  return v3;
}

- (id)metrics
{
  os_unfair_lock_lock(&self->_metricsLock);
  v3 = [(NSMutableDictionary *)self->_metrics copy];
  os_unfair_lock_unlock(&self->_metricsLock);

  return v3;
}

- (id)customData
{
  os_unfair_lock_lock(&self->_customDataLock);
  v3 = [(NSMutableDictionary *)self->_customData copy];
  os_unfair_lock_unlock(&self->_customDataLock);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && NTKEqualObjects(self->_name, v4[10]) && self->_resourceDirectoryExists == *(v4 + 72))
  {
    v5 = [(NTKFaceConfiguration *)self metrics];
    v6 = [v4 metrics];
    if (NTKEqualObjects(v5, v6))
    {
      v7 = [(NTKFaceConfiguration *)self customData];
      v8 = [v4 customData];
      if (NTKEqualObjects(v7, v8))
      {
        v9 = [(NTKFaceConfiguration *)self complications];
        v10 = [v4 complications];
        if (NTKEqualObjects(v9, v10))
        {
          v11 = [(NTKFaceConfiguration *)self editModeConfigurations];
          v12 = [v4 editModeConfigurations];
          v13 = NTKEqualObjects(v11, v12);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NTKFaceConfiguration *)self complications];
  v5 = [v4 hash];
  v6 = [(NTKFaceConfiguration *)self editModeConfigurations];
  v7 = v5 + [v6 hash] + self->_resourceDirectoryExists + v3;
  v8 = [(NTKFaceConfiguration *)self metrics];
  v9 = [v8 hash];
  v10 = [(NTKFaceConfiguration *)self customData];
  v11 = v9 + [v10 hash];

  return v7 + v11;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"Name"];
  [v5 encodeBool:self->_resourceDirectoryExists forKey:@"ResourceDirectoryExists"];
  v6 = [(NTKFaceConfiguration *)self metrics];
  v7 = [v6 mutableCopy];
  [v5 encodeObject:v7 forKey:@"Metrics"];

  v8 = [(NTKFaceConfiguration *)self customData];
  v9 = [v8 mutableCopy];
  [v5 encodeObject:v9 forKey:@"CustomData"];

  v10 = [(NTKFaceConfiguration *)self editModeConfigurations];
  v11 = [v10 mutableCopy];
  [v5 encodeObject:v11 forKey:@"EditModeConfigurations"];

  v13 = [(NTKFaceConfiguration *)self complications];
  v12 = [v13 mutableCopy];
  [v5 encodeObject:v12 forKey:@"Complications"];
}

- (NTKFaceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = NTKFaceConfiguration;
  v5 = [(NTKFaceConfiguration *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_resourceDirectoryExists = [v4 decodeBoolForKey:@"ResourceDirectoryExists"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"Metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];

    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"CustomData"];
    customData = v5->_customData;
    v5->_customData = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];

    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"EditModeConfigurations"];
    editModeConfigurations = v5->_editModeConfigurations;
    v5->_editModeConfigurations = v25;

    v27 = v5->_editModeConfigurations;
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    NTKValidateDictionary(v27, v28, v29);
    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v30 setWithObjects:{v31, v32, v33, v34, v35, objc_opt_class(), 0}];

    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"Complications"];
    complications = v5->_complications;
    v5->_complications = v37;

    v39 = v5->_complications;
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    NTKValidateDictionary(v39, v40, v41);
  }

  return v5;
}

- (void)addConfigurationKeysToJSONDictionary:(id)a3 face:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setObject:self->_name forKeyedSubscript:@"face name"];
  if (self->_resourceDirectoryExists)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v6 setObject:v8 forKeyedSubscript:@"resource directory"];
  }

  v9 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke;
  aBlock[3] = &unk_278786D50;
  v10 = v9;
  v37 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(NTKFaceConfiguration *)self metrics];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_2;
  v33[3] = &unk_278786D78;
  v33[4] = self;
  v13 = v11;
  v35 = v13;
  v14 = v10;
  v34 = v14;
  [v12 enumerateKeysAndObjectsUsingBlock:v33];

  if ([v14 count])
  {
    [v6 setObject:v14 forKeyedSubscript:@"metrics"];
  }

  v15 = objc_opt_new();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_3;
  v30[3] = &unk_278786DA0;
  v16 = v15;
  v31 = v16;
  v17 = v7;
  v32 = v17;
  [(NTKFaceConfiguration *)self _enumerateEditModeConfigurationsWithBlock:v30];
  if ([v16 count])
  {
    [v6 setObject:v16 forKeyedSubscript:@"customization"];
  }

  v18 = objc_opt_new();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_4;
  v28[3] = &unk_278780708;
  v19 = v18;
  v29 = v19;
  [(NTKFaceConfiguration *)self _enumerateComplicationsWithBlock:v28];
  if ([v19 count])
  {
    [v6 setObject:v19 forKeyedSubscript:@"complications"];
  }

  v20 = objc_opt_new();
  v21 = [(NTKFaceConfiguration *)self customData];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_5;
  v26 = &unk_278786DC8;
  v22 = v20;
  v27 = v22;
  [v21 enumerateKeysAndObjectsUsingBlock:&v23];

  if ([v22 count])
  {
    [v6 setObject:v22 forKeyedSubscript:@"customData"];
  }
}

void __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSince1970];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v6 setObject:v7 forKey:v8];
  }
}

void __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 _dateMetricsKeys];
  LODWORD(v5) = [v7 containsObject:v8];

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) setObject:v6 forKey:v8];
  }
}

void __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = NTKFaceBundleStringFromCustomEditMode(a2);
  v6 = [v5 JSONObjectRepresentationForFace:*(a1 + 40)];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 JSONObjectRepresentation];
  v6 = *(a1 + 32);
  v7 = NTKFaceBundleStringFromComplicationSlot(v5);

  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (NTKFaceConfiguration)initWithJSONDictionary:(id)a3 editModeMapping:(id)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NTKFaceConfiguration *)self init];
  if (v11)
  {
    v25 = v10;
    v26 = v9;
    v12 = [v8 objectForKeyedSubscript:@"face name"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [NTKFaceConfiguration initWithJSONDictionary:editModeMapping:forDevice:];
        }

        v12 = 0;
      }
    }

    objc_storeStrong(&v11->_name, v12);
    v14 = [v8 objectForKeyedSubscript:@"resource directory"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [NTKFaceConfiguration initWithJSONDictionary:editModeMapping:forDevice:];
        }
      }
    }

    v11->_resourceDirectoryExists = [v14 BOOLValue];
    v16 = [v8 objectForKeyedSubscript:@"metrics"];
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [NTKFaceConfiguration initWithJSONDictionary:editModeMapping:forDevice:];
        }

        v16 = 0;
      }
    }

    [(NTKFaceConfiguration *)v11 _applyMetrics:v16];
    v18 = [v8 objectForKeyedSubscript:@"customData"];
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [NTKFaceConfiguration initWithJSONDictionary:editModeMapping:forDevice:];
        }

        v18 = 0;
      }
    }

    [(NTKFaceConfiguration *)v11 _applyCustomData:v18];
    v20 = [v8 objectForKeyedSubscript:@"customization"];
    if (v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [NTKFaceConfiguration initWithJSONDictionary:editModeMapping:forDevice:];
        }

        v20 = 0;
      }
    }

    [(NTKFaceConfiguration *)v11 _applyCustomizationDescription:v20 editModeMapping:v26 forDevice:v25];
    v22 = [v8 objectForKeyedSubscript:@"complications"];
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [NTKFaceConfiguration initWithJSONDictionary:editModeMapping:forDevice:];
        }

        v22 = 0;
      }
    }

    [(NTKFaceConfiguration *)v11 _applyComplicationsDescription:v22];

    v10 = v25;
    v9 = v26;
  }

  return v11;
}

- (void)_applyCustomizationDescription:(id)a3 editModeMapping:(id)a4 forDevice:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v26 = a4;
  v25 = a5;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [(__CFString *)v8 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v12 = *v29;
    *&v11 = 138412802;
    v24 = v11;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = 0;
          if (NTKFaceBundleGetCustomEditModeFromString(v14, &v27))
          {
            v15 = [(__CFString *)v8 objectForKey:v14, v24];
            if (v27 == 10)
            {
              v16 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v33 = v8;
                _os_log_debug_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEBUG, "applying color option %{public}@", buf, 0xCu);
              }

              v17 = [(NTKFaceConfiguration *)self colorEditModeConfigurationWithJsonRepresentation:v15 editMode:v27 editModeMapping:v26 forDevice:v25];
LABEL_19:
              p_super = &v17->super;
              os_unfair_lock_lock(&self->_editModeConfigurationsLock);
              editModeConfigurations = self->_editModeConfigurations;
              v22 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
              [(NSMutableDictionary *)editModeConfigurations setObject:p_super forKeyedSubscript:v22];

              [(NTKFaceConfiguration *)self _invalidateDescription];
              os_unfair_lock_unlock(&self->_editModeConfigurationsLock);
            }

            else
            {
              v19 = [v26 editOptionClassFromEditMode:v27 resourceDirectoryExists:self->_resourceDirectoryExists];
              if (v19)
              {
                v17 = [[NTKEditModeConfiguration alloc] initWithJSONObjectRepresentation:v15 editOptionClass:v19 forDevice:v25];
                goto LABEL_19;
              }

              p_super = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
              if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v33 = @"customization";
                v34 = 2112;
                v35 = v14;
                _os_log_error_impl(&dword_22D9C5000, p_super, OS_LOG_TYPE_ERROR, "Face bundle warning: invalid key in %@ dictionary: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v15 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v33 = @"customization";
              v34 = 2112;
              v35 = v14;
              _os_log_error_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_ERROR, "Face bundle warning: invalid key in %@ dictionary: %@", buf, 0x16u);
            }
          }

          goto LABEL_22;
        }

        v18 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v33 = @"customization";
          v34 = 2112;
          v35 = v14;
          _os_log_error_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_ERROR, "Face bundle warning: keys in %@ dictionary must be strings - invalid key: %@", buf, 0x16u);
        }

LABEL_22:
        ++v13;
      }

      while (v10 != v13);
      v23 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      v10 = v23;
    }

    while (v23);
  }
}

- (id)colorEditModeConfigurationWithJsonRepresentation:(id)a3 editMode:(int64_t)a4 editModeMapping:(id)a5 forDevice:(id)a6
{
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__NTKFaceConfiguration_colorEditModeConfigurationWithJsonRepresentation_editMode_editModeMapping_forDevice___block_invoke;
  aBlock[3] = &unk_278786DF0;
  v19 = self;
  v20 = a4;
  v18 = v10;
  v11 = v10;
  v12 = a6;
  v13 = a3;
  v14 = _Block_copy(aBlock);
  v15 = [[NTKEditModeConfiguration alloc] initWithJSONObjectRepresentation:v13 device:v12 editOptionFactory:v14];

  return v15;
}

id __108__NTKFaceConfiguration_colorEditModeConfigurationWithJsonRepresentation_editMode_editModeMapping_forDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) deviceSupportsPigmentEditOption];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 72);
  if (v7)
  {
    v11 = [objc_alloc(objc_msgSend(v9 editOptionClassFromEditMode:v8 resourceDirectoryExists:{v10)), "initWithJSONObjectRepresentation:forDevice:", v5, v6}];
    if (!v11)
    {
      v12 = [objc_alloc(objc_msgSend(*(a1 + 32) legacyEditOptionClassFromCustomEditMode:*(a1 + 48) resourceDirectoryExists:{*(*(a1 + 40) + 72))), "initWithJSONObjectRepresentation:forDevice:", v5, v6}];
      if ([v12 conformsToProtocol:&unk_28A87B948])
      {
        v13 = [v12 pigmentEditOption];
      }

      else
      {
        v13 = v12;
      }

      v11 = v13;
    }
  }

  else
  {
    v11 = [objc_alloc(objc_msgSend(v9 editOptionClassFromEditMode:v8 resourceDirectoryExists:{v10)), "initWithJSONObjectRepresentation:forDevice:", v5, v6}];
  }

  return v11;
}

- (void)_applyComplicationsDescription:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = a3;
  v3 = [v14 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = 0;
          ComplicationSlotFromString = NTKFaceBundleGetComplicationSlotFromString(v7, &v15);
          v9 = v15;
          if (ComplicationSlotFromString)
          {
            v10 = [v14 objectForKey:v7];
            v11 = [NTKComplication complicationWithJSONObjectRepresentation:v10];
            [(NSMutableDictionary *)self->_complications setObject:v11 forKeyedSubscript:v9];
          }

          else
          {
            v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v21 = @"complications";
              v22 = 2112;
              v23 = v7;
              _os_log_error_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_ERROR, "Face bundle warning: invalid key in %@ dictionary: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v21 = @"complications";
            v22 = 2112;
            v23 = v7;
            _os_log_error_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_ERROR, "Face bundle warning: keys in '%@' dictionary must be strings - invalid key: %@", buf, 0x16u);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }
}

- (void)_applyMetrics:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_opt_new();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__NTKFaceConfiguration__applyMetrics___block_invoke;
    aBlock[3] = &unk_278786D50;
    v6 = v5;
    v20 = v6;
    v7 = _Block_copy(aBlock);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __38__NTKFaceConfiguration__applyMetrics___block_invoke_2;
    v15 = &unk_278786D78;
    v16 = self;
    v18 = v7;
    v8 = v6;
    v17 = v8;
    v9 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:&v12];

    os_unfair_lock_lock(&self->_metricsLock);
    metrics = self->_metrics;
    self->_metrics = v8;
    v11 = v8;

    [(NTKFaceConfiguration *)self _invalidateDescription:v12];
    os_unfair_lock_unlock(&self->_metricsLock);
  }
}

void __38__NTKFaceConfiguration__applyMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 doubleValue];
    if (v6 > 0.0)
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
      [*(a1 + 32) setObject:v7 forKey:v8];
    }
  }
}

void __38__NTKFaceConfiguration__applyMetrics___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _dateMetricsKeys];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) setObject:v6 forKey:v5];
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __38__NTKFaceConfiguration__applyMetrics___block_invoke_2_cold_1(v6, v9);
      }
    }
  }
}

- (void)_applyCustomData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_customDataLock);
  v5 = [v4 mutableCopy];

  customData = self->_customData;
  self->_customData = v5;

  [(NTKFaceConfiguration *)self _invalidateDescription];

  os_unfair_lock_unlock(&self->_customDataLock);
}

- (id)_dateMetricsKeys
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"dateCreated";
  v4[1] = @"dateLastEdited";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)customDataForKey:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceConfiguration *)self customData];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setCustomData:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_customDataLock);
  customData = self->_customData;
  if (v8)
  {
    [(NSMutableDictionary *)customData setObject:v8 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)customData removeObjectForKey:v6];
  }

  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_customDataLock);
}

- (void)setCustomDataFromConfiguration:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_customDataLock);
  [(NSMutableDictionary *)self->_customData removeAllObjects];
  v5 = v4[4];

  if (v5)
  {
    [(NSMutableDictionary *)self->_customData addEntriesFromDictionary:v5];
  }

  [(NTKFaceConfiguration *)self _invalidateDescription];

  os_unfair_lock_unlock(&self->_customDataLock);
}

void __108__NTKFaceConfiguration_colorEditModeConfigurationWithJsonRepresentation_editMode_editModeMapping_forDevice___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "Could not create a color option with class %{public}@, %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __38__NTKFaceConfiguration__applyMetrics___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Face metrics warning: allowableTypes does not contain metric:%@", &v2, 0xCu);
}

@end