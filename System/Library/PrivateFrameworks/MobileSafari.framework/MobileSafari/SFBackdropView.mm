@interface SFBackdropView
+ (Class)layerClass;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CABackdropLayer)backdropLayer;
- (SFBackdropView)initWithCoder:(id)coder;
- (SFBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation SFBackdropView

- (SFBackdropView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SFBackdropView;
  return [(SFBackdropView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

+ (Class)layerClass
{
  sub_18B7B0AC0(0, &qword_1EA9DBB80);

  return swift_getObjCClassFromMetadata();
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    selfCopy = self;
    sub_18BC20BD8();
    v4 = selfCopy;
    if (sub_18BC20C78())
    {

      LOBYTE(self) = 1;
    }

    else
    {
      v5 = sub_18BC20B98();
      v8.receiver = v4;
      v8.super_class = SFBackdropView;
      v6 = [(SFBackdropView *)&v8 _shouldAnimatePropertyWithKey:v5];

      LOBYTE(self) = v6;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (CABackdropLayer)backdropLayer
{
  layer = [(SFBackdropView *)self layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();

  return v3;
}

- (SFBackdropView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SFBackdropView;
  coderCopy = coder;
  v4 = [(SFBackdropView *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end