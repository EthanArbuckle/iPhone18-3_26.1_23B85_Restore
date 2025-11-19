@interface IAUtility
+ (BOOL)xpcEnabled;
+ (id)lookupAppBundle:(id)a3;
@end

@implementation IAUtility

+ (BOOL)xpcEnabled
{
  if (qword_1ED82C548 != -1)
  {
    sub_1D46107A4();
  }

  return byte_1ED82C540;
}

+ (id)lookupAppBundle:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (qword_1ED82C5E0 == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D462EE2C();
    if (v5)
    {
LABEL_3:
      if (objc_msgSend_hasPrefix_(v5, v4, @"com.apple."))
      {
        v7 = v5;
      }

      else
      {
        v8 = objc_msgSend_valueForKey_(qword_1ED82C5D8, v6, v5);
        v9 = v8;
        if (v8)
        {
          v7 = v8;
        }

        else
        {
          v7 = @"Other";
        }
      }

      goto LABEL_11;
    }
  }

  v7 = @"nil";
LABEL_11:

  return v7;
}

@end