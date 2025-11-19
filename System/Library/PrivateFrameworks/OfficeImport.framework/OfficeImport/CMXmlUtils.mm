@interface CMXmlUtils
+ (id)copyFilteredString:(id)a3;
+ (id)copyHeadElement;
+ (id)copyHeadElementForDeviceWidth:(int)a3;
+ (id)copyHeadElementWithTitle:(id)a3;
+ (id)copyHeadElementWithTitle:(id)a3 deviceWidth:(int)a4;
+ (id)copyXhtmlDocument;
+ (id)xhtmlStringWithXmlData:(id)a3;
+ (void)filterString:(id)a3;
@end

@implementation CMXmlUtils

+ (id)copyXhtmlDocument
{
  v2 = [OIXMLElement elementWithType:7];
  v3 = [[OIXMLDocument alloc] initWithRootElement:v2];
  [(OIXMLDocument *)v3 setVersion:@"1.0"];
  [(OIXMLDocument *)v3 setCharacterEncoding:@"UTF-8"];

  return v3;
}

+ (id)copyHeadElement
{
  v2 = [[OIXMLElement alloc] initWithType:6 stringValue:0];
  v3 = [OIXMLElement elementWithType:12];
  v4 = [OIXMLAttribute attributeWithName:@"charset" stringValue:@"utf-8"];
  [v3 addAttribute:v4];

  [(OIXMLElement *)v2 addChild:v3];
  return v2;
}

+ (id)copyFilteredString:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v4];
  [a1 filterString:v5];

  return v5;
}

+ (void)filterString:(id)a3
{
  v3 = a3;
  v9 = v3;
  do
  {
    v4 = [v9 replaceOccurrencesOfString:@"  " withString:@" &nbsp;" options:2 range:{0, objc_msgSend(v3, "length")}];
    v3 = v9;
  }

  while (v4);
  v5 = [v9 length];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [v9 characterAtIndex:v6];
      if (v7 > 13)
      {
        break;
      }

      v8 = v9;
      switch(v7)
      {
        case 11:
          goto LABEL_13;
        case 12:
          goto LABEL_17;
        case 13:
          goto LABEL_13;
      }

LABEL_18:
      if (++v6 >= v5)
      {
        goto LABEL_19;
      }
    }

    v8 = v9;
    if (v7 > 61606)
    {
      if (v7 == 61607 || v7 == 61623)
      {
        [v9 replaceCharactersInRange:v6 withString:{1, @"&bull;"}];
        v5 += 5;
      }

      goto LABEL_18;
    }

    if (v7 == 14)
    {
LABEL_17:
      [v8 replaceCharactersInRange:v6 withString:{1, @" "}];
      goto LABEL_18;
    }

    if (v7 != 2028)
    {
      goto LABEL_18;
    }

LABEL_13:
    [v8 replaceCharactersInRange:v6 withString:{1, @"<br/>"}];
    v5 += 4;
    goto LABEL_18;
  }

LABEL_19:
}

+ (id)xhtmlStringWithXmlData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithData:v3 encoding:4];
    ;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" &nbsp &nbsp;"];;
  v6 = [v4 length];
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = [v4 characterAtIndex:i];
      if (v8 > 2027)
      {
        if (v8 != 2028)
        {
          if (v8 == 61607 || v8 == 61623)
          {
            [v4 replaceCharactersInRange:i withString:{1, @"&bull;"}];
            v6 += 5;
          }

          continue;
        }
      }

      else if ((v8 - 10) >= 5)
      {
        if (v8 == 9)
        {
          [v4 replaceCharactersInRange:i withString:{1, v5}];
          v6 += 13;
        }

        continue;
      }

      [v4 replaceCharactersInRange:i withString:{1, @"<br/>"}];
      v6 += 4;
    }
  }

  return v4;
}

+ (id)copyHeadElementForDeviceWidth:(int)a3
{
  v3 = *&a3;
  v4 = [a1 copyHeadElement];
  v5 = [OIXMLElement elementWithType:12];
  v6 = [OIXMLAttribute attributeWithName:@"name" stringValue:@"viewport"];
  [v5 addAttribute:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"width=%d, maximum-scale=4.0", v3];
  v8 = [OIXMLAttribute attributeWithName:@"content" stringValue:v7];
  [v5 addAttribute:v8];

  [v4 addChild:v5];
  return v4;
}

+ (id)copyHeadElementWithTitle:(id)a3 deviceWidth:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 copyHeadElementForDeviceWidth:v4];
  if (v6)
  {
    v8 = [OIXMLElement elementWithType:20 stringValue:v6];
    [v7 addChild:v8];
  }

  return v7;
}

+ (id)copyHeadElementWithTitle:(id)a3
{
  v4 = a3;
  v5 = [a1 copyHeadElement];
  if (v4)
  {
    v6 = [OIXMLElement elementWithType:20 stringValue:v4];
    [v5 addChild:v6];
  }

  v7 = [OIXMLElement elementWithType:12];
  v8 = [OIXMLAttribute attributeWithName:@"name" stringValue:@"viewport"];
  [v7 addAttribute:v8];

  [v5 addChild:v7];
  return v5;
}

@end