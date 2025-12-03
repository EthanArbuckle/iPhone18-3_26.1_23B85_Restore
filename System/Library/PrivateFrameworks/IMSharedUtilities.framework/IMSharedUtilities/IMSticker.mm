@interface IMSticker
+ (IMAssociatedMessageGeometryDescriptor)geometryDescriptorFromUserInfoDictionary:(SEL)dictionary;
+ (id)saveAdaptiveImageGlyphToTemporaryFile:(id)file;
+ (id)userInfoDictionaryWithExternalURI:(id)i;
+ (id)userInfoDictionaryWithLayoutIntent:(unint64_t)intent parentPreviewWidth:(double)width xScalar:(double)scalar yScalar:(double)yScalar scale:(double)scale rotation:(double)rotation initialFrameIndex:(unint64_t)index stickerPositionVersion:(unint64_t)self0 externalURI:(id)self1;
- (BOOL)isEqual:(id)equal;
- (IMSticker)init;
- (IMSticker)initWithAdaptiveImageGlyphFromUnknownSource:(id)source;
- (IMSticker)initWithStickerID:(id)d stickerPackID:(id)iD fileURL:(id)l accessibilityLabel:(id)label accessibilityName:(id)name searchText:(id)text sanitizedPrompt:(id)prompt moodCategory:(id)self0 stickerName:(id)self1 effectType:(int64_t)self2 textToSpeechName:(id)self3;
- (IMSticker)initWithStickerIdentifier:(id)identifier stickerPackID:(id)d representations:(id)representations effectType:(int64_t)type initialFrameIndex:(unint64_t)index externalURI:(id)i stickerName:(id)name accessibilityLabel:(id)self0 accessibilityName:(id)self1 searchText:(id)self2 sanitizedPrompt:(id)self3 metadata:(id)self4;
- (IMSticker)initWithStickerPropertyDictionary:(id)dictionary stickerPackID:(id)d stickerPackBundlePath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
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

- (IMSticker)initWithStickerID:(id)d stickerPackID:(id)iD fileURL:(id)l accessibilityLabel:(id)label accessibilityName:(id)name searchText:(id)text sanitizedPrompt:(id)prompt moodCategory:(id)self0 stickerName:(id)self1 effectType:(int64_t)self2 textToSpeechName:(id)self3
{
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  labelCopy = label;
  nameCopy = name;
  textCopy = text;
  promptCopy = prompt;
  categoryCopy = category;
  stickerNameCopy = stickerName;
  speechNameCopy = speechName;
  v67 = dCopy;
  if (dCopy)
  {
    v70.receiver = self;
    v70.super_class = IMSticker;
    v26 = [(IMSticker *)&v70 init];
    if (v26)
    {
      v27 = [dCopy copy];
      stickerGUID = v26->_stickerGUID;
      v26->_stickerGUID = v27;

      v29 = [iDCopy copy];
      stickerPackGUID = v26->_stickerPackGUID;
      v26->_stickerPackGUID = v29;

      v31 = [lCopy copy];
      fileURL = v26->_fileURL;
      v26->_fileURL = v31;

      v33 = [labelCopy copy];
      accessibilityLabel = v26->_accessibilityLabel;
      v26->_accessibilityLabel = v33;

      v35 = [nameCopy copy];
      accessibilityName = v26->_accessibilityName;
      v26->_accessibilityName = v35;

      v37 = [textCopy copy];
      searchText = v26->_searchText;
      v26->_searchText = v37;

      v39 = [promptCopy copy];
      sanitizedPrompt = v26->_sanitizedPrompt;
      v26->_sanitizedPrompt = v39;

      v41 = [categoryCopy copy];
      moodCategory = v26->_moodCategory;
      v26->_moodCategory = v41;

      v43 = [stickerNameCopy copy];
      stickerName = v26->_stickerName;
      v26->_stickerName = v43;

      v45 = [speechNameCopy copy];
      textToSpeechName = v26->_textToSpeechName;
      v26->_textToSpeechName = v45;

      v47 = speechNameCopy;
      v48 = promptCopy;
      v49 = MEMORY[0x1E696AEC0];
      [(IMSticker *)v26 stickerPackGUID];
      v66 = stickerNameCopy;
      v50 = textCopy;
      v52 = v51 = labelCopy;
      [(IMSticker *)v26 stickerGUID];
      v53 = categoryCopy;
      v55 = v54 = nameCopy;
      v56 = v49;
      promptCopy = v48;
      speechNameCopy = v47;
      v57 = [v56 stringWithFormat:@"%@.%@", v52, v55];
      uniqueID = v26->_uniqueID;
      v26->_uniqueID = v57;

      nameCopy = v54;
      categoryCopy = v53;

      labelCopy = v51;
      textCopy = v50;
      stickerNameCopy = v66;
      externalURI = v26->_externalURI;
      v26->_externalURI = 0;

      representations = v26->_representations;
      v26->_representations = 0;

      v26->_stickerEffectType = -1;
    }

    selfCopy = v26;
    v62 = selfCopy;
  }

  else
  {
    selfCopy = self;
    v63 = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3614();
    }

    v62 = 0;
  }

  return v62;
}

- (IMSticker)initWithStickerIdentifier:(id)identifier stickerPackID:(id)d representations:(id)representations effectType:(int64_t)type initialFrameIndex:(unint64_t)index externalURI:(id)i stickerName:(id)name accessibilityLabel:(id)self0 accessibilityName:(id)self1 searchText:(id)self2 sanitizedPrompt:(id)self3 metadata:(id)self4
{
  identifierCopy = identifier;
  dCopy = d;
  obj = representations;
  representationsCopy = representations;
  iCopy = i;
  nameCopy = name;
  labelCopy = label;
  accessibilityNameCopy = accessibilityName;
  textCopy = text;
  promptCopy = prompt;
  metadataCopy = metadata;
  v56.receiver = self;
  v56.super_class = IMSticker;
  v26 = [(IMSticker *)&v56 init];
  if (v26)
  {
    v27 = [identifierCopy copy];
    stickerGUID = v26->_stickerGUID;
    v26->_stickerGUID = v27;

    v29 = [dCopy copy];
    stickerPackGUID = v26->_stickerPackGUID;
    v26->_stickerPackGUID = v29;

    fileURL = v26->_fileURL;
    v26->_fileURL = 0;

    v32 = [labelCopy copy];
    accessibilityLabel = v26->_accessibilityLabel;
    v26->_accessibilityLabel = v32;

    v34 = [accessibilityNameCopy copy];
    accessibilityName = v26->_accessibilityName;
    v26->_accessibilityName = v34;

    v36 = [textCopy copy];
    searchText = v26->_searchText;
    v26->_searchText = v36;

    v38 = [promptCopy copy];
    sanitizedPrompt = v26->_sanitizedPrompt;
    v26->_sanitizedPrompt = v38;

    moodCategory = v26->_moodCategory;
    v26->_moodCategory = 0;

    v41 = [nameCopy copy];
    stickerName = v26->_stickerName;
    v26->_stickerName = v41;

    textToSpeechName = v26->_textToSpeechName;
    v26->_textToSpeechName = 0;

    stickerGUID = [(IMSticker *)v26 stickerGUID];
    uniqueID = v26->_uniqueID;
    v26->_uniqueID = stickerGUID;

    v46 = [iCopy copy];
    externalURI = v26->_externalURI;
    v26->_externalURI = v46;

    objc_storeStrong(&v26->_representations, obj);
    v26->_stickerEffectType = type;
    v26->_initialFrameIndex = index;
    v48 = [metadataCopy copy];
    metadata = v26->_metadata;
    v26->_metadata = v48;
  }

  return v26;
}

- (IMSticker)initWithAdaptiveImageGlyphFromUnknownSource:(id)source
{
  sourceCopy = source;
  v38.receiver = self;
  v38.super_class = IMSticker;
  v6 = [(IMSticker *)&v38 init];
  if (v6)
  {
    contentIdentifier = [sourceCopy contentIdentifier];
    v8 = [contentIdentifier copy];
    stickerGUID = v6->_stickerGUID;
    v6->_stickerGUID = v8;

    stickerPackGUID = v6->_stickerPackGUID;
    v6->_stickerPackGUID = @"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension";

    v11 = [IMSticker saveAdaptiveImageGlyphToTemporaryFile:sourceCopy];
    v12 = [v11 copy];
    fileURL = v6->_fileURL;
    v6->_fileURL = v12;

    contentIdentifier2 = [sourceCopy contentIdentifier];
    v15 = [contentIdentifier2 copy];
    adaptiveImageGlyphContentIdentifier = v6->_adaptiveImageGlyphContentIdentifier;
    v6->_adaptiveImageGlyphContentIdentifier = v15;

    contentDescription = [sourceCopy contentDescription];
    v18 = [contentDescription copy];
    adaptiveImageGlyphContentDescription = v6->_adaptiveImageGlyphContentDescription;
    v6->_adaptiveImageGlyphContentDescription = v18;

    objc_storeStrong(&v6->_cachedAdaptiveImageGlyphForSkippingPreviewGenerationOnly, source);
    contentDescription2 = [sourceCopy contentDescription];
    v21 = [contentDescription2 copy];
    accessibilityLabel = v6->_accessibilityLabel;
    v6->_accessibilityLabel = v21;

    moodCategory = v6->_moodCategory;
    v6->_moodCategory = 0;

    contentDescription3 = [sourceCopy contentDescription];
    v25 = [contentDescription3 copy];
    stickerName = v6->_stickerName;
    v6->_stickerName = v25;

    contentDescription4 = [sourceCopy contentDescription];
    v28 = [contentDescription4 copy];
    textToSpeechName = v6->_textToSpeechName;
    v6->_textToSpeechName = v28;

    v30 = MEMORY[0x1E696AEC0];
    stickerPackGUID = [(IMSticker *)v6 stickerPackGUID];
    stickerGUID = [(IMSticker *)v6 stickerGUID];
    v33 = [v30 stringWithFormat:@"%@.%@", stickerPackGUID, stickerGUID];
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

+ (id)saveAdaptiveImageGlyphToTemporaryFile:(id)file
{
  fileCopy = file;
  contentIdentifier = [fileCopy contentIdentifier];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager im_temporaryFileURLForAdaptiveImageGlyphWithContentIdentifier:contentIdentifier];
  path = [v6 path];
  if ([defaultManager fileExistsAtPath:path])
  {
    stringByDeletingLastPathComponent = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A85E5000, stringByDeletingLastPathComponent, OS_LOG_TYPE_INFO, "Temporary file already exists for adaptive image glyph content identifier, not re-saving image.", v13, 2u);
    }
  }

  else
  {
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    if (([defaultManager __im_makeDirectoriesInPath:stringByDeletingLastPathComponent mode:448] & 1) == 0)
    {
      v9 = IMLogHandleForCategory("IMSticker");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C3648();
      }
    }

    imageContent = [fileCopy imageContent];
    if (([imageContent writeToURL:v6 atomically:1] & 1) == 0)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stickerGUID = [(IMSticker *)self stickerGUID];
        stickerGUID2 = [(IMSticker *)v5 stickerGUID];
        v8 = stickerGUID;
        v9 = stickerGUID2;
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

        stickerPackGUID = [(IMSticker *)self stickerPackGUID];
        stickerPackGUID2 = [(IMSticker *)v5 stickerPackGUID];
        v13 = stickerPackGUID;
        v17 = stickerPackGUID2;
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

        stickerName = [(IMSticker *)self stickerName];
        stickerName2 = [(IMSticker *)v5 stickerName];
        v19 = stickerName;
        v23 = stickerName2;
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

        textToSpeechName = [(IMSticker *)self textToSpeechName];
        textToSpeechName2 = [(IMSticker *)v5 textToSpeechName];
        v25 = textToSpeechName;
        v29 = textToSpeechName2;
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
              moodCategory = [(IMSticker *)self moodCategory];
              moodCategory2 = [(IMSticker *)v5 moodCategory];
              v35 = moodCategory;
              v36 = moodCategory2;
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

              accessibilityLabel = [(IMSticker *)self accessibilityLabel];
              accessibilityLabel2 = [(IMSticker *)v5 accessibilityLabel];
              v35 = accessibilityLabel;
              v41 = accessibilityLabel2;
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
                    fileURL = [(IMSticker *)self fileURL];
                    fileURL2 = [(IMSticker *)v5 fileURL];
                    v46 = fileURL;
                    v47 = fileURL2;
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
                          representations = [(IMSticker *)self representations];
                          representations2 = [(IMSticker *)v5 representations];
                          v46 = representations;
                          v52 = representations2;
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

                          externalURI = [(IMSticker *)self externalURI];
                          externalURI2 = [(IMSticker *)v5 externalURI];
                          v54 = externalURI;
                          v58 = externalURI2;
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

                          initialFrameIndex = [(IMSticker *)self initialFrameIndex];
                          v11 = initialFrameIndex == [(IMSticker *)v5 initialFrameIndex];
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
  uniqueID = [(IMSticker *)self uniqueID];
  v3 = [uniqueID hash];

  return v3;
}

- (IMSticker)initWithStickerPropertyDictionary:(id)dictionary stickerPackID:(id)d stickerPackBundlePath:(id)path
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dCopy = d;
  pathCopy = path;
  if (dictionaryCopy && dCopy && ([dictionaryCopy objectForKey:@"IMStickerIdentifier"], v11 = objc_claimAutoreleasedReturnValue(), v11, pathCopy) && v11)
  {
    v12 = [dictionaryCopy objectForKey:@"IMStickerIdentifier"];
    im_lastPathComponent = [v12 im_lastPathComponent];
    if ([im_lastPathComponent length])
    {
      v14 = MEMORY[0x1E695DFF8];
      v15 = [pathCopy stringByAppendingPathComponent:im_lastPathComponent];
      v29 = [v14 fileURLWithPath:v15];

      v16 = [dictionaryCopy objectForKeyedSubscript:@"stickerEffectType"];
      objc_opt_class();
      v28 = im_lastPathComponent;
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v16 integerValue];
      }

      else
      {
        integerValue = -1;
      }

      v25 = [dictionaryCopy objectForKey:@"IMStickerIdentifier"];
      v26 = [dictionaryCopy objectForKey:@"IMStickerAccessibilityLabel"];
      v24 = [dictionaryCopy objectForKey:@"IMStickerAccessibilityName"];
      v19 = [dictionaryCopy objectForKey:@"IMStickerSearchText"];
      v23 = [dictionaryCopy objectForKey:@"IMStickerSanitizedPrompt"];
      v20 = [dictionaryCopy objectForKey:@"IMStickerMoodCategory"];
      v21 = [dictionaryCopy objectForKey:@"IMStickerName"];
      self = [(IMSticker *)self initWithStickerID:v25 stickerPackID:dCopy fileURL:v29 accessibilityLabel:v26 accessibilityName:v24 searchText:v19 sanitizedPrompt:v23 moodCategory:v20 stickerName:v21 effectType:integerValue];

      selfCopy = self;
      im_lastPathComponent = v28;
    }

    else
    {
      v18 = IMLogHandleForCategory("IMSticker");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C36B0(v12, v18);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory("IMSticker");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v31 = dictionaryCopy;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2112;
      v35 = pathCopy;
      _os_log_error_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_ERROR, "initWithStickerPropertyDictionary called with invalid parameters stickerPropertyDictionary %@ stickerPackGUID %@ stickerPackBundlePath %@", buf, 0x20u);
    }

    selfCopy = 0;
  }

  return selfCopy;
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
        firstObject = [v5 firstObject];
        v7 = [(NSString *)self->_externalURI stringByReplacingOccurrencesOfString:firstObject withString:&stru_1F1BB91F0];
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

- (id)copyWithZone:(_NSZone *)zone
{
  representations = [(IMSticker *)self representations];

  v30 = objc_alloc(objc_opt_class());
  stickerGUID = [(IMSticker *)self stickerGUID];
  stickerPackGUID = [(IMSticker *)self stickerPackGUID];
  if (representations)
  {
    representations2 = [(IMSticker *)self representations];
    v6 = stickerPackGUID;
    v26 = stickerPackGUID;
    stickerEffectType = [(IMSticker *)self stickerEffectType];
    initialFrameIndex = [(IMSticker *)self initialFrameIndex];
    externalURI = [(IMSticker *)self externalURI];
    stickerName = [(IMSticker *)self stickerName];
    accessibilityLabel = [(IMSticker *)self accessibilityLabel];
    accessibilityName = [(IMSticker *)self accessibilityName];
    searchText = [(IMSticker *)self searchText];
    sanitizedPrompt = [(IMSticker *)self sanitizedPrompt];
    metadata = [(IMSticker *)self metadata];
    v15 = [v30 initWithStickerIdentifier:stickerGUID stickerPackID:v6 representations:representations2 effectType:stickerEffectType initialFrameIndex:initialFrameIndex externalURI:externalURI stickerName:stickerName accessibilityLabel:accessibilityLabel accessibilityName:accessibilityName searchText:searchText sanitizedPrompt:sanitizedPrompt metadata:metadata];
  }

  else
  {
    fileURL = [(IMSticker *)self fileURL];
    accessibilityLabel2 = [(IMSticker *)self accessibilityLabel];
    accessibilityName2 = [(IMSticker *)self accessibilityName];
    searchText2 = [(IMSticker *)self searchText];
    sanitizedPrompt2 = [(IMSticker *)self sanitizedPrompt];
    moodCategory = [(IMSticker *)self moodCategory];
    stickerName2 = [(IMSticker *)self stickerName];
    textToSpeechName = [(IMSticker *)self textToSpeechName];
    v23 = stickerPackGUID;
    v15 = [v30 initWithStickerID:stickerGUID stickerPackID:stickerPackGUID fileURL:fileURL accessibilityLabel:accessibilityLabel2 accessibilityName:accessibilityName2 searchText:searchText2 sanitizedPrompt:sanitizedPrompt2 moodCategory:moodCategory stickerName:stickerName2 textToSpeechName:textToSpeechName];

    [v15 setStickerEffectType:{-[IMSticker stickerEffectType](self, "stickerEffectType")}];
  }

  v24 = v15;

  return v24;
}

+ (id)userInfoDictionaryWithLayoutIntent:(unint64_t)intent parentPreviewWidth:(double)width xScalar:(double)scalar yScalar:(double)yScalar scale:(double)scale rotation:(double)rotation initialFrameIndex:(unint64_t)index stickerPositionVersion:(unint64_t)self0 externalURI:(id)self1
{
  v33[10] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  iCopy = i;
  intent = [v18 stringWithFormat:@"%tu", intent];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", 0];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&width];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&scalar];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&yScalar];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&scale];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&rotation];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v32[0] = @"sli";
  v32[1] = @"sai";
  v33[0] = intent;
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
  v33[9] = iCopy;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:10];

  return v27;
}

+ (id)userInfoDictionaryWithExternalURI:(id)i
{
  v9[1] = *MEMORY[0x1E69E9840];
  iCopy = i;
  v4 = iCopy;
  if (iCopy)
  {
    v8 = @"suri";
    v9[0] = iCopy;
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

+ (IMAssociatedMessageGeometryDescriptor)geometryDescriptorFromUserInfoDictionary:(SEL)dictionary
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
      integerValue = [v7 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    retstr->var0 = integerValue;

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