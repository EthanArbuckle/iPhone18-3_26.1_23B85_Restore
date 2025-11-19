@interface MRUWaveformData
+ (id)staticData;
+ (id)zero;
- (MRUWaveformData)initWithAmplitudes:(id)a3;
- (MRUWaveformData)initWithFFTSamples:(float *)a3 count:(int)a4 sampleRate:(float)a5 settings:(id)a6;
- (float)maxAbsoluteDifferenceFrom:(id)a3;
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

- (MRUWaveformData)initWithAmplitudes:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRUWaveformData;
  v5 = [(MRUWaveformData *)&v8 init];
  if (v5)
  {
    v6 = [v4 copy];
    [(MRUWaveformData *)v5 setAmplitudes:v6];
  }

  return v5;
}

- (float)maxAbsoluteDifferenceFrom:(id)a3
{
  v4 = a3;
  if (v4)
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
        v7 = [(MRUWaveformData *)self amplitudes];
        v8 = [v7 objectAtIndexedSubscript:v5];
        [v8 floatValue];
        v10 = v9;
        v11 = [v4 amplitudes];
        v12 = [v11 objectAtIndexedSubscript:v5];
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

- (MRUWaveformData)initWithFFTSamples:(float *)a3 count:(int)a4 sampleRate:(float)a5 settings:(id)a6
{
  v9 = a6;
  v10 = +[MRUWaveformData amplitudeCount];
  v11 = [v9 stops];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  v13 = malloc_type_calloc(+[MRUWaveformData amplitudeCount], 4uLL, 0x100004052888210uLL);
  v60 = v12;
  if (a4 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = a5 / (2 * a4);
    v17 = a4;
    do
    {
      if ([v11 count] - 1 == v15)
      {
        break;
      }

      v18 = v15;
      v19 = v16 * v14;
      v20 = [v11 objectAtIndexedSubscript:v15];
      [v20 floatValue];
      v22 = v21;

      v23 = [v11 objectAtIndexedSubscript:v15 + 1];
      [v23 floatValue];
      v25 = v24;

      if (v19 < v22 || v19 > v25)
      {
        if ([v11 count] - 2 > v15 && v19 >= v25)
        {
          do
          {
            v27 = v18++;
            v15 = v18;
            v28 = [v11 objectAtIndexedSubscript:v27 + 2];
            [v28 floatValue];
            v30 = v29;
          }

          while ([v11 count] - 2 > v18 && v19 >= v30);
        }

        if ([v11 count] <= v18)
        {
          goto LABEL_16;
        }

        v31 = v13[v18] + ((1.0 / (v25 - v22)) * a3[v14]);
      }

      else
      {
        v31 = a3[v14] + v13[v15];
      }

      v13[v18] = v31;
LABEL_16:
      v12 = v60;
      ++v14;
    }

    while (v14 != v17);
  }

  if (v10 >= 1)
  {
    v32 = 0;
    v59 = v10;
    do
    {
      v33 = v13[v32];
      [v9 amplitudeGain];
      v35 = (v33 * v34);
      [v9 exponentialGain];
      v37 = pow(v35, v36);
      v13[v32] = v37;
      [v9 frequencyExponent];
      *&v35 = ((v32 * v38) + 1.0) * v13[v32];
      v39 = [v9 adjustmentCoefficients];
      v40 = [v39 objectAtIndexedSubscript:0];
      [v40 floatValue];
      v42 = v41;
      v43 = [v39 objectAtIndexedSubscript:1];
      [v43 floatValue];
      v45 = *&v35;
      v46 = v42 + v44 * v45;
      v47 = [v39 objectAtIndexedSubscript:2];
      [v47 floatValue];
      v49 = v46 + v48 * (v45 * v45);
      v50 = [v39 objectAtIndexedSubscript:3];
      [v50 floatValue];
      v52 = v49 + v51 * pow(v45, 3.0);
      v53 = [v39 objectAtIndexedSubscript:4];
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