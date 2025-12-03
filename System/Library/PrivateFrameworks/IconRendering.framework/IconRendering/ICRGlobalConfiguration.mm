@interface ICRGlobalConfiguration
- ($1AB5FA073B851C12C2339EC22442E995)lightDirection;
- ($F24F406B2B787EFB06265DBA3D28CBD5)lightAngles;
- (BOOL)effectsAreEnabled;
- (CUIEncapsulationShape)encapsulationShape;
- (ICRGlobalConfiguration)init;
- (NSNumber)chicletDropShadow;
- (NSNumber)relativeIconInset;
- (double)lightAngle;
- (double)lightIntensity;
- (void)setChicletDropShadow:(id)shadow;
- (void)setEffectsAreEnabled:(BOOL)enabled;
- (void)setEncapsulationShape:(id)shape;
- (void)setLightAngle:(double)angle;
- (void)setLightAngles:(id)angles;
- (void)setLightDirection:(id)direction;
- (void)setLightIntensity:(double)intensity;
- (void)setRelativeIconInset:(id)inset;
@end

@implementation ICRGlobalConfiguration

- (ICRGlobalConfiguration)init
{
  v2 = OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  if (qword_1EDB2FB50 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v3 = qword_1EDB2FB68;
  v4 = self + v2;
  v5 = xmmword_1EDB2FB58;
  *(v4 + 16) = 1;
  v4[34] = 0;
  *(v4 + 40) = xmmword_1B161E0A0;
  *(v4 + 28) = 513;
  *(v4 + 8) = 0;
  *(v4 + 9) = 0;
  *v4 = 0x3FF0000000000000;
  *(v4 + 8) = v5;
  *(v4 + 3) = v3;
  v8.receiver = self;
  v8.super_class = ICRGlobalConfiguration;
  return [(ICRGlobalConfiguration *)&v8 init];
}

- (double)lightAngle
{
  swift_beginAccess();
  selfCopy = self;
  v4 = GlobalConfiguration.lightAngle.getter();
  swift_endAccess();

  return v4;
}

- (void)setLightAngle:(double)angle
{
  v4 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  *(v4 + 8) = __sincos_stret(angle);
  *(v4 + 3) = 0;
}

- (double)lightIntensity
{
  v3 = OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLightIntensity:(double)intensity
{
  v5 = OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  *(&self->super.isa + v5) = intensity;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)lightAngles
{
  v2 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = asin(*(v2 + 3));
  v6 = atan2(v3, v4);
  swift_endAccess();
  v7 = v5;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)setLightAngles:(id)angles
{
  var1 = angles.var1;
  var0 = angles.var0;
  v5 = (self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration);
  swift_beginAccess();
  v6 = __sincos_stret(var1);
  v7 = __sincos_stret(var0);
  v5[1] = v6.__sinval * v7.__cosval;
  v5[2] = v6.__cosval * v7.__cosval;
  v5[3] = v7.__sinval;
}

- ($1AB5FA073B851C12C2339EC22442E995)lightDirection
{
  v2 = (self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration);
  swift_beginAccess();
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)setLightDirection:(id)direction
{
  var2 = direction.var2;
  var1 = direction.var1;
  var0 = direction.var0;
  v6 = (self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration);
  swift_beginAccess();
  v6[1] = var0;
  v6[2] = var1;
  v6[3] = var2;
}

- (BOOL)effectsAreEnabled
{
  v2 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  return v2[32];
}

- (void)setEffectsAreEnabled:(BOOL)enabled
{
  v4 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v4[32] = enabled;
}

- (NSNumber)relativeIconInset
{
  v2 = (self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration);
  swift_beginAccess();
  initWithDouble_ = 0;
  if ((v2[7] & 1) == 0)
  {
    initWithDouble_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  return initWithDouble_;
}

- (void)setRelativeIconInset:(id)inset
{
  selfCopy = self;
  if (inset)
  {
    [inset doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = inset == 0;
  v8 = selfCopy + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  *(v8 + 6) = v6;
  v8[56] = v7;
}

- (NSNumber)chicletDropShadow
{
  v2 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  initWithBool_ = 0;
  v4 = v2[57];
  if (v4 != 2)
  {
    initWithBool_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  return initWithBool_;
}

- (void)setChicletDropShadow:(id)shadow
{
  selfCopy = self;
  if (shadow)
  {
    bOOLValue = [shadow BOOLValue];
  }

  else
  {
    bOOLValue = 2;
  }

  v6 = selfCopy + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v6[57] = bOOLValue;
}

- (CUIEncapsulationShape)encapsulationShape
{
  v2 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v3 = *(v2 + 8);
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v4 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEncapsulationShape:(id)shape
{
  if (shape)
  {
    v5 = &off_1F285B780;
  }

  else
  {
    v5 = 0;
  }

  v6 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v6 + 8) = shape;
  *(v6 + 9) = v5;
  selfCopy = self;
  shapeCopy = shape;
}

@end