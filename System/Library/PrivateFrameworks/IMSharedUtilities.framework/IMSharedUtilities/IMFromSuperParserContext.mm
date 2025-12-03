@interface IMFromSuperParserContext
- (IMFromSuperParserContext)initWithAttributedString:(id)string;
- (void)dealloc;
- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range;
- (void)parserDidStart:(id)start;
@end

@implementation IMFromSuperParserContext

- (IMFromSuperParserContext)initWithAttributedString:(id)string
{
  v5.receiver = self;
  v5.super_class = IMFromSuperParserContext;
  v3 = [(IMAttributedStringParserContext *)&v5 initWithAttributedString:string];
  if (v3)
  {
    v3->_inlinedFileTransferGUIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_standaloneFileTransferGUIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_foundBreadcrumbText = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMFromSuperParserContext;
  [(IMAttributedStringParserContext *)&v3 dealloc];
}

- (void)parserDidStart:(id)start
{
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  inString = [(IMAttributedStringParserContext *)self inString];
  if ([(NSAttributedString *)inString length])
  {
    v6 = *MEMORY[0x1E69A5FC8];
    v7 = [(NSAttributedString *)inString attribute:*MEMORY[0x1E69A5FC8] atIndex:0 effectiveRange:0];
    v8 = *MEMORY[0x1E69A5FD0];
    v9 = [(NSAttributedString *)inString attribute:*MEMORY[0x1E69A5FD0] atIndex:0 effectiveRange:0];
    v10 = *MEMORY[0x1E69A5F10];
    v11 = [(NSAttributedString *)inString attribute:*MEMORY[0x1E69A5F10] atIndex:0 effectiveRange:0];
    if (v7)
    {
      [v12 setObject:v7 forKey:v6];
    }

    if (v9)
    {
      [v12 setObject:v9 forKey:v8];
    }

    if (v11)
    {
      [v12 setObject:v11 forKey:v10];
    }
  }

  [(IMFromSuperParserContext *)self parserDidStart:start bodyAttributes:v12];
}

- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    inString = [(IMAttributedStringParserContext *)self inString];
    v11 = [(NSString *)[(NSAttributedString *)inString string] characterAtIndex:location];
    v12 = [attributes objectForKey:*MEMORY[0x1E69A5F68]];
    v13 = v12;
    if (v11 == 65532 || v12)
    {
      v20 = [attributes objectForKey:*MEMORY[0x1E69A5F70]];
      v14 = [attributes objectForKey:*MEMORY[0x1E69A5F60]];
      v15 = [attributes objectForKey:*MEMORY[0x1E69A5FA0]];
      v16 = [attributes objectForKey:*MEMORY[0x1E69A5F98]];
      v17 = [attributes objectForKey:*MEMORY[0x1E69A5EF8]];
      if (v13)
      {
        if (v16)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        v19 = &OBJC_IVAR___IMFromSuperParserContext__standaloneFileTransferGUIDs;
        if (!v18)
        {
          v19 = &OBJC_IVAR___IMFromSuperParserContext__inlinedFileTransferGUIDs;
        }

        [*(&self->super.super.isa + *v19) addObject:v13];
      }

      [(IMFromSuperParserContext *)self parser:parser foundAttributes:attributes inRange:location fileTransferGUID:length filename:v13 bookmark:v20 width:v14 height:v15 isAnimoji:v16, v17];
    }

    else if (v11 == 65533)
    {
      if (!self->_foundBreadcrumbText && [attributes objectForKey:*MEMORY[0x1E69A5F28]])
      {
        self->_foundBreadcrumbText = 1;
        [objc_msgSend(attributes _numberForKey:{*MEMORY[0x1E69A5F30]), "intValue"}];

        MEMORY[0x1EEE66B58](self, sel_parser_foundBreadcrumbText_withOptions_);
      }
    }

    else
    {
      [(NSString *)[(NSAttributedString *)inString string] substringWithRange:location, length];

      MEMORY[0x1EEE66B58](self, sel_parser_foundAttributes_inRange_characters_);
    }
  }
}

@end