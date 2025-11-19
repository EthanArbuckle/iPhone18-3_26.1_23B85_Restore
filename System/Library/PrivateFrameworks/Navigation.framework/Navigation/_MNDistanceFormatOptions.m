@interface _MNDistanceFormatOptions
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _MNDistanceFormatOptions

- (unint64_t)hash
{
  v3 = [(_MNDistanceFormatOptions *)self minimumFractionDigits];
  v4 = [(_MNDistanceFormatOptions *)self maximumFractionDigits]^ v3;
  v5 = v4 ^ [(_MNDistanceFormatOptions *)self metric];
  v6 = [(_MNDistanceFormatOptions *)self yards];
  v7 = v5 ^ v6 ^ [(_MNDistanceFormatOptions *)self abbreviateUnits];
  v8 = [(_MNDistanceFormatOptions *)self spoken];
  v9 = v8 ^ [(_MNDistanceFormatOptions *)self rounding];
  v10 = [(_MNDistanceFormatOptions *)self unitLength];
  v11 = v7 ^ v9 ^ [v10 hash];
  v12 = [(_MNDistanceFormatOptions *)self locale];
  v13 = [v12 hash];

  return v11 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(_MNDistanceFormatOptions *)self minimumFractionDigits];
    if (v6 == [v5 minimumFractionDigits] && (v7 = -[_MNDistanceFormatOptions maximumFractionDigits](self, "maximumFractionDigits"), v7 == objc_msgSend(v5, "maximumFractionDigits")) && (v8 = -[_MNDistanceFormatOptions metric](self, "metric"), v8 == objc_msgSend(v5, "metric")) && (v9 = -[_MNDistanceFormatOptions yards](self, "yards"), v9 == objc_msgSend(v5, "yards")) && (v10 = -[_MNDistanceFormatOptions abbreviateUnits](self, "abbreviateUnits"), v10 == objc_msgSend(v5, "abbreviateUnits")) && (v11 = -[_MNDistanceFormatOptions spoken](self, "spoken"), v11 == objc_msgSend(v5, "spoken")) && (v12 = -[_MNDistanceFormatOptions rounding](self, "rounding"), v12 == objc_msgSend(v5, "rounding")))
    {
      v13 = [(_MNDistanceFormatOptions *)self unitLength];
      v14 = [v5 unitLength];
      if ([v13 isEqual:v14])
      {
        v15 = [(_MNDistanceFormatOptions *)self locale];
        v16 = [v5 locale];
        v17 = [v15 isEqual:v16];
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