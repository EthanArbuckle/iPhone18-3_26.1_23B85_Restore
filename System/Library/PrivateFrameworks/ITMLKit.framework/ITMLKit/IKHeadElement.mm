@interface IKHeadElement
+ (BOOL)shouldParseChildDOMElement:(id)element;
@end

@implementation IKHeadElement

+ (BOOL)shouldParseChildDOMElement:(id)element
{
  elementCopy = element;
  tagName = [elementCopy tagName];
  if ([tagName isEqualToString:@"style"])
  {
  }

  else
  {
    tagName2 = [elementCopy tagName];
    v7 = [tagName2 isEqualToString:@"script"];

    if ((v7 & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = &OBJC_METACLASS___IKHeadElement;
      v8 = objc_msgSendSuper2(&v10, sel_shouldParseChildDOMElement_, elementCopy);
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end