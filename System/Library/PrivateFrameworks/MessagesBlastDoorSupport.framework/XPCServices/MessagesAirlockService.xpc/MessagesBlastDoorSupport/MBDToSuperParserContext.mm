@interface MBDToSuperParserContext
+ (id)fileTransferInfoWithName:(id)name partNumber:(unint64_t)number attachments:(id)attachments imageInfo:(id)info;
- (NSAttributedString)body;
- (void)_clearIvars;
- (void)_incrementMessagePartNumber;
- (void)_initIvars;
- (void)_popValueFromStack:(id)stack attributeName:(id)name;
- (void)_pushValue:(id)value ontoStack:(id)stack attributeName:(id)name;
- (void)appendFailedGenmojiAttributes;
- (void)appendFileTransferAttribute:(id)attribute attachments:(id)attachments imageInfo:(id)info;
- (void)appendString:(id)string;
- (void)dealloc;
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
  self->_messagePartNumber = 0;
  self->_lastPartInsertedWasImage = 0;
  v3 = objc_alloc_init(NSMutableDictionary);
  currentAttributes = self->_currentAttributes;
  self->_currentAttributes = v3;

  v5 = self->_currentAttributes;
  v6 = [NSNumber numberWithUnsignedInteger:self->_messagePartNumber];
  [(NSMutableDictionary *)v5 setObject:v6 forKey:MBDIMMessagePartAttributeName];

  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = 0;

  foregroundColor = self->_foregroundColor;
  self->_foregroundColor = 0;

  v9 = objc_alloc_init(NSMutableAttributedString);
  body = self->_body;
  self->_body = v9;

  self->_baseWritingDirection = -1;
}

- (void)_clearIvars
{
  currentAttributes = self->_currentAttributes;
  self->_currentAttributes = 0;

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

- (void)_incrementMessagePartNumber
{
  ++self->_messagePartNumber;
  currentAttributes = self->_currentAttributes;
  v3 = [NSNumber numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)currentAttributes setObject:v3 forKey:MBDIMMessagePartAttributeName];
}

- (void)appendString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [[NSAttributedString alloc] initWithString:stringCopy attributes:self->_currentAttributes];
    [(NSMutableAttributedString *)self->_body appendAttributedString:v4];
    self->_lastPartInsertedWasImage = 0;
  }
}

+ (id)fileTransferInfoWithName:(id)name partNumber:(unint64_t)number attachments:(id)attachments imageInfo:(id)info
{
  attachmentsCopy = attachments;
  infoCopy = info;
  nameCopy = name;
  v11 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v12 = v11;
  if (nameCopy)
  {
    v13 = nameCopy;
  }

  else
  {
    v13 = &stru_10003EBC8;
  }

  [v11 setObject:v13 forKey:MBDIMFileTransferNameKey];

  if ([attachmentsCopy count])
  {
    v14 = [attachmentsCopy copy];
    [v12 setObject:v14 forKey:MBDIMFileTransferAttachmentsKey];
  }

  if ([infoCopy count])
  {
    v15 = [infoCopy copy];
    [v12 setObject:v15 forKey:MBDIMFileTransferImageInfoKey];
  }

  if ([v12 count])
  {
    v16 = [v12 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)appendFileTransferAttribute:(id)attribute attachments:(id)attachments imageInfo:(id)info
{
  attributeCopy = attribute;
  attachmentsCopy = attachments;
  infoCopy = info;
  if (!self->_lastPartInsertedWasImage)
  {
    if ([(NSMutableAttributedString *)self->_body length])
    {
      if (-[NSMutableAttributedString length](self->_body, "length") != 1 || (-[NSMutableAttributedString string](self->_body, "string"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:MBDIMBreadcrumbCharacterString], v11, (v12 & 1) == 0))
      {
        [(MBDToSuperParserContext *)self _incrementMessagePartNumber];
      }
    }
  }

  v13 = [objc_opt_class() fileTransferInfoWithName:attributeCopy partNumber:self->_messagePartNumber attachments:attachmentsCopy imageInfo:infoCopy];
  v19 = -4;
  v14 = [[NSString alloc] initWithCharacters:&v19 length:1];
  v20[0] = MBDIMFileTransferAttributeName;
  v15 = [v13 copy];
  v21[0] = v15;
  v20[1] = MBDIMMessagePartAttributeName;
  v16 = [NSNumber numberWithUnsignedInteger:self->_messagePartNumber];
  v21[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  v18 = [[NSAttributedString alloc] initWithString:v14 attributes:v17];
  [(NSMutableAttributedString *)self->_body appendAttributedString:v18];
  [(MBDToSuperParserContext *)self _incrementMessagePartNumber];
  self->_lastPartInsertedWasImage = 1;
}

- (void)appendFailedGenmojiAttributes
{
  v7 = MBDIMMessagePartAttributeName;
  v3 = [NSNumber numberWithUnsignedInteger:self->_messagePartNumber];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v5 = [NSAttributedString alloc];
  v6 = [v5 initWithString:MBDIMGenmojiFailureString attributes:v4];
  [(NSMutableAttributedString *)self->_body appendAttributedString:v6];
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