@interface WidgetGalleryManager.IconViewProvider
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (void)configureIconView:(id)view forIcon:(id)icon;
@end

@implementation WidgetGalleryManager.IconViewProvider

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  dequeueReusableViewOfClass_ = [*self->iconViewMap dequeueReusableViewOfClass_];

  return dequeueReusableViewOfClass_;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  [view setDelegate_];

  swift_unknownObjectRelease();
}

@end