@interface NTKComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)a3 withFamily:(int64_t)a4 forDevice:(id)a5;
+ (Class)dataSourceClassForComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)sampleTemplate;
@end

@implementation NTKComplicationDataSource

+ (Class)dataSourceClassForComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v7 = a5;
  v8 = +[NTKComplicationDataSourceCache sharedInstance];
  v9 = [v8 dataSourceClassForComplicationType:a3 family:a4 forDevice:v7];

  return v9;
}

+ (BOOL)acceptsComplicationType:(unint64_t)a3 withFamily:(int64_t)a4 forDevice:(id)a5
{
  v8 = a5;
  if ([a1 acceptsComplicationType:a3 forDevice:v8])
  {
    v9 = [a1 acceptsComplicationFamily:a4 forDevice:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sampleTemplate
{
  v12.receiver = self;
  v12.super_class = NTKComplicationDataSource;
  v3 = [(CLKCComplicationDataSource *)&v12 sampleTemplate];
  if (!v3)
  {
    v4 = [(CLKCComplicationDataSource *)self complication];
    v5 = [v4 complicationType];
    v6 = [(CLKCComplicationDataSource *)self family];
    v7 = [(CLKCComplicationDataSource *)self device];
    if ([NTKSampleComplicationDataSource acceptsComplicationType:v5 withFamily:v6 forDevice:v7])
    {
      v8 = [NTKSampleComplicationDataSource alloc];
      v9 = [(CLKCComplicationDataSource *)self context];
      v10 = [(CLKCComplicationDataSource *)v8 initWithComplication:v4 family:v6 forDevice:v7 context:v9];

      v3 = [(NTKSampleComplicationDataSource *)v10 sampleTemplate];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end