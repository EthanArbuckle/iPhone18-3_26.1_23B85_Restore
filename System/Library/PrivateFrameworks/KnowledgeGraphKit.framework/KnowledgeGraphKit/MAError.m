@interface MAError
+ (id)errorForCode:(int64_t)a3;
@end

@implementation MAError

+ (id)errorForCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 <= -6)
  {
    if (a3 > -9)
    {
      if (a3 == -8)
      {
        v6 = @"Incomplete data";
      }

      else if (a3 == -7)
      {
        v6 = @"Not authorized";
      }

      else
      {
        v6 = @"Feature not supported";
      }

      goto LABEL_23;
    }

    if (a3 == -10)
    {
      v6 = @"Bad schema";
      goto LABEL_23;
    }

    if (a3 == -9)
    {
      v6 = @"Syntax error";
      goto LABEL_23;
    }

LABEL_22:
    v6 = @"Unknown error";
    goto LABEL_23;
  }

  if (a3 > -4)
  {
    switch(a3)
    {
      case -3:
        v6 = @"Not found";
        goto LABEL_23;
      case -2:
        v6 = @"Not implemented";
        goto LABEL_23;
      case -1:
        v6 = @"Internal error";
        goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 == -5)
  {
    v6 = @"Already in use";
  }

  else
  {
    v6 = @"Cancelled";
  }

LABEL_23:
  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MAErrorDomain" code:a3 localizedDescription:v7];

  return v8;
}

@end