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
- (void)setChicletDropShadow:(id)a3;
- (void)setEffectsAreEnabled:(BOOL)a3;
- (void)setEncapsulationShape:(id)a3;
- (void)setLightAngle:(double)a3;
- (void)setLightAngles:(id)a3;
- (void)setLightDirection:(id)a3;
- (void)setLightIntensity:(double)a3;
- (void)setRelativeIconInset:(id)a3;
@end

@implementation ICRGlobalConfiguration

- (ICRGlobalConfiguration)init
{
  v2 = OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  if (qword_1EDB2FB50 != -1)
  {
    v7 = self;
    swift_once();
    self = v7;
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
  v3 = self;
  v4 = GlobalConfiguration.lightAngle.getter();
  swift_endAccess();

  return v4;
}

- (void)setLightAngle:(double)a3
{
  v4 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  *(v4 + 8) = __sincos_stret(a3);
  *(v4 + 3) = 0;
}

- (double)lightIntensity
{
  v3 = OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLightIntensity:(double)a3
{
  v5 = OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (void)setLightAngles:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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

- (void)setLightDirection:(id)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
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

- (void)setEffectsAreEnabled:(BOOL)a3
{
  v4 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v4[32] = a3;
}

- (NSNumber)relativeIconInset
{
  v2 = (self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration);
  swift_beginAccess();
  v3 = 0;
  if ((v2[7] & 1) == 0)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  return v3;
}

- (void)setRelativeIconInset:(id)a3
{
  v4 = self;
  if (a3)
  {
    [a3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3 == 0;
  v8 = v4 + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  *(v8 + 6) = v6;
  v8[56] = v7;
}

- (NSNumber)chicletDropShadow
{
  v2 = self + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v3 = 0;
  v4 = v2[57];
  if (v4 != 2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  return v3;
}

- (void)setChicletDropShadow:(id)a3
{
  v4 = self;
  if (a3)
  {
    v5 = [a3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  v6 = v4 + OBJC_IVAR___ICRGlobalConfiguration_globalConfiguration;
  swift_beginAccess();
  v6[57] = v5;
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

- (void)setEncapsulationShape:(id)a3
{
  if (a3)
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
  *(v6 + 8) = a3;
  *(v6 + 9) = v5;
  v8 = self;
  v9 = a3;
}

@end