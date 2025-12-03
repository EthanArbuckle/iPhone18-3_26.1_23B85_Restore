@interface IMTapback
+ (id)tapbackWithAssociatedMessageType:(int64_t)type;
- (BOOL)_isAssociatedMessageContentTypeTextInMessageSummaryInfo:(id)info;
- (BOOL)_isAttachmentOnlyMessageText:(id)text isAdaptiveImageGlyphProvider:(id)provider;
- (BOOL)isEqual:(id)equal;
- (IMTapback)init;
- (IMTapback)initWithAssociatedMessageType:(int64_t)type;
- (IMTapback)initWithCoder:(id)coder;
- (IMTapback)initWithIMRemoteObjectSerializedDictionary:(id)dictionary;
- (id)_attributedAssociatedMessageSummaryFromMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider effectString:(id)string;
- (id)_convertDatabaseFormatAssociatedMessageSummaryToDisplayFormat:(id)format isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider;
- (id)_plainStringAssociatedMessageSummaryFromMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider;
- (id)_plainStringReactionFromAttributedReactionString:(id)string;
- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)available;
- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)provider;
- (id)backwardCompatibilityStringFormatForMessageSummaryInfo:(id)info;
- (id)backwardCompatibilityStringWithMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider;
- (id)contentTypeStringForMessageSummaryInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)emojiReactionForPreviewString;
- (id)previewAttributedStringWithMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider senderDisplayName:(id)name isFromMe:(BOOL)me effectString:(id)string;
- (id)previewStringFormatForMessageSummaryInfo:(id)info adaptiveImageGlyphAvailable:(BOOL)available isFromMe:(BOOL)me;
- (id)reactionStringWithAdaptiveImageGlyph:(id)glyph isCommSafetySensitiveProvider:(id)provider;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary;
@end

@implementation IMTapback

- (IMTapback)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    *buf = 138412290;
    v13 = v4;
    _os_log_error_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_ERROR, "init is dissallowed in %@", buf, 0xCu);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is not implemented", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (IMTapback)initWithAssociatedMessageType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = IMTapback;
  v4 = [(IMTapback *)&v8 init];
  if (!v4)
  {
    goto LABEL_4;
  }

  if ([objc_opt_class() isValidAssociatedMessageType:type])
  {
    v4->_associatedMessageType = type;
LABEL_4:
    v5 = v4;
    goto LABEL_8;
  }

  v6 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C032C(type, v4, v6);
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      associatedMessageType = [(IMTapback *)self associatedMessageType];
      v6 = associatedMessageType == [(IMTapback *)equalCopy associatedMessageType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = IMTapback;
  v4 = [(IMTapback *)&v11 description];
  associatedMessageType = [(IMTapback *)self associatedMessageType];
  v6 = MEMORY[0x1E696AEC0];
  v7 = IMStringFromAssociatedMessageType(associatedMessageType);
  v8 = [v6 stringWithFormat:@"%ld (%@)", associatedMessageType, v7];

  v9 = [v3 stringWithFormat:@"%@: associated message type: %@", v4, v8];

  return v9;
}

- (IMTapback)initWithCoder:(id)coder
{
  v4 = [coder decodeInt64ForKey:@"associatedMessageType"];

  return [(IMTapback *)self initWithAssociatedMessageType:v4];
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  theDict = dictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_associatedMessageType];
  if (v4)
  {
    CFDictionarySetValue(theDict, @"associatedMessageType", v4);
  }
}

- (IMTapback)initWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"associatedMessageType"];
  v5 = -[IMTapback initWithAssociatedMessageType:](self, "initWithAssociatedMessageType:", [v4 unsignedLongValue]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  associatedMessageType = self->_associatedMessageType;

  return [v4 initWithAssociatedMessageType:associatedMessageType];
}

- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)available
{
  v4 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C0428(a2);
  }

  return 0;
}

- (id)reactionStringWithAdaptiveImageGlyph:(id)glyph isCommSafetySensitiveProvider:(id)provider
{
  v5 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C04AC(a2);
  }

  return 0;
}

- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)provider
{
  v4 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C0530(a2);
  }

  return 0;
}

- (id)emojiReactionForPreviewString
{
  v3 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C05B4(a2);
  }

  return 0;
}

- (BOOL)_isAssociatedMessageContentTypeTextInMessageSummaryInfo:(id)info
{
  __im_associatedMessageContentType = [info __im_associatedMessageContentType];
  integerValue = [__im_associatedMessageContentType integerValue];

  return integerValue == 1;
}

- (BOOL)_isAttachmentOnlyMessageText:(id)text isAdaptiveImageGlyphProvider:(id)provider
{
  textCopy = text;
  providerCopy = provider;
  string = [textCopy string];
  if ([string isEqualToString:*MEMORY[0x1E69A5F00]])
  {
    v8 = [textCopy attribute:*MEMORY[0x1E69A5F68] atIndex:0 effectiveRange:0];
    if ([v8 length])
    {
      if (providerCopy[2](providerCopy, v8))
      {
        v9 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v10 = IMLogHandleForCategory("IMTapback");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C0638(v10);
      }
    }

    else
    {
      v10 = IMLogHandleForCategory("IMTapback");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C067C(v10);
      }
    }

    v9 = 1;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)contentTypeStringForMessageSummaryInfo:(id)info
{
  if (info)
  {
    __im_associatedMessageContentType = [info __im_associatedMessageContentType];
    integerValue = [__im_associatedMessageContentType integerValue];

    if (integerValue <= 0xAu)
    {
      return *(&off_1E7826590 + (integerValue & 0xF));
    }
  }

  else
  {
    v7 = IMLogHandleForCategory("IMTapback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C06C0(a2);
    }
  }

  return 0;
}

- (id)previewStringFormatForMessageSummaryInfo:(id)info adaptiveImageGlyphAvailable:(BOOL)available isFromMe:(BOOL)me
{
  meCopy = me;
  availableCopy = available;
  infoCopy = info;
  if (infoCopy)
  {
    v10 = [(IMTapback *)self shouldQuoteContentString:infoCopy];
    v11 = [(IMTapback *)self actionStringFormatWithAdaptiveImageGlyphAvailable:availableCopy];
    if (v11)
    {
      v12 = [(IMTapback *)self contentTypeStringForMessageSummaryInfo:infoCopy];
      actionStringFormat = [v11 actionStringFormat];
      lowercaseString = [actionStringFormat lowercaseString];

      LODWORD(actionStringFormat) = [v11 requiresReactionReplacment];
      if (meCopy)
      {
        if (v10)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"You %@ %%@", lowercaseString];
        }

        else
        {
          if (v12)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"You %@ %@", lowercaseString, v12];
            actionStringFormat = actionStringFormat;
            goto LABEL_25;
          }

          [MEMORY[0x1E696AEC0] stringWithFormat:@"You %@ %%@", lowercaseString];
        }
        v17 = ;
        v18 = actionStringFormat == 0;
        v19 = 2;
      }

      else
      {
        if (v10)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%%@ %@ %%@", lowercaseString];
        }

        else
        {
          if (v12)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%@ %@ %@", lowercaseString, v12];
            v18 = actionStringFormat == 0;
            v19 = 4;
            goto LABEL_22;
          }

          [MEMORY[0x1E696AEC0] stringWithFormat:@"%%@ %@ %%@", lowercaseString];
        }
        v17 = ;
        v18 = actionStringFormat == 0;
        v19 = 6;
      }

LABEL_22:
      if (v18)
      {
        actionStringFormat = v19;
      }

      else
      {
        actionStringFormat = v19 + 1;
      }

LABEL_25:
      languageIdentifier = [(IMTapback *)self languageIdentifier];
      v21 = [languageIdentifier length];
      v22 = [IMLocalizedTapbackStringFormat alloc];
      if (v21)
      {
        v23 = [(IMLocalizedTapbackStringFormat *)v22 initWithLocalizedStringFormatType:actionStringFormat unlocalizedFormatString:v17 languageIdentifier:languageIdentifier];
      }

      else
      {
        v23 = [(IMLocalizedTapbackStringFormat *)v22 initWithLocalizedStringFormatType:actionStringFormat unlocalizedFormatString:v17];
      }

      v16 = v23;

      goto LABEL_29;
    }

    v15 = IMLogHandleForCategory("IMTapback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0744(a2);
    }
  }

  else
  {
    v11 = IMLogHandleForCategory("IMTapback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C06C0(a2);
    }
  }

  v16 = 0;
LABEL_29:

  return v16;
}

- (id)_convertDatabaseFormatAssociatedMessageSummaryToDisplayFormat:(id)format isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider
{
  glyphProviderCopy = glyphProvider;
  sensitiveProviderCopy = sensitiveProvider;
  providerCopy = provider;
  v12 = [format mutableCopy];
  [v12 __im_insertAdaptiveImageGlyphsForFileTransfersUsingIsAdaptiveImageGlyphProvider:providerCopy isCommSafetySensitiveProvider:sensitiveProviderCopy adaptiveImageGlyphProvider:glyphProviderCopy];

  [v12 __im_filterAttributesForDisplayablePreviewText];
  v13 = [v12 copy];

  return v13;
}

- (id)_attributedAssociatedMessageSummaryFromMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider effectString:(id)string
{
  infoCopy = info;
  providerCopy = provider;
  sensitiveProviderCopy = sensitiveProvider;
  glyphProviderCopy = glyphProvider;
  stringCopy = string;
  v17 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17];
    goto LABEL_18;
  }

  v19 = [infoCopy objectForKey:@"ame"];
  if (![v19 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"])
  {
    if ([(IMTapback *)self _isAssociatedMessageContentTypeTextInMessageSummaryInfo:infoCopy])
    {
      v23 = [infoCopy __imami_attributedStringForKey:@"ampt"];
      im_trimmedSummaryIfNeededForTapback = [v23 im_trimmedSummaryIfNeededForTapback];

      if (im_trimmedSummaryIfNeededForTapback)
      {
        if (![(IMTapback *)self _isAttachmentOnlyMessageText:im_trimmedSummaryIfNeededForTapback isAdaptiveImageGlyphProvider:providerCopy])
        {
          v18 = [(IMTapback *)self _convertDatabaseFormatAssociatedMessageSummaryToDisplayFormat:im_trimmedSummaryIfNeededForTapback isAdaptiveImageGlyphProvider:providerCopy isCommSafetySensitiveProvider:sensitiveProviderCopy adaptiveImageGlyphProvider:glyphProviderCopy];

          if (v18)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }

        v25 = IMLogHandleForCategory("IMTapback");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v30 = 0;
          _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Attributed associated message text contains only an attachment, not using attributed text in preview.", v30, 2u);
        }
      }
    }

LABEL_13:
    __im_associatedMessageSummary = [infoCopy __im_associatedMessageSummary];
    v27 = __im_associatedMessageSummary;
    v28 = &stru_1F1BB91F0;
    if (__im_associatedMessageSummary)
    {
      v28 = __im_associatedMessageSummary;
    }

    __im_associatedMessageSummary2 = v28;

    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    goto LABEL_16;
  }

  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  __im_associatedMessageSummary2 = [infoCopy __im_associatedMessageSummary];
  v22 = v20;
LABEL_16:
  v18 = [v22 initWithString:__im_associatedMessageSummary2];

LABEL_17:
LABEL_18:

  return v18;
}

- (id)previewAttributedStringWithMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider senderDisplayName:(id)name isFromMe:(BOOL)me effectString:(id)string
{
  meCopy = me;
  infoCopy = info;
  providerCopy = provider;
  sensitiveProviderCopy = sensitiveProvider;
  glyphProviderCopy = glyphProvider;
  nameCopy = name;
  stringCopy = string;
  v21 = [(IMTapback *)self adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:glyphProviderCopy];
  v22 = [(IMTapback *)self previewStringFormatForMessageSummaryInfo:infoCopy adaptiveImageGlyphAvailable:v21 != 0 isFromMe:meCopy];
  v23 = v22;
  if (!v22)
  {
    v26 = 0;
    goto LABEL_37;
  }

  v48 = providerCopy;
  localizedFormatString = [v22 localizedFormatString];
  v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:localizedFormatString];
  localizedStringFormatType = [v23 localizedStringFormatType];
  v26 = 0;
  if (localizedStringFormatType > 3)
  {
    if (localizedStringFormatType <= 5)
    {
      if (localizedStringFormatType == 4)
      {
        v36 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (nameCopy)
        {
          v37 = nameCopy;
        }

        else
        {
          v37 = &stru_1F1BB91F0;
        }

        v38 = [v36 initWithString:v37];
        v39 = MEMORY[0x1E696AAB0];
        goto LABEL_29;
      }

      v28 = objc_alloc(MEMORY[0x1E696AAB0]);
      if (nameCopy)
      {
        v29 = nameCopy;
      }

      else
      {
        v29 = &stru_1F1BB91F0;
      }

      v30 = [v28 initWithString:v29];
      v45 = v30;
      v31 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:sensitiveProviderCopy];
LABEL_35:
      v42 = v31;
      v26 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v24, v30, v31];

      goto LABEL_36;
    }

    if (localizedStringFormatType != 6)
    {
      if (localizedStringFormatType == 7)
      {
        v33 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (nameCopy)
        {
          v34 = nameCopy;
        }

        else
        {
          v34 = &stru_1F1BB91F0;
        }

        v46 = [v33 initWithString:v34];
        v44 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:sensitiveProviderCopy];
        v35 = [(IMTapback *)self _attributedAssociatedMessageSummaryFromMessageSummaryInfo:infoCopy isAdaptiveImageGlyphProvider:v48 isCommSafetySensitiveProvider:sensitiveProviderCopy adaptiveImageGlyphProvider:glyphProviderCopy effectString:stringCopy];
        v26 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v24, v46, v44, v35];
      }

      goto LABEL_36;
    }

    v40 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (nameCopy)
    {
      v41 = nameCopy;
    }

    else
    {
      v41 = &stru_1F1BB91F0;
    }

    v32 = [v40 initWithString:v41];
LABEL_34:
    v30 = v32;
    v45 = v32;
    v31 = [(IMTapback *)self _attributedAssociatedMessageSummaryFromMessageSummaryInfo:infoCopy isAdaptiveImageGlyphProvider:v48 isCommSafetySensitiveProvider:sensitiveProviderCopy adaptiveImageGlyphProvider:glyphProviderCopy effectString:stringCopy];
    goto LABEL_35;
  }

  if (localizedStringFormatType > 1)
  {
    if (localizedStringFormatType == 2)
    {
      v27 = [(IMTapback *)self _attributedAssociatedMessageSummaryFromMessageSummaryInfo:infoCopy isAdaptiveImageGlyphProvider:v48 isCommSafetySensitiveProvider:sensitiveProviderCopy adaptiveImageGlyphProvider:glyphProviderCopy effectString:stringCopy];
      goto LABEL_28;
    }

    v32 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:sensitiveProviderCopy];
    goto LABEL_34;
  }

  if (localizedStringFormatType)
  {
    if (localizedStringFormatType == 1)
    {
      v27 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:sensitiveProviderCopy];
LABEL_28:
      v38 = v27;
      v39 = MEMORY[0x1E696AAB0];
LABEL_29:
      v26 = [v39 localizedAttributedStringWithFormat:v24, v38];
    }
  }

  else
  {
    v26 = v24;
  }

LABEL_36:

  providerCopy = v48;
LABEL_37:

  return v26;
}

- (id)backwardCompatibilityStringFormatForMessageSummaryInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v6 = [(IMTapback *)self actionStringFormatWithAdaptiveImageGlyphAvailable:0];
    v7 = v6;
    if (v6)
    {
      actionStringFormat = [v6 actionStringFormat];
      v9 = [(IMTapback *)self contentTypeStringForMessageSummaryInfo:infoCopy];
      v10 = [(IMTapback *)self shouldQuoteContentString:infoCopy];
      LODWORD(v11) = [v7 requiresReactionReplacment];
      if (v10)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %%@", actionStringFormat];
      }

      else
      {
        if (v9)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", actionStringFormat, v9];
          v11 = v11;
          goto LABEL_17;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %%@", actionStringFormat];
      }
      v14 = ;
      if (v11)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

LABEL_17:
      languageIdentifier = [(IMTapback *)self languageIdentifier];
      v16 = [languageIdentifier length];
      v17 = [IMLocalizedTapbackStringFormat alloc];
      if (v16)
      {
        v18 = [(IMLocalizedTapbackStringFormat *)v17 initWithLocalizedStringFormatType:v11 unlocalizedFormatString:v14 languageIdentifier:languageIdentifier];
      }

      else
      {
        v18 = [(IMLocalizedTapbackStringFormat *)v17 initWithLocalizedStringFormatType:v11 unlocalizedFormatString:v14];
      }

      v13 = v18;

      goto LABEL_21;
    }

    v12 = IMLogHandleForCategory("IMTapback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C07C8(a2);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory("IMTapback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C06C0(a2);
    }
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (id)_plainStringAssociatedMessageSummaryFromMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider
{
  infoCopy = info;
  providerCopy = provider;
  v7 = [infoCopy __imami_attributedStringForKey:@"ampt"];
  v8 = v7;
  if (!v7 || (v15 = 0, [v7 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingIsAdaptiveImageGlyphProvider:providerCopy replacementTextProvider:&unk_1F1BA5888 removedTransferGUIDsOut:&v15], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "string"), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    __im_associatedMessageSummary = [infoCopy __im_associatedMessageSummary];
    v12 = __im_associatedMessageSummary;
    v13 = &stru_1F1BB91F0;
    if (__im_associatedMessageSummary)
    {
      v13 = __im_associatedMessageSummary;
    }

    v10 = v13;
  }

  return v10;
}

- (id)_plainStringReactionFromAttributedReactionString:(id)string
{
  __im_attributedStringByReplacingAdaptiveImageGlyphsWithUnknownCharacterSymbol = [string __im_attributedStringByReplacingAdaptiveImageGlyphsWithUnknownCharacterSymbol];
  string = [__im_attributedStringByReplacingAdaptiveImageGlyphsWithUnknownCharacterSymbol string];

  return string;
}

- (id)backwardCompatibilityStringWithMessageSummaryInfo:(id)info isAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider
{
  infoCopy = info;
  providerCopy = provider;
  sensitiveProviderCopy = sensitiveProvider;
  if (infoCopy)
  {
    v12 = [(IMTapback *)self backwardCompatibilityStringFormatForMessageSummaryInfo:infoCopy];
    localizedStringFormatType = [v12 localizedStringFormatType];
    localizedFormatString = [v12 localizedFormatString];
    v15 = localizedFormatString;
    v16 = 0;
    if (localizedStringFormatType > 2)
    {
      if ((localizedStringFormatType - 4) < 4)
      {
        v18 = IMLogHandleForCategory("IMTapback");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_1A88C084C(v18);
        }

        v16 = 0;
        goto LABEL_19;
      }

      if (localizedStringFormatType == 3)
      {
        v19 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:0 isCommSafetySensitiveProvider:sensitiveProviderCopy];
        v21 = [(IMTapback *)self _plainStringReactionFromAttributedReactionString:v19];
        v22 = [(IMTapback *)self _plainStringAssociatedMessageSummaryFromMessageSummaryInfo:infoCopy isAdaptiveImageGlyphProvider:providerCopy];
        v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@ %@" error:0, v21, v22];

LABEL_18:
      }
    }

    else
    {
      if (localizedStringFormatType)
      {
        if (localizedStringFormatType != 1)
        {
          if (localizedStringFormatType == 2)
          {
            v17 = [(IMTapback *)self _plainStringAssociatedMessageSummaryFromMessageSummaryInfo:infoCopy isAdaptiveImageGlyphProvider:providerCopy];
            v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v17];
          }

          goto LABEL_19;
        }

        v19 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:0 isCommSafetySensitiveProvider:sensitiveProviderCopy];
        v20 = [(IMTapback *)self _plainStringReactionFromAttributedReactionString:v19];
        v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v20];

        goto LABEL_18;
      }

      v16 = localizedFormatString;
    }

LABEL_19:

    goto LABEL_20;
  }

  v12 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C06C0(a2);
  }

  v16 = 0;
LABEL_20:

  return v16;
}

+ (id)tapbackWithAssociatedMessageType:(int64_t)type
{
  if ((type - 3000) >= 6 && (type - 2000) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[IMClassicTapback alloc] initWithAssociatedMessageType:type];
  }

  return v3;
}

@end