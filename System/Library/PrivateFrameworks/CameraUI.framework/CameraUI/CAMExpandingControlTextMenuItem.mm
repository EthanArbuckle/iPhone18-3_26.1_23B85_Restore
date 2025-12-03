@interface CAMExpandingControlTextMenuItem
+ (id)menuItemWithState:(id)state titleText:(id)text subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)configuration;
- (BOOL)isEqualToItem:(id)item;
@end

@implementation CAMExpandingControlTextMenuItem

+ (id)menuItemWithState:(id)state titleText:(id)text subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)configuration
{
  textCopy = text;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___CAMExpandingControlTextMenuItem;
  v13 = objc_msgSendSuper2(&v16, sel__menuItemWithState_subtitle_selectedSubtitle_configuration_, state, subtitle, selectedSubtitle, configuration);
  v14 = v13[5];
  v13[5] = textCopy;

  return v13;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CAMExpandingControlTextMenuItem;
  if ([(CAMExpandingControlMenuItem *)&v9 isEqualToItem:itemCopy])
  {
    titleText = [(CAMExpandingControlTextMenuItem *)self titleText];
    titleText2 = [itemCopy titleText];
    v7 = [titleText isEqualToString:titleText2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end