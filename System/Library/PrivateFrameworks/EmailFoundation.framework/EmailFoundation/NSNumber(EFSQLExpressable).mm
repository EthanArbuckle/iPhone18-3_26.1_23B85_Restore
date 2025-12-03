@interface NSNumber(EFSQLExpressable)
- (id)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:()EFSQLExpressable;
@end

@implementation NSNumber(EFSQLExpressable)

- (id)ef_SQLExpression
{
  string = [MEMORY[0x1E696AD60] string];
  [self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:()EFSQLExpressable
{
  v14 = a3;
  v4 = *[self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      switch(v4)
      {
        case 'L':
          unsignedLongValue = [self unsignedLongValue];
          v6 = @"%lu";
          goto LABEL_33;
        case 'Q':
          unsignedLongValue = [self unsignedLongLongValue];
          v6 = @"%llu";
          goto LABEL_33;
        case 'S':
          unsignedLongValue = [self unsignedShortValue];
          v6 = @"%hu";
          goto LABEL_33;
      }

LABEL_37:
      v10 = MEMORY[0x1E695DF30];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: unexpected type '%s'", self, objc_msgSend(self, "objCType")];
      v12 = [v10 exceptionWithName:*MEMORY[0x1E695D920] reason:v11 userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    if (v4 != 66)
    {
      if (v4 == 67)
      {
        unsignedLongValue = [self unsignedCharValue];
      }

      else
      {
        if (v4 != 73)
        {
          goto LABEL_37;
        }

        unsignedLongValue = [self unsignedIntValue];
      }

      v6 = @"%u";
      goto LABEL_33;
    }

LABEL_23:
    unsignedLongValue = [self charValue];
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
        [self doubleValue];
        v9 = @"%0.16g";
      }

      else
      {
        if (v4 != 102)
        {
          goto LABEL_37;
        }

        [self floatValue];
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
      unsignedLongValue = [self longLongValue];
      v6 = @"%lld";
      goto LABEL_33;
    }

    if (v4 == 115)
    {
      unsignedLongValue = [self shortValue];
      v6 = @"%hi";
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (v4 == 105)
  {
    unsignedLongValue = [self intValue];
    goto LABEL_25;
  }

  if (v4 != 108)
  {
    goto LABEL_37;
  }

  unsignedLongValue = [self longValue];
  v6 = @"%ld";
LABEL_33:
  [v14 appendFormat:v6, unsignedLongValue];
LABEL_34:
}

@end