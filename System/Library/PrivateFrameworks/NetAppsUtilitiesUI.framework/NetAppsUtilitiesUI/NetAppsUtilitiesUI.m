id NAStringFromCGRect(double a1, double a2, double a3, double a4)
{
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.*g, %.*g}", 17, *&a1, 17, *&a2];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.*g, %.*g}", 17, *&a3, 17, *&a4];
  v9 = [v6 stringWithFormat:@"{%@, %@}", v7, v8];

  return v9;
}

BOOL NACGFloatLessThanFloat(double a1, double a2)
{
  if (a1 >= a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = a2;
  return vabds_f32(v2, v3) >= 0.00000011921;
}

double NACGFloatCeilForScale(double a1, double a2)
{
  if (fabs(a2) < 2.22044605e-16)
  {
    +[NAUIDeviceUtilities mainScreenScale];
    a2 = v3;
  }

  return ceil(a2 * a1) / a2;
}

double NACGFloatPowerOf2Ceil(double a1)
{
  result = 0.0;
  if (a1 > 0.0)
  {
    v3 = vcvtpd_u64_f64(a1);
    if ((v3 & (v3 - 1)) != 0)
    {
      do
      {
        v4 = v3;
        v3 &= v3 - 1;
      }

      while (v3);
      v3 = 2 * v4;
    }

    return v3;
  }

  return result;
}

uint64_t NAUICurrentContentSizeCategoryIsLargerThanOrEqualToCategory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 preferredContentSizeCategory];
  if ([v3 isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __NAUICurrentContentSizeCategoryIsLargerThanOrEqualToCategory_block_invoke;
    v8[3] = &unk_2799665E0;
    v9 = v3;
    v11 = &v12;
    v10 = v5;
    NAUIEnumerateContentSizeCategoriesInIncreasingOrder(1, 1, v8);
    v6 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

void sub_25B8409C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NAUIEnumerateContentSizeCategoriesInIncreasingOrder(int a1, int a2, void *a3)
{
  v5 = a3;
  if (NAUIEnumerateContentSizeCategoriesInIncreasingOrder_onceToken != -1)
  {
    NAUIEnumerateContentSizeCategoriesInIncreasingOrder_cold_1();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (!a1 || (v6 = NAUIEnumerateContentSizeCategoriesInIncreasingOrder_smallerThanDefaultSizes, v16[0] = MEMORY[0x277D85DD0], v16[1] = 3221225472, v16[2] = __NAUIEnumerateContentSizeCategoriesInIncreasingOrder_block_invoke_2, v16[3] = &unk_279966608, v17 = v5, v18 = &v19, [v6 enumerateObjectsUsingBlock:v16], v17, (v20[3] & 1) == 0))
  {
    v7 = NAUIEnumerateContentSizeCategoriesInIncreasingOrder_normalSizes;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __NAUIEnumerateContentSizeCategoriesInIncreasingOrder_block_invoke_3;
    v13[3] = &unk_279966608;
    v8 = v5;
    v14 = v8;
    v15 = &v19;
    [v7 enumerateObjectsUsingBlock:v13];

    if ((v20[3] & 1) == 0 && a2)
    {
      v9 = NAUIEnumerateContentSizeCategoriesInIncreasingOrder_accessibilitySizes;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __NAUIEnumerateContentSizeCategoriesInIncreasingOrder_block_invoke_4;
      v10[3] = &unk_279966608;
      v11 = v8;
      v12 = &v19;
      [v9 enumerateObjectsUsingBlock:v10];
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __NAUICurrentContentSizeCategoryIsLargerThanOrEqualToCategory_block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 isEqualToString:a1[4]];
  v6 = 1;
  if ((v5 & 1) == 0)
  {
    if (![v7 isEqualToString:a1[5]])
    {
      goto LABEL_5;
    }

    v6 = 0;
  }

  *(*(a1[6] + 8) + 24) = v6;
  *a3 = 1;
LABEL_5:
}

__CFString *NAUIShortDescriptionFromUIContentSizeCategory(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D76830]])
  {
    v2 = @"xSM";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76858]])
  {
    v2 = @"SM";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76840]])
  {
    v2 = @"M";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76838]])
  {
    v2 = @"L";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76828]])
  {
    v2 = @"XL";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76820]])
  {
    v2 = @"XXL";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76818]])
  {
    v2 = @"XXXL";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76808]])
  {
    v2 = @"AX-M";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D76800]])
  {
    v2 = @"AX-L";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D767F8]])
  {
    v2 = @"AX-XL";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D767F0]])
  {
    v2 = @"AX-XXL";
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D767E8]])
  {
    v2 = @"AX-XXXL";
  }

  else
  {
    v2 = @"??";
  }

  return v2;
}

void __NAUIEnumerateContentSizeCategoriesInIncreasingOrder_block_invoke()
{
  v13[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76858];
  v13[0] = *MEMORY[0x277D76830];
  v13[1] = v0;
  v13[2] = *MEMORY[0x277D76840];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v2 = NAUIEnumerateContentSizeCategoriesInIncreasingOrder_smallerThanDefaultSizes;
  NAUIEnumerateContentSizeCategoriesInIncreasingOrder_smallerThanDefaultSizes = v1;

  v3 = *MEMORY[0x277D76828];
  v12[0] = *MEMORY[0x277D76838];
  v12[1] = v3;
  v4 = *MEMORY[0x277D76818];
  v12[2] = *MEMORY[0x277D76820];
  v12[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v6 = NAUIEnumerateContentSizeCategoriesInIncreasingOrder_normalSizes;
  NAUIEnumerateContentSizeCategoriesInIncreasingOrder_normalSizes = v5;

  v7 = *MEMORY[0x277D76800];
  v11[0] = *MEMORY[0x277D76808];
  v11[1] = v7;
  v8 = *MEMORY[0x277D767F0];
  v11[2] = *MEMORY[0x277D767F8];
  v11[3] = v8;
  v11[4] = *MEMORY[0x277D767E8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
  v10 = NAUIEnumerateContentSizeCategoriesInIncreasingOrder_accessibilitySizes;
  NAUIEnumerateContentSizeCategoriesInIncreasingOrder_accessibilitySizes = v9;
}

uint64_t __NAUIEnumerateContentSizeCategoriesInIncreasingOrder_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __NAUIEnumerateContentSizeCategoriesInIncreasingOrder_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __NAUIEnumerateContentSizeCategoriesInIncreasingOrder_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

__CFString *NAUIStringFromLayoutAttribute(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return @"NSLayoutAttribute(?)";
  }

  else
  {
    return off_279966678[a1];
  }
}

void sub_25B842150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double UIScreenPixelHeight()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  v2 = 1.0 / v1;

  return v2;
}

id NAUILayoutMetricsForUIEdgeInsetsNamed(void *a1, double a2, double a3, double a4, double a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = UIEdgeInsetKeyNamed(v9, @"top");
  v20[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v21[0] = v11;
  v12 = UIEdgeInsetKeyNamed(v9, @"bottom");
  v20[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v21[1] = v13;
  v14 = UIEdgeInsetKeyNamed(v9, @"left");
  v20[2] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v21[2] = v15;
  v16 = UIEdgeInsetKeyNamed(v9, @"right");

  v20[3] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v21[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v18;
}

id UIEdgeInsetKeyNamed(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v3, v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

void sub_25B842CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromUIInterfaceOrientationMask(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if ((a1 & 0x10) != 0)
  {
    [v2 addObject:@"landscape-left"];
    if ((a1 & 8) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"landscape-right"];
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"portrait"];
  if ((a1 & 4) != 0)
  {
LABEL_5:
    [v3 addObject:@"portrait-upside-down"];
  }

LABEL_6:
  v4 = [v3 componentsJoinedByString:@" | "];

  return v4;
}

void sub_25B845030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B8463A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}