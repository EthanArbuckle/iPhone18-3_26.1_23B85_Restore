@interface DDScannerResult
+ (__CFArray)coreResultsFromResults:(id)a3;
+ (id)filterResults:(id)a3 forTypes:(unint64_t)a4 referenceDate:(id)a5 referenceTimeZone:(id)a6;
+ (id)resultFromCoreResult:(__DDResult *)a3;
+ (id)resultFromText:(id)a3 personName:(id)a4 jobTitle:(id)a5 department:(id)a6 company:(id)a7;
+ (id)resultsFromCoreResults:(__CFArray *)a3;
+ (id)shouldUrlifyBlockForTypes:(unint64_t)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)cfRange;
- (BOOL)extractStartDate:(id *)a3 startTimezone:(id *)a4 endDate:(id *)a5 endTimezone:(id *)a6 allDayRef:(BOOL *)a7 referenceDate:(id)a8 referenceTimezone:(id)a9;
- (BOOL)getDomesticIdentifier:(id *)a3 type:(id *)a4 countryCode:(id *)a5;
- (BOOL)getFlightNumber:(id *)a3 airline:(id *)a4;
- (BOOL)getIMScreenNameValue:(id *)a3 type:(id *)a4;
- (BOOL)getMailValue:(id *)a3 label:(id *)a4;
- (BOOL)getMoneyAmount:(double *)a3 currency:(id *)a4;
- (BOOL)getPhoneValue:(id *)a3 label:(id *)a4;
- (BOOL)getPhysicalUnitValue:(double *)a3 unit:(id *)a4;
- (BOOL)getStreet:(id *)a3 city:(id *)a4 state:(id *)a5 zip:(id *)a6 country:(id *)a7;
- (BOOL)getTrackingNumber:(id *)a3 carrier:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)typeIs:(__CFString *)a3;
- (DDScannerResult)init;
- (DDScannerResult)initWithCoder:(id)a3;
- (DDScannerResult)initWithCoreResult:(__DDResult *)a3;
- (NSString)matchedString;
- (NSString)value;
- (NSURL)url;
- (_NSRange)range;
- (_NSRange)urlificationRange;
- (double)getDuration;
- (id)_initWithPlist:(id)a3;
- (id)_initWithWebKitPropertyListData:(id)a3;
- (id)_webKitPropertyListData;
- (id)contextualData;
- (id)dateFromReferenceDate:(id)a3 referenceTimezone:(id)a4 timezoneRef:(id *)a5 allDayRef:(BOOL *)a6;
- (id)description;
- (id)rawValue;
- (id)subResults;
- (id)valueForUndefinedKey:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)offsetRangeBy:(int64_t)a3;
- (void)setSubResults:(id)a3;
@end

@implementation DDScannerResult

- (BOOL)getFlightNumber:(id *)a3 airline:(id *)a4
{
  coreResult = self->_coreResult;
  if (coreResult)
  {
    v7 = _typesAreEqual(coreResult->var5, @"FlightInformation");
    if (v7)
    {
      if (a4)
      {
        SubresultWithType = DDResultGetSubresultWithType(coreResult, @"AirlineCode");
        if (SubresultWithType)
        {
          v9 = SubresultWithType;
          SubresultWithType = SubresultWithType[10];
          if (!SubresultWithType)
          {
            SubresultWithType = v9[9];
          }
        }

        *a4 = [SubresultWithType uppercaseString];
      }

      if (a3)
      {
        v10 = DDResultGetSubresultWithType(coreResult, @"FlightNumber");
        if (v10)
        {
          v11 = v10;
          v10 = v10[10];
          if (!v10)
          {
            v10 = v11[9];
          }
        }

        *a3 = [v10 uppercaseString];
      }

      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)getTrackingNumber:(id *)a3 carrier:(id *)a4
{
  coreResult = self->_coreResult;
  if (!coreResult)
  {
    goto LABEL_9;
  }

  v7 = _typesAreEqual(coreResult->var5, @"TrackingNumber");
  if (!v7)
  {
    return v7;
  }

  var4 = coreResult->var4;
  if (CFArrayGetCount(var4) != 1)
  {
LABEL_9:
    LOBYTE(v7) = 0;
    return v7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(var4, 0);
  v10 = ValueAtIndex;
  if (a4)
  {
    *a4 = ValueAtIndex[8];
  }

  if (a3)
  {
    if (v10)
    {
      v11 = v10[9];
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    *a3 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (BOOL)getPhysicalUnitValue:(double *)a3 unit:(id *)a4
{
  v8 = 0;
  v9 = 0;
  v6 = DDResultPhysicalUnitExtraction(self->_coreResult, &v8, &v9);
  if (v6)
  {
    if (a4)
    {
      *a4 = v9;
    }

    if (a3)
    {
      *a3 = v8;
    }
  }

  return v6 != 0;
}

- (BOOL)getMoneyAmount:(double *)a3 currency:(id *)a4
{
  v8 = 0;
  v9 = 0;
  v6 = DDResultCurrencyExtraction(self->_coreResult, &v8, &v9);
  if (v6)
  {
    if (a4)
    {
      *a4 = v9;
    }

    if (a3)
    {
      *a3 = v8;
    }
  }

  return v6 != 0;
}

- (NSURL)url
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_hasCachedURL)
  {
    v2->_hasCachedURL = 1;
    v3 = DDResultCopyExtractedURLWithOptions(v2->_coreResult, 1);
    if (v3)
    {
      v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
      if (!v4)
      {
        v6 = [(__CFString *)v3 rangeOfString:@"://"];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_8;
        }

        v7 = v6 + v5;
        if (v7 >= [(__CFString *)v3 length])
        {
          goto LABEL_8;
        }

        v8 = [(__CFString *)v3 rangeOfString:@"/" options:0 range:v7, [(__CFString *)v3 length]- v7];
        v10 = v8 + v9;
        if (v8 + v9 >= [(__CFString *)v3 length])
        {
          goto LABEL_8;
        }

        v11 = [(__CFString *)v3 substringToIndex:v10];
        v12 = [(__CFString *)v3 substringFromIndex:v10];
        v13 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
        v14 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v13];

        v15 = MEMORY[0x1E695DFF8];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, v14];
        v4 = [v15 URLWithString:v16];

        if (!v4)
        {
LABEL_8:
          v17 = MEMORY[0x1E695DFF8];
          v18 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
          v19 = [(__CFString *)v3 stringByAddingPercentEncodingWithAllowedCharacters:v18];
          v4 = [v17 URLWithString:v19];
        }
      }

      cachedURL = v2->_cachedURL;
      v2->_cachedURL = v4;
    }
  }

  v21 = v2->_cachedURL;
  objc_sync_exit(v2);

  return v21;
}

- (void)offsetRangeBy:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v5 = [(DDScannerResult *)self range];
    v6 = v5;
    v8 = v7;
    v15 = 0u;
    v16 = 0u;
    if (v5 + v3 < 0 != __OFADD__(v5, v3))
    {
      v3 = -v5;
    }

    v17 = 0uLL;
    v18 = 0uLL;
    v9 = [(DDScannerResult *)self subResults];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) offsetRangeBy:v3];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [(DDScannerResult *)self setRange:v3 + v6, v8];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_initWithPlist:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DDScannerResult;
  v5 = [(DDScannerResult *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"VN"];
    v7 = [v6 longValue];

    v8 = [v4 objectForKeyedSubscript:@"AR"];
    v9 = [v8 rangeValue];
    v11 = v10;

    v12 = [v4 objectForKeyedSubscript:@"T"];
    *(v5 + 1) = DDResultCreate(v12, v9 << 32, (v9 + v11) << 32);

    v13 = *(v5 + 1);
    v14 = [v4 objectForKeyedSubscript:@"MS"];
    DDResultSetMatchedString(v13, v14);

    v15 = *(v5 + 1);
    *(v15 + 32) = v9;
    *(v15 + 40) = v11;
    if (v7)
    {
      v16 = [v4 objectForKeyedSubscript:@"P"];
      *(*(v5 + 1) + 96) = [v16 integerValue] & 0xFFFFFFFFFFFBFFFFLL;
    }

    v17 = [v4 objectForKeyedSubscript:@"CF"];
    v18 = v17;
    if (v17)
    {
      v19 = *(v5 + 1);
      [v17 floatValue];
      if (v19)
      {
        *(v19 + 108) = v20;
        *(v19 + 104) = 1;
      }
    }

    v21 = [v4 objectForKeyedSubscript:@"V"];
    if (v21)
    {
      DDResultSetValue(*(v5 + 1), v21);
    }

    v22 = [v4 objectForKeyedSubscript:@"C"];
    if (v22)
    {
      DDResultSetContextualData(*(v5 + 1), v22);
    }

    v23 = [v4 objectForKeyedSubscript:@"SR"];
    if (v23)
    {
      [v5 setSubResults:v23];
    }
  }

  return v5;
}

- (DDScannerResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionaryWithCapacity:9];
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"AR"];
  [v6 setObject:v7 forKeyedSubscript:@"AR"];

  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"MS"];
  [v6 setObject:v8 forKeyedSubscript:@"MS"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"T"];
  [v6 setObject:v9 forKeyedSubscript:@"T"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "decodeIntegerForKey:", @"P"}];
  [v6 setObject:v10 forKeyedSubscript:@"P"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v5 decodeObjectOfClasses:v13 forKey:@"SR"];
  [v6 setObject:v14 forKeyedSubscript:@"SR"];

  v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"V"];
  [v6 setObject:v15 forKeyedSubscript:@"V"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
  v20 = [v5 decodeObjectOfClasses:v19 forKey:@"C"];
  [v6 setObject:v20 forKeyedSubscript:@"C"];

  v21 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"CF"];
  [v6 setObject:v21 forKeyedSubscript:@"CF"];

  v22 = MEMORY[0x1E696AD98];
  v23 = [v5 decodeIntegerForKey:@"VN"];

  v24 = [v22 numberWithInteger:v23];
  [v6 setObject:v24 forKeyedSubscript:@"VN"];

  v25 = [(DDScannerResult *)self _initWithPlist:v6];
  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  v4 = MEMORY[0x1E696B098];
  v5 = [(DDScannerResult *)self range];
  v7 = [v4 valueWithRange:{v5, v6}];
  [v20 encodeObject:v7 forKey:@"AR"];

  v8 = [(DDScannerResult *)self matchedString];
  [v20 encodeObject:v8 forKey:@"MS"];

  v9 = [(DDScannerResult *)self type];
  [v20 encodeObject:v9 forKey:@"T"];

  [v20 encodeInteger:self->_coreResult->var9 & 0xFFFFFFFFFFFBFFFFLL forKey:@"P"];
  v10 = [(DDScannerResult *)self subResults];

  if (v10)
  {
    v11 = [(DDScannerResult *)self subResults];
    v12 = [v11 copy];
    [v20 encodeObject:v12 forKey:@"SR"];
  }

  v13 = [(DDScannerResult *)self rawValue];

  if (v13)
  {
    v14 = [(DDScannerResult *)self rawValue];
    [v20 encodeObject:v14 forKey:@"V"];
  }

  v15 = [(DDScannerResult *)self contextualData];

  if (v15)
  {
    v16 = [(DDScannerResult *)self contextualData];
    v17 = [v16 copy];
    [v20 encodeObject:v17 forKey:@"C"];
  }

  if (DDResultHasContextualFloat(self->_coreResult))
  {
    *&v18 = DDResultGetContextualFloat(self->_coreResult);
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [v20 encodeObject:v19 forKey:@"CF"];
  }

  [v20 encodeInteger:1 forKey:@"VN"];
}

- (id)_initWithWebKitPropertyListData:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"AR"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !strcmp([v5 objCType], "{_NSRange=QQ}"))
  {
    v6 = [v4 objectForKeyedSubscript:@"MS"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v4 objectForKeyedSubscript:@"T"];
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();

      if (v9)
      {
        v10 = [v4 objectForKeyedSubscript:@"P"];
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();

        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:@"VN"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_27;
          }

          if ([v12 longValue] != 1)
          {
            goto LABEL_27;
          }

          v13 = [v4 objectForKeyedSubscript:@"SR"];
          if (v13)
          {
            v14 = v13;
            v15 = [v4 objectForKeyedSubscript:@"SR"];
            objc_opt_class();
            v16 = objc_opt_isKindOfClass();

            if ((v16 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v38 = v12;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v17 = [v4 objectForKeyedSubscript:@"SR"];
          v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v40;
            while (2)
            {
              v21 = 0;
              do
              {
                if (*v40 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v39 + 1) + 8 * v21);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  goto LABEL_30;
                }

                ++v21;
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v23 = [v4 objectForKeyedSubscript:@"V"];
          if (v23)
          {
            v24 = v23;
            v25 = [v4 objectForKeyedSubscript:@"V"];
            objc_opt_class();
            v26 = objc_opt_isKindOfClass();

            if ((v26 & 1) == 0)
            {
LABEL_30:
              v35 = 0;
              v12 = v38;
              goto LABEL_28;
            }
          }

          v27 = [v4 objectForKeyedSubscript:@"C"];
          v12 = v38;
          if (v27)
          {
            v28 = v27;
            v29 = [v4 objectForKeyedSubscript:@"C"];
            objc_opt_class();
            v30 = objc_opt_isKindOfClass();

            if ((v30 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v31 = [v4 objectForKeyedSubscript:@"CF"];
          if (!v31 || (v32 = v31, [v4 objectForKeyedSubscript:@"CF"], v33 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v34 = objc_opt_isKindOfClass(), v33, v32, (v34 & 1) != 0))
          {
            self = [(DDScannerResult *)self _initWithPlist:v4];
            v35 = self;
          }

          else
          {
LABEL_27:
            v35 = 0;
          }

LABEL_28:

          goto LABEL_26;
        }
      }
    }
  }

  v35 = 0;
LABEL_26:

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (id)_webKitPropertyListData
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
  v4 = MEMORY[0x1E696B098];
  v5 = [(DDScannerResult *)self range];
  v7 = [v4 valueWithRange:{v5, v6}];
  [v3 setObject:v7 forKeyedSubscript:@"AR"];

  v8 = [(DDScannerResult *)self matchedString];
  [v3 setObject:v8 forKeyedSubscript:@"MS"];

  v9 = [(DDScannerResult *)self type];
  [v3 setObject:v9 forKeyedSubscript:@"T"];

  v10 = [MEMORY[0x1E696AD98] numberWithLong:self->_coreResult->var9 & 0xFFFFFFFFFFFBFFFFLL];
  [v3 setObject:v10 forKeyedSubscript:@"P"];

  v11 = [(DDScannerResult *)self subResults];

  if (v11)
  {
    v12 = [(DDScannerResult *)self subResults];
    [v3 setObject:v12 forKeyedSubscript:@"SR"];
  }

  v13 = [(DDScannerResult *)self rawValue];

  if (v13)
  {
    v14 = [(DDScannerResult *)self rawValue];
    [v3 setObject:v14 forKeyedSubscript:@"V"];
  }

  v15 = [(DDScannerResult *)self contextualData];

  if (v15)
  {
    v16 = [(DDScannerResult *)self contextualData];
    [v3 setObject:v16 forKeyedSubscript:@"C"];
  }

  if (DDResultHasContextualFloat(self->_coreResult))
  {
    v17 = MEMORY[0x1E696AD98];
    *&v18 = DDResultGetContextualFloat(self->_coreResult);
    v19 = [v17 numberWithFloat:v18];
    [v3 setObject:v19 forKeyedSubscript:@"CF"];
  }

  [v3 setObject:&unk_1F3B7DD98 forKeyedSubscript:@"VN"];

  return v3;
}

- (BOOL)getDomesticIdentifier:(id *)a3 type:(id *)a4 countryCode:(id *)a5
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v8 = DDResultCopyDomesticIdentifierValue(self->_coreResult, &v12, &v11, &v10);
  if (v8)
  {
    if (a3)
    {
      *a3 = v12;
    }

    if (a4)
    {
      *a4 = v11;
    }

    if (a5)
    {
      *a5 = v10;
    }
  }

  return v8 != 0;
}

- (BOOL)getStreet:(id *)a3 city:(id *)a4 state:(id *)a5 zip:(id *)a6 country:(id *)a7
{
  if (a3)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.value", @"Street"];
    *a3 = [(DDScannerResult *)self valueForKeyPath:v13];
  }

  if (a4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.value", @"City"];
    *a4 = [(DDScannerResult *)self valueForKeyPath:v14];
  }

  if (a6)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.value", @"ZipCode"];
    *a6 = [(DDScannerResult *)self valueForKeyPath:v15];
  }

  if (a5)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.value", @"State"];
    *a5 = [(DDScannerResult *)self valueForKeyPath:v16];
  }

  if (a7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.value", @"Country"];
    *a7 = [(DDScannerResult *)self valueForKeyPath:v17];
  }

  return 1;
}

- (BOOL)getIMScreenNameValue:(id *)a3 type:(id *)a4
{
  v7 = [(DDScannerResult *)self valueForKeyPath:@"Value"];
  v8 = [v7 matchedString];

  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.value", @"Label"];
  v11 = [(DDScannerResult *)self valueForKeyPath:v10];

  if (a4)
  {
    v12 = v11;
    *a4 = v11;
  }

  if (v8)
  {
    v13 = 0;
    if ([v8 length] && v11)
    {
      v13 = [v11 length] != 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)getMailValue:(id *)a3 label:(id *)a4
{
  v7 = [(DDScannerResult *)self valueForKeyPath:@"Value"];
  v8 = [v7 matchedString];

  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }

  if (a4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.value", @"Label"];
    *a4 = [(DDScannerResult *)self valueForKeyPath:v10];
  }

  if (v8)
  {
    v11 = [v8 length] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)getPhoneValue:(id *)a3 label:(id *)a4
{
  v11 = 0;
  v12 = 0;
  coreResult = self->_coreResult;
  if (a3)
  {
    v7 = &v12;
  }

  else
  {
    v7 = 0;
  }

  if (a4)
  {
    v8 = &v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = DDResultCopyValueLabelValue(coreResult, v7, v8, 0);
  if (v12)
  {
    *a3 = v12;
  }

  if (v11)
  {
    *a4 = v11;
  }

  return v9 != 0;
}

- (BOOL)extractStartDate:(id *)a3 startTimezone:(id *)a4 endDate:(id *)a5 endTimezone:(id *)a6 allDayRef:(BOOL *)a7 referenceDate:(id)a8 referenceTimezone:(id)a9
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v16 = a9;
  v17 = a8;
  started = DDResultCopyExtractedStartDateEndDate([(DDScannerResult *)self coreResult], &v24, &v23, &v22, &v21, &v20, v17, v16);

  if (started)
  {
    if (a3)
    {
      *a3 = v24;
    }

    if (a4)
    {
      *a4 = v23;
    }

    if (a5)
    {
      *a5 = v22;
    }

    if (a6)
    {
      *a6 = v21;
    }

    if (a7)
    {
      *a7 = v20;
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return started != 0;
}

- (id)dateFromReferenceDate:(id)a3 referenceTimezone:(id)a4 timezoneRef:(id *)a5 allDayRef:(BOOL *)a6
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v10 = a4;
  v11 = a3;
  LODWORD(self) = DDResultCopyExtractedDateFromReferenceDate([(DDScannerResult *)self coreResult], v11, v10, &v16, &v15, &v14);

  if (!self)
  {
    goto LABEL_6;
  }

  if (a6)
  {
    *a6 = v16;
  }

  if (a5)
  {
    *a5 = v14;
  }

  else
  {
LABEL_6:
    if (v14)
    {
      CFRelease(v14);
    }
  }

  v12 = v15;

  return v12;
}

- (double)getDuration
{
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v2 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_ERROR, "Call to DDResultGetDuration is deprecated. Result will be incorrect. Please contact the DataDetectors team if you need this", v4, 2u);
  }

  return 0.0;
}

- (id)valueForUndefinedKey:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(DDScannerResult *)self subResults];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setSubResults:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_subResultsCache != v5)
  {
    objc_storeStrong(&self->_subResultsCache, a3);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        CFArrayAppendValue(Mutable, [*(*(&v13 + 1) + 8 * i) coreResult]);
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  DDResultSetSubResults(self->_coreResult, Mutable);
  CFRelease(Mutable);

  v12 = *MEMORY[0x1E69E9840];
}

- (id)subResults
{
  v2 = self;
  objc_sync_enter(v2);
  subResultsCache = v2->_subResultsCache;
  if (!subResultsCache)
  {
    var4 = v2->_coreResult->var4;
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    if (var4)
    {
      Count = CFArrayGetCount(var4);
    }

    else
    {
      Count = 0;
    }

    v7 = [v5 initWithCapacity:Count];
    if (var4)
    {
      v8 = CFArrayGetCount(var4);
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = [[DDScannerResult alloc] initWithCoreResult:CFArrayGetValueAtIndex(var4, i)];
          if (v10)
          {
            [(NSArray *)v7 addObject:v10];
          }
        }
      }
    }

    v11 = v2->_subResultsCache;
    v2->_subResultsCache = v7;

    subResultsCache = v2->_subResultsCache;
  }

  v12 = subResultsCache;
  objc_sync_exit(v2);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[DDScannerResult type](self, "type"), v5 = objc_claimAutoreleasedReturnValue(), [v4 type], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    v8 = [(DDScannerResult *)self range];
    v10 = v9;
    v12 = 0;
    if (v8 == [v4 range] && v10 == v11)
    {
      v13 = [(DDScannerResult *)self subResults];
      v14 = [v4 subResults];
      v12 = [v13 isEqual:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [(DDScannerResult *)self type];

  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [(DDScannerResult *)self type];
    v10.location = [(DDScannerResult *)self range];
    v6 = NSStringFromRange(v10);
    v7 = [v4 stringWithFormat:@"<Result:%@:%@>", v5, v6];
  }

  else
  {
    v11.location = [(DDScannerResult *)self range];
    v5 = NSStringFromRange(v11);
    v7 = [v4 stringWithFormat:@"<Result:%@>", v5];
  }

  return v7;
}

- (NSString)matchedString
{
  coreResult = self->_coreResult;
  if (coreResult)
  {
    return &coreResult->var6->isa;
  }

  else
  {
    return 0;
  }
}

- (id)contextualData
{
  coreResult = self->_coreResult;
  if (coreResult)
  {
    return coreResult->var8;
  }

  else
  {
    return 0;
  }
}

- (id)rawValue
{
  coreResult = self->_coreResult;
  if (coreResult)
  {
    return coreResult->var7;
  }

  else
  {
    return 0;
  }
}

- (NSString)value
{
  coreResult = self->_coreResult;
  if (!coreResult)
  {
    return 0;
  }

  result = coreResult->var7;
  if (!result)
  {
    return &coreResult->var6->isa;
  }

  return result;
}

- (BOOL)typeIs:(__CFString *)a3
{
  coreResult = self->_coreResult;
  if (coreResult)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && _typesAreEqual(coreResult->var5, a3);
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)cfRange
{
  coreResult = self->_coreResult;
  var0 = coreResult->var2.var0;
  var1 = coreResult->var2.var1;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (_NSRange)range
{
  coreResult = self->_coreResult;
  var0 = coreResult->var2.var0;
  var1 = coreResult->var2.var1;
  result.length = var1;
  result.location = var0;
  return result;
}

- (_NSRange)urlificationRange
{
  RangeForURLification = DDResultGetRangeForURLification(self->_coreResult);
  result.length = v3;
  result.location = RangeForURLification;
  return result;
}

- (void)dealloc
{
  coreResult = self->_coreResult;
  if (coreResult)
  {
    CFRelease(coreResult);
  }

  v4.receiver = self;
  v4.super_class = DDScannerResult;
  [(DDScannerResult *)&v4 dealloc];
}

- (DDScannerResult)initWithCoreResult:(__DDResult *)a3
{
  v6.receiver = self;
  v6.super_class = DDScannerResult;
  v4 = [(DDScannerResult *)&v6 init];
  if (!v4)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    v4->_coreResult = CFRetain(a3);
LABEL_4:
    a3 = v4;
  }

  return a3;
}

- (DDScannerResult)init
{
  v5.receiver = self;
  v5.super_class = DDScannerResult;
  v2 = [(DDScannerResult *)&v5 init];
  if (v2)
  {
    v3 = DDTypeRegister(&DDResultGetTypeID_typeID);
    v2->_coreResult = DDTypeCreateInstance_(0, v3, 0x60uLL);
  }

  return v2;
}

+ (id)resultFromText:(id)a3 personName:(id)a4 jobTitle:(id)a5 department:(id)a6 company:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v11 length] && (v28 = xmmword_1BD018B90, ContactNameComponentInText = createContactNameComponentInText(v11, v12, @"NLPContactName", &v28), v17 = createContactNameComponentInText(v11, v13, @"JobTitle", &v28), v18 = createContactNameComponentInText(v11, v14, @"DepartmentName", &v28), v19 = createContactNameComponentInText(v11, v15, @"CompanyName", &v28), v20 = v28, v28 != 0x7FFFFFFFFFFFFFFFLL))
  {
    value = v18;
    v27 = v19;
    v22 = *(&v28 + 1);
    v23 = DDResultCreate(@"Contact", (v28 << 32) | 0x10000, ((DWORD2(v28) + v28) << 32) | 0x10000);
    DDResultSetMatchedString(v23, [v11 substringWithRange:{v20, v22}]);
    v23[4] = v20;
    v23[5] = v22;
    if (ContactNameComponentInText)
    {
      v24 = DDResultCreate(@"ContactName", ContactNameComponentInText[2], ContactNameComponentInText[3]);
      DDResultSetMatchedString(v24, ContactNameComponentInText[9]);
      v24[2] = *(ContactNameComponentInText + 2);
      DDResultAddSubresult(v24, ContactNameComponentInText);
      CFRelease(ContactNameComponentInText);
      DDResultAddSubresult(v23, v24);
      CFRelease(v24);
    }

    if (v17)
    {
      DDResultAddSubresult(v23, v17);
      CFRelease(v17);
    }

    if (value)
    {
      DDResultAddSubresult(v23, value);
      CFRelease(value);
    }

    if (v27)
    {
      DDResultAddSubresult(v23, v27);
      CFRelease(v27);
    }

    v21 = [DDScannerResult resultFromCoreResult:v23, value];
    CFRelease(v23);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)filterResults:(id)a3 forTypes:(unint64_t)a4 referenceDate:(id)a5 referenceTimeZone:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 count];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
    v15 = [a1 shouldUrlifyBlockForTypes:a4];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v10;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          if ((v15)[2](v15, [v21 coreResult], v11, v12))
          {
            [v14 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    v10 = v24;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)shouldUrlifyBlockForTypes:(unint64_t)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__DDScannerResult_shouldUrlifyBlockForTypes___block_invoke;
  aBlock[3] = &__block_descriptor_40_e206_B32__0____DDResult____CFRuntimeBase_QAQ____DDQueryRange____DDQueryOffset_b16b16b32____DDQueryOffset_b16b16b32_____qq_q____CFArray_____CFString_____CFString__v____CFDictionary_qCf_8__NSDate_16__NSTimeZone_24l;
  aBlock[4] = a3;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

uint64_t __45__DDScannerResult_shouldUrlifyBlockForTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  Category = DDResultGetCategory(a2);
  v10 = *(a2 + 64);
  if (CFStringCompare(@"SignatureBlock", v10, 0) == kCFCompareEqualTo)
  {
    goto LABEL_6;
  }

  if (*(a2 + 96))
  {
    v12 = *(a1 + 32);
    if ((v12 & 4) != 0 && Category == 3)
    {
      goto LABEL_6;
    }

    if ((v12 & 0x10) != 0)
    {
      if (CFStringCompare(@"TrackingNumber", v10, 0) == kCFCompareEqualTo)
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 0x20) != 0)
    {
      if (CFStringCompare(@"FlightInformation", v10, 0) == kCFCompareEqualTo)
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 0x40) != 0)
    {
      if (CFStringCompare(@"Parsec", v10, 0) == kCFCompareEqualTo)
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 0x20000) != 0)
    {
      if (CFStringCompare(@"GameCenter", v10, 0) == kCFCompareEqualTo)
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 1) != 0 && Category == 2)
    {
      goto LABEL_6;
    }

    if ((v12 & 2) != 0)
    {
      if (_DDResultIsURL(v10))
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 8) != 0 && Category == 4)
    {
      if (!DDResultIsPastDate(a2, v7, v8))
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 0x40000) != 0)
    {
      if (_typesAreEqual(*(a2 + 64), @"AuthCode"))
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 0x80000) != 0)
    {
      if (_typesAreEqual(*(a2 + 64), @"ContactName"))
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
    }

    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    if (!_typesAreEqual(*(a2 + 64), @"CompanyName"))
    {
      v12 = *(a1 + 32);
LABEL_38:
      if ((v12 & 0x200000) != 0)
      {
        if (_typesAreEqual(*(a2 + 64), @"evts"))
        {
          Helper_x8__OBJC_CLASS___CSFFeatureManager = gotLoadHelper_x8__OBJC_CLASS___CSFFeatureManager(v14);
          v17 = [*(v16 + 4072) shouldShowRSVPDataDetectors];
          goto LABEL_50;
        }

        v12 = *(a1 + 32);
      }

      if ((v12 & 0x80) != 0)
      {
        if (_typesAreEqual(*(a2 + 64), @"Money"))
        {
LABEL_47:
          v18 = NSClassFromString(&cfstr_Ddconversionac.isa);
          if (!v18)
          {
            goto LABEL_3;
          }

          v19 = v18;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_3;
          }

          v17 = [(objc_class *)v19 actionAvailableForResult:a2];
LABEL_50:
          v11 = v17;
          goto LABEL_7;
        }

        v12 = *(a1 + 32);
      }

      if ((v12 & 0x100) == 0 || !_typesAreEqual(*(a2 + 64), @"PhysicalAmount"))
      {
        goto LABEL_3;
      }

      goto LABEL_47;
    }

LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

LABEL_3:
  v11 = 0;
LABEL_7:

  return v11;
}

+ (__CFArray)coreResultsFromResults:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = [v3 count];
  v4 = v11[3];
  if (v4 <= 0)
  {
    v6 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v5 = malloc_type_malloc(8 * v4, 0x80040B8603338uLL);
    v11[3] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__DDScannerResult_coreResultsFromResults___block_invoke;
    v9[3] = &unk_1E8002A98;
    v9[4] = &v10;
    v9[5] = v5;
    [v3 enumerateObjectsUsingBlock:v9];
    v6 = CFArrayCreate(0, v5, v11[3], MEMORY[0x1E695E9C0]);
    free(v5);
  }

  v7 = CFAutorelease(v6);
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __42__DDScannerResult_coreResultsFromResults___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 coreResult];
  if (result)
  {
    *(*(a1 + 40) + 8 * (*(*(*(a1 + 32) + 8) + 24))++) = result;
  }

  return result;
}

+ (id)resultsFromCoreResults:(__CFArray *)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:CFArrayGetCount(a3)];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__DDScannerResult_resultsFromCoreResults___block_invoke;
    v7[3] = &unk_1E8002A70;
    v5 = v4;
    v8 = v5;
    [(__CFArray *)a3 enumerateObjectsUsingBlock:v7];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __42__DDScannerResult_resultsFromCoreResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[DDScannerResult alloc] initWithCoreResult:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

+ (id)resultFromCoreResult:(__DDResult *)a3
{
  v3 = [[a1 alloc] initWithCoreResult:a3];

  return v3;
}

@end