@interface IconViewProvider
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
@end

@implementation IconViewProvider

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  v3 = [*self->iconViewMap dequeueReusableViewOfClass_];

  return v3;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_21EA5BE14(v5);
}

@end