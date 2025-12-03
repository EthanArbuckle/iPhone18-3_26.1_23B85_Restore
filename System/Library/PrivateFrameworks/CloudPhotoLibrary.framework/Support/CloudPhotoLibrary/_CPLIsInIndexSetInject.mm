@interface _CPLIsInIndexSetInject
- (NSString)description;
- (_CPLIsInIndexSetInject)initWithInjection:(id)injection indexSet:(id)set exclude:(BOOL)exclude;
@end

@implementation _CPLIsInIndexSetInject

- (_CPLIsInIndexSetInject)initWithInjection:(id)injection indexSet:(id)set exclude:(BOOL)exclude
{
  excludeCopy = exclude;
  injectionCopy = injection;
  setCopy = set;
  v37.receiver = self;
  v37.super_class = _CPLIsInIndexSetInject;
  v11 = [(_CPLIsInIndexSetInject *)&v37 init];
  if (v11)
  {
    v12 = [setCopy count];
    if (v12)
    {
      v13 = v12;
      objc_storeStrong(&v11->_injection, injection);
      v14 = [injectionCopy sql];
      v15 = [NSMutableData alloc];
      v16 = [v14 length];
      if (v13 == 1)
      {
        v17 = 4;
        if (excludeCopy)
        {
          v17 = 5;
        }

        v18 = [v15 initWithCapacity:&v16[v17]];
        objc_msgSend(v18, "appendBytes:length:", "(", 1);
        [v18 appendData:v14];
        if (excludeCopy)
        {
          v19 = "!=?)";
          v20 = v18;
          v21 = 4;
        }

        else
        {
          v19 = "=?)";
          v20 = v18;
          v21 = 3;
        }

        [v20 appendBytes:v19 length:v21];
        objc_storeStrong(&v11->_sql, v18);
        if (objc_opt_respondsToSelector())
        {
          bindValuesToKeepAlive = [injectionCopy bindValuesToKeepAlive];
          keepAlive = v11->_keepAlive;
          v11->_keepAlive = bindValuesToKeepAlive;
        }

        v11->_onlyIndex = [setCopy firstIndex];
      }

      else
      {
        v26 = 20;
        if (excludeCopy)
        {
          v26 = 21;
        }

        v27 = [v15 initWithCapacity:&v16[v26]];
        v18 = v27;
        if (excludeCopy)
        {
          v28 = "(!is_in_indexset(";
          v29 = 17;
        }

        else
        {
          v28 = "(is_in_indexset(";
          v29 = 16;
        }

        [v27 appendBytes:v28 length:v29];
        [v18 appendData:v14];
        [v18 appendBytes:" length:?])", 4);
        objc_storeStrong(&v11->_sql, v18);
        if (objc_opt_respondsToSelector())
        {
          bindValuesToKeepAlive2 = [injectionCopy bindValuesToKeepAlive];
          v33 = v11->_keepAlive;
          v11->_keepAlive = bindValuesToKeepAlive2;
        }

        if (v11->_keepAlive)
        {
          v38[0] = v11->_keepAlive;
          v38[1] = setCopy;
          v34 = [NSArray arrayWithObjects:v38 count:2];
        }

        else
        {
          v34 = setCopy;
        }

        v35 = v11->_keepAlive;
        v11->_keepAlive = v34;

        objc_storeStrong(&v11->_indexSet, set);
      }
    }

    else
    {
      v22 = [NSData alloc];
      if (excludeCopy)
      {
        v23 = "(1)";
      }

      else
      {
        v23 = "(0)";
      }

      v24 = [v22 initWithBytes:v23 length:3];
      sql = v11->_sql;
      v11->_sql = v24;

      v11->_onlyIndex = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v11;
}

- (NSString)description
{
  v3 = [[NSString alloc] initWithData:self->_sql encoding:4];
  indexSet = self->_indexSet;
  v5 = [NSString alloc];
  if (indexSet)
  {
    v6 = [v5 initWithFormat:@"[query: %@, %@]", v3, self->_indexSet];
  }

  else
  {
    v6 = [v5 initWithFormat:@"[query: %@]", v3, v9];
  }

  v7 = v6;

  return v7;
}

@end