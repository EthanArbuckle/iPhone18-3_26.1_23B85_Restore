@interface OIXMLElement
+ (OIXMLElement)elementWithType:(unsigned __int8)a3;
+ (OIXMLElement)elementWithType:(unsigned __int8)a3 stringValue:(id)a4;
- (OIXMLElement)initWithType:(unsigned __int8)a3;
- (OIXMLElement)initWithType:(unsigned __int8)a3 stringValue:(id)a4;
- (id)closingTagString;
- (id)contentString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)openingTagString;
- (id)stringValue;
- (int64_t)attributeCount;
- (int64_t)childrenCount;
- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4;
- (void)addAttribute:(id)a3;
- (void)addChild:(id)a3;
- (void)insertChild:(id)a3 atIndex:(unint64_t)a4;
- (void)setStringValue:(id)a3;
@end

@implementation OIXMLElement

- (id)openingTagString
{
  v3 = [MEMORY[0x277CCAB68] string];
  chars = 60;
  CFStringAppendCharacters(v3, &chars, 1);
  v4 = [(OIXMLElement *)self name];
  CFStringAppend(v3, v4);

  if ([(OIXMLElement *)self attributeCount]== 1)
  {
    CFStringAppend(v3, @" ");
    [self->_attributes _appendXMLStringToString:v3 level:0];
  }

  else
  {
    v5 = [self->_attributes count];
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [self->_attributes objectAtIndex:i];
        CFStringAppend(v3, @" ");
        [v8 _appendXMLStringToString:v3 level:0];
      }
    }
  }

  v10 = 62;
  CFStringAppendCharacters(v3, &v10, 1);

  return v3;
}

- (int64_t)attributeCount
{
  result = self->_attributes;
  if (result)
  {
    if (self->_hasMultipleAttributes)
    {
      return [result count];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)childrenCount
{
  result = self->_children;
  if (result)
  {
    if (self->_hasMultipleChildren)
    {
      return [result count];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)closingTagString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(OIXMLElement *)self name];
  v4 = [v2 stringWithFormat:@"</%@>", v3];

  return v4;
}

- (OIXMLElement)initWithType:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = OIXMLElement;
  result = [(OIXMLElement *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (OIXMLElement)initWithType:(unsigned __int8)a3 stringValue:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(OIXMLElement *)self initWithType:v4];
  v8 = v7;
  if (v7)
  {
    [(OIXMLElement *)v7 setStringValue:v6];
  }

  return v8;
}

+ (OIXMLElement)elementWithType:(unsigned __int8)a3
{
  v3 = [[OIXMLElement alloc] initWithType:a3 stringValue:0];

  return v3;
}

+ (OIXMLElement)elementWithType:(unsigned __int8)a3 stringValue:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [[OIXMLElement alloc] initWithType:v4 stringValue:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [[OIXMLElement alloc] initWithType:self->_type];
  v6 = [self->_attributes copyWithZone:a3];
  attributes = v5->_attributes;
  v5->_attributes = v6;

  v8 = [self->_children copyWithZone:a3];
  children = v5->_children;
  v5->_children = v8;

  v5->_hasMultipleAttributes = self->_hasMultipleAttributes;
  v5->_hasMultipleChildren = self->_hasMultipleChildren;
  return v5;
}

- (void)addAttribute:(id)a3
{
  v5 = a3;
  attributes = self->_attributes;
  v11 = v5;
  if (attributes)
  {
    if (self->_hasMultipleAttributes)
    {
      [attributes addObject:?];
    }

    else
    {
      v7 = MEMORY[0x277CBEB18];
      v8 = attributes;
      v9 = [[v7 alloc] initWithObjects:{v8, 0}];
      v10 = self->_attributes;
      self->_attributes = v9;

      [self->_attributes addObject:v11];
      self->_hasMultipleAttributes = 1;
    }
  }

  else
  {
    objc_storeStrong(&self->_attributes, a3);
  }
}

- (void)addChild:(id)a3
{
  v5 = a3;
  children = self->_children;
  v11 = v5;
  if (children)
  {
    if (self->_hasMultipleChildren)
    {
      [children addObject:?];
    }

    else
    {
      v7 = MEMORY[0x277CBEB18];
      v8 = children;
      v9 = [[v7 alloc] initWithObjects:{v8, 0}];
      v10 = self->_children;
      self->_children = v9;

      [self->_children addObject:v11];
      self->_hasMultipleChildren = 1;
    }
  }

  else
  {
    objc_storeStrong(&self->_children, a3);
  }
}

- (void)insertChild:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  children = self->_children;
  v13 = v7;
  if (children)
  {
    if (self->_hasMultipleChildren)
    {
      [children insertObject:? atIndex:?];
    }

    else
    {
      v9 = MEMORY[0x277CBEB18];
      v10 = children;
      v11 = [[v9 alloc] initWithObjects:{v10, 0}];
      v12 = self->_children;
      self->_children = v11;

      [self->_children insertObject:v13 atIndex:a4];
      self->_hasMultipleChildren = 1;
    }
  }

  else
  {
    objc_storeStrong(&self->_children, a3);
  }
}

- (void)setStringValue:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [[OIXMLTextNode alloc] initWithStringValue:v6];
    children = self->_children;
    if (children)
    {
      self->_children = 0;
    }

    [(OIXMLElement *)self addChild:v4];
  }

  else
  {
    v4 = self->_children;
    self->_children = 0;
  }
}

- (id)stringValue
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_286EE1130];
  children = self->_children;
  if (self->_hasMultipleChildren)
  {
    v5 = [children count];
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [self->_children objectAtIndex:i];
        v9 = [v8 stringValue];
        [v3 appendString:v9];
      }
    }
  }

  else if (children)
  {
    v10 = [children stringValue];
    [v3 appendString:v10];
  }

  return v3;
}

- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4
{
  v7 = [(OIXMLElement *)self name];
  if (v7)
  {
    chars = 60;
    CFStringAppendCharacters(a3, &chars, 1);
    CFStringAppend(a3, v7);
    if ([(OIXMLElement *)self attributeCount]== 1)
    {
      CFStringAppend(a3, @" ");
      [self->_attributes _appendXMLStringToString:a3 level:(a4 + 1)];
    }

    else
    {
      v8 = [self->_attributes count];
      if (v8 >= 1)
      {
        v9 = v8;
        v10 = 0;
        for (i = 0; i != v9; ++i)
        {
          v12 = [self->_attributes objectAtIndex:i];

          CFStringAppend(a3, @" ");
          [v12 _appendXMLStringToString:a3 level:(a4 + 1)];
          v10 = v12;
        }

LABEL_9:
        v13 = [(OIXMLElement *)self childrenCount];
        v18 = 62;
        CFStringAppendCharacters(a3, &v18, 1);
        if (v13 == 1)
        {
          [self->_children _appendXMLStringToString:a3 level:(a4 + 1)];
        }

        else if (v13 < 1)
        {
          if ([(OIXMLElement *)self isEmptyHTMLElement])
          {
LABEL_17:

            goto LABEL_18;
          }
        }

        else
        {
          v14 = 0;
          v15 = v12;
          do
          {
            v12 = [self->_children objectAtIndex:v14];

            [v12 _appendXMLStringToString:a3 level:(a4 + 1)];
            ++v14;
            v15 = v12;
          }

          while (v13 != v14);
        }

        *v17 = 3080252;
        CFStringAppendCharacters(a3, v17, 2);
        CFStringAppend(a3, v7);
        v16 = 62;
        CFStringAppendCharacters(a3, &v16, 1);
        goto LABEL_17;
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

LABEL_18:
}

- (id)contentString
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(OIXMLElement *)self childrenCount];
  children = self->_children;
  if (v4 == 1)
  {
    [children _appendXMLStringToString:v3 level:0];
  }

  else
  {
    v6 = [children count];
    if (v6 >= 1)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [self->_children objectAtIndex:i];
        [v9 _appendXMLStringToString:v3 level:0];
      }
    }
  }

  return v3;
}

@end