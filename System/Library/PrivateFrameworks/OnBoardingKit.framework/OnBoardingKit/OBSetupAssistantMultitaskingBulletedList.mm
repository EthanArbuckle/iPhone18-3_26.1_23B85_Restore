@interface OBSetupAssistantMultitaskingBulletedList
- (double)bulletedListItemSpacing;
- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name;
@end

@implementation OBSetupAssistantMultitaskingBulletedList

- (double)bulletedListItemSpacing
{
  v3 = +[OBDevice currentDevice];
  templateType = [v3 templateType];

  if (templateType == 6)
  {
    v5 = +[OBDevice currentDevice];
    isMiniPad = [v5 isMiniPad];

    result = 22.0;
    if (isMiniPad)
    {
      return 16.0;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBSetupAssistantMultitaskingBulletedList;
    [(OBBulletedList *)&v8 bulletedListItemSpacing];
  }

  return result;
}

- (void)addItemWithTitle:(id)title description:(id)description symbolName:(id)name
{
  nameCopy = name;
  descriptionCopy = description;
  titleCopy = title;
  v11 = [[OBBulletedListItem alloc] initWithTitle:titleCopy description:descriptionCopy symbolName:nameCopy tintColor:0];

  [(OBBulletedListItem *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v11];
}

@end