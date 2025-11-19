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
  v3 = [[a1 alloc] tc_initWithXmlString:a3];

  return v3;
}

- (uint64_t)tc_xmlString
{
  v1 = a1;

  return [v1 UTF8String];
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

  v7 = a1;
  v8 = v7;
  if (String)
  {
    v9 = [v7 tc_initWithXmlString:String];

    if (v5)
    {
      free(String);
    }
  }

  else
  {
    v9 = [v7 init];
  }

  return v9;
}

- (uint64_t)tc_initWithContentOfXmlNode:()TCStringAdditions_XmlString
{
  Content = xmlNodeGetContent(cur);
  v5 = a1;
  v6 = v5;
  if (Content)
  {
    v7 = [v5 tc_initWithXmlString:Content];

    free(Content);
  }

  else
  {
    v7 = [v5 init];
  }

  return v7;
}

- (uint64_t)tc_initFromXmlNode:()TCStringAdditions_XmlString ns:attributeName:
{
  NsProp = xmlGetNsProp(node, name, nameSpace);
  if (NsProp)
  {
    v7 = a1;
    v8 = [v7 tc_initWithXmlString:NsProp];

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
  v9 = a1;
  v10 = [v9 tc_initFromXmlNode:a3 ns:objc_msgSend(v8 attributeName:{"uri"), a5}];

  if (!v10)
  {
    v11 = [v8 fallbackNamespace];

    if (v11)
    {
      v12 = [v8 fallbackNamespace];
      v10 = [0 tc_initFromXmlNode:a3 nsWithFallbackNs:v12 attributeName:a5];
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
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 length];
  v4 = MEMORY[0x277D85DE0];
  v5 = 0;
  if (v3)
  {
    while (1)
    {
      v6 = [a1 characterAtIndex:v5];
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
        [v2 addObject:&stru_286EE1130];
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

      v9 = [a1 characterAtIndex:?];
      v10 = v9 <= 0x7F ? *(v4 + 4 * v9 + 60) & 0x4000 : __maskrune(v9, 0x4000uLL);
      v7 = v8 + 1;
    }

    while (!v10);
    v11 = [a1 substringWithRange:{v5, v8 + 1}];
    [v2 addObject:v11];

    v5 += v8 + 2;
    if (v5 < v3)
    {
      do
      {
        v12 = [a1 characterAtIndex:v5];
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
  [v2 addObject:&stru_286EE1130];
LABEL_26:

  return v2;
}

- (uint64_t)tc_isEqualToXmlString:()TCStringAdditions_XmlString
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v3 = [a1 isEqualToString:v2];

  return v3;
}

- (id)tc_stringByRemovingInvalidXmlChars
{
  v2 = TCInvalidXmlCharacterSet();
  v3 = a1;
  if ([v3 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 componentsSeparatedByCharactersInSet:v2];
    v5 = [v4 componentsJoinedByString:&stru_286EE1130];

    v3 = v5;
  }

  v6 = [v3 tsu_stringByFixingBrokenSurrogatePairs];

  return v6;
}

@end