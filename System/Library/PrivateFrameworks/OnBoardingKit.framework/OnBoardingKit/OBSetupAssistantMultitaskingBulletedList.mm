@interface OBSetupAssistantMultitaskingBulletedList
- (double)bulletedListItemSpacing;
- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5;
@end

@implementation OBSetupAssistantMultitaskingBulletedList

- (double)bulletedListItemSpacing
{
  v3 = +[OBDevice currentDevice];
  v4 = [v3 templateType];

  if (v4 == 6)
  {
    v5 = +[OBDevice currentDevice];
    v6 = [v5 isMiniPad];

    result = 22.0;
    if (v6)
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

- (void)addItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[OBBulletedListItem alloc] initWithTitle:v10 description:v9 symbolName:v8 tintColor:0];

  [(OBBulletedListItem *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBBulletedList *)self addBulletedListItem:v11];
}

@end