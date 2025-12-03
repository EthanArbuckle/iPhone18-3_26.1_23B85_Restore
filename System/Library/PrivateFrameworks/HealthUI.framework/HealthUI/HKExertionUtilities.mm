@interface HKExertionUtilities
+ (id)filterSamplesOfExertionTypeCode:(int64_t)code fromExertionSamples:(id)samples;
+ (id)mostRelevantSampleFromExertionSamples:(id)samples;
+ (id)mostRelevantValueFromExertionSamples:(id)samples;
@end

@implementation HKExertionUtilities

+ (id)filterSamplesOfExertionTypeCode:(int64_t)code fromExertionSamples:(id)samples
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__HKExertionUtilities_filterSamplesOfExertionTypeCode_fromExertionSamples___block_invoke;
  v6[3] = &__block_descriptor_40_e26__16__0__HKQuantitySample_8l;
  v6[4] = code;
  v4 = [samples hk_map:v6];

  return v4;
}

id __75__HKExertionUtilities_filterSamplesOfExertionTypeCode_fromExertionSamples___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 quantityType];
  v5 = [v4 code];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)mostRelevantValueFromExertionSamples:(id)samples
{
  v3 = [self mostRelevantSampleFromExertionSamples:samples];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696AD98];
    quantity = [v3 quantity];
    [quantity _value];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)mostRelevantSampleFromExertionSamples:(id)samples
{
  v20 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = samplesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        _creationDate = [v10 _creationDate];
        if ([_creationDate hk_isAfterDate:v4])
        {
          v12 = _creationDate;

          v13 = v10;
          v4 = v12;
          v7 = v13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);

    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
  }

  return v6;
}

@end