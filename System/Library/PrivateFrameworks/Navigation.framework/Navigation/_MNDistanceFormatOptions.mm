@interface _MNDistanceFormatOptions
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _MNDistanceFormatOptions

- (unint64_t)hash
{
  minimumFractionDigits = [(_MNDistanceFormatOptions *)self minimumFractionDigits];
  v4 = [(_MNDistanceFormatOptions *)self maximumFractionDigits]^ minimumFractionDigits;
  v5 = v4 ^ [(_MNDistanceFormatOptions *)self metric];
  yards = [(_MNDistanceFormatOptions *)self yards];
  v7 = v5 ^ yards ^ [(_MNDistanceFormatOptions *)self abbreviateUnits];
  spoken = [(_MNDistanceFormatOptions *)self spoken];
  v9 = spoken ^ [(_MNDistanceFormatOptions *)self rounding];
  unitLength = [(_MNDistanceFormatOptions *)self unitLength];
  v11 = v7 ^ v9 ^ [unitLength hash];
  locale = [(_MNDistanceFormatOptions *)self locale];
  v13 = [locale hash];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    minimumFractionDigits = [(_MNDistanceFormatOptions *)self minimumFractionDigits];
    if (minimumFractionDigits == [v5 minimumFractionDigits] && (v7 = -[_MNDistanceFormatOptions maximumFractionDigits](self, "maximumFractionDigits"), v7 == objc_msgSend(v5, "maximumFractionDigits")) && (v8 = -[_MNDistanceFormatOptions metric](self, "metric"), v8 == objc_msgSend(v5, "metric")) && (v9 = -[_MNDistanceFormatOptions yards](self, "yards"), v9 == objc_msgSend(v5, "yards")) && (v10 = -[_MNDistanceFormatOptions abbreviateUnits](self, "abbreviateUnits"), v10 == objc_msgSend(v5, "abbreviateUnits")) && (v11 = -[_MNDistanceFormatOptions spoken](self, "spoken"), v11 == objc_msgSend(v5, "spoken")) && (v12 = -[_MNDistanceFormatOptions rounding](self, "rounding"), v12 == objc_msgSend(v5, "rounding")))
    {
      unitLength = [(_MNDistanceFormatOptions *)self unitLength];
      unitLength2 = [v5 unitLength];
      if ([unitLength isEqual:unitLength2])
      {
        locale = [(_MNDistanceFormatOptions *)self locale];
        locale2 = [v5 locale];
        v17 = [locale isEqual:locale2];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end