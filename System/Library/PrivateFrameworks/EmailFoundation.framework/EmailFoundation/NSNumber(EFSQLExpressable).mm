@interface NSNumber(EFSQLExpressable)
- (id)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:()EFSQLExpressable;
@end

@implementation NSNumber(EFSQLExpressable)

- (id)ef_SQLExpression
{
  v2 = [MEMORY[0x1E696AD60] string];
  [a1 ef_renderSQLExpressionInto:v2];

  return v2;
}

- (void)ef_renderSQLExpressionInto:()EFSQLExpressable
{
  v14 = a3;
  v4 = *[a1 objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      switch(v4)
      {
        case 'L':
          v5 = [a1 unsignedLongValue];
          v6 = @"%lu";
          goto LABEL_33;
        case 'Q':
          v5 = [a1 unsignedLongLongValue];
          v6 = @"%llu";
          goto LABEL_33;
        case 'S':
          v5 = [a1 unsignedShortValue];
          v6 = @"%hu";
          goto LABEL_33;
      }

LABEL_37:
      v10 = MEMORY[0x1E695DF30];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: unexpected type '%s'", a1, objc_msgSend(a1, "objCType")];
      v12 = [v10 exceptionWithName:*MEMORY[0x1E695D920] reason:v11 userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    if (v4 != 66)
    {
      if (v4 == 67)
      {
        v5 = [a1 unsignedCharValue];
      }

      else
      {
        if (v4 != 73)
        {
          goto LABEL_37;
        }

        v5 = [a1 unsignedIntValue];
      }

      v6 = @"%u";
      goto LABEL_33;
    }

LABEL_23:
    v5 = [a1 charValue];
LABEL_25:
    v6 = @"%d";
    goto LABEL_33;
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [a1 doubleValue];
        v9 = @"%0.16g";
      }

      else
      {
        if (v4 != 102)
        {
          goto LABEL_37;
        }

        [a1 floatValue];
        v8 = v7;
        v9 = @"%0.7g";
      }

      [v14 appendFormat:v9, *&v8];
      goto LABEL_34;
    }

    goto LABEL_23;
  }

  if (v4 > 112)
  {
    if (v4 == 113)
    {
      v5 = [a1 longLongValue];
      v6 = @"%lld";
      goto LABEL_33;
    }

    if (v4 == 115)
    {
      v5 = [a1 shortValue];
      v6 = @"%hi";
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (v4 == 105)
  {
    v5 = [a1 intValue];
    goto LABEL_25;
  }

  if (v4 != 108)
  {
    goto LABEL_37;
  }

  v5 = [a1 longValue];
  v6 = @"%ld";
LABEL_33:
  [v14 appendFormat:v6, v5];
LABEL_34:
}

@end