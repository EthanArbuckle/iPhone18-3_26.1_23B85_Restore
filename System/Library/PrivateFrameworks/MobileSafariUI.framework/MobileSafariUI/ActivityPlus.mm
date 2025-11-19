@interface ActivityPlus
- (ActivityPlus)initWithTitle:(id)a3 image:(id)a4 type:(id)a5 handler:(id)a6;
- (void)performActivity;
@end

@implementation ActivityPlus

- (ActivityPlus)initWithTitle:(id)a3 image:(id)a4 type:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = ActivityPlus;
  v14 = [(UIActivity *)&v21 init];
  if (v14)
  {
    v15 = [v10 copy];
    activityTitle = v14->_activityTitle;
    v14->_activityTitle = v15;

    objc_storeStrong(&v14->_activityImage, a4);
    objc_storeStrong(&v14->_activityType, a5);
    v17 = _Block_copy(v13);
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