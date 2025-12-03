@interface ItemWithReleaseState
+ (id)titleTextWithTitle:(id)title accessibilityDescription:(id)description systemSymbolName:(id)name tooltipText:(id)text paragraphStyle:(id)style;
@end

@implementation ItemWithReleaseState

+ (id)titleTextWithTitle:(id)title accessibilityDescription:(id)description systemSymbolName:(id)name tooltipText:(id)text paragraphStyle:(id)style
{
  v9 = sub_24E347CF8();
  v11 = v10;
  v12 = sub_24E347CF8();
  v14 = v13;
  v15 = sub_24E347CF8();
  v17 = v16;
  if (text)
  {
    v18 = sub_24E347CF8();
    text = v19;
  }

  else
  {
    v18 = 0;
  }

  styleCopy = style;
  v21 = static ItemWithReleaseState.titleText(title:accessibilityDescription:systemSymbolName:tooltipText:paragraphStyle:)(v9, v11, v12, v14, v15, v17, v18, text, style);

  return v21;
}

@end