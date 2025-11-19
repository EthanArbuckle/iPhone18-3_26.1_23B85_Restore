@interface PKApplicationMessageKey
+ (id)createWithSource:(int64_t)a3 identifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PKApplicationMessageKey)initWithCoder:(id)a3;
- (void)_initWithSource:(void *)a3 identifier:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationMessageKey

+ (id)createWithSource:(int64_t)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = [[PKApplicationMessageKey alloc] _initWithSource:a3 identifier:v5];

  return v6;
}

- (void)_initWithSource:(void *)a3 identifier:
{
  v5 = a3;
  v6 = v5;
  if (a1 && v5)
  {
    v13.receiver = a1;
    v13.super_class = PKApplicationMessageKey;
    v7 = objc_msgSendSuper2(&v13, sel_init);
    v8 = v7;
    if (v7)
    {
      v7[1] = a2;
      v9 = [v6 copy];
      v10 = v8[2];
      v8[2] = v9;
    }

    a1 = v8;
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PKApplicationMessageKey)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKApplicationMessageKey;
  v5 = [(PKApplicationMessageKey *)&v11 init];
  if (v5 && (v5->_source = [v4 decodeIntegerForKey:@"source"], objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"identifier"), v6 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v6, identifier, !v5->_identifier))
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageKey" code:0 userInfo:0];
    [v4 failWithError:v9];

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  v5 = a3;
  [v5 encodeInteger:source forKey:@"source"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self)
    {
      if (self->_source == v5[1])
      {
        identifier = self->_identifier;
        v8 = v6[2];
        if (identifier && v8)
        {
          LOBYTE(self) = [(NSString *)identifier isEqual:?];
        }

        else
        {
          LOBYTE(self) = identifier == v8;
        }
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end