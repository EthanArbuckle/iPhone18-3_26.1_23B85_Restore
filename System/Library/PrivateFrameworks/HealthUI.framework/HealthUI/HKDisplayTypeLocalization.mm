@interface HKDisplayTypeLocalization
- (BOOL)isEqual:(id)equal;
- (HKDisplayTypeLocalization)init;
- (HKDisplayTypeLocalization)initWithDisplayNameKey:(id)key labelDisplayNameKey:(id)nameKey localizationTableNameOverride:(id)override localizedKeySuffix:(id)suffix unitNameKeyOverrides:(id)overrides;
- (NSSet)keywords;
- (NSString)displayNameForFitnessJr;
- (NSString)shortenedDisplayName;
- (NSString)summary;
- (NSString)summaryForFitnessJr;
- (id)_localizedStringForKeyOrNil:(id)nil;
- (id)_localizedStringWithKey:(id)key;
- (id)_rawLocalizedStringForKey:(id)key;
- (id)copyWithLocalizationTableNameOverride:(id)override;
- (id)copyWithLocalizedKeySuffix:(id)suffix;
- (id)unitDisplayNameKeyOverrideForUnit:(id)unit nameContext:(int64_t)context;
- (unint64_t)hash;
- (void)_expandLocalizationKeys;
@end

@implementation HKDisplayTypeLocalization

- (void)_expandLocalizationKeys
{
  v3 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_SHORT"];
  shortenedDisplayNameKey = self->_shortenedDisplayNameKey;
  self->_shortenedDisplayNameKey = v3;

  v5 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_EMBEDDED"];
  embeddedDisplayNameKey = self->_embeddedDisplayNameKey;
  self->_embeddedDisplayNameKey = v5;

  v7 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_TITLE_EMBEDDED"];
  titleEmbeddedDisplayNameKey = self->_titleEmbeddedDisplayNameKey;
  self->_titleEmbeddedDisplayNameKey = v7;

  v9 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_KEYWORDS"];
  keywordsNameKey = self->_keywordsNameKey;
  self->_keywordsNameKey = v9;

  v11 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_SUMMARY"];
  summaryNameKey = self->_summaryNameKey;
  self->_summaryNameKey = v11;

  v13 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_SUMMARY_ENHANCED"];
  summaryForEnhancedFeatureNameKey = self->_summaryForEnhancedFeatureNameKey;
  self->_summaryForEnhancedFeatureNameKey = v13;

  v15 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_SUMMARY_PAIRED_WATCH"];
  summaryPairedWatchNameKey = self->_summaryPairedWatchNameKey;
  self->_summaryPairedWatchNameKey = v15;

  v17 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_SUMMARY_IPAD"];
  summaryIPadNameKey = self->_summaryIPadNameKey;
  self->_summaryIPadNameKey = v17;

  v19 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_FITNESS_JR"];
  displayNameFitnessJrKey = self->_displayNameFitnessJrKey;
  self->_displayNameFitnessJrKey = v19;

  v21 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_SUMMARY_FITNESS_JR"];
  summaryFitnessJrKey = self->_summaryFitnessJrKey;
  self->_summaryFitnessJrKey = v21;

  v23 = [(NSString *)self->_displayNameKey stringByAppendingString:@"_CAUTIONARY_TEXT"];
  cautionaryTextKey = self->_cautionaryTextKey;
  self->_cautionaryTextKey = v23;

  self->_unitChangeCautionaryTextKey = [(NSString *)self->_displayNameKey stringByAppendingString:@"_UNIT_CHANGE_CAUTIONARY_TEXT"];

  MEMORY[0x1EEE66BB8]();
}

- (HKDisplayTypeLocalization)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDisplayTypeLocalization)initWithDisplayNameKey:(id)key labelDisplayNameKey:(id)nameKey localizationTableNameOverride:(id)override localizedKeySuffix:(id)suffix unitNameKeyOverrides:(id)overrides
{
  keyCopy = key;
  nameKeyCopy = nameKey;
  overrideCopy = override;
  suffixCopy = suffix;
  overridesCopy = overrides;
  v29.receiver = self;
  v29.super_class = HKDisplayTypeLocalization;
  v17 = [(HKDisplayTypeLocalization *)&v29 init];
  if (v17)
  {
    v18 = [keyCopy copy];
    displayNameKey = v17->_displayNameKey;
    v17->_displayNameKey = v18;

    v20 = [nameKeyCopy copy];
    labelDisplayNameKey = v17->_labelDisplayNameKey;
    v17->_labelDisplayNameKey = v20;

    v22 = [overrideCopy copy];
    localizationTableNameOverride = v17->_localizationTableNameOverride;
    v17->_localizationTableNameOverride = v22;

    v24 = [suffixCopy copy];
    localizedKeySuffix = v17->_localizedKeySuffix;
    v17->_localizedKeySuffix = v24;

    v26 = [overridesCopy copy];
    unitNameKeyOverrides = v17->_unitNameKeyOverrides;
    v17->_unitNameKeyOverrides = v26;

    [(HKDisplayTypeLocalization *)v17 _expandLocalizationKeys];
  }

  return v17;
}

- (id)unitDisplayNameKeyOverrideForUnit:(id)unit nameContext:(int64_t)context
{
  unitCopy = unit;
  if (unitCopy)
  {
    v7 = [(NSDictionary *)self->_unitNameKeyOverrides objectForKeyedSubscript:unitCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v7;
        if ((context & 0xFFFFFFFFFFFFFFFELL) != 2 || ([MEMORY[0x1E696AD98] numberWithInteger:context], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v10), v8 = objc_claimAutoreleasedReturnValue(), v10, !v8))
        {
          v8 = [v9 objectForKeyedSubscript:&unk_1F4383CB8];
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_localizedStringWithKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (self->_localizedKeySuffix)
  {
    v6 = [keyCopy stringByAppendingString:?];
  }

  else
  {
    v6 = keyCopy;
  }

  v7 = v6;
  v8 = [(HKDisplayTypeLocalization *)self _rawLocalizedStringForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(HKDisplayTypeLocalization *)self _rawLocalizedStringForKey:v5];
  }

  v11 = v10;

  return v11;
}

- (id)_rawLocalizedStringForKey:(id)key
{
  keyCopy = key;
  localizationTableNameOverride = self->_localizationTableNameOverride;
  p_localizationTableNameOverride = &self->_localizationTableNameOverride;
  v7 = HKHealthKitFrameworkBundle();
  v8 = v7;
  v9 = MEMORY[0x1E696B910];
  if (localizationTableNameOverride)
  {
    v9 = p_localizationTableNameOverride;
  }

  v10 = [v7 localizedStringForKey:keyCopy value:&stru_1F42FFBE0 table:*v9];

  if ([v10 isEqualToString:keyCopy])
  {

    v10 = 0;
  }

  return v10;
}

- (NSString)displayNameForFitnessJr
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:self->_displayNameFitnessJrKey value:&stru_1F42FFBE0 table:@"Localizable-tinker"];

  return v4;
}

- (NSSet)keywords
{
  v2 = [(HKDisplayTypeLocalization *)self _localizedStringWithKey:self->_keywordsNameKey];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [v2 componentsSeparatedByString:@"|"];
  v5 = [v3 setWithArray:v4];

  return v5;
}

- (NSString)shortenedDisplayName
{
  v3 = [(HKDisplayTypeLocalization *)self _localizedStringWithKey:self->_shortenedDisplayNameKey];
  v4 = v3;
  if (v3)
  {
    displayName = v3;
  }

  else
  {
    displayName = [(HKDisplayTypeLocalization *)self displayName];
  }

  v6 = displayName;

  return v6;
}

- (NSString)summary
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isiPad = [mEMORY[0x1E696C608] isiPad];

  if (!isiPad || ([(HKDisplayTypeLocalization *)self _localizedStringForKeyOrNil:self->_summaryIPadNameKey], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(HKDisplayTypeLocalization *)self _localizedStringWithKey:self->_summaryNameKey];
  }

  return v5;
}

- (NSString)summaryForFitnessJr
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:self->_summaryFitnessJrKey value:&stru_1F42FFBE0 table:@"Localizable-tinker"];

  return v4;
}

- (id)_localizedStringForKeyOrNil:(id)nil
{
  nilCopy = nil;
  v5 = [(HKDisplayTypeLocalization *)self _localizedStringWithKey:nilCopy];
  v6 = [v5 isEqualToString:nilCopy];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)copyWithLocalizedKeySuffix:(id)suffix
{
  suffixCopy = suffix;
  v5 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:self->_displayNameKey labelDisplayNameKey:self->_labelDisplayNameKey localizationTableNameOverride:self->_localizationTableNameOverride localizedKeySuffix:suffixCopy unitNameKeyOverrides:self->_unitNameKeyOverrides];

  return v5;
}

- (id)copyWithLocalizationTableNameOverride:(id)override
{
  overrideCopy = override;
  v5 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:self->_displayNameKey labelDisplayNameKey:self->_labelDisplayNameKey localizationTableNameOverride:overrideCopy localizedKeySuffix:self->_localizedKeySuffix unitNameKeyOverrides:self->_unitNameKeyOverrides];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_displayNameKey hash];
  v4 = [(NSString *)self->_labelDisplayNameKey hash]^ v3;
  v5 = [(NSString *)self->_localizationTableNameOverride hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_localizedKeySuffix hash];
  return v6 ^ [(NSDictionary *)self->_unitNameKeyOverrides hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (equalCopy == self)
  {
    goto LABEL_19;
  }

  displayNameKey = self->_displayNameKey;
  v6 = equalCopy->_displayNameKey;
  if (displayNameKey != v6 && (!v6 || ![(NSString *)displayNameKey isEqualToString:?]))
  {
    goto LABEL_18;
  }

  labelDisplayNameKey = self->_labelDisplayNameKey;
  v8 = equalCopy->_labelDisplayNameKey;
  if (labelDisplayNameKey != v8 && (!v8 || ![(NSString *)labelDisplayNameKey isEqualToString:?]))
  {
    goto LABEL_18;
  }

  localizationTableNameOverride = self->_localizationTableNameOverride;
  v10 = equalCopy->_localizationTableNameOverride;
  if (localizationTableNameOverride != v10 && (!v10 || ![(NSString *)localizationTableNameOverride isEqualToString:?]))
  {
    goto LABEL_18;
  }

  localizedKeySuffix = self->_localizedKeySuffix;
  v12 = equalCopy->_localizedKeySuffix;
  if (localizedKeySuffix != v12 && (!v12 || ![(NSString *)localizedKeySuffix isEqualToString:?]))
  {
    goto LABEL_18;
  }

  unitNameKeyOverrides = self->_unitNameKeyOverrides;
  v14 = equalCopy->_unitNameKeyOverrides;
  if (unitNameKeyOverrides == v14)
  {
LABEL_19:
    v15 = 1;
    goto LABEL_20;
  }

  if (!v14)
  {
LABEL_18:
    v15 = 0;
    goto LABEL_20;
  }

  v15 = [(NSDictionary *)unitNameKeyOverrides isEqual:?];
LABEL_20:

  return v15;
}

@end