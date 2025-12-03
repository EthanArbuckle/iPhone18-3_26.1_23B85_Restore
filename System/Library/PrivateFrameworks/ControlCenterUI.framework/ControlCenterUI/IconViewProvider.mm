@interface IconViewProvider
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (void)configureIconView:(id)view forIcon:(id)icon;
@end

@implementation IconViewProvider

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  dequeueReusableViewOfClass_ = [*self->iconViewMap dequeueReusableViewOfClass_];

  return dequeueReusableViewOfClass_;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;

  sub_21EA5BE14(viewCopy);
}

@end