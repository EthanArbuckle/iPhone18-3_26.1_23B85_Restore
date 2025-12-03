@interface HUWheelColorWheelSpace
- ($01BB1521EC52D44A8E7628F5261DCEC8)colorForCoordinate:(id)coordinate;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateForColor:(id)color isValid:(BOOL *)valid;
@end

@implementation HUWheelColorWheelSpace

- ($01BB1521EC52D44A8E7628F5261DCEC8)colorForCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  if (coordinate.var0 < 0.0 || coordinate.var0 > 1.0)
  {
    NSLog(&cfstr_InputCoordinat.isa, a2, *&coordinate.var0);
  }

  v5 = 0.0;
  if (var1 >= 0.08)
  {
    v5 = (var1 + -0.08) / 0.92;
  }

  pow(v5, 2.2);
  HFConvertHSBToRGB();
  v7 = *(&HUWheelColorInvalid + 1);
  v6 = *&HUWheelColorInvalid;
  v9 = unk_20D5CAFE8;
  v8 = 1.79769313e308;
  result.var3 = v9;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateForColor:(id)color isValid:(BOOL *)valid
{
  HFConvertRGBToHSB();
  if (valid)
  {
    *valid = 1;
  }

  v5 = fmax(pow(0.0, 0.454545455), 0.08);
  v6 = 0.0;
  result.var1 = v5;
  result.var0 = v6;
  return result;
}

@end