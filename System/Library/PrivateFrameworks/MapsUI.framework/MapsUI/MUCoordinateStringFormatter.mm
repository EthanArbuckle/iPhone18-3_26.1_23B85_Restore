@interface MUCoordinateStringFormatter
- (id)_coordinatePartStringForValue:(double)value positiveSymbol:(int)symbol negativeSymbol:(int)negativeSymbol;
- (id)stringFromCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation MUCoordinateStringFormatter

- (id)_coordinatePartStringForValue:(double)value positiveSymbol:(int)symbol negativeSymbol:(int)negativeSymbol
{
  v6 = fabs(value);
  v7 = MKLocalizedAbbreviationForCompassPoint();
  if ([(MUCoordinateStringFormatter *)self isCoarseLocation])
  {
    v8 = @"Coordinates value [Placecard][Coarse Location]";
  }

  else
  {
    v8 = @"Coordinates value [Placecard][Precise Location]";
  }

  v9 = _MULocalizedStringFromThisBundle(v8);
  v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, *&v6, v7];

  return v10;
}

- (id)stringFromCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = [(MUCoordinateStringFormatter *)self _coordinatePartStringForValue:1 positiveSymbol:5 negativeSymbol:coordinate.latitude];
  v6 = [(MUCoordinateStringFormatter *)self _coordinatePartStringForValue:7 positiveSymbol:3 negativeSymbol:longitude];
  v12[0] = v5;
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = _MULocalizedStringFromThisBundle(@"Coordinates delimeter");
  v9 = [v7 componentsJoinedByString:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end