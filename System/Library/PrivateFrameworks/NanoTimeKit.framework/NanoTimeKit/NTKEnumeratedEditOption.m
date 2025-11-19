@interface NTKEnumeratedEditOption
+ (BOOL)_valueIsValid:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesRestrictedByDevice:(id)a3;
+ (id)legacyOptionWithName:(id)a3 forDevice:(id)a4;
+ (id)legacyOptionWithPigmentEditOption:(id)a3 forDevice:(id)a4;
+ (id)optionAtIndex:(unint64_t)a3 forDevice:(id)a4;
+ (id)optionsRestrictedByDevice:(id)a3;
+ (unint64_t)indexOfOption:(id)a3 forDevice:(id)a4;
+ (unint64_t)numberOfOptionsForDevice:(id)a3;
@end

@implementation NTKEnumeratedEditOption

+ (id)legacyOptionWithName:(id)a3 forDevice:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = objc_sync_enter(v7);
  __58__NTKEnumeratedEditOption_legacyOptionWithName_forDevice___block_invoke(v8, v6);
  v9 = legacyOptionWithName_forDevice__mappingOptionsByClass;
  v10 = NSStringFromClass(a1);
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [a1 numberOfOptionsForDevice:v6];
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = [a1 optionAtIndex:i forDevice:v6];
        if ([v14 conformsToProtocol:&unk_28A87B948])
        {
          v15 = [v14 pigmentEditOption];
          v16 = [v15 fullname];
          [v11 setObject:v14 forKeyedSubscript:v16];
        }
      }
    }

    v17 = legacyOptionWithName_forDevice__mappingOptionsByClass;
    v18 = NSStringFromClass(a1);
    [v17 setObject:v11 forKeyedSubscript:v18];
  }

  v19 = [v11 objectForKeyedSubscript:v21];

  objc_sync_exit(v7);

  return v19;
}

uint64_t __58__NTKEnumeratedEditOption_legacyOptionWithName_forDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_lock);
  if (_ValueKey_block_invoke___cachedDevice)
  {
    v3 = _ValueKey_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _ValueKey_block_invoke___previousCLKDeviceVersion))
  {
    v5 = _ValueKey_block_invoke_value;
  }

  else
  {
    _ValueKey_block_invoke___cachedDevice = v2;
    _ValueKey_block_invoke___previousCLKDeviceVersion = [v2 version];
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = legacyOptionWithName_forDevice__mappingOptionsByClass;
    legacyOptionWithName_forDevice__mappingOptionsByClass = v6;

    v5 = 1;
    _ValueKey_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&_ValueKey_block_invoke_lock);

  return v5;
}

+ (id)legacyOptionWithPigmentEditOption:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [a3 fullname];
  v8 = [a1 legacyOptionWithName:v7 forDevice:v6];

  return v8;
}

+ (unint64_t)numberOfOptionsForDevice:(id)a3
{
  v3 = [a1 _orderedValuesForDevice:a3];
  v4 = [v3 count];

  return v4;
}

+ (id)optionAtIndex:(unint64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [a1 _orderedValuesForDevice:v6];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    a3 = 0;
  }

  v9 = [a1 _orderedValuesForDevice:v6];
  v10 = [v9 objectAtIndex:a3];
  v11 = [v10 unsignedIntegerValue];

  v12 = [a1 _optionWithValue:v11 forDevice:v6];

  return v12;
}

+ (unint64_t)indexOfOption:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [a3 _value];
  v8 = [a1 _orderedValuesForDevice:v6];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [v8 indexOfObject:v9];

  return v10;
}

+ (id)optionsRestrictedByDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a1 _orderedValuesRestrictedByDevice:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _optionWithValue:objc_msgSend(*(*(&v13 + 1) + 8 * i) forDevice:{"unsignedIntValue"), v4}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (BOOL)_valueIsValid:(unint64_t)a3 forDevice:(id)a4
{
  v6 = [a1 _orderedValuesForDevice:a4];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NTKEnumeratedEditOption *)a1 _valueIsValid:a3 forDevice:v9];
    }
  }

  return v8;
}

+ (id)_orderedValuesRestrictedByDevice:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

+ (void)_valueIsValid:(NSObject *)a3 forDevice:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "%@: invalid value (%@)", &v6, 0x16u);
}

@end