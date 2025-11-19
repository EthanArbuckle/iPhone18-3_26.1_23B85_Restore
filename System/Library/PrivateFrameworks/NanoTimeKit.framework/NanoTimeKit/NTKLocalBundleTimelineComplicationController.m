@interface NTKLocalBundleTimelineComplicationController
+ (BOOL)_acceptsComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5;
+ (BOOL)acceptsComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
+ (Class)complicationDataSourceClassForComplication:(id)a3 family:(int64_t)a4 device:(id)a5;
+ (Class)dataSourceFromComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
@end

@implementation NTKLocalBundleTimelineComplicationController

+ (BOOL)acceptsComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 complicationType])
  {
    v9 = +[NTKBundleComplicationManager sharedManager];
    v10 = [v9 dataSourceClassForBundleComplication:v7 withFamily:a4 andDevice:v8 factorInMigration:1] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_acceptsComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v7 = a5;
  if (a3 <= 0x30 && ((1 << a3) & 0x1000080000001) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [NTKComplication anyComplicationOfType:a3];
    v10 = +[NTKBundleComplicationManager sharedManager];
    v8 = [v10 dataSourceClassForBundleComplication:v9 withFamily:a4 andDevice:v7 factorInMigration:1] != 0;
  }

  return v8;
}

+ (Class)dataSourceFromComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 complicationType])
  {
    v9 = +[NTKBundleComplicationManager sharedManager];
    v10 = [v9 dataSourceClassForBundleComplication:v7 withFamily:a4 andDevice:v8 factorInMigration:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (Class)complicationDataSourceClassForComplication:(id)a3 family:(int64_t)a4 device:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NTKBundleComplicationManager sharedManager];
  v11 = [v10 dataSourceClassForBundleComplication:v8 withFamily:a4 andDevice:v9 factorInMigration:1];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v15.receiver = a1;
    v15.super_class = &OBJC_METACLASS___NTKLocalBundleTimelineComplicationController;
    v12 = objc_msgSendSuper2(&v15, sel_complicationDataSourceClassForComplication_family_device_, v8, a4, v9);
  }

  v13 = v12;

  return v13;
}

@end