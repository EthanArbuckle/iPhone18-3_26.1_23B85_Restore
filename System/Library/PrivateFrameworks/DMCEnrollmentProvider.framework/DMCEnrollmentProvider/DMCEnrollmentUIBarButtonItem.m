@interface DMCEnrollmentUIBarButtonItem
- (DMCEnrollmentUIBarButtonItem)initWithType:(unint64_t)a3 target:(id)a4 action:(SEL)a5;
@end

@implementation DMCEnrollmentUIBarButtonItem

- (DMCEnrollmentUIBarButtonItem)initWithType:(unint64_t)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  if (a3 <= 1)
  {
    if (!a3)
    {

      self = 0;
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      v9 = self;
      v10 = 1;
LABEL_9:
      self = [(DMCEnrollmentUIBarButtonItem *)v9 initWithBarButtonSystemItem:v10 target:v8 action:a5];
      if (!self)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v11 = DMCLocalizedString();
        self = [(DMCEnrollmentUIBarButtonItem *)self initWithTitle:v11 style:2 target:v8 action:a5];

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
        v9 = self;
        v10 = 0;
        goto LABEL_9;
    }
  }

  if (self)
  {
LABEL_13:
    self->_buttonType = a3;
  }

LABEL_17:

  return self;
}

@end