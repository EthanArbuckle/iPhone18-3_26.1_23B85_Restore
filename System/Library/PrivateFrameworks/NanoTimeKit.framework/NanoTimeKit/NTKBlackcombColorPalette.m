@interface NTKBlackcombColorPalette
- (NTKBlackcombColorPalette)init;
- (id)_background;
- (id)_hourMarker;
- (id)_largeTick;
- (id)_smallTick;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)transitionalPaletteFromDialColor:(unint64_t)a3 toDialColor:(unint64_t)a4;
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
  v4 = [(NTKFaceColorPalette *)&v7 identifier];
  v5 = [v3 stringWithFormat:@"%@-%lu", v4, self->_dialColorStyle];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKBlackcombColorPalette;
  v4 = [(NTKFaceColorPalette *)&v6 copyWithZone:a3];
  v4[11] = [(NTKBlackcombColorPalette *)self dialColorStyle];
  return v4;
}

- (id)transitionalPaletteFromDialColor:(unint64_t)a3 toDialColor:(unint64_t)a4
{
  dialColorTransitionalPalette = self->_dialColorTransitionalPalette;
  if (!dialColorTransitionalPalette)
  {
    v8 = [[NTKInterpolatedColorPalette alloc] initWithColorPalette:self];
    v9 = self->_dialColorTransitionalPalette;
    self->_dialColorTransitionalPalette = v8;

    dialColorTransitionalPalette = self->_dialColorTransitionalPalette;
  }

  v10 = [(NTKInterpolatedColorPalette *)dialColorTransitionalPalette fromPalette];
  v11 = [(NTKInterpolatedColorPalette *)self->_dialColorTransitionalPalette toPalette];
  v12 = [(NTKFaceColorPalette *)self configuration];
  v13 = [v12 copy];
  [v10 setConfiguration:v13];

  v14 = [(NTKFaceColorPalette *)self configuration];
  v15 = [v14 copy];
  [v11 setConfiguration:v15];

  [v10 setDialColorStyle:a3];
  [v11 setDialColorStyle:a4];
  v16 = self->_dialColorTransitionalPalette;
  v17 = v16;

  return v16;
}

- (id)_background
{
  v3 = [(NTKBlackcombColorPalette *)self dialColorStyle];
  if (v3 == 1)
  {
    v3 = [(NTKBlackcombColorPalette *)self lightBackground];
  }

  else if (!v3)
  {
    v3 = [(NTKBlackcombColorPalette *)self darkBackground];
  }

  return v3;
}

- (id)_hourMarker
{
  v3 = [(NTKBlackcombColorPalette *)self dialColorStyle];
  if (v3 == 1)
  {
    v3 = [(NTKBlackcombColorPalette *)self darkHourMarker];
  }

  else if (!v3)
  {
    v3 = [(NTKBlackcombColorPalette *)self lightHourMarker];
  }

  return v3;
}

- (id)_smallTick
{
  v2 = [(NTKBlackcombColorPalette *)self hourMarker];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

- (id)_largeTick
{
  v4 = [(NTKBlackcombColorPalette *)self dialColorStyle];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = 0.6;
  }

  else
  {
    v5 = 0.7;
  }

  v6 = [(NTKBlackcombColorPalette *)self hourMarker];
  v2 = [v6 colorWithAlphaComponent:v5];

LABEL_6:

  return v2;
}

- (id)tritiumPalette
{
  v4.receiver = self;
  v4.super_class = NTKBlackcombColorPalette;
  v2 = [(NTKFaceColorPalette *)&v4 tritiumPalette];
  [v2 setDialColorStyle:0];

  return v2;
}

@end