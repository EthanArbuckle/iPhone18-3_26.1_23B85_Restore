@interface SFBackdropView
+ (Class)layerClass;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CABackdropLayer)backdropLayer;
- (SFBackdropView)initWithCoder:(id)a3;
- (SFBackdropView)initWithFrame:(CGRect)a3;
@end

@implementation SFBackdropView

- (SFBackdropView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SFBackdropView;
  return [(SFBackdropView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

+ (Class)layerClass
{
  sub_18B7B0AC0(0, &qword_1EA9DBB80);

  return swift_getObjCClassFromMetadata();
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v3 = self;
    sub_18BC20BD8();
    v4 = v3;
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
  v2 = [(SFBackdropView *)self layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();

  return v3;
}

- (SFBackdropView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFBackdropView;
  v3 = a3;
  v4 = [(SFBackdropView *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end