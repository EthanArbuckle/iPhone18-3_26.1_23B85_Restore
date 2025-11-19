@interface MTIDSecret
- (BOOL)isEqual:(id)a3;
- (MTIDSecret)init;
- (MTIDSecret)initWithCoder:(id)a3;
- (MTIDSecret)initWithValue:(id)a3 effectiveDate:(id)a4 expirationDate:(id)a5 isSynchronize:(BOOL)a6;
- (id)debugInfo;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTIDSecret

- (MTIDSecret)init
{
  [NSException raise:@"NotImplemented" format:@"Use initWithScheme:date: instead"];

  return 0;
}

- (MTIDSecret)initWithValue:(id)a3 effectiveDate:(id)a4 expirationDate:(id)a5 isSynchronize:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MTIDSecret;
  v14 = [(MTIDSecret *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_value, a3);
    objc_storeStrong(&v15->_effectiveDate, a4);
    objc_storeStrong(&v15->_expirationDate, a5);
    v15->_isSynchronized = a6;
  }

  return v15;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MTIDSecret *)self value];
  v6 = [(MTIDSecret *)self effectiveDate];
  v7 = [(MTIDSecret *)self expirationDate];
  v8 = [NSString stringWithFormat:@"<%@: %p, value: %@, effective: %@, expiration: %@ >", v4, self, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MTIDSecret *)self value];
    v7 = [v5 value];
    if ([v6 isEqual:v7])
    {
      v8 = [(MTIDSecret *)self effectiveDate];
      [v8 timeIntervalSince1970];
      v10 = v9;
      v11 = [v5 effectiveDate];
      [v11 timeIntervalSince1970];
      if (v10 == v12)
      {
        v13 = [(MTIDSecret *)self expirationDate];
        [v13 timeIntervalSince1970];
        v15 = v14;
        v16 = [v5 expirationDate];
        [v16 timeIntervalSince1970];
        v18 = v15 == v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)debugInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MTIDSecret *)self value];
  [v3 setObject:v4 forKeyedSubscript:@"value"];

  v5 = [(MTIDSecret *)self effectiveDate];
  v6 = [v5 description];
  [v3 setObject:v6 forKeyedSubscript:@"effectiveDate"];

  v7 = [(MTIDSecret *)self expirationDate];
  v8 = [v7 description];
  [v3 setObject:v8 forKeyedSubscript:@"expirationDate"];

  v9 = [NSNumber numberWithBool:[(MTIDSecret *)self isSynchronized]];
  [v3 setObject:v9 forKeyedSubscript:@"isSynchronized"];

  v10 = [(MTIDSecret *)self syncStatusCode];
  [v3 setObject:v10 forKeyedSubscript:@"syncStatusCode"];

  v11 = [v3 copy];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTIDSecret *)self value];
  [v4 encodeObject:v5 forKey:@"value"];

  v6 = [(MTIDSecret *)self effectiveDate];
  [v4 encodeObject:v6 forKey:@"effectiveDate"];

  v7 = [(MTIDSecret *)self expirationDate];
  [v4 encodeObject:v7 forKey:@"expirationDate"];

  [v4 encodeBool:-[MTIDSecret isSynchronized](self forKey:{"isSynchronized"), @"isSynchronized"}];
  v8 = [(MTIDSecret *)self syncStatusCode];
  [v4 encodeObject:v8 forKey:@"syncStatusCode"];
}

- (MTIDSecret)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MTIDSecret;
  v5 = [(MTIDSecret *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    [(MTIDSecret *)v5 setValue:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveDate"];
    [(MTIDSecret *)v5 setEffectiveDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    [(MTIDSecret *)v5 setExpirationDate:v8];

    -[MTIDSecret setIsSynchronized:](v5, "setIsSynchronized:", [v4 decodeBoolForKey:@"isSynchronized"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syncStatusCode"];
    [(MTIDSecret *)v5 setSyncStatusCode:v9];
  }

  return v5;
}

@end