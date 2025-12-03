@interface PXPhotosGridHeaderUtilities
+ (id)browserDateIntervalStringForDateIntervalString:(id)string dateType:(unint64_t)type;
+ (unint64_t)dateTypeForViewModel:(id)model;
@end

@implementation PXPhotosGridHeaderUtilities

+ (unint64_t)dateTypeForViewModel:(id)model
{
  modelCopy = model;
  v4 = sub_21AC10830(modelCopy);

  return v4;
}

+ (id)browserDateIntervalStringForDateIntervalString:(id)string dateType:(unint64_t)type
{
  if (string)
  {
    v5 = sub_21AC6EFA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_21AC108B4(v5, v7, type);
  v9 = v8;

  if (v9)
  {
    v10 = sub_21AC6EF94();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end