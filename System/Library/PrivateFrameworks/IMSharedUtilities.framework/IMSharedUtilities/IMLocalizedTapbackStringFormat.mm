@interface IMLocalizedTapbackStringFormat
- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)a3 unlocalizedFormatString:(id)a4;
- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)a3 unlocalizedFormatString:(id)a4 languageIdentifier:(id)a5;
@end

@implementation IMLocalizedTapbackStringFormat

- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)a3 unlocalizedFormatString:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = IMLocalizedTapbackStringFormat;
  v7 = [(IMLocalizedTapbackStringFormat *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_localizedStringFormatType = a3;
    v9 = IMSharedUtilitiesFrameworkBundle();
    v10 = [v9 localizedStringForKey:v6 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
    localizedFormatString = v8->_localizedFormatString;
    v8->_localizedFormatString = v10;

    v12 = [(NSString *)v8->_localizedFormatString uppercaseString];
    v13 = [v12 isEqualToString:v8->_localizedFormatString];

    if (v13)
    {
      v14 = IMLogHandleForCategory("IMLocalizedTapbackStringFormat");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2498(v6, v14);
      }
    }
  }

  return v8;
}

- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)a3 unlocalizedFormatString:(id)a4 languageIdentifier:(id)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v25.receiver = self;
  v25.super_class = IMLocalizedTapbackStringFormat;
  v10 = [(IMLocalizedTapbackStringFormat *)&v25 init];
  v11 = v10;
  if (v10)
  {
    v10->_localizedStringFormatType = a3;
    v12 = IMSharedUtilitiesFrameworkBundle();
    v13 = MEMORY[0x1E696AAE8];
    v14 = [v12 localizations];
    v26[0] = v9;
    v15 = [v12 preferredLocalizations];
    v16 = [v15 firstObject];
    v26[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v18 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v17];
    v19 = [v18 firstObject];

    v20 = [v12 localizedStringForKey:v8 value:0 table:@"IMSharedUtilities" localization:v19];
    localizedFormatString = v11->_localizedFormatString;
    v11->_localizedFormatString = v20;

    v22 = [(NSString *)v11->_localizedFormatString uppercaseString];
    LODWORD(v14) = [v22 isEqualToString:v11->_localizedFormatString];

    if (v14)
    {
      v23 = IMLogHandleForCategory("IMLocalizedTapbackStringFormat");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2498(v8, v23);
      }
    }

    v9 = v19;
  }

  return v11;
}

@end