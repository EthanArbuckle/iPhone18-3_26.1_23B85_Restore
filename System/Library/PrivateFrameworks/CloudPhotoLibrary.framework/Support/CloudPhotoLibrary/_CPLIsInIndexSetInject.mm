@interface _CPLIsInIndexSetInject
- (NSString)description;
- (_CPLIsInIndexSetInject)initWithInjection:(id)a3 indexSet:(id)a4 exclude:(BOOL)a5;
@end

@implementation _CPLIsInIndexSetInject

- (_CPLIsInIndexSetInject)initWithInjection:(id)a3 indexSet:(id)a4 exclude:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v37.receiver = self;
  v37.super_class = _CPLIsInIndexSetInject;
  v11 = [(_CPLIsInIndexSetInject *)&v37 init];
  if (v11)
  {
    v12 = [v10 count];
    if (v12)
    {
      v13 = v12;
      objc_storeStrong(&v11->_injection, a3);
      v14 = [v9 sql];
      v15 = [NSMutableData alloc];
      v16 = [v14 length];
      if (v13 == 1)
      {
        v17 = 4;
        if (v5)
        {
          v17 = 5;
        }

        v18 = [v15 initWithCapacity:&v16[v17]];
        objc_msgSend(v18, "appendBytes:length:", "(", 1);
        [v18 appendData:v14];
        if (v5)
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
          v30 = [v9 bindValuesToKeepAlive];
          keepAlive = v11->_keepAlive;
          v11->_keepAlive = v30;
        }

        v11->_onlyIndex = [v10 firstIndex];
      }

      else
      {
        v26 = 20;
        if (v5)
        {
          v26 = 21;
        }

        v27 = [v15 initWithCapacity:&v16[v26]];
        v18 = v27;
        if (v5)
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
          v32 = [v9 bindValuesToKeepAlive];
          v33 = v11->_keepAlive;
          v11->_keepAlive = v32;
        }

        if (v11->_keepAlive)
        {
          v38[0] = v11->_keepAlive;
          v38[1] = v10;
          v34 = [NSArray arrayWithObjects:v38 count:2];
        }

        else
        {
          v34 = v10;
        }

        v35 = v11->_keepAlive;
        v11->_keepAlive = v34;

        objc_storeStrong(&v11->_indexSet, a4);
      }
    }

    else
    {
      v22 = [NSData alloc];
      if (v5)
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