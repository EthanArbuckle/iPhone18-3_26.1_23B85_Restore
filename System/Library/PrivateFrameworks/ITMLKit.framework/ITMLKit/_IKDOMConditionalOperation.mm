@interface _IKDOMConditionalOperation
- (BOOL)passesForDataItem:(id)item;
@end

@implementation _IKDOMConditionalOperation

- (BOOL)passesForDataItem:(id)item
{
  itemCopy = item;
  propertyPath = [(_IKDOMConditionalOperation *)self propertyPath];
  v6 = [itemCopy valueForPropertyPath:propertyPath boxed:0];

  literal = [(_IKDOMConditionalOperation *)self literal];

  if (literal)
  {
    if (v6)
    {
      if ([v6 isString])
      {
        toString = [v6 toString];
        literal2 = [(_IKDOMConditionalOperation *)self literal];
        v10 = [toString compare:literal2];
      }

      else
      {
        if (![v6 isNumber])
        {
          if (![v6 isBoolean])
          {
            v10 = 0;
LABEL_11:
            type = [(_IKDOMConditionalOperation *)self type];
            v16 = (~type & 0xFFFFFFFFFFFFFFFDLL) == 0 || type == -2;
            v17 = type ^ (v16 << 63 >> 63);
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
                v11 = (type > 0xFFFFFFFFFFFFFFFCLL) ^ v20;
                goto LABEL_33;
              }

              v18 = v10 == 0;
            }

            v20 = v18;
            goto LABEL_32;
          }

          toBool = [v6 toBool];
          toString = [(_IKDOMConditionalOperation *)self literal];
          if (toBool == [toString BOOLValue])
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

        toString = [v6 toNumber];
        v12 = MEMORY[0x277CCABB0];
        literal2 = [(_IKDOMConditionalOperation *)self literal];
        [literal2 doubleValue];
        v13 = [v12 numberWithDouble:?];
        v10 = [toString compare:v13];
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