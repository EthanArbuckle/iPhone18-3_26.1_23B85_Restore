@interface MAError
+ (id)errorForCode:(int64_t)code;
@end

@implementation MAError

+ (id)errorForCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (code <= -6)
  {
    if (code > -9)
    {
      if (code == -8)
      {
        v6 = @"Incomplete data";
      }

      else if (code == -7)
      {
        v6 = @"Not authorized";
      }

      else
      {
        v6 = @"Feature not supported";
      }

      goto LABEL_23;
    }

    if (code == -10)
    {
      v6 = @"Bad schema";
      goto LABEL_23;
    }

    if (code == -9)
    {
      v6 = @"Syntax error";
      goto LABEL_23;
    }

LABEL_22:
    v6 = @"Unknown error";
    goto LABEL_23;
  }

  if (code > -4)
  {
    switch(code)
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

  if (code == -5)
  {
    v6 = @"Already in use";
  }

  else
  {
    v6 = @"Cancelled";
  }

LABEL_23:
  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MAErrorDomain" code:code localizedDescription:v7];

  return v8;
}

@end