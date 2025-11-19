@interface NSData(NSData_SNN)
+ (id)dataWithScalar:()NSData_SNN dataType:;
@end

@implementation NSData(NSData_SNN)

+ (id)dataWithScalar:()NSData_SNN dataType:
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a4 <= 6)
  {
    if (a4 <= 3)
    {
      if (a4)
      {
        if (a4 == 2)
        {
          [v5 floatValue];
          __asm { FCVT            H0, S0 }

          LOWORD(v17) = _S0;
          v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:2];
        }

        else
        {
          if (a4 != 3)
          {
            goto LABEL_28;
          }

          [v5 floatValue];
          LODWORD(v17) = v8;
          v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:4];
        }
      }

      else
      {
        LOBYTE(v17) = [v5 BOOLValue];
        v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:1];
      }

      goto LABEL_27;
    }

    if (a4 == 4)
    {
      [v5 doubleValue];
      v17 = v10;
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:8];
      goto LABEL_27;
    }

    if (a4 == 5)
    {
      LOBYTE(v17) = [v5 charValue];
      [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:1];
    }

    else
    {
      LOWORD(v17) = [v5 shortValue];
      [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:2];
    }

    v9 = LABEL_11:;
    goto LABEL_27;
  }

  if (a4 <= 9)
  {
    if (a4 == 7)
    {
      LODWORD(v17) = [v5 intValue];
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:4];
      goto LABEL_27;
    }

    if (a4 == 8)
    {
      v17 = [v5 longValue];
      [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:8];
    }

    else
    {
      LOBYTE(v17) = [v5 unsignedCharValue];
      [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:1];
    }

    goto LABEL_11;
  }

  switch(a4)
  {
    case 10:
      LOWORD(v17) = [v5 unsignedShortValue];
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:2];
      break;
    case 11:
      LODWORD(v17) = [v5 unsignedIntValue];
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:4];
      break;
    case 12:
      v17 = [v5 unsignedLongValue];
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:8];
      break;
    default:
      goto LABEL_28;
  }

LABEL_27:
  v7 = v9;
LABEL_28:

  return v7;
}

@end