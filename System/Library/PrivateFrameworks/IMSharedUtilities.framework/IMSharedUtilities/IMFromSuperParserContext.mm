@interface IMFromSuperParserContext
- (IMFromSuperParserContext)initWithAttributedString:(id)a3;
- (void)dealloc;
- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5;
- (void)parserDidStart:(id)a3;
@end

@implementation IMFromSuperParserContext

- (IMFromSuperParserContext)initWithAttributedString:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMFromSuperParserContext;
  v3 = [(IMAttributedStringParserContext *)&v5 initWithAttributedString:a3];
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

- (void)parserDidStart:(id)a3
{
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v5 = [(IMAttributedStringParserContext *)self inString];
  if ([(NSAttributedString *)v5 length])
  {
    v6 = *MEMORY[0x1E69A5FC8];
    v7 = [(NSAttributedString *)v5 attribute:*MEMORY[0x1E69A5FC8] atIndex:0 effectiveRange:0];
    v8 = *MEMORY[0x1E69A5FD0];
    v9 = [(NSAttributedString *)v5 attribute:*MEMORY[0x1E69A5FD0] atIndex:0 effectiveRange:0];
    v10 = *MEMORY[0x1E69A5F10];
    v11 = [(NSAttributedString *)v5 attribute:*MEMORY[0x1E69A5F10] atIndex:0 effectiveRange:0];
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

  [(IMFromSuperParserContext *)self parserDidStart:a3 bodyAttributes:v12];
}

- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    v10 = [(IMAttributedStringParserContext *)self inString];
    v11 = [(NSString *)[(NSAttributedString *)v10 string] characterAtIndex:location];
    v12 = [a4 objectForKey:*MEMORY[0x1E69A5F68]];
    v13 = v12;
    if (v11 == 65532 || v12)
    {
      v20 = [a4 objectForKey:*MEMORY[0x1E69A5F70]];
      v14 = [a4 objectForKey:*MEMORY[0x1E69A5F60]];
      v15 = [a4 objectForKey:*MEMORY[0x1E69A5FA0]];
      v16 = [a4 objectForKey:*MEMORY[0x1E69A5F98]];
      v17 = [a4 objectForKey:*MEMORY[0x1E69A5EF8]];
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

      [(IMFromSuperParserContext *)self parser:a3 foundAttributes:a4 inRange:location fileTransferGUID:length filename:v13 bookmark:v20 width:v14 height:v15 isAnimoji:v16, v17];
    }

    else if (v11 == 65533)
    {
      if (!self->_foundBreadcrumbText && [a4 objectForKey:*MEMORY[0x1E69A5F28]])
      {
        self->_foundBreadcrumbText = 1;
        [objc_msgSend(a4 _numberForKey:{*MEMORY[0x1E69A5F30]), "intValue"}];

        MEMORY[0x1EEE66B58](self, sel_parser_foundBreadcrumbText_withOptions_);
      }
    }

    else
    {
      [(NSString *)[(NSAttributedString *)v10 string] substringWithRange:location, length];

      MEMORY[0x1EEE66B58](self, sel_parser_foundAttributes_inRange_characters_);
    }
  }
}

@end