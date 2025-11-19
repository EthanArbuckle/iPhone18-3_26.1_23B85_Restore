@interface ICMediaTime
- (BOOL)isEqualToMediaTime:(id)a3;
- (ICMediaTime)initWithSeconds:(double)a3 ignoreFractionalSeconds:(BOOL)a4;
- (NSString)durationDescription;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICMediaTime

- (ICMediaTime)initWithSeconds:(double)a3 ignoreFractionalSeconds:(BOOL)a4
{
  v14.receiver = self;
  v14.super_class = ICMediaTime;
  v6 = [(ICMediaTime *)&v14 init];
  v8 = v6;
  if (v6)
  {
    if (a3 < 0.0)
    {
      [(ICMediaTime *)v6 setNegative:1];
      a3 = -a3;
    }

    if (a3 >= 86400.0)
    {
      v9 = a3 / 86400.0;
      a3 = a3 - floor(a3 / 86400.0) * 86400.0;
      LODWORD(v7) = vcvtmd_s64_f64(v9);
      [(ICMediaTime *)v8 setDays:v7];
    }

    if (a3 >= 3600.0)
    {
      v10 = a3 / 3600.0;
      a3 = a3 - floor(a3 / 3600.0) * 3600.0;
      LODWORD(v7) = vcvtmd_s64_f64(v10);
      [(ICMediaTime *)v8 setHours:v7];
    }

    if (a3 >= 60.0)
    {
      v11 = a3 / 60.0;
      a3 = a3 - floor(a3 / 60.0) * 60.0;
      LODWORD(v7) = vcvtmd_s64_f64(v11);
      [(ICMediaTime *)v8 setMinutes:v7];
    }

    LODWORD(v7) = vcvtmd_s64_f64(a3);
    [(ICMediaTime *)v8 setSeconds:v7];
    if (a4)
    {
      v12 = 0;
    }

    else
    {
      LODWORD(v12) = vcvtmd_s64_f64((a3 - [(ICMediaTime *)v8 seconds]) * 100.0);
    }

    [(ICMediaTime *)v8 setCentiseconds:v12];
  }

  return v8;
}

- (BOOL)isEqualToMediaTime:(id)a3
{
  v4 = a3;
  v5 = [(ICMediaTime *)self days];
  if (v5 == [v4 days] && (v6 = -[ICMediaTime hours](self, "hours"), v6 == objc_msgSend(v4, "days")) && (v7 = -[ICMediaTime minutes](self, "minutes"), v7 == objc_msgSend(v4, "minutes")) && (v8 = -[ICMediaTime seconds](self, "seconds"), v8 == objc_msgSend(v4, "seconds")))
  {
    v9 = [(ICMediaTime *)self centiseconds];
    v10 = v9 == [v4 centiseconds];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICMediaTime allocWithZone:?]];
  [(ICMediaTime *)v4 setDays:[(ICMediaTime *)self days]];
  [(ICMediaTime *)v4 setHours:[(ICMediaTime *)self hours]];
  [(ICMediaTime *)v4 setMinutes:[(ICMediaTime *)self minutes]];
  [(ICMediaTime *)v4 setSeconds:[(ICMediaTime *)self seconds]];
  [(ICMediaTime *)v4 setCentiseconds:[(ICMediaTime *)self centiseconds]];
  return v4;
}

- (NSString)durationDescription
{
  if ([(ICMediaTime *)self isZero])
  {
    v3 = __ICLocalizedFrameworkString_impl(@"zero seconds", @"zero seconds", 0, 1);
  }

  else
  {
    if ([(ICMediaTime *)self days])
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = __ICLocalizedFrameworkString_impl(@"%d days", @"%d days", 0, 1);
      v6 = [v4 localizedStringWithFormat:v5, -[ICMediaTime days](self, "days")];
    }

    else
    {
      v6 = 0;
    }

    if ([(ICMediaTime *)self hours])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = __ICLocalizedFrameworkString_impl(@"%d hours", @"%d hours", 0, 1);
      v9 = [v7 localizedStringWithFormat:v8, -[ICMediaTime hours](self, "hours")];
    }

    else
    {
      v9 = 0;
    }

    if ([(ICMediaTime *)self minutes])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = __ICLocalizedFrameworkString_impl(@"%d minutes", @"%d minutes", 0, 1);
      v12 = [v10 localizedStringWithFormat:v11, -[ICMediaTime minutes](self, "minutes")];
    }

    else
    {
      v12 = 0;
    }

    if ([(ICMediaTime *)self centiseconds]|| [(ICMediaTime *)self seconds])
    {
      if ([(ICMediaTime *)self centiseconds])
      {
        v19 = [(ICMediaTime *)self seconds];
        v20 = (([(ICMediaTime *)self centiseconds]/ 100.0) + v19);
        if (!__accessibilityCentisecondsNumberFormatter)
        {
          v21 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          v22 = __accessibilityCentisecondsNumberFormatter;
          __accessibilityCentisecondsNumberFormatter = v21;

          [__accessibilityCentisecondsNumberFormatter setMaximumFractionDigits:2];
        }

        v23 = __ICLocalizedFrameworkString_impl(@"%1$@ %2$f formatted fractional seconds", @"%1$@ %2$f formatted fractional seconds", 0, 1);
        v24 = MEMORY[0x1E696AEC0];
        v25 = __accessibilityCentisecondsNumberFormatter;
        v26 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
        v27 = [v25 stringFromNumber:v26];
        v28 = [v24 localizedStringWithFormat:v23, v27, *&v20];
      }

      else
      {
        v29 = MEMORY[0x1E696AEC0];
        v23 = __ICLocalizedFrameworkString_impl(@"%d seconds", @"%d seconds", 0, 1);
        v28 = [v29 localizedStringWithFormat:v23, -[ICMediaTime seconds](self, "seconds")];
      }
    }

    else
    {
      v28 = 0;
    }

    v3 = __ICAccessibilityStringForVariables(0, v6, v13, v14, v15, v16, v17, v18, v9);
  }

  return v3;
}

@end