@interface ICTTParagraphStyle
+ (id)defaultParagraphStyle;
+ (id)paragraphStyleNamed:(unsigned int)named;
+ (int)paragraphStyleAlignmentForTextAlignment:(int64_t)alignment;
+ (int64_t)textAlignmentForParagraphStyleAlignment:(int)alignment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToModelComparable:(id)comparable;
- (BOOL)isEqualToModelParagraphStyle:(id)style;
- (BOOL)isEqualToParagraphStyle:(id)style;
- (BOOL)isHeader;
- (BOOL)isHierarchicallyEqualToParagraphStyle:(id)style;
- (BOOL)isList;
- (BOOL)preferSingleLine;
- (BOOL)wantsFollowingNewLine;
- (ICTTParagraphStyle)init;
- (ICTTParagraphStyle)initWithArchive:(const void *)archive;
- (ICTTParagraphStyle)initWithCoder:(id)coder;
- (ICTTParagraphStyle)initWithData:(id)data;
- (NSString)description;
- (NSUUID)todoTrackingUUID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)listBulletInAttributedString:(id)string atIndex:(unint64_t)index;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)saveToArchive:(void *)archive;
- (void)setIndent:(unint64_t)indent;
- (void)setStyle:(unsigned int)style;
@end

@implementation ICTTParagraphStyle

- (ICTTParagraphStyle)init
{
  v7.receiver = self;
  v7.super_class = ICTTParagraphStyle;
  v2 = [(ICTTParagraphStyle *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_style = 3;
    v2->_alignment = ICTTParagraphStyleAlignmentDefault;
    v2->_writingDirection = -1;
    if (ICInternalSettingsIsCollapsibleSectionsEnabled())
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uuid = v3->_uuid;
      v3->_uuid = uUID;
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v10 = vshlq_u64(*&self->_indent, xmmword_2150C1050);
  v9 = vshlq_u64(*&self->_alignment, xmmword_2150C1060);
  style = self->_style;
  hints = self->_hints;
  v5 = [(ICTTTodo *)self->_todo hash];
  v6 = [(NSUUID *)self->_uuid hash];
  v7 = veorq_s8(v9, v10);
  return *&veor_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) ^ style ^ v6 ^ hints ^ v5;
}

- (NSUUID)todoTrackingUUID
{
  todo = [(ICTTParagraphStyle *)self todo];
  uuid = [todo uuid];

  return uuid;
}

- (BOOL)isHeader
{
  style = [(ICTTParagraphStyle *)self style];
  if (style != 1)
  {
    LOBYTE(style) = [(ICTTParagraphStyle *)self style]== 2 || [(ICTTParagraphStyle *)self style]== 0;
  }

  return style;
}

- (BOOL)isList
{
  if ([(ICTTParagraphStyle *)self isUnknownStyle])
  {
    return [(ICTTParagraphStyle *)self hints]& 1;
  }

  if ([(ICTTParagraphStyle *)self style]== 103 || [(ICTTParagraphStyle *)self style]== 100 || [(ICTTParagraphStyle *)self style]== 101)
  {
    return 1;
  }

  return [(ICTTParagraphStyle *)self style]== 102;
}

+ (int64_t)textAlignmentForParagraphStyleAlignment:(int)alignment
{
  if (alignment >= 4)
  {
    return 4;
  }

  else
  {
    return alignment;
  }
}

+ (int)paragraphStyleAlignmentForTextAlignment:(int64_t)alignment
{
  if (alignment >= 4)
  {
    return 4;
  }

  else
  {
    return alignment;
  }
}

- (ICTTParagraphStyle)initWithData:(id)data
{
  dataCopy = data;
  topotext::ParagraphStyle::ParagraphStyle(v10);
  bytes = [dataCopy bytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, bytes, v6))
  {
    self = [(ICTTParagraphStyle *)self initWithArchive:v10];
    selfCopy = self;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICTTParagraphStyle(ICTTParagraphStylePersistenceAdditions) initWithData:v8];
    }

    selfCopy = 0;
  }

  topotext::ParagraphStyle::~ParagraphStyle(v10);

  return selfCopy;
}

- (ICTTParagraphStyle)initWithArchive:(const void *)archive
{
  v4 = [(ICTTParagraphStyle *)self init];
  v5 = v4;
  if (v4)
  {
    if (*(archive + 8))
    {
      v6 = *(archive + 10);
    }

    else
    {
      v6 = 3;
    }

    [(ICTTParagraphStyle *)v4 setStyle:v6];
    if ((*(archive + 32) & 2) != 0)
    {
      v7 = [ICTTParagraphStyle textAlignmentForParagraphStyleAlignment:*(archive + 11)];
    }

    else
    {
      v7 = ICTTParagraphStyleAlignmentDefault;
    }

    [(ICTTParagraphStyle *)v5 setAlignment:v7];
    if ((*(archive + 32) & 4) != 0)
    {
      v8 = [ICTTMergeableAttributedString writingDirectionForAttribute:*(archive + 12)];
    }

    else
    {
      v8 = -1;
    }

    [(ICTTParagraphStyle *)v5 setWritingDirection:v8];
    v9 = *(archive + 8);
    if ((v9 & 8) != 0)
    {
      [(ICTTParagraphStyle *)v5 setIndent:*(archive + 13)];
      v9 = *(archive + 8);
    }

    if ((v9 & 0x80) != 0)
    {
      [(ICTTParagraphStyle *)v5 setBlockQuoteLevel:*(archive + 20)];
      v9 = *(archive + 8);
    }

    if ((v9 & 0x40) != 0)
    {
      [(ICTTParagraphStyle *)v5 setStartingItemNumber:*(archive + 17)];
      v9 = *(archive + 8);
    }

    if ((v9 & 0x10) != 0)
    {
      v10 = [ICTTTodo alloc];
      v11 = v10;
      v12 = *(archive + 7);
      if (!v12)
      {
        v12 = *(topotext::ParagraphStyle::default_instance(v10) + 56);
      }

      v13 = [(ICTTTodo *)v11 initWithArchive:v12];
      [(ICTTParagraphStyle *)v5 setTodo:v13];

      v9 = *(archive + 8);
    }

    if ((v9 & 0x20) != 0)
    {
      [(ICTTParagraphStyle *)v5 setHints:*(archive + 16)];
      v9 = *(archive + 8);
    }

    if ((v9 & 0x100) != 0)
    {
      v14 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = *(archive + 9);
      if (*(v15 + 23) < 0)
      {
        v15 = *v15;
      }

      v16 = [v14 initWithUUIDBytes:v15];
      [(ICTTParagraphStyle *)v5 setUuid:v16];
    }
  }

  return v5;
}

- (void)saveToArchive:(void *)archive
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(ICTTParagraphStyle *)self style]!= 3)
  {
    style = [(ICTTParagraphStyle *)self style];
    *(archive + 8) |= 1u;
    *(archive + 10) = style;
  }

  alignment = [(ICTTParagraphStyle *)self alignment];
  if (alignment != ICTTParagraphStyleAlignmentDefault)
  {
    v7 = [ICTTParagraphStyle paragraphStyleAlignmentForTextAlignment:[(ICTTParagraphStyle *)self alignment]];
    v8 = v7;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v7))
    {
      [ICTTParagraphStyle(ICTTParagraphStylePersistenceAdditions) saveToArchive:];
    }

    *(archive + 8) |= 2u;
    *(archive + 11) = v8;
  }

  if ([(ICTTParagraphStyle *)self writingDirection]!= -1)
  {
    v9 = [ICTTMergeableAttributedString attributeForWritingDirection:[(ICTTParagraphStyle *)self writingDirection]];
    v10 = v9;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v9))
    {
      [ICTTParagraphStyle(ICTTParagraphStylePersistenceAdditions) saveToArchive:];
    }

    *(archive + 8) |= 4u;
    *(archive + 12) = v10;
  }

  if ([(ICTTParagraphStyle *)self indent])
  {
    indent = [(ICTTParagraphStyle *)self indent];
    *(archive + 8) |= 8u;
    *(archive + 13) = indent;
  }

  if ([(ICTTParagraphStyle *)self blockQuoteLevel])
  {
    blockQuoteLevel = [(ICTTParagraphStyle *)self blockQuoteLevel];
    *(archive + 8) |= 0x80u;
    *(archive + 20) = blockQuoteLevel;
  }

  if ([(ICTTParagraphStyle *)self startingItemNumber])
  {
    startingItemNumber = [(ICTTParagraphStyle *)self startingItemNumber];
    *(archive + 8) |= 0x40u;
    *(archive + 17) = startingItemNumber;
  }

  todo = [(ICTTParagraphStyle *)self todo];

  if (todo)
  {
    todo2 = [(ICTTParagraphStyle *)self todo];
    *(archive + 8) |= 0x10u;
    v16 = *(archive + 7);
    if (!v16)
    {
      operator new();
    }

    [todo2 saveToArchive:v16];
  }

  if ([(ICTTParagraphStyle *)self hints])
  {
    hints = [(ICTTParagraphStyle *)self hints];
    *(archive + 8) |= 0x20u;
    *(archive + 16) = hints;
  }

  uuid = [(ICTTParagraphStyle *)self uuid];

  if (uuid)
  {
    v21 = 0uLL;
    uuid2 = [(ICTTParagraphStyle *)self uuid];
    [uuid2 getUUIDBytes:&v21];

    *(archive + 8) |= 0x100u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v20 = *(archive + 9);
    if (v20 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (*(v20 + 23) < 0)
    {
      v20[1] = 16;
      v20 = *v20;
    }

    else
    {
      *(v20 + 23) = 16;
    }

    *v20 = v21;
    *(v20 + 16) = 0;
  }
}

- (id)serialize
{
  topotext::ParagraphStyle::ParagraphStyle(v7);
  [(ICTTParagraphStyle *)self saveToArchive:v7];
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::ParagraphStyle::ByteSize(v7)];
  mutableBytes = [v3 mutableBytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, mutableBytes, v5);
  topotext::ParagraphStyle::~ParagraphStyle(v7);

  return v3;
}

- (ICTTParagraphStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufArchiveKey"];
  v6 = [(ICTTParagraphStyle *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(ICTTParagraphStyle *)self serialize];
  if (serialize)
  {
    [coderCopy encodeObject:serialize forKey:@"protobufArchiveKey"];
  }
}

+ (id)defaultParagraphStyle
{
  if (defaultParagraphStyle_onceToken != -1)
  {
    +[ICTTParagraphStyle defaultParagraphStyle];
  }

  v3 = defaultParagraphStyle_defaultParagraphStyle;

  return v3;
}

void __43__ICTTParagraphStyle_defaultParagraphStyle__block_invoke()
{
  v0 = objc_alloc_init(ICTTParagraphStyle);
  v1 = defaultParagraphStyle_defaultParagraphStyle;
  defaultParagraphStyle_defaultParagraphStyle = v0;
}

+ (id)paragraphStyleNamed:(unsigned int)named
{
  v3 = *&named;
  v4 = objc_alloc_init(ICTTParagraphStyle);
  [(ICTTParagraphStyle *)v4 setStyle:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ICTTParagraphStyle allocWithZone:](ICTTParagraphStyle init];
  todo = [(ICTTParagraphStyle *)self todo];
  v7 = [todo copyWithZone:zone];
  [(ICTTParagraphStyle *)v5 setTodo:v7];

  [(ICTTParagraphStyle *)v5 setStyle:[(ICTTParagraphStyle *)self style]];
  [(ICTTParagraphStyle *)v5 setAlignment:self->_alignment];
  [(ICTTParagraphStyle *)v5 setWritingDirection:self->_writingDirection];
  [(ICTTParagraphStyle *)v5 setIndent:[(ICTTParagraphStyle *)self indent]];
  [(ICTTParagraphStyle *)v5 setBlockQuoteLevel:[(ICTTParagraphStyle *)self blockQuoteLevel]];
  [(ICTTParagraphStyle *)v5 setStartingItemNumber:[(ICTTParagraphStyle *)self startingItemNumber]];
  [(ICTTParagraphStyle *)v5 setHints:[(ICTTParagraphStyle *)self hints]];
  [(ICTTParagraphStyle *)v5 setNeedsParagraphCleanup:[(ICTTParagraphStyle *)self needsParagraphCleanup]];
  [(ICTTParagraphStyle *)v5 setNeedsListCleanup:[(ICTTParagraphStyle *)self needsListCleanup]];
  uuid = [(ICTTParagraphStyle *)self uuid];
  v9 = [uuid copyWithZone:zone];
  [(ICTTParagraphStyle *)v5 setUuid:v9];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [(ICTTParagraphStyle *)+[ICTTMutableParagraphStyle allocWithZone:](ICTTMutableParagraphStyle init];
  todo = [(ICTTParagraphStyle *)self todo];
  v7 = [todo copyWithZone:zone];
  [(ICTTParagraphStyle *)v5 setTodo:v7];

  [(ICTTParagraphStyle *)v5 setStyle:[(ICTTParagraphStyle *)self style]];
  [(ICTTParagraphStyle *)v5 setAlignment:self->_alignment];
  [(ICTTParagraphStyle *)v5 setWritingDirection:self->_writingDirection];
  [(ICTTParagraphStyle *)v5 setIndent:[(ICTTParagraphStyle *)self indent]];
  [(ICTTParagraphStyle *)v5 setBlockQuoteLevel:[(ICTTParagraphStyle *)self blockQuoteLevel]];
  [(ICTTParagraphStyle *)v5 setStartingItemNumber:[(ICTTParagraphStyle *)self startingItemNumber]];
  [(ICTTParagraphStyle *)v5 setHints:[(ICTTParagraphStyle *)self hints]];
  [(ICTTParagraphStyle *)v5 setNeedsParagraphCleanup:[(ICTTParagraphStyle *)self needsParagraphCleanup]];
  [(ICTTParagraphStyle *)v5 setNeedsListCleanup:[(ICTTParagraphStyle *)self needsListCleanup]];
  uuid = [(ICTTParagraphStyle *)self uuid];
  v9 = [uuid copyWithZone:zone];
  [(ICTTParagraphStyle *)v5 setUuid:v9];

  return v5;
}

- (id)mutableCopy
{
  v3.receiver = self;
  v3.super_class = ICTTParagraphStyle;
  return [(ICTTParagraphStyle *)&v3 mutableCopy];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(ICTTParagraphStyle *)self isEqualToParagraphStyle:equal];
}

- (BOOL)isEqualToParagraphStyle:(id)style
{
  if (style)
  {
    v5 = [(ICTTParagraphStyle *)self isEqualToModelParagraphStyle:?];
    if (v5)
    {
      LOBYTE(v5) = self->_needsListCleanup == *(style + 9) && self->_needsParagraphCleanup == *(style + 8);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEqualToModelComparable:(id)comparable
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(ICTTParagraphStyle *)self isEqualToModelParagraphStyle:comparable];
}

- (BOOL)isEqualToModelParagraphStyle:(id)style
{
  if (!style || ![(ICTTParagraphStyle *)self isHierarchicallyEqualToParagraphStyle:?]|| self->_writingDirection != *(style + 4))
  {
    return 0;
  }

  uuid = self->_uuid;
  v6 = *(style + 9);
  v7 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == uuid)
  {
    uuid = 0;
  }

  v8 = uuid;
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  v11 = v10;
  if (v8 | v10)
  {
    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = [v8 isEqual:v10];
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)isHierarchicallyEqualToParagraphStyle:(id)style
{
  if (!style || self->_style != *(style + 3) || self->_alignment != *(style + 3) || self->_indent != *(style + 5) || self->_blockQuoteLevel != *(style + 6) || self->_startingItemNumber != *(style + 7) || self->_hints != *(style + 4))
  {
    return 0;
  }

  todo = self->_todo;
  v4 = *(style + 8);
  v5 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == todo)
  {
    todo = 0;
  }

  v6 = todo;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  v9 = v8;
  if (v6 | v8)
  {
    if (v6)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v6 isEqual:v8];
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)setStyle:(unsigned int)style
{
  self->_style = style;
  todo = self->_todo;
  if (style == 103)
  {
    if (todo)
    {
      return;
    }

    v5 = objc_alloc_init(ICTTTodo);
    todo = self->_todo;
  }

  else
  {
    v5 = 0;
  }

  self->_todo = v5;
}

- (void)setIndent:(unint64_t)indent
{
  indentCopy = ICTTParagraphStyleMaximumIndent;
  if (ICTTParagraphStyleMaximumIndent >= indent)
  {
    indentCopy = indent;
  }

  self->_indent = indentCopy;
}

- (BOOL)preferSingleLine
{
  if ([(ICTTParagraphStyle *)self isUnknownStyle])
  {
    return ([(ICTTParagraphStyle *)self hints]>> 1) & 1;
  }

  else if ([(ICTTParagraphStyle *)self style]== 3 || [(ICTTParagraphStyle *)self style]== 4)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    LOBYTE(v3) = ![(ICTTParagraphStyle *)self isList];
  }

  return v3;
}

- (BOOL)wantsFollowingNewLine
{
  if ([(ICTTParagraphStyle *)self isList]|| [(ICTTParagraphStyle *)self style]== 4)
  {
    return 1;
  }

  return [(ICTTParagraphStyle *)self isBlockQuote];
}

- (id)listBulletInAttributedString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  style = [(ICTTParagraphStyle *)self style];
  if (style == 101)
  {
    v11 = @"–";
  }

  else if (style == 102)
  {
    v8 = [stringCopy attribute:TTPresentationAttributeNameItemNumber atIndex:index effectiveRange:0];
    v9 = v8;
    if (index && !v8)
    {
      v9 = [stringCopy attribute:TTPresentationAttributeNameItemNumber atIndex:index - 1 effectiveRange:0];
    }

    unsignedIntegerValue = [v9 unsignedIntegerValue];
    v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld.", unsignedIntegerValue];
  }

  else
  {
    v11 = [&unk_2827480A8 objectAtIndexedSubscript:{-[ICTTParagraphStyle indent](self, "indent") % objc_msgSend(&unk_2827480A8, "count")}];
  }

  return v11;
}

- (NSString)description
{
  todo = [(ICTTParagraphStyle *)self todo];
  if (todo)
  {
    v4 = MEMORY[0x277CCACA8];
    todo2 = [(ICTTParagraphStyle *)self todo];
    v6 = [todo2 description];
    v25 = [v4 stringWithFormat:@" todo=%@", v6];
  }

  else
  {
    v25 = &stru_2827172C0;
  }

  if ([(ICTTParagraphStyle *)self writingDirection])
  {
    writingDirection = [(ICTTParagraphStyle *)self writingDirection];
    v8 = @"Natural";
    if (writingDirection == 1)
    {
      v8 = @"RTL";
    }
  }

  else
  {
    v8 = @"LTR";
  }

  v9 = v8;
  needsParagraphCleanup = [(ICTTParagraphStyle *)self needsParagraphCleanup];
  v11 = @" needsParagraphCleanup";
  if (!needsParagraphCleanup)
  {
    v11 = &stru_2827172C0;
  }

  v24 = MEMORY[0x277CCACA8];
  v12 = v11;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  style = [(ICTTParagraphStyle *)self style];
  alignment = [(ICTTParagraphStyle *)self alignment];
  indent = [(ICTTParagraphStyle *)self indent];
  blockQuoteLevel = [(ICTTParagraphStyle *)self blockQuoteLevel];
  uuid = [(ICTTParagraphStyle *)self uuid];
  needsListCleanup = [(ICTTParagraphStyle *)self needsListCleanup];
  v21 = @" needsListCleanup";
  if (!needsListCleanup)
  {
    v21 = &stru_2827172C0;
  }

  v22 = [v24 stringWithFormat:@"<%@: %p style=%lu alignment=%lu indent=%ld blockQuoteLevel=%ld uuid=%@ %@%@%@%@>", v14, self, style, alignment, indent, blockQuoteLevel, uuid, v9, v25, v12, v21];

  return v22;
}

@end