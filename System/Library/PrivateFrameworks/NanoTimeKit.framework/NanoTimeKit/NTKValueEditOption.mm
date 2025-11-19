@interface NTKValueEditOption
+ (id)_optionWithValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidOption;
- (NTKValueEditOption)initWithCoder:(id)a3;
- (NTKValueEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (id)JSONObjectRepresentation;
- (id)_faceBundleStringToValueDict;
- (id)_valueToFaceBundleStringDict;
- (id)dailySnapshotKey;
- (id)localizedName;
- (id)localizedNameForAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKValueEditOption

- (id)dailySnapshotKey
{
  v3 = objc_opt_class();
  value = self->_value;
  v5 = [(NTKEditOption *)self device];
  v6 = [v3 _snapshotKeyForValue:value forDevice:v5];

  return v6;
}

- (id)localizedName
{
  v3 = objc_opt_class();
  value = self->_value;
  v5 = [(NTKEditOption *)self device];
  v6 = [v3 _localizedNameForValue:value forDevice:v5];

  if (!v6)
  {
    v7 = objc_opt_class();
    v8 = self->_value;
    v9 = [(NTKEditOption *)self device];
    v6 = [v7 localizedNameForValidValue:v8 forDevice:v9];
  }

  return v6;
}

+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [a1 _nameLocalizationKeyForValue:a3 forDevice:a4];
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ must implement either _localizedNameForValue:forDevice: or _nameLocalizationKeyForValue:forDevice:", objc_opt_class()}];
  }

  v5 = [v4 stringByAppendingString:@"_COMPANION"];
  v6 = NTKCompanionClockFaceLocalizedString(v5, @"name for edit option");
  if (!v6)
  {
    v6 = NTKClockFaceLocalizedString(v4, @"name for edit option");
  }

  return v6;
}

- (id)localizedNameForAction
{
  v3 = objc_opt_class();
  value = self->_value;
  v5 = [(NTKEditOption *)self device];
  v6 = [v3 _localizedNameForActionForValue:value forDevice:v5];

  return v6;
}

- (BOOL)isValidOption
{
  v3 = objc_opt_class();
  value = self->_value;
  v5 = [(NTKEditOption *)self device];
  LOBYTE(v3) = [v3 _valueIsValid:value forDevice:v5];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_value == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_optionWithValue:(unint64_t)a3 forDevice:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([a1 _valueIsValid:a3 forDevice:v6])
  {
    v7 = [[a1 alloc] initWithDevice:v6];
    v7[2] = a3;
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 1024;
      v14 = a3;
      v9 = v12;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to instantiate %@ with invalid value '%u'", &v11, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKValueEditOption;
  v4 = a3;
  [(NTKEditOption *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_value forKey:{@"EnumeratedValue", v5.receiver, v5.super_class}];
}

- (NTKValueEditOption)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NTKValueEditOption;
  v5 = [(NTKEditOption *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_value = [v4 decodeIntegerForKey:@"EnumeratedValue"];
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v3 = [(NTKValueEditOption *)self _valueToFaceBundleStringDict];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_value];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

- (NTKValueEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = [(NTKEditOption *)self initWithDevice:a4];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"object must be a string - invalid value: %@", v6}];
    }

    v8 = [(NTKValueEditOption *)v7 _faceBundleStringToValueDict];
    v9 = [v8 objectForKeyedSubscript:v6];

    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"invalid value: %@", v6}];
    }

    v7->_value = [v9 unsignedIntegerValue];
  }

  return v7;
}

- (id)_faceBundleStringToValueDict
{
  if (_faceBundleStringToValueDict_onceToken != -1)
  {
    [NTKValueEditOption _faceBundleStringToValueDict];
  }

  [_faceBundleStringToValueDict_lock lock];
  v3 = _faceBundleStringToValueDict_faceBundleStringToValueDictPerClass;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = [(NTKValueEditOption *)self _valueToFaceBundleStringDict];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__NTKValueEditOption__faceBundleStringToValueDict__block_invoke_2;
    v14[3] = &unk_27877E360;
    v9 = v7;
    v15 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];

    v10 = _faceBundleStringToValueDict_faceBundleStringToValueDictPerClass;
    v6 = v9;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 setObject:v6 forKeyedSubscript:v12];
  }

  [_faceBundleStringToValueDict_lock unlock];

  return v6;
}

uint64_t __50__NTKValueEditOption__faceBundleStringToValueDict__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _faceBundleStringToValueDict_faceBundleStringToValueDictPerClass;
  _faceBundleStringToValueDict_faceBundleStringToValueDictPerClass = v0;

  v2 = objc_opt_new();
  v3 = _faceBundleStringToValueDict_lock;
  _faceBundleStringToValueDict_lock = v2;

  v4 = _faceBundleStringToValueDict_lock;

  return [v4 setName:@"-[NTKEditOption _faceBundleStringToValueDict]"];
}

- (id)_valueToFaceBundleStringDict
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

@end