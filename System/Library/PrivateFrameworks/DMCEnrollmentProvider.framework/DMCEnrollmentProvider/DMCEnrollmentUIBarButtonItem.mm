@interface DMCEnrollmentUIBarButtonItem
- (DMCEnrollmentUIBarButtonItem)initWithType:(unint64_t)type target:(id)target action:(SEL)action;
@end

@implementation DMCEnrollmentUIBarButtonItem

- (DMCEnrollmentUIBarButtonItem)initWithType:(unint64_t)type target:(id)target action:(SEL)action
{
  targetCopy = target;
  if (type <= 1)
  {
    if (!type)
    {

      self = 0;
      goto LABEL_17;
    }

    if (type == 1)
    {
      selfCopy2 = self;
      v10 = 1;
LABEL_9:
      self = [(DMCEnrollmentUIBarButtonItem *)selfCopy2 initWithBarButtonSystemItem:v10 target:targetCopy action:action];
      if (!self)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    switch(type)
    {
      case 2uLL:
        v11 = DMCLocalizedString();
        self = [(DMCEnrollmentUIBarButtonItem *)self initWithTitle:v11 style:2 target:targetCopy action:action];

        break;
      case 3uLL:
        v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
        [v12 startAnimating];
        self = [(DMCEnrollmentUIBarButtonItem *)self initWithCustomView:v12];

        if (!self)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      case 4uLL:
        selfCopy2 = self;
        v10 = 0;
        goto LABEL_9;
    }
  }

  if (self)
  {
LABEL_13:
    self->_buttonType = type;
  }

LABEL_17:

  return self;
}

@end