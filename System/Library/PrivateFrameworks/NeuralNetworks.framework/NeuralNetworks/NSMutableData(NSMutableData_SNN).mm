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
          LOWORD(v15) = [v6 unsignedShortValue];
          [a1 appendBytes:&v15 length:2];
          break;
        case 11:
          LODWORD(v15) = [v6 unsignedIntValue];
          [a1 appendBytes:&v15 length:4];
          break;
        case 12:
          v15 = [v6 unsignedLongValue];
          [a1 appendBytes:&v15 length:8];
          break;
      }
    }

    else if (a4 == 7)
    {
      LODWORD(v15) = [v6 intValue];
      [a1 appendBytes:&v15 length:4];
    }

    else if (a4 == 8)
    {
      v15 = [v6 longValue];
      [a1 appendBytes:&v15 length:8];
    }

    else
    {
      LOBYTE(v15) = [v6 unsignedCharValue];
      [a1 appendBytes:&v15 length:1];
    }
  }

  else if (a4 > 3)
  {
    if (a4 == 4)
    {
      [v6 doubleValue];
      v15 = v9;
      [a1 appendBytes:&v15 length:8];
    }

    else if (a4 == 5)
    {
      LOBYTE(v15) = [v6 charValue];
      [a1 appendBytes:&v15 length:1];
    }

    else
    {
      LOWORD(v15) = [v6 shortValue];
      [a1 appendBytes:&v15 length:2];
    }
  }

  else if (a4)
  {
    if (a4 == 2)
    {
      [v6 floatValue];
      __asm { FCVT            H0, S0 }

      LOWORD(v15) = _S0;
      [a1 appendBytes:&v15 length:2];
    }

    else if (a4 == 3)
    {
      [v6 floatValue];
      LODWORD(v15) = v8;
      [a1 appendBytes:&v15 length:4];
    }
  }

  else
  {
    LOBYTE(v15) = [v6 BOOLValue];
    [a1 appendBytes:&v15 length:1];
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

        [a1 appendScalar:*(*(&v11 + 1) + 8 * v9++) dataType:{a4, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end