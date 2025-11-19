@interface ControlsGalleryManager.IconViewProvider
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
@end

@implementation ControlsGalleryManager.IconViewProvider

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  v3 = [*self->iconViewMap dequeueReusableViewOfClass_];

  return v3;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  [a3 setDelegate_];

  swift_unknownObjectRelease();
}

@end