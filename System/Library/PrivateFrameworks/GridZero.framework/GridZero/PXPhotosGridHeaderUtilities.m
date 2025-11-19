@interface PXPhotosGridHeaderUtilities
+ (id)browserDateIntervalStringForDateIntervalString:(id)a3 dateType:(unint64_t)a4;
+ (unint64_t)dateTypeForViewModel:(id)a3;
@end

@implementation PXPhotosGridHeaderUtilities

+ (unint64_t)dateTypeForViewModel:(id)a3
{
  v3 = a3;
  v4 = sub_21AC10830(v3);

  return v4;
}

+ (id)browserDateIntervalStringForDateIntervalString:(id)a3 dateType:(unint64_t)a4
{
  if (a3)
  {
    v5 = sub_21AC6EFA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_21AC108B4(v5, v7, a4);
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