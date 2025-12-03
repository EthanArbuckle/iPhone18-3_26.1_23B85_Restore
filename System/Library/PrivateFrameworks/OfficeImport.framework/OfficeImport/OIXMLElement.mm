@interface OIXMLElement
+ (OIXMLElement)elementWithType:(unsigned __int8)type;
+ (OIXMLElement)elementWithType:(unsigned __int8)type stringValue:(id)value;
- (OIXMLElement)initWithType:(unsigned __int8)type;
- (OIXMLElement)initWithType:(unsigned __int8)type stringValue:(id)value;
- (id)closingTagString;
- (id)contentString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)openingTagString;
- (id)stringValue;
- (int64_t)attributeCount;
- (int64_t)childrenCount;
- (void)_appendXMLStringToString:(__CFString *)string level:(int)level;
- (void)addAttribute:(id)attribute;
- (void)addChild:(id)child;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)setStringValue:(id)value;
@end

@implementation OIXMLElement

- (id)openingTagString
{
  string = [MEMORY[0x277CCAB68] string];
  chars = 60;
  CFStringAppendCharacters(string, &chars, 1);
  name = [(OIXMLElement *)self name];
  CFStringAppend(string, name);

  if ([(OIXMLElement *)self attributeCount]== 1)
  {
    CFStringAppend(string, @" ");
    [self->_attributes _appendXMLStringToString:string level:0];
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
        CFStringAppend(string, @" ");
        [v8 _appendXMLStringToString:string level:0];
      }
    }
  }

  v10 = 62;
  CFStringAppendCharacters(string, &v10, 1);

  return string;
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
  name = [(OIXMLElement *)self name];
  v4 = [v2 stringWithFormat:@"</%@>", name];

  return v4;
}

- (OIXMLElement)initWithType:(unsigned __int8)type
{
  v5.receiver = self;
  v5.super_class = OIXMLElement;
  result = [(OIXMLElement *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (OIXMLElement)initWithType:(unsigned __int8)type stringValue:(id)value
{
  typeCopy = type;
  valueCopy = value;
  v7 = [(OIXMLElement *)self initWithType:typeCopy];
  v8 = v7;
  if (v7)
  {
    [(OIXMLElement *)v7 setStringValue:valueCopy];
  }

  return v8;
}

+ (OIXMLElement)elementWithType:(unsigned __int8)type
{
  v3 = [[OIXMLElement alloc] initWithType:type stringValue:0];

  return v3;
}

+ (OIXMLElement)elementWithType:(unsigned __int8)type stringValue:(id)value
{
  typeCopy = type;
  valueCopy = value;
  v6 = [[OIXMLElement alloc] initWithType:typeCopy stringValue:valueCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [[OIXMLElement alloc] initWithType:self->_type];
  v6 = [self->_attributes copyWithZone:zone];
  attributes = v5->_attributes;
  v5->_attributes = v6;

  v8 = [self->_children copyWithZone:zone];
  children = v5->_children;
  v5->_children = v8;

  v5->_hasMultipleAttributes = self->_hasMultipleAttributes;
  v5->_hasMultipleChildren = self->_hasMultipleChildren;
  return v5;
}

- (void)addAttribute:(id)attribute
{
  attributeCopy = attribute;
  attributes = self->_attributes;
  v11 = attributeCopy;
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
    objc_storeStrong(&self->_attributes, attribute);
  }
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  v11 = childCopy;
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
    objc_storeStrong(&self->_children, child);
  }
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  children = self->_children;
  v13 = childCopy;
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

      [self->_children insertObject:v13 atIndex:index];
      self->_hasMultipleChildren = 1;
    }
  }

  else
  {
    objc_storeStrong(&self->_children, child);
  }
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    v4 = [[OIXMLTextNode alloc] initWithStringValue:valueCopy];
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
        stringValue = [v8 stringValue];
        [v3 appendString:stringValue];
      }
    }
  }

  else if (children)
  {
    stringValue2 = [children stringValue];
    [v3 appendString:stringValue2];
  }

  return v3;
}

- (void)_appendXMLStringToString:(__CFString *)string level:(int)level
{
  name = [(OIXMLElement *)self name];
  if (name)
  {
    chars = 60;
    CFStringAppendCharacters(string, &chars, 1);
    CFStringAppend(string, name);
    if ([(OIXMLElement *)self attributeCount]== 1)
    {
      CFStringAppend(string, @" ");
      [self->_attributes _appendXMLStringToString:string level:(level + 1)];
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

          CFStringAppend(string, @" ");
          [v12 _appendXMLStringToString:string level:(level + 1)];
          v10 = v12;
        }

LABEL_9:
        childrenCount = [(OIXMLElement *)self childrenCount];
        v18 = 62;
        CFStringAppendCharacters(string, &v18, 1);
        if (childrenCount == 1)
        {
          [self->_children _appendXMLStringToString:string level:(level + 1)];
        }

        else if (childrenCount < 1)
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

            [v12 _appendXMLStringToString:string level:(level + 1)];
            ++v14;
            v15 = v12;
          }

          while (childrenCount != v14);
        }

        *v17 = 3080252;
        CFStringAppendCharacters(string, v17, 2);
        CFStringAppend(string, name);
        v16 = 62;
        CFStringAppendCharacters(string, &v16, 1);
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
  string = [MEMORY[0x277CCAB68] string];
  childrenCount = [(OIXMLElement *)self childrenCount];
  children = self->_children;
  if (childrenCount == 1)
  {
    [children _appendXMLStringToString:string level:0];
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
        [v9 _appendXMLStringToString:string level:0];
      }
    }
  }

  return string;
}

@end