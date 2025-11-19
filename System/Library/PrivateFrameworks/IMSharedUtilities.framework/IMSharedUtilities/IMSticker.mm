@interface IMSticker
+ (IMAssociatedMessageGeometryDescriptor)geometryDescriptorFromUserInfoDictionary:(SEL)a3;
+ (id)saveAdaptiveImageGlyphToTemporaryFile:(id)a3;
+ (id)userInfoDictionaryWithExternalURI:(id)a3;
+ (id)userInfoDictionaryWithLayoutIntent:(unint64_t)a3 parentPreviewWidth:(double)a4 xScalar:(double)a5 yScalar:(double)a6 scale:(double)a7 rotation:(double)a8 initialFrameIndex:(unint64_t)a9 stickerPositionVersion:(unint64_t)a10 externalURI:(id)a11;
- (BOOL)isEqual:(id)a3;
- (IMSticker)init;
- (IMSticker)initWithAdaptiveImageGlyphFromUnknownSource:(id)a3;
- (IMSticker)initWithStickerID:(id)a3 stickerPackID:(id)a4 fileURL:(id)a5 accessibilityLabel:(id)a6 accessibilityName:(id)a7 searchText:(id)a8 sanitizedPrompt:(id)a9 moodCategory:(id)a10 stickerName:(id)a11 effectType:(int64_t)a12 textToSpeechName:(id)a13;
- (IMSticker)initWithStickerIdentifier:(id)a3 stickerPackID:(id)a4 representations:(id)a5 effectType:(int64_t)a6 initialFrameIndex:(unint64_t)a7 externalURI:(id)a8 stickerName:(id)a9 accessibilityLabel:(id)a10 accessibilityName:(id)a11 searchText:(id)a12 sanitizedPrompt:(id)a13 metadata:(id)a14;
- (IMSticker)initWithStickerPropertyDictionary:(id)a3 stickerPackID:(id)a4 stickerPackBundlePath:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getSafeExternalURI;
- (unint64_t)hash;
@end

@implementation IMSticker

- (IMSticker)init
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "IMSticker. Calling init directly is not supported", v5, 2u);
    }
  }

  return 0;
}

- (IMSticker)initWithStickerID:(id)a3 stickerPackID:(id)a4 fileURL:(id)a5 accessibilityLabel:(id)a6 accessibilityName:(id)a7 searchText:(id)a8 sanitizedPrompt:(id)a9 moodCategory:(id)a10 stickerName:(id)a11 effectType:(int64_t)a12 textToSpeechName:(id)a13
{
  v18 = a3;
  v69 = a4;
  v68 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a13;
  v67 = v18;
  if (v18)
  {
    v70.receiver = self;
    v70.super_class = IMSticker;
    v26 = [(IMSticker *)&v70 init];
    if (v26)
    {
      v27 = [v18 copy];
      stickerGUID = v26->_stickerGUID;
      v26->_stickerGUID = v27;

      v29 = [v69 copy];
      stickerPackGUID = v26->_stickerPackGUID;
      v26->_stickerPackGUID = v29;

      v31 = [v68 copy];
      fileURL = v26->_fileURL;
      v26->_fileURL = v31;

      v33 = [v19 copy];
      accessibilityLabel = v26->_accessibilityLabel;
      v26->_accessibilityLabel = v33;

      v35 = [v20 copy];
      accessibilityName = v26->_accessibilityName;
      v26->_accessibilityName = v35;

      v37 = [v21 copy];
      searchText = v26->_searchText;
      v26->_searchText = v37;

      v39 = [v22 copy];
      sanitizedPrompt = v26->_sanitizedPrompt;
      v26->_sanitizedPrompt = v39;

      v41 = [v23 copy];
      moodCategory = v26->_moodCategory;
      v26->_moodCategory = v41;

      v43 = [v24 copy];
      stickerName = v26->_stickerName;
      v26->_stickerName = v43;

      v45 = [v25 copy];
      textToSpeechName = v26->_textToSpeechName;
      v26->_textToSpeechName = v45;

      v47 = v25;
      v48 = v22;
      v49 = MEMORY[0x1E696AEC0];
      [(IMSticker *)v26 stickerPackGUID];
      v66 = v24;
      v50 = v21;
      v52 = v51 = v19;
      [(IMSticker *)v26 stickerGUID];
      v53 = v23;
      v55 = v54 = v20;
      v56 = v49;
      v22 = v48;
      v25 = v47;
      v57 = [v56 stringWithFormat:@"%@.%@", v52, v55];
      uniqueID = v26->_uniqueID;
      v26->_uniqueID = v57;

      v20 = v54;
      v23 = v53;

      v19 = v51;
      v21 = v50;
      v24 = v66;
      externalURI = v26->_externalURI;
      v26->_externalURI = 0;

      representations = v26->_representations;
      v26->_representations = 0;

      v26->_stickerEffectType = -1;
    }

    v61 = v26;
    v62 = v61;
  }

  else
  {
    v61 = self;
    v63 = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3614();
    }

    v62 = 0;
  }

  return v62;
}

- (IMSticker)initWithStickerIdentifier:(id)a3 stickerPackID:(id)a4 representations:(id)a5 effectType:(int64_t)a6 initialFrameIndex:(unint64_t)a7 externalURI:(id)a8 stickerName:(id)a9 accessibilityLabel:(id)a10 accessibilityName:(id)a11 searchText:(id)a12 sanitizedPrompt:(id)a13 metadata:(id)a14
{
  v17 = a3;
  v18 = a4;
  obj = a5;
  v55 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v56.receiver = self;
  v56.super_class = IMSticker;
  v26 = [(IMSticker *)&v56 init];
  if (v26)
  {
    v27 = [v17 copy];
    stickerGUID = v26->_stickerGUID;
    v26->_stickerGUID = v27;

    v29 = [v18 copy];
    stickerPackGUID = v26->_stickerPackGUID;
    v26->_stickerPackGUID = v29;

    fileURL = v26->_fileURL;
    v26->_fileURL = 0;

    v32 = [v21 copy];
    accessibilityLabel = v26->_accessibilityLabel;
    v26->_accessibilityLabel = v32;

    v34 = [v22 copy];
    accessibilityName = v26->_accessibilityName;
    v26->_accessibilityName = v34;

    v36 = [v23 copy];
    searchText = v26->_searchText;
    v26->_searchText = v36;

    v38 = [v24 copy];
    sanitizedPrompt = v26->_sanitizedPrompt;
    v26->_sanitizedPrompt = v38;

    moodCategory = v26->_moodCategory;
    v26->_moodCategory = 0;

    v41 = [v20 copy];
    stickerName = v26->_stickerName;
    v26->_stickerName = v41;

    textToSpeechName = v26->_textToSpeechName;
    v26->_textToSpeechName = 0;

    v44 = [(IMSticker *)v26 stickerGUID];
    uniqueID = v26->_uniqueID;
    v26->_uniqueID = v44;

    v46 = [v19 copy];
    externalURI = v26->_externalURI;
    v26->_externalURI = v46;

    objc_storeStrong(&v26->_representations, obj);
    v26->_stickerEffectType = a6;
    v26->_initialFrameIndex = a7;
    v48 = [v25 copy];
    metadata = v26->_metadata;
    v26->_metadata = v48;
  }

  return v26;
}

- (IMSticker)initWithAdaptiveImageGlyphFromUnknownSource:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = IMSticker;
  v6 = [(IMSticker *)&v38 init];
  if (v6)
  {
    v7 = [v5 contentIdentifier];
    v8 = [v7 copy];
    stickerGUID = v6->_stickerGUID;
    v6->_stickerGUID = v8;

    stickerPackGUID = v6->_stickerPackGUID;
    v6->_stickerPackGUID = @"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension";

    v11 = [IMSticker saveAdaptiveImageGlyphToTemporaryFile:v5];
    v12 = [v11 copy];
    fileURL = v6->_fileURL;
    v6->_fileURL = v12;

    v14 = [v5 contentIdentifier];
    v15 = [v14 copy];
    adaptiveImageGlyphContentIdentifier = v6->_adaptiveImageGlyphContentIdentifier;
    v6->_adaptiveImageGlyphContentIdentifier = v15;

    v17 = [v5 contentDescription];
    v18 = [v17 copy];
    adaptiveImageGlyphContentDescription = v6->_adaptiveImageGlyphContentDescription;
    v6->_adaptiveImageGlyphContentDescription = v18;

    objc_storeStrong(&v6->_cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly, a3);
    v20 = [v5 contentDescription];
    v21 = [v20 copy];
    accessibilityLabel = v6->_accessibilityLabel;
    v6->_accessibilityLabel = v21;

    moodCategory = v6->_moodCategory;
    v6->_moodCategory = 0;

    v24 = [v5 contentDescription];
    v25 = [v24 copy];
    stickerName = v6->_stickerName;
    v6->_stickerName = v25;

    v27 = [v5 contentDescription];
    v28 = [v27 copy];
    textToSpeechName = v6->_textToSpeechName;
    v6->_textToSpeechName = v28;

    v30 = MEMORY[0x1E696AEC0];
    v31 = [(IMSticker *)v6 stickerPackGUID];
    v32 = [(IMSticker *)v6 stickerGUID];
    v33 = [v30 stringWithFormat:@"%@.%@", v31, v32];
    uniqueID = v6->_uniqueID;
    v6->_uniqueID = v33;

    externalURI = v6->_externalURI;
    v6->_externalURI = 0;

    representations = v6->_representations;
    v6->_representations = 0;

    v6->_stickerEffectType = -1;
  }

  return v6;
}

+ (id)saveAdaptiveImageGlyphToTemporaryFile:(id)a3
{
  v3 = a3;
  v4 = [v3 contentIdentifier];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 im_temporaryFileURLForAdaptiveImageGlyphWithContentIdentifier:v4];
  v7 = [v6 path];
  if ([v5 fileExistsAtPath:v7])
  {
    v8 = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Temporary file already exists for adaptive image glyph content identifier, not re-saving image.", v13, 2u);
    }
  }

  else
  {
    v8 = [v7 stringByDeletingLastPathComponent];
    if (([v5 __im_makeDirectoriesInPath:v8 mode:448] & 1) == 0)
    {
      v9 = IMLogHandleForCategory("IMSticker");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C3648();
      }
    }

    v10 = [v3 imageContent];
    if (([v10 writeToURL:v6 atomically:1] & 1) == 0)
    {
      v11 = IMLogHandleForCategory("IMSticker");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C367C();
      }
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(IMSticker *)self stickerGUID];
        v7 = [(IMSticker *)v5 stickerGUID];
        v8 = v6;
        v9 = v7;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          v11 = 0;
          v12 = v9;
          v13 = v8;
          if (!v8 || !v9)
          {
            goto LABEL_79;
          }

          v14 = [v8 isEqualToString:v9];

          if (!v14)
          {
            v11 = 0;
LABEL_80:

            goto LABEL_81;
          }
        }

        v15 = [(IMSticker *)self stickerPackGUID];
        v16 = [(IMSticker *)v5 stickerPackGUID];
        v13 = v15;
        v17 = v16;
        v12 = v17;
        if (v13 == v17)
        {
        }

        else
        {
          v11 = 0;
          v18 = v17;
          v19 = v13;
          if (!v13 || !v17)
          {
            goto LABEL_78;
          }

          v20 = [v13 isEqualToString:v17];

          if (!v20)
          {
            v11 = 0;
LABEL_79:

            goto LABEL_80;
          }
        }

        v21 = [(IMSticker *)self stickerName];
        v22 = [(IMSticker *)v5 stickerName];
        v19 = v21;
        v23 = v22;
        v18 = v23;
        if (v19 == v23)
        {
        }

        else
        {
          v11 = 0;
          v24 = v23;
          v25 = v19;
          if (!v19 || !v23)
          {
            goto LABEL_77;
          }

          v26 = [v19 isEqualToString:v23];

          if (!v26)
          {
            v11 = 0;
LABEL_78:

            goto LABEL_79;
          }
        }

        v27 = [(IMSticker *)self textToSpeechName];
        v28 = [(IMSticker *)v5 textToSpeechName];
        v25 = v27;
        v29 = v28;
        v75 = v29;
        v74 = v18;
        if (v25 != v29)
        {
          v11 = 0;
          if (v25)
          {
            v30 = v29;
            v31 = v25;
            if (v29)
            {
              v32 = [v25 isEqualToString:v29];

              if (!v32)
              {
                v11 = 0;
LABEL_76:
                v24 = v75;
                v18 = v74;
LABEL_77:

                goto LABEL_78;
              }

LABEL_30:
              v73 = v25;
              v33 = [(IMSticker *)self moodCategory];
              v34 = [(IMSticker *)v5 moodCategory];
              v35 = v33;
              v36 = v34;
              v71 = v36;
              v72 = v35;
              if (v35 == v36)
              {
              }

              else
              {
                v11 = 0;
                if (!v35)
                {
                  v37 = v36;
                  v25 = v73;
                  goto LABEL_73;
                }

                v37 = v36;
                v25 = v73;
                if (!v36)
                {
LABEL_73:

                  goto LABEL_74;
                }

                v38 = [v35 isEqualToString:v36];

                if (!v38)
                {
                  v11 = 0;
                  v25 = v73;
LABEL_74:
                  v30 = v71;
                  v31 = v72;
                  goto LABEL_75;
                }
              }

              v39 = [(IMSticker *)self accessibilityLabel];
              v40 = [(IMSticker *)v5 accessibilityLabel];
              v35 = v39;
              v41 = v40;
              v69 = v35;
              v70 = v41;
              if (v35 != v41)
              {
                v11 = 0;
                if (v35)
                {
                  v42 = v41;
                  v25 = v73;
                  if (v41)
                  {
                    v43 = [v35 isEqualToString:v41];

                    if (!v43)
                    {
                      v11 = 0;
                      v25 = v73;
                      v37 = v70;
                      goto LABEL_73;
                    }

LABEL_43:
                    v44 = [(IMSticker *)self fileURL];
                    v45 = [(IMSticker *)v5 fileURL];
                    v46 = v44;
                    v47 = v45;
                    v67 = v47;
                    v68 = v46;
                    if (v46 != v47)
                    {
                      v11 = 0;
                      if (v46)
                      {
                        v48 = v47;
                        v25 = v73;
                        if (v47)
                        {
                          v49 = [v46 isEqual:v47];

                          if (!v49)
                          {
                            v11 = 0;
                            v25 = v73;
LABEL_71:
                            v42 = v67;
                            v35 = v68;
                            goto LABEL_72;
                          }

LABEL_50:
                          v50 = [(IMSticker *)self representations];
                          v51 = [(IMSticker *)v5 representations];
                          v46 = v50;
                          v52 = v51;
                          v66 = v52;
                          if (v46 == v52)
                          {
                          }

                          else
                          {
                            v11 = 0;
                            if (!v46)
                            {
                              v53 = v52;
                              v54 = 0;
                              goto LABEL_68;
                            }

                            v53 = v52;
                            v54 = v46;
                            if (!v52)
                            {
LABEL_68:

                              goto LABEL_69;
                            }

                            v55 = [v46 isEqual:v52];

                            if (!v55)
                            {
                              v11 = 0;
LABEL_69:
                              v25 = v73;
                              v48 = v66;
                              goto LABEL_70;
                            }
                          }

                          v56 = [(IMSticker *)self externalURI];
                          v57 = [(IMSticker *)v5 externalURI];
                          v54 = v56;
                          v58 = v57;
                          if (v54 == v58)
                          {
                            v64 = v58;

                            v65 = v54;
                          }

                          else
                          {
                            if (!v54 || !v58)
                            {
                              v61 = v58;

                              v53 = v61;
                              v11 = 0;
                              goto LABEL_68;
                            }

                            v59 = v58;
                            v63 = [v54 isEqualToString:v58];
                            v64 = v59;

                            v65 = v54;
                            if (!v63)
                            {
                              v11 = 0;
LABEL_65:
                              v53 = v64;
                              v54 = v65;
                              goto LABEL_68;
                            }
                          }

                          v60 = [(IMSticker *)self initialFrameIndex];
                          v11 = v60 == [(IMSticker *)v5 initialFrameIndex];
                          goto LABEL_65;
                        }
                      }

                      else
                      {
                        v48 = v47;
                        v25 = v73;
                      }

LABEL_70:

                      goto LABEL_71;
                    }

                    goto LABEL_50;
                  }
                }

                else
                {
                  v42 = v41;
                  v25 = v73;
                }

LABEL_72:

                v35 = v69;
                v37 = v70;
                goto LABEL_73;
              }

              goto LABEL_43;
            }
          }

          else
          {
            v30 = v29;
            v31 = 0;
          }

LABEL_75:

          goto LABEL_76;
        }

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_81:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(IMSticker *)self uniqueID];
  v3 = [v2 hash];

  return v3;
}

- (IMSticker)initWithStickerPropertyDictionary:(id)a3 stickerPackID:(id)a4 stickerPackBundlePath:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9 && ([v8 objectForKey:@"IMStickerIdentifier"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10) && v11)
  {
    v12 = [v8 objectForKey:@"IMStickerIdentifier"];
    v13 = [v12 im_lastPathComponent];
    if ([v13 length])
    {
      v14 = MEMORY[0x1E695DFF8];
      v15 = [v10 stringByAppendingPathComponent:v13];
      v29 = [v14 fileURLWithPath:v15];

      v16 = [v8 objectForKeyedSubscript:@"stickerEffectType"];
      objc_opt_class();
      v28 = v13;
      if (objc_opt_isKindOfClass())
      {
        v27 = [v16 integerValue];
      }

      else
      {
        v27 = -1;
      }

      v25 = [v8 objectForKey:@"IMStickerIdentifier"];
      v26 = [v8 objectForKey:@"IMStickerAccessibilityLabel"];
      v24 = [v8 objectForKey:@"IMStickerAccessibilityName"];
      v19 = [v8 objectForKey:@"IMStickerSearchText"];
      v23 = [v8 objectForKey:@"IMStickerSanitizedPrompt"];
      v20 = [v8 objectForKey:@"IMStickerMoodCategory"];
      v21 = [v8 objectForKey:@"IMStickerName"];
      self = [(IMSticker *)self initWithStickerID:v25 stickerPackID:v9 fileURL:v29 accessibilityLabel:v26 accessibilityName:v24 searchText:v19 sanitizedPrompt:v23 moodCategory:v20 stickerName:v21 effectType:v27];

      v17 = self;
      v13 = v28;
    }

    else
    {
      v18 = IMLogHandleForCategory("IMSticker");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C36B0(v12, v18);
      }

      v17 = 0;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v10;
      _os_log_error_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_ERROR, "initWithStickerPropertyDictionary called with invalid parameters stickerPropertyDictionary %@ stickerPackGUID %@ stickerPackBundlePath %@", buf, 0x20u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)getSafeExternalURI
{
  if ([(NSString *)self->_externalURI hasPrefix:@"sticker:///"])
  {
    v3 = [(NSString *)self->_externalURI componentsSeparatedByString:@"/"];
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"__im_isValidUUID = TRUE"];
    v5 = [v3 filteredArrayUsingPredicate:v4];

    if ([v5 count] < 2)
    {
      if ([v5 count] == 1)
      {
        v8 = [v5 firstObject];
        v7 = [(NSString *)self->_externalURI stringByReplacingOccurrencesOfString:v8 withString:&stru_1F1BB91F0];
      }

      else
      {
        v7 = self->_externalURI;
      }
    }

    else
    {
      v6 = IMLogHandleForCategory("IMSticker");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "This externalURI format was not accounted for at time of writing this function. Returning empty string.", buf, 2u);
      }

      v7 = &stru_1F1BB91F0;
    }
  }

  else
  {
    v3 = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "externalURI did not start with 'sticker:///'. Returning empty string.", v10, 2u);
    }

    v7 = &stru_1F1BB91F0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(IMSticker *)self representations];

  v30 = objc_alloc(objc_opt_class());
  v31 = [(IMSticker *)self stickerGUID];
  v5 = [(IMSticker *)self stickerPackGUID];
  if (v4)
  {
    v28 = [(IMSticker *)self representations];
    v6 = v5;
    v26 = v5;
    v27 = [(IMSticker *)self stickerEffectType];
    v7 = [(IMSticker *)self initialFrameIndex];
    v8 = [(IMSticker *)self externalURI];
    v9 = [(IMSticker *)self stickerName];
    v10 = [(IMSticker *)self accessibilityLabel];
    v11 = [(IMSticker *)self accessibilityName];
    v12 = [(IMSticker *)self searchText];
    v13 = [(IMSticker *)self sanitizedPrompt];
    v14 = [(IMSticker *)self metadata];
    v15 = [v30 initWithStickerIdentifier:v31 stickerPackID:v6 representations:v28 effectType:v27 initialFrameIndex:v7 externalURI:v8 stickerName:v9 accessibilityLabel:v10 accessibilityName:v11 searchText:v12 sanitizedPrompt:v13 metadata:v14];
  }

  else
  {
    v29 = [(IMSticker *)self fileURL];
    v16 = [(IMSticker *)self accessibilityLabel];
    v17 = [(IMSticker *)self accessibilityName];
    v18 = [(IMSticker *)self searchText];
    v19 = [(IMSticker *)self sanitizedPrompt];
    v20 = [(IMSticker *)self moodCategory];
    v21 = [(IMSticker *)self stickerName];
    v22 = [(IMSticker *)self textToSpeechName];
    v23 = v5;
    v15 = [v30 initWithStickerID:v31 stickerPackID:v5 fileURL:v29 accessibilityLabel:v16 accessibilityName:v17 searchText:v18 sanitizedPrompt:v19 moodCategory:v20 stickerName:v21 textToSpeechName:v22];

    [v15 setStickerEffectType:{-[IMSticker stickerEffectType](self, "stickerEffectType")}];
  }

  v24 = v15;

  return v24;
}

+ (id)userInfoDictionaryWithLayoutIntent:(unint64_t)a3 parentPreviewWidth:(double)a4 xScalar:(double)a5 yScalar:(double)a6 scale:(double)a7 rotation:(double)a8 initialFrameIndex:(unint64_t)a9 stickerPositionVersion:(unint64_t)a10 externalURI:(id)a11
{
  v33[10] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v31 = a11;
  v29 = [v18 stringWithFormat:@"%tu", a3];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", 0];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&a4];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&a5];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&a6];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&a7];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a9];
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&a8];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a10];
  v32[0] = @"sli";
  v32[1] = @"sai";
  v33[0] = v29;
  v33[1] = v19;
  v32[2] = @"spw";
  v32[3] = @"sxs";
  v33[2] = v20;
  v33[3] = v21;
  v32[4] = @"sys";
  v32[5] = @"ssa";
  v33[4] = v22;
  v33[5] = v23;
  v32[6] = @"sro";
  v32[7] = @"safi";
  v33[6] = v25;
  v33[7] = v24;
  v32[8] = @"spv";
  v32[9] = @"suri";
  v33[8] = v26;
  v33[9] = v31;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:10];

  return v27;
}

+ (id)userInfoDictionaryWithExternalURI:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8 = @"suri";
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3728();
    }

    v5 = 0;
  }

  return v5;
}

+ (IMAssociatedMessageGeometryDescriptor)geometryDescriptorFromUserInfoDictionary:(SEL)a3
{
  v5 = a4;
  *&retstr->var0 = IMAssociatedMessageGeometryDescriptorZero;
  *&retstr->var2 = *algn_1A88E11F0;
  *&retstr->var4 = xmmword_1A88E1200;
  retstr->var6 = 0.0;
  if (v5)
  {
    v30 = v5;
    v6 = [v5 objectForKeyedSubscript:@"sli"];
    if (v6)
    {
      v7 = [v30 objectForKeyedSubscript:@"sli"];
      v8 = [v7 integerValue];
    }

    else
    {
      v8 = 0;
    }

    retstr->var0 = v8;

    v9 = [v30 objectForKeyedSubscript:@"sli"];
    v10 = 0.0;
    v11 = 0.0;
    if (v9)
    {
      v12 = [v30 objectForKeyedSubscript:@"sli"];
      [v12 doubleValue];
      v11 = v13;
    }

    retstr->var2 = v11;

    v14 = [v30 objectForKeyedSubscript:@"sxs"];
    if (v14)
    {
      v15 = [v30 objectForKeyedSubscript:@"sxs"];
      [v15 doubleValue];
      v10 = v16;
    }

    retstr->var3 = v10;

    v17 = [v30 objectForKeyedSubscript:@"sys"];
    v18 = 0.0;
    v19 = 0.0;
    if (v17)
    {
      v20 = [v30 objectForKeyedSubscript:@"sys"];
      [v20 doubleValue];
      v19 = v21;
    }

    retstr->var4 = v19;

    v22 = [v30 objectForKeyedSubscript:@"ssa"];
    if (v22)
    {
      v23 = [v30 objectForKeyedSubscript:@"ssa"];
      [v23 doubleValue];
      v18 = v24;
    }

    retstr->var5 = v18;

    v25 = [v30 objectForKeyedSubscript:@"sro"];
    if (v25)
    {
      v26 = [v30 objectForKeyedSubscript:@"sro"];
      [v26 doubleValue];
      v28 = v27;
    }

    else
    {
      v28 = 0.0;
    }

    retstr->var6 = v28;

    v5 = v30;
  }

  return result;
}

@end