@interface ICRIconLayer
- ($1AB5FA073B851C12C2339EC22442E995)lightDirection;
- ($F24F406B2B787EFB06265DBA3D28CBD5)lightAngles;
- (BOOL)displayIcon:(id)icon error:(id *)error;
- (ICRIconLayer)initWithData:(id)data error:(id *)error;
- (ICRIconLayer)initWithDeviceClass:(int64_t)class appearance:(unint64_t)appearance renderingMode:(id)mode;
- (ICRIconLayer)initWithFinalizedIcon:(id)icon;
- (ICRIconLayer)initWithIcon:(id)icon deviceClass:(int64_t)class appearance:(unint64_t)appearance renderingMode:(id)mode;
- (double)lightAngle;
- (unint64_t)iconAppearance;
- (void)layoutSublayers;
- (void)setDrawMitigatedVersion:(BOOL)version;
- (void)setIcon:(id)icon;
- (void)setIconAppearance:(unint64_t)appearance;
- (void)setLightAngle:(double)angle;
- (void)setLightAngles:(id)angles;
- (void)setLightDirection:(id)direction;
- (void)setLightIntensity:(double)intensity;
- (void)setTintColor:(CGColor *)color;
@end

@implementation ICRIconLayer

- (ICRIconLayer)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = sub_1B1619BD8();
  v7 = v6;

  return ICRIconLayer.init(data:)(v5, v7);
}

- (void)layoutSublayers
{
  selfCopy = self;
  ICRIconLayer.layoutSublayers()();
}

- (void)setLightDirection:(id)direction
{
  var2 = direction.var2;
  var1 = direction.var1;
  var0 = direction.var0;
  selfCopy = self;
  ICRIconLayer.lightDirection.setter(var0, var1, var2);
}

- (void)setLightIntensity:(double)intensity
{
  selfCopy = self;
  ICRIconLayer.lightIntensity.setter(intensity);
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  ICRIconLayer.icon.setter(icon);
}

- (unint64_t)iconAppearance
{
  v3 = OBJC_IVAR___ICRIconLayer_iconAppearance;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIconAppearance:(unint64_t)appearance
{
  v5 = OBJC_IVAR___ICRIconLayer_iconAppearance;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = appearance;
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

- (void)setLightAngle:(double)angle
{
  selfCopy = self;
  ICRIconLayer.lightAngle.setter(angle);
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

- (void)setLightAngles:(id)angles
{
  var1 = angles.var1;
  var0 = angles.var0;
  selfCopy = self;
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

- (void)setDrawMitigatedVersion:(BOOL)version
{
  selfCopy = self;
  ICRIconLayer.drawMitigatedVersion.setter(version);
}

- (ICRIconLayer)initWithIcon:(id)icon deviceClass:(int64_t)class appearance:(unint64_t)appearance renderingMode:(id)mode
{
  iconCopy = icon;
  modeCopy = mode;
  v12 = [(ICRIconLayer *)self initWithDeviceClass:class appearance:appearance renderingMode:modeCopy];
  [(ICRIconLayer *)v12 setIcon:iconCopy];

  return v12;
}

- (ICRIconLayer)initWithDeviceClass:(int64_t)class appearance:(unint64_t)appearance renderingMode:(id)mode
{
  modeCopy = mode;
  v8 = sub_1B16069CC(class, appearance, modeCopy);

  return v8;
}

- (ICRIconLayer)initWithFinalizedIcon:(id)icon
{
  iconCopy = icon;
  v4 = sub_1B1606B20(iconCopy);

  return v4;
}

- (BOOL)displayIcon:(id)icon error:(id *)error
{
  iconCopy = icon;
  selfCopy = self;
  ICRIconLayer.display(_:)();

  return 1;
}

- (void)setTintColor:(CGColor *)color
{
  colorCopy = color;
  selfCopy = self;
  ICRIconLayer.setTintColor(_:)(colorCopy);
}

@end