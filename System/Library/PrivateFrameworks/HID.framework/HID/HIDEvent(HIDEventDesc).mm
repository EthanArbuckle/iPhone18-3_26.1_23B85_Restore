@interface HIDEvent(HIDEventDesc)
- (uint64_t)getEventFields;
- (void)enumerateFieldsWithBlock:()HIDEventDesc;
@end

@implementation HIDEvent(HIDEventDesc)

- (uint64_t)getEventFields
{
  for (i = 0; i != 41; ++i)
  {
    v3 = &hidEventFieldDescTable + 24 * i;
    v4 = *v3;
    if (v4 == [self type])
    {
      v5 = *(v3 + 2);
      if (!v5)
      {
        result = *(v3 + 1);
        goto LABEL_15;
      }

      if (*(v5 + 8))
      {
        v6 = 0;
        do
        {
          v7 = (v5 + 16 * v6);
          v8 = [self integerValueForField:*v7];
          for (j = (*(v7 + 1) + 8); ; j += 2)
          {
            result = *j;
            if (!*j)
            {
              break;
            }

            v11 = *(j - 2);
            if (v8 == v11)
            {
              return result;
            }
          }

          ++v6;
        }

        while (*(v5 + 16 * v6 + 8));
        goto LABEL_15;
      }
    }

    result = 0;
LABEL_15:
    if (result)
    {
      return result;
    }
  }

  return 0;
}

- (void)enumerateFieldsWithBlock:()HIDEventDesc
{
  v6 = a3;
  if (v6)
  {
    getEventFields = [self getEventFields];
    if (getEventFields)
    {
      for (i = getEventFields; *i || (*(i + 4) & 0x3F) != 0 || *(i + 8); i += 16)
      {
        v6[2](v6, i);
      }
    }
  }
}

@end