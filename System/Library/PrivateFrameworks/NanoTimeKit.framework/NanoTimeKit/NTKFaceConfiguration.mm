@interface NTKFaceConfiguration
- (BOOL)isEqual:(id)equal;
- (NTKFaceConfiguration)init;
- (NTKFaceConfiguration)initWithCoder:(id)coder;
- (NTKFaceConfiguration)initWithJSONDictionary:(id)dictionary editModeMapping:(id)mapping forDevice:(id)device;
- (id)_dateMetricsKeys;
- (id)colorEditModeConfigurationWithJsonRepresentation:(id)representation editMode:(int64_t)mode editModeMapping:(id)mapping forDevice:(id)device;
- (id)complicationForSlot:(id)slot;
- (id)complications;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customData;
- (id)customDataForKey:(id)key;
- (id)description;
- (id)editModeConfigurations;
- (id)metricForKey:(id)key;
- (id)metrics;
- (id)optionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)validationString;
- (unint64_t)hash;
- (void)_applyComplicationsDescription:(id)description;
- (void)_applyCustomData:(id)data;
- (void)_applyCustomizationDescription:(id)description editModeMapping:(id)mapping forDevice:(id)device;
- (void)_applyMetrics:(id)metrics;
- (void)_enumerateComplicationsWithBlock:(id)block;
- (void)_enumerateCustomDataWithBlock:(id)block;
- (void)_enumerateEditModeConfigurationsWithBlock:(id)block;
- (void)_invalidateDescription;
- (void)addConfigurationKeysToJSONDictionary:(id)dictionary face:(id)face;
- (void)appendCustomDataToDailySnapshotKey:(id)key;
- (void)appendEditModesToDailySnapshotKey:(id)key;
- (void)clearMetrics;
- (void)encodeWithCoder:(id)coder;
- (void)incrementMetricForKey:(id)key;
- (void)setComplication:(id)complication forSlot:(id)slot;
- (void)setCustomData:(id)data forKey:(id)key;
- (void)setCustomDataFromConfiguration:(id)configuration;
- (void)setMetric:(id)metric forKey:(id)key;
- (void)setMetricsFromConfiguration:(id)configuration;
- (void)setOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
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

- (id)optionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  os_unfair_lock_lock(&self->_editModeConfigurationsLock);
  editModeConfigurations = self->_editModeConfigurations;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v9 = [(NSMutableDictionary *)editModeConfigurations objectForKey:v8];

  v10 = [v9 editOptionForSlot:slotCopy];

  os_unfair_lock_unlock(&self->_editModeConfigurationsLock);

  return v10;
}

- (void)setOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  os_unfair_lock_lock(&self->_editModeConfigurationsLock);
  editModeConfigurations = self->_editModeConfigurations;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v11 = [(NSMutableDictionary *)editModeConfigurations objectForKey:v10];

  if (!v11)
  {
    v11 = objc_alloc_init(NTKEditModeConfiguration);
    v12 = self->_editModeConfigurations;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
    [(NSMutableDictionary *)v12 setObject:v11 forKey:v13];
  }

  [(NTKEditModeConfiguration *)v11 setEditOption:optionCopy forSlot:slotCopy];
  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_editModeConfigurationsLock);
}

- (id)complicationForSlot:(id)slot
{
  slotCopy = slot;
  os_unfair_lock_lock(&self->_complicationsLock);
  v5 = [(NSMutableDictionary *)self->_complications objectForKey:slotCopy];

  os_unfair_lock_unlock(&self->_complicationsLock);

  return v5;
}

- (void)setComplication:(id)complication forSlot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  os_unfair_lock_lock(&self->_complicationsLock);
  complications = self->_complications;
  if (complicationCopy)
  {
    [(NSMutableDictionary *)complications setObject:complicationCopy forKey:slotCopy];
  }

  else
  {
    [(NSMutableDictionary *)complications removeObjectForKey:slotCopy];
  }

  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_complicationsLock);
}

- (id)description
{
  os_unfair_lock_lock(&self->_descriptionLock);
  os_unfair_lock_lock(&self->_cachedDescriptionLock);
  validationString = self->_cachedDescription;
  os_unfair_lock_unlock(&self->_cachedDescriptionLock);
  if (!validationString)
  {
    validationString = [(NTKFaceConfiguration *)self validationString];
    os_unfair_lock_lock(&self->_cachedDescriptionLock);
    objc_storeStrong(&self->_cachedDescription, validationString);
    os_unfair_lock_unlock(&self->_cachedDescriptionLock);
  }

  os_unfair_lock_unlock(&self->_descriptionLock);

  return validationString;
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
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (self->_resourceDirectoryExists)
  {
    [string appendString:@"resource-directory "];
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

- (void)appendEditModesToDailySnapshotKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__NTKFaceConfiguration_appendEditModesToDailySnapshotKey___block_invoke;
  v6[3] = &unk_278786D28;
  v7 = keyCopy;
  v5 = keyCopy;
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

- (void)appendCustomDataToDailySnapshotKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  customData = [(NTKFaceConfiguration *)self customData];
  allKeys = [customData allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

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

        v13 = [customData objectForKey:*(*(&v15 + 1) + 8 * v12)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [keyCopy appendFormat:@"(%@)", v13];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringValue = [v13 stringValue];
            [keyCopy appendFormat:@"(%@)", stringValue];
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

- (id)metricForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_metricsLock);
  v5 = [(NSMutableDictionary *)self->_metrics objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_metricsLock);

  return v5;
}

- (void)setMetric:(id)metric forKey:(id)key
{
  keyCopy = key;
  metricCopy = metric;
  os_unfair_lock_lock(&self->_metricsLock);
  [(NSMutableDictionary *)self->_metrics setObject:metricCopy forKey:keyCopy];

  [(NTKFaceConfiguration *)self _invalidateDescription];

  os_unfair_lock_unlock(&self->_metricsLock);
}

- (void)incrementMetricForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_metricsLock);
  v4 = [(NSMutableDictionary *)self->_metrics objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_metrics setObject:v5 forKey:keyCopy];
  }

  else if (!v4)
  {
    [(NSMutableDictionary *)self->_metrics setObject:&unk_2841859F8 forKey:keyCopy];
  }

  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_metricsLock);
}

- (void)setMetricsFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_metricsLock);
  if (configuration)
  {
    v6 = configurationCopy[3];
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

- (void)_enumerateEditModeConfigurationsWithBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  editModeConfigurations = [(NTKFaceConfiguration *)self editModeConfigurations];
  allKeys = [editModeConfigurations allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
      integerValue = [v13 integerValue];
      v15 = [editModeConfigurations objectForKey:v13];
      blockCopy[2](blockCopy, integerValue, v15, &v20);

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

- (void)_enumerateCustomDataWithBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_lock(&self->_customDataLock);
  v5 = [(NSMutableDictionary *)self->_customData copy];
  os_unfair_lock_unlock(&self->_customDataLock);
  allKeys = [v5 allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
      blockCopy[2](blockCopy, v13, v14, &v19);

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

- (void)_enumerateComplicationsWithBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  complications = [(NTKFaceConfiguration *)self complications];
  allKeys = [complications allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
      v14 = [complications objectForKey:{v13, v15}];
      blockCopy[2](blockCopy, v13, v14, &v19);

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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && NTKEqualObjects(self->_name, equalCopy[10]) && self->_resourceDirectoryExists == *(equalCopy + 72))
  {
    metrics = [(NTKFaceConfiguration *)self metrics];
    metrics2 = [equalCopy metrics];
    if (NTKEqualObjects(metrics, metrics2))
    {
      customData = [(NTKFaceConfiguration *)self customData];
      customData2 = [equalCopy customData];
      if (NTKEqualObjects(customData, customData2))
      {
        complications = [(NTKFaceConfiguration *)self complications];
        complications2 = [equalCopy complications];
        if (NTKEqualObjects(complications, complications2))
        {
          editModeConfigurations = [(NTKFaceConfiguration *)self editModeConfigurations];
          editModeConfigurations2 = [equalCopy editModeConfigurations];
          v13 = NTKEqualObjects(editModeConfigurations, editModeConfigurations2);
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
  complications = [(NTKFaceConfiguration *)self complications];
  v5 = [complications hash];
  editModeConfigurations = [(NTKFaceConfiguration *)self editModeConfigurations];
  v7 = v5 + [editModeConfigurations hash] + self->_resourceDirectoryExists + v3;
  metrics = [(NTKFaceConfiguration *)self metrics];
  v9 = [metrics hash];
  customData = [(NTKFaceConfiguration *)self customData];
  v11 = v9 + [customData hash];

  return v7 + v11;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"Name"];
  [coderCopy encodeBool:self->_resourceDirectoryExists forKey:@"ResourceDirectoryExists"];
  metrics = [(NTKFaceConfiguration *)self metrics];
  v7 = [metrics mutableCopy];
  [coderCopy encodeObject:v7 forKey:@"Metrics"];

  customData = [(NTKFaceConfiguration *)self customData];
  v9 = [customData mutableCopy];
  [coderCopy encodeObject:v9 forKey:@"CustomData"];

  editModeConfigurations = [(NTKFaceConfiguration *)self editModeConfigurations];
  v11 = [editModeConfigurations mutableCopy];
  [coderCopy encodeObject:v11 forKey:@"EditModeConfigurations"];

  complications = [(NTKFaceConfiguration *)self complications];
  v12 = [complications mutableCopy];
  [coderCopy encodeObject:v12 forKey:@"Complications"];
}

- (NTKFaceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = NTKFaceConfiguration;
  v5 = [(NTKFaceConfiguration *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_resourceDirectoryExists = [coderCopy decodeBoolForKey:@"ResourceDirectoryExists"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];

    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"CustomData"];
    customData = v5->_customData;
    v5->_customData = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];

    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"EditModeConfigurations"];
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

    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"Complications"];
    complications = v5->_complications;
    v5->_complications = v37;

    v39 = v5->_complications;
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    NTKValidateDictionary(v39, v40, v41);
  }

  return v5;
}

- (void)addConfigurationKeysToJSONDictionary:(id)dictionary face:(id)face
{
  dictionaryCopy = dictionary;
  faceCopy = face;
  [dictionaryCopy setObject:self->_name forKeyedSubscript:@"face name"];
  if (self->_resourceDirectoryExists)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionaryCopy setObject:v8 forKeyedSubscript:@"resource directory"];
  }

  v9 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke;
  aBlock[3] = &unk_278786D50;
  v10 = v9;
  v37 = v10;
  v11 = _Block_copy(aBlock);
  metrics = [(NTKFaceConfiguration *)self metrics];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_2;
  v33[3] = &unk_278786D78;
  v33[4] = self;
  v13 = v11;
  v35 = v13;
  v14 = v10;
  v34 = v14;
  [metrics enumerateKeysAndObjectsUsingBlock:v33];

  if ([v14 count])
  {
    [dictionaryCopy setObject:v14 forKeyedSubscript:@"metrics"];
  }

  v15 = objc_opt_new();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_3;
  v30[3] = &unk_278786DA0;
  v16 = v15;
  v31 = v16;
  v17 = faceCopy;
  v32 = v17;
  [(NTKFaceConfiguration *)self _enumerateEditModeConfigurationsWithBlock:v30];
  if ([v16 count])
  {
    [dictionaryCopy setObject:v16 forKeyedSubscript:@"customization"];
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
    [dictionaryCopy setObject:v19 forKeyedSubscript:@"complications"];
  }

  v20 = objc_opt_new();
  customData = [(NTKFaceConfiguration *)self customData];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __66__NTKFaceConfiguration_addConfigurationKeysToJSONDictionary_face___block_invoke_5;
  v26 = &unk_278786DC8;
  v22 = v20;
  v27 = v22;
  [customData enumerateKeysAndObjectsUsingBlock:&v23];

  if ([v22 count])
  {
    [dictionaryCopy setObject:v22 forKeyedSubscript:@"customData"];
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

- (NTKFaceConfiguration)initWithJSONDictionary:(id)dictionary editModeMapping:(id)mapping forDevice:(id)device
{
  dictionaryCopy = dictionary;
  mappingCopy = mapping;
  deviceCopy = device;
  v11 = [(NTKFaceConfiguration *)self init];
  if (v11)
  {
    v25 = deviceCopy;
    v26 = mappingCopy;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"face name"];
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
    v14 = [dictionaryCopy objectForKeyedSubscript:@"resource directory"];
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
    v16 = [dictionaryCopy objectForKeyedSubscript:@"metrics"];
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
    v18 = [dictionaryCopy objectForKeyedSubscript:@"customData"];
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
    v20 = [dictionaryCopy objectForKeyedSubscript:@"customization"];
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
    v22 = [dictionaryCopy objectForKeyedSubscript:@"complications"];
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

    deviceCopy = v25;
    mappingCopy = v26;
  }

  return v11;
}

- (void)_applyCustomizationDescription:(id)description editModeMapping:(id)mapping forDevice:(id)device
{
  v37 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  mappingCopy = mapping;
  deviceCopy = device;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  allKeys = [(__CFString *)descriptionCopy allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = 0;
          if (NTKFaceBundleGetCustomEditModeFromString(v14, &v27))
          {
            v15 = [(__CFString *)descriptionCopy objectForKey:v14, v24];
            if (v27 == 10)
            {
              v16 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v33 = descriptionCopy;
                _os_log_debug_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEBUG, "applying color option %{public}@", buf, 0xCu);
              }

              v17 = [(NTKFaceConfiguration *)self colorEditModeConfigurationWithJsonRepresentation:v15 editMode:v27 editModeMapping:mappingCopy forDevice:deviceCopy];
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
              v19 = [mappingCopy editOptionClassFromEditMode:v27 resourceDirectoryExists:self->_resourceDirectoryExists];
              if (v19)
              {
                v17 = [[NTKEditModeConfiguration alloc] initWithJSONObjectRepresentation:v15 editOptionClass:v19 forDevice:deviceCopy];
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
      v23 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
      v10 = v23;
    }

    while (v23);
  }
}

- (id)colorEditModeConfigurationWithJsonRepresentation:(id)representation editMode:(int64_t)mode editModeMapping:(id)mapping forDevice:(id)device
{
  mappingCopy = mapping;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__NTKFaceConfiguration_colorEditModeConfigurationWithJsonRepresentation_editMode_editModeMapping_forDevice___block_invoke;
  aBlock[3] = &unk_278786DF0;
  selfCopy = self;
  modeCopy = mode;
  v18 = mappingCopy;
  v11 = mappingCopy;
  deviceCopy = device;
  representationCopy = representation;
  v14 = _Block_copy(aBlock);
  v15 = [[NTKEditModeConfiguration alloc] initWithJSONObjectRepresentation:representationCopy device:deviceCopy editOptionFactory:v14];

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

- (void)_applyComplicationsDescription:(id)description
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  descriptionCopy = description;
  allKeys = [descriptionCopy allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
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
            v10 = [descriptionCopy objectForKey:v7];
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
      v4 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }
}

- (void)_applyMetrics:(id)metrics
{
  if (metrics)
  {
    metricsCopy = metrics;
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
    selfCopy = self;
    v18 = v7;
    v8 = v6;
    v17 = v8;
    v9 = v7;
    [metricsCopy enumerateKeysAndObjectsUsingBlock:&v12];

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

- (void)_applyCustomData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_customDataLock);
  v5 = [dataCopy mutableCopy];

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

- (id)customDataForKey:(id)key
{
  keyCopy = key;
  customData = [(NTKFaceConfiguration *)self customData];
  v6 = [customData objectForKey:keyCopy];

  return v6;
}

- (void)setCustomData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  os_unfair_lock_lock(&self->_customDataLock);
  customData = self->_customData;
  if (dataCopy)
  {
    [(NSMutableDictionary *)customData setObject:dataCopy forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)customData removeObjectForKey:keyCopy];
  }

  [(NTKFaceConfiguration *)self _invalidateDescription];
  os_unfair_lock_unlock(&self->_customDataLock);
}

- (void)setCustomDataFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_customDataLock);
  [(NSMutableDictionary *)self->_customData removeAllObjects];
  v5 = configurationCopy[4];

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