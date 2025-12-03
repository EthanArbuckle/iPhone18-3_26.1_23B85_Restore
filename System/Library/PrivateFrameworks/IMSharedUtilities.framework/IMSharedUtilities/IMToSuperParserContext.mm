@interface IMToSuperParserContext
- (NSAttributedString)body;
- (void)_clearIvars;
- (void)_incrementMessagePartNumber;
- (void)_initIvars;
- (void)_popValueFromStack:(id)stack attributeName:(id)name;
- (void)_pushValue:(id)value ontoStack:(id)stack attributeName:(id)name;
- (void)_updateFontFamily;
- (void)_updateFontSize;
- (void)appendBreadcrumbText:(id)text withOptions:(unsigned int)options;
- (void)appendChipList:(id)list;
- (void)appendInlineImageWithGUID:(id)d filename:(id)filename width:(int64_t)width height:(int64_t)height isAnimoji:(int64_t)animoji isAdaptiveImageGlyph:(BOOL)glyph;
- (void)appendRichCards:(id)cards transferGuids:(id)guids;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)decrementBoldCount;
- (void)decrementItalicCount;
- (void)decrementStrikethroughCount;
- (void)decrementUnderlineCount;
- (void)incrementBoldCount;
- (void)incrementItalicCount;
- (void)incrementStrikethroughCount;
- (void)incrementUnderlineCount;
- (void)popFontFamily;
- (void)popFontSize;
- (void)pushFontFamily:(id)family;
- (void)pushFontSize:(id)size;
- (void)reset;
@end

@implementation IMToSuperParserContext

- (void)dealloc
{
  [(IMToSuperParserContext *)self _clearIvars];
  v3.receiver = self;
  v3.super_class = IMToSuperParserContext;
  [(IMXMLParserContext *)&v3 dealloc];
}

- (void)reset
{
  [(IMToSuperParserContext *)self _clearIvars];
  [(IMToSuperParserContext *)self _initIvars];
  v3.receiver = self;
  v3.super_class = IMToSuperParserContext;
  [(IMXMLParserContext *)&v3 reset];
}

- (void)_initIvars
{
  self->_underlineCount = 0;
  self->_boldCount = 0;
  self->_italicCount = 0;
  self->_strikethroughCount = 0;
  self->_messagePartNumber = 0;
  self->_fontFamilyStack = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_fontSizeStack = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_linkStack = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_currentAttributes = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_messagePartNumber];
  [(NSMutableDictionary *)v3 setObject:v4 forKey:*MEMORY[0x1E69A5FD8]];
  self->_backgroundColor = 0;
  self->_foregroundColor = 0;
  self->_body = objc_alloc_init(MEMORY[0x1E696AD40]);
  self->_fileTransferGUIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_baseWritingDirection = -1;
}

- (void)_clearIvars
{
  fileTransferGUIDs = self->_fileTransferGUIDs;
}

- (void)_updateFontFamily
{
  lastObject = [(NSMutableArray *)self->_fontFamilyStack lastObject];
  v4 = [lastObject length];
  currentAttributes = self->_currentAttributes;
  v6 = *MEMORY[0x1E69A5F78];
  if (v4)
  {

    [(NSMutableDictionary *)currentAttributes setObject:lastObject forKey:v6];
  }

  else
  {
    v7 = *MEMORY[0x1E69A5F78];

    [(NSMutableDictionary *)currentAttributes removeObjectForKey:v7, v6];
  }
}

- (void)_updateFontSize
{
  lastObject = [(NSMutableArray *)self->_fontSizeStack lastObject];
  integerValue = [lastObject integerValue];
  currentAttributes = self->_currentAttributes;
  v6 = *MEMORY[0x1E69A5F80];
  if (integerValue < 1)
  {
    v7 = *MEMORY[0x1E69A5F80];

    [(NSMutableDictionary *)currentAttributes removeObjectForKey:v7, v6];
  }

  else
  {

    [(NSMutableDictionary *)currentAttributes setObject:lastObject forKey:v6];
  }
}

- (void)incrementBoldCount
{
  boldCount = self->_boldCount;
  self->_boldCount = boldCount + 1;
  if (!boldCount)
  {
    [(NSMutableDictionary *)self->_currentAttributes setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A5F18]];
  }
}

- (void)decrementBoldCount
{
  boldCount = self->_boldCount;
  if (boldCount)
  {
    v3 = boldCount - 1;
    self->_boldCount = v3;
    if (!v3)
    {
      [(NSMutableDictionary *)self->_currentAttributes removeObjectForKey:*MEMORY[0x1E69A5F18]];
    }
  }
}

- (void)incrementItalicCount
{
  italicCount = self->_italicCount;
  self->_italicCount = italicCount + 1;
  if (!italicCount)
  {
    [(NSMutableDictionary *)self->_currentAttributes setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A5FA8]];
  }
}

- (void)decrementItalicCount
{
  italicCount = self->_italicCount;
  if (italicCount)
  {
    v3 = italicCount - 1;
    self->_italicCount = v3;
    if (!v3)
    {
      [(NSMutableDictionary *)self->_currentAttributes removeObjectForKey:*MEMORY[0x1E69A5FA8]];
    }
  }
}

- (void)incrementUnderlineCount
{
  underlineCount = self->_underlineCount;
  self->_underlineCount = underlineCount + 1;
  if (!underlineCount)
  {
    [(NSMutableDictionary *)self->_currentAttributes setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A6058]];
  }
}

- (void)decrementUnderlineCount
{
  underlineCount = self->_underlineCount;
  if (underlineCount)
  {
    v3 = underlineCount - 1;
    self->_underlineCount = v3;
    if (!v3)
    {
      [(NSMutableDictionary *)self->_currentAttributes removeObjectForKey:*MEMORY[0x1E69A6058]];
    }
  }
}

- (void)incrementStrikethroughCount
{
  strikethroughCount = self->_strikethroughCount;
  self->_strikethroughCount = strikethroughCount + 1;
  if (!strikethroughCount)
  {
    [(NSMutableDictionary *)self->_currentAttributes setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A6050]];
  }
}

- (void)decrementStrikethroughCount
{
  strikethroughCount = self->_strikethroughCount;
  if (strikethroughCount)
  {
    v3 = strikethroughCount - 1;
    self->_strikethroughCount = v3;
    if (!v3)
    {
      [(NSMutableDictionary *)self->_currentAttributes removeObjectForKey:*MEMORY[0x1E69A6050]];
    }
  }
}

- (void)_pushValue:(id)value ontoStack:(id)stack attributeName:(id)name
{
  if (value)
  {
    [stack addObject:?];
    currentAttributes = self->_currentAttributes;

    [(NSMutableDictionary *)currentAttributes setObject:value forKey:name];
  }
}

- (void)_popValueFromStack:(id)stack attributeName:(id)name
{
  [stack removeLastObject];
  lastObject = [stack lastObject];
  currentAttributes = self->_currentAttributes;
  if (lastObject)
  {

    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  else
  {

    [(NSMutableDictionary *)currentAttributes removeObjectForKey:name];
  }
}

- (void)pushFontFamily:(id)family
{
  if (family)
  {
    [(NSMutableArray *)self->_fontFamilyStack addObject:?];

    MEMORY[0x1EEE66B58](self, sel__updateFontFamily);
  }
}

- (void)popFontFamily
{
  [(NSMutableArray *)self->_fontFamilyStack removeLastObject];

  MEMORY[0x1EEE66B58](self, sel__updateFontFamily);
}

- (void)pushFontSize:(id)size
{
  if (size)
  {
    [(NSMutableArray *)self->_fontSizeStack addObject:?];

    MEMORY[0x1EEE66B58](self, sel__updateFontSize);
  }
}

- (void)popFontSize
{
  [(NSMutableArray *)self->_fontSizeStack removeLastObject];

  MEMORY[0x1EEE66B58](self, sel__updateFontSize);
}

- (void)_incrementMessagePartNumber
{
  ++self->_messagePartNumber;
  currentAttributes = self->_currentAttributes;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v4 = *MEMORY[0x1E69A5FD8];

  [(NSMutableDictionary *)currentAttributes setObject:v3 forKey:v4];
}

- (void)appendString:(id)string
{
  if ([string length])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:string attributes:self->_currentAttributes];
    [(NSMutableAttributedString *)self->_body appendAttributedString:v5];
  }
}

- (void)appendInlineImageWithGUID:(id)d filename:(id)filename width:(int64_t)width height:(int64_t)height isAnimoji:(int64_t)animoji isAdaptiveImageGlyph:(BOOL)glyph
{
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
  if (!glyph)
  {
    [(IMToSuperParserContext *)self _incrementMessagePartNumber];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_messagePartNumber];
  [v15 setObject:v16 forKey:*MEMORY[0x1E69A5FD8]];
  [v15 setObject:d forKey:*MEMORY[0x1E69A5F68]];
  if (filename && width >= 1 && height >= 1)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:width];
    v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:height];
    [v15 setObject:v17 forKey:*MEMORY[0x1E69A5FA0]];
    [v15 setObject:v18 forKey:*MEMORY[0x1E69A5F98]];
    [v15 setObject:filename forKey:*MEMORY[0x1E69A5F70]];
  }

  if (animoji >= 1)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:animoji];
    [v15 setObject:v19 forKey:*MEMORY[0x1E69A5EF8]];
  }

  v22 = -4;
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v22 length:1];
  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20 attributes:v15];
  [(NSMutableAttributedString *)self->_body appendAttributedString:v21];
  [(NSMutableArray *)self->_fileTransferGUIDs addObject:d];
  if (!glyph)
  {
    [(IMToSuperParserContext *)self _incrementMessagePartNumber];
  }
}

- (void)appendBreadcrumbText:(id)text withOptions:(unsigned int)options
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69A5F30];
  v9[0] = *MEMORY[0x1E69A5F28];
  v9[1] = v5;
  v10[0] = text;
  v10[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&options];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [v7 initWithString:*MEMORY[0x1E69A5F20] attributes:v6];
  [(NSMutableAttributedString *)self->_body appendAttributedString:v8];
}

- (void)appendRichCards:(id)cards transferGuids:(id)guids
{
  v16 = *MEMORY[0x1E69E9840];
  if (cards)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\uFFFE" attributes:cards];
    [(NSMutableAttributedString *)self->_body appendAttributedString:v6];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [guids countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(guids);
          }

          [(NSMutableArray *)self->_fileTransferGUIDs addObject:*(*(&v11 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [guids countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)appendChipList:(id)list
{
  if (list)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\uFFFF" attributes:list];
    [(NSMutableAttributedString *)self->_body appendAttributedString:v4];
  }
}

- (NSAttributedString)body
{
  v3 = [(NSMutableAttributedString *)self->_body length];
  if (!self->_didAddBodyAttributes)
  {
    v4 = v3;
    if (v3)
    {
      backgroundColor = self->_backgroundColor;
      if (backgroundColor)
      {
        [(NSMutableAttributedString *)self->_body addAttribute:*MEMORY[0x1E69A5FC8] value:backgroundColor range:0, v3];
      }

      foregroundColor = self->_foregroundColor;
      if (foregroundColor)
      {
        [(NSMutableAttributedString *)self->_body addAttribute:*MEMORY[0x1E69A5FD0] value:foregroundColor range:0, v4];
      }

      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:self->_baseWritingDirection];
      [(NSMutableAttributedString *)self->_body addAttribute:*MEMORY[0x1E69A5F10] value:v7 range:0, v4];

      self->_didAddBodyAttributes = 1;
    }
  }

  return &self->_body->super;
}

@end