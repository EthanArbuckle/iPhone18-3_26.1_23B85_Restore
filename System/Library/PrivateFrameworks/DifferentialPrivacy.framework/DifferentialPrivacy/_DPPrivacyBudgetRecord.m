@interface _DPPrivacyBudgetRecord
+ (id)createRecordFromManagedObject:(id)a3;
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPrivacyBudgetRecord:(id)a3;
- (_DPPrivacyBudgetRecord)init;
- (_DPPrivacyBudgetRecord)initWithCoder:(id)a3;
- (_DPPrivacyBudgetRecord)initWithKey:(id)a3 creationDate:(double)a4 lastUpdate:(double)a5 balance:(int64_t)a6 cohortAggregateBalance:(double)a7 objectId:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPPrivacyBudgetRecord

- (_DPPrivacyBudgetRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPPrivacyBudgetRecord *)self initWithKey:@"com.apple.DifferentialPrivacy.default" creationDate:0 lastUpdate:0 balance:v5 cohortAggregateBalance:v5 objectId:0.0];
}

- (_DPPrivacyBudgetRecord)initWithKey:(id)a3 creationDate:(double)a4 lastUpdate:(double)a5 balance:(int64_t)a6 cohortAggregateBalance:(double)a7 objectId:(id)a8
{
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = _DPPrivacyBudgetRecord;
  v17 = [(_DPPrivacyBudgetRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_key, a3);
    v18->_creationDate = a4;
    v18->_lastUpdate = a5;
    v18->_balance = a6;
    v18->_cohortAggregateBalance = a7;
    v18->_submitted = 0;
    objc_storeStrong(&v18->_objectId, a8);
  }

  return v18;
}

- (_DPPrivacyBudgetRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdate"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
  v13 = [v12 longLongValue];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cohortAggregateBalance"];

  [v14 doubleValue];
  v16 = v15;

  v17 = [(_DPPrivacyBudgetRecord *)self initWithKey:v5 creationDate:v13 lastUpdate:0 balance:v8 cohortAggregateBalance:v11 objectId:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeObject:self->_key forKey:@"key"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v9 encodeObject:v4 forKey:@"creationDate"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUpdate];
  [v9 encodeObject:v5 forKey:@"lastUpdate"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_balance];
  [v9 encodeObject:v6 forKey:@"balance"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_cohortAggregateBalance];
  [v9 encodeObject:v7 forKey:@"cohortAggregateBalance"];

  objectId = self->_objectId;
  if (objectId)
  {
    [v9 encodeObject:objectId forKey:@"objectId"];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  key = self->_key;
  v7 = [v3 stringWithFormat:@"%@: { key=%@  balance=%lld ; cohortAggregateBalance=%lf ;creationDate=%.16g ; lastUpdate=%.16g ; ", v5, key, self->_balance, *&self->_cohortAggregateBalance, *&self->_creationDate, *&self->_lastUpdate];;

  if (self->_objectId)
  {
    [v7 appendFormat:@"objectId=%@ }", self->_objectId];
  }

  else
  {
    [v7 appendString:@"objectId=(nil) }"];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPPrivacyBudgetRecord *)self key];
  [(_DPPrivacyBudgetRecord *)self creationDate];
  v7 = v6;
  [(_DPPrivacyBudgetRecord *)self lastUpdate];
  v9 = v8;
  v10 = [(_DPPrivacyBudgetRecord *)self balance];
  [(_DPPrivacyBudgetRecord *)self cohortAggregateBalance];
  v12 = v11;
  v13 = [(_DPPrivacyBudgetRecord *)self objectId];
  v14 = [v4 initWithKey:v5 creationDate:v10 lastUpdate:v13 balance:v7 cohortAggregateBalance:v9 objectId:v12];

  return v14;
}

- (BOOL)isEqualToPrivacyBudgetRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_DPPrivacyBudgetRecord *)self key];
    v6 = [v4 key];
    v7 = [v5 isEqualToString:v6];

    [(_DPPrivacyBudgetRecord *)self creationDate];
    v9 = v8;
    [v4 creationDate];
    v11 = areEqualTimeIntervals(v9, v10);
    [(_DPPrivacyBudgetRecord *)self lastUpdate];
    v13 = v12;
    [v4 lastUpdate];
    v15 = areEqualTimeIntervals(v13, v14);
    v16 = [(_DPPrivacyBudgetRecord *)self balance];
    v17 = [v4 balance];
    [(_DPPrivacyBudgetRecord *)self cohortAggregateBalance];
    v19 = v18;
    [v4 cohortAggregateBalance];
    v21 = vabdd_f64(v19, v20);
    v22 = [(_DPPrivacyBudgetRecord *)self objectId];

    if (v22)
    {
      v23 = [(_DPPrivacyBudgetRecord *)self objectId];
      v24 = [v4 objectId];
      v25 = [v23 isEqual:v24];
    }

    else
    {
      v27 = [v4 objectId];

      v25 = v27 == 0;
    }

    v28 = v7 & v11 & v15;
    if (v16 != v17)
    {
      v28 = 0;
    }

    if (v21 >= 2.22044605e-16)
    {
      v28 = 0;
    }

    v26 = v28 & v25;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPPrivacyBudgetRecord *)self isEqualToPrivacyBudgetRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPPrivacyBudgetRecord *)self key];
  v4 = [v3 hash];
  [(_DPPrivacyBudgetRecord *)self creationDate];
  v6 = v4 ^ v5;
  [(_DPPrivacyBudgetRecord *)self lastUpdate];
  v8 = v6 ^ v7 ^ [(_DPPrivacyBudgetRecord *)self balance];
  v9 = [(_DPPrivacyBudgetRecord *)self objectId];
  v10 = [v9 hash];

  return v8 ^ v10;
}

+ (id)createRecordFromManagedObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 copyFromManagedObject:v3];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)entityName
{
  v2 = objc_opt_class();

  return [v2 entityName];
}

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [(_DPPrivacyBudgetRecord *)self key];
    [v6 setKey:v7];

    [(_DPPrivacyBudgetRecord *)self creationDate];
    [v6 setCreationDate:?];
    [(_DPPrivacyBudgetRecord *)self lastUpdate];
    [v6 setLastUpdate:?];
    [v6 setBalance:{-[_DPPrivacyBudgetRecord balance](self, "balance")}];
    [(_DPPrivacyBudgetRecord *)self cohortAggregateBalance];
    [v6 setCohortAggregateBalance:?];
    v8 = [(_DPPrivacyBudgetRecord *)self objectId];
    v9 = [v6 objectID];

    if (v8 != v9)
    {
      v10 = [v6 objectID];
      [(_DPPrivacyBudgetRecord *)self setObjectId:v10];
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)copyFromManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [v6 key];
    [(_DPPrivacyBudgetRecord *)self setKey:v7];

    [v6 creationDate];
    [(_DPPrivacyBudgetRecord *)self setCreationDate:?];
    [v6 lastUpdate];
    [(_DPPrivacyBudgetRecord *)self setLastUpdate:?];
    -[_DPPrivacyBudgetRecord setBalance:](self, "setBalance:", [v6 balance]);
    [v6 cohortAggregateBalance];
    [(_DPPrivacyBudgetRecord *)self setCohortAggregateBalance:?];
    v8 = [v6 objectID];

    [(_DPPrivacyBudgetRecord *)self setObjectId:v8];
  }

  return isKindOfClass & 1;
}

@end