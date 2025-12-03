@interface ICTTMergeableAttributedString
+ (NSSet)allowedAttributesForModel;
+ (NSSet)allowedAttributesForStyle;
+ (NSSet)allowedTypingAttributes;
+ (id)attributesForRun:(const void *)run;
+ (int)attributeForWritingDirection:(int64_t)direction;
+ (int64_t)writingDirectionForAttribute:(int)attribute;
+ (void)saveAttributes:(id)attributes toArchive:(void *)archive;
+ (void)saveAttributesOfString:(id)string toArchive:(void *)archive;
- (BOOL)attributesEqual:(id)equal to:(id)to modelEqual:(BOOL *)modelEqual;
- (BOOL)attributesEqual:(id)equal toRange:(_NSRange)range modelEqual:(BOOL *)modelEqual;
- (ICTTMergeableAttributedString)initWithArchive:(const void *)archive replicaID:(id)d orderedSubstrings:(void *)substrings timestamp:(id)timestamp fragment:(BOOL)fragment;
- (ICTTMergeableAttributedString)initWithICCRCoder:(id)coder;
- (ICTTMergeableAttributedString)initWithICCRCoder:(id)coder string:(const void *)string;
- (NSArray)edits;
- (NSAttributedString)editsAttributedString;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)editAtIndex:(unint64_t)index;
- (id)editsInRange:(_NSRange)range;
- (id)serialize;
- (void)encodeWithICCRCoder:(id)coder;
- (void)enumerateEditsInRange:(_NSRange)range usingBlock:(id)block;
- (void)invalidateCache;
- (void)removeTimestampsForReplicaID:(id)d;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)saveDeltaSinceTimestamp:(id)timestamp toArchive:(void *)archive;
- (void)saveToArchive:(void *)archive;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
- (void)setAttributes:(id)attributes substring:(void *)substring;
- (void)setTimestamp:(id)timestamp range:(_NSRange)range;
@end

@implementation ICTTMergeableAttributedString

- (void)invalidateCache
{
  v4.receiver = self;
  v4.super_class = ICTTMergeableAttributedString;
  [(ICTTMergeableString *)&v4 invalidateCache];
  editsAttributedString = self->_editsAttributedString;
  self->_editsAttributedString = 0;
}

+ (NSSet)allowedAttributesForStyle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ICTTMergeableAttributedString_allowedAttributesForStyle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[ICTTMergeableAttributedString allowedAttributesForStyle]::once != -1)
  {
    dispatch_once(&+[ICTTMergeableAttributedString allowedAttributesForStyle]::once, block);
  }

  v2 = +[ICTTMergeableAttributedString allowedAttributesForStyle]::allowedAttributes;

  return v2;
}

void __58__ICTTMergeableAttributedString_allowedAttributesForStyle__block_invoke(uint64_t a1)
{
  v6[12] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) allowedTypingAttributes];
  v2 = *MEMORY[0x277D041D8];
  v6[0] = @"NSAttachment";
  v6[1] = v2;
  v6[2] = kDDFoundExistingLinkAttributeName;
  v6[3] = kUITextInputDictationResultMetadataAttributeName;
  v6[4] = TTPresentationAttributeNameApproxMaxItemNumber;
  v6[5] = @"NSTextAlternatives";
  v6[6] = *MEMORY[0x277D74058];
  v6[7] = TTPresentationAttributeNameMentionUnconfirmed;
  v6[8] = *MEMORY[0x277CCA5E0];
  v6[9] = TTPresentationAttributeNameHashtagUnconfirmed;
  v6[10] = TTPresentationAttributeNameAcceleratorLinkUnconfirmed;
  v6[11] = ICTTAttributeNameGeneratedByWritingTools;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:12];
  v4 = [v1 setByAddingObjectsFromArray:v3];
  v5 = +[ICTTMergeableAttributedString allowedAttributesForStyle]::allowedAttributes;
  +[ICTTMergeableAttributedString allowedAttributesForStyle]::allowedAttributes = v4;
}

+ (NSSet)allowedTypingAttributes
{
  if (+[ICTTMergeableAttributedString allowedTypingAttributes]::once != -1)
  {
    +[ICTTMergeableAttributedString allowedTypingAttributes];
  }

  v3 = +[ICTTMergeableAttributedString allowedTypingAttributes]::allowedAttributes;

  return v3;
}

void __56__ICTTMergeableAttributedString_allowedTypingAttributes__block_invoke()
{
  v4[11] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = ICTTAttributeNameFont;
  v4[1] = ICTTAttributeNameFontHints;
  v4[2] = ICTTAttributeNameUnderline;
  v4[3] = ICTTAttributeNameStrikethrough;
  v4[4] = ICTTAttributeNameEmphasis;
  v4[5] = ICTTAttributeNameForegroundColor;
  v4[6] = ICTTAttributeNameParagraphStyle;
  v4[7] = @"NSLink";
  v4[8] = *MEMORY[0x277CCA5E0];
  v4[9] = ICTTAttributeNameSuperscript;
  v4[10] = @"NSWritingDirection";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:11];
  v2 = [v0 setWithArray:v1];
  v3 = +[ICTTMergeableAttributedString allowedTypingAttributes]::allowedAttributes;
  +[ICTTMergeableAttributedString allowedTypingAttributes]::allowedAttributes = v2;
}

+ (int64_t)writingDirectionForAttribute:(int)attribute
{
  if ((attribute - 1) >= 4)
  {
    return -1;
  }

  else
  {
    return (attribute - 1);
  }
}

+ (int)attributeForWritingDirection:(int64_t)direction
{
  if (direction < 4)
  {
    return direction + 1;
  }

  else
  {
    return 0;
  }
}

- (ICTTMergeableAttributedString)initWithArchive:(const void *)archive replicaID:(id)d orderedSubstrings:(void *)substrings timestamp:(id)timestamp fragment:(BOOL)fragment
{
  v26.receiver = self;
  v26.super_class = ICTTMergeableAttributedString;
  v8 = [(ICTTMergeableString *)&v26 initWithArchive:archive replicaID:d orderedSubstrings:substrings timestamp:timestamp fragment:fragment];
  v9 = v8;
  if (v8)
  {
    v10 = *(archive + 22);
    attributedString = [(ICTTMergeableString *)v8 attributedString];
    v12 = [attributedString length];

    if (v10)
    {
      v25 = v9;
      v13 = 0;
      v14 = 0;
      v15 = 1;
      while (1)
      {
        v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(archive + 80, v14);
        v17 = [ICTTMergeableAttributedString attributesForRun:v16];
        if (!v17 || (*(v16 + 32) & 1) == 0)
        {
          break;
        }

        v27.length = *(v16 + 48);
        v27.location = v13;
        v28.location = 0;
        v28.length = v12;
        v18 = NSIntersectionRange(v27, v28);
        attributedString2 = [(ICTTMergeableString *)v25 attributedString];
        [attributedString2 setAttributes:v17 range:{v18.location, v18.length}];

        v13 += *(v16 + 48);
        v15 = ++v14 < v10;
        if (v10 == v14)
        {
          v15 = 0;
          goto LABEL_12;
        }
      }

      v21 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICTTMergeableAttributedString(TTAttributedStringPersistenceAdditions) initWithArchive:replicaID:orderedSubstrings:timestamp:fragment:];
      }

LABEL_12:
      v9 = v25;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    if (v13 != v12)
    {
      [(ICTTMergeableString *)v9 dumpData];
      v22 = os_log_create("com.apple.notes", "SimulatedCrash");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [ICTTMergeableAttributedString(TTAttributedStringPersistenceAdditions) initWithArchive:replicaID:orderedSubstrings:timestamp:fragment:];
      }
    }

    if (v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v9;
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = v20;

  return v23;
}

+ (id)attributesForRun:(const void *)run
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = *(run + 8);
  if ((v6 & 4) != 0)
  {
    v7 = [ICTTFont alloc];
    v8 = v7;
    v9 = *(run + 7);
    if (!v9)
    {
      v9 = *(topotext::AttributeRun::default_instance(v7) + 56);
    }

    v10 = [(ICTTFont *)v8 initWithArchive:v9];
    [v5 setObject:v10 forKeyedSubscript:ICTTAttributeNameFont];

    v6 = *(run + 8);
  }

  if ((v6 & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(run + 13)];
    [v5 setObject:v11 forKeyedSubscript:ICTTAttributeNameFontHints];

    v6 = *(run + 8);
  }

  if ((v6 & 0x10) != 0 && *(run + 16))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v5 setObject:v12 forKeyedSubscript:ICTTAttributeNameUnderline];

    v6 = *(run + 8);
  }

  if ((v6 & 0x20) != 0 && *(run + 17))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v5 setObject:v13 forKeyedSubscript:ICTTAttributeNameStrikethrough];

    v6 = *(run + 8);
  }

  if ((v6 & 0x1000) != 0 && *(run + 30))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v5 setObject:v14 forKeyedSubscript:ICTTAttributeNameEmphasis];

    v6 = *(run + 8);
  }

  if ((v6 & 0x40) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:*(run + 20)];
    [v5 setObject:v15 forKeyedSubscript:ICTTAttributeNameSuperscript];

    v6 = *(run + 8);
  }

  if ((v6 & 0x80) != 0)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = *(run + 9);
    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      v17 = *v17;
      v18 = *(*(run + 9) + 8);
    }

    v19 = [v16 initWithBytes:v17 length:v18 encoding:4];
    v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
    [v5 setObject:v20 forKeyedSubscript:@"NSLink"];

    v6 = *(run + 8);
  }

  if ((v6 & 2) != 0)
  {
    v21 = [ICTTParagraphStyle alloc];
    v22 = v21;
    v23 = *(run + 5);
    if (!v23)
    {
      v23 = *(topotext::AttributeRun::default_instance(v21) + 40);
    }

    v24 = [(ICTTParagraphStyle *)v22 initWithArchive:v23];
    [v5 setObject:v24 forKeyedSubscript:ICTTAttributeNameParagraphStyle];

    v6 = *(run + 8);
  }

  if ((v6 & 0x100) != 0)
  {
    v25 = *(run + 11);
    if (v25)
    {
      components = v25[10];
    }

    else
    {
      v4 = topotext::AttributeRun::default_instance(v4);
      v25 = *(run + 11);
      components = *(v4[11] + 40);
      if (!v25)
      {
        v4 = topotext::AttributeRun::default_instance(v4);
        v25 = *(run + 11);
        v67 = *(v4[11] + 44);
        if (!v25)
        {
          v4 = topotext::AttributeRun::default_instance(v4);
          v25 = *(run + 11);
          v26 = *(v4[11] + 48);
          v68 = v26;
          if (!v25)
          {
            v4 = topotext::AttributeRun::default_instance(v4);
            v25 = v4[11];
            v26 = v68;
          }

          goto LABEL_32;
        }

LABEL_31:
        v26 = v25[12];
        v68 = v26;
LABEL_32:
        v27 = v25[13];
        v69 = v27;
        if (components != 0.0 || v67 != 0.0 || v26 != 0.0 || v27 != 1.0)
        {
          v28 = TSUDeviceRGBColorSpace();
          v29 = CGColorCreate(v28, &components);
          [v5 setObject:v29 forKeyedSubscript:ICTTAttributeNameForegroundColor];
          CGColorRelease(v29);
        }

        v6 = *(run + 8);
        goto LABEL_38;
      }
    }

    v67 = v25[11];
    goto LABEL_31;
  }

LABEL_38:
  if ((v6 & 0x200) != 0)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{+[ICTTMergeableAttributedString writingDirectionForAttribute:](ICTTMergeableAttributedString, "writingDirectionForAttribute:", *(run + 21))}];
    v65 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    [v5 setObject:v31 forKeyedSubscript:@"NSWritingDirection"];

    v6 = *(run + 8);
  }

  if ((v6 & 0x400) == 0)
  {
    goto LABEL_49;
  }

  v32 = *(run + 12);
  if (!v32)
  {
    v32 = *(topotext::AttributeRun::default_instance(v4) + 96);
  }

  if ((~*(v32 + 32) & 3) == 0)
  {
    v33 = objc_alloc_init(ICTTAttachment);
    v34 = *(v32 + 40);
    if (*(v34 + 23) < 0)
    {
      v34 = *v34;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    [(ICTTAttachment *)v33 setAttachmentIdentifier:v35];

    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v37 = *(v32 + 48);
    v38 = *(v37 + 23);
    if (v38 < 0)
    {
      v37 = *v37;
      v38 = *(*(v32 + 48) + 8);
    }

    v39 = [v36 initWithBytes:v37 length:v38 encoding:4];
    [(ICTTAttachment *)v33 setAttachmentUTI:v39];

    [v5 setObject:v33 forKeyedSubscript:@"NSAttachment"];
    v6 = *(run + 8);
LABEL_49:
    if ((v6 & 0x2000) != 0)
    {
      v40 = *(run + 14);
      if (!v40)
      {
        v40 = *(topotext::AttributeRun::default_instance(v4) + 112);
      }

      if ((~*(v40 + 32) & 7) == 0)
      {
        v41 = objc_alloc(MEMORY[0x277CBEA90]);
        v42 = *(v40 + 64);
        v43 = *(v42 + 23);
        if (v43 < 0)
        {
          v42 = *v42;
          v43 = *(*(v40 + 64) + 8);
        }

        v44 = [v41 initWithBytes:v42 length:v43];
        v45 = objc_alloc(MEMORY[0x277CCACA8]);
        v46 = *(v40 + 48);
        v47 = *(v46 + 23);
        if (v47 < 0)
        {
          v46 = *v46;
          v47 = *(*(v40 + 48) + 8);
        }

        v48 = [v45 initWithBytes:v46 length:v47 encoding:4];
        v49 = objc_alloc(MEMORY[0x277CCACA8]);
        v50 = *(v40 + 56);
        v51 = *(v50 + 23);
        if (v51 < 0)
        {
          v50 = *v50;
          v51 = *(*(v40 + 56) + 8);
        }

        v52 = [v49 initWithBytes:v50 length:v51 encoding:4];
        v53 = *(v40 + 40);
        if (*(v53 + 23) < 0)
        {
          v53 = *v53;
        }

        v54 = [MEMORY[0x277CCACA8] stringWithCString:v53 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = [v52 isEqualToString:v56];

        if (v57)
        {
          v58 = [objc_alloc(MEMORY[0x277D74208]) initWithImageContent:v44];
          [v5 setObject:v58 forKeyedSubscript:*MEMORY[0x277D74058]];
        }

        else
        {
          v58 = [[ICFallbackSystemTextAttachment alloc] initWithData:v44 type:v48 contentIdentifier:v54 systemClassName:v52];
          [v5 setObject:v58 forKeyedSubscript:@"NSAttachment"];
        }
      }
    }

    v61 = *(run + 8);
    if ((v61 & 0x800) != 0)
    {
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(run + 13)];
      [v5 setObject:v62 forKeyedSubscript:ICTTAttributeNameTimestamp];

      v61 = *(run + 8);
    }

    if ((v61 & 0x4000) != 0)
    {
      v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(run + 31) & 1];
      [v5 setObject:v63 forKeyedSubscript:ICTTAttributeNameGeneratedByWritingTools];
    }

    v60 = v5;
    goto LABEL_73;
  }

  v59 = os_log_create("com.apple.notes", "Topotext");
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    +[ICTTMergeableAttributedString(TTAttributedStringPersistenceAdditions) attributesForRun:];
  }

  v60 = 0;
LABEL_73:

  return v60;
}

+ (void)saveAttributes:(id)attributes toArchive:(void *)archive
{
  v120 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v116 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameFont];
  if (v116)
  {
    *(archive + 8) |= 4u;
    v6 = *(archive + 7);
    if (!v6)
    {
      operator new();
    }

    [v116 saveToArchive:v6];
  }

  v7 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameFontHints];

  if (v7)
  {
    v8 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameFontHints];
    intValue = [v8 intValue];
    *(archive + 8) |= 8u;
    *(archive + 13) = intValue;
  }

  v10 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameUnderline];

  if (v10)
  {
    v11 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameUnderline];
    intValue2 = [v11 intValue];
    *(archive + 8) |= 0x10u;
    *(archive + 16) = intValue2;
  }

  v13 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameStrikethrough];

  if (v13)
  {
    v14 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameStrikethrough];
    intValue3 = [v14 intValue];
    *(archive + 8) |= 0x20u;
    *(archive + 17) = intValue3;
  }

  v16 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameEmphasis];

  if (v16)
  {
    v17 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameEmphasis];
    intValue4 = [v17 intValue];
    *(archive + 8) |= 0x1000u;
    *(archive + 30) = intValue4;
  }

  v118 = [attributesCopy objectForKeyedSubscript:@"NSLink"];
  if (v118)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = [v118 absoluteString];
      if (!absoluteString)
      {
        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        absoluteString = 0;
LABEL_24:

        goto LABEL_25;
      }

      absoluteString = v118;
    }

    uTF8String = [absoluteString UTF8String];
    *(archive + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v21 = uTF8String;
    v22 = *(archive + 9);
    if (v22 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v22, v21);
    goto LABEL_24;
  }

LABEL_25:
  v23 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameSuperscript];
  if (v23)
  {
    v24 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameSuperscript];
    integerValue = [v24 integerValue];

    if (integerValue)
    {
      v26 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameSuperscript];
      intValue5 = [v26 intValue];
      *(archive + 8) |= 0x40u;
      *(archive + 20) = intValue5;
    }
  }

  v115 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameParagraphStyle];
  if (v115)
  {
    *(archive + 8) |= 2u;
    v28 = *(archive + 5);
    if (!v28)
    {
      operator new();
    }

    [v115 saveToArchive:v28];
  }

  v29 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameForegroundColor];

  if (v29)
  {
    Components = CGColorGetComponents(v29);
    NumberOfComponents = CGColorGetNumberOfComponents(v29);
    v32 = NumberOfComponents;
    if (NumberOfComponents == 4)
    {
      v33 = *Components;
      v34 = *(Components + 2);
      *(archive + 8) |= 0x100u;
      v35 = *(archive + 11);
      if (!v35)
      {
        operator new();
      }

      *(v35 + 32) |= 1u;
      *(archive + 8) |= 0x100u;
      *(v35 + 32) |= 2u;
      *(archive + 8) |= 0x100u;
      *(v35 + 32) |= 4u;
      *(archive + 8) |= 0x100u;
      *(v35 + 32) |= 8u;
      *(v35 + 40) = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v34);
    }

    else
    {
      v36 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        buf.__r_.__value_.__r.__words[0] = 0x404000200;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v32;
        _os_log_impl(&dword_214D51000, v36, OS_LOG_TYPE_DEFAULT, "Incorrect number of color components for foreground color. Expected %d and got %d", &buf, 0xEu);
      }
    }
  }

  v117 = [attributesCopy objectForKeyedSubscript:@"NSWritingDirection"];
  if (v117 && [v117 count])
  {
    firstObject = [v117 firstObject];
    integerValue2 = [firstObject integerValue];

    v39 = [ICTTMergeableAttributedString attributeForWritingDirection:integerValue2];
    v40 = v39;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v39))
    {
      __assert_rtn("set_writingdirection", "topotext.pb.h", 4492, "::topotext::AttributeRun_WritingDirection_IsValid(value)");
    }

    *(archive + 8) |= 0x200u;
    *(archive + 21) = v40;
  }

  v41 = [attributesCopy objectForKeyedSubscript:@"NSAttachment"];
  v42 = v41 == 0;

  if (!v42)
  {
    v43 = [attributesCopy objectForKeyedSubscript:@"NSAttachment"];
    objc_opt_class();
    v44 = ICDynamicCast();
    ic_isSystemTextAttachment = [v44 ic_isSystemTextAttachment];

    if (ic_isSystemTextAttachment)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = v43;
        contentIdentifier = [v46 contentIdentifier];
        systemClassName = [v46 systemClassName];
      }

      else
      {
        systemClassName = 0;
        contentIdentifier = 0;
      }

      v63 = v43;
      fileType = [v63 fileType];
      if (fileType)
      {
        contents = [v63 contents];
        v66 = ![contents length] || contentIdentifier == 0;
        v67 = v66 || systemClassName == 0;
        v68 = !v67;

        if (v68)
        {
          *(archive + 8) |= 0x2000u;
          v69 = *(archive + 14);
          if (!v69)
          {
            operator new();
          }

          fileType2 = [v63 fileType];
          v71 = fileType2;
          uTF8String2 = [fileType2 UTF8String];
          *(v69 + 32) |= 2u;
          if (!google::protobuf::internal::empty_string_)
          {
            __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
          }

          v73 = uTF8String2;
          v74 = *(v69 + 48);
          if (v74 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          std::string::__assign_external(v74, v73);

          contents2 = [v63 contents];
          v76 = contents2;
          bytes = [contents2 bytes];
          contents3 = [v63 contents];
          std::string::basic_string[abi:ne200100](&buf, bytes, [contents3 length]);
          *(v69 + 32) |= 8u;
          if (!google::protobuf::internal::empty_string_)
          {
            __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
          }

          v79 = *(v69 + 64);
          if (v79 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          std::string::operator=(v79, &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v80 = contentIdentifier;
          uTF8String3 = [contentIdentifier UTF8String];
          *(v69 + 32) |= 1u;
          if (!google::protobuf::internal::empty_string_)
          {
            __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
          }

          v82 = uTF8String3;
          v83 = *(v69 + 40);
          if (v83 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          std::string::__assign_external(v83, v82);
          v84 = systemClassName;
          std::string::basic_string[abi:ne200100](&buf, -[NSObject UTF8String](systemClassName, "UTF8String"), -[NSObject length](systemClassName, "length"));
          *(v69 + 32) |= 4u;
          if (!google::protobuf::internal::empty_string_)
          {
            __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
          }

          v85 = *(v69 + 56);
          if (v85 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          std::string::operator=(v85, &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else
    {
      if (![v43 conformsToProtocol:&unk_282766DE0])
      {
LABEL_93:

        goto LABEL_94;
      }

      attachmentIdentifier = [v43 attachmentIdentifier];
      v50 = attachmentIdentifier == 0;

      if (!v50)
      {
        *(archive + 8) |= 0x400u;
        v51 = *(archive + 12);
        if (!v51)
        {
          operator new();
        }

        attachmentIdentifier2 = [v43 attachmentIdentifier];
        v53 = attachmentIdentifier2;
        uTF8String4 = [attachmentIdentifier2 UTF8String];
        *(v51 + 32) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v55 = uTF8String4;
        v56 = *(v51 + 40);
        if (v56 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        std::string::__assign_external(v56, v55);

        attachmentUTI = [v43 attachmentUTI];
        v58 = attachmentUTI == 0;

        if (v58)
        {
          goto LABEL_93;
        }

        contentIdentifier = [v43 attachmentUTI];
        v59 = contentIdentifier;
        uTF8String5 = [contentIdentifier UTF8String];
        *(v51 + 32) |= 2u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v61 = uTF8String5;
        v62 = *(v51 + 48);
        if (v62 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        std::string::__assign_external(v62, v61);
        goto LABEL_92;
      }

      systemClassName = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(systemClassName, OS_LOG_TYPE_ERROR))
      {
        +[ICTTMergeableAttributedString(TTAttributedStringPersistenceAdditions) saveAttributes:toArchive:];
      }

      contentIdentifier = systemClassName;
    }

LABEL_92:
    goto LABEL_93;
  }

LABEL_94:
  v86 = *MEMORY[0x277D74058];
  v87 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D74058]];
  v88 = v87 == 0;

  if (!v88)
  {
    objc_opt_class();
    v89 = [attributesCopy objectForKeyedSubscript:v86];
    v90 = ICDynamicCast();

    contentIdentifier2 = [v90 contentIdentifier];
    contentType = [MEMORY[0x277D74208] contentType];
    identifier = [contentType identifier];

    imageContent = [v90 imageContent];
    className = [v90 className];
    if (contentIdentifier2 && identifier && imageContent)
    {
      *(archive + 8) |= 0x2000u;
      v96 = *(archive + 14);
      if (!v96)
      {
        operator new();
      }

      v97 = identifier;
      uTF8String6 = [identifier UTF8String];
      *(v96 + 32) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_125;
      }

      v99 = uTF8String6;
      v100 = *(v96 + 48);
      if (v100 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v100, v99);
      v101 = imageContent;
      std::string::basic_string[abi:ne200100](&buf, [imageContent bytes], objc_msgSend(imageContent, "length"));
      *(v96 + 32) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v102 = *(v96 + 64);
      if (v102 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v102, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v103 = contentIdentifier2;
      uTF8String7 = [contentIdentifier2 UTF8String];
      *(v96 + 32) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
LABEL_125:
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v105 = uTF8String7;
      v106 = *(v96 + 40);
      if (v106 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v106, v105);
      v107 = className;
      std::string::basic_string[abi:ne200100](&buf, [className UTF8String], objc_msgSend(className, "length"));
      *(v96 + 32) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v108 = *(v96 + 56);
      if (v108 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v108, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  v109 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameTimestamp];
  v110 = v109 == 0;

  if (!v110)
  {
    v111 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameTimestamp];
    unsignedLongValue = [v111 unsignedLongValue];
    *(archive + 8) |= 0x800u;
    *(archive + 13) = unsignedLongValue;
  }

  v113 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameGeneratedByWritingTools];
  v114 = v113 == 0;

  if (!v114)
  {
    *(archive + 8) |= 0x4000u;
    *(archive + 31) = 1;
  }
}

- (void)saveToArchive:(void *)archive
{
  v6.receiver = self;
  v6.super_class = ICTTMergeableAttributedString;
  [(ICTTMergeableString *)&v6 saveToArchive:?];
  attributedString = [(ICTTMergeableString *)self attributedString];
  [ICTTMergeableAttributedString saveAttributesOfString:attributedString toArchive:archive];
}

+ (void)saveAttributesOfString:(id)string toArchive:(void *)archive
{
  stringCopy = string;
  v6 = [stringCopy length];
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [stringCopy attributesAtIndex:v7 longestEffectiveRange:&v14 inRange:{0, v6}];
      v9 = *(archive + 23);
      v10 = *(archive + 22);
      if (v10 >= v9)
      {
        if (v9 == *(archive + 24))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 80, v9 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New();
      }

      v11 = *(archive + 10);
      *(archive + 22) = v10 + 1;
      v12 = *(v11 + 8 * v10);
      v13 = ICTTBoundedCheckedCastNSUIntegerToUInt32(v15);
      *(v12 + 32) |= 1u;
      *(v12 + 48) = v13;
      [ICTTMergeableAttributedString saveAttributes:v8 toArchive:v12];
      v7 += v15;
    }

    while (v7 < v6);
  }
}

- (id)serialize
{
  topotext::String::String(v5);
  [(ICTTMergeableAttributedString *)self saveToArchive:v5];
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::String::ByteSize(v5)];
  google::protobuf::MessageLite::SerializeToArray(v5, [v3 mutableBytes], objc_msgSend(v3, "length"));
  topotext::String::~String(v5);

  return v3;
}

- (void)saveDeltaSinceTimestamp:(id)timestamp toArchive:(void *)archive
{
  v6.receiver = self;
  v6.super_class = ICTTMergeableAttributedString;
  v5 = [(ICTTMergeableString *)&v6 i_saveDeltasSinceTimestamp:timestamp toArchive:?];
  [ICTTMergeableAttributedString saveAttributesOfString:v5 toArchive:archive];
}

+ (NSSet)allowedAttributesForModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ICTTMergeableAttributedString_allowedAttributesForModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[ICTTMergeableAttributedString allowedAttributesForModel]::once != -1)
  {
    dispatch_once(&+[ICTTMergeableAttributedString allowedAttributesForModel]::once, block);
  }

  v2 = +[ICTTMergeableAttributedString allowedAttributesForModel]::allowedAttributes;

  return v2;
}

void __58__ICTTMergeableAttributedString_allowedAttributesForModel__block_invoke(uint64_t a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) allowedTypingAttributes];
  v5[0] = @"NSAttachment";
  v5[1] = ICTTAttributeNameTimestamp;
  v5[2] = *MEMORY[0x277D74058];
  v5[3] = ICTTAttributeNameGeneratedByWritingTools;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = +[ICTTMergeableAttributedString allowedAttributesForModel]::allowedAttributes;
  +[ICTTMergeableAttributedString allowedAttributesForModel]::allowedAttributes = v3;
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if ([(ICTTMergeableString *)self length])
  {
    attributedString = [(ICTTMergeableString *)self attributedString];
    v9 = attributedString;
    v10 = location - 1;
    if (!location)
    {
      v10 = 0;
    }

    if (length)
    {
      v11 = location;
    }

    else
    {
      v11 = v10;
    }

    v12 = [attributedString attributesAtIndex:v11 effectiveRange:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:stringCopy attributes:v12];
  v14.receiver = self;
  v14.super_class = ICTTMergeableAttributedString;
  [(ICTTMergeableString *)&v14 replaceCharactersInRange:location withAttributedString:length, v13];
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  attributedString = [(ICTTMergeableString *)self attributedString];
  v7 = [attributedString attributesAtIndex:index effectiveRange:range];

  return v7;
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  if (length)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __53__ICTTMergeableAttributedString_setAttributes_range___block_invoke;
    v29[3] = &unk_278196340;
    v29[4] = self;
    v9 = v8;
    v30 = v9;
    [attributesCopy enumerateKeysAndObjectsUsingBlock:v29];
    v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D041D8]];
    if (v10)
    {
      v11 = [attributesCopy objectForKeyedSubscript:kDDFoundExistingLinkAttributeName];
      if (v11)
      {
      }

      else
      {
        v12 = [v9 objectForKeyedSubscript:@"NSLink"];
        v13 = v12 == 0;

        if (!v13)
        {
          [v9 removeObjectForKey:@"NSLink"];
        }
      }
    }

    v14 = v9;

    attributesCopy = v14;
    v28 = 0;
    v15 = [(ICTTMergeableAttributedString *)self attributesEqual:v14 toRange:location modelEqual:length, &v28];
    if (v28 == 1)
    {
      if (!v15)
      {
        attributedString = [(ICTTMergeableString *)self attributedString];
        [attributedString setAttributes:attributesCopy range:{location, length}];

        delegate = [(ICTTMergeableString *)self delegate];
        [delegate edited:1 range:location changeInLength:{length, 0}];
      }
    }

    else
    {
      delegate2 = [(ICTTMergeableString *)self delegate];
      [delegate2 beginEditing];

      [(ICTTMergeableString *)self beginEditing];
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v31[0] = location;
      v31[1] = length;
      v23 = 0;
      v24 = 0;
      __p = 0;
      std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, v31, &v32, 1uLL);
      [(ICTTMergeableString *)self getSubstrings:&v25 forCharacterRange:location, length];
      v19 = v25;
      v20 = v26;
      while (v19 != v20)
      {
        [(ICTTMergeableAttributedString *)self setAttributes:attributesCopy substring:*v19++];
      }

      [(ICTTMergeableString *)self endEditing];
      delegate3 = [(ICTTMergeableString *)self delegate];
      [delegate3 endEditing];

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }
    }
  }
}

void __53__ICTTMergeableAttributedString_setAttributes_range___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [objc_opt_class() allowedAttributesForModel];
  v7 = [v6 containsObject:v8];

  if (v7)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v8];
  }
}

- (BOOL)attributesEqual:(id)equal toRange:(_NSRange)range modelEqual:(BOOL *)modelEqual
{
  length = range.length;
  location = range.location;
  equalCopy = equal;
  attributedString = [(ICTTMergeableString *)self attributedString];
  v11 = [attributedString attributesAtIndex:location effectiveRange:v16];

  v15 = 0;
  if (v16[1] + v16[0] >= location + length)
  {
    v13 = [(ICTTMergeableAttributedString *)self attributesEqual:equalCopy to:v11 modelEqual:&v15];
    v12 = v15;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *modelEqual = v12;

  return v13;
}

- (BOOL)attributesEqual:(id)equal to:(id)to modelEqual:(BOOL *)modelEqual
{
  v35 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  toCopy = to;
  *modelEqual = 1;
  v29 = equalCopy;
  v9 = [equalCopy count];
  if (v9 == [toCopy count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    keyEnumerator = [equalCopy keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = *v31;
      v13 = 1;
      obj = keyEnumerator;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [toCopy objectForKeyedSubscript:{v15, obj}];
          v17 = [toCopy objectForKeyedSubscript:v15];
          v18 = v17 == 0;

          if (v18)
          {
            *modelEqual = 0;
LABEL_22:

            LOBYTE(v13) = 0;
            keyEnumerator = obj;
            goto LABEL_23;
          }

          v19 = [v29 objectForKeyedSubscript:v15];
          v20 = [v19 isEqual:v16];
          v21 = CFGetTypeID(v19);
          if (v21 == CGColorGetTypeID() && (v22 = CFGetTypeID(v16), v22 == CGColorGetTypeID()))
          {
            v23 = ICCGColorEquivalentToColor();
          }

          else
          {
            v24 = [v19 conformsToProtocol:&unk_282766C60];
            v25 = v20;
            if (v24)
            {
              v26 = [v16 conformsToProtocol:&unk_282766C60];
              v25 = v20;
              if (v26)
              {
                v25 = [v19 isEqualToModelComparable:v16];
              }
            }

            v23 = *modelEqual & v25;
          }

          *modelEqual = v23 & 1;

          v13 &= v20;
          if (((v13 | v23) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        keyEnumerator = obj;
        v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }

LABEL_23:
  }

  else
  {
    LOBYTE(v13) = 0;
    *modelEqual = 0;
  }

  return v13 & 1;
}

- (void)setAttributes:(id)attributes substring:(void *)substring
{
  attributesCopy = attributes;
  if (substring && (*(substring + 44) & 1) == 0)
  {
    v30 = 0;
    v7 = [(ICTTMergeableAttributedString *)self attributesEqual:attributesCopy toRange:*(substring + 10) modelEqual:*(substring + 4), &v30];
    if ((v30 & 1) == 0)
    {
      delegate = [(ICTTMergeableString *)self delegate];
      if (delegate)
      {
        delegate2 = [(ICTTMergeableString *)self delegate];
        wantsUndoCommands = [delegate2 wantsUndoCommands];

        if (wantsUndoCommands)
        {
          v11 = objc_alloc_init(ICTTMergeableStringUndoAttributeCommand);
          if (*(substring + 44))
          {
            v12 = 0;
          }

          else
          {
            v12 = *(substring + 4);
          }

          v13 = *(substring + 10);
          attributedString = [(ICTTMergeableString *)self attributedString];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __57__ICTTMergeableAttributedString_setAttributes_substring___block_invoke;
          v25[3] = &unk_278196368;
          substringCopy = substring;
          v28 = v13;
          v29 = v12;
          v15 = v11;
          v26 = v15;
          [attributedString enumerateAttributesInRange:v13 options:v12 usingBlock:{0, v25}];

          [(ICTTMergeableUndoString *)self addUndoCommand:v15];
        }
      }
    }

    if (!v7)
    {
      attributedString2 = [(ICTTMergeableString *)self attributedString];
      v17 = attributedString2;
      if (*(substring + 44))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(substring + 4);
      }

      [attributedString2 setAttributes:attributesCopy range:{*(substring + 10), v18}];
    }

    if ((v30 & 1) == 0)
    {
      cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];
      v20 = *(substring + 3);
      *(substring + 3) = cR_unserialized;

      delegate3 = [(ICTTMergeableString *)self delegate];

      if (delegate3)
      {
        delegate4 = [(ICTTMergeableString *)self delegate];
        v23 = delegate4;
        if (*(substring + 44))
        {
          v24 = 0;
        }

        else
        {
          v24 = *(substring + 4);
        }

        [delegate4 edited:1 range:*(substring + 10) changeInLength:{v24, 0}];
      }

      [(ICTTMergeableString *)self setHasLocalChanges:1];
    }
  }
}

void __57__ICTTMergeableAttributedString_setAttributes_substring___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  LODWORD(a3) = ICTTBoundedCheckedCastNSUIntegerToUInt32(a3 - *(a1 + 48));
  v9 = ICTTBoundedCheckedCastNSUIntegerToUInt32(a4);
  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = [*(a1 + 32) attributeRanges];
  v13 = v10;
  v15 = v13;
  v16 = v11 + a3;
  v17 = v9;
  v14 = v7;
  v18 = v14;
  std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::push_back[abi:ne200100](v12, &v15);
}

- (NSAttributedString)editsAttributedString
{
  editsAttributedString = self->_editsAttributedString;
  if (editsAttributedString)
  {
    v3 = editsAttributedString;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    attributedString = [(ICTTMergeableString *)self attributedString];
    string = [attributedString string];
    v8 = [v5 initWithString:string];

    attributedString2 = [(ICTTMergeableString *)self attributedString];
    v10 = ICTTAttributeNameTimestamp;
    attributedString3 = [(ICTTMergeableString *)self attributedString];
    ic_range = [attributedString3 ic_range];
    v14 = v13;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__ICTTMergeableAttributedString_editsAttributedString__block_invoke;
    v25[3] = &unk_278196390;
    v15 = v8;
    v26 = v15;
    [attributedString2 enumerateAttribute:v10 inRange:ic_range options:v14 usingBlock:{0, v25}];

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __54__ICTTMergeableAttributedString_editsAttributedString__block_invoke_2;
    v23 = &unk_2781963B8;
    v16 = v15;
    v24 = v16;
    [(ICTTMergeableString *)self traverseUnordered:&v20];
    v17 = [v16 copy];
    v18 = self->_editsAttributedString;
    self->_editsAttributedString = v17;

    v3 = self->_editsAttributedString;
  }

  return v3;
}

void __54__ICTTMergeableAttributedString_editsAttributedString__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    [*(a1 + 32) addAttribute:ICTTAttributeNameTimestamp value:v7 range:{a3, a4}];
  }
}

uint64_t __54__ICTTMergeableAttributedString_editsAttributedString__block_invoke_2(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 44) & 1) == 0)
  {
    return [*(result + 32) addAttribute:ICTTAttributeNameReplicaID value:*a2 range:{*(a2 + 40), *(a2 + 16)}];
  }

  return result;
}

- (id)editAtIndex:(unint64_t)index
{
  editsAttributedString = [(ICTTMergeableAttributedString *)self editsAttributedString];
  v5 = [editsAttributedString attributesAtIndex:index effectiveRange:v9];

  v6 = [ICTTTextEdit alloc];
  v7 = [(ICTTTextEdit *)v6 initWithAttributes:v5 range:v9[0], v9[1]];

  return v7;
}

- (void)enumerateEditsInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  editsAttributedString = [(ICTTMergeableAttributedString *)self editsAttributedString];
  v16.location = [editsAttributedString ic_range];
  v16.length = v9;
  v15.location = location;
  v15.length = length;
  v10 = NSIntersectionRange(v15, v16);

  editsAttributedString2 = [(ICTTMergeableAttributedString *)self editsAttributedString];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__ICTTMergeableAttributedString_enumerateEditsInRange_usingBlock___block_invoke;
  v13[3] = &unk_2781963E0;
  v12 = blockCopy;
  v14 = v12;
  [editsAttributedString2 enumerateAttributesInRange:v10.location options:v10.length usingBlock:{0, v13}];
}

void __66__ICTTMergeableAttributedString_enumerateEditsInRange_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7 = [[ICTTTextEdit alloc] initWithAttributes:v8 range:a3, a4];
  (*(*(a1 + 32) + 16))();
}

- (id)editsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__ICTTMergeableAttributedString_editsInRange___block_invoke;
  v10[3] = &unk_278196408;
  v7 = array;
  v11 = v7;
  [(ICTTMergeableAttributedString *)self enumerateEditsInRange:location usingBlock:length, v10];
  v8 = [v7 copy];

  return v8;
}

- (NSArray)edits
{
  editsAttributedString = [(ICTTMergeableAttributedString *)self editsAttributedString];
  ic_range = [editsAttributedString ic_range];
  v6 = [(ICTTMergeableAttributedString *)self editsInRange:ic_range, v5];

  return v6;
}

- (void)setTimestamp:(id)timestamp range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  timestampCopy = timestamp;
  attributedString = [(ICTTMergeableString *)self attributedString];
  v17.location = [attributedString ic_range];
  v17.length = v9;
  v16.location = location;
  v16.length = length;
  v10 = NSIntersectionRange(v16, v17);

  attributedString2 = [(ICTTMergeableString *)self attributedString];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__ICTTMergeableAttributedString_setTimestamp_range___block_invoke;
  v13[3] = &unk_278196430;
  v12 = timestampCopy;
  v14 = v12;
  selfCopy = self;
  [attributedString2 enumerateAttributesInRange:v10.location options:v10.length usingBlock:{0, v13}];
}

void __52__ICTTMergeableAttributedString_setTimestamp_range___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = [a2 mutableCopy];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    [*(a1 + 32) timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  [v12 setObject:v9 forKeyedSubscript:ICTTAttributeNameTimestamp];
  if (v7)
  {
  }

  v10 = *(a1 + 40);
  v11 = [v12 copy];
  [v10 setAttributes:v11 range:{a3, a4}];
}

- (void)removeTimestampsForReplicaID:(id)d
{
  dCopy = d;
  editsAttributedString = [(ICTTMergeableAttributedString *)self editsAttributedString];
  ic_range = [editsAttributedString ic_range];
  v8 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ICTTMergeableAttributedString_removeTimestampsForReplicaID___block_invoke;
  v10[3] = &unk_278196458;
  v9 = dCopy;
  v11 = v9;
  selfCopy = self;
  [(ICTTMergeableAttributedString *)self enumerateEditsInRange:ic_range usingBlock:v8, v10];
}

void __62__ICTTMergeableAttributedString_removeTimestampsForReplicaID___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 replicaID];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v8 range];
    [v5 setTimestamp:0 range:{v6, v7}];
  }
}

- (ICTTMergeableAttributedString)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 10)
  {
    objc_opt_class();
    document = [coderCopy document];
    uUID = ICCheckedDynamicCast();

    if (*(currentDocumentObjectForDecoding + 48) == 10)
    {
      v9 = *(currentDocumentObjectForDecoding + 40);
    }

    else
    {
      v9 = topotext::String::default_instance(v8);
    }

    replica = [uUID replica];
    sharedTopotextTimestamp = [uUID sharedTopotextTimestamp];
    v10 = [(ICTTMergeableString *)self initWithArchive:v9 replicaID:replica timestamp:sharedTopotextTimestamp];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v10 = [(ICTTMergeableString *)self initWithReplicaID:uUID];
  }

  document2 = [coderCopy document];
  [(ICTTMergeableString *)v10 setDocument:document2];

  return v10;
}

- (ICTTMergeableAttributedString)initWithICCRCoder:(id)coder string:(const void *)string
{
  coderCopy = coder;
  objc_opt_class();
  document = [coderCopy document];
  v8 = ICCheckedDynamicCast();

  if (v8)
  {
    replica = [v8 replica];
    sharedTopotextTimestamp = [v8 sharedTopotextTimestamp];
    v11 = [(ICTTMergeableString *)self initWithArchive:string replicaID:replica timestamp:sharedTopotextTimestamp];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICTTMergeableAttributedString(ICCRDataType) initWithICCRCoder:v12 string:?];
    }

    replica = [MEMORY[0x277CCAD78] UUID];
    v11 = [(ICTTMergeableString *)self initWithReplicaID:replica];
  }

  return v11;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  document = [(ICTTMergeableString *)self document];
  sharedTopotextTimestamp = [document sharedTopotextTimestamp];
  timestamp = [(ICTTMergeableString *)self timestamp];

  if (sharedTopotextTimestamp != timestamp)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.document.sharedTopotextTimestamp == self.timestamp" functionName:"-[ICTTMergeableAttributedString(ICCRDataType) encodeWithICCRCoder:]" simulateCrash:1 showAlert:0 format:@"Timestamp should be the same the as one in document."];
  }

  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v8 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 10)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v8 + 48) = 10;
    operator new();
  }

  [(ICTTMergeableAttributedString *)self encodeWithICCRCoder:coderCopy string:*(currentDocumentObjectForEncoding + 40)];
}

@end