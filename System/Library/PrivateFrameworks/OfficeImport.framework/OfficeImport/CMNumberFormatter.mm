@interface CMNumberFormatter
+ (id)formatterForNumberFormat:(int)a3 language:(int)a4;
- (CMNumberFormatter)initWithNumberFormat:(int)a3 language:(int)a4;
- (id)stringForNumber:(unint64_t)a3;
- (void)dealloc;
@end

@implementation CMNumberFormatter

+ (id)formatterForNumberFormat:(int)a3 language:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  if (qword_27FC698C0 != -1)
  {
    dispatch_once(&qword_27FC698C0, &__block_literal_global_105);
  }

  v7 = v5 | (v4 << 8);
  v8 = _MergedGlobals_59;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [v8 objectForKey:v9];

  v11 = v10;
  if (!v10)
  {
    v11 = [[a1 alloc] initWithNumberFormat:v5 language:v4];
    v12 = _MergedGlobals_59;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    [v12 setObject:v11 forKey:v13];
  }

  return v11;
}

void __55__CMNumberFormatter_formatterForNumberFormat_language___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _MergedGlobals_59;
  _MergedGlobals_59 = v0;
}

- (CMNumberFormatter)initWithNumberFormat:(int)a3 language:(int)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = CMNumberFormatter;
  v6 = [(CMNumberFormatter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_format = a3;
    v6->_language = a4;
    if ((a3 & 0xFFFFFFFE) == 6)
    {
      v13 = 0;
      v14 = 0;
      v8 = OCDOfficeStringFromLanguage(a4);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
        [v9 UTF8String];
        uloc_canonicalize();
      }

      v7->_numberFormatter = unum_open();
      if (a3 == 7)
      {
        unum_setTextAttribute();
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_numberFormatter)
  {
    unum_close();
  }

  v3.receiver = self;
  v3.super_class = CMNumberFormatter;
  [(CMNumberFormatter *)&v3 dealloc];
}

- (id)stringForNumber:(unint64_t)a3
{
  v3 = a3;
  v33 = *MEMORY[0x277D85DE8];
  if (self->_numberFormatter)
  {
    memset(v32, 0, sizeof(v32));
    v5 = unum_format();
    LOWORD(v32[0]) = MEMORY[0x25F898170](0);
    v10 = [MEMORY[0x277CCACA8] stringWithCharacters:v32 length:v5];
LABEL_10:
    v11 = v10;
    goto LABEL_11;
  }

  format = self->_format;
  if (format == 22)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2lu", a3];
    goto LABEL_10;
  }

  if (!format)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
    goto LABEL_10;
  }

  if (a3)
  {
    v7 = [MEMORY[0x277CCAB68] string];
    v8 = self->_format;
    v9 = 1;
    switch(v8)
    {
      case 1:
      case 2:
        if (v3 >= 0x3E8)
        {
          if (v8 == 1)
          {
            v13 = @"M";
          }

          else
          {
            v13 = @"m";
          }

          do
          {
            [v7 appendString:{v13, v9}];
            v3 -= 1000;
          }

          while (v3 > 0x3E7);
        }

        v14 = v3 - 900;
        if (v3 >= 0x384)
        {
          if (v8 == 1)
          {
            v15 = @"CM";
          }

          else
          {
            v15 = @"cm";
          }

LABEL_28:
          [v7 appendString:{v15, v9}];
          v3 = v14;
          goto LABEL_60;
        }

        if (v3 < 0x1F4)
        {
          v14 = v3 - 400;
          if (v3 >= 0x190)
          {
            if (v8 == 1)
            {
              v15 = @"CD";
            }

            else
            {
              v15 = @"cd";
            }

            goto LABEL_28;
          }
        }

        else
        {
          if (v8 == 1)
          {
            v21 = @"D";
          }

          else
          {
            v21 = @"d";
          }

          [v7 appendString:{v21, v9}];
          v3 -= 500;
        }

        if (v3 >= 0x64)
        {
          if (v8 == 1)
          {
            v22 = @"C";
          }

          else
          {
            v22 = @"c";
          }

          do
          {
            [v7 appendString:v22];
            v3 -= 100;
          }

          while (v3 > 0x63);
        }

LABEL_60:
        v23 = v3 - 90;
        if (v3 >= 0x5A)
        {
          if (v8 == 1)
          {
            v24 = @"XC";
          }

          else
          {
            v24 = @"xc";
          }

LABEL_64:
          [v7 appendString:v24];
          v3 = v23;
          goto LABEL_79;
        }

        if (v3 < 0x32)
        {
          v23 = v3 - 40;
          if (v3 >= 0x28)
          {
            if (v8 == 1)
            {
              v24 = @"XL";
            }

            else
            {
              v24 = @"xl";
            }

            goto LABEL_64;
          }
        }

        else
        {
          if (v8 == 1)
          {
            v25 = @"L";
          }

          else
          {
            v25 = @"l";
          }

          [v7 appendString:v25];
          v3 -= 50;
        }

        if (v3 >= 0xA)
        {
          if (v8 == 1)
          {
            v26 = @"X";
          }

          else
          {
            v26 = @"x";
          }

          do
          {
            [v7 appendString:v26];
            v3 -= 10;
          }

          while (v3 > 9);
        }

LABEL_79:
        if (v3 == 9)
        {
          v27 = @"ix";
          v28 = @"IX";
LABEL_81:
          if (v8 == 1)
          {
            v29 = v28;
          }

          else
          {
            v29 = v27;
          }

          [v7 appendString:v29];
          goto LABEL_85;
        }

        if (v3 < 5)
        {
          if (v3 == 4)
          {
            v27 = @"iv";
            v28 = @"IV";
            goto LABEL_81;
          }
        }

        else
        {
          if (v8 == 1)
          {
            v30 = @"V";
          }

          else
          {
            v30 = @"v";
          }

          [v7 appendString:v30];
          v3 -= 5;
        }

        if (v3)
        {
          if (v8 == 1)
          {
            v31 = @"I";
          }

          else
          {
            v31 = @"i";
          }

          do
          {
            [v7 appendString:v31];
            --v3;
          }

          while (v3);
        }

LABEL_86:
        if ([v7 length])
        {
          v20 = v7;
        }

        else
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v3];
        }

LABEL_45:
        v11 = v20;

        break;
      case 3:
      case 4:
        if (v8 == 4)
        {
          v16 = 97;
        }

        else
        {
          v16 = 65;
        }

        do
        {
          v17 = (v3 - 1) % 0x1A;
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v9, (v16 + v17)];
          [v7 insertString:v18 atIndex:0];

          v19 = v3 - v17;
          v3 = (v3 - v17) / 0x1A;
        }

        while (v19 >= 0x1A);
LABEL_85:
        v3 = 0;
        goto LABEL_86;
      case 10:
      case 11:
      case 17:
        v9 = 15;
        goto LABEL_44;
      case 12:
      case 20:
        v9 = 21;
        goto LABEL_44;
      case 13:
      case 21:
        v9 = 27;
        goto LABEL_44;
      case 16:
        v9 = 36;
        goto LABEL_44;
      case 18:
        v9 = 48;
        goto LABEL_44;
      case 19:
        v9 = 49;
        goto LABEL_44;
      case 24:
      case 25:
      case 41:
      case 42:
      case 43:
        v9 = 45;
        goto LABEL_44;
      case 27:
      case 57:
        goto LABEL_44;
      case 28:
      case 30:
      case 31:
      case 37:
      case 39:
      case 40:
        v9 = 30;
        goto LABEL_44;
      case 29:
        v9 = 31;
        goto LABEL_44;
      case 32:
      case 33:
      case 35:
      case 36:
      case 44:
        v9 = 33;
        goto LABEL_44;
      case 34:
        v9 = 42;
        goto LABEL_44;
      case 38:
        v9 = 39;
        goto LABEL_44;
      case 45:
      case 47:
        v9 = 62;
        goto LABEL_44;
      case 46:
        v9 = 52;
        goto LABEL_44;
      case 48:
        v9 = 55;
LABEL_44:
        v20 = [MEMORY[0x277CCACA8] tswp_stringForValue:v3 withListNumberFormat:v9 includeFormatting:0];
        goto LABEL_45;
      default:
        goto LABEL_86;
    }
  }

  else
  {
    v11 = @"?";
  }

LABEL_11:

  return v11;
}

@end