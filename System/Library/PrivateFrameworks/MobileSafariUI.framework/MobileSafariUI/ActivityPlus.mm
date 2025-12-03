@interface ActivityPlus
- (ActivityPlus)initWithTitle:(id)title image:(id)image type:(id)type handler:(id)handler;
- (void)performActivity;
@end

@implementation ActivityPlus

- (ActivityPlus)initWithTitle:(id)title image:(id)image type:(id)type handler:(id)handler
{
  titleCopy = title;
  imageCopy = image;
  typeCopy = type;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = ActivityPlus;
  v14 = [(UIActivity *)&v21 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    activityTitle = v14->_activityTitle;
    v14->_activityTitle = v15;

    objc_storeStrong(&v14->_activityImage, image);
    objc_storeStrong(&v14->_activityType, type);
    v17 = _Block_copy(handlerCopy);
    actionHandler = v14->_actionHandler;
    v14->_actionHandler = v17;

    v19 = v14;
  }

  return v14;
}

- (void)performActivity
{
  v4.receiver = self;
  v4.super_class = ActivityPlus;
  [(UIActivity *)&v4 performActivity];
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2]();
  }
}

@end