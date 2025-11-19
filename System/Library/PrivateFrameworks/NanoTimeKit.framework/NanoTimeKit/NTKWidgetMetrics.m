@interface NTKWidgetMetrics
+ (NTKWidgetMetrics)sharedInstance;
- (id)_metricsForDisplayFamily:(int64_t)a3 fontStyle:(int64_t)a4 device:(id)a5;
- (id)alternateMetricsForWidgetFamily:(int64_t)a3 device:(id)a4;
- (id)defaultMetricsForWidgetFamily:(int64_t)a3 device:(id)a4;
- (id)metricsForComplicationFamily:(int64_t)a3 fontStyle:(int64_t)a4 device:(id)a5;
- (id)metricsSpecificationForDevice:(id)a3;
@end

@implementation NTKWidgetMetrics

+ (NTKWidgetMetrics)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NTKWidgetMetrics sharedInstance];
  }

  v3 = sharedInstance_metrics;

  return v3;
}

void __34__NTKWidgetMetrics_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKWidgetMetrics);
  v1 = sharedInstance_metrics;
  sharedInstance_metrics = v0;
}

- (id)_metricsForDisplayFamily:(int64_t)a3 fontStyle:(int64_t)a4 device:(id)a5
{
  v40[16] = *MEMORY[0x277D85DE8];
  v7 = a5;
  if (a3 == -1)
  {
    v26 = 0;
  }

  else
  {
    v31 = v7;
    v8 = v7;
    os_unfair_lock_lock(&_MetricConstants_lock);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = ___MetricConstants_block_invoke;
    v40[3] = &__block_descriptor_40_e19_B16__0__CLKDevice_8l;
    v40[4] = a4;
    ___MetricConstants_block_invoke(v40, v8);

    v9 = &_MetricConstants_constants[13 * a3];
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    v13 = *(v9 + 3);
    v32 = *(v9 + 5);
    v33 = *(v9 + 4);
    v34 = *(v9 + 7);
    v35 = *(v9 + 6);
    v14 = v9[12];
    os_unfair_lock_unlock(&_MetricConstants_lock);
    v15 = v14;
    if ([v15 count])
    {
      v16 = [MEMORY[0x277CBEB38] dictionary];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v18)
      {
        v19 = *v37;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            v22 = [v17 objectForKey:v21];
            v23 = v22;
            if (v22)
            {
              v24 = _WidgetMetricsWithFont(v22, a4);
              if (v24)
              {
                [v16 setObject:v24 forKey:v21];
              }
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v18);
      }

      v25 = [v16 copy];
    }

    else
    {
      v25 = 0;
    }

    v27 = objc_alloc(MEMORY[0x277CFA3F0]);
    v28 = objc_alloc(MEMORY[0x277CFA3E8]);
    v29 = [v28 initWithSafeAreaInsets:*MEMORY[0x277CFA180] layoutInsets:*(MEMORY[0x277CFA180] + 8) contentMargins:*(MEMORY[0x277CFA180] + 16) backgroundRemovedContentMargins:{*(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24)}];
    v26 = [v27 initWithSize:a4 cornerRadius:v29 scaleFactor:v25 fontStyle:v10 safeAreaInsets:v11 widgetGroupMargins:v12 nestedContentMetrics:{v13, v33, v32, v35, v34}];

    v7 = v31;
  }

  return v26;
}

- (id)defaultMetricsForWidgetFamily:(int64_t)a3 device:(id)a4
{
  v6 = _displayFamilyForWidgetFamily(a3);

  return [(NTKWidgetMetrics *)self _metricsForDisplayFamily:v6 fontStyle:3 device:a4];
}

- (id)metricsForComplicationFamily:(int64_t)a3 fontStyle:(int64_t)a4 device:(id)a5
{
  if ((a3 - 3) > 9)
  {
    v5 = -1;
  }

  else
  {
    v5 = qword_22DCE78C0[a3 - 3];
  }

  return [(NTKWidgetMetrics *)self _metricsForDisplayFamily:v5 fontStyle:a4 device:a5];
}

- (id)alternateMetricsForWidgetFamily:(int64_t)a3 device:(id)a4
{
  v6 = a4;
  v7 = [v6 isUltra];
  v8 = v7;
  v9 = 0;
  if (a3 > 9)
  {
    if (a3 == 10)
    {
      if (v7)
      {
        v11 = [(NTKWidgetMetrics *)self _metricsForDisplayFamily:2 fontStyle:5 device:v6];
        v17 = [(NTKWidgetMetrics *)self _metricsForDisplayFamily:2 fontStyle:10 device:v6];
        v9 = [MEMORY[0x277CBEB98] setWithObjects:{v11, v17, 0}];

        goto LABEL_15;
      }
    }

    else
    {
      if (a3 != 11)
      {
        goto LABEL_19;
      }

      if (v7)
      {
        v15 = self;
        v16 = 4;
LABEL_12:
        v11 = [(NTKWidgetMetrics *)v15 _metricsForDisplayFamily:v16 fontStyle:10 device:v6];
        v9 = [MEMORY[0x277CBEB98] setWithObjects:{v11, 0}];
LABEL_15:

        goto LABEL_19;
      }
    }
  }

  else
  {
    if ((a3 - 7) < 2)
    {
      v10 = _displayFamilyForWidgetFamily(a3);
      v11 = [(NTKWidgetMetrics *)self _metricsForDisplayFamily:v10 fontStyle:4 device:v6];
      v12 = [(NTKWidgetMetrics *)self _metricsForDisplayFamily:v10 fontStyle:12 device:v6];
      if (v8)
      {
        v13 = [(NTKWidgetMetrics *)self _metricsForDisplayFamily:v10 fontStyle:5 device:v6];
        v14 = [(NTKWidgetMetrics *)self _metricsForDisplayFamily:v10 fontStyle:10 device:v6];
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      v9 = [MEMORY[0x277CBEB98] setWithObjects:{v11, v13, v14, v12, 0}];

      goto LABEL_15;
    }

    if (a3 != 9)
    {
      goto LABEL_19;
    }

    if (v7)
    {
      v15 = self;
      v16 = 3;
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (id)metricsSpecificationForDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&metricsSpecificationForDevice__lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke;
  v7[3] = &unk_27877DDA0;
  v7[4] = self;
  __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke(v7, v4);

  v5 = metricsSpecificationForDevice____specifications;
  os_unfair_lock_unlock(&metricsSpecificationForDevice__lock);

  return v5;
}

uint64_t __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_1);
  if (_block_invoke___cachedDevice_1)
  {
    v4 = _block_invoke___cachedDevice_1 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_1))
  {
    _block_invoke___cachedDevice_1 = v3;
    _block_invoke___previousCLKDeviceVersion_1 = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke_2;
    v8[3] = &unk_27877DDA0;
    v8[4] = *(a1 + 32);
    _block_invoke_value_0 = __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke_2(v8, v3);
  }

  v6 = _block_invoke_value_0;
  os_unfair_lock_unlock(&_block_invoke_lock_1);

  return v6;
}

uint64_t __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke_3;
  v3[3] = &unk_27877DD78;
  v3[4] = *(a1 + 32);
  __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke_3(v3, a2);
  return 1;
}

void __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CFA2D0]);
  v4 = v2;
  v5 = v3;
  v12 = v5;
  CHSWidgetFamilyMaskEnumerateFamilies();
  v6 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 pairingID];
    v8 = [v7 UUIDString];
    v9 = [v5 descriptionWithMultilinePrefix:@"  - "];
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Device %@ using specifications: %@", buf, 0x16u);
  }

  v10 = metricsSpecificationForDevice____specifications;
  metricsSpecificationForDevice____specifications = v5;
  v11 = v5;
}

void __50__NTKWidgetMetrics_metricsSpecificationForDevice___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) defaultMetricsForWidgetFamily:a2 device:*(a1 + 40)];
  if (v3)
  {
    v4 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x2318D8AD0](a2);
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Family %@ is using metrics: %@", buf, 0x16u);
    }

    [*(a1 + 48) setMetrics:v3 forFamily:a2];
    v6 = [*(a1 + 32) alternateMetricsForWidgetFamily:a2 device:*(a1 + 40)];
    v7 = v6;
    if (v6)
    {
      v15 = a1;
      v16 = v3;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = MEMORY[0x2318D8AD0](a2);
              *buf = 138412546;
              v24 = v14;
              v25 = 2112;
              v26 = v12;
              _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Family %@ is adding alternate: %@", buf, 0x16u);
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      [*(v15 + 48) setAlternateMetrics:v7 forFamily:a2];
      v3 = v16;
    }
  }
}

@end