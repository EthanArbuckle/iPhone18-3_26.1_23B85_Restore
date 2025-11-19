@interface DNDIntentExtension
- (id)handlerForIntent:(id)a3;
@end

@implementation DNDIntentExtension

- (id)handlerForIntent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = &off_100008148;
LABEL_6:
    v5 = objc_alloc_init(*v4);
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = off_100008138;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_100008140;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end