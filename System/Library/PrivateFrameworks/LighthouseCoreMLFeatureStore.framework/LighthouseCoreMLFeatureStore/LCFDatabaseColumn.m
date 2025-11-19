@interface LCFDatabaseColumn
- (id)init:(id)a3 typeDb:(id)a4;
@end

@implementation LCFDatabaseColumn

- (id)init:(id)a3 typeDb:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LCFDatabaseColumn;
  v9 = [(LCFDatabaseColumn *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_typeDb, a4);
    if ([(NSString *)v10->_typeDb isEqualToString:@"TEXT"])
    {
      v11 = 1;
    }

    else if ([(NSString *)v10->_typeDb isEqualToString:@"INTEGER"])
    {
      v11 = 2;
    }

    else if ([(NSString *)v10->_typeDb isEqualToString:@"FLOAT"])
    {
      v11 = 3;
    }

    else
    {
      if (![(NSString *)v10->_typeDb isEqualToString:@"BOOL"])
      {
        v10->_type = 0;
        goto LABEL_11;
      }

      v11 = 4;
    }

    v10->_type = v11;
  }

LABEL_11:

  return v10;
}

@end