@interface CalculateUnit
+ (CalculateUnit)unitWithID:(int)d unitsInfo:(id)info exponent:(int)exponent;
+ (id)localizedNameForValue:(double)value locale:(id)locale retainingFormat:(BOOL)format unitFormat:(unint64_t)unitFormat unitType:(unint64_t)type name:(id)name;
- (BOOL)contains:(id)contains;
- (BOOL)isEqual:(id)equal;
- (CalculateUnit)nextSmallest;
- (CalculateUnitCategory)category;
- (NSString)displayName;
- (NSString)displayNames;
- (NSString)shortName;
- (id)description;
- (id)locale;
- (id)localizedNameForFormat:(unint64_t)format;
- (int64_t)compare:(id)compare;
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
    name = [(CalculateUnit *)self name];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    name2 = [(CalculateUnit *)self name];
    name = [v4 stringWithFormat:@"%@^%d", name2, -[CalculateUnit exponent](self, "exponent")];
  }

  return name;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CalculateUnit *)self compare:equalCopy]== 0;

  return v5;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  if ([containsCopy length])
  {
    if ([containsCopy containsString:@"|"])
    {
      v5 = 0;
    }

    else
    {
      displayNames = [(CalculateUnit *)self displayNames];
      v5 = [displayNames rangeOfString:containsCopy options:129] != 0x7FFFFFFFFFFFFFFFLL;
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
    name = [(CalculateUnit *)self name];
    v5 = [Localize localizationForLocale:v3];
    v6 = [Localize localizedStringForKey:name value:0 table:@"LocalizableUnits" localization:v5];
    displayNames = self->_displayNames;
    self->_displayNames = v6;
  }

  v8 = self->_displayNames;
  v9 = v8;

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  unitType = [(CalculateUnit *)self unitType];
  unitType2 = [compareCopy unitType];
  if (unitType < unitType2)
  {
    v7 = -1;
  }

  else
  {
    v7 = unitType > unitType2;
  }

  if (!v7)
  {
    exponent = [(CalculateUnit *)self exponent];
    exponent2 = [compareCopy exponent];
    if (exponent < exponent2)
    {
      v7 = -1;
    }

    else
    {
      v7 = exponent > exponent2;
    }
  }

  return v7;
}

- (CalculateUnit)nextSmallest
{
  if (!self->_nextSmallest)
  {
    nextSmallest = [(UnitInfo *)self->_unitInfo nextSmallest];

    if (nextSmallest)
    {
      nextSmallest2 = [(UnitInfo *)self->_unitInfo nextSmallest];
      v5 = objc_opt_new();
      nextSmallest = self->_nextSmallest;
      self->_nextSmallest = v5;

      name = [nextSmallest2 name];
      v8 = self->_nextSmallest;
      name = v8->_name;
      v8->_name = name;

      self->_nextSmallest->_exponent = self->_exponent;
      objc_storeStrong(&self->_nextSmallest->_unitInfo, nextSmallest2);
      typeInfo = [nextSmallest2 typeInfo];
      name2 = [typeInfo name];
      v12 = [&unk_1F419A730 objectForKeyedSubscript:name2];

      if (v12)
      {
        intValue = [v12 intValue];
      }

      else
      {
        intValue = 1;
      }

      self->_nextSmallest->_unitType = intValue;
    }
  }

  v14 = self->_nextSmallest;

  return v14;
}

- (id)localizedNameForFormat:(unint64_t)format
{
  if (format)
  {
    formatCopy = format;
  }

  else
  {
    formatCopy = 4;
  }

  locale = [(CalculateUnit *)self locale];
  v6 = [(CalculateUnit *)self localizedNameForValue:locale locale:0 retainingFormat:formatCopy unitFormat:1.0];

  if (([v6 hasSuffix:@"²"] & 1) != 0 || objc_msgSend(v6, "hasSuffix:", @"³"))
  {
    locale2 = [(CalculateUnit *)self locale];
    v8 = [CalculateResult defaultNumberFormatter:locale2];

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
      locale = [(CalculateUnit *)self locale];
      v5 = [locale displayNameForKey:*MEMORY[0x1E695D980] value:self->_name];
      locale2 = self->_displayName;
      self->_displayName = v5;
    }

    else
    {
      locale = [(NSString *)self->_name stringByAppendingString:@" (Title)"];
      name = self->_name;
      locale2 = [(CalculateUnit *)self locale];
      v8 = [Localize localizationForLocale:locale2];
      v9 = [Localize localizedStringForKey:locale value:name table:@"LocalizableUnitsOutput" localization:v8];
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
  category = [(CalculateUnit *)self category];
  collection = [category collection];
  locales = [collection locales];
  firstObject = [locales firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    v7 = firstObject;
  }

  else
  {
    v7 = +[Localize systemLocale];
  }

  v8 = v7;

  return v8;
}

+ (id)localizedNameForValue:(double)value locale:(id)locale retainingFormat:(BOOL)format unitFormat:(unint64_t)unitFormat unitType:(unint64_t)type name:(id)name
{
  formatCopy = format;
  dst[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  nameCopy = name;
  v15 = [Localize localizationForLocale:localeCopy];
  if (type != 16 || (unitFormat & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    if (unitFormat - 1 <= 2)
    {
      v17 = off_1E815C6F8[unitFormat - 1];
      goto LABEL_7;
    }
  }

  else
  {
    localeIdentifier = [localeCopy localeIdentifier];
    [localeIdentifier UTF8String];

    unum_open();
    dst[0] = 0;
    u_uastrncpy(dst, [nameCopy UTF8String], 3);
    memset(src, 0, sizeof(src));
    unum_formatDoubleCurrency();
    v37 = formatCopy;
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
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v34 = [v32 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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

    formatCopy = v37;
  }

  v17 = @" (Long)";
LABEL_7:
  v18 = [nameCopy stringByAppendingString:v17];
  v19 = [Localize localizedStringForKey:v18 value:&stru_1F418FCD8 table:@"LocalizableUnitsOutput" localization:v15];
  if ([v19 isEqualToString:v18])
  {
    v20 = [@"%g " stringByAppendingString:nameCopy];

    v19 = v20;
  }

  v21 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v19, *&value];
  v22 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%g", *&value];
  v23 = [v21 rangeOfString:v22];
  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v21;
  }

  else
  {
    if (!formatCopy)
    {
      v27 = [v21 stringByReplacingCharactersInRange:v23 withString:{v24, &stru_1F418FCD8}];
      whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v26 = [v27 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

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

+ (CalculateUnit)unitWithID:(int)d unitsInfo:(id)info exponent:(int)exponent
{
  infoCopy = info;
  v8 = objc_opt_new();
  v9 = [infoCopy objectAtIndexedSubscript:d];
  name = [v9 name];
  v11 = *(v8 + 16);
  *(v8 + 16) = name;

  *(v8 + 8) = exponent;
  v12 = [infoCopy objectAtIndexedSubscript:d];

  v13 = *(v8 + 80);
  *(v8 + 80) = v12;

  typeInfo = [*(v8 + 80) typeInfo];
  name2 = [typeInfo name];
  v16 = [&unk_1F419A730 objectForKeyedSubscript:name2];

  if (v16)
  {
    intValue = [v16 intValue];
  }

  else
  {
    intValue = 1;
  }

  *(v8 + 40) = intValue;

  return v8;
}

@end