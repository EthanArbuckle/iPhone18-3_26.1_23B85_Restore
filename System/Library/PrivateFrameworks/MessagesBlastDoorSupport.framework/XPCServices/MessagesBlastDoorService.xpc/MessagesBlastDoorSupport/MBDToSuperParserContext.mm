@interface MBDToSuperParserContext
+ (id)fileTransferInfoWithName:(id)name attachments:(id)attachments imageInfo:(id)info stickerInfo:(id)stickerInfo emojiImageInfo:(id)imageInfo;
- (BOOL)_lastCharacterInCurrentBodyIsAttachment;
- (BOOL)appendLivePhotoAttribute:(id)attribute attachments:(id)attachments imageInfo:(id)info stickerInfo:(id)stickerInfo;
- (NSAttributedString)body;
- (id)attachmentCharacterString;
- (unint64_t)_currentMessagePart;
- (unint64_t)_inferredMessagePartForNewText;
- (unint64_t)_messagePartForLastCharacterInCurrentBody;
- (unint64_t)_nextAvailableMessagePart;
- (void)_clearIvars;
- (void)_initIvars;
- (void)_popValueFromStack:(id)stack attributeName:(id)name;
- (void)_pushValue:(id)value ontoStack:(id)stack attributeName:(id)name;
- (void)_updateCurrentAttributesWithMessagePartNumber;
- (void)appendFileTransferAttribute:(id)attribute attachments:(id)attachments imageInfo:(id)info stickerInfo:(id)stickerInfo emojiImageInfo:(id)imageInfo;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)popMessagePartNumber;
- (void)pushMessagePartNumber:(unint64_t)number;
- (void)pushTextEffectAttributeWithType:(unint64_t)type;
- (void)reset;
@end

@implementation MBDToSuperParserContext

- (void)dealloc
{
  [(MBDToSuperParserContext *)self _clearIvars];
  v3.receiver = self;
  v3.super_class = MBDToSuperParserContext;
  [(MBDToSuperParserContext *)&v3 dealloc];
}

- (void)reset
{
  [(MBDToSuperParserContext *)self _clearIvars];
  [(MBDToSuperParserContext *)self _initIvars];
  v3.receiver = self;
  v3.super_class = MBDToSuperParserContext;
  [(MBDXMLParserContext *)&v3 reset];
}

- (void)_initIvars
{
  v3 = objc_alloc_init(NSMutableArray);
  messagePartNumberStack = self->_messagePartNumberStack;
  self->_messagePartNumberStack = v3;

  v5 = objc_alloc_init(NSMutableIndexSet);
  allUsedMessagePartNumbers = self->_allUsedMessagePartNumbers;
  self->_allUsedMessagePartNumbers = v5;

  v7 = objc_alloc_init(NSMutableArray);
  linkStack = self->_linkStack;
  self->_linkStack = v7;

  v9 = objc_alloc_init(NSMutableDictionary);
  currentAttributes = self->_currentAttributes;
  self->_currentAttributes = v9;

  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = 0;

  foregroundColor = self->_foregroundColor;
  self->_foregroundColor = 0;

  v13 = objc_alloc_init(NSMutableAttributedString);
  body = self->_body;
  self->_body = v13;

  self->_baseWritingDirection = -1;
}

- (void)_clearIvars
{
  currentAttributes = self->_currentAttributes;
  self->_currentAttributes = 0;

  messagePartNumberStack = self->_messagePartNumberStack;
  self->_messagePartNumberStack = 0;

  allUsedMessagePartNumbers = self->_allUsedMessagePartNumbers;
  self->_allUsedMessagePartNumbers = 0;

  linkStack = self->_linkStack;
  self->_linkStack = 0;

  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = 0;

  foregroundColor = self->_foregroundColor;
  self->_foregroundColor = 0;

  body = self->_body;
  self->_body = 0;
}

- (void)_pushValue:(id)value ontoStack:(id)stack attributeName:(id)name
{
  if (value)
  {
    nameCopy = name;
    valueCopy = value;
    [stack addObject:valueCopy];
    [(NSMutableDictionary *)self->_currentAttributes setObject:valueCopy forKey:nameCopy];
  }
}

- (void)_popValueFromStack:(id)stack attributeName:(id)name
{
  nameCopy = name;
  [stack removeLastObject];
  [(NSMutableDictionary *)self->_currentAttributes removeObjectForKey:nameCopy];
}

- (void)_updateCurrentAttributesWithMessagePartNumber
{
  lastObject = [(NSMutableArray *)self->_messagePartNumberStack lastObject];
  currentAttributes = self->_currentAttributes;
  v5 = lastObject;
  if (lastObject)
  {
    [(NSMutableDictionary *)currentAttributes setObject:lastObject forKey:MBDIMMessagePartAttributeName];
  }

  else
  {
    [(NSMutableDictionary *)currentAttributes removeObjectForKey:MBDIMMessagePartAttributeName];
  }
}

- (void)pushMessagePartNumber:(unint64_t)number
{
  if ([(NSMutableIndexSet *)self->_allUsedMessagePartNumbers containsIndex:?]&& [(MBDToSuperParserContext *)self _messagePartForLastCharacterInCurrentBody]!= number)
  {
    v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Message parser found non-contigous message part numbers" userInfo:0];
    objc_exception_throw(v7);
  }

  messagePartNumberStack = self->_messagePartNumberStack;
  v6 = [NSNumber numberWithUnsignedInteger:number];
  [(NSMutableArray *)messagePartNumberStack addObject:v6];

  [(NSMutableIndexSet *)self->_allUsedMessagePartNumbers addIndex:number];

  [(MBDToSuperParserContext *)self _updateCurrentAttributesWithMessagePartNumber];
}

- (void)popMessagePartNumber
{
  [(NSMutableArray *)self->_messagePartNumberStack removeLastObject];

  [(MBDToSuperParserContext *)self _updateCurrentAttributesWithMessagePartNumber];
}

- (BOOL)_lastCharacterInCurrentBodyIsAttachment
{
  attachmentCharacterString = [(MBDToSuperParserContext *)self attachmentCharacterString];
  string = [(NSMutableAttributedString *)self->_body string];
  if ([string hasSuffix:attachmentCharacterString])
  {
    v5 = [(NSMutableAttributedString *)self->_body length];
    v6 = [(NSMutableAttributedString *)self->_body attribute:MBDIMFileTransferAttributeName atIndex:v5 - 1 effectiveRange:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 _stringForKey:MBDIMFileTransferEmojiImageContentIdentifierKey];
      v8 = [v7 length] == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_messagePartForLastCharacterInCurrentBody
{
  if (![(NSMutableAttributedString *)self->_body length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(NSMutableAttributedString *)self->_body length];
  v4 = [(NSMutableAttributedString *)self->_body attribute:MBDIMMessagePartAttributeName atIndex:v3 - 1 effectiveRange:0];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (unint64_t)_nextAvailableMessagePart
{
  result = [(NSMutableIndexSet *)self->_allUsedMessagePartNumbers count];
  if (result)
  {
    return [(NSMutableIndexSet *)self->_allUsedMessagePartNumbers lastIndex]+ 1;
  }

  return result;
}

- (unint64_t)_currentMessagePart
{
  lastObject = [(NSMutableArray *)self->_messagePartNumberStack lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    unsignedIntegerValue = [lastObject unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (unint64_t)_inferredMessagePartForNewText
{
  if ([(MBDToSuperParserContext *)self _lastCharacterInCurrentBodyIsAttachment]|| (result = [(MBDToSuperParserContext *)self _messagePartForLastCharacterInCurrentBody], result == 0x7FFFFFFFFFFFFFFFLL))
  {

    return [(MBDToSuperParserContext *)self _nextAvailableMessagePart];
  }

  return result;
}

- (void)pushTextEffectAttributeWithType:(unint64_t)type
{
  currentAttributes = self->_currentAttributes;
  v4 = [NSNumber numberWithUnsignedInteger:type];
  [(NSMutableDictionary *)currentAttributes setObject:v4 forKey:MBDIMTextEffectAttributeName];
}

- (void)appendString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [(NSMutableArray *)self->_messagePartNumberStack count];
    if (!v4)
    {
      [(MBDToSuperParserContext *)self pushMessagePartNumber:[(MBDToSuperParserContext *)self _inferredMessagePartForNewText]];
    }

    v5 = [[NSAttributedString alloc] initWithString:stringCopy attributes:self->_currentAttributes];
    [(NSMutableAttributedString *)self->_body appendAttributedString:v5];
    if (!v4)
    {
      [(MBDToSuperParserContext *)self popMessagePartNumber];
    }
  }
}

+ (id)fileTransferInfoWithName:(id)name attachments:(id)attachments imageInfo:(id)info stickerInfo:(id)stickerInfo emojiImageInfo:(id)imageInfo
{
  attachmentsCopy = attachments;
  infoCopy = info;
  stickerInfoCopy = stickerInfo;
  imageInfoCopy = imageInfo;
  nameCopy = name;
  v16 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v17 = v16;
  if (nameCopy)
  {
    v18 = nameCopy;
  }

  else
  {
    v18 = &stru_1000F64A0;
  }

  [v16 setObject:v18 forKey:MBDIMFileTransferNameKey];

  if ([attachmentsCopy count])
  {
    v19 = [attachmentsCopy copy];
    [v17 setObject:v19 forKey:MBDIMFileTransferAttachmentsKey];
  }

  if ([infoCopy count])
  {
    v20 = [infoCopy copy];
    [v17 setObject:v20 forKey:MBDIMFileTransferImageInfoKey];
  }

  if ([stickerInfoCopy count])
  {
    v21 = [stickerInfoCopy copy];
    [v17 setObject:v21 forKey:MBDIMFileTransferStickerInfoKey];
  }

  if ([imageInfoCopy count])
  {
    [v17 addEntriesFromDictionary:imageInfoCopy];
  }

  if ([v17 count])
  {
    v22 = [v17 copy];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)attachmentCharacterString
{
  v4 = -4;
  v2 = [[NSString alloc] initWithCharacters:&v4 length:1];

  return v2;
}

- (void)appendFileTransferAttribute:(id)attribute attachments:(id)attachments imageInfo:(id)info stickerInfo:(id)stickerInfo emojiImageInfo:(id)imageInfo
{
  v12 = MBDIMFileTransferEmojiImageContentIdentifierKey;
  imageInfoCopy = imageInfo;
  stickerInfoCopy = stickerInfo;
  infoCopy = info;
  attachmentsCopy = attachments;
  attributeCopy = attribute;
  v18 = [imageInfoCopy _stringForKey:v12];
  v19 = [v18 length];

  v20 = [(NSMutableArray *)self->_messagePartNumberStack count];
  if (!v20)
  {
    if (v19)
    {
      _inferredMessagePartForNewText = [(MBDToSuperParserContext *)self _inferredMessagePartForNewText];
    }

    else
    {
      _inferredMessagePartForNewText = [(MBDToSuperParserContext *)self _inferredMessagePartForNewFile];
    }

    [(MBDToSuperParserContext *)self pushMessagePartNumber:_inferredMessagePartForNewText];
  }

  v22 = [objc_opt_class() fileTransferInfoWithName:attributeCopy attachments:attachmentsCopy imageInfo:infoCopy stickerInfo:stickerInfoCopy emojiImageInfo:imageInfoCopy];

  attachmentCharacterString = [(MBDToSuperParserContext *)self attachmentCharacterString];
  _currentMessagePart = [(MBDToSuperParserContext *)self _currentMessagePart];
  v29[0] = MBDIMFileTransferAttributeName;
  v25 = [v22 copy];
  v30[0] = v25;
  v29[1] = MBDIMMessagePartAttributeName;
  v26 = [NSNumber numberWithUnsignedInteger:_currentMessagePart];
  v30[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];

  v28 = [[NSAttributedString alloc] initWithString:attachmentCharacterString attributes:v27];
  [(NSMutableAttributedString *)self->_body appendAttributedString:v28];
  if (!v20)
  {
    [(MBDToSuperParserContext *)self popMessagePartNumber];
  }
}

- (BOOL)appendLivePhotoAttribute:(id)attribute attachments:(id)attachments imageInfo:(id)info stickerInfo:(id)stickerInfo
{
  attributeCopy = attribute;
  attachmentsCopy = attachments;
  infoCopy = info;
  stickerInfoCopy = stickerInfo;
  attachmentCharacterString = [(MBDToSuperParserContext *)self attachmentCharacterString];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v28 = &unk_1000D3F07;
  v29 = xmmword_1000C8D60;
  string = [(NSMutableAttributedString *)self->_body string];
  v16 = [string length];

  string2 = [(NSMutableAttributedString *)self->_body string];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000096E0;
  v22[3] = &unk_1000F0BD0;
  v18 = attachmentCharacterString;
  v23 = v18;
  v24 = &v25;
  [string2 enumerateSubstringsInRange:0 options:v16 usingBlock:{258, v22}];

  v19 = v26[4];
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [objc_opt_class() fileTransferInfoWithName:attributeCopy attachments:attachmentsCopy imageInfo:infoCopy stickerInfo:stickerInfoCopy emojiImageInfo:0];
    [(NSMutableAttributedString *)self->_body addAttribute:MBDIMLivePhotoAttributeName value:v20 range:v26[4], v26[5]];
  }

  _Block_object_dispose(&v25, 8);
  return v19 != 0x7FFFFFFFFFFFFFFFLL;
}

- (NSAttributedString)body
{
  v3 = [(NSMutableAttributedString *)self->_body length];
  if (!self->_didAddBodyAttributes)
  {
    v4 = v3;
    if (v3)
    {
      v5 = [[NSNumber alloc] initWithInteger:self->_baseWritingDirection];
      [(NSMutableAttributedString *)self->_body addAttribute:MBDIMBaseWritingDirectionAttributeName value:v5 range:0, v4];
      self->_didAddBodyAttributes = 1;
    }
  }

  body = self->_body;

  return body;
}

@end