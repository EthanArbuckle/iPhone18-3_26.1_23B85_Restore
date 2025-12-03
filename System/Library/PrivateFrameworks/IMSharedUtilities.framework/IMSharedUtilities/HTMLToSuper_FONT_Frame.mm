@interface HTMLToSuper_FONT_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation HTMLToSuper_FONT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v20 = IMCopyNormalizedAttributes(attributes, 1, 0);
  v10 = [v20 objectForKey:@"face"];
  v11 = [v20 objectForKey:@"absz"];
  v12 = [v20 objectForKey:@"size"];
  if (v11)
  {
    integerValue = [v11 integerValue];
LABEL_3:
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    goto LABEL_4;
  }

  v15 = v12;
  v16 = [v12 length];
  if (v16 == 1)
  {
    v18 = [v15 characterAtIndex:0];
  }

  else
  {
    if (v16 == 2)
    {
      v17 = [v15 characterAtIndex:0];
      v18 = [v15 characterAtIndex:1];
      goto LABEL_17;
    }

    v18 = 0;
  }

  v17 = 1;
LABEL_17:
  v14 = 0;
  v19 = v17 * v18;
  if (v17 * v18 <= 54)
  {
    if (v19 <= 51)
    {
      switch(v19)
      {
        case '1':
          goto LABEL_37;
        case '2':
          goto LABEL_39;
        case '3':
          integerValue = 12;
          goto LABEL_3;
      }

      goto LABEL_4;
    }

    if (v19 != 52)
    {
      if (v19 != 53)
      {
        goto LABEL_34;
      }

      goto LABEL_40;
    }

LABEL_38:
    integerValue = 14;
    goto LABEL_3;
  }

  if (v19 <= 2192)
  {
    if (v19 == 55)
    {
      integerValue = 36;
      goto LABEL_3;
    }

    if (v19 != 2107)
    {
      if (v19 != 2150)
      {
        goto LABEL_4;
      }

LABEL_40:
      integerValue = 18;
      goto LABEL_3;
    }

    goto LABEL_38;
  }

  if (v19 <= 2249)
  {
    if (v19 != 2193)
    {
      if (v19 != 2205)
      {
        goto LABEL_4;
      }

LABEL_39:
      integerValue = 10;
      goto LABEL_3;
    }

LABEL_34:
    integerValue = 24;
    goto LABEL_3;
  }

  if (v19 == 2295)
  {
    integerValue = 6;
    goto LABEL_3;
  }

  if (v19 == 2250)
  {
LABEL_37:
    integerValue = 8;
    goto LABEL_3;
  }

LABEL_4:
  if (v10)
  {
    [context pushFontFamily:v10];
    self->_shouldPopFontName = 1;
  }

  if (v14)
  {
    [context pushFontSize:v14];
    self->_shouldPopFontSize = 1;
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if (self->_shouldPopFontName)
  {
    [context popFontFamily];
  }

  if (self->_shouldPopFontSize)
  {

    MEMORY[0x1EEE66B58](context, sel_popFontSize);
  }
}

@end