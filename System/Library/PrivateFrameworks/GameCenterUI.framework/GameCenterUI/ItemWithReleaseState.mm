@interface ItemWithReleaseState
+ (id)titleTextWithTitle:(id)a3 accessibilityDescription:(id)a4 systemSymbolName:(id)a5 tooltipText:(id)a6 paragraphStyle:(id)a7;
@end

@implementation ItemWithReleaseState

+ (id)titleTextWithTitle:(id)a3 accessibilityDescription:(id)a4 systemSymbolName:(id)a5 tooltipText:(id)a6 paragraphStyle:(id)a7
{
  v9 = sub_24E347CF8();
  v11 = v10;
  v12 = sub_24E347CF8();
  v14 = v13;
  v15 = sub_24E347CF8();
  v17 = v16;
  if (a6)
  {
    v18 = sub_24E347CF8();
    a6 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = a7;
  v21 = static ItemWithReleaseState.titleText(title:accessibilityDescription:systemSymbolName:tooltipText:paragraphStyle:)(v9, v11, v12, v14, v15, v17, v18, a6, a7);

  return v21;
}

@end