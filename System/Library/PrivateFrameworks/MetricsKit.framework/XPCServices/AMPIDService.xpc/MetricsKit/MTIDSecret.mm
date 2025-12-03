@interface MTIDSecret
- (BOOL)isEqual:(id)equal;
- (MTIDSecret)init;
- (MTIDSecret)initWithCoder:(id)coder;
- (MTIDSecret)initWithValue:(id)value effectiveDate:(id)date expirationDate:(id)expirationDate isSynchronize:(BOOL)synchronize;
- (id)debugInfo;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTIDSecret

- (MTIDSecret)init
{
  [NSException raise:@"NotImplemented" format:@"Use initWithScheme:date: instead"];

  return 0;
}

- (MTIDSecret)initWithValue:(id)value effectiveDate:(id)date expirationDate:(id)expirationDate isSynchronize:(BOOL)synchronize
{
  valueCopy = value;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  v17.receiver = self;
  v17.super_class = MTIDSecret;
  v14 = [(MTIDSecret *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_value, value);
    objc_storeStrong(&v15->_effectiveDate, date);
    objc_storeStrong(&v15->_expirationDate, expirationDate);
    v15->_isSynchronized = synchronize;
  }

  return v15;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  value = [(MTIDSecret *)self value];
  effectiveDate = [(MTIDSecret *)self effectiveDate];
  expirationDate = [(MTIDSecret *)self expirationDate];
  v8 = [NSString stringWithFormat:@"<%@: %p, value: %@, effective: %@, expiration: %@ >", v4, self, value, effectiveDate, expirationDate];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    value = [(MTIDSecret *)self value];
    value2 = [v5 value];
    if ([value isEqual:value2])
    {
      effectiveDate = [(MTIDSecret *)self effectiveDate];
      [effectiveDate timeIntervalSince1970];
      v10 = v9;
      effectiveDate2 = [v5 effectiveDate];
      [effectiveDate2 timeIntervalSince1970];
      if (v10 == v12)
      {
        expirationDate = [(MTIDSecret *)self expirationDate];
        [expirationDate timeIntervalSince1970];
        v15 = v14;
        expirationDate2 = [v5 expirationDate];
        [expirationDate2 timeIntervalSince1970];
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
  value = [(MTIDSecret *)self value];
  [v3 setObject:value forKeyedSubscript:@"value"];

  effectiveDate = [(MTIDSecret *)self effectiveDate];
  v6 = [effectiveDate description];
  [v3 setObject:v6 forKeyedSubscript:@"effectiveDate"];

  expirationDate = [(MTIDSecret *)self expirationDate];
  v8 = [expirationDate description];
  [v3 setObject:v8 forKeyedSubscript:@"expirationDate"];

  v9 = [NSNumber numberWithBool:[(MTIDSecret *)self isSynchronized]];
  [v3 setObject:v9 forKeyedSubscript:@"isSynchronized"];

  syncStatusCode = [(MTIDSecret *)self syncStatusCode];
  [v3 setObject:syncStatusCode forKeyedSubscript:@"syncStatusCode"];

  v11 = [v3 copy];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(MTIDSecret *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  effectiveDate = [(MTIDSecret *)self effectiveDate];
  [coderCopy encodeObject:effectiveDate forKey:@"effectiveDate"];

  expirationDate = [(MTIDSecret *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  [coderCopy encodeBool:-[MTIDSecret isSynchronized](self forKey:{"isSynchronized"), @"isSynchronized"}];
  syncStatusCode = [(MTIDSecret *)self syncStatusCode];
  [coderCopy encodeObject:syncStatusCode forKey:@"syncStatusCode"];
}

- (MTIDSecret)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MTIDSecret;
  v5 = [(MTIDSecret *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    [(MTIDSecret *)v5 setValue:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveDate"];
    [(MTIDSecret *)v5 setEffectiveDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    [(MTIDSecret *)v5 setExpirationDate:v8];

    -[MTIDSecret setIsSynchronized:](v5, "setIsSynchronized:", [coderCopy decodeBoolForKey:@"isSynchronized"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncStatusCode"];
    [(MTIDSecret *)v5 setSyncStatusCode:v9];
  }

  return v5;
}

@end