@interface NSMutableData(NSMutableData_SNN)
- (void)appendScalar:()NSMutableData_SNN dataType:;
- (void)appendScalars:()NSMutableData_SNN dataType:;
@end

@implementation NSMutableData(NSMutableData_SNN)

- (void)appendScalar:()NSMutableData_SNN dataType:
{
  v6 = a3;
  v7 = v6;
  if (a4 > 6)
  {
    if (a4 > 9)
    {
      switch(a4)
      {
        case 10:
          LOWORD(unsignedLongValue) = [v6 unsignedShortValue];
          [self appendBytes:&unsignedLongValue length:2];
          break;
        case 11:
          LODWORD(unsignedLongValue) = [v6 unsignedIntValue];
          [self appendBytes:&unsignedLongValue length:4];
          break;
        case 12:
          unsignedLongValue = [v6 unsignedLongValue];
          [self appendBytes:&unsignedLongValue length:8];
          break;
      }
    }

    else if (a4 == 7)
    {
      LODWORD(unsignedLongValue) = [v6 intValue];
      [self appendBytes:&unsignedLongValue length:4];
    }

    else if (a4 == 8)
    {
      unsignedLongValue = [v6 longValue];
      [self appendBytes:&unsignedLongValue length:8];
    }

    else
    {
      LOBYTE(unsignedLongValue) = [v6 unsignedCharValue];
      [self appendBytes:&unsignedLongValue length:1];
    }
  }

  else if (a4 > 3)
  {
    if (a4 == 4)
    {
      [v6 doubleValue];
      unsignedLongValue = v9;
      [self appendBytes:&unsignedLongValue length:8];
    }

    else if (a4 == 5)
    {
      LOBYTE(unsignedLongValue) = [v6 charValue];
      [self appendBytes:&unsignedLongValue length:1];
    }

    else
    {
      LOWORD(unsignedLongValue) = [v6 shortValue];
      [self appendBytes:&unsignedLongValue length:2];
    }
  }

  else if (a4)
  {
    if (a4 == 2)
    {
      [v6 floatValue];
      __asm { FCVT            H0, S0 }

      LOWORD(unsignedLongValue) = _S0;
      [self appendBytes:&unsignedLongValue length:2];
    }

    else if (a4 == 3)
    {
      [v6 floatValue];
      LODWORD(unsignedLongValue) = v8;
      [self appendBytes:&unsignedLongValue length:4];
    }
  }

  else
  {
    LOBYTE(unsignedLongValue) = [v6 BOOLValue];
    [self appendBytes:&unsignedLongValue length:1];
  }
}

- (void)appendScalars:()NSMutableData_SNN dataType:
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [self appendScalar:*(*(&v11 + 1) + 8 * v9++) dataType:{a4, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end