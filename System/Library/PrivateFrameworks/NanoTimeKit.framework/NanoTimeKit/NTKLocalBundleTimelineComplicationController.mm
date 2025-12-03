@interface NTKLocalBundleTimelineComplicationController
+ (BOOL)_acceptsComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device;
+ (BOOL)acceptsComplication:(id)complication family:(int64_t)family forDevice:(id)device;
+ (Class)complicationDataSourceClassForComplication:(id)complication family:(int64_t)family device:(id)device;
+ (Class)dataSourceFromComplication:(id)complication family:(int64_t)family forDevice:(id)device;
@end

@implementation NTKLocalBundleTimelineComplicationController

+ (BOOL)acceptsComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  complicationCopy = complication;
  deviceCopy = device;
  if ([complicationCopy complicationType])
  {
    v9 = +[NTKBundleComplicationManager sharedManager];
    v10 = [v9 dataSourceClassForBundleComplication:complicationCopy withFamily:family andDevice:deviceCopy factorInMigration:1] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_acceptsComplicationType:(unint64_t)type family:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (type <= 0x30 && ((1 << type) & 0x1000080000001) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [NTKComplication anyComplicationOfType:type];
    v10 = +[NTKBundleComplicationManager sharedManager];
    v8 = [v10 dataSourceClassForBundleComplication:v9 withFamily:family andDevice:deviceCopy factorInMigration:1] != 0;
  }

  return v8;
}

+ (Class)dataSourceFromComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  complicationCopy = complication;
  deviceCopy = device;
  if ([complicationCopy complicationType])
  {
    v9 = +[NTKBundleComplicationManager sharedManager];
    v10 = [v9 dataSourceClassForBundleComplication:complicationCopy withFamily:family andDevice:deviceCopy factorInMigration:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (Class)complicationDataSourceClassForComplication:(id)complication family:(int64_t)family device:(id)device
{
  complicationCopy = complication;
  deviceCopy = device;
  v10 = +[NTKBundleComplicationManager sharedManager];
  v11 = [v10 dataSourceClassForBundleComplication:complicationCopy withFamily:family andDevice:deviceCopy factorInMigration:1];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___NTKLocalBundleTimelineComplicationController;
    v12 = objc_msgSendSuper2(&v15, sel_complicationDataSourceClassForComplication_family_device_, complicationCopy, family, deviceCopy);
  }

  v13 = v12;

  return v13;
}

@end