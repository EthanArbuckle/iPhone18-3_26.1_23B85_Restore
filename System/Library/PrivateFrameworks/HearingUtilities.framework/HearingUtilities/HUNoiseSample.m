@interface HUNoiseSample
+ (id)dateFormatter;
- (HUNoiseSample)initWithRepresentation:(id)a3;
- (HUNoiseSample)initWithSampleDate:(id)a3 splValue:(float)a4 andDuration:(float)a5;
- (id)detailedDescription;
- (id)transportRepresentation;
@end

@implementation HUNoiseSample

+ (id)dateFormatter
{
  if (dateFormatter_token != -1)
  {
    +[HUNoiseSample dateFormatter];
  }

  v3 = dateFormatter__formatter;

  return v3;
}

uint64_t __30__HUNoiseSample_dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = dateFormatter__formatter;
  dateFormatter__formatter = v0;

  v2 = dateFormatter__formatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = dateFormatter__formatter;

  return [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss:SS"];
}

- (HUNoiseSample)initWithSampleDate:(id)a3 splValue:(float)a4 andDuration:(float)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = HUNoiseSample;
  v9 = [(HUNoiseSample *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(HUNoiseSample *)v9 setSampleDate:v8];
    *&v11 = a4;
    [(HUNoiseSample *)v10 setSplValue:v11];
    *&v12 = a5;
    [(HUNoiseSample *)v10 setSampleDuration:v12];
  }

  return v10;
}

- (HUNoiseSample)initWithRepresentation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HUNoiseSample;
  v5 = [(HUNoiseSample *)&v10 init];
  if (v5)
  {
    v6 = [v4 valueForKey:@"HUNoiseSampleDateKey"];
    [(HUNoiseSample *)v5 setSampleDate:v6];

    v7 = [v4 valueForKey:@"HUNoiseSampleSPLKey"];
    [v7 floatValue];
    [(HUNoiseSample *)v5 setSplValue:?];

    v8 = [v4 valueForKey:@"HUNoiseSampleDurationKey"];
    [v8 floatValue];
    [(HUNoiseSample *)v5 setSampleDuration:?];
  }

  return v5;
}

- (id)transportRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(HUNoiseSample *)self sampleDate];

  if (v3)
  {
    v12[0] = @"HUNoiseSampleDateKey";
    v4 = [(HUNoiseSample *)self sampleDate];
    v13[0] = v4;
    v12[1] = @"HUNoiseSampleSPLKey";
    v5 = MEMORY[0x1E696AD98];
    [(HUNoiseSample *)self splValue];
    v6 = [v5 numberWithFloat:?];
    v13[1] = v6;
    v12[2] = @"HUNoiseSampleDurationKey";
    v7 = MEMORY[0x1E696AD98];
    [(HUNoiseSample *)self sampleDuration];
    v8 = [v7 numberWithFloat:?];
    v13[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)detailedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  [(HUNoiseSample *)self splValue];
  v5 = [v4 numberWithFloat:?];
  v6 = +[HUNoiseSample dateFormatter];
  v7 = [(HUNoiseSample *)self sampleDate];
  v8 = [v6 stringFromDate:v7];
  v9 = MEMORY[0x1E696AD98];
  [(HUNoiseSample *)self sampleDuration];
  v10 = [v9 numberWithFloat:?];
  v11 = [v3 stringWithFormat:@"(%@, %@, %@)", v5, v8, v10];

  return v11;
}

@end