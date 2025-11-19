@interface CalculateUnit
+ (CalculateUnit)unitWithID:(int)a3 unitsInfo:(id)a4 exponent:(int)a5;
+ (id)localizedNameForValue:(double)a3 locale:(id)a4 retainingFormat:(BOOL)a5 unitFormat:(unint64_t)a6 unitType:(unint64_t)a7 name:(id)a8;
- (BOOL)contains:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CalculateUnit)nextSmallest;
- (CalculateUnitCategory)category;
- (NSString)displayName;
- (NSString)displayNames;
- (NSString)shortName;
- (id)description;
- (id)locale;
- (id)localizedNameForFormat:(unint64_t)a3;
- (int64_t)compare:(id)a3;
@end

@implementation CalculateUnit

- (CalculateUnitCategory)category
{
  WeakRetained = objc_loadWeakRetained(&self->_category);

  return WeakRetained;
}

- (id)description
{
  if ([(CalculateUnit *)self exponent]== 1)
  {
    v3 = [(CalculateUnit *)self name];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(CalculateUnit *)self name];
    v3 = [v4 stringWithFormat:@"%@^%d", v5, -[CalculateUnit exponent](self, "exponent")];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CalculateUnit *)self compare:v4]== 0;

  return v5;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([v4 containsString:@"|"])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(CalculateUnit *)self displayNames];
      v5 = [v6 rangeOfString:v4 options:129] != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (NSString)displayNames
{
  v3 = +[Localize systemLocale];
  if (!self->_displayNames || ([(NSLocale *)self->_displayNamesLocale isEqual:v3]& 1) == 0)
  {
    objc_storeStrong(&self->_displayNamesLocale, v3);
    v4 = [(CalculateUnit *)self name];
    v5 = [Localize localizationForLocale:v3];
    v6 = [Localize localizedStringForKey:v4 value:0 table:@"LocalizableUnits" localization:v5];
    displayNames = self->_displayNames;
    self->_displayNames = v6;
  }

  v8 = self->_displayNames;
  v9 = v8;

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CalculateUnit *)self unitType];
  v6 = [v4 unitType];
  if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5 > v6;
  }

  if (!v7)
  {
    v8 = [(CalculateUnit *)self exponent];
    v9 = [v4 exponent];
    if (v8 < v9)
    {
      v7 = -1;
    }

    else
    {
      v7 = v8 > v9;
    }
  }

  return v7;
}

- (CalculateUnit)nextSmallest
{
  if (!self->_nextSmallest)
  {
    v3 = [(UnitInfo *)self->_unitInfo nextSmallest];

    if (v3)
    {
      v4 = [(UnitInfo *)self->_unitInfo nextSmallest];
      v5 = objc_opt_new();
      nextSmallest = self->_nextSmallest;
      self->_nextSmallest = v5;

      v7 = [v4 name];
      v8 = self->_nextSmallest;
      name = v8->_name;
      v8->_name = v7;

      self->_nextSmallest->_exponent = self->_exponent;
      objc_storeStrong(&self->_nextSmallest->_unitInfo, v4);
      v10 = [v4 typeInfo];
      v11 = [v10 name];
      v12 = [&unk_1F419A730 objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = [v12 intValue];
      }

      else
      {
        v13 = 1;
      }

      self->_nextSmallest->_unitType = v13;
    }
  }

  v14 = self->_nextSmallest;

  return v14;
}

- (id)localizedNameForFormat:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 4;
  }

  v5 = [(CalculateUnit *)self locale];
  v6 = [(CalculateUnit *)self localizedNameForValue:v5 locale:0 retainingFormat:v4 unitFormat:1.0];

  if (([v6 hasSuffix:@"²"] & 1) != 0 || objc_msgSend(v6, "hasSuffix:", @"³"))
  {
    v7 = [(CalculateUnit *)self locale];
    v8 = [CalculateResult defaultNumberFormatter:v7];

    v9 = [v8 stringFromNumber:&unk_1F4199CA0];
    if (([v9 isEqualToString:@"1"] & 1) == 0)
    {
      v10 = @"²";
      if ([v6 hasSuffix:@"²"])
      {
        v11 = 2;
LABEL_11:
        v12 = [v6 stringByReplacingOccurrencesOfString:v10 withString:&stru_1F418FCD8];

        v6 = [v8 formatString:v12 byAppendingExponent:v11 withNumberingSystem:0];

        goto LABEL_12;
      }

      v10 = @"³";
      if ([v6 hasSuffix:@"³"])
      {
        v11 = 3;
        goto LABEL_11;
      }
    }

LABEL_12:
  }

  return v6;
}

- (NSString)shortName
{
  shortName = self->_shortName;
  if (!shortName)
  {
    v4 = [(CalculateUnit *)self localizedNameForFormat:2];
    v5 = self->_shortName;
    self->_shortName = v4;

    shortName = self->_shortName;
  }

  return shortName;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    if (self->_unitType == 16)
    {
      v4 = [(CalculateUnit *)self locale];
      v5 = [v4 displayNameForKey:*MEMORY[0x1E695D980] value:self->_name];
      v6 = self->_displayName;
      self->_displayName = v5;
    }

    else
    {
      v4 = [(NSString *)self->_name stringByAppendingString:@" (Title)"];
      name = self->_name;
      v6 = [(CalculateUnit *)self locale];
      v8 = [Localize localizationForLocale:v6];
      v9 = [Localize localizedStringForKey:v4 value:name table:@"LocalizableUnitsOutput" localization:v8];
      v10 = self->_displayName;
      self->_displayName = v9;
    }

    displayName = self->_displayName;
  }

  v11 = displayName;

  return v11;
}

- (id)locale
{
  v2 = [(CalculateUnit *)self category];
  v3 = [v2 collection];
  v4 = [v3 locales];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[Localize systemLocale];
  }

  v8 = v7;

  return v8;
}

+ (id)localizedNameForValue:(double)a3 locale:(id)a4 retainingFormat:(BOOL)a5 unitFormat:(unint64_t)a6 unitType:(unint64_t)a7 name:(id)a8
{
  v11 = a5;
  dst[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a8;
  v15 = [Localize localizationForLocale:v13];
  if (a7 != 16 || (a6 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    if (a6 - 1 <= 2)
    {
      v17 = off_1E815C6F8[a6 - 1];
      goto LABEL_7;
    }
  }

  else
  {
    v16 = [v13 localeIdentifier];
    [v16 UTF8String];

    unum_open();
    dst[0] = 0;
    u_uastrncpy(dst, [v14 UTF8String], 3);
    memset(src, 0, sizeof(src));
    unum_formatDoubleCurrency();
    v37 = v11;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *v38 = 0u;
    u_austrcpy(v38, src);
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v38];
    v36 = [v31 substringWithRange:{0, 0}];
    v32 = [v31 stringByReplacingOccurrencesOfString:v36 withString:&stru_1F418FCD8];
    v33 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v34 = [v32 stringByTrimmingCharactersInSet:v33];

    unum_close();
    if (v36)
    {
      if (v37)
      {
        v35 = [v31 stringByReplacingOccurrencesOfString:v34 withString:@"%g"];
      }

      else
      {
        v35 = v36;
      }

      v26 = v35;

      goto LABEL_16;
    }

    v11 = v37;
  }

  v17 = @" (Long)";
LABEL_7:
  v18 = [v14 stringByAppendingString:v17];
  v19 = [Localize localizedStringForKey:v18 value:&stru_1F418FCD8 table:@"LocalizableUnitsOutput" localization:v15];
  if ([v19 isEqualToString:v18])
  {
    v20 = [@"%g " stringByAppendingString:v14];

    v19 = v20;
  }

  v21 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v19, *&a3];
  v22 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%g", *&a3];
  v23 = [v21 rangeOfString:v22];
  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v21;
  }

  else
  {
    if (!v11)
    {
      v27 = [v21 stringByReplacingCharactersInRange:v23 withString:{v24, &stru_1F418FCD8}];
      v28 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v26 = [v27 stringByTrimmingCharactersInSet:v28];

      goto LABEL_15;
    }

    v25 = [v21 stringByReplacingCharactersInRange:v23 withString:{v24, @"%g"}];
  }

  v26 = v25;
LABEL_15:

LABEL_16:
  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (CalculateUnit)unitWithID:(int)a3 unitsInfo:(id)a4 exponent:(int)a5
{
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v7 objectAtIndexedSubscript:a3];
  v10 = [v9 name];
  v11 = *(v8 + 16);
  *(v8 + 16) = v10;

  *(v8 + 8) = a5;
  v12 = [v7 objectAtIndexedSubscript:a3];

  v13 = *(v8 + 80);
  *(v8 + 80) = v12;

  v14 = [*(v8 + 80) typeInfo];
  v15 = [v14 name];
  v16 = [&unk_1F419A730 objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = [v16 intValue];
  }

  else
  {
    v17 = 1;
  }

  *(v8 + 40) = v17;

  return v8;
}

@end