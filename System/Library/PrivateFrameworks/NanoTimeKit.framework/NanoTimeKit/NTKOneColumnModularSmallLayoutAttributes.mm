@interface NTKOneColumnModularSmallLayoutAttributes
+ (id)attributesForTemplate:(id)template forDevice:(id)device;
@end

@implementation NTKOneColumnModularSmallLayoutAttributes

+ (id)attributesForTemplate:(id)template forDevice:(id)device
{
  v62[2] = *MEMORY[0x277D85DE8];
  templateCopy = template;
  deviceCopy = device;
  v7 = deviceCopy;
  if (!templateCopy)
  {
    v10 = 0;
    goto LABEL_16;
  }

  __76__NTKOneColumnModularSmallLayoutAttributes_attributesForTemplate_forDevice___block_invoke(deviceCopy, deviceCopy);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [attributesForTemplate_forDevice____classToAttributes objectForKeyedSubscript:v9];
  if (!v10)
  {
    v10 = objc_opt_new();
    [attributesForTemplate_forDevice____classToAttributes setObject:v10 forKeyedSubscript:v9];
    v11 = [MEMORY[0x277CBBAF8] metricsWithDevice:v7 identitySizeClass:2];
    v61[0] = &unk_284181A20;
    v61[1] = &unk_284181A38;
    v62[0] = &unk_284186A88;
    v62[1] = &unk_284186A98;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    [v11 scaledValue:v12 withOverrides:39.0];
    v14 = v13;

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v14 = v14 * 3.0;
    }

    [v10 setSubtitleBaselineOffset:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v11 scaledValue:16.5];
      v16 = v15;
      v59[0] = &unk_284181A20;
      v59[1] = &unk_284181A38;
      v60[0] = &unk_284186A88;
      v60[1] = &unk_284186A98;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
      [v11 scaledValue:v17 withOverrides:39.0];
      v19 = v18;

      v57[0] = &unk_284181A20;
      v57[1] = &unk_284181A38;
      v58[0] = &unk_284186AA8;
      v58[1] = &unk_284186AB8;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
      [v11 scaledValue:v20 withOverrides:22.0];
      v22 = v21;

      v55[0] = &unk_284181A38;
      v55[1] = &unk_284181A50;
      v56[0] = &unk_284186AC8;
      v56[1] = &unk_284186AC8;
      v55[2] = &unk_284181A68;
      v56[2] = &unk_284186AC8;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
      [v11 constantValue:v23 withOverrides:0.0];
      v25 = v24;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v16 * 3.0;
        v19 = v19 * 3.0;
        v22 = v22 * 3.0;
        v25 = v25 * 3.0;
        v26 = 25.5;
      }

      else
      {
        v26 = 8.5;
      }

      [v10 setMinimumFontSize:v26];
      v27 = [MEMORY[0x277CBBB08] systemFontOfSize:v16];
      [v10 setSubtitleFont:v27];

      [v10 setSubtitleBaselineOffset:v19];
      v28 = [MEMORY[0x277CBBB08] systemFontOfSize:v16 weight:*MEMORY[0x277D74410]];
      [v10 setTitleFont:v28];

      [v10 setTitleBaselineOffset:v22];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      [v11 scaledValue:0 withOverride:14.0 forSizeClass:11.0];
      v31 = v30;
      v53[0] = &unk_284181A20;
      v53[1] = &unk_284181A38;
      v54[0] = &unk_284186AD8;
      v54[1] = &unk_284186AE8;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
      [v11 scaledValue:v32 withOverrides:10.5];
      v34 = v33;

      v51[0] = &unk_284181A20;
      v51[1] = &unk_284181A38;
      v52[0] = &unk_284186AF8;
      v52[1] = &unk_284186B08;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
      [v11 scaledValue:v35 withOverrides:14.0];
      v37 = v36;

      v49[0] = &unk_284181A38;
      v49[1] = &unk_284181A50;
      v50[0] = &unk_284186AC8;
      v50[1] = &unk_284186AC8;
      v49[2] = &unk_284181A68;
      v50[2] = &unk_284186AC8;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
      [v11 constantValue:v38 withOverrides:0.0];
      v40 = v39;

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v42 = v31 * 3.0;
      v43 = v34 * 3.0;
      v44 = v37 * 3.0;
      if (isKindOfClass)
      {
        v45 = v31 * 3.0;
      }

      else
      {
        v45 = v31;
      }

      if (isKindOfClass)
      {
        v46 = v34 * 3.0;
      }

      else
      {
        v46 = v34;
      }

      if (isKindOfClass)
      {
        v47 = v37 * 3.0;
      }

      else
      {
        v47 = v37;
      }

      if (isKindOfClass)
      {
        v25 = v40 * 3.0;
      }

      else
      {
        v25 = v40;
      }

      v48 = [MEMORY[0x277CBBB08] systemFontOfSize:{v45, v42, v43, v44, v40 * 3.0}];
      [v10 setSubtitleFont:v48];

      [v10 setImageOriginY:v46];
      [v10 setImageHeight:v47];
    }

    [v10 setMarginWidth:v25];
LABEL_14:
  }

LABEL_16:

  return v10;
}

uint64_t __76__NTKOneColumnModularSmallLayoutAttributes_attributesForTemplate_forDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_3);
  if (_block_invoke___cachedDevice_3)
  {
    v3 = _block_invoke___cachedDevice_3 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_3))
  {
    v5 = _block_invoke_value_2;
  }

  else
  {
    _block_invoke___cachedDevice_3 = v2;
    _block_invoke___previousCLKDeviceVersion_3 = [v2 version];
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = attributesForTemplate_forDevice____classToAttributes;
    attributesForTemplate_forDevice____classToAttributes = v6;

    v5 = 1;
    _block_invoke_value_2 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_3);

  return v5;
}

@end