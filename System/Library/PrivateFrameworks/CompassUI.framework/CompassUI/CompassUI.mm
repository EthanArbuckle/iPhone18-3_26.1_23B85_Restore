double normalizedRotation(double a1, double a2)
{
  if (a2 <= 3.14159265)
  {
    if (a2 < -3.14159265)
    {
      a2 = a2 + 6.28318531;
    }
  }

  else
  {
    a2 = -(6.28318531 - a2);
  }

  v2 = a2 - a1;
  if (a2 - a1 > 3.14159265)
  {
    return a1 - (6.28318531 - v2);
  }

  if (v2 < -3.14159265)
  {
    return v2 + 6.28318531 + a1;
  }

  return a2;
}

void CGPointRoundToPixel()
{
  if (qword_27EDBA510 != -1)
  {
    sub_243D6FB10();
  }
}

void sub_243D6BF14()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  qword_27EDBA4A8 = v0;
}

double ConvertDecimalDegreesToDMS(uint64_t *a1, void *a2, double *a3, double a4)
{
  if (a1)
  {
    v4 = a4;
    if (a4 < 0)
    {
      v4 = -v4;
    }

    *a1 = v4;
  }

  result = fabs((a4 - a4) * 60.0);
  if (a2)
  {
    *a2 = result;
  }

  if (a3)
  {
    result = (result - result) * 60.0;
    *a3 = result;
  }

  return result;
}

void ConvertDegreeSignToString(void *a1, int a2, double a3)
{
  if (a1)
  {
    v5 = (a3 * 3600.0);
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = v6;
    if (a2)
    {
      if (v5 < 0)
      {
        v8 = @"cW";
        v9 = @"W";
      }

      else
      {
        v8 = @"cE";
        v9 = @"E";
      }
    }

    else if (v5 < 0)
    {
      v8 = @"cS";
      v9 = @"S";
    }

    else
    {
      v8 = @"cN";
      v9 = @"N";
    }

    v11 = [v6 localizedStringForKey:v8 value:v9 table:0];

    v10 = v11;
    *a1 = v10;
  }
}

id CreateCoordinateComponentString(int a1, double a2, double a3)
{
  if (a1)
  {
    a2 = a3;
  }

  v3 = fabs((a2 - a2) * 60.0);
  v4 = v3;
  v5 = (v3 - v3) * 60.0;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v21 = 0;
  ConvertDegreeSignToString(&v21, a1, a2);
  v7 = v21;
  v8 = MEMORY[0x277CCABB8];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v10 = [v8 localizedStringFromNumber:v9 numberStyle:0];

  v11 = MEMORY[0x277CCABB8];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v13 = [v11 localizedStringFromNumber:v12 numberStyle:0];

  v14 = MEMORY[0x277CCABB8];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v16 = [v14 localizedStringFromNumber:v15 numberStyle:0];

  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = WebLocalizedString();
  v19 = [v17 initWithFormat:v18, v10, v13, v16, v7, 0];

  return v19;
}

uint64_t StringWithLocationDirection()
{
  v0 = qword_27EDBA518;
  if (!qword_27EDBA518)
  {
    v1 = objc_alloc(MEMORY[0x277CBEA60]);
    v2 = WebLocalizedString();
    v3 = WebLocalizedString();
    v4 = WebLocalizedString();
    v5 = WebLocalizedString();
    v6 = WebLocalizedString();
    v7 = WebLocalizedString();
    v8 = WebLocalizedString();
    v9 = WebLocalizedString();
    v10 = [v1 initWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, 0}];
    v11 = qword_27EDBA518;
    qword_27EDBA518 = v10;

    v0 = qword_27EDBA518;
  }

  [v0 count];
  v12 = qword_27EDBA518;

  return MEMORY[0x2821F9670](v12, sel_objectAtIndex_);
}

id sharedHeadingFormatter()
{
  v0 = [MEMORY[0x277CCACC8] currentThread];
  v1 = [v0 threadDictionary];
  v2 = [v1 objectForKey:@"CompassHeadingFormatterKey"];

  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v2 setNumberStyle:0];
    v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [v2 setLocale:v3];

    [v2 setNegativePrefix:@"−"];
    v4 = [MEMORY[0x277CCACC8] currentThread];
    v5 = [v4 threadDictionary];
    [v5 setObject:v2 forKey:@"CompassHeadingFormatterKey"];
  }

  return v2;
}

id compassThinFont70G2()
{
  v19[1] = *MEMORY[0x277D85DE8];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemFontType|0x80, 70.0, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  v2 = [CopyOfSystemUIFontWithGrade fontDescriptor];
  CFRelease(UIFontForLanguage);
  CFRelease(CopyOfSystemUIFontWithGrade);
  v18 = *MEMORY[0x277D74338];
  v4 = *MEMORY[0x277D74388];
  v15[0] = *MEMORY[0x277D74398];
  v3 = v15[0];
  v15[1] = v4;
  v16[0] = &unk_2856FC218;
  v16[1] = &unk_2856FC230;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v17[0] = v5;
  v13[0] = v3;
  v13[1] = v4;
  v14[0] = &unk_2856FC248;
  v14[1] = &unk_2856FC230;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v17[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v19[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v9 = [v2 fontDescriptorByAddingAttributes:v8];

  v10 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:70.0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id compassMediumFont20()
{
  v0 = *MEMORY[0x277D76A28];
  v1 = MEMORY[0x277D74300];
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [v2 pointSize];
  v3 = *MEMORY[0x277D74410];
  v4 = [v1 systemFontOfSize:? weight:?];

  v5 = [v4 _fontScaledLikeTextStyle:v0 maximumPointSize:0 compatibleWithTraitCollection:0 forIB:26.0];

  return v5;
}

id sub_243D6C7D8(void *a1)
{
  v2 = [a1 layer];
  v3 = [v2 presentationLayer];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [a1 layer];
  }

  v5 = v4;

  return v5;
}

double sub_243D6C858(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, double *a6)
{
  if (a4)
  {
    v6 = a1;
    if (a1 < 0)
    {
      v6 = -v6;
    }

    *a4 = v6;
  }

  result = fabs((a1 - a1) * 60.0);
  if (a5)
  {
    *a5 = result;
  }

  if (a6)
  {
    result = (result - result) * 60.0;
    *a6 = result;
  }

  return result;
}

void sub_243D6DB38()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v0 objectForKey:@"CalibrationMultiplier"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v1 = v3;
  }

  else
  {
    v2 = 0;
  }

  qword_27EDBA520 = v2;
}

void sub_243D6F3AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = fmod(*(a1 + 40) + *(a1 + 48), 360.0);
    [v4 showTicAtAngle:v3 withCredit:1.0];
    [v4[130] setAngle:v3 * 3.14159265 / 180.0];
    WeakRetained = v4;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}