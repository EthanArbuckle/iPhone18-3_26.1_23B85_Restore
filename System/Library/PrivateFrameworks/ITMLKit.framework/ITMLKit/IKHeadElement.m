@interface IKHeadElement
+ (BOOL)shouldParseChildDOMElement:(id)a3;
@end

@implementation IKHeadElement

+ (BOOL)shouldParseChildDOMElement:(id)a3
{
  v4 = a3;
  v5 = [v4 tagName];
  if ([v5 isEqualToString:@"style"])
  {
  }

  else
  {
    v6 = [v4 tagName];
    v7 = [v6 isEqualToString:@"script"];

    if ((v7 & 1) == 0)
    {
      v10.receiver = a1;
      v10.super_class = &OBJC_METACLASS___IKHeadElement;
      v8 = objc_msgSendSuper2(&v10, sel_shouldParseChildDOMElement_, v4);
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end