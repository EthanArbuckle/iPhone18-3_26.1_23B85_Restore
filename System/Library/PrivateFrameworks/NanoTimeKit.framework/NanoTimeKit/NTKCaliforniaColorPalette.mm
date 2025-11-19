@interface NTKCaliforniaColorPalette
- (BOOL)isBlackBackground;
- (NTKCaliforniaColorPalette)init;
- (id)_background;
- (id)_circularBackground;
- (id)_clockHands;
- (id)_clockHandsInlay;
- (id)_colorForCircularTicksForMinute:(unint64_t)a3;
- (id)_largeTick;
- (id)_simpleTextComplication;
- (id)_smallTick;
- (id)circularDialSubtickColor;
- (id)colorForCircularTicksForHour:(unint64_t)a3;
- (id)colorForCircularTicksForMinute:(unint64_t)a3;
- (id)colorForHourMarker:(unint64_t)a3;
- (id)digitColorAtIndex:(unint64_t)a3;
@end

@implementation NTKCaliforniaColorPalette

- (NTKCaliforniaColorPalette)init
{
  v3.receiver = self;
  v3.super_class = NTKCaliforniaColorPalette;
  return [(NTKFaceColorPalette *)&v3 initWithDomainName:@"california" inBundle:0];
}

- (id)colorForHourMarker:(unint64_t)a3
{
  v5 = [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:1];
  if ([(NTKFaceColorPalette *)self isNotFoundColor:v5])
  {
    v6 = [(NTKCaliforniaColorPalette *)self digit];
  }

  else
  {
    v7 = a3 - 2;
    if (a3 <= 0xB)
    {
      v7 = a3;
    }

    v6 = [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:5 * ((v7 + 1) % 0xC)];
  }

  v8 = v6;

  return v8;
}

- (id)digitColorAtIndex:(unint64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(sel_digit);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3 + 1];
  v8 = [v5 stringWithFormat:@"%@%@", v6, v7];

  v9 = [(NTKFaceColorPalette *)self valueForKey:v8];

  return v9;
}

- (id)colorForCircularTicksForMinute:(unint64_t)a3
{
  if ([(NTKFaceColorPalette *)self isRainbowColor])
  {
    v5 = [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:a3];
    v6 = [v5 colorWithAlphaComponent:0.4];
  }

  else
  {
    v6 = [(NTKCaliforniaColorPalette *)self circularDialSubtickColor];
  }

  return v6;
}

- (id)colorForCircularTicksForHour:(unint64_t)a3
{
  if ([(NTKFaceColorPalette *)self isRainbowColor])
  {
    [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:5 * a3];
  }

  else
  {
    [(NTKCaliforniaColorPalette *)self circularDialTickColor];
  }
  v5 = ;

  return v5;
}

- (id)_colorForCircularTicksForMinute:(unint64_t)a3
{
  v3 = 59;
  if (a3 < 0x3B)
  {
    v3 = a3;
  }

  NTKCaliforniaMulticolorColor(self, v3 / 60.0);
}

- (id)circularDialSubtickColor
{
  v2 = [(NTKCaliforniaColorPalette *)self bezelComplication];
  v3 = [v2 colorWithAlphaComponent:0.4];

  return v3;
}

- (id)_background
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    v3 = [(NTKCaliforniaColorPalette *)self primaryColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_circularBackground
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    v3 = [(NTKCaliforniaColorPalette *)self primaryColor];
  }

  else if ([(NTKFaceColorPalette *)self isRainbowColor])
  {
    v3 = [(NTKCaliforniaColorPalette *)self background];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_smallTick
{
  v3 = [(NTKFaceColorPalette *)self isEvergreenCollection];
  v4 = [(NTKCaliforniaColorPalette *)self digit];
  v5 = v4;
  v6 = 0.4;
  if (v3)
  {
    v6 = 0.2;
  }

  v7 = [v4 colorWithAlphaComponent:v6];

  return v7;
}

- (id)_largeTick
{
  v3 = [(NTKFaceColorPalette *)self isEvergreenCollection];
  v4 = [(NTKCaliforniaColorPalette *)self digit];
  v5 = v4;
  v6 = 0.9;
  if (v3)
  {
    v6 = 0.7;
  }

  v7 = [v4 colorWithAlphaComponent:v6];

  return v7;
}

- (id)_clockHands
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v2 = ;

  return v2;
}

- (id)_clockHandsInlay
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    v3 = [(NTKCaliforniaColorPalette *)self primaryColor];
    v4 = NTKColorByApplyingWhiteOverlay(v3, 0.3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_simpleTextComplication
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    [(NTKCaliforniaColorPalette *)self digit];
  }

  else
  {
    [(NTKCaliforniaColorPalette *)self simpleTextComplicationColorValue];
  }
  v3 = ;

  return v3;
}

- (BOOL)isBlackBackground
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    return 0;
  }

  v4 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v5 = [v4 collectionName];
  v6 = [v5 isEqualToString:@"seasons.fall2021"];

  if (!v6)
  {
    return 1;
  }

  v7 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v8 = [v7 fullname];

  if ([v8 isEqualToString:@"seasons.fall2021.purple1"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v8 isEqualToString:@"seasons.fall2021.purple2"];
  }

  return v3;
}

@end