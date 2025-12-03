@interface DBWallpaperHostWindow
- (id)createAdditionalPresentationView;
@end

@implementation DBWallpaperHostWindow

- (id)createAdditionalPresentationView
{
  v3 = type metadata accessor for DBWallpaperAdditionalPresentationView();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v8.receiver = v4;
  v8.super_class = v3;
  selfCopy = self;
  v6 = [(DBWindow *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(DBWallpaperHostWindow *)v6 setBackgroundColor:0, v8.receiver, v8.super_class];

  return v6;
}

@end