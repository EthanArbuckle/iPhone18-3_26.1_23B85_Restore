@interface MRUWaveformData
+ (id)staticData;
+ (id)zero;
- (MRUWaveformData)initWithAmplitudes:(id)amplitudes;
- (MRUWaveformData)initWithFFTSamples:(float *)samples count:(int)count sampleRate:(float)rate settings:(id)settings;
- (float)maxAbsoluteDifferenceFrom:(id)from;
@end

@implementation MRUWaveformData

+ (id)zero
{
  if (zero_onceToken != -1)
  {
    +[MRUWaveformData zero];
  }

  v3 = __MRUWaveformDataZero;

  return v3;
}

void __23__MRUWaveformData_zero__block_invoke()
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (+[MRUWaveformData amplitudeCount]>= 1)
  {
    v0 = 0;
    do
    {
      [v3 addObject:&unk_1F148B1F0];
      ++v0;
    }

    while (v0 < +[MRUWaveformData amplitudeCount]);
  }

  v1 = [[MRUWaveformData alloc] initWithAmplitudes:v3];
  v2 = __MRUWaveformDataZero;
  __MRUWaveformDataZero = v1;
}

+ (id)staticData
{
  if (staticData_onceToken != -1)
  {
    +[MRUWaveformData staticData];
  }

  v3 = __MRUWaveformDataStatic;

  return v3;
}

void __29__MRUWaveformData_staticData__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:&unk_1F148B450];
  [v2 addObject:&unk_1F148B460];
  [v2 addObject:&unk_1F148B470];
  [v2 addObject:&unk_1F148B480];
  [v2 addObject:&unk_1F148B490];
  [v2 addObject:&unk_1F148B4A0];
  v0 = [[MRUWaveformData alloc] initWithAmplitudes:v2];
  v1 = __MRUWaveformDataStatic;
  __MRUWaveformDataStatic = v0;
}

- (MRUWaveformData)initWithAmplitudes:(id)amplitudes
{
  amplitudesCopy = amplitudes;
  v8.receiver = self;
  v8.super_class = MRUWaveformData;
  v5 = [(MRUWaveformData *)&v8 init];
  if (v5)
  {
    v6 = [amplitudesCopy copy];
    [(MRUWaveformData *)v5 setAmplitudes:v6];
  }

  return v5;
}

- (float)maxAbsoluteDifferenceFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    if (+[MRUWaveformData amplitudeCount]< 1)
    {
      v6 = 0.0;
    }

    else
    {
      v5 = 0;
      v6 = 0.0;
      do
      {
        amplitudes = [(MRUWaveformData *)self amplitudes];
        v8 = [amplitudes objectAtIndexedSubscript:v5];
        [v8 floatValue];
        v10 = v9;
        amplitudes2 = [fromCopy amplitudes];
        v12 = [amplitudes2 objectAtIndexedSubscript:v5];
        [v12 floatValue];
        v14 = vabds_f32(v10, v13);

        if (v6 < v14)
        {
          v6 = v14;
        }

        ++v5;
      }

      while (v5 < +[MRUWaveformData amplitudeCount]);
    }
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (MRUWaveformData)initWithFFTSamples:(float *)samples count:(int)count sampleRate:(float)rate settings:(id)settings
{
  settingsCopy = settings;
  v10 = +[MRUWaveformData amplitudeCount];
  stops = [settingsCopy stops];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  v13 = malloc_type_calloc(+[MRUWaveformData amplitudeCount], 4uLL, 0x100004052888210uLL);
  v60 = v12;
  if (count >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = rate / (2 * count);
    countCopy = count;
    do
    {
      if ([stops count] - 1 == v15)
      {
        break;
      }

      v18 = v15;
      v19 = v16 * v14;
      v20 = [stops objectAtIndexedSubscript:v15];
      [v20 floatValue];
      v22 = v21;

      v23 = [stops objectAtIndexedSubscript:v15 + 1];
      [v23 floatValue];
      v25 = v24;

      if (v19 < v22 || v19 > v25)
      {
        if ([stops count] - 2 > v15 && v19 >= v25)
        {
          do
          {
            v27 = v18++;
            v15 = v18;
            v28 = [stops objectAtIndexedSubscript:v27 + 2];
            [v28 floatValue];
            v30 = v29;
          }

          while ([stops count] - 2 > v18 && v19 >= v30);
        }

        if ([stops count] <= v18)
        {
          goto LABEL_16;
        }

        v31 = v13[v18] + ((1.0 / (v25 - v22)) * samples[v14]);
      }

      else
      {
        v31 = samples[v14] + v13[v15];
      }

      v13[v18] = v31;
LABEL_16:
      v12 = v60;
      ++v14;
    }

    while (v14 != countCopy);
  }

  if (v10 >= 1)
  {
    v32 = 0;
    v59 = v10;
    do
    {
      v33 = v13[v32];
      [settingsCopy amplitudeGain];
      v35 = (v33 * v34);
      [settingsCopy exponentialGain];
      v37 = pow(v35, v36);
      v13[v32] = v37;
      [settingsCopy frequencyExponent];
      *&v35 = ((v32 * v38) + 1.0) * v13[v32];
      adjustmentCoefficients = [settingsCopy adjustmentCoefficients];
      v40 = [adjustmentCoefficients objectAtIndexedSubscript:0];
      [v40 floatValue];
      v42 = v41;
      v43 = [adjustmentCoefficients objectAtIndexedSubscript:1];
      [v43 floatValue];
      v45 = *&v35;
      v46 = v42 + v44 * v45;
      v47 = [adjustmentCoefficients objectAtIndexedSubscript:2];
      [v47 floatValue];
      v49 = v46 + v48 * (v45 * v45);
      v50 = [adjustmentCoefficients objectAtIndexedSubscript:3];
      [v50 floatValue];
      v52 = v49 + v51 * pow(v45, 3.0);
      v53 = [adjustmentCoefficients objectAtIndexedSubscript:4];
      [v53 floatValue];
      *&v45 = v52 + v54 * pow(v45, 4.0);

      v12 = v60;
      v13[v32] = fmaxf(fminf(v13[v32] * *&v45, 1.0), 0.0);
      v55 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      [v60 setObject:v55 atIndexedSubscript:v32];

      ++v32;
    }

    while (v59 != v32);
  }

  free(v13);
  v56 = [v12 copy];
  [(MRUWaveformData *)self setAmplitudes:v56];

  return self;
}

@end