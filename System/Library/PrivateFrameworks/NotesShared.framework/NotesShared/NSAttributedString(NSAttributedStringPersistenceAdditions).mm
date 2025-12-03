@interface NSAttributedString(NSAttributedStringPersistenceAdditions)
+ (id)ic_attributedStringWithArchive:()NSAttributedStringPersistenceAdditions dataPersister:note:parentAttachment:shouldCreateNewAttachments:error:;
+ (id)ic_attributedStringWithArchive:()NSAttributedStringPersistenceAdditions dataPersister:note:shouldCreateNewAttachments:error:;
+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:createNewAttachmentsInNote:error:;
+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:createNewAttachmentsInNote:forParentAttachment:error:;
+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:note:parentAttachment:shouldCreateAttachments:error:;
+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:note:shouldCreateAttachments:error:;
+ (void)enumerateAttachmentsInData:()NSAttributedStringPersistenceAdditions withBlock:;
- (id)ic_serializeWithFlags:()NSAttributedStringPersistenceAdditions dataPersister:managedObjectContext:error:;
- (uint64_t)ic_approximateAttachmentsSizeIncludingPreviews:()NSAttributedStringPersistenceAdditions;
- (uint64_t)ic_saveToArchive:()NSAttributedStringPersistenceAdditions flags:dataPersister:managedObjectContext:error:;
@end

@implementation NSAttributedString(NSAttributedStringPersistenceAdditions)

+ (id)ic_attributedStringWithArchive:()NSAttributedStringPersistenceAdditions dataPersister:note:shouldCreateNewAttachments:error:
{
  v7 = [self ic_attributedStringWithArchive:a3 dataPersister:a4 note:a5 parentAttachment:0 shouldCreateNewAttachments:a6 error:a7];

  return v7;
}

+ (id)ic_attributedStringWithArchive:()NSAttributedStringPersistenceAdditions dataPersister:note:parentAttachment:shouldCreateNewAttachments:error:
{
  v81[1] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v73 = a5;
  v71 = a6;
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = *(a3 + 40);
  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    v15 = *v15;
    v16 = *(*(a3 + 40) + 8);
  }

  v72 = [v14 initWithBytes:v15 length:v16 encoding:4];
  v75 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v72];
  v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v73 || !a7)
  {
LABEL_48:
    if (v75)
    {
      goto LABEL_49;
    }

LABEL_58:
    v35 = 0;
    goto LABEL_59;
  }

  v17 = *(a3 + 112);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(a3 + 104, v19);
      if ((*(v20 + 32) & 0x40) != 0)
      {
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v22 = *(v20 + 80);
        v23 = *(v22 + 23);
        if (v23 < 0)
        {
          v22 = *v22;
          v23 = *(*(v20 + 80) + 8);
        }

        v24 = [v21 initWithBytes:v22 length:v23 encoding:4];
        v18 += [ICTTAttachment typeUTIIsInlineAttachment:v24];
      }

      ++v19;
    }

    while (v17 != v19);
  }

  else
  {
    v18 = 0;
  }

  if (v17 >= v18)
  {
    v25 = v17 - v18;
  }

  else
  {
    v25 = 0;
  }

  if ([v73 canAddAttachments:v25])
  {
    if (v75)
    {
      v26 = [v73 isPasswordProtected] ^ 1;
      if (!v17)
      {
        LOBYTE(v26) = 1;
      }

      if ((v26 & 1) == 0)
      {
        v27 = 0;
        while (1)
        {
          v28 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(a3 + 104, v27);
          if ((*(v28 + 32) & 0x40) != 0)
          {
            v29 = objc_alloc(MEMORY[0x277CCACA8]);
            v30 = *(v28 + 80);
            v31 = *(v30 + 23);
            if (v31 < 0)
            {
              v30 = *v30;
              v31 = *(*(v28 + 80) + 8);
            }

            v32 = [v29 initWithBytes:v30 length:v31 encoding:4];
            if (![ICAttachment isTypeUTISupportedForPasswordProtectedNotes:v32])
            {
              if (a8)
              {
                v65 = MEMORY[0x277CCA9B8];
                v66 = *MEMORY[0x277D36108];
                v78[0] = *MEMORY[0x277D36118];
                v78[1] = v66;
                v79[0] = @"Unsupported attachment for password protected notes";
                v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
                v79[1] = v67;
                v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
                *a8 = [v65 errorWithDomain:*MEMORY[0x277D36110] code:205 userInfo:v68];
              }

              v35 = 0;
              goto LABEL_57;
            }
          }

          if (v17 == ++v27)
          {
            goto LABEL_34;
          }
        }
      }

      if (v17)
      {
LABEL_34:
        v36 = 0;
        while (1)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(a3 + 104, v36);
          if ((*(v38 + 32) & 0x40) != 0)
          {
            v40 = *(v38 + 80);
            if (*(v40 + 23) < 0)
            {
              v40 = *v40;
            }

            v39 = [MEMORY[0x277CCACA8] stringWithCString:v40 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
            if (v39 && [ICTTAttachment typeUTIIsInlineAttachment:v39])
            {
              uUID = [MEMORY[0x277CCAD78] UUID];
              uUIDString = [uUID UUIDString];
              if (v71)
              {
                [v71 addInlineAttachmentWithIdentifier:uUIDString];
              }

              else
              {
                [v73 addInlineAttachmentWithIdentifier:uUIDString];
              }
              v45 = ;

              [v45 loadFromArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(a3 + 104 dataPersister:v36) withIdentifierMap:{v13, v74}];
              [v45 updateChangeCountWithReason:@"Loaded inline attachment from archive"];
              goto LABEL_44;
            }
          }

          else
          {
            v39 = 0;
          }

          uUID2 = [MEMORY[0x277CCAD78] UUID];
          uUIDString2 = [uUID2 UUIDString];
          v45 = [v73 addAttachmentWithIdentifier:uUIDString2];

          [v45 loadFromArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(a3 + 104 dataPersister:v36) withIdentifierMap:{v13, v74}];
          [v45 updateChangeCountWithReason:@"Loaded attachment from archive"];
          media = [v45 media];
          [media updateChangeCountWithReason:@"Loaded attachment from archive"];

LABEL_44:
          objc_autoreleasePoolPop(v37);
          if (v17 == ++v36)
          {
            goto LABEL_48;
          }
        }
      }

LABEL_49:
      v69 = v13;
      v47 = *(a3 + 88);
      if (v47)
      {
        v48 = 0;
        for (i = 0; i != v47; ++i)
        {
          v50 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(a3 + 80, i);
          v51 = [ICTTMergeableAttributedString attributesForRun:v50];
          objc_opt_class();
          v52 = [v51 objectForKeyedSubscript:@"NSAttachment"];
          v53 = ICDynamicCast();

          attachmentIdentifier = [v53 attachmentIdentifier];

          if (attachmentIdentifier)
          {
            attachmentIdentifier2 = [v53 attachmentIdentifier];
            v56 = [v74 objectForKeyedSubscript:attachmentIdentifier2];

            if (v56)
            {
              [v53 setAttachmentIdentifier:v56];
            }
          }

          v57 = *(v50 + 48);
          v84.location = [v75 ic_range];
          v84.length = v58;
          v83.location = v48;
          v83.length = v57;
          v59 = NSIntersectionRange(v83, v84);
          [v75 setAttributes:v51 range:{v59.location, v59.length}];
          v48 += *(v50 + 48);
        }
      }

      v60 = ICTTAttributeNameParagraphStyle;
      ic_range = [v75 ic_range];
      v63 = v62;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __162__NSAttributedString_NSAttributedStringPersistenceAdditions__ic_attributedStringWithArchive_dataPersister_note_parentAttachment_shouldCreateNewAttachments_error___block_invoke;
      v76[3] = &unk_278195870;
      v35 = v75;
      v77 = v35;
      v13 = v70;
      [v35 enumerateAttribute:v60 inRange:ic_range options:v63 usingBlock:{0, v76}];
      v32 = v77;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (a8)
  {
    v33 = MEMORY[0x277CCA9B8];
    v80 = *MEMORY[0x277D36118];
    v81[0] = @"Maximum attachments exceeded";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    *a8 = [v33 errorWithDomain:*MEMORY[0x277D36110] code:202 userInfo:v34];
  }

  v35 = 0;
  v32 = v75;
LABEL_57:

LABEL_59:

  return v35;
}

+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:createNewAttachmentsInNote:error:
{
  v6 = [self ic_attributedStringWithData:a3 dataPersister:a4 createNewAttachmentsInNote:a5 forParentAttachment:0 error:a6];

  return v6;
}

+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:createNewAttachmentsInNote:forParentAttachment:error:
{
  v7 = [self ic_attributedStringWithData:a3 dataPersister:a4 note:a5 parentAttachment:a6 shouldCreateAttachments:1 error:a7];

  return v7;
}

+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:note:shouldCreateAttachments:error:
{
  v7 = [self ic_attributedStringWithData:a3 dataPersister:a4 note:a5 parentAttachment:0 shouldCreateAttachments:a6 error:a7];

  return v7;
}

+ (id)ic_attributedStringWithData:()NSAttributedStringPersistenceAdditions dataPersister:note:parentAttachment:shouldCreateAttachments:error:
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v13)
  {
    topotext::String::String(v23);
    bytes = [v13 bytes];
    v18 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v13 length]);
    if (google::protobuf::MessageLite::ParseFromArray(v23, bytes, v18))
    {
      v19 = [MEMORY[0x277CCA898] ic_attributedStringWithArchive:v23 dataPersister:v14 note:v15 parentAttachment:v16 shouldCreateNewAttachments:a7 error:a8];
    }

    else
    {
      v21 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[NSAttributedString(NSAttributedStringPersistenceAdditions) ic_attributedStringWithData:dataPersister:note:parentAttachment:shouldCreateAttachments:error:];
      }

      v19 = 0;
    }

    topotext::String::~String(v23);
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[NSAttributedString(NSAttributedStringPersistenceAdditions) ic_attributedStringWithData:dataPersister:note:parentAttachment:shouldCreateAttachments:error:];
    }

    v19 = 0;
  }

  return v19;
}

+ (void)enumerateAttachmentsInData:()NSAttributedStringPersistenceAdditions withBlock:
{
  v5 = a3;
  v6 = a4;
  topotext::String::String(v15);
  bytes = [v5 bytes];
  v8 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v5 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v15, bytes, v8))
  {
    v14 = 0;
    v9 = v17;
    if (v17)
    {
      v10 = 0;
      while (1)
      {
        v11 = [ICTTMergeableAttributedString attributesForRun:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(&v16, v10)];
        v12 = [v11 objectForKeyedSubscript:@"NSAttachment"];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v6)
            {
              v6[2](v6, v12, &v14);
            }

            if (v14)
            {
              break;
            }
          }
        }

        if (v9 == ++v10)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[NSAttributedString(NSAttributedStringPersistenceAdditions) ic_attributedStringWithData:dataPersister:note:parentAttachment:shouldCreateAttachments:error:];
    }
  }

LABEL_14:
  topotext::String::~String(v15);
}

- (uint64_t)ic_saveToArchive:()NSAttributedStringPersistenceAdditions flags:dataPersister:managedObjectContext:error:
{
  v12 = a5;
  v13 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  string = [self string];
  uTF8String = [string UTF8String];
  string2 = [self string];
  v17 = [string2 lengthOfBytesUsingEncoding:4];
  *(a3 + 32) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v18 = v17;
  v19 = *(a3 + 40);
  if (v19 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v19, uTF8String, v18);

  [ICTTMergeableAttributedString saveAttributesOfString:self toArchive:a3];
  if (a4)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__7;
    v35 = __Block_byref_object_dispose__7;
    v36 = 0;
    v20 = [self length];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __126__NSAttributedString_NSAttributedStringPersistenceAdditions__ic_saveToArchive_flags_dataPersister_managedObjectContext_error___block_invoke;
    v24[3] = &unk_278195898;
    v29 = a3;
    v25 = v13;
    v27 = &v37;
    v26 = v12;
    v28 = &v31;
    v30 = a4;
    [self enumerateAttribute:@"NSAttachment" inRange:0 options:v20 usingBlock:{0, v24}];
    if (a7)
    {
      v21 = v32[5];
      if (v21)
      {
        *a7 = v21;
      }
    }

    _Block_object_dispose(&v31, 8);
  }

  v22 = *(v38 + 24);
  _Block_object_dispose(&v37, 8);

  return v22;
}

- (id)ic_serializeWithFlags:()NSAttributedStringPersistenceAdditions dataPersister:managedObjectContext:error:
{
  v10 = a4;
  v11 = a5;
  v12 = [self ic_attributedStringByFlatteningUnsupportedInlineAttachmentsWithContext:v11];
  topotext::String::String(v20);
  v19 = 0;
  v13 = [v12 ic_saveToArchive:v20 flags:a3 dataPersister:v10 managedObjectContext:v11 error:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::String::ByteSize(v20)];
    google::protobuf::MessageLite::SerializeToArray(v20, [v16 mutableBytes], objc_msgSend(v16, "length"));
  }

  else if (a6)
  {
    v17 = v14;
    v16 = 0;
    *a6 = v15;
  }

  else
  {
    v16 = 0;
  }

  topotext::String::~String(v20);

  return v16;
}

- (uint64_t)ic_approximateAttachmentsSizeIncludingPreviews:()NSAttributedStringPersistenceAdditions
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [self length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __109__NSAttributedString_NSAttributedStringPersistenceAdditions__ic_approximateAttachmentsSizeIncludingPreviews___block_invoke;
  v8[3] = &unk_2781958C0;
  v8[4] = &v10;
  v9 = a3;
  [self enumerateAttribute:@"NSAttachment" inRange:0 options:v5 usingBlock:{0, v8}];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

@end