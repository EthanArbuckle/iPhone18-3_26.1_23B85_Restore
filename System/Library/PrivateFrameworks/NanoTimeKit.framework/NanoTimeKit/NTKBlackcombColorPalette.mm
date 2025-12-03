@interface NTKBlackcombColorPalette
- (NTKBlackcombColorPalette)init;
- (id)_background;
- (id)_hourMarker;
- (id)_largeTick;
- (id)_smallTick;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)transitionalPaletteFromDialColor:(unint64_t)color toDialColor:(unint64_t)dialColor;
- (id)tritiumPalette;
@end

@implementation NTKBlackcombColorPalette

- (NTKBlackcombColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKBlackcombColorPalette;
  return [(NTKFaceColorPalette *)&v5 initWithFaceClass:v3];
}

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = NTKBlackcombColorPalette;
  identifier = [(NTKFaceColorPalette *)&v7 identifier];
  v5 = [v3 stringWithFormat:@"%@-%lu", identifier, self->_dialColorStyle];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKBlackcombColorPalette;
  v4 = [(NTKFaceColorPalette *)&v6 copyWithZone:zone];
  v4[11] = [(NTKBlackcombColorPalette *)self dialColorStyle];
  return v4;
}

- (id)transitionalPaletteFromDialColor:(unint64_t)color toDialColor:(unint64_t)dialColor
{
  dialColorTransitionalPalette = self->_dialColorTransitionalPalette;
  if (!dialColorTransitionalPalette)
  {
    v8 = [[NTKInterpolatedColorPalette alloc] initWithColorPalette:self];
    v9 = self->_dialColorTransitionalPalette;
    self->_dialColorTransitionalPalette = v8;

    dialColorTransitionalPalette = self->_dialColorTransitionalPalette;
  }

  fromPalette = [(NTKInterpolatedColorPalette *)dialColorTransitionalPalette fromPalette];
  toPalette = [(NTKInterpolatedColorPalette *)self->_dialColorTransitionalPalette toPalette];
  configuration = [(NTKFaceColorPalette *)self configuration];
  v13 = [configuration copy];
  [fromPalette setConfiguration:v13];

  configuration2 = [(NTKFaceColorPalette *)self configuration];
  v15 = [configuration2 copy];
  [toPalette setConfiguration:v15];

  [fromPalette setDialColorStyle:color];
  [toPalette setDialColorStyle:dialColor];
  v16 = self->_dialColorTransitionalPalette;
  v17 = v16;

  return v16;
}

- (id)_background
{
  dialColorStyle = [(NTKBlackcombColorPalette *)self dialColorStyle];
  if (dialColorStyle == 1)
  {
    dialColorStyle = [(NTKBlackcombColorPalette *)self lightBackground];
  }

  else if (!dialColorStyle)
  {
    dialColorStyle = [(NTKBlackcombColorPalette *)self darkBackground];
  }

  return dialColorStyle;
}

- (id)_hourMarker
{
  dialColorStyle = [(NTKBlackcombColorPalette *)self dialColorStyle];
  if (dialColorStyle == 1)
  {
    dialColorStyle = [(NTKBlackcombColorPalette *)self darkHourMarker];
  }

  else if (!dialColorStyle)
  {
    dialColorStyle = [(NTKBlackcombColorPalette *)self lightHourMarker];
  }

  return dialColorStyle;
}

- (id)_smallTick
{
  hourMarker = [(NTKBlackcombColorPalette *)self hourMarker];
  v3 = [hourMarker colorWithAlphaComponent:0.3];

  return v3;
}

- (id)_largeTick
{
  dialColorStyle = [(NTKBlackcombColorPalette *)self dialColorStyle];
  if (dialColorStyle)
  {
    if (dialColorStyle != 1)
    {
      goto LABEL_6;
    }

    v5 = 0.6;
  }

  else
  {
    v5 = 0.7;
  }

  hourMarker = [(NTKBlackcombColorPalette *)self hourMarker];
  v2 = [hourMarker colorWithAlphaComponent:v5];

LABEL_6:

  return v2;
}

- (id)tritiumPalette
{
  v4.receiver = self;
  v4.super_class = NTKBlackcombColorPalette;
  tritiumPalette = [(NTKFaceColorPalette *)&v4 tritiumPalette];
  [tritiumPalette setDialColorStyle:0];

  return tritiumPalette;
}

@end