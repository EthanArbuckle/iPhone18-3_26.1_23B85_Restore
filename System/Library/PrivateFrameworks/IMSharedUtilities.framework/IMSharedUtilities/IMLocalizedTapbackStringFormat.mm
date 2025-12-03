@interface IMLocalizedTapbackStringFormat
- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string;
- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string languageIdentifier:(id)identifier;
@end

@implementation IMLocalizedTapbackStringFormat

- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string
{
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = IMLocalizedTapbackStringFormat;
  v7 = [(IMLocalizedTapbackStringFormat *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_localizedStringFormatType = type;
    v9 = IMSharedUtilitiesFrameworkBundle();
    v10 = [v9 localizedStringForKey:stringCopy value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
    localizedFormatString = v8->_localizedFormatString;
    v8->_localizedFormatString = v10;

    uppercaseString = [(NSString *)v8->_localizedFormatString uppercaseString];
    v13 = [uppercaseString isEqualToString:v8->_localizedFormatString];

    if (v13)
    {
      v14 = IMLogHandleForCategory("IMLocalizedTapbackStringFormat");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2498(stringCopy, v14);
      }
    }
  }

  return v8;
}

- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string languageIdentifier:(id)identifier
{
  v26[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = IMLocalizedTapbackStringFormat;
  v10 = [(IMLocalizedTapbackStringFormat *)&v25 init];
  v11 = v10;
  if (v10)
  {
    v10->_localizedStringFormatType = type;
    v12 = IMSharedUtilitiesFrameworkBundle();
    v13 = MEMORY[0x1E696AAE8];
    localizations = [v12 localizations];
    v26[0] = identifierCopy;
    preferredLocalizations = [v12 preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    v26[1] = firstObject;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v18 = [v13 preferredLocalizationsFromArray:localizations forPreferences:v17];
    firstObject2 = [v18 firstObject];

    v20 = [v12 localizedStringForKey:stringCopy value:0 table:@"IMSharedUtilities" localization:firstObject2];
    localizedFormatString = v11->_localizedFormatString;
    v11->_localizedFormatString = v20;

    uppercaseString = [(NSString *)v11->_localizedFormatString uppercaseString];
    LODWORD(localizations) = [uppercaseString isEqualToString:v11->_localizedFormatString];

    if (localizations)
    {
      v23 = IMLogHandleForCategory("IMLocalizedTapbackStringFormat");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2498(stringCopy, v23);
      }
    }

    identifierCopy = firstObject2;
  }

  return v11;
}

@end