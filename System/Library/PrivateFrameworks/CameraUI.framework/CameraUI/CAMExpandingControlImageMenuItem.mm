@interface CAMExpandingControlImageMenuItem
+ (id)menuItemWithState:(id)state titleImage:(id)image subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)configuration;
- (BOOL)isEqualToItem:(id)item;
@end

@implementation CAMExpandingControlImageMenuItem

+ (id)menuItemWithState:(id)state titleImage:(id)image subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)configuration
{
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___CAMExpandingControlImageMenuItem;
  v13 = objc_msgSendSuper2(&v16, sel__menuItemWithState_subtitle_selectedSubtitle_configuration_, state, subtitle, selectedSubtitle, configuration);
  v14 = v13[5];
  v13[5] = imageCopy;

  return v13;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CAMExpandingControlImageMenuItem;
  if ([(CAMExpandingControlMenuItem *)&v9 isEqualToItem:itemCopy])
  {
    titleImage = [(CAMExpandingControlImageMenuItem *)self titleImage];
    titleImage2 = [itemCopy titleImage];
    v7 = [titleImage isEqual:titleImage2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end