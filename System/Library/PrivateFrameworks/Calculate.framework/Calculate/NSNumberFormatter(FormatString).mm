@interface NSNumberFormatter(FormatString)
- (id)formatString:()FormatString;
- (id)formatString:()FormatString byAppendingExponent:withNumberingSystem:;
- (id)formatString:()FormatString usesGroupingSeparator:;
- (id)formatString:()FormatString usesGroupingSeparator:groupingSeparator:decimalSeparator:maximumIntegerDigits:maximumFractionDigits:localizeDigits:;
- (uint64_t)usesEastArabicDigits;
- (uint64_t)usesLatinDigits;
@end

@implementation NSNumberFormatter(FormatString)

- (uint64_t)usesLatinDigits
{
  v2 = objc_getAssociatedObject(self, &usesLatinDigits_latin);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v5 = [self stringFromNumber:v4];

    bOOLValue = [v5 compare:@"0" options:10] == 0;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    objc_setAssociatedObject(self, &usesLatinDigits_latin, v6, 1);
  }

  return bOOLValue;
}

- (uint64_t)usesEastArabicDigits
{
  v2 = objc_getAssociatedObject(self, &usesEastArabicDigits_eastArabic);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v5 = [self stringFromNumber:v4];

    bOOLValue = [v5 compare:@"٠" options:10] == 0;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    objc_setAssociatedObject(self, &usesEastArabicDigits_eastArabic, v6, 1);
  }

  return bOOLValue;
}

- (id)formatString:()FormatString byAppendingExponent:withNumberingSystem:
{
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v10 = v8;
  }

  else
  {
    v11 = [self stringFromNumber:&unk_1F4199C58];
    if (v9)
    {
      locale = [self locale];
      v13 = [Localize localizeString:v11 withNumberingSystem:v9 locale:locale];

      v11 = v13;
    }

    if ([v11 isEqualToString:@"1"])
    {
      v14 = objc_opt_new();
      if (a4)
      {
        v15 = a4 >= 0 ? a4 : -a4;
        do
        {
          v16 = [&unk_1F419A090 objectAtIndexedSubscript:v15 % 0xA];
          [v14 addObject:v16];

          v17 = v15 > 9;
          v15 /= 0xAuLL;
        }

        while (v17);
        if ((a4 & 0x80000000) != 0)
        {
          v18 = [&unk_1F419A090 objectAtIndexedSubscript:10];
          [v14 addObject:v18];
        }
      }

      reverseObjectEnumerator = [v14 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v21 = [allObjects componentsJoinedByString:&stru_1F418FCD8];

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, v21];
    }

    else
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInt:a4];
      v14 = [self stringFromNumber:v22];

      if (v9)
      {
        locale2 = [self locale];
        v24 = [Localize localizeString:v14 withNumberingSystem:v9 locale:locale2];

        v14 = v24;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@^%@", v8, v14];
    }
  }

  return v10;
}

- (id)formatString:()FormatString usesGroupingSeparator:groupingSeparator:decimalSeparator:maximumIntegerDigits:maximumFractionDigits:localizeDigits:
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if ([self numberStyle] != 1)
  {
    v18 = v13;
    goto LABEL_51;
  }

  if ([(__CFString *)v14 length]!= 1 || [(__CFString *)v15 length]!= 1)
  {

    v18 = v13;
    v14 = @",";
    v15 = @".";
    goto LABEL_51;
  }

  if (a9)
  {
    v16 = [self stringFromNumber:&unk_1F4199C40];
    if ([(__CFString *)v16 length]!= 1)
    {
      v17 = v13;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = @"0";
  }

  if ((a4 & 1) != 0 || ![(__CFString *)v16 isEqualToString:@"0"])
  {
    v46 = [(__CFString *)v14 characterAtIndex:0];
    v19 = [(__CFString *)v15 characterAtIndex:0];
    v45 = v16;
    v20 = [(__CFString *)v16 characterAtIndex:0];
    if (v20 >> 11 == 27)
    {
      v21 = 48;
    }

    else
    {
      v21 = v20;
    }

    v44 = [v13 lengthOfBytesUsingEncoding:2483028224];
    v22 = malloc_type_calloc(v44, 2uLL, 0x1000040BDFB0063uLL);
    [v13 getBytes:v22 maxLength:v44 usedLength:0 encoding:2483028224 options:0 range:0 remainingRange:{objc_msgSend(v13, "length"), 0}];
    v23 = v44 >> 1;
    if (v23 < 1)
    {
      LODWORD(v24) = 0;
      v25 = v46;
    }

    else
    {
      v24 = 0;
      v25 = v46;
      while (1)
      {
        v26 = v22[v24];
        if (v26 == 46 || v26 == 101)
        {
          break;
        }

        if (v44 >> 1 == ++v24)
        {
          LODWORD(v24) = v44 >> 1;
          break;
        }
      }
    }

    v27 = 0x7FFFFFFF;
    if (a4)
    {
      groupingSize = [self groupingSize];
      v29 = groupingSize;
      if (groupingSize)
      {
        v30 = groupingSize;
      }

      else
      {
        v30 = 0x7FFFFFFF;
      }

      secondaryGroupingSize = [self secondaryGroupingSize];
      if (secondaryGroupingSize)
      {
        v32 = secondaryGroupingSize;
      }

      else
      {
        v32 = v30;
      }

      if (v24 <= v30)
      {
        v33 = 0;
        v29 = v30;
      }

      else
      {
        v33 = ((v24 + ~v30) & ~((v24 + ~v30) >> 31)) / v32 + 1;
      }

      v25 = v46;
      LODWORD(v23) = v44 >> 1;
      v27 = v32;
    }

    else
    {
      v33 = 0;
      v29 = 0x7FFFFFFF;
    }

    v34 = v33 + v23;
    if (v33 + v23 >= 1)
    {
      v35 = v24 == v23;
      v36 = v24 - v23 + 1;
      v37 = &v22[v23 - 1];
      do
      {
        v38 = v34 - 1;
        v40 = *v37--;
        v39 = v40;
        v41 = v40 - 48;
        if (v40 == 101)
        {
          v42 = 101;
        }

        else
        {
          v42 = v19;
        }

        if (!v36)
        {
          v39 = v42;
        }

        if (v41 <= 9)
        {
          v39 = v41 + v21;
        }

        v22[v38] = v39;
        if (v34 != 1 && (v35 & 1) != 0 && !--v29)
        {
          v38 = v34 - 2;
          v22[v34 - 2] = v25;
          v29 = v27;
        }

        v35 |= v36++ == 0;
        v34 = v38;
      }

      while (v38 > 0);
    }

    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v22 length:(v44 + 2 * v33) encoding:2483028224 freeWhenDone:1];
    v16 = v45;
    goto LABEL_50;
  }

  v17 = [v13 stringByReplacingOccurrencesOfString:@"." withString:v15];
LABEL_13:
  v18 = v17;
LABEL_50:

LABEL_51:

  return v18;
}

- (id)formatString:()FormatString usesGroupingSeparator:
{
  v6 = a3;
  if ([self numberStyle] == 1)
  {
    groupingSeparator = [self groupingSeparator];
    decimalSeparator = [self decimalSeparator];
    LOBYTE(v11) = 1;
    v9 = [self formatString:v6 usesGroupingSeparator:a4 groupingSeparator:groupingSeparator decimalSeparator:decimalSeparator maximumIntegerDigits:objc_msgSend(self maximumFractionDigits:"maximumIntegerDigits") localizeDigits:{objc_msgSend(self, "maximumFractionDigits"), v11}];
  }

  else
  {
    groupingSeparator = [self numberFromString:v6];
    v9 = [self stringFromNumber:groupingSeparator];
  }

  return v9;
}

- (id)formatString:()FormatString
{
  v4 = a3;
  if ([self numberStyle] == 1)
  {
    usesGroupingSeparator = [self usesGroupingSeparator];
    groupingSeparator = [self groupingSeparator];
    decimalSeparator = [self decimalSeparator];
    LOBYTE(v10) = 1;
    v8 = [self formatString:v4 usesGroupingSeparator:usesGroupingSeparator groupingSeparator:groupingSeparator decimalSeparator:decimalSeparator maximumIntegerDigits:objc_msgSend(self maximumFractionDigits:"maximumIntegerDigits") localizeDigits:{objc_msgSend(self, "maximumFractionDigits"), v10}];
  }

  else
  {
    groupingSeparator = [self numberFromString:v4];
    v8 = [self stringFromNumber:groupingSeparator];
  }

  return v8;
}

@end