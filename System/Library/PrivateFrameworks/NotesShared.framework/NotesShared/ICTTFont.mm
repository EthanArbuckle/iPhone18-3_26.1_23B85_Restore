@interface ICTTFont
- (BOOL)isEqual:(id)equal;
- (ICTTFont)initWithArchive:(const void *)archive;
- (ICTTFont)initWithCoder:(id)coder;
- (ICTTFont)initWithData:(id)data;
- (ICTTFont)initWithName:(id)name size:(double)size hints:(unsigned int)hints;
- (id)description;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)saveToArchive:(void *)archive;
@end

@implementation ICTTFont

- (ICTTFont)initWithName:(id)name size:(double)size hints:(unsigned int)hints
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ICTTFont;
  v9 = [(ICTTFont *)&v13 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    fontName = v9->_fontName;
    v9->_fontName = v10;

    v9->_pointSize = size;
    v9->_fontHints = hints;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    fontName = [(ICTTFont *)self fontName];
    fontName2 = [v7 fontName];
    if (fontName == fontName2 || (-[ICTTFont fontName](self, "fontName"), v3 = objc_claimAutoreleasedReturnValue(), [v7 fontName], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      [(ICTTFont *)self pointSize];
      v12 = v11;
      [v7 pointSize];
      if (v12 == v13)
      {
        fontHints = [(ICTTFont *)self fontHints];
        v10 = fontHints == [v7 fontHints];
      }

      else
      {
        v10 = 0;
      }

      if (fontName == fontName2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  fontName = [(ICTTFont *)self fontName];
  v4 = [fontName hash];
  [(ICTTFont *)self pointSize];
  v6 = v5;
  v7 = v4 ^ [(ICTTFont *)self fontHints];

  return v7 ^ v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fontName = [(ICTTFont *)self fontName];
  [(ICTTFont *)self pointSize];
  v8 = v7;
  if (([(ICTTFont *)self fontHints]& 1) != 0)
  {
    v9 = @" bold";
  }

  else
  {
    v9 = &stru_2827172C0;
  }

  fontHints = [(ICTTFont *)self fontHints];
  v11 = @" italic";
  if ((fontHints & 2) == 0)
  {
    v11 = &stru_2827172C0;
  }

  v12 = [v3 stringWithFormat:@"<%@: %p %@ %0.1f%@%@>", v5, self, fontName, v8, v9, v11];

  return v12;
}

- (ICTTFont)initWithData:(id)data
{
  dataCopy = data;
  topotext::Font::Font(v10);
  bytes = [dataCopy bytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, bytes, v6))
  {
    self = [(ICTTFont *)self initWithArchive:v10];
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

  topotext::Font::~Font(v10);

  return selfCopy;
}

- (ICTTFont)initWithArchive:(const void *)archive
{
  v5 = *(archive + 8);
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = *(archive + 5);
    v9 = *(v8 + 23);
    if (v9 < 0)
    {
      v8 = *v8;
      v9 = *(*(archive + 5) + 8);
    }

    v10 = [v7 initWithBytes:v8 length:v9 encoding:4];
    v5 = *(archive + 8);
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v11 = *(archive + 12);
  v12 = [ICTTFont alloc];
  v13 = v11;
  if ((v5 & 2) == 0)
  {
    v13 = 0.0;
  }

  v14 = [(ICTTFont *)v12 initWithName:v6 size:*(archive + 13) & ((*(archive + 8) << 29) >> 31) hints:v13];

  return v14;
}

- (void)saveToArchive:(void *)archive
{
  fontName = [(ICTTFont *)self fontName];

  if (fontName)
  {
    fontName2 = [(ICTTFont *)self fontName];
    uTF8String = [fontName2 UTF8String];
    *(archive + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v8 = uTF8String;
    v9 = *(archive + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v9, v8);
  }

  [(ICTTFont *)self pointSize];
  if (v10 > 0.0)
  {
    [(ICTTFont *)self pointSize];
    *&v11 = v11;
    *(archive + 8) |= 2u;
    *(archive + 12) = LODWORD(v11);
  }

  if ([(ICTTFont *)self fontHints])
  {
    fontHints = [(ICTTFont *)self fontHints];
    *(archive + 8) |= 4u;
    *(archive + 13) = fontHints;
  }
}

- (id)serialize
{
  topotext::Font::Font(v7);
  [(ICTTFont *)self saveToArchive:v7];
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::Font::ByteSize(v7)];
  mutableBytes = [v3 mutableBytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, mutableBytes, v5);
  topotext::Font::~Font(v7);

  return v3;
}

- (ICTTFont)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufArchiveKey"];
  v6 = [(ICTTFont *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(ICTTFont *)self serialize];
  if (serialize)
  {
    [coderCopy encodeObject:serialize forKey:@"protobufArchiveKey"];
  }
}

@end