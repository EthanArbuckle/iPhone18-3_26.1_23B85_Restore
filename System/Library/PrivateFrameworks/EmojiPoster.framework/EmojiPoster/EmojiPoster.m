uint64_t sub_249FCAEB0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_249FCAF98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249FCAFB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_249FCAFE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249FCB004(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_249FCB040()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249FCB0C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCB150()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249FCB1A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249FCB1E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EmojiPoster35EmojiForegroundLayersViewController_emojiRenderer;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_249FCB2AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCB330()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCB368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_249FCB3C0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_type;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_249FCB41C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_249FCB478(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_249FCB4E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCB530()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249FCB578()
{
  v1 = sub_24A0213D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249FCB600()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCB638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E508);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249FCB6CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249FCB714()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249FCB79C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_249FCB7F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11EmojiPoster33BackgroundConfigurationController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_249FCB864()
{
  MEMORY[0x24C20D5E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCB89C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_249FCB8DC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_249FCB930()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCB968@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_249FCB9C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_249FCBA48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249FCBA80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCBACC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_249FCBB4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249FCBB84()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void JCColor::JCColor(JCColor *this)
{
  *this = 0;
  *(this + 1) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
}

void JCColor::JCColor(JCColor *this, CGColorRef color)
{
  *this = 0;
  *(this + 1) = 0;
  if (color)
  {
    *this = CGColorCreateCopy(color);
  }
}

{
  *this = 0;
  *(this + 1) = 0;
  if (color)
  {
    *this = CGColorCreateCopy(color);
  }
}

void JCColor::~JCColor(CGColor **this)
{
  v2 = *this;
  if (v2)
  {
    CGColorRelease(v2);
    *this = 0;
  }

  v3 = this[1];
  if (v3)
  {
    CGColorRelease(v3);
    this[1] = 0;
  }
}

void JCColor::JCColor(JCColor *this, CGColorRef *a2)
{
  *this = 0;
  *(this + 1) = 0;
  if (*a2)
  {
    *this = CGColorCreateCopy(*a2);
  }

  v4 = a2[1];
  if (v4)
  {
    *(this + 1) = CGColorCreateCopy(v4);
  }
}

void JCColor::JCColor(JCColor *this, CGColorRef *a2, CGFloat a3)
{
  *this = 0;
  *(this + 1) = 0;
  CGColorRelease(0);
  *this = 0;
  CGColorRelease(*(this + 1));
  *(this + 1) = 0;
  if (*a2)
  {
    *this = CGColorCreateCopyWithAlpha(*a2, a3);
  }

  v6 = a2[1];
  if (v6)
  {
    *(this + 1) = CGColorCreateCopyWithAlpha(v6, a3);
  }
}

CGColorRef *JCColor::operator=(CGColorRef *a1, CGColorRef *a2)
{
  if (a1 != a2)
  {
    CGColorRelease(*a1);
    *a1 = 0;
    CGColorRelease(a1[1]);
    a1[1] = 0;
    if (*a2)
    {
      *a1 = CGColorCreateCopy(*a2);
    }

    v4 = a2[1];
    if (v4)
    {
      a1[1] = CGColorCreateCopy(v4);
    }
  }

  return a1;
}

void JCColor::JCColor(JCColor *this, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  components[4] = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  components[0] = a2;
  components[1] = a3;
  components[2] = a4;
  components[3] = a5;
  DeviceRGB = _rgbSpace;
  if (!_rgbSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    _rgbSpace = DeviceRGB;
  }

  *this = CGColorCreate(DeviceRGB, components);
}

CGColorSpaceRef GetRGBColorSpace(void)
{
  result = _rgbSpace;
  if (!_rgbSpace)
  {
    result = CGColorSpaceCreateDeviceRGB();
    _rgbSpace = result;
  }

  return result;
}

void JCColor::JCColor(JCColor *this, CGFloat a2, CGFloat a3)
{
  components[2] = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  components[0] = a2;
  components[1] = a3;
  DeviceGray = _graySpace;
  if (!_graySpace)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    _graySpace = DeviceGray;
  }

  *this = CGColorCreate(DeviceGray, components);
}

CGColorSpaceRef GetGrayscaleColorSpace(void)
{
  result = _graySpace;
  if (!_graySpace)
  {
    result = CGColorSpaceCreateDeviceGray();
    _graySpace = result;
  }

  return result;
}

void JCColor::JCColor(JCColor *this, double a2, double a3, double a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  _HSBToRGB(a2, a3, a4, &v8, &v7, &v6);
  components[0] = v8;
  components[1] = v7;
  components[2] = v6;
  components[3] = 1.0;
  DeviceRGB = _rgbSpace;
  if (!_rgbSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    _rgbSpace = DeviceRGB;
  }

  *this = CGColorCreate(DeviceRGB, components);
}

double *_HSBToRGB(double a1, double a2, double a3, double *result, double *a5, double *a6)
{
  v6 = a1 * 6.0;
  v7 = a1 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a2) * a3;
  v12 = (1.0 - a2 * v10) * a3;
  v13 = (1.0 - a2 * (1.0 - v10)) * a3;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        if (result)
        {
          *result = v12;
        }

        if (a5)
        {
          *a5 = a3;
        }
      }

      else
      {
        if (v9 != 2)
        {
          return result;
        }

        if (result)
        {
          *result = v11;
        }

        if (a5)
        {
          *a5 = a3;
        }

        v11 = v13;
      }
    }

    else
    {
      if (result)
      {
        *result = a3;
      }

      if (a5)
      {
        *a5 = v13;
      }
    }

    goto LABEL_37;
  }

  if (v9 == 3)
  {
    if (result)
    {
      *result = v11;
    }

    if (a5)
    {
      *a5 = v12;
    }

    goto LABEL_36;
  }

  if (v9 == 4)
  {
    if (result)
    {
      *result = v13;
    }

    if (a5)
    {
      *a5 = v11;
    }

LABEL_36:
    v11 = a3;
    goto LABEL_37;
  }

  if (v9 != 5)
  {
    return result;
  }

  if (result)
  {
    *result = a3;
  }

  if (a5)
  {
    *a5 = v11;
  }

  v11 = v12;
LABEL_37:
  if (a6)
  {
    *a6 = v11;
  }

  return result;
}

uint64_t JCColor::ColorModel(CGColorRef *this)
{
  ColorSpace = CGColorGetColorSpace(*this);

  return CGColorSpaceGetModel(ColorSpace);
}

CGFloat JCColor::WhiteComponent(CGColorRef *this)
{
  ColorSpace = CGColorGetColorSpace(*this);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
  {
    v7 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
    JCColor::GetRGB(this, &v8, &v7, &v6);
    return v7 * 0.589999974 + v8 * 0.300000012 + v6 * 0.109999999;
  }

  else
  {
    v4 = CGColorGetColorSpace(*this);
    Model = CGColorSpaceGetModel(v4);
    result = 0.0;
    if (Model == kCGColorSpaceModelMonochrome)
    {
      return *CGColorGetComponents(*this);
    }
  }

  return result;
}

void JCColor::GetRGB(CGColorRef *this, double *a2, double *a3, double *a4)
{
  v8 = *this;
  ColorSpace = CGColorGetColorSpace(*this);
  if (CGColorSpaceGetModel(ColorSpace))
  {
    v10 = CGColorGetColorSpace(*this);
    if (CGColorSpaceGetModel(v10) == kCGColorSpaceModelRGB)
    {
      Components = CGColorGetComponents(v8);
      if (a2)
      {
        *a2 = *Components;
      }

      if (a3)
      {
        *a3 = Components[1];
      }

      if (a4)
      {
        v12 = Components[2];
LABEL_14:
        *a4 = v12;
      }
    }
  }

  else
  {
    v12 = JCColor::WhiteComponent(this);
    if (a2)
    {
      *a2 = v12;
    }

    if (a3)
    {
      *a3 = v12;
    }

    if (a4)
    {
      goto LABEL_14;
    }
  }
}

double JCColor::RedComponent(CGColorRef *this)
{
  v2 = 0.0;
  JCColor::GetRGB(this, &v2, 0, 0);
  return v2;
}

double JCColor::GreenComponent(CGColorRef *this)
{
  v2 = 0.0;
  JCColor::GetRGB(this, 0, &v2, 0);
  return v2;
}

double JCColor::BlueComponent(CGColorRef *this)
{
  v2 = 0.0;
  JCColor::GetRGB(this, 0, 0, &v2);
  return v2;
}

double *JCColor::GetHSB(CGColorRef *this, double *a2, double *a3, double *a4)
{
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  JCColor::GetRGB(this, &v10, &v9, &v8);
  return _RGBToHSB(v10, v9, v8, a2, a3, a4);
}

double *_RGBToHSB(double a1, double a2, double a3, double *result, double *a5, double *a6)
{
  if (a1 < a2 || a1 < a3)
  {
    if (a2 < a1 || a2 < a3)
    {
      if (a2 >= a1)
      {
        v8 = a1;
      }

      else
      {
        v8 = a2;
      }

      v9 = a3;
    }

    else
    {
      if (a1 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = a1;
      }

      v9 = a2;
    }
  }

  else
  {
    if (a2 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a2;
    }

    v9 = a1;
  }

  v10 = 0.0;
  if (v9 <= 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v11 = v9 - v8;
    v12 = (v9 - v8) / v9;
    if (v12 != 0.0)
    {
      v13 = (v9 - a2) / v11;
      v14 = (v9 - a3) / v11;
      if (v9 == a1)
      {
        if (v8 == a2)
        {
          v10 = v14 + 5.0;
        }

        else
        {
          v10 = 1.0 - v13;
        }
      }

      else
      {
        v15 = v9 == a2;
        v16 = (v9 - a1) / v11;
        if (v15)
        {
          if (v8 == a3)
          {
            v10 = v16 + 1.0;
          }

          else
          {
            v10 = 3.0 - v14;
          }
        }

        else if (v8 == a1)
        {
          v10 = v13 + 3.0;
        }

        else
        {
          v10 = 5.0 - v16;
        }
      }
    }
  }

  if (result)
  {
    *result = v10 / 6.0;
  }

  if (a5)
  {
    *a5 = v12;
  }

  if (a6)
  {
    *a6 = v9;
  }

  return result;
}

double JCColor::HueComponent(CGColorRef *this)
{
  v2 = 0.0;
  JCColor::GetHSB(this, &v2, 0, 0);
  return v2;
}

double JCColor::SaturationComponent(CGColorRef *this)
{
  v2 = 0.0;
  JCColor::GetHSB(this, 0, &v2, 0);
  return v2;
}

double JCColor::BrightnessComponent(CGColorRef *this)
{
  v2 = 0.0;
  JCColor::GetHSB(this, 0, 0, &v2);
  return v2;
}

CGFloat JCColor::GetLAB(JCColor *this, double *a2, double *a3, double *a4)
{
  v7 = JCColor::LABColor(this);
  ColorSpace = CGColorGetColorSpace(v7);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelLab)
  {
    Components = CGColorGetComponents(v7);
    if (a2)
    {
      result = *Components / 100.0;
      *a2 = result;
    }

    if (a3)
    {
      result = Components[1] / 100.0;
      *a3 = result;
    }

    if (a4)
    {
      result = Components[2] / 100.0;
      *a4 = result;
    }
  }

  return result;
}

CGColorRef JCColor::LABColor(JCColor *this)
{
  components[4] = *MEMORY[0x277D85DE8];
  result = *(this + 1);
  if (!result)
  {
    if (*this)
    {
      v12 = 0.0;
      v13 = 0.0;
      v11 = 0.0;
      JCColor::GetXYZ(this, &v13, &v12, &v11);
      v3 = v11;
      v4 = v13 / 95.0469971;
      v5 = v12 / 100.0;
      if (v13 / 95.0469971 <= 0.00885600038)
      {
        v6 = v4 * 7.78700018 + 0.137931034;
      }

      else
      {
        v6 = pow(v4, 0.333333343);
      }

      v7 = v3 / 108.883003;
      if (v5 <= 0.00885600038)
      {
        v8 = v5 * 7.78700018 + 0.137931034;
      }

      else
      {
        v8 = pow(v5, 0.333333343);
      }

      if (v7 <= 0.00885600038)
      {
        v9 = v7 * 7.78700018 + 0.137931034;
      }

      else
      {
        v9 = pow(v7, 0.333333343);
      }

      components[0] = v8 * 116.0 + -16.0;
      components[1] = (v6 - v8) * 500.0;
      components[2] = (v8 - v9) * 200.0;
      components[3] = CGColorGetAlpha(*this);
      LABColorSpace = GetLABColorSpace();
      result = CGColorCreate(LABColorSpace, components);
      *(this + 1) = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double JCColor::LightnessComponent(JCColor *this)
{
  v2 = 0.0;
  JCColor::GetLAB(this, &v2, 0, 0);
  return v2;
}

double JCColor::AComponent(JCColor *this)
{
  v2 = 0.0;
  JCColor::GetLAB(this, 0, &v2, 0);
  return v2;
}

double JCColor::BComponent(JCColor *this)
{
  v2 = 0.0;
  JCColor::GetLAB(this, 0, 0, &v2);
  return v2;
}

uint64_t JCColor::BlackColor(JCColor *this)
{
  if (JCColor::BlackColor(void)::onceToken != -1)
  {
    JCColor::BlackColor();
  }

  return JCColor::BlackColor(void)::blackColor;
}

uint64_t JCColor::WhiteColor(JCColor *this)
{
  if (JCColor::WhiteColor(void)::onceToken != -1)
  {
    JCColor::WhiteColor();
  }

  return JCColor::WhiteColor(void)::whiteColor;
}

void JCColor::GetXYZ(CGColorRef *this, double *a2, double *a3, double *a4)
{
  v8 = 0.0;
  v9 = 0.0;
  v7 = 0.0;
  JCColor::GetRGB(this, &v9, &v8, &v7);
  _RGBToXYZ(v9, v8, v7, a2, a3, a4);
}

void _XYZToLab(double a1, double a2, double a3, double *a4, double *a5, double *a6)
{
  v10 = a1 / 95.0469971;
  v11 = a2 / 100.0;
  if (v10 <= 0.00885600038)
  {
    v12 = v10 * 7.78700018 + 0.137931034;
  }

  else
  {
    v12 = pow(v10, 0.333333343);
  }

  v13 = a3 / 108.883003;
  if (v11 <= 0.00885600038)
  {
    v14 = v11 * 7.78700018 + 0.137931034;
  }

  else
  {
    v14 = pow(v11, 0.333333343);
  }

  if (v13 <= 0.00885600038)
  {
    v15 = v13 * 7.78700018 + 0.137931034;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = pow(v13, 0.333333343);
  if (a4)
  {
LABEL_11:
    *a4 = v14 * 116.0 + -16.0;
  }

LABEL_12:
  if (a5)
  {
    *a5 = (v12 - v14) * 500.0;
  }

  if (a6)
  {
    *a6 = (v14 - v15) * 200.0;
  }
}

CGColorSpaceRef GetLABColorSpace(void)
{
  v5 = *MEMORY[0x277D85DE8];
  result = _labSpace;
  if (!_labSpace)
  {
    *whitePoint = xmmword_24A023790;
    v4 = 0x3FF16BD900000000;
    memset(blackPoint, 0, sizeof(blackPoint));
    v1[0] = xmmword_24A0237A8;
    v1[1] = unk_24A0237B8;
    result = CGColorSpaceCreateLab(whitePoint, blackPoint, v1);
    _labSpace = result;
  }

  return result;
}

void _RGBToXYZ(double a1, double a2, double a3, double *a4, double *a5, double *a6)
{
  if (a1 <= 0.0404499993)
  {
    v11 = a1 / 12.9200001;
  }

  else
  {
    v11 = pow((a1 + 0.0549999997) / 1.05499995, 2.4000001);
  }

  if (a2 <= 0.0404499993)
  {
    v12 = a2 / 12.9200001;
  }

  else
  {
    v12 = pow((a2 + 0.0549999997) / 1.05499995, 2.4000001);
  }

  if (a3 <= 0.0404499993)
  {
    v13 = a3 / 12.9200001;
  }

  else
  {
    v13 = pow((a3 + 0.0549999997) / 1.05499995, 2.4000001);
  }

  v14 = v11 * 100.0;
  v15 = v12 * 100.0;
  v16 = v13 * 100.0;
  if (a4)
  {
    *a4 = v15 * 0.357600003 + v14 * 0.412400007 + v16 * 0.180500001;
  }

  if (a5)
  {
    *a5 = v15 * 0.715200007 + v14 * 0.212599993 + v16 * 0.0722000003;
  }

  if (a6)
  {
    *a6 = v15 * 0.119199999 + v14 * 0.0193000007 + v16 * 0.950500011;
  }
}

double JCColor::Luminance(CGColorRef *this)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = 0.0;
  v6 = 0.0;
  v7[0] = 0.0;
  JCColor::GetRGB(this, &v5, &v6, v7);
  for (i = 0; i != 24; i += 8)
  {
    v2 = *(&v5 + i);
    if (v2 <= 0.0392800011)
    {
      v3 = v2 / 12.9200001;
    }

    else
    {
      v3 = pow((v2 + 0.0549999997) / 1.05499995, 2.4000001);
    }

    *(&v5 + i) = v3;
  }

  return v6 * 0.715200007 + v5 * 0.212599993 + v7[0] * 0.0722000003;
}

BOOL JCColor::IsCloseToColor(CGColorRef *this, JCColor *a2)
{
  ColorSpace = CGColorGetColorSpace(*this);
  if (CGColorSpaceGetModel(ColorSpace) || (v5 = CGColorGetColorSpace(*a2), CGColorSpaceGetModel(v5)))
  {
    v14 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
    JCColor::GetLAB(this, &v15, &v14, &v13);
    v11 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    JCColor::GetLAB(a2, &v12, &v11, &v10);
    if (vabdd_f64(v15, v12) > 0.2)
    {
      return 0;
    }

    if (v15 < 0.200000003 && v12 < 0.200000003)
    {
      return 1;
    }

    v7 = sqrt((v15 - v12) * (v15 - v12) + (v14 - v11) * 0.5 * ((v14 - v11) * 0.5) + (v13 - v10) * 0.5 * ((v13 - v10) * 0.5));
    v8 = 0.09;
  }

  else
  {
    v9 = JCColor::WhiteComponent(this);
    v7 = vabdd_f64(v9, JCColor::WhiteComponent(a2));
    v8 = 0.2;
  }

  return v7 < v8;
}

BOOL JCColor::IsReallyCloseToColor(CGColorRef *this, JCColor *a2)
{
  ColorSpace = CGColorGetColorSpace(*this);
  if (CGColorSpaceGetModel(ColorSpace) || (v5 = CGColorGetColorSpace(*a2), CGColorSpaceGetModel(v5)))
  {
    v14 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
    JCColor::GetLAB(this, &v15, &v14, &v13);
    v11 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    JCColor::GetLAB(a2, &v12, &v11, &v10);
    if (vabdd_f64(v15, v12) > 0.1)
    {
      return 0;
    }

    if (v15 < 0.200000003 && v12 < 0.200000003)
    {
      return 1;
    }

    v7 = sqrt((v15 - v12) * (v15 - v12) + (v14 - v11) * 0.5 * ((v14 - v11) * 0.5) + (v13 - v10) * 0.5 * ((v13 - v10) * 0.5));
    v8 = 0.05;
  }

  else
  {
    v9 = JCColor::WhiteComponent(this);
    v7 = vabdd_f64(v9, JCColor::WhiteComponent(a2));
    v8 = 0.2;
  }

  return v7 < v8;
}

double JCColor::GetContrastWithColorLuminanceMethod(CGColorRef *this, CGColorRef *a2)
{
  v3 = JCColor::Luminance(this);
  v4 = JCColor::Luminance(a2);
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v3 <= v4)
  {
    v4 = v3;
  }

  return (v5 + 0.0500000007) / (v4 + 0.0500000007);
}

BOOL JCColor::ContrastsWithColor(CGColorRef *this, CGColorRef *a2)
{
  v4 = CFPreferencesCopyAppValue(@"TextColorContrast", *MEMORY[0x277CBF028]);
  if (v4)
  {
    v5 = v4;
    valuePtr = 0.0;
    if (CFNumberGetValue(v4, kCFNumberCGFloatType, &valuePtr))
    {
      v6 = valuePtr;
    }

    else
    {
      v6 = 4.19999981;
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 4.19999981;
  }

  v7 = JCColor::Luminance(this);
  v8 = JCColor::Luminance(a2);
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 <= v8)
  {
    v8 = v7;
  }

  return (v9 + 0.0500000007) / (v8 + 0.0500000007) > v6;
}

BOOL JCColor::ContrastsEnoughWithColor(CGColorRef *this, CGColorRef *a2)
{
  v4 = CFPreferencesCopyAppValue(@"SecondaryTextColorContrast", *MEMORY[0x277CBF028]);
  if (v4)
  {
    v5 = v4;
    valuePtr = 0.0;
    if (CFNumberGetValue(v4, kCFNumberCGFloatType, &valuePtr))
    {
      v6 = valuePtr;
    }

    else
    {
      v6 = 2.20000005;
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 2.20000005;
  }

  v7 = JCColor::Luminance(this);
  v8 = JCColor::Luminance(a2);
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 <= v8)
  {
    v8 = v7;
  }

  return (v9 + 0.0500000007) / (v8 + 0.0500000007) > v6;
}

BOOL JCColor::IsSaturated(CGColorRef *this)
{
  v2 = 0.0;
  v3 = 0.0;
  JCColor::GetHSB(this, 0, &v3, &v2);
  return v2 > 0.449999988 && v3 > 0.800000012;
}

void JCColor::CreateBlendedColorWithFraction(CGColorRef *this@<X0>, double a2@<D0>, CGColorRef *a3@<X1>, JCColor *a4@<X8>)
{
  v4 = a3;
  if (a2 >= 1.0)
  {
    v13 = a4;
  }

  else
  {
    if (a2 > 0.0)
    {
      v18 = 0.0;
      v19 = 0.0;
      v17 = 0.0;
      JCColor::GetRGB(a3, &v19, &v18, &v17);
      v15 = 0.0;
      v16 = 0.0;
      v14 = 0.0;
      JCColor::GetRGB(this, &v16, &v15, &v14);
      v8 = (1.0 - a2) * v16 + v19 * a2;
      v9 = (1.0 - a2) * v15 + v18 * a2;
      v10 = (1.0 - a2) * v14 + v17 * a2;
      Alpha = CGColorGetAlpha(*v4);
      v12 = CGColorGetAlpha(*this);
      JCColor::JCColor(a4, v8, v9, v10, (1.0 - a2) * v12 + Alpha * a2);
      return;
    }

    v13 = a4;
    a3 = this;
  }

  JCColor::JCColor(v13, a3);
}

CGColorRef *JCColor::LightenColorByPercent(CGColorRef *this, double a2)
{
  components[4] = *MEMORY[0x277D85DE8];
  if (a2 != 0.0)
  {
    v3 = this;
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    JCColor::GetXYZ(this, &v20, &v19, &v18);
    v4 = v18;
    v5 = v20 / 95.0469971;
    v6 = v19 / 100.0;
    if (v20 / 95.0469971 <= 0.00885600038)
    {
      v7 = v5 * 7.78700018 + 0.137931034;
    }

    else
    {
      v7 = pow(v5, 0.333333343);
    }

    v8 = v4 / 108.883003;
    if (v6 <= 0.00885600038)
    {
      v9 = v6 * 7.78700018 + 0.137931034;
    }

    else
    {
      v9 = pow(v6, 0.333333343);
    }

    if (v8 <= 0.00885600038)
    {
      v10 = v8 * 7.78700018 + 0.137931034;
    }

    else
    {
      v10 = pow(v8, 0.333333343);
    }

    v11 = (v9 - v10) * 200.0;
    v12 = (a2 + 1.0) * (v9 * 116.0 + -16.0);
    if (v12 > 100.0)
    {
      v12 = 100.0;
    }

    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    _LabToXYZ(v12, (v7 - v9) * 500.0, v11, &v20, &v19, &v18);
    v16 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    _XYZToRGB(v20, v19, v18, &v17, &v16, &v15);
    Alpha = CGColorGetAlpha(*v3);
    CGColorRelease(*v3);
    *v3 = 0;
    CGColorRelease(v3[1]);
    v3[1] = 0;
    components[0] = v17;
    components[1] = v16;
    components[2] = v15;
    components[3] = Alpha;
    DeviceRGB = _rgbSpace;
    if (!_rgbSpace)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      _rgbSpace = DeviceRGB;
    }

    this = CGColorCreate(DeviceRGB, components);
    *v3 = this;
  }

  return this;
}

void _LabToXYZ(double a1, double a2, double a3, double *a4, double *a5, double *a6)
{
  v9 = (a1 + 16.0) / 116.0;
  v10 = a2 / 500.0 + v9;
  v11 = a3 / -200.0;
  v12 = pow(v9, 3.0);
  if (v12 <= 0.00885600038)
  {
    v12 = (v9 + -0.137931034) / 7.78700018;
  }

  v13 = v9 + v11;
  v14 = pow(v10, 3.0);
  if (v14 <= 0.00885600038)
  {
    v14 = (v10 + -0.137931034) / 7.78700018;
  }

  v15 = pow(v13, 3.0);
  if (v15 <= 0.00885600038)
  {
    v15 = (v13 + -0.137931034) / 7.78700018;
  }

  if (a4)
  {
    *a4 = v14 * 95.0469971;
  }

  if (a5)
  {
    *a5 = v12 * 100.0;
  }

  if (a6)
  {
    *a6 = v15 * 108.883003;
  }
}

void _XYZToRGB(double a1, double a2, double a3, double *a4, double *a5, double *a6)
{
  v9 = a1 / 100.0;
  v10 = a2 / 100.0;
  v11 = a3 / 100.0;
  v12 = v10 * -1.53719997 + a1 / 100.0 * 3.24060011 + a3 / 100.0 * -0.498600006;
  v13 = v10 * 1.87580001 + v9 * -0.968900025 + a3 / 100.0 * 0.0414999984;
  v14 = v10 * -0.203999996 + v9 * 0.0557000004;
  if (v12 <= 0.00313080009)
  {
    v15 = v12 * 12.9200001;
  }

  else
  {
    v15 = pow(v12, 0.416666657) * 1.05499995 + -0.0549999997;
  }

  v16 = v14 + v11 * 1.05700004;
  if (v13 <= 0.00313080009)
  {
    v17 = v13 * 12.9200001;
  }

  else
  {
    v17 = pow(v13, 0.416666657) * 1.05499995 + -0.0549999997;
  }

  if (v16 <= 0.00313080009)
  {
    v18 = v16 * 12.9200001;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = pow(v16, 0.416666657) * 1.05499995 + -0.0549999997;
  if (a4)
  {
LABEL_11:
    *a4 = v15;
  }

LABEL_12:
  if (a5)
  {
    *a5 = v17;
  }

  if (a6)
  {
    *a6 = v18;
  }
}

CGColorRef *JCColor::EnsureContrastWithColor(CGColorRef *this, CGColorRef *a2)
{
  result = JCColor::ContrastsWithColor(this, a2);
  if ((result & 1) == 0)
  {
    v5 = JCColor::Luminance(this);
    v6 = JCColor::Luminance(a2);
    v7 = JCColor::Luminance(this);
    v8 = JCColor::Luminance(a2);
    if (v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v7 <= v8)
    {
      v8 = v7;
    }

    v10 = (v9 + 0.0500000007) / (v8 + 0.0500000007) + (4.19999981 - (v9 + 0.0500000007) / (v8 + 0.0500000007)) * 0.5;
    v11 = v6 + 0.0500000007;
    if (v5 <= v6)
    {
      v12 = v11 / v10 + -0.0500000007;
    }

    else
    {
      v12 = v10 * v11 + -0.0500000007;
    }

    v13 = (v12 - v5) / v5;

    return JCColor::LightenColorByPercent(this, v13);
  }

  return result;
}

uint64_t CGColorSpaceGetSRGB(void)
{
  result = CGColorSpaceGetSRGB(void)::space;
  if (!CGColorSpaceGetSRGB(void)::space)
  {
    v1 = CGDataProviderCreateWithData(0, &CGColorSpaceGetSRGB(void)::kSRGBProfile, 0xC48uLL, 0);
    CGColorSpaceGetSRGB(void)::space = CGColorSpaceCreateICCBased(3uLL, 0, v1, 0);
    CGDataProviderRelease(v1);
    return CGColorSpaceGetSRGB(void)::space;
  }

  return result;
}

void sub_249FCDDF0(_Unwind_Exception *a1)
{
  MEMORY[0x24C20CE40](v3, 0x1020C40CC7EA6EELL);

  _Unwind_Resume(a1);
}

void sub_249FCE394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  JCColor::~JCColor(&a9);
  JCColor::~JCColor(&a11);

  _Unwind_Resume(a1);
}

void sub_249FCE498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  JCColor::~JCColor(&a9);
  JCColor::~JCColor(&a11);
  JCColor::~JCColor(&a13);

  _Unwind_Resume(a1);
}

BOOL ColorIsGrayscale(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 0.0399999991)
  {
    return 1;
  }

  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  return v1 * 0.100000001 + 0.0 + *(a1 + 16) < 0.200000003;
}

void JCImageAnalyzer::JCImageAnalyzer(JCImageAnalyzer *this)
{
  JCColor::JCColor((this + 24), 0);
  JCColor::JCColor((this + 40), 0);
  JCColor::JCColor((this + 56), 0);
  JCColor::JCColor((this + 72), 0);
  JCColor::JCColor((this + 88), 0);
  JCColor::JCColor((this + 104));
  JCColor::JCColor((this + 120));
  *(this + 449) = 0u;
  *(this + 448) = 0u;
  *(this + 447) = 0u;
  JCColor::JCColor(v2, 0);
  JCColor::operator=(this + 5, v2);
  JCColor::~JCColor(v2);
  *this = 0;
  bzero(this + 136, 0x1340uLL);
  *(this + 450) = 0u;
}

void sub_249FCE828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  JCColor::~JCColor(&a9);
  a9 = v9 + 7176;
  std::vector<sortColorEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9 + 7152;
  std::vector<JCColor>::__destroy_vector::operator()[abi:ne200100](&a9);
  JCColor::~JCColor((v9 + 120));
  JCColor::~JCColor((v9 + 104));
  JCColor::~JCColor((v9 + 88));
  JCColor::~JCColor((v9 + 72));
  JCColor::~JCColor((v9 + 56));
  JCColor::~JCColor((v9 + 40));
  JCColor::~JCColor((v9 + 24));
  _Unwind_Resume(a1);
}

void JCImageAnalyzer::~JCImageAnalyzer(void **this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = this + 897;
  std::vector<sortColorEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 894;
  std::vector<JCColor>::__destroy_vector::operator()[abi:ne200100](&v3);
  JCColor::~JCColor((this + 15));
  JCColor::~JCColor((this + 13));
  JCColor::~JCColor((this + 11));
  JCColor::~JCColor((this + 9));
  JCColor::~JCColor((this + 7));
  JCColor::~JCColor((this + 5));
  JCColor::~JCColor((this + 3));
}

double JCImageAnalyzer::GetBorderMarginInPixels(JCImageAnalyzer *this)
{
  v1 = *(this + 2);
  if (v1 <= *(this + 1))
  {
    v1 = *(this + 1);
  }

  return ceil(v1 * *(this + 901));
}

uint64_t JCImageAnalyzer::GetPrefValue(JCImageAnalyzer *this, CFStringRef key, unsigned __int8 *a3)
{
  valuePtr = 0;
  v4 = CFPreferencesCopyAppValue(key, *MEMORY[0x277CBF028]);
  if (!v4)
  {
    v7 = 0;
    if (!a3)
    {
      return valuePtr;
    }

    goto LABEL_11;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFNumberGetTypeID())
  {
    v9 = 0.0;
    if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
    {
LABEL_6:
      v7 = 1;
      goto LABEL_10;
    }

    if (CFNumberGetValue(v5, kCFNumberCGFloatType, &v9))
    {
      valuePtr = v9;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_10:
  CFRelease(v5);
  if (a3)
  {
LABEL_11:
    *a3 = v7;
  }

  return valuePtr;
}

uint64_t JCImageAnalyzer::Reset(JCImageAnalyzer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  *(this + 8) = *MEMORY[0x277CBF3A8];
  JCColor::JCColor(v26, 0);
  JCColor::operator=(this + 3, v26);
  JCColor::~JCColor(v26);
  JCColor::JCColor(v26, 0);
  JCColor::operator=(this + 5, v26);
  JCColor::~JCColor(v26);
  JCColor::JCColor(v26, 0);
  JCColor::operator=(this + 7, v26);
  JCColor::~JCColor(v26);
  JCColor::JCColor(v26, 0);
  JCColor::operator=(this + 9, v26);
  JCColor::~JCColor(v26);
  JCColor::JCColor(v26, 0);
  JCColor::operator=(this + 11, v26);
  JCColor::~JCColor(v26);
  bzero(this + 136, 0x1B40uLL);
  v3 = *(this + 895);
  v4 = *(this + 894);
  while (v3 != v4)
  {
    JCColor::~JCColor((v3 - 16));
  }

  *(this + 895) = v4;
  v5 = *(this + 898);
  v6 = *(this + 897);
  if (v5 != v6)
  {
    do
    {
      v7 = v5 - 32;
      JCColor::~JCColor((v5 - 16));
      v5 = v7;
    }

    while (v7 != v6);
  }

  *(this + 898) = v6;
  *(this + 450) = 0u;
  LOBYTE(v26[0]) = 0;
  PrefValue = JCImageAnalyzer::GetPrefValue(v3, @"HueSpread", v26);
  if (LOBYTE(v26[0]))
  {
    v9 = PrefValue;
  }

  else
  {
    v9 = 7;
  }

  *(this + 1778) = v9;
  v10 = JCImageAnalyzer::GetPrefValue(PrefValue, @"SaturationSpread", v26);
  if (LOBYTE(v26[0]))
  {
    v11 = v10;
  }

  else
  {
    v11 = 10;
  }

  *(this + 1779) = v11;
  v12 = JCImageAnalyzer::GetPrefValue(v10, @"BrightnessSpread", v26);
  if (LOBYTE(v26[0]))
  {
    v13 = v12;
  }

  else
  {
    v13 = 10;
  }

  *(this + 1780) = v13;
  v14 = JCImageAnalyzer::GetPrefValue(v12, @"GrayscaleSpread", v26);
  if (LOBYTE(v26[0]))
  {
    v15 = v14;
  }

  else
  {
    v15 = 15;
  }

  *(this + 1781) = v15;
  v16 = JCImageAnalyzer::GetPrefValue(v14, @"BackgroundMultiplier-LeftTop", v26);
  if (LOBYTE(v26[0]))
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  *(this + 1782) = v17;
  v18 = JCImageAnalyzer::GetPrefValue(v16, @"BackgroundMultiplier-LeftBottom", v26);
  if (LOBYTE(v26[0]))
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  *(this + 1783) = v19;
  v20 = JCImageAnalyzer::GetPrefValue(v18, @"BackgroundMultiplier-Top", v26);
  if (LOBYTE(v26[0]))
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  *(this + 1784) = v21;
  v22 = JCImageAnalyzer::GetPrefValue(v20, @"BackgroundMultiplier-Bottom", v26);
  if (LOBYTE(v26[0]))
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  *(this + 1785) = v23;
  result = JCImageAnalyzer::GetPrefValue(v22, @"BackgroundMultiplier-Right", v26);
  if (LOBYTE(v26[0]))
  {
    v25 = result;
  }

  else
  {
    v25 = 1;
  }

  *(this + 1786) = v25;
  return result;
}

uint64_t JCImageAnalyzer::AnalyzeImage(JCImageAnalyzer *this, CGImage *a2)
{
  JCImageAnalyzer::Reset(this);
  if (a2)
  {
    ContextForImage = JCImageAnalyzer::CreateContextForImage(this, a2);
    JCImageAnalyzer::CreateHSVMap(this, ContextForImage);
    CGContextRelease(ContextForImage);
    if (*this)
    {
      JCImageAnalyzer::CalculateBackgroundColor(this);
    }
  }

  return 0;
}

CGContext *JCImageAnalyzer::CreateContextForImage(CGFloat *this, CGImageRef image)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (Width >= 0x80)
  {
    v6 = 128;
  }

  else
  {
    v6 = Width;
  }

  v7 = vcvtad_u64_f64(Width / Height * v6);
  SRGB = CGColorSpaceGetSRGB();
  CopyWithColorSpace = CGImageCreateCopyWithColorSpace(image, SRGB);
  v10 = CopyWithColorSpace;
  if (CopyWithColorSpace)
  {
    v11 = CopyWithColorSpace;
  }

  else
  {
    v11 = image;
  }

  RGBBitmapContext = JCImageAnalyzer::CreateRGBBitmapContext(CopyWithColorSpace, v11, v7, v6);
  v13 = RGBBitmapContext;
  if (RGBBitmapContext)
  {
    v14 = CGBitmapContextGetWidth(RGBBitmapContext);
    v16.size.height = CGBitmapContextGetHeight(v13);
    this[1] = v14;
    this[2] = v16.size.height;
    v16.origin.x = *MEMORY[0x277CBF348];
    v16.origin.y = *(MEMORY[0x277CBF348] + 8);
    v16.size.width = v14;
    CGContextDrawImage(v13, v16, v11);
  }

  CGImageRelease(v10);
  return v13;
}

uint64_t JCImageAnalyzer::CreateHSVMap(uint64_t this, CGContextRef context)
{
  if (context)
  {
    v3 = this;
    BytesPerRow = CGBitmapContextGetBytesPerRow(context);
    this = CGBitmapContextGetData(context);
    v20 = this;
    if (this)
    {
      v4 = *(v3 + 16);
      v22 = *(v3 + 8);
      this = malloc_type_calloc(v22 * v4, 0x18uLL, 0x1000040504FFAC1uLL);
      *v3 = this;
      if (this)
      {
        this = CGBitmapContextGetBitmapInfo(context);
        v6 = v22;
        if (v4)
        {
          v7 = 0;
          v8 = 0;
          v9 = this & 0x3000;
          if ((this & 0x3000) != 0)
          {
            v10 = 0;
          }

          else
          {
            v10 = 3;
          }

          v19 = v4;
          do
          {
            if (v6)
            {
              v24 = v7;
              v11 = v20 + BytesPerRow * v7;
              v23 = v8 + v6;
              do
              {
                if (v9)
                {
                  v12 = 2;
                }

                else
                {
                  v12 = 1;
                }

                if (v9)
                {
                  v13 = 1;
                }

                else
                {
                  v13 = 2;
                }

                LOBYTE(v5) = *(v11 + v10);
                *&v14 = v5 / 255.0;
                v15 = *&v14;
                LOBYTE(v14) = *(v11 + v13);
                *&v16 = v14 / 255.0;
                v17 = *&v16;
                LOBYTE(v16) = *(v11 + v12);
                this = _RGBToHSB((v16 / 255.0), v17, v15, &v25, &v25 + 1, &v26);
                v18 = *v3 + 24 * v8;
                v5 = v25;
                *(v18 + 16) = v26;
                *v18 = v5;
                ++v8;
                v11 += 4;
                --v6;
              }

              while (v6);
              v6 = v22;
              v8 = v23;
              v4 = v19;
              v7 = v24;
            }

            ++v7;
          }

          while (v7 != v4);
        }
      }
    }
  }

  return this;
}

void sub_249FCF354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  JCColor::~JCColor(va);
  JCColor::~JCColor(va1);
  _Unwind_Resume(a1);
}

void JCImageAnalyzer::PickTextColors(JCColor **this)
{
  JCImageAnalyzer::GetTextColorForBackgroundColor(this, this + 3, v2);
  JCColor::operator=(this + 5, v2);
  JCColor::~JCColor(v2);
  JCImageAnalyzer::GetSecondaryTextColorForBackgroundColor(this, this + 3, v2);
  JCColor::operator=(this + 7, v2);
  JCColor::~JCColor(v2);
}

void JCImageAnalyzer::DoPostImageAnalysis(CGColorRef *this)
{
  JCColor::JCColor(v2, (this + 5), 0.75);
  JCColor::operator=(this + 9, v2);
  JCColor::~JCColor(v2);
  JCColor::JCColor(v2, (this + 7), 0.75);
  JCColor::operator=(this + 11, v2);
  JCColor::~JCColor(v2);
}

CGContextRef JCImageAnalyzer::CreateRGBBitmapContext(JCImageAnalyzer *this, CGImage *a2, size_t a3, size_t a4)
{
  if (!a2)
  {
    return 0;
  }

  SRGB = CGColorSpaceGetSRGB();
  if (!SRGB)
  {
    return 0;
  }

  return CGBitmapContextCreate(0, a3, a4, 8uLL, 4 * a3, SRGB, 2u);
}

uint64_t JCImageAnalyzer::IterateOverPixels(uint64_t result, uint64_t a2, int a3)
{
  if (*(a2 + 24))
  {
    v3 = result;
    if (*result)
    {
      v4 = *(result + 8);
      v5 = *(result + 16);
      v6 = v5;
      if (v5 <= v4)
      {
        v5 = *(result + 8);
      }

      v7 = vcvtpd_u64_f64(*(result + 7208) * v5);
      v8 = v6 - 2 * v7;
      if (v8 > v7)
      {
        v11 = v4 - 2 * v7;
        v15 = v4 - 3 * v7;
        v12 = v7;
        do
        {
          if (v11 > v7)
          {
            v13 = v15;
            v14 = v7;
            do
            {
              result = std::function<void ()(CGPoint,JCHSVColor &,unsigned int)>::operator()(a2, *v3 + 24 * (v14 + v12 * *(v3 + 8)), a3, v14 - v7, v12 - v7);
              ++v14;
              --v13;
            }

            while (v13);
          }

          ++v12;
        }

        while (v12 != v8);
      }
    }
  }

  return result;
}

uint64_t JCImageAnalyzer::pixelBlock_GenerateMainHueHistogram(JCImageAnalyzer *this, double *a2, double a3, double a4)
{
  v6 = a2[1];
  v7 = vcvtad_u64_f64(*a2 * 359.0);
  v8 = a2[2];
  v9 = this + 4 * vcvtad_u64_f64(v8 * 255.0);
  if (v6 < 0.0399999991)
  {
    goto LABEL_5;
  }

  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  if (v8 + v6 * 0.100000001 + 0.0 >= 0.200000003)
  {
    v10 = (this + 4 * v7 + 136);
  }

  else
  {
LABEL_5:
    v10 = v9 + 1576;
  }

  ++*v10;
  result = JCImageAnalyzer::MultiplierForPointInBackground(this, *&a3);
  if (result)
  {
    v12 = a2[1];
    if (v12 < 0.0399999991)
    {
      goto LABEL_12;
    }

    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    if (v12 * 0.100000001 + 0.0 + a2[2] >= 0.200000003)
    {
      v13 = (this + 4 * v7 + 2600);
    }

    else
    {
LABEL_12:
      v13 = v9 + 4040;
    }

    *v13 += result;
  }

  return result;
}

uint64_t JCImageAnalyzer::WeightHistogram(JCImageAnalyzer *this, unsigned int *a2, int a3, int a4)
{
  v7 = 4 * a3;
  v8 = malloc_type_malloc(v7, 0x100004052888210uLL);
  memcpy(v8, a2, v7);
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    LODWORD(v12) = 0;
    v13 = 1;
    v14 = -1;
    do
    {
      v15 = *(v8 + v10);
      if (a4 < 1)
      {
        goto LABEL_25;
      }

      v16 = v15;
      v17 = 1;
      v18 = 1.0;
      v19 = v14;
      v20 = v13;
      v21 = a4;
      v22 = 1;
      do
      {
        v23 = v19 < 0 && a3 == 360;
        v24 = v19 + 360;
        if (!v23)
        {
          v24 = v19;
        }

        if ((v24 & 0x80000000) == 0)
        {
          LODWORD(v9) = *(v8 + v24);
          v9 = *&v9;
          if (v16 >= v9)
          {
            v9 = (v18 * -0.0500000007 + 1.0) * v9;
            v15 += vcvtad_u64_f64(v9);
            a2[v24] = 0;
          }

          else
          {
            v22 = 0;
          }
        }

        v25 = v20 - 360;
        if (v20 <= 360 || a3 != 360)
        {
          v25 = v20;
        }

        if (v25 < a3)
        {
          LODWORD(v9) = *(v8 + v25);
          v9 = *&v9;
          if (v16 >= v9)
          {
            v9 = (v17 * -0.0500000007 + 1.0) * v9;
            v15 += vcvtad_u64_f64(v9);
            a2[v25] = 0;
          }

          else
          {
            v22 = 0;
          }
        }

        v18 = v18 + 1.0;
        ++v17;
        ++v20;
        --v19;
        --v21;
      }

      while (v21);
      if (v22)
      {
LABEL_25:
        a2[v10] = v15;
      }

      else
      {
        v15 = a2[v10];
      }

      if (v15 <= v11)
      {
        v12 = v12;
      }

      else
      {
        v12 = v10;
      }

      if (v15 > v11)
      {
        v11 = v15;
      }

      ++v10;
      ++v13;
      ++v14;
    }

    while (v10 != a3);
  }

  else
  {
    v12 = 0;
  }

  free(v8);
  return v12;
}

double JCImageAnalyzer::pixelBlock_GenerateSaturationAndBrightnessHistogramsForHueInBackground(JCImageAnalyzer *a1, double *a2, int a3, double result, double a5)
{
  v5 = a2[1];
  if (v5 >= 0.0399999991)
  {
    if (v5 > 1.0)
    {
      v5 = 1.0;
    }

    if (v5 * 0.100000001 + 0.0 + a2[2] >= 0.200000003)
    {
      v9 = JCImageAnalyzer::MultiplierForPointInBackground(a1, *&result);
      if (v9)
      {
        result = *a2 * 359.0;
        v10 = vcvtad_u64_f64(result) - a3;
        if (v10 >= 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = -v10;
        }

        v13 = v10 + 360;
        v12 = v10 + 360 < 0;
        v14 = -360 - v10;
        if (!v12)
        {
          v14 = v13;
        }

        if (v11 < v14)
        {
          v14 = v11;
        }

        if (v14 <= *(a1 + 1778))
        {
          v15 = vcvtad_u64_f64(a2[2] * 255.0);
          result = a2[1] * 255.0;
          v16 = (a1 + 4 * vcvtad_u64_f64(result));
          v16[1266] += v9;
          *(a1 + v15 + 1522) += v9;
        }
      }
    }
  }

  return result;
}

void JCImageAnalyzer::ValidateBackgroundColor(JCImageAnalyzer *this@<X0>, JCColor *a2@<X1>, JCColor *a3@<X8>)
{
  JCColor::JCColor(v53, a2);
  if (*(this + 900) <= 0.4)
  {
    goto LABEL_6;
  }

  v6 = *(this + 1);
  v7 = v6 * 0.0500000007 * 3.0;
  if (*(this + 2) > v6)
  {
    v6 = *(this + 2);
  }

  if (ceil(*(this + 901) * v6) >= v7 || (BorderLengthForColor = JCImageAnalyzer::GetBorderLengthForColor(this, a2), BorderLengthForColor <= 0.0))
  {
LABEL_6:
    HistogramColorValues = JCImageAnalyzer::GetHistogramColorValues(this);
    if (HistogramColorValues[1] == *HistogramColorValues)
    {
      JCColor::JCColor(a3, a2);
      goto LABEL_76;
    }

    JCColor::JCColor(v52, (*HistogramColorValues + 16));
    if (JCColor::IsCloseToColor(v53, v52))
    {
      JCColor::operator=(v53, v52);
    }

    else
    {
      v10 = *HistogramColorValues;
      if (((HistogramColorValues[1] - *HistogramColorValues) >> 5) >= 1)
      {
        v11 = 0;
        v12 = 0.0;
        v13 = -1;
        v14 = 8;
        while (1)
        {
          JCColor::JCColor(v51, (v10 + v14 + 8));
          v15 = *(*HistogramColorValues + v14);
          if (v13 == -1)
          {
            if (JCColor::ColorModel(v51) && JCColor::ColorModel(v53))
            {
              v16 = JCColor::HueComponent(v51);
              v17 = (v16 * 360.0) - (JCColor::HueComponent(v53) * 360.0);
              if (v17 >= 0)
              {
                v18 = v17;
              }

              else
              {
                v18 = -v17;
              }

              v20 = v17 + 360;
              v19 = v17 + 360 < 0;
              v21 = -360 - v17;
              if (!v19)
              {
                v21 = v20;
              }

              if (v18 >= v21)
              {
                v18 = v21;
              }

              if (v18 < v21)
              {
                v21 = v18;
              }

              if (v21 >= *(this + 1778))
              {
                v13 = -1;
              }

              else
              {
                v13 = v11;
              }
            }

            else
            {
              v13 = -1;
            }
          }

          IsReallyCloseToColor = JCColor::IsReallyCloseToColor(v51, v53);
          JCColor::~JCColor(v51);
          if (IsReallyCloseToColor)
          {
            goto LABEL_38;
          }

          v12 = v12 + v15;
          ++v11;
          v10 = *HistogramColorValues;
          v14 += 32;
          if (v11 >= ((HistogramColorValues[1] - *HistogramColorValues) >> 5))
          {
            if (v12 > 0.899999976 && *(v10 + 8) > 0.330000013)
            {
              v23 = JCColor::BrightnessComponent(v52);
              v24 = JCColor::BrightnessComponent(v53);
              v25 = *HistogramColorValues;
              if (*(*HistogramColorValues + 8) > 0.699999988 && (HistogramColorValues[1] - v25) > 0x20)
              {
                goto LABEL_79;
              }

              if (v13 != -1 && (HistogramColorValues[1] - v25) >= 0x21)
              {
                JCColor::JCColor(v51, (v25 + 32 * v13 + 16));
                JCColor::operator=(v53, v51);
                JCColor::~JCColor(v51);
                goto LABEL_38;
              }

              if (v24 > 0.75 && v23 < v24)
              {
LABEL_79:
                JCColor::operator=(v53, v52);
              }
            }

            goto LABEL_38;
          }
        }
      }
    }

    v13 = -1;
LABEL_38:
    if (!JCColor::IsSaturated(v53))
    {
      goto LABEL_73;
    }

    v26 = *(*HistogramColorValues + 8);
    v27 = JCColor::operator==(v53, v52);
    v28 = v26 > 0.33;
    if (v26 >= 0.66)
    {
      v28 = 0;
    }

    v29 = v27 && v28;
    v30 = *HistogramColorValues;
    v31 = HistogramColorValues[1];
    if (v29 == 1 && (v31 - v30) >= 0x21)
    {
      v32 = 0;
      if (*(v30 + 40) < 0.2)
      {
LABEL_52:
        if (v32)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v33 = v30 + 32;
        v34 = 1;
        v35 = 72;
        LODWORD(v36) = 1;
        while (1)
        {
          v37 = JCColor::JCColor(v51, (v33 + 16));
          v38 = JCColor::WhiteColor(v37);
          JCColor::JCColor(v50, v38);
          v39 = JCColor::IsReallyCloseToColor(v51, v50);
          v40 = v39;
          if (v39)
          {
            JCColor::operator=(v53, v51);
            v32 = 1;
          }

          JCColor::~JCColor(v50);
          JCColor::~JCColor(v51);
          if (v40)
          {
            break;
          }

          v30 = *HistogramColorValues;
          v31 = HistogramColorValues[1];
          v41 = (v31 - *HistogramColorValues) >> 5;
          if (v41 >= 3)
          {
            v41 = 3;
          }

          if (v41 <= ++v34)
          {
            break;
          }

          v36 = (v36 + 1);
          v42 = *(v30 + v35);
          v35 += 32;
          v33 = v30 + 32 * v36;
          if (v42 < 0.2)
          {
            goto LABEL_52;
          }
        }

        if (v32)
        {
          goto LABEL_73;
        }

        v30 = *HistogramColorValues;
        v31 = HistogramColorValues[1];
      }
    }

    if ((v31 - v30) < 0x41)
    {
LABEL_73:
      JCImageAnalyzer::GetSecondaryTextColorForBackgroundColor(this, v53, v51);
      JCColor::EnsureContrastWithColor(v51, v53);
      if (JCColor::GetContrastWithColorLuminanceMethod(v51, v53) < 3.5)
      {
        JCColor::EnsureContrastWithColor(v53, v51);
      }

      JCColor::JCColor(a3, v53);
      JCColor::~JCColor(v51);
      JCColor::~JCColor(v52);
      goto LABEL_76;
    }

    JCColor::JCColor(v51, (v30 + 48));
    JCColor::JCColor(v50, (*HistogramColorValues + 80));
    if (v26 - *(*HistogramColorValues + 72) < 0.1 && JCColor::IsSaturated(v51) && (IsSaturated = JCColor::IsSaturated(v50)))
    {
      v49 = JCColor::WhiteColor(IsSaturated);
    }

    else
    {
      if (v13 == -1 || *(*HistogramColorValues + 32 * v13 + 8) >= 0.25 || v26 <= 0.25)
      {
        goto LABEL_72;
      }

      v49 = v52;
    }

    JCColor::operator=(v53, v49);
LABEL_72:
    JCColor::~JCColor(v50);
    JCColor::~JCColor(v51);
    goto LABEL_73;
  }

  *(this + 901) = BorderLengthForColor + *(this + 901);
  bzero(this + 136, 0x1340uLL);
  v43 = *(this + 895);
  v44 = *(this + 894);
  while (v43 != v44)
  {
    JCColor::~JCColor((v43 - 16));
  }

  *(this + 895) = v44;
  v45 = *(this + 898);
  v46 = *(this + 897);
  if (v45 != v46)
  {
    do
    {
      v47 = v45 - 32;
      JCColor::~JCColor((v45 - 16));
      v45 = v47;
    }

    while (v47 != v46);
  }

  *(this + 898) = v46;
  JCImageAnalyzer::CalculateBackgroundColor(this);
  JCColor::JCColor(a3, (this + 24));
LABEL_76:
  JCColor::~JCColor(v53);
}

void sub_249FCFFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  JCColor::~JCColor(va);
  JCColor::~JCColor(va1);
  JCColor::~JCColor(va2);
  _Unwind_Resume(a1);
}

void JCImageAnalyzer::GetTextColorForBackgroundColor(JCColor **this@<X0>, CGColorRef *a2@<X1>, JCColor *a3@<X8>)
{
  JCImageAnalyzer::SuggestedTextColorForBackground(this, a2, v10);
  JCImageAnalyzer::SuggestedSecondaryTextColorForBackground(this, a2, v9);
  if (JCColor::IsReallyCloseToColor(v10, v9) || (v6 = JCColor::Luminance(v10), v7 = JCColor::Luminance(this + 3), v8 = JCColor::Luminance(v9), vabdd_f64(v8, JCColor::Luminance(this + 3)) <= fabs(v6 - v7)))
  {
    JCColor::JCColor(a3, v10);
  }

  else
  {
    JCColor::JCColor(a3, v9);
  }

  JCColor::~JCColor(v9);
  JCColor::~JCColor(v10);
}

void sub_249FD0134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  JCColor::~JCColor(&a9);
  JCColor::~JCColor(&a11);
  _Unwind_Resume(a1);
}

void JCImageAnalyzer::GetSecondaryTextColorForBackgroundColor(JCColor **this@<X0>, CGColorRef *a2@<X1>, JCColor *a3@<X8>)
{
  JCImageAnalyzer::SuggestedTextColorForBackground(this, a2, v10);
  JCImageAnalyzer::SuggestedSecondaryTextColorForBackground(this, a2, v9);
  if (JCColor::IsReallyCloseToColor(v10, v9) || (v6 = JCColor::Luminance(v10), v7 = JCColor::Luminance(this + 3), v8 = JCColor::Luminance(v9), vabdd_f64(v8, JCColor::Luminance(this + 3)) <= fabs(v6 - v7)))
  {
    JCColor::JCColor(a3, v9);
  }

  else
  {
    JCColor::JCColor(a3, v10);
  }

  JCColor::~JCColor(v9);
  JCColor::~JCColor(v10);
}

void sub_249FD023C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  JCColor::~JCColor(&a9);
  JCColor::~JCColor(&a11);
  _Unwind_Resume(a1);
}

uint64_t JCImageAnalyzer::PrintHistogram(JCImageAnalyzer *this, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = a2[v4];
      if (v6)
      {
        result = printf("%ld - %ld\n", v4, v6);
      }

      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t JCImageAnalyzer::MultiplierForPointInBackground(JCImageAnalyzer *this, CGPoint a2)
{
  y = a2.y;
  x = a2.x;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v6 <= v5)
  {
    v7 = *(this + 1);
  }

  else
  {
    v7 = *(this + 2);
  }

  v8 = (2 * vcvtpd_u64_f64(*(this + 901) * v7));
  v9 = v5 - v8;
  v10 = v6 - v8;
  v11 = (v5 - v8) * 0.0500000007;
  v12 = (v6 - v8) * 0.5;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v11;
  v19.size.height = v12;
  v14.x = x;
  v14.y = y;
  if (CGRectContainsPoint(v19, v14))
  {
    return *(this + 1782);
  }

  v20.size.height = v12 + v12;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v11;
  v15.x = x;
  v15.y = y;
  if (CGRectContainsPoint(v20, v15))
  {
    return *(this + 1783);
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v9;
  v21.size.height = v10 * 0.0500000007;
  v16.x = x;
  v16.y = y;
  if (CGRectContainsPoint(v21, v16))
  {
    return *(this + 1784);
  }

  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v9;
  v22.size.height = v10;
  v23.origin.y = CGRectGetMaxY(v22) - v10 * 0.0500000007;
  v23.origin.x = 0.0;
  v23.size.width = v9;
  v23.size.height = v10 * 0.0500000007;
  v17.x = x;
  v17.y = y;
  if (CGRectContainsPoint(v23, v17))
  {
    return *(this + 1785);
  }

  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v9;
  v24.size.height = v10;
  v25.origin.x = CGRectGetMaxX(v24) - v11;
  v25.origin.y = 0.0;
  v25.size.width = v11;
  v25.size.height = v10;
  v18.x = x;
  v18.y = y;
  result = CGRectContainsPoint(v25, v18);
  if (result)
  {
    return *(this + 1786);
  }

  return result;
}

double JCImageAnalyzer::pixelBlock_GenerateSaturationAndBrightnessHistogramsForHue(uint64_t a1, double *a2, int a3)
{
  result = a2[1];
  if (result >= 0.0399999991)
  {
    v4 = 1.0;
    if (result <= 1.0)
    {
      v4 = a2[1];
    }

    v5 = v4 * 0.100000001 + 0.0;
    v6 = a2[2];
    if (v5 + v6 >= 0.200000003)
    {
      v7 = vcvtad_u64_f64(*a2 * 359.0) - a3;
      if (v7 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = -v7;
      }

      v10 = v7 + 360;
      v9 = v7 + 360 < 0;
      v11 = -360 - v7;
      if (!v9)
      {
        v11 = v10;
      }

      if (v8 < v11)
      {
        v11 = v8;
      }

      if (v11 <= *(a1 + 7112))
      {
        result = result * 255.0;
        v12 = a1 + 4 * vcvtad_u64_f64(result);
        ++*(v12 + 5064);
        v13 = a1 + 4 * vcvtad_u64_f64(v6 * 255.0);
        ++*(v13 + 6088);
      }
    }
  }

  return result;
}

uint64_t std::function<void ()(CGPoint,JCHSVColor &,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  *v8 = a4;
  *&v8[1] = a5;
  v7 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, v8, a2, &v7);
}

double JCImageAnalyzer::GetBorderLengthForColor(JCImageAnalyzer *this, CGColorRef *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  if (!*this)
  {
    return 0.0;
  }

  v4 = 0;
  v6 = *(this + 1);
  v5 = *(this + 2);
  v7 = v5;
  if (v5 <= v6)
  {
    v5 = *(this + 1);
  }

  v8 = vcvtpd_u64_f64(*(this + 901) * v5);
  v71 = 2 * v8;
  v72 = v6;
  v9 = v6 - 2 * v8;
  v10 = v7 - 2 * v8;
  v11 = v9;
  v12 = roundf((v9 * 0.05) + (v9 * 0.05));
  v13 = v12;
  v14 = roundf((v10 * 0.05) + (v10 * 0.05));
  v15 = v14;
  v74 = v10;
  v75 = v8;
  v16 = v10;
  v17 = v8;
  v76 = ~v8;
  do
  {
    v18 = v4 + 1;
    v19 = 0;
    if (v12 <= 0.0)
    {
      *&v78[4 * v4 + 52] = 0;
LABEL_18:
      v26 = 0.0;
      goto LABEL_19;
    }

    v20 = (v17 + vcvtd_n_f64_u32(v18, 2uLL) * v16);
    v21 = 0.0;
    do
    {
      v22 = (*this + 24 * (v75 + v9 * v20 + v19));
      JCColor::JCColor(v78, *v22, v22[1], v22[2]);
      IsCloseToColor = JCColor::IsCloseToColor(a2, v78);
      JCColor::~JCColor(v78);
      if (!IsCloseToColor)
      {
        break;
      }

      v21 = ++v19;
    }

    while (v19 < v13);
    if (v21 >= v13)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19;
    }

    *&v78[4 * v4 + 52] = v24;
    v19 = 0;
    if (v12 <= 0.0)
    {
      goto LABEL_18;
    }

    v25 = v9 + v9 * v20 + v76;
    v26 = 0.0;
    do
    {
      JCColor::JCColor(v78, *(*this + 24 * v25), *(*this + 24 * v25 + 8), *(*this + 24 * v25 + 16));
      v27 = JCColor::IsCloseToColor(a2, v78);
      JCColor::~JCColor(v78);
      if (!v27)
      {
        break;
      }

      v26 = ++v19;
      --v25;
    }

    while (v19 < v13);
LABEL_19:
    if (v26 >= v13)
    {
      v28 = 0;
    }

    else
    {
      v28 = v19;
    }

    *&v78[4 * v4++ + 28] = v28;
  }

  while (v18 != 3);
  v29 = 0;
  v73 = (v74 + v76) * v9;
  v30 = v9;
  do
  {
    v31 = v29 + 1;
    v32 = 0;
    if (v14 <= 0.0)
    {
      *&v78[4 * v29 + 40] = 0;
LABEL_37:
      v38 = 0.0;
      goto LABEL_38;
    }

    v77 = (v17 + vcvtd_n_f64_u32(v31, 2uLL) * v30);
    v33 = v75 * v9 + v77;
    v34 = 0.0;
    do
    {
      JCColor::JCColor(v78, *(*this + 24 * v33), *(*this + 24 * v33 + 8), *(*this + 24 * v33 + 16));
      v35 = JCColor::IsCloseToColor(a2, v78);
      JCColor::~JCColor(v78);
      if (!v35)
      {
        break;
      }

      v34 = ++v32;
      v33 += v9;
    }

    while (v32 < v15);
    if (v34 >= v15)
    {
      v36 = 0;
    }

    else
    {
      v36 = v32;
    }

    *&v78[4 * v29 + 40] = v36;
    v32 = 0;
    if (v14 <= 0.0)
    {
      goto LABEL_37;
    }

    v37 = v73 + v77;
    v38 = 0.0;
    do
    {
      JCColor::JCColor(v78, *(*this + 24 * v37), *(*this + 24 * v37 + 8), *(*this + 24 * v37 + 16));
      v39 = JCColor::IsCloseToColor(a2, v78);
      JCColor::~JCColor(v78);
      if (!v39)
      {
        break;
      }

      v38 = ++v32;
      v37 += v71 - v72;
    }

    while (v32 < v15);
LABEL_38:
    if (v38 >= v15)
    {
      v40 = 0;
    }

    else
    {
      v40 = v32;
    }

    *&v78[4 * v29++ + 16] = v40;
  }

  while (v31 != 3);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0x40000000;
  v47 = 0x40000000;
  v48 = 0x40000000;
  v49 = 0x40000000;
  do
  {
    v50 = *&v78[v41 + 52];
    if (v45 <= v50)
    {
      v45 = *&v78[v41 + 52];
    }

    v51 = *&v78[v41 + 28];
    if (v44 <= v51)
    {
      v44 = *&v78[v41 + 28];
    }

    v52 = *&v78[v41 + 40];
    if (v43 <= v52)
    {
      v43 = *&v78[v41 + 40];
    }

    v53 = *&v78[v41 + 16];
    if (v42 <= v53)
    {
      v42 = *&v78[v41 + 16];
    }

    if (v49 >= v50)
    {
      v49 = *&v78[v41 + 52];
    }

    if (v48 >= v51)
    {
      v48 = *&v78[v41 + 28];
    }

    if (v47 >= v52)
    {
      v47 = *&v78[v41 + 40];
    }

    if (v46 >= v53)
    {
      v46 = *&v78[v41 + 16];
    }

    v41 += 4;
  }

  while (v41 != 12);
  v54 = vcvtps_u32_f32(v11 * 0.02);
  v55 = v43 - v47;
  v56 = v42 - v46;
  if (v44)
  {
    v57 = v44 - v48 >= v54;
  }

  else
  {
    v57 = 1;
  }

  v58 = !v57;
  if (v57)
  {
    v59 = 1;
  }

  else
  {
    v59 = 2;
  }

  if (v45)
  {
    v60 = v45 - v49 >= v54;
  }

  else
  {
    v60 = 1;
  }

  v61 = !v60;
  if (v60)
  {
    v59 = v58;
  }

  if (v43)
  {
    v62 = v55 >= v54;
  }

  else
  {
    v62 = 1;
  }

  v63 = !v62;
  if (!v62)
  {
    ++v59;
  }

  if (v42)
  {
    v64 = v56 >= v54;
  }

  else
  {
    v64 = 1;
  }

  v65 = !v64;
  if (v64)
  {
    v66 = v59;
  }

  else
  {
    v66 = v59 + 1;
  }

  if (v66 >= 3)
  {
    if (!v61)
    {
      v45 = 0;
    }

    if (v45 > v44)
    {
      v44 = v45;
    }

    if (!v58)
    {
      v44 = v45;
    }

    if (v44 > v43)
    {
      v43 = v44;
    }

    if (!v63)
    {
      v43 = v44;
    }

    if (v43 > v42)
    {
      v42 = v43;
    }

    if (!v65)
    {
      v42 = v43;
    }

    return (v42 + 1) / v30;
  }

  else
  {
    v67 = (*this + 24 * (v9 + (v75 + (v11 * 0.25))));
    JCColor::JCColor(v78, *v67, v67[1], v67[2]);
    v68 = 0.0;
    if (!JCColor::IsCloseToColor(a2, v78))
    {
      JCImageAnalyzer::GetBorderLengthForColor(this, v78);
      v68 = v69;
    }

    JCColor::~JCColor(v78);
  }

  return v68;
}

void sub_249FD0A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  JCColor::~JCColor(va);
  _Unwind_Resume(a1);
}

uint64_t JCImageAnalyzer::GetHistogramColorValues(JCImageAnalyzer *this)
{
  if (*(this + 898) == *(this + 897))
  {
    v2 = 0;
    __p = 0;
    v46 = 0;
    v3 = this + 136;
    v4 = 34;
    v47 = 0;
    do
    {
      v5 = *(this + v4);
      if (v5 >= 0x65)
      {
        if (v2 >= v47)
        {
          v6 = (v2 - __p) >> 3;
          if ((v6 + 1) >> 61)
          {
            std::vector<sortHueEntry>::__throw_length_error[abi:ne200100]();
          }

          v7 = (v47 - __p) >> 2;
          if (v7 <= v6 + 1)
          {
            v7 = v6 + 1;
          }

          if (v47 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v8 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v8 = v7;
          }

          if (v8)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<sortHueEntry>>(&__p, v8);
          }

          v9 = (8 * v6);
          *v9 = v4 + (v5 << 32) - 34;
          v2 = (8 * v6 + 8);
          v10 = v9 - (v46 - __p);
          memcpy(v10, __p, v46 - __p);
          v11 = __p;
          __p = v10;
          v46 = v2;
          v47 = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v2 = v4 + (v5 << 32) - 34;
          v2 += 8;
        }

        v46 = v2;
      }

      ++v4;
    }

    while (v4 != 394);
    v12 = 126 - 2 * __clz((v2 - __p) >> 3);
    *&v39 = CompareHueEntry;
    if (v2 == __p)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,false>(__p, v2, &v39, v13, 1);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    if (v46 != __p)
    {
      v14 = 0;
      v15 = (v46 - __p) >> 3;
      if (v15 >= 8)
      {
        LODWORD(v15) = 8;
      }

      if (v15 <= 1)
      {
        LODWORD(v15) = 1;
      }

      do
      {
        if (*&v3[4 * *(__p + v14)] >= 0x65u)
        {
          JCImageAnalyzer::GetDominantColorForHue(this);
        }

        v14 += 8;
      }

      while (8 * v15 != v14);
    }

    v16 = 0;
    v17 = this + 1576;
    do
    {
      if (*&v17[4 * v16] >= 0x65u)
      {
        JCColor::JCColor(v41, v16 / 255.0, 1.0);
        JCColor::JCColor(v40, 0);
        JCColor::JCColor(v38, v41);
        JCColor::operator=(v40, v38);
        JCColor::~JCColor(v38);
        LODWORD(v39) = *&v17[4 * v16];
        std::vector<sortColorEntry>::push_back[abi:ne200100](&v42, &v39);
        JCColor::~JCColor(v40);
        JCColor::~JCColor(v41);
      }

      ++v16;
    }

    while (v16 != 256);
    v18 = 126 - 2 * __clz((v43 - v42) >> 5);
    v41[0] = CompareSortColor;
    if (v43 == v42)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(v42, v43, v41, v19, 1);
    v22 = v42;
    v21 = v43;
    v23 = v43 - v42;
    if (((v43 - v42) >> 5) >= 1)
    {
      v24 = 0;
      v25 = (v23 >> 5) & 0x7FFFFFFF;
      v26 = v25;
      v27 = v42;
      do
      {
        v28 = *v27;
        v27 += 4;
        v24 += v28;
        --v26;
      }

      while (v26);
      v29 = v24;
      v30 = (v42 + 1);
      do
      {
        LODWORD(v20) = *(v30 - 2);
        v20 = *&v20 / v29;
        *v30 = v20;
        v30 += 4;
        --v25;
      }

      while (v25);
    }

    v31 = *(this + 898);
    v32 = *(this + 897);
    if (v31 != v32)
    {
      do
      {
        v33 = v31 - 32;
        JCColor::~JCColor((v31 - 16));
        v31 = v33;
      }

      while (v33 != v32);
      v22 = v42;
      v21 = v43;
      v23 = v43 - v42;
    }

    *(this + 898) = v32;
    if (v21 != v22)
    {
      v34 = 0;
      v35 = v23 >> 5;
      if ((v23 >> 5) >= 8)
      {
        LODWORD(v35) = 8;
      }

      if (v35 <= 1)
      {
        LODWORD(v35) = 1;
      }

      v36 = 32 * v35;
      do
      {
        std::vector<sortColorEntry>::push_back[abi:ne200100](this + 897, &v42[v34 / 8]);
        v34 += 32;
      }

      while (v36 != v34);
    }

    *&v39 = &v42;
    std::vector<sortColorEntry>::__destroy_vector::operator()[abi:ne200100](&v39);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }
  }

  return this + 7176;
}

void sub_249FD0EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  a13 = &a19;
  std::vector<sortColorEntry>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void JCImageAnalyzer::GetDominantColorForHue(JCImageAnalyzer *this)
{
  v1 = *MEMORY[0x277D85DE8];
  bzero(this + 5064, 0x800uLL);
  operator new();
}

void sub_249FD10D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(CGPoint,JCHSVColor &,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<sortColorEntry>::push_back[abi:ne200100](uint64_t *a1, _OWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<sortColorEntry>::__emplace_back_slow_path<sortColorEntry const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    JCColor::JCColor((v3 + 1), (a2 + 1));
    result = (v3 + 2);
    a1[1] = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

JCColor **JCImageAnalyzer::DominantColors(JCColor **this)
{
  if (this[895] == this[894])
  {
    HistogramColorValues = JCImageAnalyzer::GetHistogramColorValues(this);
    v3 = *HistogramColorValues;
    if (((HistogramColorValues[1] - *HistogramColorValues) >> 5) >= 1)
    {
      v4 = HistogramColorValues;
      v5 = 0;
      v6 = 16;
      do
      {
        JCColor::JCColor(v10, (v3 + v6));
        v7 = this[895];
        if (v7 >= this[896])
        {
          v8 = std::vector<JCColor>::__emplace_back_slow_path<JCColor const&>((this + 894), v10);
        }

        else
        {
          JCColor::JCColor(this[895], v10);
          v8 = v7 + 16;
          this[895] = (v7 + 16);
        }

        this[895] = v8;
        JCColor::~JCColor(v10);
        ++v5;
        v3 = *v4;
        v6 += 32;
      }

      while (v5 < ((v4[1] - *v4) >> 5));
    }
  }

  return this + 894;
}

void JCImageAnalyzer::SuggestedTextColorForBackground(JCColor **this@<X0>, CGColorRef *a2@<X1>, JCColor *a3@<X8>)
{
  v5 = JCImageAnalyzer::DominantColors(this);
  v6 = JCColor::BlackColor(v5);
  JCColor::JCColor(v14, v6);
  v7 = *v5;
  if (v5[1] == *v5)
  {
LABEL_7:
    if (JCColor::Luminance(a2) <= 0.300000012)
    {
      v12 = JCColor::WhiteColor(v11);
    }

    else
    {
      v12 = JCColor::BlackColor(v11);
    }

    JCColor::operator=(v14, v12);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      JCColor::JCColor(v13, (v7 + v9));
      if (JCColor::ContrastsWithColor(v13, a2))
      {
        break;
      }

      JCColor::~JCColor(v13);
      v7 = *v5;
      v10 = (v5[1] - *v5) >> 4;
      if (v10 >= 5)
      {
        v10 = 5;
      }

      v9 += 16;
      if (v10 <= ++v8)
      {
        goto LABEL_7;
      }
    }

    JCColor::operator=(v14, v13);
    JCColor::~JCColor(v13);
  }

  JCColor::JCColor(a3, v14, 0.899999976);
  JCColor::~JCColor(v14);
}

void sub_249FD1388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  JCColor::~JCColor(&a9);
  JCColor::~JCColor(&a11);
  _Unwind_Resume(a1);
}

void JCImageAnalyzer::SuggestedSecondaryTextColorForBackground(JCColor **this@<X0>, CGColorRef *a2@<X1>, JCColor *a3@<X8>)
{
  JCImageAnalyzer::SuggestedTextColorForBackground(this, a2, v15);
  JCColor::JCColor(v14, 0);
  if ((JCImageAnalyzer::FindSecondaryTextColorCandidate(this, a2, v15, v14, 1) & 1) == 0)
  {
    v6 = JCImageAnalyzer::DominantColors(this);
    if ((v6[1] - *v6) < 0x31)
    {
      v7 = JCColor::Luminance(v15);
      if (v7 <= JCColor::Luminance(a2))
      {
        v9 = JCColor::BlackColor(v8);
      }

      else
      {
        v9 = JCColor::WhiteColor(v8);
      }

      JCColor::operator=(v14, v9);
    }

    else if (!JCImageAnalyzer::FindSecondaryTextColorCandidate(this, a2, v15, v14, 0))
    {
      goto LABEL_12;
    }
  }

  if (!JCColor::ContrastsWithColor(v14, a2))
  {
    JCColor::EnsureContrastWithColor(v14, a2);
  }

  if (!JCColor::IsReallyCloseToColor(v14, v15))
  {
    v13 = 0.899999976;
    goto LABEL_19;
  }

LABEL_12:
  if (JCColor::GetContrastWithColorLuminanceMethod(v15, a2) >= 5.5)
  {
    v12 = v15;
  }

  else
  {
    v10 = JCColor::Luminance(v15);
    if (v10 <= JCColor::Luminance(a2))
    {
      v12 = JCColor::BlackColor(v11);
    }

    else
    {
      v12 = JCColor::WhiteColor(v11);
    }
  }

  JCColor::operator=(v14, v12);
  v13 = 0.699999988;
LABEL_19:
  JCColor::JCColor(a3, v14, v13);
  JCColor::~JCColor(v14);
  JCColor::~JCColor(v15);
}

void sub_249FD1548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  JCColor::~JCColor(va);
  _Unwind_Resume(a1);
}

uint64_t JCImageAnalyzer::FindSecondaryTextColorCandidate(JCColor **this, CGColorRef *a2, CGColorRef *a3, CGColorRef *a4, int a5)
{
  v9 = JCImageAnalyzer::DominantColors(this);
  v10 = JCColor::Luminance(a3);
  v11 = JCColor::Luminance(a2);
  v12 = *v9;
  if (((v9[1] - *v9) >> 4) < 1)
  {
    return 0;
  }

  v13 = v11;
  v14 = 0;
  v15 = 0;
  v16 = v10 - v11;
  while (1)
  {
    JCColor::JCColor(v22, (v12 + v14));
    if (v22 != a3)
    {
      v17 = JCColor::Luminance(v22);
      v18 = v16 < 0.0;
      v19 = v17 - v13;
      if (v19 <= 0.0)
      {
        v18 = 0;
      }

      v20 = v19 >= 0.0 || v16 <= 0.0;
      if (v20 && !v18 && (!a5 || !JCColor::IsCloseToColor(v22, a3)) && JCColor::ContrastsEnoughWithColor(v22, a2))
      {
        break;
      }
    }

    JCColor::~JCColor(v22);
    ++v15;
    v12 = *v9;
    v14 += 16;
    if (v15 >= ((v9[1] - *v9) >> 4))
    {
      return 0;
    }
  }

  JCColor::operator=(a4, v22);
  JCColor::~JCColor(v22);
  return 1;
}

void JCImageAnalyzer::GetTextShadowColor(CGColorRef *a1@<X1>, CGColorRef *a2@<X2>, JCColor *a3@<X8>)
{
  JCColor::JCColor(v19);
  v7 = JCColor::Luminance(a1);
  if (v7 >= JCColor::Luminance(a2))
  {
    v15 = JCColor::BlackColor(v8);
    JCColor::operator=(v19, v15);
    v16 = JCColor::Luminance(v19);
    v17 = vabdd_f64(v16, JCColor::Luminance(a2));
    v18 = v17 + v17;
    v13 = 0.0;
    if (v18 >= 0.0)
    {
      v13 = v18;
      if (v18 > 1.0)
      {
        v13 = 1.0;
      }
    }

    v14 = -0.599999994;
  }

  else
  {
    v9 = JCColor::WhiteColor(v8);
    JCColor::operator=(v19, v9);
    v10 = JCColor::Luminance(v19);
    v11 = vabdd_f64(v10, JCColor::Luminance(a2));
    v12 = v11 + v11;
    v13 = 0.0;
    if (v12 >= 0.0)
    {
      v13 = v12;
      if (v12 > 1.0)
      {
        v13 = 1.0;
      }
    }

    v14 = -0.699999988;
  }

  JCColor::JCColor(a3, v19, v13 * v14 + 1.0);
  JCColor::~JCColor(v19);
}

void std::vector<JCColor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        JCColor::~JCColor((v4 - 16));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<sortColorEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        JCColor::~JCColor((v4 - 16));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

__n128 std::__function::__func<std::__bind<void (JCImageAnalyzer::*)(CGPoint,JCHSVColor &,unsigned int),JCImageAnalyzer*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<void (JCImageAnalyzer::*)(CGPoint,JCHSVColor &,unsigned int),JCImageAnalyzer*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,void ()(CGPoint,JCHSVColor &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285D259A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (JCImageAnalyzer::*)(CGPoint,JCHSVColor &,unsigned int),JCImageAnalyzer*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<void (JCImageAnalyzer::*)(CGPoint,JCHSVColor &,unsigned int),JCImageAnalyzer*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,void ()(CGPoint,JCHSVColor &,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void (JCImageAnalyzer::*)(CGPoint,JCHSVColor &,unsigned int),JCImageAnalyzer*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>::operator()[abi:ne200100]<CGPoint,JCHSVColor &,unsigned int>(uint64_t a1, double *a2, uint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  return v5(v6, a3, *a4, *a2, a2[1]);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(CGPoint,JCHSVColor &,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278FC1BF0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sortHueEntry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,sortHueEntry*>(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortHueEntry *,BOOL (*&)(sortHueEntry,sortHueEntry)>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortHueEntry *,BOOL (*&)(sortHueEntry,sortHueEntry)>(v8, a2, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(v8, v49, a3);
    v9 = (v49 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(v49 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,false>(v8, v49, a3, -v11, a5 & 1);
      v9 = (v49 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,0>(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortHueEntry *,BOOL (*&)(sortHueEntry,sortHueEntry)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortHueEntry *,BOOL (*&)(sortHueEntry,sortHueEntry)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*,sortHueEntry*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortHueEntry,sortHueEntry),sortHueEntry*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t std::vector<sortColorEntry>::__emplace_back_slow_path<sortColorEntry const&>(uint64_t *a1, _OWORD *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<sortHueEntry>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<sortColorEntry>>(a1, v7);
  }

  v14 = 0;
  v15 = (32 * v2);
  v16 = (32 * v2);
  *v15 = *a2;
  JCColor::JCColor((32 * v2 + 16), (a2 + 1));
  *&v16 = v16 + 32;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sortColorEntry>,sortColorEntry*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<sortColorEntry>::~__split_buffer(&v14);
  return v13;
}

void sub_249FD3038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<sortColorEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sortColorEntry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sortColorEntry>,sortColorEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      *(a4 + v7) = *(v6 + v7);
      JCColor::JCColor((a4 + v7 + 16), (v6 + v7 + 16));
      v7 += 32;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      JCColor::~JCColor((v6 + 16));
      v6 += 32;
    }
  }
}

void sub_249FD311C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 16);
    do
    {
      JCColor::~JCColor(v5);
      v5 = (v6 - 32);
      v4 += 32;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<sortColorEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    JCColor::~JCColor((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(CGColorRef *a1, CGColorRef *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v30 = a2;
  v31 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 5;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3uLL:
          v30 = (v7 - 2);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v8, v8 + 4, v7 - 2, a3);
          return;
        case 4uLL:
          v30 = (v7 - 2);
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v8, v8 + 4, v8 + 8, (v7 - 2), a3);
          return;
        case 5uLL:
          v30 = (v7 - 2);
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v8, v8 + 4, v8 + 8, v8 + 12, (v7 - 2), a3);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v20 = *a3;
        v30 = (v7 - 2);
        v28 = *(v7 - 2);
        JCColor::JCColor(v29, (v7 - 1));
        v26 = *v31;
        JCColor::JCColor(v27, (v31 + 2));
        v21 = v20(&v28, &v26);
        JCColor::~JCColor(v27);
        JCColor::~JCColor(v29);
        if (v21)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v31, &v30);
        }

        return;
      }
    }

    if (v10 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v8, v7, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v8, v7, a3);
      }

      return;
    }

    if (i == 1)
    {
      break;
    }

    v11 = v10 >> 1;
    v12 = v7 - 2;
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(&v8[4 * (v10 >> 1)], v8, v12, a3);
      v8 = v31;
      if (a5)
      {
LABEL_17:
        v7 = v30;
        goto LABEL_18;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v8, &v8[4 * (v10 >> 1)], v12, a3);
      v13 = v30;
      v8 = v31;
      v14 = &v31[4 * v11];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v31 + 4, v14 - 4, v30 - 4, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v8 + 8, v14 + 4, v13 - 6, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v14 - 4, v14, v14 + 2, a3);
      v32 = *v8;
      JCColor::JCColor(v33, (v8 + 2));
      *v8 = *v14;
      JCColor::operator=(v8 + 2, v14 + 2);
      *v14 = v32;
      JCColor::operator=(v14 + 2, v33);
      JCColor::~JCColor(v33);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v15 = *a3;
    v24 = *(v8 - 2);
    JCColor::JCColor(v25, (v8 - 2));
    v22 = *v8;
    JCColor::JCColor(v23, (v8 + 2));
    v16 = v15(&v24, &v22);
    JCColor::~JCColor(v23);
    JCColor::~JCColor(v25);
    v7 = v30;
    if ((v16 & 1) == 0)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(v8, v30, a3);
LABEL_26:
      a5 = 0;
      v31 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v17 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(v8, v7, a3);
    if ((v18 & 1) == 0)
    {
      goto LABEL_25;
    }

    v19 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v8, v17, a3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v17 + 4, v7, a3))
    {
      if (v19)
      {
        return;
      }

      v30 = v17;
      v7 = v17;
    }

    else
    {
      if (!v19)
      {
LABEL_25:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(v8, v17, a3, -i, a5 & 1);
        v8 = v17 + 4;
        goto LABEL_26;
      }

      v31 = v17 + 4;
      v8 = v17 + 4;
    }
  }

  if (v8 != v7)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,sortColorEntry*>(v8, v7, v7, a3);
  }
}

void sub_249FD3530(_Unwind_Exception *a1)
{
  JCColor::~JCColor((v2 + 16));
  JCColor::~JCColor((v1 + 16));
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(CGColorRef **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  JCColor::JCColor(v5, (*a1 + 2));
  *v2 = *v3;
  JCColor::operator=(v2 + 2, (v3 + 16));
  *v3 = v4;
  JCColor::operator=((v3 + 16), v5);
  JCColor::~JCColor(v5);
}

void sub_249FD35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  JCColor::~JCColor(va);
  _Unwind_Resume(a1);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(CGColorRef *a1, CGColorRef *a2, __int128 *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  v6 = a1;
  v37 = a2;
  v38 = a1;
  v36 = a3;
  v7 = *a4;
  v34 = *a2;
  JCColor::JCColor(v35, (a2 + 2));
  v32 = *v6;
  JCColor::JCColor(v33, (v6 + 2));
  LOBYTE(v6) = v7(&v34, &v32);
  JCColor::~JCColor(v33);
  JCColor::~JCColor(v35);
  v8 = *a4;
  if (v6)
  {
    v22 = *a3;
    JCColor::JCColor(v23, (a3 + 1));
    v20 = *v37;
    JCColor::JCColor(v21, (v37 + 2));
    v9 = v8(&v22, &v20);
    JCColor::~JCColor(v21);
    JCColor::~JCColor(v23);
    v10 = &v38;
    if (v9)
    {
LABEL_5:
      v12 = &v36;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(v10, v12);
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v38, &v37);
    v11 = *a4;
    v18 = *v36;
    JCColor::JCColor(v19, (v36 + 1));
    v16 = *v37;
    JCColor::JCColor(v17, (v37 + 2));
    LODWORD(v11) = v11(&v18, &v16);
    JCColor::~JCColor(v17);
    JCColor::~JCColor(v19);
    if (v11)
    {
      v10 = &v37;
      goto LABEL_5;
    }

    return 1;
  }

  v30 = *a3;
  JCColor::JCColor(v31, (a3 + 1));
  v28 = *v37;
  JCColor::JCColor(v29, (v37 + 2));
  v13 = v8(&v30, &v28);
  JCColor::~JCColor(v29);
  JCColor::~JCColor(v31);
  if (v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v37, &v36);
    v14 = *a4;
    v26 = *v37;
    JCColor::JCColor(v27, (v37 + 2));
    v24 = *v38;
    JCColor::JCColor(v25, (v38 + 2));
    LODWORD(v14) = v14(&v26, &v24);
    JCColor::~JCColor(v25);
    JCColor::~JCColor(v27);
    if (v14)
    {
      v10 = &v38;
      v12 = &v37;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

void sub_249FD387C(_Unwind_Exception *a1)
{
  JCColor::~JCColor((v2 + 16));
  JCColor::~JCColor(v1);
  _Unwind_Resume(a1);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(CGColorRef *a1, CGColorRef *a2, CGColorRef *a3, uint64_t a4, uint64_t (**a5)(__int128 *, __int128 *))
{
  v6 = a4;
  v29 = a2;
  v30 = a1;
  v27 = a4;
  v28 = a3;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a2, a3, a5);
  v10 = *a5;
  v25 = *v6;
  JCColor::JCColor(v26, (v6 + 1));
  v23 = *a3;
  JCColor::JCColor(v24, (a3 + 2));
  LODWORD(v6) = v10(&v25, &v23);
  JCColor::~JCColor(v24);
  JCColor::~JCColor(v26);
  if (v6)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v28, &v27);
    v11 = *a5;
    v21 = *v28;
    JCColor::JCColor(v22, (v28 + 2));
    v19 = *a2;
    JCColor::JCColor(v20, (a2 + 2));
    v12 = v11(&v21, &v19);
    JCColor::~JCColor(v20);
    JCColor::~JCColor(v22);
    if (v12)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v29, &v28);
      v13 = *a5;
      v17 = *v29;
      JCColor::JCColor(v18, (v29 + 2));
      v15 = *a1;
      JCColor::JCColor(v16, (a1 + 2));
      v14 = v13(&v17, &v15);
      JCColor::~JCColor(v16);
      JCColor::~JCColor(v18);
      if (v14)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v30, &v29);
      }
    }
  }
}

void sub_249FD3A78(_Unwind_Exception *a1)
{
  JCColor::~JCColor((v2 + 16));
  JCColor::~JCColor(v1);
  _Unwind_Resume(a1);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(CGColorRef *a1, CGColorRef *a2, CGColorRef *a3, CGColorRef *a4, uint64_t a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  v7 = a5;
  v38 = a2;
  v39 = a1;
  v36 = a4;
  v37 = a3;
  v35 = a5;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v33 = *v7;
  JCColor::JCColor(v34, (v7 + 1));
  v31 = *a4;
  JCColor::JCColor(v32, (a4 + 2));
  LODWORD(v7) = v12(&v33, &v31);
  JCColor::~JCColor(v32);
  JCColor::~JCColor(v34);
  if (v7)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v36, &v35);
    v13 = *a6;
    v29 = *v36;
    JCColor::JCColor(v30, (v36 + 2));
    v27 = *a3;
    JCColor::JCColor(v28, (a3 + 2));
    v14 = v13(&v29, &v27);
    JCColor::~JCColor(v28);
    JCColor::~JCColor(v30);
    if (v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v37, &v36);
      v15 = *a6;
      v25 = *v37;
      JCColor::JCColor(v26, (v37 + 2));
      v23 = *a2;
      JCColor::JCColor(v24, (a2 + 2));
      v16 = v15(&v25, &v23);
      JCColor::~JCColor(v24);
      JCColor::~JCColor(v26);
      if (v16)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v38, &v37);
        v17 = *a6;
        v21 = *v38;
        JCColor::JCColor(v22, (v38 + 2));
        v19 = *a1;
        JCColor::JCColor(v20, (a1 + 2));
        v18 = v17(&v21, &v19);
        JCColor::~JCColor(v20);
        JCColor::~JCColor(v22);
        if (v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v39, &v38);
        }
      }
    }
  }
}

void sub_249FD3CD8(_Unwind_Exception *a1)
{
  JCColor::~JCColor((v2 + 16));
  JCColor::~JCColor(v1);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        v10 = *a3;
        v24 = *v5;
        JCColor::JCColor(v25, (v8 + 3));
        v22 = *v8;
        JCColor::JCColor(v23, (v8 + 1));
        LODWORD(v10) = v10(&v24, &v22);
        JCColor::~JCColor(v23);
        JCColor::~JCColor(v25);
        if (v10)
        {
          v20 = *v9;
          JCColor::JCColor(v21, (v8 + 3));
          v11 = v7;
          while (1)
          {
            v12 = v11;
            v13 = a1 + v11;
            *(v13 + 2) = *v13;
            JCColor::operator=(v13 + 6, v13 + 2);
            if (!v12)
            {
              break;
            }

            v14 = *a3;
            v18 = v20;
            JCColor::JCColor(v19, v21);
            v16 = *(a1 + v12 - 32);
            JCColor::JCColor(v17, (a1 + v12 - 16));
            LOBYTE(v14) = v14(&v18, &v16);
            JCColor::~JCColor(v17);
            JCColor::~JCColor(v19);
            v11 = v12 - 32;
            if ((v14 & 1) == 0)
            {
              v15 = (a1 + v12);
              goto LABEL_10;
            }
          }

          v15 = a1;
LABEL_10:
          *v15 = v20;
          JCColor::operator=((a1 + v12 + 16), v21);
          JCColor::~JCColor(v21);
        }

        v5 = v9 + 2;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v7 = (a1 + 1);
      do
      {
        v8 = v5;
        v9 = *a3;
        v20 = *v5;
        JCColor::JCColor(v21, (v4 + 3));
        v18 = *v4;
        JCColor::JCColor(v19, (v4 + 1));
        LODWORD(v9) = v9(&v20, &v18);
        JCColor::~JCColor(v19);
        JCColor::~JCColor(v21);
        if (v9)
        {
          v16 = *v8;
          JCColor::JCColor(v17, (v4 + 3));
          v10 = v7;
          do
          {
            *(v10 + 1) = *(v10 - 1);
            JCColor::operator=(v10 + 4, v10);
            v11 = *a3;
            v14 = v16;
            JCColor::JCColor(v15, v17);
            v12 = *(v10 - 3);
            v10 -= 4;
            JCColor::JCColor(v13, v10);
            LOBYTE(v11) = v11(&v14, &v12);
            JCColor::~JCColor(v13);
            JCColor::~JCColor(v15);
          }

          while ((v11 & 1) != 0);
          *(v10 + 1) = v16;
          JCColor::operator=(v10 + 4, v17);
          JCColor::~JCColor(v17);
        }

        v5 = v8 + 2;
        v7 += 4;
        v4 = v8;
      }

      while (v8 + 2 != a2);
    }
  }
}

CGColorRef *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(CGColorRef *a1, CGColorRef *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v46 = a2;
  v47 = a1;
  v44 = *a1;
  JCColor::JCColor(v45, (a1 + 2));
  v6 = *a3;
  v42 = v44;
  JCColor::JCColor(v43, v45);
  v40 = *(v4 - 2);
  JCColor::JCColor(v41, (v4 - 2));
  LOBYTE(v6) = v6(&v42, &v40);
  JCColor::~JCColor(v41);
  JCColor::~JCColor(v43);
  if (v6)
  {
    v7 = a1 + 4;
    do
    {
      v47 = v7;
      v8 = *a3;
      v38 = v44;
      JCColor::JCColor(v39, v45);
      v36 = *v7;
      JCColor::JCColor(v37, (v7 + 2));
      LOBYTE(v8) = v8(&v38, &v36);
      JCColor::~JCColor(v37);
      JCColor::~JCColor(v39);
      v7 += 4;
    }

    while ((v8 & 1) == 0);
    v9 = v46;
    v10 = v7 - 4;
    v4 = v46;
  }

  else
  {
    v11 = a1 + 4;
    do
    {
      v10 = v11;
      v47 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = *a3;
      v34 = v44;
      JCColor::JCColor(v35, v45);
      v32 = *v10;
      JCColor::JCColor(v33, (v10 + 2));
      LOBYTE(v12) = v12(&v34, &v32);
      JCColor::~JCColor(v33);
      JCColor::~JCColor(v35);
      v11 = v10 + 4;
    }

    while ((v12 & 1) == 0);
    v9 = v46;
  }

  if (v10 < v4)
  {
    v13 = v9 - 4;
    do
    {
      v46 = v13;
      v14 = *a3;
      v30 = v44;
      JCColor::JCColor(v31, v45);
      v28 = *v13;
      JCColor::JCColor(v29, (v13 + 2));
      LOBYTE(v14) = v14(&v30, &v28);
      JCColor::~JCColor(v29);
      JCColor::~JCColor(v31);
      v13 -= 4;
    }

    while ((v14 & 1) != 0);
    v9 = v46;
    v10 = v47;
  }

  if (v10 < v9)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v47, &v46);
      do
      {
        v47 += 4;
        v15 = *a3;
        v26 = v44;
        JCColor::JCColor(v27, v45);
        v24 = *v47;
        JCColor::JCColor(v25, (v47 + 2));
        LODWORD(v15) = v15(&v26, &v24);
        JCColor::~JCColor(v25);
        JCColor::~JCColor(v27);
      }

      while (!v15);
      do
      {
        v46 -= 4;
        v16 = *a3;
        v22 = v44;
        JCColor::JCColor(v23, v45);
        v20 = *v46;
        JCColor::JCColor(v21, (v46 + 2));
        LOBYTE(v16) = v16(&v22, &v20);
        JCColor::~JCColor(v21);
        JCColor::~JCColor(v23);
      }

      while ((v16 & 1) != 0);
      v10 = v47;
    }

    while (v47 < v46);
  }

  v17 = v10 - 4;
  if (v10 - 4 != a1)
  {
    *a1 = *v17;
    JCColor::operator=(a1 + 2, v10 - 2);
  }

  *v17 = v44;
  JCColor::operator=(v10 - 2, v45);
  v18 = v47;
  JCColor::~JCColor(v45);
  return v18;
}

void sub_249FD4464(_Unwind_Exception *a1)
{
  JCColor::~JCColor((v3 + 16));
  JCColor::~JCColor((v2 + 16));
  JCColor::~JCColor((v1 + 16));
  _Unwind_Resume(a1);
}

CGColorRef *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,sortColorEntry *,BOOL (*&)(sortColorEntry,sortColorEntry)>(CGColorRef *a1, CGColorRef *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v41 = a2;
  v39 = *a1;
  JCColor::JCColor(v40, (a1 + 2));
  v5 = 0;
  do
  {
    v42 = &a1[v5 + 4];
    v6 = *a3;
    v37 = *v42;
    JCColor::JCColor(v38, &a1[v5 + 6]);
    v35 = v39;
    JCColor::JCColor(v36, v40);
    LOBYTE(v6) = v6(&v37, &v35);
    JCColor::~JCColor(v36);
    JCColor::~JCColor(v38);
    v5 += 4;
  }

  while ((v6 & 1) != 0);
  if (v5 == 4)
  {
    v9 = a1 + 4;
    v10 = v41 - 4;
    do
    {
      if (v9 >= v10 + 4)
      {
        break;
      }

      v11 = *a3;
      v41 = v10;
      v33 = *v10;
      JCColor::JCColor(v34, (v10 + 2));
      v31 = v39;
      JCColor::JCColor(v32, v40);
      LOBYTE(v11) = v11(&v33, &v31);
      JCColor::~JCColor(v32);
      JCColor::~JCColor(v34);
      v10 -= 4;
    }

    while ((v11 & 1) == 0);
  }

  else
  {
    v7 = v41 - 4;
    do
    {
      v41 = v7;
      v8 = *a3;
      v29 = *v7;
      JCColor::JCColor(v30, (v7 + 2));
      v27 = v39;
      JCColor::JCColor(v28, v40);
      LOBYTE(v8) = v8(&v29, &v27);
      JCColor::~JCColor(v28);
      JCColor::~JCColor(v30);
      v7 -= 4;
    }

    while ((v8 & 1) == 0);
    v9 = v42;
  }

  v12 = v9;
  if (v9 < v41)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v42, &v41);
      do
      {
        v13 = v42;
        v42 += 4;
        v14 = *a3;
        v25 = *v42;
        JCColor::JCColor(v26, (v13 + 6));
        v23 = v39;
        JCColor::JCColor(v24, v40);
        LOBYTE(v14) = v14(&v25, &v23);
        JCColor::~JCColor(v24);
        JCColor::~JCColor(v26);
      }

      while ((v14 & 1) != 0);
      do
      {
        v15 = v41;
        v41 -= 4;
        v16 = *a3;
        v21 = *v41;
        JCColor::JCColor(v22, (v15 - 2));
        v19 = v39;
        JCColor::JCColor(v20, v40);
        LODWORD(v16) = v16(&v21, &v19);
        JCColor::~JCColor(v20);
        JCColor::~JCColor(v22);
      }

      while (!v16);
      v12 = v42;
    }

    while (v42 < v41);
  }

  v17 = v12 - 4;
  if (v12 - 4 != a1)
  {
    *a1 = *v17;
    JCColor::operator=(a1 + 2, v12 - 2);
  }

  *v17 = v39;
  JCColor::operator=(v12 - 2, v40);
  JCColor::~JCColor(v40);
  return v12 - 4;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(CGColorRef *a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v31 = a2;
  v32 = a1;
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, (a2 - 32), a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a2 - 32, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 32, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v31 = (a2 - 32);
      v29 = *(a2 - 32);
      JCColor::JCColor(v30, (a2 - 16));
      v27 = *a1;
      JCColor::JCColor(v28, (a1 + 2));
      LODWORD(v7) = v7(&v29, &v27);
      JCColor::~JCColor(v28);
      JCColor::~JCColor(v30);
      if (v7)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v32, &v31);
      }

      return 1;
    }
  }

  v8 = a1 + 8;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 4, a3);
  v9 = a1 + 12;
  if (a1 + 12 != a2)
  {
    v10 = 0;
    do
    {
      v11 = *a3;
      v25 = *v9;
      JCColor::JCColor(v26, (v9 + 2));
      v23 = *v8;
      JCColor::JCColor(v24, (v8 + 2));
      v12 = v11(&v25, &v23);
      JCColor::~JCColor(v24);
      JCColor::~JCColor(v26);
      if (v12)
      {
        v21 = *v9;
        JCColor::JCColor(v22, (v9 + 2));
        do
        {
          v13 = v8;
          *(v8 + 2) = *v8;
          JCColor::operator=(v8 + 6, v8 + 2);
          if (v8 == v32)
          {
            break;
          }

          v14 = *a3;
          v19 = v21;
          JCColor::JCColor(v20, v22);
          v17 = *(v8 - 2);
          JCColor::JCColor(v18, (v8 - 2));
          LOBYTE(v14) = v14(&v19, &v17);
          v8 -= 4;
          JCColor::~JCColor(v18);
          JCColor::~JCColor(v20);
        }

        while ((v14 & 1) != 0);
        *v13 = v21;
        JCColor::operator=(v13 + 2, v22);
        if (++v10 == 8)
        {
          v15 = v9 + 4 == v31;
          JCColor::~JCColor(v22);
          return v15;
        }

        JCColor::~JCColor(v22);
      }

      v8 = v9;
      v9 += 4;
    }

    while (v9 != v31);
  }

  return 1;
}

void sub_249FD4B78(_Unwind_Exception *a1)
{
  JCColor::~JCColor((v2 + 16));
  JCColor::~JCColor((v1 + 16));
  _Unwind_Resume(a1);
}

CGColorRef *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,sortColorEntry*>(CGColorRef *a1, CGColorRef *a2, CGColorRef *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  v21 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v20 = v6;
    if (v6 == a3)
    {
      v12 = v6;
    }

    else
    {
      v12 = v6;
      do
      {
        v13 = *a4;
        v18 = *v12;
        JCColor::JCColor(v19, (v12 + 2));
        v16 = *v21;
        JCColor::JCColor(v17, (v21 + 2));
        LODWORD(v13) = v13(&v18, &v16);
        JCColor::~JCColor(v17);
        JCColor::~JCColor(v19);
        if (v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<sortColorEntry *&,sortColorEntry *&>(&v20, &v21);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v21, a4, v8, v21);
        }

        v12 = v20 + 4;
        v20 = v12;
      }

      while (v12 != a3);
      v7 = v21;
      v8 = (v6 - v21) >> 5;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(sortColorEntry,sortColorEntry),sortColorEntry*>(v7, v6, a4, v8);
        v6 -= 4;
      }

      while (v8-- > 2);
      return v20;
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t a1, uint64_t (**a2)(__int128 *, __int128 *), uint64_t a3, CGColorRef *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v24 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v9 = (a4 - a1) >> 4;
      v10 = v9 + 1;
      v11 = (a1 + 32 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3)
      {
        v13 = *a2;
        v41 = *v11;
        JCColor::JCColor(v42, (v11 + 2));
        v39 = *(v11 + 2);
        JCColor::JCColor(v40, (v11 + 6));
        v14 = v13(&v41, &v39);
        JCColor::~JCColor(v40);
        JCColor::~JCColor(v42);
        v15 = 32;
        if (!v14)
        {
          v15 = 0;
        }

        v11 = (v11 + v15);
        if (v14)
        {
          v10 = v12;
        }
      }

      v16 = *a2;
      v37 = *v11;
      JCColor::JCColor(v38, (v11 + 2));
      v35 = *v5;
      JCColor::JCColor(v36, (v5 + 2));
      LOBYTE(v16) = v16(&v37, &v35);
      JCColor::~JCColor(v36);
      JCColor::~JCColor(v38);
      if ((v16 & 1) == 0)
      {
        v33 = *v5;
        JCColor::JCColor(v34, (v5 + 2));
        do
        {
          v17 = v11;
          *v5 = *v11;
          JCColor::operator=(v5 + 2, v11 + 2);
          if (v24 < v10)
          {
            break;
          }

          v18 = (2 * v10) | 1;
          v11 = (a1 + 32 * v18);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v18;
          }

          else
          {
            v19 = *a2;
            v31 = *v11;
            JCColor::JCColor(v32, (v11 + 2));
            v29 = *(v11 + 2);
            JCColor::JCColor(v30, (v11 + 6));
            v20 = v19(&v31, &v29);
            JCColor::~JCColor(v30);
            JCColor::~JCColor(v32);
            v21 = 32;
            if (!v20)
            {
              v21 = 0;
            }

            v11 = (v11 + v21);
            if (!v20)
            {
              v10 = v18;
            }
          }

          v22 = *a2;
          v27 = *v11;
          JCColor::JCColor(v28, (v11 + 2));
          v25 = v33;
          JCColor::JCColor(v26, v34);
          v23 = v22(&v27, &v25);
          JCColor::~JCColor(v26);
          JCColor::~JCColor(v28);
          v5 = v17;
        }

        while (!v23);
        *v17 = v33;
        JCColor::operator=(v17 + 2, v34);
        JCColor::~JCColor(v34);
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(sortColorEntry,sortColorEntry),sortColorEntry*>(CGColorRef *a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v12 = *a1;
    JCColor::JCColor(v13, (a1 + 2));
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, a3, a4);
    v9 = v8;
    v10 = (a2 - 32);
    if (v8 == (a2 - 32))
    {
      *v8 = v12;
      JCColor::operator=(v8 + 2, v13);
    }

    else
    {
      *v8 = *v10;
      v11 = (a2 - 16);
      JCColor::operator=(v8 + 2, v11);
      *v10 = v12;
      JCColor::operator=(v11, v13);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, (v9 + 4), a3, ((v9 + 4) - a1) >> 5);
    }

    JCColor::~JCColor(v13);
  }
}

CGColorRef *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(CGColorRef *a1, uint64_t (**a2)(__int128 *, __int128 *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v17 = *v9;
      JCColor::JCColor(v18, (v8 + 6));
      v15 = *(v8 + 4);
      JCColor::JCColor(v16, (v8 + 10));
      LODWORD(v12) = v12(&v17, &v15);
      v13 = v8 + 8;
      JCColor::~JCColor(v16);
      JCColor::~JCColor(v18);
      if (v12)
      {
        v9 = v13;
        v10 = v11;
      }
    }

    *a1 = *v9;
    JCColor::operator=(a1 + 2, v9 + 2);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void sub_249FD52C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  JCColor::~JCColor(va);
  _Unwind_Resume(a1);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 32 * (v4 >> 1));
    v10 = *a3;
    v22 = *v9;
    JCColor::JCColor(v23, (v9 + 2));
    v20 = *(a2 - 32);
    JCColor::JCColor(v21, (a2 - 16));
    LODWORD(v10) = v10(&v22, &v20);
    JCColor::~JCColor(v21);
    JCColor::~JCColor(v23);
    if (v10)
    {
      v11 = (a2 - 32);
      v18 = *(a2 - 32);
      JCColor::JCColor(v19, (a2 - 16));
      do
      {
        v12 = v9;
        *v11 = *v9;
        JCColor::operator=(v11 + 2, v9 + 2);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 32 * v8);
        v13 = *a3;
        v16 = *v9;
        JCColor::JCColor(v17, (v9 + 2));
        v14 = v18;
        JCColor::JCColor(v15, v19);
        LOBYTE(v13) = v13(&v16, &v14);
        JCColor::~JCColor(v15);
        JCColor::~JCColor(v17);
        v11 = v12;
      }

      while ((v13 & 1) != 0);
      *v12 = v18;
      JCColor::operator=(v12 + 2, v19);
      JCColor::~JCColor(v19);
    }
  }
}

uint64_t std::vector<JCColor>::__emplace_back_slow_path<JCColor const&>(uint64_t a1, const JCColor *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<sortHueEntry>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<JCColor>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  JCColor::JCColor((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<JCColor>,JCColor*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<JCColor>::~__split_buffer(&v14);
  return v13;
}

void sub_249FD55B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<JCColor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<JCColor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<JCColor>,JCColor*>(int a1, JCColor *a2, JCColor *a3, JCColor *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      JCColor::JCColor(this, v8);
      v8 = (v8 + 16);
      this = (this + 16);
      v7 -= 16;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      JCColor::~JCColor(v6);
      v6 = (v6 + 16);
    }
  }
}

void sub_249FD5690(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 16);
    do
    {
      JCColor::~JCColor(v4);
      v4 = (v5 - 16);
      v2 += 16;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<JCColor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    JCColor::~JCColor((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_249FD57B8(uint64_t a1)
{
  v2 = sub_249FD5EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD57F4(uint64_t a1)
{
  v2 = sub_249FD5EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD5830()
{
  v1 = 0x72616C7563726963;
  if (*v0 != 1)
  {
    v1 = 0x6C6172697073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x724774657366666FLL;
  }
}

uint64_t sub_249FD588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249FDD1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FD58B4(uint64_t a1)
{
  v2 = sub_249FD5E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD58F0(uint64_t a1)
{
  v2 = sub_249FD5E14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD592C(uint64_t a1)
{
  v2 = sub_249FD5F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD5968(uint64_t a1)
{
  v2 = sub_249FD5F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD59A4(uint64_t a1)
{
  v2 = sub_249FD5E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD59E0(uint64_t a1)
{
  v2 = sub_249FD5E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiPosterLayoutStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE58);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20]();
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE60);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20]();
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE68);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FD5E14();
  sub_24A021D28();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_249FD5EBC();
      v9 = v21;
      sub_24A021B98();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_249FD5E68();
      v9 = v24;
      sub_24A021B98();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_249FD5F10();
    sub_24A021B98();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_249FD5E14()
{
  result = qword_2810DA4A8[0];
  if (!qword_2810DA4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810DA4A8);
  }

  return result;
}

unint64_t sub_249FD5E68()
{
  result = qword_2810DA490;
  if (!qword_2810DA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA490);
  }

  return result;
}

unint64_t sub_249FD5EBC()
{
  result = qword_2810DA478;
  if (!qword_2810DA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA478);
  }

  return result;
}

unint64_t sub_249FD5F10()
{
  result = qword_2810DA460;
  if (!qword_2810DA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA460);
  }

  return result;
}

uint64_t EmojiPosterLayoutStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE78);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20]();
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE80);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE88);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE90);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FD5E14();
  v13 = v43;
  sub_24A021D08();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_24A021B88();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_249FD5EBC();
          v27 = v34;
          sub_24A021AF8();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_249FD5E68();
          v31 = v34;
          sub_24A021AF8();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_249FD5F10();
        v29 = v34;
        sub_24A021AF8();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_24A021A08();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE98);
  *v23 = &type metadata for EmojiPosterLayoutStyle;
  sub_24A021B08();
  sub_24A0219F8();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_249FD6554()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_249FD6604()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_249FD6654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249FDD87C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FD667C(uint64_t a1)
{
  v2 = sub_249FD6BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD66B8(uint64_t a1)
{
  v2 = sub_249FD6BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD66F4(uint64_t a1)
{
  v2 = sub_249FD6C1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD6730(uint64_t a1)
{
  v2 = sub_249FD6C1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD676C(uint64_t a1)
{
  v2 = sub_249FD6C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD67A8(uint64_t a1)
{
  v2 = sub_249FD6C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD67E4(uint64_t a1)
{
  v2 = sub_249FD6CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD6820(uint64_t a1)
{
  v2 = sub_249FD6CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiPosterSizeVariant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEA0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20]();
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEA8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20]();
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEB0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEB8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FD6BC8();
  sub_24A021D28();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_249FD6C70();
      v9 = v21;
      sub_24A021B98();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_249FD6C1C();
      v9 = v24;
      sub_24A021B98();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_249FD6CC4();
    sub_24A021B98();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_249FD6BC8()
{
  result = qword_2810DA438;
  if (!qword_2810DA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA438);
  }

  return result;
}

unint64_t sub_249FD6C1C()
{
  result = qword_2810DA420;
  if (!qword_2810DA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA420);
  }

  return result;
}

unint64_t sub_249FD6C70()
{
  result = qword_2810DA3F0;
  if (!qword_2810DA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3F0);
  }

  return result;
}

unint64_t sub_249FD6CC4()
{
  result = qword_2810DA408;
  if (!qword_2810DA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA408);
  }

  return result;
}

uint64_t EmojiPosterSizeVariant.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEC0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20]();
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEC8);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DED0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DED8);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FD6BC8();
  v13 = v43;
  sub_24A021D08();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_24A021B88();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_249FD6C70();
          v27 = v34;
          sub_24A021AF8();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_249FD6C1C();
          v31 = v34;
          sub_24A021AF8();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_249FD6CC4();
        v29 = v34;
        sub_24A021AF8();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_24A021A08();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE98);
  *v23 = &type metadata for EmojiPosterSizeVariant;
  sub_24A021B08();
  sub_24A0219F8();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_249FD7308(uint64_t a1)
{
  v2 = sub_249FD7CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD7344(uint64_t a1)
{
  v2 = sub_249FD7CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD7380()
{
  v1 = *v0;
  v2 = 0x64696C6F73;
  v3 = 0x72476C6169646172;
  v4 = 0x6172476D6F6F6C62;
  if (v1 != 3)
  {
    v4 = 0x657474656E676976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72477261656E696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_249FD7440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249FDD988(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FD7468(uint64_t a1)
{
  v2 = sub_249FD7C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD74A4(uint64_t a1)
{
  v2 = sub_249FD7C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD74E0(uint64_t a1)
{
  v2 = sub_249FD7D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD751C(uint64_t a1)
{
  v2 = sub_249FD7D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD7558(uint64_t a1)
{
  v2 = sub_249FD7CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD7594(uint64_t a1)
{
  v2 = sub_249FD7CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD75D0(uint64_t a1)
{
  v2 = sub_249FD7DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD760C(uint64_t a1)
{
  v2 = sub_249FD7DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FD7648(uint64_t a1)
{
  v2 = sub_249FD7C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD7684(uint64_t a1)
{
  v2 = sub_249FD7C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiPosterBackgroundStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEE0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20]();
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEE8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20]();
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEF0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20]();
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DEF8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20]();
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF00);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF08);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20]();
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_249FD7C00();
  sub_24A021D28();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_249FD7D50();
      v31 = v45;
      sub_24A021B98();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_249FD7DA4();
      v31 = v45;
      sub_24A021B98();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_249FD7CFC();
      v22 = v33;
      v23 = v45;
      sub_24A021B98();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_249FD7CA8();
      v22 = v36;
      v23 = v45;
      sub_24A021B98();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_249FD7C54();
      v22 = v39;
      v23 = v45;
      sub_24A021B98();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_249FD7C00()
{
  result = qword_2810DA388;
  if (!qword_2810DA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA388);
  }

  return result;
}

unint64_t sub_249FD7C54()
{
  result = qword_27EF2DF10;
  if (!qword_27EF2DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2DF10);
  }

  return result;
}

unint64_t sub_249FD7CA8()
{
  result = qword_2810DA348;
  if (!qword_2810DA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA348);
  }

  return result;
}

unint64_t sub_249FD7CFC()
{
  result = qword_27EF2DF18;
  if (!qword_27EF2DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2DF18);
  }

  return result;
}

unint64_t sub_249FD7D50()
{
  result = qword_27EF2DF20;
  if (!qword_27EF2DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2DF20);
  }

  return result;
}

unint64_t sub_249FD7DA4()
{
  result = qword_2810DA370;
  if (!qword_2810DA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA370);
  }

  return result;
}

uint64_t _s11EmojiPoster0aB11LayoutStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24A021CB8();
  MEMORY[0x24C20C980](v1);
  return sub_24A021CE8();
}

uint64_t EmojiPosterBackgroundStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF28);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20]();
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF30);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20]();
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF38);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20]();
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF40);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF48);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF50);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_249FD7C00();
  v16 = v46;
  sub_24A021D08();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_24A021B88();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_24A021A08();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE98);
      *v26 = &type metadata for EmojiPosterBackgroundStyle;
      sub_24A021B08();
      sub_24A0219F8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_249FD7D50();
          sub_24A021AF8();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_249FD7DA4();
          sub_24A021AF8();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_249FD7CFC();
          sub_24A021AF8();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_249FD7CA8();
            v29 = v42;
            sub_24A021AF8();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_249FD7C54();
            sub_24A021AF8();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

void static EmojiPosterBackgroundColor.white(withAlpha:)(uint64_t a1@<X8>, double a2@<D0>)
{
  __asm { FMOV            V1.2D, #1.0 }

  *a1 = _Q1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = a2;
}

EmojiPoster::EmojiPosterBackgroundColor __swiftcall EmojiPosterBackgroundColor.init(red:green:blue:alpha:)(Swift::Double red, Swift::Double green, Swift::Double blue, Swift::Double alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

void static EmojiPosterBackgroundColor.black(withAlpha:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
}

double static EmojiPosterBackgroundColor.clear()@<D0>(_OWORD *a1@<X8>)
{
  result = 1.0;
  __asm { FMOV            V1.2D, #1.0 }

  *a1 = _Q1;
  a1[1] = xmmword_24A0246E0;
  return result;
}

EmojiPoster::EmojiPosterBackgroundColor __swiftcall EmojiPosterBackgroundColor.init(_:)(UIColor a1)
{
  v3 = v1;
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = 0.0;
  v11[0] = 0;
  v8 = 0.0;
  v9 = 0.0;
  [(objc_class *)a1.super.isa getRed:v11 green:&v10 blue:&v9 alpha:&v8];

  v5 = v10;
  v4 = *v11;
  v7 = v8;
  v6 = v9;
  *v3 = v11[0];
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  result.alpha = v7;
  result.blue = v6;
  result.green = v5;
  result.red = v4;
  return result;
}

uint64_t sub_249FD86A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E148);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_24A0246F0;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  v7 = sub_24A0216A8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24A0246F0;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = v2;
  v9 = sub_24A0216A8();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A0246F0;
  *(v12 + 56) = v5;
  *(v12 + 64) = v6;
  *(v12 + 32) = v3;
  v13 = sub_24A0216A8();
  v15 = v14;
  MEMORY[0x24C20C3F0](44, 0xE100000000000000);
  MEMORY[0x24C20C3F0](v9, v11);

  MEMORY[0x24C20C3F0](44, 0xE100000000000000);
  MEMORY[0x24C20C3F0](v13, v15);

  return v7;
}

UIColor __swiftcall EmojiPosterBackgroundColor.uiColor()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v5 initWithRed:v1 green:v2 blue:v3 alpha:v4];
}

uint64_t sub_249FD88D0()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_249FD8930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249FDDB54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FD8958(uint64_t a1)
{
  v2 = sub_249FD8BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD8994(uint64_t a1)
{
  v2 = sub_249FD8BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiPosterBackgroundColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FD8BA4();
  sub_24A021D28();
  v8[15] = 0;
  sub_24A021BE8();
  if (!v1)
  {
    v8[14] = 1;
    sub_24A021BE8();
    v8[13] = 2;
    sub_24A021BE8();
    v8[12] = 3;
    sub_24A021BE8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_249FD8BA4()
{
  result = qword_2810DA3B0;
  if (!qword_2810DA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810DA3B0);
  }

  return result;
}

uint64_t EmojiPosterBackgroundColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FD8BA4();
  sub_24A021D08();
  if (!v2)
  {
    v22 = 0;
    sub_24A021B58();
    v10 = v9;
    v21 = 1;
    sub_24A021B58();
    v12 = v11;
    v20 = 2;
    sub_24A021B58();
    v15 = v14;
    v19 = 3;
    sub_24A021B58();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static EmojiPosterConfiguration.localizedString(forStyle:sizeVariant:)(char *a1, char *a2)
{
  v2 = *a2;
  v8 = *a1;
  v7 = v2;
  _s11EmojiPoster0aB13ConfigurationV21layoutLocalizationKey8forStyle11sizeVariantSSAA0ab6LayoutH0O_AA0ab4SizeJ0OtFZ_0(&v8, &v7);
  type metadata accessor for BackgroundViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_24A021418();

  return v5;
}

uint64_t EmojiPosterConfiguration.customIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmojiPosterConfiguration.backgroundConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[4];
  v10 = v1[3];
  v2 = v10;
  v11 = v3;
  v12[0] = v1[5];
  v4 = v12[0];
  *(v12 + 10) = *(v1 + 90);
  v6 = v1[2];
  v9[0] = v1[1];
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 74) = *(v12 + 10);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_249FDDE00(v9, &v8);
}

uint64_t EmojiPosterConfiguration.emojis.getter()
{
  v1 = *(v0 + 120);
  if (v1)
  {
  }

  else
  {
    v3 = *(v0 + 112);
    v4 = *(v3 + 16);
    v1 = MEMORY[0x277D84F90];
    if (v4)
    {
      v11 = MEMORY[0x277D84F90];
      sub_249FDCC00(0, v4, 0);
      v1 = v11;
      v5 = (v3 + 40);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v11 + 16);
        v8 = *(v11 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_249FDCC00((v8 > 1), v9 + 1, 1);
        }

        *(v11 + 16) = v9 + 1;
        v10 = v11 + 24 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        *(v10 + 48) = 0;
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  return v1;
}

uint64_t EmojiPosterConfiguration.localizedLayoutName.getter()
{
  v1 = *(v0 + 107);
  v4 = *(v0 + 106);
  v3 = v1;
  return _s11EmojiPoster0aB13ConfigurationV21layoutLocalizationKey8forStyle11sizeVariantSSAA0ab6LayoutH0O_AA0ab4SizeJ0OtFZ_0(&v4, &v3);
}

void EmojiPosterConfiguration.init(backgroundConfiguration:layoutStyle:sizeVariant:emoji:usesParalax:)(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v14 = *(a1 + 72);
  v15 = a1[88];
  v16 = a1[89];
  v17 = *a2;
  v18 = *a3;
  if (v16)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 8);
    v23 = *(a1 + 72);
    v24 = *(a1 + 56);
    v25 = *(a1 + 40);
    v20 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(a4);
    if (v20)
    {
      EmojiPosterBackgroundColor.init(_:)(v20);
      v10 = v26;
      v11 = v27;
      v15 = 1;
      v16 = 1;
      v13 = v24;
      v12 = v25;
      v14 = v23;
    }

    else
    {
      *v28 = *(a1 + 1);
      *&v28[3] = *(a1 + 1);
      v13 = v24;
      v12 = v25;
      v10 = v22;
      v14 = v23;
      v11 = v21;
    }
  }

  else
  {
    *v28 = *(a1 + 1);
    *&v28[3] = *(a1 + 1);
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = v9;
  *(a6 + 17) = *v28;
  *(a6 + 20) = *&v28[3];
  *(a6 + 24) = v10;
  *(a6 + 40) = v11;
  *(a6 + 56) = v12;
  *(a6 + 72) = v13;
  *(a6 + 88) = v14;
  *(a6 + 104) = v15;
  *(a6 + 105) = v16;
  *(a6 + 106) = v17;
  *(a6 + 107) = v18;
  *(a6 + 112) = MEMORY[0x277D84F90];
  *(a6 + 120) = a4;
  *(a6 + 128) = a5 & 1;
}

void EmojiPosterConfiguration.init(identifier:backgroundConfiguration:layoutStyle:sizeVariant:emoji:usesParalax:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 24);
  v16 = *(a3 + 40);
  v17 = *(a3 + 56);
  v18 = *(a3 + 72);
  v19 = a3[88];
  v20 = a3[89];
  v21 = *a4;
  v22 = *a5;
  if (v20)
  {
    v24 = *(a3 + 24);
    v25 = *(a3 + 8);
    v27 = *(a3 + 72);
    v28 = *(a3 + 56);
    v29 = *(a3 + 40);
    v23 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(a6);
    if (v23)
    {
      EmojiPosterBackgroundColor.init(_:)(v23);
      v14 = v30;
      v15 = v31;
      v19 = 1;
      v20 = 1;
      v17 = v28;
      v16 = v29;
      v18 = v27;
    }

    else
    {
      *v32 = *(a3 + 1);
      *&v32[3] = *(a3 + 1);
      v17 = v28;
      v16 = v29;
      v18 = v27;
      v15 = v24;
      v14 = v25;
    }
  }

  else
  {
    *v32 = *(a3 + 1);
    *&v32[3] = *(a3 + 1);
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v13;
  *(a8 + 17) = *v32;
  *(a8 + 20) = *&v32[3];
  *(a8 + 24) = v14;
  *(a8 + 40) = v15;
  *(a8 + 56) = v16;
  *(a8 + 72) = v17;
  *(a8 + 88) = v18;
  *(a8 + 104) = v19;
  *(a8 + 105) = v20;
  *(a8 + 106) = v21;
  *(a8 + 107) = v22;
  *(a8 + 112) = MEMORY[0x277D84F90];
  *(a8 + 120) = a6;
  *(a8 + 128) = a7 & 1;
}

__n128 EmojiPosterBackgroundConfiguration.init(backgroundStyle:backgroundColor:gradientProperties:isSuggestedColor:shouldRecalculateSuggestedColor:)@<Q0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a2[1];
  *(a6 + 8) = *a2;
  *(a6 + 24) = v6;
  v7 = *(a3 + 16);
  *(a6 + 40) = *a3;
  *a6 = *a1;
  *(a6 + 56) = v7;
  result = *(a3 + 32);
  *(a6 + 72) = result;
  *(a6 + 88) = (a4 | a5) & 1;
  *(a6 + 89) = a5;
  return result;
}

Swift::String __swiftcall EmojiPosterConfiguration.identifier()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 64);
  v30 = *(v0 + 48);
  v31 = v3;
  v32[0] = *(v0 + 80);
  *(v32 + 10) = *(v0 + 90);
  v4 = *(v0 + 32);
  v28 = *(v0 + 16);
  v29 = v4;
  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v6 = *(v0 + 106);
    v7 = 0xE800000000000000;
    v8 = 0x72616C7563726963;
    if (v6 != 1)
    {
      v8 = 0x6C6172697073;
      v7 = 0xE600000000000000;
    }

    v9 = v6 == 0;
    if (*(v0 + 106))
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x724774657366666FLL;
    }

    if (v9)
    {
      v11 = 0xEA00000000006469;
    }

    else
    {
      v11 = v7;
    }

    v12 = *&aS_0[8 * *(v0 + 107)];
    *&v26[0] = v10;
    *(&v26[0] + 1) = v11;

    MEMORY[0x24C20C3F0](v12, 0xE100000000000000);

    MEMORY[0x24C20C3F0](95, 0xE100000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
    sub_249FDE640(&qword_2810D9BC8, &qword_27EF2DF68);
    v13 = sub_24A021628();
    v15 = v14;

    MEMORY[0x24C20C3F0](v13, v15);

    MEMORY[0x24C20C3F0](95, 0xE100000000000000);

    v16 = *&v26[0];
    v23 = v30;
    v24 = v31;
    *v25 = v32[0];
    *&v25[10] = *(v32 + 10);
    v21 = v28;
    v22 = v29;
    sub_249FDDE00(&v28, v26);
    v17 = EmojiPosterBackgroundConfiguration.identifier()();
    v26[2] = v23;
    v26[3] = v24;
    v27[0] = *v25;
    *(v27 + 10) = *&v25[10];
    v26[0] = v21;
    v26[1] = v22;
    sub_249FDDE80(v26);

    MEMORY[0x24C20C3F0](v17._countAndFlagsBits, v17._object);

    v5 = v11;
    v2 = v16;
  }

  v18 = v2;
  v19 = v5;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

Swift::String __swiftcall EmojiPosterBackgroundConfiguration.identifier()()
{
  v1 = *v0;
  v2 = v0[88];
  if (*(v0 + 9))
  {

    v3 = sub_249FDA518();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736302;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E580);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_24A024700;
  if (v1 <= 1)
  {
    if (!v1)
    {
      v8 = 0xE500000000000000;
      v9 = 0x64696C6F73;
      goto LABEL_14;
    }

    v10 = 0x7261656E696CLL;
    goto LABEL_13;
  }

  if (v1 == 2)
  {
    v10 = 0x6C6169646172;
LABEL_13:
    v9 = v10 & 0xFFFFFFFFFFFFLL | 0x7247000000000000;
    v8 = 0xEE00746E65696461;
    goto LABEL_14;
  }

  if (v1 == 3)
  {
    v8 = 0xED0000746E656964;
    v9 = 0x6172476D6F6F6C62;
  }

  else
  {
    v8 = 0xE900000000000064;
    v9 = 0x657474656E676976;
  }

LABEL_14:
  *(v6 + 32) = v9;
  *(v6 + 40) = v8;
  *(v6 + 48) = sub_249FD86A8();
  v7[7] = v11;
  v7[8] = v3;
  v7[9] = v5;
  v12 = 0x677553746F4E7369;
  if (v2)
  {
    v12 = 0x7365676775537369;
  }

  v13 = 0xEE00646574736567;
  if (v2)
  {
    v13 = 0xEB00000000646574;
  }

  v7[10] = v12;
  v7[11] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
  sub_249FDE640(&qword_2810D9BC8, &qword_27EF2DF68);
  v14 = sub_24A021628();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

unint64_t sub_249FD9900()
{
  v1 = *v0;
  v2 = 0x745374756F79616CLL;
  v3 = 0x3256696A6F6D65;
  if (v1 != 5)
  {
    v3 = 0x6172615073657375;
  }

  v4 = 0x69726156657A6973;
  if (v1 != 3)
  {
    v4 = 0x696A6F6D65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_249FD99F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249FE0A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FD9A28(uint64_t a1)
{
  v2 = sub_249FDDEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FD9A64(uint64_t a1)
{
  v2 = sub_249FDDEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiPosterConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v5 = *(v1 + 64);
  v34 = *(v1 + 48);
  v35 = v5;
  v36[0] = *(v1 + 80);
  *(v36 + 10) = *(v1 + 90);
  v6 = *(v1 + 32);
  v32 = *(v1 + 16);
  v33 = v6;
  v7 = *(v1 + 106);
  v20 = *(v1 + 107);
  v21 = v7;
  v8 = *(v1 + 112);
  v18 = *(v1 + 120);
  v19 = v8;
  v17[1] = *(v1 + 128);
  v9 = a1[3];
  v10 = a1;
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_249FDDEB0();
  sub_24A021D28();
  LOBYTE(v27) = 0;
  v13 = v37;
  sub_24A021BA8();
  if (!v13)
  {
    v15 = v20;
    v14 = v21;
    v29 = v34;
    v30 = v35;
    v31[0] = v36[0];
    *(v31 + 10) = *(v36 + 10);
    v27 = v32;
    v28 = v33;
    v26 = 1;
    sub_249FDDE00(&v32, v24);
    sub_249FDDF04();
    sub_24A021C08();
    v24[2] = v29;
    v24[3] = v30;
    *v25 = v31[0];
    *&v25[10] = *(v31 + 10);
    v24[0] = v27;
    v24[1] = v28;
    sub_249FDDE80(v24);
    LOBYTE(v22) = v14;
    v23 = 2;
    sub_249FDDF58();
    sub_24A021C08();
    LOBYTE(v22) = v15;
    v23 = 3;
    sub_249FDDFAC();
    sub_24A021C08();
    v22 = v19;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
    sub_249FDE150(&qword_2810D9BD0);
    sub_24A021C08();
    v22 = v18;
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF78);
    sub_249FDE1BC(&qword_27EF2DF80, sub_249FDE000);
    sub_24A021BB8();
    LOBYTE(v22) = 6;
    sub_24A021BD8();
  }

  return (*(v4 + 8))(v12, v3);
}

uint64_t EmojiPosterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v22 - v7;
  v9 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_249FDDEB0();
  sub_24A021D08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v25 = v6;
  LOBYTE(v34[0]) = 0;
  v10 = v5;
  *&v24 = sub_24A021B18();
  *(&v24 + 1) = v11;
  v42 = 1;
  sub_249FDE054();
  sub_24A021B78();
  v50 = v45;
  v51 = v46;
  v52[0] = v47[0];
  *(v52 + 10) = *(v47 + 10);
  v48 = v43;
  v49 = v44;
  LOBYTE(v26) = 2;
  sub_249FDE0A8();
  sub_24A021B78();
  v12 = v34[0];
  LOBYTE(v26) = 3;
  sub_249FDE0FC();
  sub_24A021B78();
  v13 = LOBYTE(v34[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
  LOBYTE(v26) = 4;
  sub_249FDE150(&qword_2810D9BC0);
  sub_24A021B78();
  v23 = *&v34[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF78);
  LOBYTE(v26) = 5;
  sub_249FDE1BC(&qword_2810D9BE0, sub_249FDE234);
  sub_24A021B28();
  v22 = *&v34[0];
  v41 = 6;
  v14 = sub_24A021B48();
  (*(v25 + 8))(v8, v10);
  v15 = v24;
  v26 = v24;
  *(v31 + 10) = *(v52 + 10);
  v29 = v50;
  v30 = v51;
  v31[0] = v52[0];
  v27 = v48;
  v28 = v49;
  BYTE10(v31[1]) = v12;
  BYTE11(v31[1]) = v13;
  LODWORD(v25) = v13;
  v16 = v23;
  *&v32 = v23;
  *(&v32 + 1) = v22;
  v14 &= 1u;
  v33 = v14;
  *(a2 + 128) = v14;
  v17 = v31[0];
  *(a2 + 64) = v30;
  *(a2 + 80) = v17;
  v18 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v18;
  v19 = v27;
  *a2 = v26;
  *(a2 + 16) = v19;
  v20 = v32;
  *(a2 + 96) = v31[1];
  *(a2 + 112) = v20;
  sub_249FDE288(&v26, v34);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v34[0] = v15;
  v34[3] = v50;
  v34[4] = v51;
  *v35 = v52[0];
  *&v35[10] = *(v52 + 10);
  v34[1] = v48;
  v34[2] = v49;
  v36 = v12;
  v37 = v25;
  v38 = v16;
  v39 = v22;
  v40 = v14;
  return sub_249FDE2C0(v34);
}

__n128 EmojiPosterBackgroundConfiguration.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t EmojiPosterBackgroundConfiguration.gradientProperties.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_249FDE2F0(v2, v3, v4, v5, v6);
}

uint64_t sub_249FDA518()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E148);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D839F8];
  *(v5 + 16) = xmmword_24A0246F0;
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  v8 = sub_24A0216A8();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A0246F0;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 32) = v3;
  v12 = sub_24A0216A8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24A0246F0;
  *(v15 + 56) = v6;
  *(v15 + 64) = v7;
  *(v15 + 32) = v4;
  v16 = sub_24A0216A8();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E580);
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = xmmword_24A024710;
  v21 = 0x7261656E696CLL;
  if (v1)
  {
    v21 = 0x6C6169646172;
  }

  *(v19 + 32) = v21;
  *(v19 + 40) = 0xE600000000000000;
  *(v19 + 48) = v8;
  *(v19 + 56) = v10;
  *(v19 + 64) = v12;
  *(v19 + 72) = v14;
  *(v19 + 80) = v16;
  *(v19 + 88) = v18;
  *(v19 + 96) = sub_249FDBAF4();
  v20[13] = v22;
  v20[14] = sub_249FDBDA4();
  v20[15] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
  sub_249FDE640(&qword_2810D9BC8, &qword_27EF2DF68);
  v24 = sub_24A021628();

  return v24;
}

uint64_t sub_249FDA774()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 3)
  {
    v2 = 0xD000000000000020;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = v2;
  }

  if (*v0 <= 1u)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_249FDA81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249FE0C68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FDA844(uint64_t a1)
{
  v2 = sub_249FDE334();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FDA880(uint64_t a1)
{
  v2 = sub_249FDE334();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmojiPosterBackgroundConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v24 = *(v1 + 24);
  v25 = v8;
  v9 = *(v1 + 5);
  v22 = *(v1 + 6);
  v23 = v9;
  v10 = *(v1 + 7);
  v20 = *(v1 + 8);
  v21 = v10;
  v11 = *(v1 + 9);
  v18 = *(v1 + 10);
  v19 = v11;
  v31 = v1[88];
  v12 = v1[89];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FDE334();
  sub_24A021D28();
  LOBYTE(v27) = v7;
  v32 = 0;
  sub_249FDE388();
  v13 = v26;
  sub_24A021C08();
  if (!v13)
  {
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v27 = v25;
    v28 = v24;
    v32 = 1;
    sub_249FDE3DC();
    sub_24A021C08();
    *&v27 = v16;
    *(&v27 + 1) = v15;
    *&v28 = v14;
    *(&v28 + 1) = v20;
    v29 = v19;
    v30 = v18;
    v32 = 2;
    sub_249FDE2F0(v16, v15, v14, v20, v19);
    sub_249FDE430();
    sub_24A021BB8();
    sub_249FDE484(v27, *(&v27 + 1), v28, *(&v28 + 1), v29);
    LOBYTE(v27) = v31;
    v32 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFA0);
    sub_249FDE4C8();
    sub_24A021C08();
    LOBYTE(v27) = v12;
    v32 = 4;
    sub_24A021C08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t EmojiPosterBackgroundConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FDE334();
  sub_24A021D08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  sub_249FDE544();
  sub_24A021B78();
  v9 = v34;
  LOBYTE(v29) = 1;
  sub_249FDE598();
  sub_24A021B78();
  v10 = v34;
  v11 = v35;
  v12 = v36;
  v13 = v37;
  LOBYTE(v29) = 2;
  sub_249FDE5EC();
  sub_24A021B28();
  v46 = v9;
  v27 = v34;
  v24 = v35;
  v28 = v36;
  v25 = v37;
  v26 = v38;
  LOBYTE(v34) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFA0);
  sub_249FDE640(qword_2810DA1C0, &qword_27EF2DFA0);
  sub_24A021B28();
  HIDWORD(v23) = v29;
  v48 = 4;
  sub_24A021B28();
  v14 = BYTE4(v23) & 1;
  (*(v6 + 8))(v8, v5);
  HIDWORD(v23) = v47 & 1;
  v15 = v46;
  LOBYTE(v29) = v46;
  *(&v29 + 1) = v10;
  *&v30 = v11;
  *(&v30 + 1) = v12;
  *&v31 = v13;
  *(&v31 + 1) = v27;
  v16 = v24;
  *&v32 = v24;
  v17 = v25;
  *(&v32 + 1) = v28;
  *v33 = v25;
  v18 = *(&v25 + 1);
  v19 = v26;
  *&v33[16] = v26;
  v33[24] = v14;
  v33[25] = v47 & 1;
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  a2[4] = *v33;
  *(a2 + 74) = *&v33[10];
  v21 = v30;
  *a2 = v29;
  a2[1] = v21;
  sub_249FDDE00(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v34) = v15;
  v35 = v10;
  v36 = v11;
  *&v37 = v12;
  *(&v37 + 1) = v13;
  v38 = v27;
  v39 = v16;
  v40 = v28;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = v14;
  v45 = BYTE4(v23);
  return sub_249FDDE80(&v34);
}

uint64_t sub_249FDB07C()
{
  if (*v0)
  {
    return 0x6C6169646172;
  }

  else
  {
    return 0x7261656E696CLL;
  }
}

uint64_t sub_249FDB0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_24A021C38() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6169646172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A021C38();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_249FDB188(uint64_t a1)
{
  v2 = sub_249FDE688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FDB1C4(uint64_t a1)
{
  v2 = sub_249FDE688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FDB200(uint64_t a1)
{
  v2 = sub_249FDE730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FDB23C(uint64_t a1)
{
  v2 = sub_249FDE730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249FDB278(uint64_t a1)
{
  v2 = sub_249FDE6DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FDB2B4(uint64_t a1)
{
  v2 = sub_249FDE6DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFB8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20]();
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFC0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFC8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FDE688();
  sub_24A021D28();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_249FDE6DC();
    v14 = v18;
    sub_24A021B98();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_249FDE730();
    sub_24A021B98();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t GradientType.hashValue.getter()
{
  v1 = *v0;
  sub_24A021CB8();
  MEMORY[0x24C20C980](v1);
  return sub_24A021CE8();
}

uint64_t GradientType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFD8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20]();
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFE0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFE8);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FDE688();
  v13 = v31;
  sub_24A021D08();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_24A021B88();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_24A021A08();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DE98);
    *v21 = &type metadata for GradientType;
    sub_24A021B08();
    sub_24A0219F8();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_249FDE6DC();
    sub_24A021AF8();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_249FDE730();
    sub_24A021AF8();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_249FDBA68()
{
  v1 = *v0;
  sub_24A021CB8();
  MEMORY[0x24C20C980](v1);
  return sub_24A021CE8();
}

void __swiftcall GradientProperties.init(type:angle:leftColorValue:rightColorValue:colors:locations:)(EmojiPoster::GradientProperties *__return_ptr retstr, EmojiPoster::GradientType type, Swift::Double angle, Swift::Double leftColorValue, Swift::Double rightColorValue, Swift::OpaquePointer colors, Swift::OpaquePointer locations)
{
  retstr->type = *type;
  retstr->angle = angle;
  retstr->leftColorValue = leftColorValue;
  retstr->rightColorValue = rightColorValue;
  retstr->colors = colors;
  retstr->locations = locations;
}

uint64_t sub_249FDBAF4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 48);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E148);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24A0246F0;
      v9 = MEMORY[0x277D839F8];
      *(v8 + 56) = MEMORY[0x277D839F8];
      v10 = MEMORY[0x277D83A80];
      *(v8 + 64) = MEMORY[0x277D83A80];
      *(v8 + 32) = v5;
      v11 = sub_24A0216A8();
      v13 = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24A0246F0;
      *(v14 + 56) = v9;
      *(v14 + 64) = v10;
      *(v14 + 32) = v6;
      v15 = sub_24A0216A8();
      v17 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24A0246F0;
      *(v18 + 56) = v9;
      *(v18 + 64) = v10;
      *(v18 + 32) = v7;
      v19 = sub_24A0216A8();
      v21 = v20;
      MEMORY[0x24C20C3F0](44, 0xE100000000000000);
      MEMORY[0x24C20C3F0](v15, v17);

      MEMORY[0x24C20C3F0](44, 0xE100000000000000);
      MEMORY[0x24C20C3F0](v19, v21);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_249FFECB8(0, *(v4 + 2) + 1, 1, v4);
      }

      v23 = *(v4 + 2);
      v22 = *(v4 + 3);
      if (v23 >= v22 >> 1)
      {
        v4 = sub_249FFECB8((v22 > 1), v23 + 1, 1, v4);
      }

      *(v4 + 2) = v23 + 1;
      v24 = &v4[16 * v23];
      *(v24 + 4) = v11;
      *(v24 + 5) = v13;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
  sub_249FDE640(&qword_2810D9BC8, &qword_27EF2DF68);
  v25 = sub_24A021628();

  return v25;
}

uint64_t sub_249FDBDA4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = v1 + 32;
    do
    {
      sub_24A021838();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_249FFECB8(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_249FFECB8((v5 > 1), v6 + 1, 1, v3);
      }

      *(v3 + 2) = v6 + 1;
      v7 = &v3[16 * v6];
      *(v7 + 4) = 0;
      *(v7 + 5) = 0xE000000000000000;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
  sub_249FDE640(&qword_2810D9BC8, &qword_27EF2DF68);
  v8 = sub_24A021628();

  return v8;
}

double static GradientProperties.bloomProperties()@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  v2 = swift_allocObject();
  __asm { FMOV            V1.2D, #1.0 }

  v2[1] = xmmword_24A024720;
  v2[2] = _Q1;
  v2[3] = xmmword_24A024730;
  v2[4] = _Q1;
  result = 1.0;
  v2[5] = xmmword_24A024740;
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  *(a1 + 32) = v2;
  *(a1 + 40) = &unk_285D25A38;
  return result;
}

double static GradientProperties.vignetteProperties()@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  v2 = swift_allocObject();
  *&result = 3;
  *(v2 + 16) = xmmword_24A024750;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0x3FB999999999999ALL;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0x3FB999999999999ALL;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0x3FF0000000000000;
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  *(a1 + 32) = v2;
  *(a1 + 40) = &unk_285D25A68;
  return result;
}

uint64_t sub_249FDC048()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C6F437468676972;
  v4 = 0x73726F6C6F63;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C676E61;
  if (v1 != 1)
  {
    v5 = 0x6F6C6F437466656CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_249FDC110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249FE0E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249FDC144(uint64_t a1)
{
  v2 = sub_249FDE784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249FDC180(uint64_t a1)
{
  v2 = sub_249FDE784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientProperties.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v14 = *(v1 + 5);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FDE784();
  v10 = v4;
  sub_24A021D28();
  LOBYTE(v16) = v8;
  v17 = 0;
  sub_249FDE7D8();
  sub_24A021C08();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v14;
  v11 = v15;
  LOBYTE(v16) = 1;
  sub_24A021BE8();
  LOBYTE(v16) = 2;
  sub_24A021BE8();
  LOBYTE(v16) = 3;
  sub_24A021BE8();
  v16 = v11;
  v17 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E000);
  sub_249FDE82C(&qword_2810D9BD8, sub_249FDE3DC);
  sub_24A021C08();
  v16 = v12;
  v17 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E008);
  sub_249FDE8A4();
  sub_24A021C08();
  return (*(v5 + 8))(v7, v10);
}

uint64_t GradientProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E010);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249FDE784();
  sub_24A021D08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_249FDE920();
  sub_24A021B78();
  v9 = v19;
  LOBYTE(v19) = 1;
  sub_24A021B58();
  v11 = v10;
  LOBYTE(v19) = 2;
  sub_24A021B58();
  v13 = v12;
  LOBYTE(v19) = 3;
  sub_24A021B58();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E000);
  v20 = 4;
  sub_249FDE82C(&qword_27EF2E020, sub_249FDE598);
  sub_24A021B78();
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E008);
  v20 = 5;
  sub_249FDE974();
  sub_24A021B78();
  (*(v6 + 8))(v8, v5);
  v17 = v19;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_249FDC820(uint64_t a1, id *a2)
{
  result = sub_24A021678();
  *a2 = 0;
  return result;
}

uint64_t sub_249FDC898(uint64_t a1, id *a2)
{
  v3 = sub_24A021688();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_249FDC918@<X0>(uint64_t *a1@<X8>)
{
  sub_24A021698();
  v2 = sub_24A021658();

  *a1 = v2;
  return result;
}

uint64_t sub_249FDC95C()
{
  v0 = sub_24A021698();
  v1 = MEMORY[0x24C20C430](v0);

  return v1;
}

uint64_t sub_249FDC998()
{
  sub_24A021698();
  sub_24A021708();
}

uint64_t sub_249FDC9EC()
{
  sub_24A021698();
  sub_24A021CB8();
  sub_24A021708();
  v0 = sub_24A021CE8();

  return v0;
}

uint64_t sub_249FDCA6C()
{
  v0 = sub_24A021698();
  v2 = v1;
  if (v0 == sub_24A021698() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24A021C38();
  }

  return v5 & 1;
}

uint64_t sub_249FDCAF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24A021658();

  *a1 = v2;
  return result;
}

uint64_t sub_249FDCB3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A021698();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_249FDCB68(uint64_t a1)
{
  v2 = sub_249FDFB20(&qword_2810D9B70);
  v3 = sub_249FDFB20(&qword_27EF2E120);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_249FDCC00(char *a1, int64_t a2, char a3)
{
  result = sub_249FDCC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249FDCC20(char *a1, int64_t a2, char a3)
{
  result = sub_249FDCD9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249FDCC40(char *a1, int64_t a2, char a3)
{
  result = sub_249FDCEA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249FDCC60(char *a1, int64_t a2, char a3)
{
  result = sub_249FDD0E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249FDCC80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249FDCD9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}