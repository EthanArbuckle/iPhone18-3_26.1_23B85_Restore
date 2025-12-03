@interface CLSPartOfDayCalculation
+ (id)_possibleTimesOfDay;
+ (id)partOfDayForItem:(id)item;
+ (id)partsOfDayForFeeder:(id)feeder;
@end

@implementation CLSPartOfDayCalculation

+ (id)_possibleTimesOfDay
{
  if (_possibleTimesOfDay_onceToken != -1)
  {
    dispatch_once(&_possibleTimesOfDay_onceToken, &__block_literal_global_2997);
  }

  v3 = _possibleTimesOfDay_possibleTimesOfDay;

  return v3;
}

void __46__CLSPartOfDayCalculation__possibleTimesOfDay__block_invoke()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"Night";
  v2[1] = @"Morning";
  v2[2] = @"Noon";
  v2[3] = @"Afternoon";
  v2[4] = @"Evening";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  v1 = _possibleTimesOfDay_possibleTimesOfDay;
  _possibleTimesOfDay_possibleTimesOfDay = v0;
}

+ (id)partsOfDayForFeeder:(id)feeder
{
  feederCopy = feeder;
  numberOfItems = [feederCopy numberOfItems];
  if (numberOfItems)
  {
    v6 = numberOfItems;
    v7 = malloc_type_calloc(7uLL, 8uLL, 0x100004000313F17uLL);
    *v7 = xmmword_22F992590;
    v7[1] = xmmword_22F9925A0;
    v7[2] = xmmword_22F9925B0;
    *(v7 + 6) = 0x40F97D0000000000;
    _possibleTimesOfDay = [self _possibleTimesOfDay];
    v9 = [_possibleTimesOfDay count];
    v10 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0xBFF0000000000000;
    localStartDate = [feederCopy localStartDate];
    universalStartDate = [feederCopy universalStartDate];
    [localStartDate timeIntervalSinceDate:universalStartDate];
    v14 = v13;

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __47__CLSPartOfDayCalculation_partsOfDayForFeeder___block_invoke;
    v26[3] = &unk_2788A7D68;
    v26[7] = v14;
    v26[4] = v27;
    v26[5] = &v28;
    v26[6] = v6;
    v26[8] = v7;
    v26[9] = v10;
    [feederCopy enumerateItemsUsingBlock:v26];
    v15 = 0;
    if (v9)
    {
      v16 = v10;
      v17 = v9;
      do
      {
        v18 = *v16;
        if (*v16 && v18 / v29[3] < 0.03)
        {
          *v16 = 0;
          v15 += v18;
        }

        ++v16;
        --v17;
      }

      while (v17);
    }

    v29[3] -= v15;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v21 = v10[i];
        if (v21)
        {
          v22 = v29[3];
          v23 = [_possibleTimesOfDay objectAtIndexedSubscript:i];
          if (v23)
          {
            v24 = [MEMORY[0x277CCABB0] numberWithDouble:v21 / v22];
            [dictionary setObject:v24 forKeyedSubscript:v23];
          }
        }
      }
    }

    free(v10);
    free(v7);
    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  return dictionary;
}

void __47__CLSPartOfDayCalculation_partsOfDayForFeeder___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v7 = a3 / *(a1 + 48);
  if (v7 <= 0.33)
  {
    v8 = 1;
  }

  else if (v7 >= 0.66)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 clsLocation];

  if (v9)
  {
    v10 = [v6 cls_localDateComponents];
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_20:
    v21 = v10;
    v22 = v21;
    if (!v21)
    {
      v18 = 0.0;
      goto LABEL_34;
    }

    v23 = [v21 hour] * 3600.0;
    if (v8 == 2)
    {
      if ([v22 minute] <= 4)
      {
        v24 = -1.0;
LABEL_33:
        v18 = v23 + v24;
        goto LABEL_34;
      }
    }

    else if (v8 == 1 && [v22 minute] >= 56)
    {
      v18 = v23 + 3600.0;
LABEL_34:

      *(*(*(a1 + 32) + 8) + 24) = v18;
      goto LABEL_35;
    }

    v25 = [v22 minute];
    v24 = [v22 second] + v25 * 60.0;
    goto LABEL_33;
  }

  v19 = [v6 cls_universalDate];
  v20 = [v19 dateByAddingTimeInterval:*(a1 + 56)];
  v10 = [CLSCalendar dateComponentsWithLocalDate:v20];

  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_8:
  v11 = *(*(*(a1 + 32) + 8) + 24);
  v12 = v10;
  v13 = v12;
  if (v12)
  {
    v14 = 3600.0;
    v15 = [v12 hour] * 3600.0;
    if (v8 == 2)
    {
      v14 = -1.0;
      if ([v13 minute] < 5)
      {
        goto LABEL_13;
      }
    }

    else if (v8 == 1 && [v13 minute] > 55)
    {
LABEL_13:
      if (v15 + v14 >= v11 || v11 == -1.0)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15 + v14 + 86400.0;
      }

      goto LABEL_26;
    }

    v16 = [v13 minute];
    v14 = [v13 second] + v16 * 60.0;
    goto LABEL_13;
  }

  v18 = 0.0;
LABEL_26:

LABEL_35:
  v26 = *(a1 + 64);
  v27 = *(v26 + 48);
  v28 = v18;
  if (v27 <= v18)
  {
    v28 = (v18 % 0x15180);
  }

  v29 = 0;
  while (v28 >= *(v26 + 8 * v29 + 8) || v28 < *(v26 + 8 * v29))
  {
    if (++v29 == 6)
    {
      if (!a3)
      {
LABEL_47:
        *(v26 + 8) = *(v26 + 8) + 7200.0;
        v30 = v27 + 7200.0;
        *(v26 + 48) = v30;
        v31 = v30 > v18;
        v32 = v18;
        if (!v31)
        {
          v32 = (v18 % 0x15180);
        }

        v29 = 0;
        while (v32 >= *(v26 + 8 * v29 + 8) || v32 < *(v26 + 8 * v29))
        {
          if (++v29 == 6)
          {
            goto LABEL_55;
          }
        }

        if (v29 == 5)
        {
          v29 = 0;
        }

        goto LABEL_60;
      }

      goto LABEL_55;
    }
  }

  if (v29 == 5)
  {
    v29 = 0;
  }

  if (!a3 && v29 != 1)
  {
    goto LABEL_47;
  }

  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_60:
    ++*(*(*(a1 + 40) + 8) + 24);
    ++*(*(a1 + 72) + 8 * v29);
    goto LABEL_61;
  }

LABEL_55:
  v33 = +[CLSLogging sharedLogging];
  v34 = [v33 loggingConnection];

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = 134217984;
    v36 = v18;
    _os_log_error_impl(&dword_22F907000, v34, OS_LOG_TYPE_ERROR, "Cannot find time of day for time interval %f", &v35, 0xCu);
  }

LABEL_61:
}

+ (id)partOfDayForItem:(id)item
{
  cls_localDateComponents = [item cls_localDateComponents];
  v5 = cls_localDateComponents;
  if (cls_localDateComponents)
  {
    v6 = [cls_localDateComponents hour] * 3600.0;
    minute = [v5 minute];
    v8 = v6 + [v5 second] + minute * 60.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = malloc_type_calloc(7uLL, 8uLL, 0x100004000313F17uLL);
  v10 = v9;
  *v9 = xmmword_22F992590;
  v9[1] = xmmword_22F9925A0;
  v9[2] = xmmword_22F9925B0;
  *(v9 + 6) = 0x40F97D0000000000;
  if (v8 >= 104400.0)
  {
    v8 = (v8 % 0x15180);
  }

  v11 = 0;
  while (v8 >= *(v9 + v11 + 1) || v8 < *(v9 + v11))
  {
    if (++v11 == 6)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }
  }

  if (v11 == 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

LABEL_14:
  _possibleTimesOfDay = [self _possibleTimesOfDay];
  v14 = [_possibleTimesOfDay objectAtIndexedSubscript:v12];
  free(v10);

  return v14;
}

@end