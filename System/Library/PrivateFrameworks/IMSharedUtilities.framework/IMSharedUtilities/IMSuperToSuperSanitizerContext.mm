@interface IMSuperToSuperSanitizerContext
- (IMSuperToSuperSanitizerContext)initWithAttributedString:(id)string extractAttachments:(BOOL)attachments;
- (void)dealloc;
- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range characters:(id)characters;
- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range fileTransferGUID:(id)d filename:(id)filename bookmark:(id)bookmark width:(id)width height:(id)self0 isAnimoji:(id)self1;
- (void)parserDidEnd:(id)end;
- (void)parserDidStart:(id)start bodyAttributes:(id)attributes;
@end

@implementation IMSuperToSuperSanitizerContext

- (IMSuperToSuperSanitizerContext)initWithAttributedString:(id)string extractAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v8.receiver = self;
  v8.super_class = IMSuperToSuperSanitizerContext;
  v5 = [(IMFromSuperParserContext *)&v8 initWithAttributedString:string];
  if (v5)
  {
    if (attachmentsCopy)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v6 = 0;
    }

    v5->_attachments = v6;
    v5->_extractAttachments = attachmentsCopy;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMSuperToSuperSanitizerContext;
  [(IMFromSuperParserContext *)&v3 dealloc];
}

- (void)parserDidStart:(id)start bodyAttributes:(id)attributes
{
  v12.receiver = self;
  v12.super_class = IMSuperToSuperSanitizerContext;
  self->_content = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:{-[NSAttributedString string](-[IMAttributedStringParserContext inString](&v12, sel_inString), "string")}];
  self->_offset = 0;
  v6 = [attributes objectForKey:*MEMORY[0x1E69A5FC8]];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = 0;
  if (isKindOfClass)
  {
    v8 = v6;
  }

  self->_backgroundColor = v8;
  v9 = [attributes objectForKey:*MEMORY[0x1E69A5FD0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self->_foregroundColor = v10;
  v11 = [attributes objectForKey:*MEMORY[0x1E69A5F10]];
  self->_hadBaseWritingDirectionAttribute = v11 != 0;
  self->_baseWritingDirection = [v11 integerValue];
}

- (void)parserDidEnd:(id)end
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [(NSMutableAttributedString *)self->_content addAttribute:*MEMORY[0x1E69A5FC8] value:backgroundColor range:0, [(NSMutableAttributedString *)self->_content length]];
  }

  if (self->_hadBaseWritingDirectionAttribute)
  {
    content = self->_content;
    v6 = *MEMORY[0x1E69A5F10];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_baseWritingDirection];
    v8 = [(NSMutableAttributedString *)self->_content length];

    [(NSMutableAttributedString *)content addAttribute:v6 value:v7 range:0, v8];
  }
}

- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range characters:(id)characters
{
  length = range.length;
  location = range.location;
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:12];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = sub_1A86D0E30;
  v19 = &unk_1E7829CD8;
  attributesCopy = attributes;
  v21 = v12;
  v13 = *MEMORY[0x1E69A5F78];
  v14 = [attributes objectForKey:*MEMORY[0x1E69A5F78]];
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v14 forKey:v13];
  }

  (v18)(v17, *MEMORY[0x1E69A5F80], v10);
  (v18)(v17, *MEMORY[0x1E69A5FA8], v10);
  (v18)(v17, *MEMORY[0x1E69A5F18], v10);
  (v18)(v17, *MEMORY[0x1E69A6058], v10);
  (v18)(v17, *MEMORY[0x1E69A6050], v10);
  (v18)(v17, *MEMORY[0x1E69A5FB0], v11);
  (v18)(v17, *MEMORY[0x1E69A6030], v10);
  v15 = *MEMORY[0x1E69A5F88];
  (v18)(v17, *MEMORY[0x1E69A5F88], v9);
  (v18)(v17, *MEMORY[0x1E69A5F08], v9);
  (v18)(v17, *MEMORY[0x1E69A5FC8], v9);
  (v18)(v17, *MEMORY[0x1E69A5F10], v10);
  (v18)(v17, *MEMORY[0x1E69A5F28], v9);
  (v18)(v17, *MEMORY[0x1E69A5F30], v10);
  if (![attributes objectForKey:v15] && -[NSString length](self->_foregroundColor, "length"))
  {
    [v12 setObject:self->_foregroundColor forKey:v15];
  }

  [(NSMutableAttributedString *)self->_content setAttributes:v12 range:location - self->_offset, length];
}

- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range fileTransferGUID:(id)d filename:(id)filename bookmark:(id)bookmark width:(id)width height:(id)self0 isAnimoji:(id)self1
{
  if (self->_extractAttachments)
  {
    length = range.length;
    location = range.location;
    [(NSMutableArray *)self->_attachments addObject:attributes];
    if (location < [(NSMutableAttributedString *)self->_content length])
    {
      [(NSMutableAttributedString *)self->_content deleteCharactersInRange:location, length];
    }

    v14 = [(NSMutableAttributedString *)self->_content length];
    v15 = self->_offset + length;
    if (v14 - 1 < v15)
    {
      v15 = v14 - 1;
    }

    self->_offset = v15;
  }
}

@end