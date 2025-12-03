@interface NTKComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)type withFamily:(int64_t)family forDevice:(id)device;
+ (Class)dataSourceClassForComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device;
- (id)sampleTemplate;
@end

@implementation NTKComplicationDataSource

+ (Class)dataSourceClassForComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v8 = +[NTKComplicationDataSourceCache sharedInstance];
  v9 = [v8 dataSourceClassForComplicationType:type family:family forDevice:deviceCopy];

  return v9;
}

+ (BOOL)acceptsComplicationType:(unint64_t)type withFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if ([self acceptsComplicationType:type forDevice:deviceCopy])
  {
    v9 = [self acceptsComplicationFamily:family forDevice:deviceCopy];
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
  sampleTemplate = [(CLKCComplicationDataSource *)&v12 sampleTemplate];
  if (!sampleTemplate)
  {
    complication = [(CLKCComplicationDataSource *)self complication];
    complicationType = [complication complicationType];
    family = [(CLKCComplicationDataSource *)self family];
    device = [(CLKCComplicationDataSource *)self device];
    if ([NTKSampleComplicationDataSource acceptsComplicationType:complicationType withFamily:family forDevice:device])
    {
      v8 = [NTKSampleComplicationDataSource alloc];
      context = [(CLKCComplicationDataSource *)self context];
      v10 = [(CLKCComplicationDataSource *)v8 initWithComplication:complication family:family forDevice:device context:context];

      sampleTemplate = [(NTKSampleComplicationDataSource *)v10 sampleTemplate];
    }

    else
    {
      sampleTemplate = 0;
    }
  }

  return sampleTemplate;
}

@end