@interface _Version
- (_Version)initWithString:(id)string;
- (int64_t)compareTo:(id)to;
@end

@implementation _Version

- (_Version)initWithString:(id)string
{
  stringCopy = string;
  v22.receiver = self;
  v22.super_class = _Version;
  v6 = [(_Version *)&v22 init];
  if (v6)
  {
    v7 = [stringCopy componentsSeparatedByString:@"."];
    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v18 + 1) + 8 * v13) integerValue]);
          [(NSArray *)v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    components = v6->_components;
    v6->_components = v8;
    v16 = v8;

    objc_storeStrong(&v6->_versionString, string);
  }

  return v6;
}

- (int64_t)compareTo:(id)to
{
  toCopy = to;
  components = [(_Version *)self components];
  v6 = [components count];

  components2 = [toCopy components];
  v8 = [components2 count];

  if (v8 > v6)
  {
    components2 = [toCopy components];
    v6 = [components2 count];
  }

  if (v6 < 1)
  {
LABEL_19:
    components2 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      components3 = [(_Version *)self components];
      v11 = [components3 count];

      if (v11 <= v9)
      {
        integerValue = 0;
      }

      else
      {
        components4 = [(_Version *)self components];
        v13 = [components4 objectAtIndexedSubscript:v9];
        integerValue = [v13 integerValue];
      }

      components5 = [toCopy components];
      v16 = [components5 count];

      if (v16 <= v9)
      {
        integerValue2 = 0;
      }

      else
      {
        components6 = [toCopy components];
        v18 = [components6 objectAtIndexedSubscript:v9];
        integerValue2 = [v18 integerValue];
      }

      v20 = integerValue < integerValue2 ? -1 : components2;
      components2 = integerValue > integerValue2 ? 1 : v20;
      if (integerValue != integerValue2)
      {
        break;
      }

      if (v6 == ++v9)
      {
        goto LABEL_19;
      }
    }
  }

  return components2;
}

@end