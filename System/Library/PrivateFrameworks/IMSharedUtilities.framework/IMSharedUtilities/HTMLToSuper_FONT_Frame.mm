@interface HTMLToSuper_FONT_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation HTMLToSuper_FONT_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v20 = IMCopyNormalizedAttributes(a8, 1, 0);
  v10 = [v20 objectForKey:@"face"];
  v11 = [v20 objectForKey:@"absz"];
  v12 = [v20 objectForKey:@"size"];
  if (v11)
  {
    v13 = [v11 integerValue];
LABEL_3:
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
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
          v13 = 12;
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
    v13 = 14;
    goto LABEL_3;
  }

  if (v19 <= 2192)
  {
    if (v19 == 55)
    {
      v13 = 36;
      goto LABEL_3;
    }

    if (v19 != 2107)
    {
      if (v19 != 2150)
      {
        goto LABEL_4;
      }

LABEL_40:
      v13 = 18;
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
      v13 = 10;
      goto LABEL_3;
    }

LABEL_34:
    v13 = 24;
    goto LABEL_3;
  }

  if (v19 == 2295)
  {
    v13 = 6;
    goto LABEL_3;
  }

  if (v19 == 2250)
  {
LABEL_37:
    v13 = 8;
    goto LABEL_3;
  }

LABEL_4:
  if (v10)
  {
    [a4 pushFontFamily:v10];
    self->_shouldPopFontName = 1;
  }

  if (v14)
  {
    [a4 pushFontSize:v14];
    self->_shouldPopFontSize = 1;
  }
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  if (self->_shouldPopFontName)
  {
    [a4 popFontFamily];
  }

  if (self->_shouldPopFontSize)
  {

    MEMORY[0x1EEE66B58](a4, sel_popFontSize);
  }
}

@end