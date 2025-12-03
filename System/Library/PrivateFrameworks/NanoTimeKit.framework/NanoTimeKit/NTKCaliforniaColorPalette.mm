@interface NTKCaliforniaColorPalette
- (BOOL)isBlackBackground;
- (NTKCaliforniaColorPalette)init;
- (id)_background;
- (id)_circularBackground;
- (id)_clockHands;
- (id)_clockHandsInlay;
- (id)_colorForCircularTicksForMinute:(unint64_t)minute;
- (id)_largeTick;
- (id)_simpleTextComplication;
- (id)_smallTick;
- (id)circularDialSubtickColor;
- (id)colorForCircularTicksForHour:(unint64_t)hour;
- (id)colorForCircularTicksForMinute:(unint64_t)minute;
- (id)colorForHourMarker:(unint64_t)marker;
- (id)digitColorAtIndex:(unint64_t)index;
@end

@implementation NTKCaliforniaColorPalette

- (NTKCaliforniaColorPalette)init
{
  v3.receiver = self;
  v3.super_class = NTKCaliforniaColorPalette;
  return [(NTKFaceColorPalette *)&v3 initWithDomainName:@"california" inBundle:0];
}

- (id)colorForHourMarker:(unint64_t)marker
{
  v5 = [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:1];
  if ([(NTKFaceColorPalette *)self isNotFoundColor:v5])
  {
    digit = [(NTKCaliforniaColorPalette *)self digit];
  }

  else
  {
    markerCopy = marker - 2;
    if (marker <= 0xB)
    {
      markerCopy = marker;
    }

    digit = [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:5 * ((markerCopy + 1) % 0xC)];
  }

  v8 = digit;

  return v8;
}

- (id)digitColorAtIndex:(unint64_t)index
{
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(sel_digit);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index + 1];
  v8 = [v5 stringWithFormat:@"%@%@", v6, v7];

  v9 = [(NTKFaceColorPalette *)self valueForKey:v8];

  return v9;
}

- (id)colorForCircularTicksForMinute:(unint64_t)minute
{
  if ([(NTKFaceColorPalette *)self isRainbowColor])
  {
    v5 = [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:minute];
    circularDialSubtickColor = [v5 colorWithAlphaComponent:0.4];
  }

  else
  {
    circularDialSubtickColor = [(NTKCaliforniaColorPalette *)self circularDialSubtickColor];
  }

  return circularDialSubtickColor;
}

- (id)colorForCircularTicksForHour:(unint64_t)hour
{
  if ([(NTKFaceColorPalette *)self isRainbowColor])
  {
    [(NTKCaliforniaColorPalette *)self _colorForCircularTicksForMinute:5 * hour];
  }

  else
  {
    [(NTKCaliforniaColorPalette *)self circularDialTickColor];
  }
  v5 = ;

  return v5;
}

- (id)_colorForCircularTicksForMinute:(unint64_t)minute
{
  minuteCopy = 59;
  if (minute < 0x3B)
  {
    minuteCopy = minute;
  }

  NTKCaliforniaMulticolorColor(self, minuteCopy / 60.0);
}

- (id)circularDialSubtickColor
{
  bezelComplication = [(NTKCaliforniaColorPalette *)self bezelComplication];
  v3 = [bezelComplication colorWithAlphaComponent:0.4];

  return v3;
}

- (id)_background
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    primaryColor = [(NTKCaliforniaColorPalette *)self primaryColor];
  }

  else
  {
    primaryColor = 0;
  }

  return primaryColor;
}

- (id)_circularBackground
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    primaryColor = [(NTKCaliforniaColorPalette *)self primaryColor];
  }

  else if ([(NTKFaceColorPalette *)self isRainbowColor])
  {
    primaryColor = [(NTKCaliforniaColorPalette *)self background];
  }

  else
  {
    primaryColor = 0;
  }

  return primaryColor;
}

- (id)_smallTick
{
  isEvergreenCollection = [(NTKFaceColorPalette *)self isEvergreenCollection];
  digit = [(NTKCaliforniaColorPalette *)self digit];
  v5 = digit;
  v6 = 0.4;
  if (isEvergreenCollection)
  {
    v6 = 0.2;
  }

  v7 = [digit colorWithAlphaComponent:v6];

  return v7;
}

- (id)_largeTick
{
  isEvergreenCollection = [(NTKFaceColorPalette *)self isEvergreenCollection];
  digit = [(NTKCaliforniaColorPalette *)self digit];
  v5 = digit;
  v6 = 0.9;
  if (isEvergreenCollection)
  {
    v6 = 0.7;
  }

  v7 = [digit colorWithAlphaComponent:v6];

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
    primaryColor = [(NTKCaliforniaColorPalette *)self primaryColor];
    v4 = NTKColorByApplyingWhiteOverlay(primaryColor, 0.3);
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

  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  collectionName = [pigmentEditOption collectionName];
  v6 = [collectionName isEqualToString:@"seasons.fall2021"];

  if (!v6)
  {
    return 1;
  }

  pigmentEditOption2 = [(NTKFaceColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption2 fullname];

  if ([fullname isEqualToString:@"seasons.fall2021.purple1"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [fullname isEqualToString:@"seasons.fall2021.purple2"];
  }

  return v3;
}

@end