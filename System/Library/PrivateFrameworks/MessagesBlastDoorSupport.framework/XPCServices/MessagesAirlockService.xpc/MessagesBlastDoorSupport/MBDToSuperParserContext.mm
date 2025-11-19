@interface MBDToSuperParserContext
+ (id)fileTransferInfoWithName:(id)a3 partNumber:(unint64_t)a4 attachments:(id)a5 imageInfo:(id)a6;
- (NSAttributedString)body;
- (void)_clearIvars;
- (void)_incrementMessagePartNumber;
- (void)_initIvars;
- (void)_popValueFromStack:(id)a3 attributeName:(id)a4;
- (void)_pushValue:(id)a3 ontoStack:(id)a4 attributeName:(id)a5;
- (void)appendFailedGenmojiAttributes;
- (void)appendFileTransferAttribute:(id)a3 attachments:(id)a4 imageInfo:(id)a5;
- (void)appendString:(id)a3;
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

- (void)_pushValue:(id)a3 ontoStack:(id)a4 attributeName:(id)a5
{
  if (a3)
  {
    v8 = a5;
    v9 = a3;
    [a4 addObject:v9];
    [(NSMutableDictionary *)self->_currentAttributes setObject:v9 forKey:v8];
  }
}

- (void)_popValueFromStack:(id)a3 attributeName:(id)a4
{
  v6 = a4;
  [a3 removeLastObject];
  [(NSMutableDictionary *)self->_currentAttributes removeObjectForKey:v6];
}

- (void)_incrementMessagePartNumber
{
  ++self->_messagePartNumber;
  currentAttributes = self->_currentAttributes;
  v3 = [NSNumber numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)currentAttributes setObject:v3 forKey:MBDIMMessagePartAttributeName];
}

- (void)appendString:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [[NSAttributedString alloc] initWithString:v5 attributes:self->_currentAttributes];
    [(NSMutableAttributedString *)self->_body appendAttributedString:v4];
    self->_lastPartInsertedWasImage = 0;
  }
}

+ (id)fileTransferInfoWithName:(id)a3 partNumber:(unint64_t)a4 attachments:(id)a5 imageInfo:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = a3;
  v11 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v12 = v11;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = &stru_10003EBC8;
  }

  [v11 setObject:v13 forKey:MBDIMFileTransferNameKey];

  if ([v8 count])
  {
    v14 = [v8 copy];
    [v12 setObject:v14 forKey:MBDIMFileTransferAttachmentsKey];
  }

  if ([v9 count])
  {
    v15 = [v9 copy];
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

- (void)appendFileTransferAttribute:(id)a3 attachments:(id)a4 imageInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v13 = [objc_opt_class() fileTransferInfoWithName:v8 partNumber:self->_messagePartNumber attachments:v9 imageInfo:v10];
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