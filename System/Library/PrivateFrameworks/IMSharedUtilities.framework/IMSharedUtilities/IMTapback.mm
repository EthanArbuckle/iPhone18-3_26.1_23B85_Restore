@interface IMTapback
+ (id)tapbackWithAssociatedMessageType:(int64_t)a3;
- (BOOL)_isAssociatedMessageContentTypeTextInMessageSummaryInfo:(id)a3;
- (BOOL)_isAttachmentOnlyMessageText:(id)a3 isAdaptiveImageGlyphProvider:(id)a4;
- (BOOL)isEqual:(id)a3;
- (IMTapback)init;
- (IMTapback)initWithAssociatedMessageType:(int64_t)a3;
- (IMTapback)initWithCoder:(id)a3;
- (IMTapback)initWithIMRemoteObjectSerializedDictionary:(id)a3;
- (id)_attributedAssociatedMessageSummaryFromMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5 adaptiveImageGlyphProvider:(id)a6 effectString:(id)a7;
- (id)_convertDatabaseFormatAssociatedMessageSummaryToDisplayFormat:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5 adaptiveImageGlyphProvider:(id)a6;
- (id)_plainStringAssociatedMessageSummaryFromMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4;
- (id)_plainStringReactionFromAttributedReactionString:(id)a3;
- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3;
- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)a3;
- (id)backwardCompatibilityStringFormatForMessageSummaryInfo:(id)a3;
- (id)backwardCompatibilityStringWithMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5;
- (id)contentTypeStringForMessageSummaryInfo:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)emojiReactionForPreviewString;
- (id)previewAttributedStringWithMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5 adaptiveImageGlyphProvider:(id)a6 senderDisplayName:(id)a7 isFromMe:(BOOL)a8 effectString:(id)a9;
- (id)previewStringFormatForMessageSummaryInfo:(id)a3 adaptiveImageGlyphAvailable:(BOOL)a4 isFromMe:(BOOL)a5;
- (id)reactionStringWithAdaptiveImageGlyph:(id)a3 isCommSafetySensitiveProvider:(id)a4;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3;
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

- (IMTapback)initWithAssociatedMessageType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = IMTapback;
  v4 = [(IMTapback *)&v8 init];
  if (!v4)
  {
    goto LABEL_4;
  }

  if ([objc_opt_class() isValidAssociatedMessageType:a3])
  {
    v4->_associatedMessageType = a3;
LABEL_4:
    v5 = v4;
    goto LABEL_8;
  }

  v6 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C032C(a3, v4, v6);
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IMTapback *)self associatedMessageType];
      v6 = v5 == [(IMTapback *)v4 associatedMessageType];
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
  v5 = [(IMTapback *)self associatedMessageType];
  v6 = MEMORY[0x1E696AEC0];
  v7 = IMStringFromAssociatedMessageType(v5);
  v8 = [v6 stringWithFormat:@"%ld (%@)", v5, v7];

  v9 = [v3 stringWithFormat:@"%@: associated message type: %@", v4, v8];

  return v9;
}

- (IMTapback)initWithCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"associatedMessageType"];

  return [(IMTapback *)self initWithAssociatedMessageType:v4];
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3
{
  theDict = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_associatedMessageType];
  if (v4)
  {
    CFDictionarySetValue(theDict, @"associatedMessageType", v4);
  }
}

- (IMTapback)initWithIMRemoteObjectSerializedDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"associatedMessageType"];
  v5 = -[IMTapback initWithAssociatedMessageType:](self, "initWithAssociatedMessageType:", [v4 unsignedLongValue]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  associatedMessageType = self->_associatedMessageType;

  return [v4 initWithAssociatedMessageType:associatedMessageType];
}

- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3
{
  v4 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C0428(a2);
  }

  return 0;
}

- (id)reactionStringWithAdaptiveImageGlyph:(id)a3 isCommSafetySensitiveProvider:(id)a4
{
  v5 = IMLogHandleForCategory("IMTapback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C04AC(a2);
  }

  return 0;
}

- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)a3
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

- (BOOL)_isAssociatedMessageContentTypeTextInMessageSummaryInfo:(id)a3
{
  v3 = [a3 __im_associatedMessageContentType];
  v4 = [v3 integerValue];

  return v4 == 1;
}

- (BOOL)_isAttachmentOnlyMessageText:(id)a3 isAdaptiveImageGlyphProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 string];
  if ([v7 isEqualToString:*MEMORY[0x1E69A5F00]])
  {
    v8 = [v5 attribute:*MEMORY[0x1E69A5F68] atIndex:0 effectiveRange:0];
    if ([v8 length])
    {
      if (v6[2](v6, v8))
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

- (id)contentTypeStringForMessageSummaryInfo:(id)a3
{
  if (a3)
  {
    v3 = [a3 __im_associatedMessageContentType];
    v4 = [v3 integerValue];

    if (v4 <= 0xAu)
    {
      return *(&off_1E7826590 + (v4 & 0xF));
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

- (id)previewStringFormatForMessageSummaryInfo:(id)a3 adaptiveImageGlyphAvailable:(BOOL)a4 isFromMe:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (v9)
  {
    v10 = [(IMTapback *)self shouldQuoteContentString:v9];
    v11 = [(IMTapback *)self actionStringFormatWithAdaptiveImageGlyphAvailable:v6];
    if (v11)
    {
      v12 = [(IMTapback *)self contentTypeStringForMessageSummaryInfo:v9];
      v14 = [v11 actionStringFormat];
      v13 = [v14 lowercaseString];

      LODWORD(v14) = [v11 requiresReactionReplacment];
      if (v5)
      {
        if (v10)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"You %@ %%@", v13];
        }

        else
        {
          if (v12)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"You %@ %@", v13, v12];
            v14 = v14;
            goto LABEL_25;
          }

          [MEMORY[0x1E696AEC0] stringWithFormat:@"You %@ %%@", v13];
        }
        v17 = ;
        v18 = v14 == 0;
        v19 = 2;
      }

      else
      {
        if (v10)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%%@ %@ %%@", v13];
        }

        else
        {
          if (v12)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%@ %@ %@", v13, v12];
            v18 = v14 == 0;
            v19 = 4;
            goto LABEL_22;
          }

          [MEMORY[0x1E696AEC0] stringWithFormat:@"%%@ %@ %%@", v13];
        }
        v17 = ;
        v18 = v14 == 0;
        v19 = 6;
      }

LABEL_22:
      if (v18)
      {
        v14 = v19;
      }

      else
      {
        v14 = v19 + 1;
      }

LABEL_25:
      v20 = [(IMTapback *)self languageIdentifier];
      v21 = [v20 length];
      v22 = [IMLocalizedTapbackStringFormat alloc];
      if (v21)
      {
        v23 = [(IMLocalizedTapbackStringFormat *)v22 initWithLocalizedStringFormatType:v14 unlocalizedFormatString:v17 languageIdentifier:v20];
      }

      else
      {
        v23 = [(IMLocalizedTapbackStringFormat *)v22 initWithLocalizedStringFormatType:v14 unlocalizedFormatString:v17];
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

- (id)_convertDatabaseFormatAssociatedMessageSummaryToDisplayFormat:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5 adaptiveImageGlyphProvider:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [a3 mutableCopy];
  [v12 __im_insertAdaptiveImageGlyphsForFileTransfersUsingIsAdaptiveImageGlyphProvider:v11 isCommSafetySensitiveProvider:v10 adaptiveImageGlyphProvider:v9];

  [v12 __im_filterAttributesForDisplayablePreviewText];
  v13 = [v12 copy];

  return v13;
}

- (id)_attributedAssociatedMessageSummaryFromMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5 adaptiveImageGlyphProvider:(id)a6 effectString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v16 && [v16 length])
  {
    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17];
    goto LABEL_18;
  }

  v19 = [v12 objectForKey:@"ame"];
  if (![v19 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"])
  {
    if ([(IMTapback *)self _isAssociatedMessageContentTypeTextInMessageSummaryInfo:v12])
    {
      v23 = [v12 __imami_attributedStringForKey:@"ampt"];
      v24 = [v23 im_trimmedSummaryIfNeededForTapback];

      if (v24)
      {
        if (![(IMTapback *)self _isAttachmentOnlyMessageText:v24 isAdaptiveImageGlyphProvider:v13])
        {
          v18 = [(IMTapback *)self _convertDatabaseFormatAssociatedMessageSummaryToDisplayFormat:v24 isAdaptiveImageGlyphProvider:v13 isCommSafetySensitiveProvider:v14 adaptiveImageGlyphProvider:v15];

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
    v26 = [v12 __im_associatedMessageSummary];
    v27 = v26;
    v28 = &stru_1F1BB91F0;
    if (v26)
    {
      v28 = v26;
    }

    v21 = v28;

    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    goto LABEL_16;
  }

  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  v21 = [v12 __im_associatedMessageSummary];
  v22 = v20;
LABEL_16:
  v18 = [v22 initWithString:v21];

LABEL_17:
LABEL_18:

  return v18;
}

- (id)previewAttributedStringWithMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5 adaptiveImageGlyphProvider:(id)a6 senderDisplayName:(id)a7 isFromMe:(BOOL)a8 effectString:(id)a9
{
  v9 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = [(IMTapback *)self adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:v18];
  v22 = [(IMTapback *)self previewStringFormatForMessageSummaryInfo:v15 adaptiveImageGlyphAvailable:v21 != 0 isFromMe:v9];
  v23 = v22;
  if (!v22)
  {
    v26 = 0;
    goto LABEL_37;
  }

  v48 = v16;
  v47 = [v22 localizedFormatString];
  v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v47];
  v25 = [v23 localizedStringFormatType];
  v26 = 0;
  if (v25 > 3)
  {
    if (v25 <= 5)
    {
      if (v25 == 4)
      {
        v36 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (v19)
        {
          v37 = v19;
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
      if (v19)
      {
        v29 = v19;
      }

      else
      {
        v29 = &stru_1F1BB91F0;
      }

      v30 = [v28 initWithString:v29];
      v45 = v30;
      v31 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:v17];
LABEL_35:
      v42 = v31;
      v26 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v24, v30, v31];

      goto LABEL_36;
    }

    if (v25 != 6)
    {
      if (v25 == 7)
      {
        v33 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (v19)
        {
          v34 = v19;
        }

        else
        {
          v34 = &stru_1F1BB91F0;
        }

        v46 = [v33 initWithString:v34];
        v44 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:v17];
        v35 = [(IMTapback *)self _attributedAssociatedMessageSummaryFromMessageSummaryInfo:v15 isAdaptiveImageGlyphProvider:v48 isCommSafetySensitiveProvider:v17 adaptiveImageGlyphProvider:v18 effectString:v20];
        v26 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v24, v46, v44, v35];
      }

      goto LABEL_36;
    }

    v40 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v19)
    {
      v41 = v19;
    }

    else
    {
      v41 = &stru_1F1BB91F0;
    }

    v32 = [v40 initWithString:v41];
LABEL_34:
    v30 = v32;
    v45 = v32;
    v31 = [(IMTapback *)self _attributedAssociatedMessageSummaryFromMessageSummaryInfo:v15 isAdaptiveImageGlyphProvider:v48 isCommSafetySensitiveProvider:v17 adaptiveImageGlyphProvider:v18 effectString:v20];
    goto LABEL_35;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v27 = [(IMTapback *)self _attributedAssociatedMessageSummaryFromMessageSummaryInfo:v15 isAdaptiveImageGlyphProvider:v48 isCommSafetySensitiveProvider:v17 adaptiveImageGlyphProvider:v18 effectString:v20];
      goto LABEL_28;
    }

    v32 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:v17];
    goto LABEL_34;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      v27 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:v21 isCommSafetySensitiveProvider:v17];
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

  v16 = v48;
LABEL_37:

  return v26;
}

- (id)backwardCompatibilityStringFormatForMessageSummaryInfo:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(IMTapback *)self actionStringFormatWithAdaptiveImageGlyphAvailable:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 actionStringFormat];
      v9 = [(IMTapback *)self contentTypeStringForMessageSummaryInfo:v5];
      v10 = [(IMTapback *)self shouldQuoteContentString:v5];
      LODWORD(v11) = [v7 requiresReactionReplacment];
      if (v10)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %%@", v8];
      }

      else
      {
        if (v9)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v8, v9];
          v11 = v11;
          goto LABEL_17;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %%@", v8];
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
      v15 = [(IMTapback *)self languageIdentifier];
      v16 = [v15 length];
      v17 = [IMLocalizedTapbackStringFormat alloc];
      if (v16)
      {
        v18 = [(IMLocalizedTapbackStringFormat *)v17 initWithLocalizedStringFormatType:v11 unlocalizedFormatString:v14 languageIdentifier:v15];
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

- (id)_plainStringAssociatedMessageSummaryFromMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 __imami_attributedStringForKey:@"ampt"];
  v8 = v7;
  if (!v7 || (v15 = 0, [v7 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingIsAdaptiveImageGlyphProvider:v6 replacementTextProvider:&unk_1F1BA5888 removedTransferGUIDsOut:&v15], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "string"), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = [v5 __im_associatedMessageSummary];
    v12 = v11;
    v13 = &stru_1F1BB91F0;
    if (v11)
    {
      v13 = v11;
    }

    v10 = v13;
  }

  return v10;
}

- (id)_plainStringReactionFromAttributedReactionString:(id)a3
{
  v3 = [a3 __im_attributedStringByReplacingAdaptiveImageGlyphsWithUnknownCharacterSymbol];
  v4 = [v3 string];

  return v4;
}

- (id)backwardCompatibilityStringWithMessageSummaryInfo:(id)a3 isAdaptiveImageGlyphProvider:(id)a4 isCommSafetySensitiveProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [(IMTapback *)self backwardCompatibilityStringFormatForMessageSummaryInfo:v9];
    v13 = [v12 localizedStringFormatType];
    v14 = [v12 localizedFormatString];
    v15 = v14;
    v16 = 0;
    if (v13 > 2)
    {
      if ((v13 - 4) < 4)
      {
        v18 = IMLogHandleForCategory("IMTapback");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_1A88C084C(v18);
        }

        v16 = 0;
        goto LABEL_19;
      }

      if (v13 == 3)
      {
        v19 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:0 isCommSafetySensitiveProvider:v11];
        v21 = [(IMTapback *)self _plainStringReactionFromAttributedReactionString:v19];
        v22 = [(IMTapback *)self _plainStringAssociatedMessageSummaryFromMessageSummaryInfo:v9 isAdaptiveImageGlyphProvider:v10];
        v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@ %@" error:0, v21, v22];

LABEL_18:
      }
    }

    else
    {
      if (v13)
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v17 = [(IMTapback *)self _plainStringAssociatedMessageSummaryFromMessageSummaryInfo:v9 isAdaptiveImageGlyphProvider:v10];
            v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v17];
          }

          goto LABEL_19;
        }

        v19 = [(IMTapback *)self reactionStringWithAdaptiveImageGlyph:0 isCommSafetySensitiveProvider:v11];
        v20 = [(IMTapback *)self _plainStringReactionFromAttributedReactionString:v19];
        v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v20];

        goto LABEL_18;
      }

      v16 = v14;
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

+ (id)tapbackWithAssociatedMessageType:(int64_t)a3
{
  if ((a3 - 3000) >= 6 && (a3 - 2000) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[IMClassicTapback alloc] initWithAssociatedMessageType:a3];
  }

  return v3;
}

@end