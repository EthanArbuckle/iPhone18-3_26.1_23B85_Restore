@interface ICRIconLayer
- ($1AB5FA073B851C12C2339EC22442E995)lightDirection;
- ($F24F406B2B787EFB06265DBA3D28CBD5)lightAngles;
- (BOOL)displayIcon:(id)a3 error:(id *)a4;
- (ICRIconLayer)initWithData:(id)a3 error:(id *)a4;
- (ICRIconLayer)initWithDeviceClass:(int64_t)a3 appearance:(unint64_t)a4 renderingMode:(id)a5;
- (ICRIconLayer)initWithFinalizedIcon:(id)a3;
- (ICRIconLayer)initWithIcon:(id)a3 deviceClass:(int64_t)a4 appearance:(unint64_t)a5 renderingMode:(id)a6;
- (double)lightAngle;
- (unint64_t)iconAppearance;
- (void)layoutSublayers;
- (void)setDrawMitigatedVersion:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setIconAppearance:(unint64_t)a3;
- (void)setLightAngle:(double)a3;
- (void)setLightAngles:(id)a3;
- (void)setLightDirection:(id)a3;
- (void)setLightIntensity:(double)a3;
- (void)setTintColor:(CGColor *)a3;
@end

@implementation ICRIconLayer

- (ICRIconLayer)initWithData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1B1619BD8();
  v7 = v6;

  return ICRIconLayer.init(data:)(v5, v7);
}

- (void)layoutSublayers
{
  v2 = self;
  ICRIconLayer.layoutSublayers()();
}

- (void)setLightDirection:(id)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = self;
  ICRIconLayer.lightDirection.setter(var0, var1, var2);
}

- (void)setLightIntensity:(double)a3
{
  v4 = self;
  ICRIconLayer.lightIntensity.setter(a3);
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  v6 = self;
  ICRIconLayer.icon.setter(a3);
}

- (unint64_t)iconAppearance
{
  v3 = OBJC_IVAR___ICRIconLayer_iconAppearance;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIconAppearance:(unint64_t)a3
{
  v5 = OBJC_IVAR___ICRIconLayer_iconAppearance;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)lightAngle
{
  v2 = (*(&self->super.super.isa + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig);
  v13[0] = *v2;
  v3 = v2[4];
  v5 = v2[1];
  v4 = v2[2];
  v13[3] = v2[3];
  v13[4] = v3;
  v13[1] = v5;
  v13[2] = v4;
  v11 = v2[3];
  v12 = v2[4];
  v9 = v2[1];
  v10 = v2[2];
  v8 = *v2;
  sub_1B15F354C(v13, v14);
  v6 = GlobalConfiguration.lightAngle.getter();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;
  v14[0] = v8;
  v14[1] = v9;
  sub_1B15FA510(v14);
  return v6;
}

- (void)setLightAngle:(double)a3
{
  v4 = self;
  ICRIconLayer.lightAngle.setter(a3);
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)lightAngles
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig;
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = asin(*(v2 + 3));
  v6 = atan2(v3, v4);
  v7 = v5;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

- (void)setLightAngles:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = self;
  ICRIconLayer.lightAngles.setter(var0, var1);
}

- ($1AB5FA073B851C12C2339EC22442E995)lightDirection
{
  v2 = (*(&self->super.super.isa + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)setDrawMitigatedVersion:(BOOL)a3
{
  v4 = self;
  ICRIconLayer.drawMitigatedVersion.setter(a3);
}

- (ICRIconLayer)initWithIcon:(id)a3 deviceClass:(int64_t)a4 appearance:(unint64_t)a5 renderingMode:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(ICRIconLayer *)self initWithDeviceClass:a4 appearance:a5 renderingMode:v11];
  [(ICRIconLayer *)v12 setIcon:v10];

  return v12;
}

- (ICRIconLayer)initWithDeviceClass:(int64_t)a3 appearance:(unint64_t)a4 renderingMode:(id)a5
{
  v7 = a5;
  v8 = sub_1B16069CC(a3, a4, v7);

  return v8;
}

- (ICRIconLayer)initWithFinalizedIcon:(id)a3
{
  v3 = a3;
  v4 = sub_1B1606B20(v3);

  return v4;
}

- (BOOL)displayIcon:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  ICRIconLayer.display(_:)();

  return 1;
}

- (void)setTintColor:(CGColor *)a3
{
  v4 = a3;
  v5 = self;
  ICRIconLayer.setTintColor(_:)(v4);
}

@end