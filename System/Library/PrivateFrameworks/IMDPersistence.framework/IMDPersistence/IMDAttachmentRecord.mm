@interface IMDAttachmentRecord
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)keyPathsToColumns;
- (BOOL)isAdaptiveImageGlyph;
- (IMDAttachmentRecord)initWithRecordRef:(_IMDAttachmentRecordStruct *)ref;
- (IMDMessageRecord)messageRecord;
- (NSDictionary)attributionInfo;
- (NSDictionary)stickerUserInfo;
- (NSDictionary)transferUserInfo;
- (NSString)emojiImageContentIdentifier;
- (NSString)emojiImageShortDescription;
- (NSString)path;
- (NSString)utiString;
- (_IMDAttachmentRecordStruct)cfAttachmentRecord;
- (void)_copyUpdatedRecord;
- (void)_write;
- (void)_writeIfNeededForPreviewGenerationStateMigration;
@end

@implementation IMDAttachmentRecord

- (IMDAttachmentRecord)initWithRecordRef:(_IMDAttachmentRecordStruct *)ref
{
  refCopy = ref;

  return refCopy;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = *MEMORY[0x1E695E480];
  IMDAttachmentRecordGetTypeID();

  return _CFRuntimeCreateInstance();
}

- (_IMDAttachmentRecordStruct)cfAttachmentRecord
{
  v3 = CFGetTypeID(self);
  if (v3 == IMDAttachmentRecordGetTypeID())
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)_copyUpdatedRecord
{
  v3 = objc_msgSend_rowID(self, a2, v2);

  return IMDAttachmentRecordCopyAttachmentRecordUnlocked(v3);
}

- (NSString)path
{
  v3 = objc_msgSend_filename(self, a2, v2);
  v6 = objc_msgSend_stringByExpandingTildeInPath(v3, v4, v5);
  v9 = objc_msgSend___im_apfsCompatibleFilename(v6, v7, v8);

  return v9;
}

- (NSString)utiString
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 4);

  return v2;
}

- (BOOL)isAdaptiveImageGlyph
{
  v3 = objc_msgSend_emojiImageContentIdentifier(self, a2, v2);
  v6 = objc_msgSend_length(v3, v4, v5) != 0;

  return v6;
}

- (NSString)emojiImageContentIdentifier
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 20);

  return v2;
}

- (NSString)emojiImageShortDescription
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 21);

  return v2;
}

- (NSDictionary)transferUserInfo
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 8);
  if (objc_msgSend_length(v2, v3, v4))
  {
    v5 = JWDecodeDictionary();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)stickerUserInfo
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 12);
  if (objc_msgSend_length(v2, v3, v4))
  {
    v5 = JWDecodeDictionary();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)attributionInfo
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 13);
  if (objc_msgSend_length(v2, v3, v4))
  {
    v5 = JWDecodeDictionary();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IMDMessageRecord)messageRecord
{
  v3 = objc_msgSend_guid(self, a2, v2);
  v4 = IMDAttachmentRecordCopyMessageForAttachmentGUID(v3);

  return v4;
}

- (void)_write
{
  v78 = objc_msgSend_guid(self, a2, v2);
  v77 = objc_msgSend_createdDate(self, v4, v5);
  objc_msgSend_timeIntervalSinceReferenceDate(v77, v6, v7);
  v75 = v8;
  v76 = objc_msgSend_startDate(self, v9, v10);
  objc_msgSend_timeIntervalSinceReferenceDate(v76, v11, v12);
  v74 = v13;
  v73 = objc_msgSend_transferName(self, v14, v15);
  v72 = objc_msgSend_filename(self, v16, v17);
  v71 = objc_msgSend_utiString(self, v18, v19);
  v70 = objc_msgSend_mimeType(self, v20, v21);
  v69 = objc_msgSend_transferState(self, v22, v23);
  isOutgoing = objc_msgSend_isOutgoing(self, v24, v25);
  v67 = objc_msgSend_totalBytes(self, v26, v27);
  v66 = objc_msgSend_transferUserInfo(self, v28, v29);
  isSticker = objc_msgSend_isSticker(self, v30, v31);
  v63 = objc_msgSend_stickerUserInfo(self, v32, v33);
  v36 = objc_msgSend_attributionInfo(self, v34, v35);
  isHidden = objc_msgSend_isHidden(self, v37, v38);
  v41 = objc_msgSend_cloudSyncState(self, v39, v40);
  v62 = objc_msgSend_cloudServerChangeToken(self, v42, v43);
  v46 = objc_msgSend_cloudRecordID(self, v44, v45);
  v49 = objc_msgSend_originalGUID(self, v47, v48);
  isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(self, v50, v51);
  v55 = objc_msgSend_emojiImageContentIdentifier(self, v53, v54);
  v58 = objc_msgSend_emojiImageShortDescription(self, v56, v57);
  v61 = objc_msgSend_previewGenerationState(self, v59, v60);
  IMDAttachmentRecordBulkUpdate(self, v78, v75, v74, v73, v72, v71, v70, v69, isOutgoing, v67, v66, isSticker, v63, v36, isHidden, v41, v62, v46, v49, isCommSafetySensitive, v55, v58, v61);
}

- (void)_writeIfNeededForPreviewGenerationStateMigration
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_previewGenerationState(self, a2, v2) == 3)
  {
    v6 = objc_msgSend_utiString(self, v4, v5);
    v7 = IMIsSupportedUTIType();

    if (v7)
    {
      v10 = objc_msgSend_attributionInfo(self, v8, v9);
      v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, *MEMORY[0x1E69A6FE0]);

      if (v12)
      {
        v13 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_msgSend_guid(self, v14, v15);
          v20 = 138412290;
          v21 = v16;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Migrating attachment GUID %@ to new preview generation state", &v20, 0xCu);
        }

        objc_msgSend__write(self, v17, v18);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5B08 != -1)
  {
    sub_1B7CF7E98();
  }

  v3 = qword_1EDBE5B30;

  return v3;
}

@end