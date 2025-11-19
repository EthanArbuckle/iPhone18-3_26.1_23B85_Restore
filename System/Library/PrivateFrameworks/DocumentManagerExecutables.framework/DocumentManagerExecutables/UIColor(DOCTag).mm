@interface UIColor(DOCTag)
+ (id)_doc_interfaceColorForTag:()DOCTag withAlphaComponent:;
+ (id)_doc_underlyingColorForTagColor:()DOCTag;
@end

@implementation UIColor(DOCTag)

+ (id)_doc_interfaceColorForTag:()DOCTag withAlphaComponent:
{
  if (a4 <= 1)
  {
    a4 = 1;
  }

  v5 = [MEMORY[0x277D75348] _doc_underlyingColorForTagColor:a4];
  v6 = [v5 colorWithAlphaComponent:a1];

  if (v6 && UIAccessibilityIsInvertColorsEnabled())
  {
    v7 = [v6 _doc_invertedColor];

    v6 = v7;
  }

  return v6;
}

+ (id)_doc_underlyingColorForTagColor:()DOCTag
{
  if (_doc_underlyingColorForTagColor__onceToken != -1)
  {
    +[UIColor(DOCTag) _doc_underlyingColorForTagColor:];
  }

  if ([_doc_underlyingColorForTagColor__colors count] <= a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = [_doc_underlyingColorForTagColor__colors objectAtIndexedSubscript:v4];

  return v5;
}

@end