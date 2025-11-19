@interface CLSError
+ (id)errorForCode:(int64_t)a3;
@end

@implementation CLSError

+ (id)errorForCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 <= -6)
  {
    if (a3 <= -8)
    {
      if (a3 == -1000)
      {
        v6 = @"<rdar://problem/24271713> PHImageManager requestImageForAsset returned nil result";
        goto LABEL_21;
      }

      if (a3 == -8)
      {
        v6 = @"Incomplete data";
        goto LABEL_21;
      }

LABEL_20:
      v6 = @"Unknown error";
      goto LABEL_21;
    }

    if (a3 == -7)
    {
      v6 = @"Not authorized";
    }

    else
    {
      v6 = @"Feature not supported";
    }
  }

  else
  {
    if (a3 > -4)
    {
      switch(a3)
      {
        case -3:
          v6 = @"Not found";
          goto LABEL_21;
        case -2:
          v6 = @"Not implemented";
          goto LABEL_21;
        case -1:
          v6 = @"Internal error";
          goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a3 == -5)
    {
      v6 = @"Already in use";
    }

    else
    {
      v6 = @"Cancelled";
    }
  }

LABEL_21:
  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLSErrorDomain" code:a3 localizedDescription:v7];

  return v8;
}

@end