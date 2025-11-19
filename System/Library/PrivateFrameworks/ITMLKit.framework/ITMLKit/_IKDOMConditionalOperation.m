@interface _IKDOMConditionalOperation
- (BOOL)passesForDataItem:(id)a3;
@end

@implementation _IKDOMConditionalOperation

- (BOOL)passesForDataItem:(id)a3
{
  v4 = a3;
  v5 = [(_IKDOMConditionalOperation *)self propertyPath];
  v6 = [v4 valueForPropertyPath:v5 boxed:0];

  v7 = [(_IKDOMConditionalOperation *)self literal];

  if (v7)
  {
    if (v6)
    {
      if ([v6 isString])
      {
        v8 = [v6 toString];
        v9 = [(_IKDOMConditionalOperation *)self literal];
        v10 = [v8 compare:v9];
      }

      else
      {
        if (![v6 isNumber])
        {
          if (![v6 isBoolean])
          {
            v10 = 0;
LABEL_11:
            v14 = [(_IKDOMConditionalOperation *)self type];
            v16 = (~v14 & 0xFFFFFFFFFFFFFFFDLL) == 0 || v14 == -2;
            v17 = v14 ^ (v16 << 63 >> 63);
            if (v17 == 2)
            {
              v18 = v10 == 1;
            }

            else if (v17 == 1)
            {
              v18 = v10 == -1;
            }

            else
            {
              if (v17)
              {
                v20 = 0;
LABEL_32:
                v11 = (v14 > 0xFFFFFFFFFFFFFFFCLL) ^ v20;
                goto LABEL_33;
              }

              v18 = v10 == 0;
            }

            v20 = v18;
            goto LABEL_32;
          }

          v19 = [v6 toBool];
          v8 = [(_IKDOMConditionalOperation *)self literal];
          if (v19 == [v8 BOOLValue])
          {
            v10 = 0;
          }

          else if ([v6 toBool])
          {
            v10 = 1;
          }

          else
          {
            v10 = -1;
          }

LABEL_10:

          goto LABEL_11;
        }

        v8 = [v6 toNumber];
        v12 = MEMORY[0x277CCABB0];
        v9 = [(_IKDOMConditionalOperation *)self literal];
        [v9 doubleValue];
        v13 = [v12 numberWithDouble:?];
        v10 = [v8 compare:v13];
      }

      goto LABEL_10;
    }

    v11 = 0;
  }

  else
  {
    v11 = v6 != 0;
  }

LABEL_33:

  return v11;
}

@end