@interface HKElectrocardiogram
@end

@implementation HKElectrocardiogram

void *__197__HKElectrocardiogram_HealthUI___hk_waveformPathsWithNumberOfValues_transform_maximumNumberOfValuesPerPath_shouldResetXValues_initialValuesToOmit_minimumValueInMicrovolts_maximumValueInMicrovolts___block_invoke(void *result, uint64_t a2, _BYTE *a3, float a4)
{
  if (result[6] <= a2)
  {
    v4 = a2;
    v5 = result;
    if (result[7] <= a2)
    {
      *a3 = 1;
    }

    else
    {
      v7 = result[8];
      if (v7 >= 1)
      {
        if (!(a2 % v7))
        {
          v8 = objc_alloc_init(MEMORY[0x1E69DC728]);
          if (([*(*(v5[4] + 8) + 40) isEmpty] & 1) == 0)
          {
            if ((v5[16] & 1) == 0)
            {
              [*(*(v5[4] + 8) + 40) currentPoint];
              [v8 moveToPoint:?];
            }

            [*(*(v5[5] + 8) + 40) addObject:*(*(v5[4] + 8) + 40)];
          }

          v9 = *(v5[4] + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;
        }

        if (*(v5 + 128) == 1)
        {
          v4 %= v5[8];
        }
      }

      v11 = *(v5 + 30);
      v12 = *(v5 + 31);
      if (v12 <= a4)
      {
        v12 = a4;
      }

      if (v12 >= v11)
      {
        v12 = *(v5 + 30);
      }

      v13 = [*(*(v5[4] + 8) + 40) isEmpty];
      v14 = *(*(v5[4] + 8) + 40);
      if (v13)
      {

        return [v14 moveToPoint:{v15, v16}];
      }

      else
      {

        return [v14 addLineToPoint:{v15, v16}];
      }
    }
  }

  return result;
}

void __61__HKElectrocardiogram_HKCodingSupport__createWithCodableECG___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _setPrivateClassification:{objc_msgSend(v3, "classificationRawValue")}];
  v5 = MEMORY[0x1E696C348];
  v6 = [*(a1 + 32) averageHeartRate];
  v7 = [v5 createWithCodableQuantity:v6];
  [v4 _setAverageHeartRate:v7];

  [v4 _setSymptomsStatus:{objc_msgSend(*(a1 + 32), "symptomsStatusRawValue")}];
  v8 = [*(a1 + 32) readingData];
  [v4 _setPayload:v8];
}

@end