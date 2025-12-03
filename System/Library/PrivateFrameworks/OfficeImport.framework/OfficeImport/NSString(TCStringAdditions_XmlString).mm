@interface NSString(TCStringAdditions_XmlString)
+ (id)tc_stringWithXmlString:()TCStringAdditions_XmlString;
- (id)tc_componentsSeparatedByWhitespace;
- (id)tc_stringByRemovingInvalidXmlChars;
- (uint64_t)tc_initFromXmlNode:()TCStringAdditions_XmlString ns:attributeName:;
- (uint64_t)tc_initFromXmlNode:()TCStringAdditions_XmlString nsWithFallbackNs:attributeName:;
- (uint64_t)tc_initWithContentOfXmlNode:()TCStringAdditions_XmlString;
- (uint64_t)tc_initWithValueOfXmlAttribute:()TCStringAdditions_XmlString;
- (uint64_t)tc_isEqualToXmlString:()TCStringAdditions_XmlString;
- (uint64_t)tc_xmlString;
@end

@implementation NSString(TCStringAdditions_XmlString)

+ (id)tc_stringWithXmlString:()TCStringAdditions_XmlString
{
  v3 = [[self alloc] tc_initWithXmlString:a3];

  return v3;
}

- (uint64_t)tc_xmlString
{
  selfCopy = self;

  return [selfCopy UTF8String];
}

- (uint64_t)tc_initWithValueOfXmlAttribute:()TCStringAdditions_XmlString
{
  v4 = *(a3 + 24);
  if (!v4 || *(v4 + 48) || (*(v4 + 8) - 3) > 1)
  {
    v5 = 1;
    String = xmlNodeListGetString(*(a3 + 64), v4, 1);
  }

  else
  {
    v5 = 0;
    String = *(v4 + 80);
  }

  selfCopy = self;
  v8 = selfCopy;
  if (String)
  {
    v9 = [selfCopy tc_initWithXmlString:String];

    if (v5)
    {
      free(String);
    }
  }

  else
  {
    v9 = [selfCopy init];
  }

  return v9;
}

- (uint64_t)tc_initWithContentOfXmlNode:()TCStringAdditions_XmlString
{
  Content = xmlNodeGetContent(cur);
  selfCopy = self;
  v6 = selfCopy;
  if (Content)
  {
    v7 = [selfCopy tc_initWithXmlString:Content];

    free(Content);
  }

  else
  {
    v7 = [selfCopy init];
  }

  return v7;
}

- (uint64_t)tc_initFromXmlNode:()TCStringAdditions_XmlString ns:attributeName:
{
  NsProp = xmlGetNsProp(node, name, nameSpace);
  if (NsProp)
  {
    selfCopy = self;
    v8 = [selfCopy tc_initWithXmlString:NsProp];

    free(NsProp);
  }

  else
  {

    return 0;
  }

  return v8;
}

- (uint64_t)tc_initFromXmlNode:()TCStringAdditions_XmlString nsWithFallbackNs:attributeName:
{
  v8 = a4;
  selfCopy = self;
  v10 = [selfCopy tc_initFromXmlNode:a3 ns:objc_msgSend(v8 attributeName:{"uri"), a5}];

  if (!v10)
  {
    fallbackNamespace = [v8 fallbackNamespace];

    if (fallbackNamespace)
    {
      fallbackNamespace2 = [v8 fallbackNamespace];
      v10 = [0 tc_initFromXmlNode:a3 nsWithFallbackNs:fallbackNamespace2 attributeName:a5];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)tc_componentsSeparatedByWhitespace
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = [self length];
  v4 = MEMORY[0x277D85DE0];
  v5 = 0;
  if (v3)
  {
    while (1)
    {
      v6 = [self characterAtIndex:v5];
      if (v6 <= 0x7F)
      {
        if ((*(v4 + 4 * v6 + 60) & 0x4000) == 0)
        {
LABEL_8:
          if (!v5)
          {
            break;
          }

          goto LABEL_9;
        }
      }

      else if (!__maskrune(v6, 0x4000uLL))
      {
        goto LABEL_8;
      }

      if (v3 == ++v5)
      {
        v5 = v3;
LABEL_9:
        [array addObject:&stru_286EE1130];
        break;
      }
    }
  }

LABEL_10:
  while (v5 < v3)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      if (v5 + v7 + 1 >= v3)
      {
        break;
      }

      v9 = [self characterAtIndex:?];
      v10 = v9 <= 0x7F ? *(v4 + 4 * v9 + 60) & 0x4000 : __maskrune(v9, 0x4000uLL);
      v7 = v8 + 1;
    }

    while (!v10);
    v11 = [self substringWithRange:{v5, v8 + 1}];
    [array addObject:v11];

    v5 += v8 + 2;
    if (v5 < v3)
    {
      do
      {
        v12 = [self characterAtIndex:v5];
        if (v12 <= 0x7F)
        {
          if ((*(v4 + 4 * v12 + 60) & 0x4000) == 0)
          {
            goto LABEL_10;
          }
        }

        else if (!__maskrune(v12, 0x4000uLL))
        {
          goto LABEL_10;
        }

        ++v5;
      }

      while (v5 < v3);
      goto LABEL_25;
    }
  }

  if (v5 != v3)
  {
    goto LABEL_26;
  }

LABEL_25:
  [array addObject:&stru_286EE1130];
LABEL_26:

  return array;
}

- (uint64_t)tc_isEqualToXmlString:()TCStringAdditions_XmlString
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v3 = [self isEqualToString:v2];

  return v3;
}

- (id)tc_stringByRemovingInvalidXmlChars
{
  v2 = TCInvalidXmlCharacterSet();
  selfCopy = self;
  if ([selfCopy rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [selfCopy componentsSeparatedByCharactersInSet:v2];
    v5 = [v4 componentsJoinedByString:&stru_286EE1130];

    selfCopy = v5;
  }

  tsu_stringByFixingBrokenSurrogatePairs = [selfCopy tsu_stringByFixingBrokenSurrogatePairs];

  return tsu_stringByFixingBrokenSurrogatePairs;
}

@end