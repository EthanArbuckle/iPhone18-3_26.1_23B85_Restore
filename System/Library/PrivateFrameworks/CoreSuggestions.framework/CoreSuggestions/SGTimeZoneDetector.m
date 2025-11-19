@interface SGTimeZoneDetector
+ (id)_normalizedCountryString:(id)a3;
+ (id)_normalizedString:(id)a3;
+ (id)_regularExpressionForPostalCodeFormat:(id)a3;
- (SGTimeZoneDetector)init;
- (_NSRange)_airportCodeRangeForAddress:(id)a3;
- (id)_acronymForAddress:(id)a3 airportCodeRange:(_NSRange)a4 airportCodeNames:(id)a5;
- (id)_countryCodeByCountryNameFromNormalizedAddressWords:(id)a3;
- (id)_countryCodeByRegionAbbreviationFromNormalizedAddress:(id)a3;
- (id)_countryCodeByRegionNameFromNormalizedAddress:(id)a3 withWords:(id)a4;
- (id)_countryCodeByRegularExpressionFromNormalizedAddress:(id)a3;
- (id)_getCountryCodeForCountryName;
- (id)_getPostalCodeFormats;
- (id)_getRegionAbbreviations;
- (id)_getRegionNames;
- (id)_getTimeZoneAbbreviations;
- (id)_getTimeZoneForCountryCode;
- (id)_getTimeZoneForCountryCodeDictionarySupplement;
- (id)_getTimeZoneForPostalCode;
- (id)_getUniquePostalCodeFormats;
- (id)_postalCodeForAddress:(id)a3 withCountryCode:(id)a4;
- (id)_timeZoneNameForPostalCode:(id)a3 withPostalCodeTable:(id)a4;
- (id)countryCodeForAddress:(id)a3;
- (id)timeZoneFromAiportCodeForAddress:(id)a3;
- (id)timeZoneNameForAddress:(id)a3 withCountryCode:(id)a4;
- (void)_handleMemoryPressureStatus;
- (void)_readPlistRegionAbbreviationsData;
- (void)cleanupCache;
@end

@implementation SGTimeZoneDetector

- (id)timeZoneNameForAddress:(id)a3 withCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [objc_opt_class() _normalizedString:v6];

  v10 = [(SGTimeZoneDetector *)v8 _getTimeZoneForPostalCode];
  v11 = [v10 objectForKey:v7];
  if (v11)
  {
    v12 = [(SGTimeZoneDetector *)v8 _postalCodeForAddress:v9 withCountryCode:v7];
    v13 = [(SGTimeZoneDetector *)v8 _timeZoneNameForPostalCode:v12 withPostalCodeTable:v11];
  }

  else
  {
    v12 = [(SGTimeZoneDetector *)v8 _getTimeZoneForCountryCodeDictionarySupplement];
    v14 = [v12 objectForKey:v7];
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      v15 = [(SGTimeZoneDetector *)v8 _getTimeZoneForCountryCode];
      v13 = [v15 objectForKey:v7];
    }
  }

  objc_sync_exit(v8);

  return v13;
}

- (id)_timeZoneNameForPostalCode:(id)a3 withPostalCodeTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8 < 1)
  {
LABEL_6:
    v14 = 0;
  }

  else
  {
    v9 = v8;
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v6 substringToIndex:v9];
      v12 = [v7 objectForKey:v11];
      if (v12)
      {
        break;
      }

      objc_autoreleasePoolPop(v10);
      if (v9-- <= 1)
      {
        goto LABEL_6;
      }
    }

    v14 = v12;
    if ([v12 length] <= 2)
    {
      v15 = [(SGTimeZoneDetector *)self _getTimeZoneAbbreviations];
      v16 = [v15 objectForKey:v14];

      v14 = v16;
    }

    objc_autoreleasePoolPop(v10);
  }

  return v14;
}

- (id)countryCodeForAddress:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [objc_opt_class() _normalizedString:v4];
  v7 = [v6 uppercaseString];
  v8 = [(SGTimeZoneDetector *)v5 _countryCodeByRegionAbbreviationFromNormalizedAddress:v7];
  if (v8 || ([(SGTimeZoneDetector *)v5 _countryCodeByRegularExpressionFromNormalizedAddress:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
  }

  else
  {
    v11 = [v6 capitalizedString];
    v12 = [v11 componentsSeparatedByString:@" "];
    v13 = [(SGTimeZoneDetector *)v5 _countryCodeByRegionNameFromNormalizedAddress:v7 withWords:v12];
    if (!v13)
    {
      v13 = [(SGTimeZoneDetector *)v5 _countryCodeByCountryNameFromNormalizedAddressWords:v12];
    }

    v9 = v13;
  }

  objc_sync_exit(v5);

  return v9;
}

- (id)timeZoneFromAiportCodeForAddress:(id)a3
{
  v5 = a3;
  v6 = [(SGTimeZoneDetector *)self _airportCodeRangeForAddress:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v11 = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 pathForResource:@"TimeZoneAirportCodes" ofType:@"plist"];

    if (!v13)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"SGTimeZone.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"tzAirportCodesDataPath"}];
    }

    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v13];
    v15 = [v14 objectForKeyedSubscript:@"Airport Codes"];
    v16 = [v14 objectForKeyedSubscript:@"Airport Code Names"];
    v17 = [(SGTimeZoneDetector *)self _acronymForAddress:v5 airportCodeRange:v9 airportCodeNames:v10, v16];
    v18 = [v5 substringWithRange:{v9, v10}];
    v19 = v18;
    if (v17 && ([v18 isEqualToString:v17] & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v15 objectForKeyedSubscript:v19];
    }

    objc_autoreleasePoolPop(v11);
  }

  return v8;
}

- (id)_countryCodeByCountryNameFromNormalizedAddressWords:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SGTimeZoneDetector *)self _getCountryCodeForCountryName];
  v6 = [v4 count];
  v7 = v6 - 1;
  v8 = v6 + 5;
  do
  {
    v9 = v7;
    v10 = v8;
    if (v7 < 0)
    {
      break;
    }

    v11 = [v4 objectAtIndex:v7];
    v12 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v13 = [v11 rangeOfCharacterFromSet:v12];

    v7 = v9 - 1;
    v8 = v10 - 1;
  }

  while (v13 != 0x7FFFFFFFFFFFFFFFLL);
  v14 = objc_opt_new();
  v15 = 5;
  if (v9 > 5)
  {
    v15 = v9;
  }

  if (v15 - 5 <= v9)
  {
    v16 = 5;
    if (v9 > 5)
    {
      v16 = v9;
    }

    v17 = v16 - 6;
    v18 = v10 - v16;
    do
    {
      v19 = [v4 subarrayWithRange:{++v17, v18}];
      v20 = [v19 _pas_componentsJoinedByString:@" "];

      [v14 addObject:v20];
      --v18;
    }

    while (v17 < v9);
  }

  if (v9 >= 1)
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    do
    {
      v21 = [v4 subarrayWithRange:{0, v9}];
      v22 = [v21 _pas_componentsJoinedByString:@" "];

      [v14 addObject:v22];
    }

    while (v9-- > 1);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [v5 objectForKeyedSubscript:{*(*(&v33 + 1) + 8 * i), v33}];
        if (v29)
        {
          v30 = v29;
          goto LABEL_25;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0;
LABEL_25:

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_countryCodeByRegionNameFromNormalizedAddress:(id)a3 withWords:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SGTimeZoneDetector *)self _getRegionNames];
  v18 = [v7 count];
  v9 = v18 - 2;
  v10 = 3;
  while (1)
  {
    context = objc_autoreleasePoolPush();
    if (v18 >= v10)
    {
      break;
    }

LABEL_10:
    objc_autoreleasePoolPop(context);
    ++v9;
    if (v10-- <= 1)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  v11 = 0;
  while (1)
  {
    if (v10 == 1)
    {
      v12 = [v7 objectAtIndex:v11];
    }

    else
    {
      v13 = [v7 subarrayWithRange:{v11, v10}];
      v12 = [v13 _pas_componentsJoinedByString:@" "];
    }

    v14 = [v8 objectForKey:{v12, v18}];
    if (v14)
    {
      v15 = [(SGTimeZoneDetector *)self _postalCodeForAddress:v6 withCountryCode:v14];
      if (v15)
      {
        break;
      }
    }

    if (v9 == ++v11)
    {
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(context);
LABEL_13:

  return v14;
}

- (id)_countryCodeByRegularExpressionFromNormalizedAddress:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(SGTimeZoneDetector *)self _getUniquePostalCodeFormats];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [v5 objectForKey:{v9, v15}];
          v12 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v11 options:0 error:0];
          if ([v12 rangeOfFirstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = v9;

            objc_autoreleasePoolPop(v10);
            goto LABEL_12;
          }

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_countryCodeByRegionAbbreviationFromNormalizedAddress:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SGTimeZoneDetector *)self _getRegionAbbreviations];
  v6 = objc_autoreleasePoolPush();
  v7 = [v4 componentsSeparatedByString:@" "];
  objc_autoreleasePoolPop(v6);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    v30 = v8;
    v31 = v5;
    v27 = *v38;
    do
    {
      v12 = 0;
      v28 = v10;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [v5 objectForKey:v13];
        if (v15)
        {
          context = v14;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v29 = v15;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v34;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v34 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v33 + 1) + 8 * i);
                v22 = [v16 objectForKey:{v21, v27}];
                v23 = [objc_opt_class() _regularExpressionForPostalCodeFormat:v22];
                if ([v23 rangeOfFirstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v24 = v21;

                  objc_autoreleasePoolPop(context);
                  v8 = v30;
                  v5 = v31;
                  goto LABEL_21;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v8 = v30;
          v5 = v31;
          v11 = v27;
          v10 = v28;
          v14 = context;
          v15 = v29;
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      v24 = 0;
    }

    while (v10);
  }

  else
  {
    v24 = 0;
  }

LABEL_21:

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_acronymForAddress:(id)a3 airportCodeRange:(_NSRange)a4 airportCodeNames:(id)a5
{
  location = a4.location;
  v7 = a5;
  v8 = [a3 substringToIndex:location - 1];
  v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v10 = [v8 componentsSeparatedByCharactersInSet:v9];

  v11 = objc_opt_new();
  v12 = [v10 count];
  if (v12 - 1 >= 0)
  {
    v13 = v12;
    v14 = 0;
    v15 = MEMORY[0x1E69E9830];
    do
    {
      v16 = [v10 objectAtIndexedSubscript:--v13];
      if ([v16 length])
      {
        v17 = [v10 objectAtIndexedSubscript:v13];
        v18 = [v17 characterAtIndex:0];
        if (v18 > 0x7F)
        {
          v19 = __maskrune(v18, 0x8000uLL);
        }

        else
        {
          v19 = *(v15 + 4 * v18 + 60) & 0x8000;
        }

        if (v19)
        {
          v20 = [v10 objectAtIndexedSubscript:v13];
          [v11 insertObject:v20 atIndex:0];

          if (v14 > 1)
          {
            v23 = [v11 _pas_componentsJoinedByString:@" "];
            v24 = [v7 objectForKeyedSubscript:v23];

            if (v24)
            {
              v21 = 0;
            }

            else
            {
              v21 = objc_opt_new();
              for (i = 0; i != 3; ++i)
              {
                v26 = [v10 objectAtIndexedSubscript:i];
                [v21 appendFormat:@"%c", objc_msgSend(v26, "characterAtIndex:", 0)];
              }
            }

            goto LABEL_13;
          }

          ++v14;
        }
      }

      else
      {
      }
    }

    while (v13 > 0);
  }

  v21 = 0;
LABEL_13:

  return v21;
}

- (_NSRange)_airportCodeRangeForAddress:(id)a3
{
  v5 = MEMORY[0x1E696AE70];
  v6 = a3;
  v7 = [[v5 alloc] initWithPattern:@"\\([A-Z][A-Z][A-Z]\\)" options:0 error:0];
  v8 = [v7 rangeOfFirstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  v10 = v9;

  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 != 5)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"SGTimeZone.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"rangeOfFirstMatch.length == 5"}];
    }

    v11 = v8 + 1;
    v10 -= 2;
  }

  v12 = v11;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)_postalCodeForAddress:(id)a3 withCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SGTimeZoneDetector *)self _getPostalCodeFormats];
  v9 = [v8 objectForKey:v7];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_opt_class() _regularExpressionForPostalCodeFormat:v9];
    v12 = [v11 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
    if ([v12 count])
    {
      context = objc_autoreleasePoolPush();
      v13 = [v12 lastObject];
      v14 = [v13 range];
      v16 = v15;

      v17 = [v6 substringWithRange:{v14, v16}];
      v18 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      v19 = [v18 invertedSet];
      [v17 componentsSeparatedByCharactersInSet:v19];
      v29 = v12;
      v20 = v6;
      v21 = v8;
      v22 = v7;
      v24 = v23 = v10;
      [v24 _pas_componentsJoinedByString:&stru_1F385B250];
      v25 = v30 = v11;

      v10 = v23;
      v7 = v22;
      v8 = v21;
      v6 = v20;
      v12 = v29;

      v26 = [v25 uppercaseString];

      v11 = v30;
      objc_autoreleasePoolPop(context);
    }

    else
    {
      v26 = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_getRegionNames
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"TimeZoneRegionNames" ofType:@"plist"];

  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SGTimeZone.m" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"tzNamesDataPath"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v5];
  v7 = [v6 objectForKey:@"Region Name Dictionary"];

  return v7;
}

- (id)_getPostalCodeFormats
{
  postalCodeFormats = self->_postalCodeFormats;
  if (!postalCodeFormats)
  {
    [(SGTimeZoneDetector *)self _readPlistRegionAbbreviationsData];
    postalCodeFormats = self->_postalCodeFormats;
  }

  return postalCodeFormats;
}

- (id)_getUniquePostalCodeFormats
{
  uniquePostalCodeFormats = self->_uniquePostalCodeFormats;
  if (!uniquePostalCodeFormats)
  {
    [(SGTimeZoneDetector *)self _readPlistRegionAbbreviationsData];
    uniquePostalCodeFormats = self->_uniquePostalCodeFormats;
  }

  return uniquePostalCodeFormats;
}

- (id)_getTimeZoneAbbreviations
{
  timeZoneAbbreviations = self->_timeZoneAbbreviations;
  if (!timeZoneAbbreviations)
  {
    [(SGTimeZoneDetector *)self _readPlistRegionAbbreviationsData];
    timeZoneAbbreviations = self->_timeZoneAbbreviations;
  }

  return timeZoneAbbreviations;
}

- (id)_getTimeZoneForPostalCode
{
  timeZoneForPostalCode = self->_timeZoneForPostalCode;
  if (!timeZoneForPostalCode)
  {
    [(SGTimeZoneDetector *)self _readPlistRegionAbbreviationsData];
    timeZoneForPostalCode = self->_timeZoneForPostalCode;
  }

  return timeZoneForPostalCode;
}

- (id)_getRegionAbbreviations
{
  regionAbbreviations = self->_regionAbbreviations;
  if (!regionAbbreviations)
  {
    [(SGTimeZoneDetector *)self _readPlistRegionAbbreviationsData];
    regionAbbreviations = self->_regionAbbreviations;
  }

  return regionAbbreviations;
}

- (id)_getTimeZoneForCountryCodeDictionarySupplement
{
  timeZoneForCountryCodeDictionarySupplement = self->_timeZoneForCountryCodeDictionarySupplement;
  if (!timeZoneForCountryCodeDictionarySupplement)
  {
    [(SGTimeZoneDetector *)self _readPlistRegionAbbreviationsData];
    timeZoneForCountryCodeDictionarySupplement = self->_timeZoneForCountryCodeDictionarySupplement;
  }

  return timeZoneForCountryCodeDictionarySupplement;
}

- (void)cleanupCache
{
  obj = self;
  objc_sync_enter(obj);
  timeZoneForCountryCodeDictionarySupplement = obj->_timeZoneForCountryCodeDictionarySupplement;
  obj->_timeZoneForCountryCodeDictionarySupplement = 0;

  regionAbbreviations = obj->_regionAbbreviations;
  obj->_regionAbbreviations = 0;

  timeZoneForPostalCode = obj->_timeZoneForPostalCode;
  obj->_timeZoneForPostalCode = 0;

  timeZoneAbbreviations = obj->_timeZoneAbbreviations;
  obj->_timeZoneAbbreviations = 0;

  uniquePostalCodeFormats = obj->_uniquePostalCodeFormats;
  obj->_uniquePostalCodeFormats = 0;

  postalCodeFormats = obj->_postalCodeFormats;
  obj->_postalCodeFormats = 0;

  objc_sync_exit(obj);
}

- (void)_readPlistRegionAbbreviationsData
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v4 pathForResource:@"TimeZoneRegionAbbreviations" ofType:@"plist"];

  if (!v19)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"SGTimeZone.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"tzAbbreviationsDataPath"}];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v19];
  v6 = [v5 objectForKey:@"Time Zone Dictionary Supplement"];
  timeZoneForCountryCodeDictionarySupplement = self->_timeZoneForCountryCodeDictionarySupplement;
  self->_timeZoneForCountryCodeDictionarySupplement = v6;

  v8 = [v5 objectForKey:@"Region Abbreviation Dictionary"];
  regionAbbreviations = self->_regionAbbreviations;
  self->_regionAbbreviations = v8;

  v10 = [v5 objectForKey:@"Postal Code Time Zone Dictionary"];
  timeZoneForPostalCode = self->_timeZoneForPostalCode;
  self->_timeZoneForPostalCode = v10;

  v12 = [v5 objectForKey:@"Time Zone Abbreviations"];
  timeZoneAbbreviations = self->_timeZoneAbbreviations;
  self->_timeZoneAbbreviations = v12;

  v14 = [v5 objectForKey:@"Unique Postal Code Formats"];
  uniquePostalCodeFormats = self->_uniquePostalCodeFormats;
  self->_uniquePostalCodeFormats = v14;

  v16 = [v5 objectForKey:@"Postal Code Formats"];
  postalCodeFormats = self->_postalCodeFormats;
  self->_postalCodeFormats = v16;
}

- (id)_getTimeZoneForCountryCode
{
  v25 = *MEMORY[0x1E69E9840];
  timeZoneForCountryCode = self->_timeZoneForCountryCode;
  if (timeZoneForCountryCode)
  {
    obj = timeZoneForCountryCode;
    goto LABEL_23;
  }

  location = &self->_timeZoneForCountryCode;
  obj = objc_opt_new();
  [MEMORY[0x1E695DFE8] knownTimeZoneNames];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = *v21;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v20 + 1) + 8 * i);
      v9 = objc_autoreleasePoolPush();
      v10 = [MEMORY[0x1E695DFE8] timeZoneWithName:v8];
      v11 = [MEMORY[0x1E695DF58] systemLocale];
      v12 = [v10 localizedName:5 locale:v11];

      if ([v12 length] == 2)
      {
        v13 = [v12 characterAtIndex:0];
        if (v13 > 0x7F)
        {
          if (!__maskrune(v13, 0x8000uLL))
          {
            goto LABEL_18;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x8000) == 0)
        {
          goto LABEL_18;
        }

        v14 = [v12 characterAtIndex:1];
        if (v14 > 0x7F)
        {
          if (!__maskrune(v14, 0x8000uLL))
          {
            goto LABEL_18;
          }

LABEL_17:
          [(NSDictionary *)obj setValue:v8 forKey:v12];
          goto LABEL_18;
        }

        if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x8000) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_18:

      objc_autoreleasePoolPop(v9);
    }

    v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v5);
LABEL_20:

  if (self->_keepData)
  {
    objc_storeStrong(location, obj);
  }

LABEL_23:
  v15 = *MEMORY[0x1E69E9840];

  return obj;
}

- (id)_getCountryCodeForCountryName
{
  v62 = *MEMORY[0x1E69E9840];
  countryCodeForCountryName = self->_countryCodeForCountryName;
  if (countryCodeForCountryName)
  {
    v3 = countryCodeForCountryName;
  }

  else
  {
    v5 = self;
    location = &self->_countryCodeForCountryName;
    v3 = objc_opt_new();
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 pathForResource:@"TimeZoneCountryNames" ofType:@"plist"];

    if (!v7)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:v5 file:@"SGTimeZone.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"tzCountryNamesDataPath"}];
    }

    v39 = v7;
    v38 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v7];
    v8 = [v38 objectForKey:@"Country Code Dictionary Supplement"];
    [(NSDictionary *)v3 addEntriesFromDictionary:v8];

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1F38744C8];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v10 = [MEMORY[0x1E695DF58] preferredLanguages];
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      v14 = MEMORY[0x1E69E9830];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v53 + 1) + 8 * i);
          if ([v16 length] < 3)
          {
            v19 = 2;
          }

          else
          {
            v17 = [v16 characterAtIndex:2];
            if (v17 > 0x7F)
            {
              v18 = __maskrune(v17, 0x1000uLL);
            }

            else
            {
              v18 = *(v14 + 4 * v17 + 60) & 0x1000;
            }

            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }
          }

          v20 = [v16 substringToIndex:v19];
          [v9 addObject:v20];
        }

        v12 = [v10 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v12);
    }

    v37 = v9;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
    v42 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v42)
    {
      v41 = *v50;
      do
      {
        v21 = 0;
        do
        {
          if (*v50 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = v21;
          v22 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v49 + 1) + 8 * v21)];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v44 = [MEMORY[0x1E695DF58] ISOCountryCodes];
          v23 = [v44 countByEnumeratingWithState:&v45 objects:v59 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v46;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v46 != v25)
                {
                  objc_enumerationMutation(v44);
                }

                v27 = *(*(&v45 + 1) + 8 * j);
                v28 = [v22 localizedStringForCountryCode:v27];
                v29 = [objc_opt_class() _normalizedCountryString:v28];
                if ([v29 length])
                {
                  [(NSDictionary *)v3 setObject:v27 forKeyedSubscript:v29];
                }

                else
                {
                  v30 = v5;
                  v31 = v3;
                  v32 = sgLogHandle();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v58 = v27;
                    _os_log_error_impl(&dword_1BA729000, v32, OS_LOG_TYPE_ERROR, "SGTimeZoneDetector-_getCountryCodeForCountryName: nil or empty normalizedLocalizedCountry for country code %@", buf, 0xCu);
                  }

                  v3 = v31;
                  v5 = v30;
                }
              }

              v24 = [v44 countByEnumeratingWithState:&v45 objects:v59 count:16];
            }

            while (v24);
          }

          v21 = v43 + 1;
        }

        while (v43 + 1 != v42);
        v42 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v42);
    }

    if (v5->_keepData)
    {
      objc_storeStrong(location, v3);
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_handleMemoryPressureStatus
{
  obj = self;
  objc_sync_enter(obj);
  memoryPressureStatus = obj->_memoryPressureStatus;
  if (memoryPressureStatus != 1)
  {
    if (memoryPressureStatus != 4 && memoryPressureStatus != 2)
    {
      goto LABEL_9;
    }

    LOBYTE(memoryPressureStatus) = 0;
  }

  obj->_keepData = memoryPressureStatus;
LABEL_9:
  objc_sync_exit(obj);
}

- (SGTimeZoneDetector)init
{
  v15.receiver = self;
  v15.super_class = SGTimeZoneDetector;
  v2 = [(SGTimeZoneDetector *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_keepData = 1;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.proactive.SGTimeZone", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 7uLL, v3->_queue);
    memoryPressureSource = v3->_memoryPressureSource;
    v3->_memoryPressureSource = v7;

    objc_initWeak(&location, v3);
    v9 = v3->_memoryPressureSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __26__SGTimeZoneDetector_init__block_invoke;
    handler[3] = &unk_1E7EFCA28;
    objc_copyWeak(&v13, &location);
    v12 = v3;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(v3->_memoryPressureSource);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __26__SGTimeZoneDetector_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    WeakRetained[12] = dispatch_source_get_data(WeakRetained[11]);
    [*(a1 + 32) _handleMemoryPressureStatus];
    WeakRetained = v3;
  }
}

+ (id)_regularExpressionForPostalCodeFormat:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 appendString:@"\\b"];
  [v4 appendString:v3];

  [v4 appendString:@"\\b"];
  v5 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v4 options:1 error:0];

  return v5;
}

+ (id)_normalizedString:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a3 decomposedStringWithCompatibilityMapping];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:@" "];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:@" "];

  v8 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v9 = [v7 componentsSeparatedByCharactersInSet:v8];
  v10 = [v9 _pas_componentsJoinedByString:&stru_1F385B250];

  v11 = [MEMORY[0x1E696AB08] nonBaseCharacterSet];
  v12 = [v10 componentsSeparatedByCharactersInSet:v11];
  v13 = [v12 _pas_componentsJoinedByString:&stru_1F385B250];

  v14 = [MEMORY[0x1E696AB08] characterSetWithRange:{688, 64}];
  v15 = [v13 componentsSeparatedByCharactersInSet:v14];
  v16 = [v15 _pas_componentsJoinedByString:&stru_1F385B250];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
  v18 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v19 = [v16 componentsSeparatedByCharactersInSet:v18];

  v20 = [v19 filteredArrayUsingPredicate:v17];
  v21 = [v20 _pas_componentsJoinedByString:@" "];

  v22 = v21;
  objc_autoreleasePoolPop(v4);

  return v22;
}

+ (id)_normalizedCountryString:(id)a3
{
  v4 = trimAfterDelimiter(a3, @" -");
  v5 = trimAfterDelimiter(v4, @" (");

  v6 = v5;
  v7 = [v6 rangeOfString:@" & "];
  v8 = v6;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v6 substringFromIndex:{objc_msgSend(@" & ", "length") + v7}];
  }

  v9 = [v8 stringByReplacingOccurrencesOfString:@"St. " withString:@"Saint "];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"So. " withString:@"South "];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"No. " withString:@"North "];

  v12 = [a1 _normalizedString:v11];

  v13 = [v12 capitalizedString];

  return v13;
}

@end