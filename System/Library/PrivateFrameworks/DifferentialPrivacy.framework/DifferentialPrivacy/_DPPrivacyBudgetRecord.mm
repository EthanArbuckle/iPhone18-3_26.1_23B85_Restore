@interface _DPPrivacyBudgetRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPrivacyBudgetRecord:(id)record;
- (_DPPrivacyBudgetRecord)init;
- (_DPPrivacyBudgetRecord)initWithCoder:(id)coder;
- (_DPPrivacyBudgetRecord)initWithKey:(id)key creationDate:(double)date lastUpdate:(double)update balance:(int64_t)balance cohortAggregateBalance:(double)aggregateBalance objectId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPPrivacyBudgetRecord

- (_DPPrivacyBudgetRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPPrivacyBudgetRecord *)self initWithKey:@"com.apple.DifferentialPrivacy.default" creationDate:0 lastUpdate:0 balance:v5 cohortAggregateBalance:v5 objectId:0.0];
}

- (_DPPrivacyBudgetRecord)initWithKey:(id)key creationDate:(double)date lastUpdate:(double)update balance:(int64_t)balance cohortAggregateBalance:(double)aggregateBalance objectId:(id)id
{
  keyCopy = key;
  idCopy = id;
  v20.receiver = self;
  v20.super_class = _DPPrivacyBudgetRecord;
  v17 = [(_DPPrivacyBudgetRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_key, key);
    v18->_creationDate = date;
    v18->_lastUpdate = update;
    v18->_balance = balance;
    v18->_cohortAggregateBalance = aggregateBalance;
    v18->_submitted = 0;
    objc_storeStrong(&v18->_objectId, id);
  }

  return v18;
}

- (_DPPrivacyBudgetRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdate"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
  longLongValue = [v12 longLongValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cohortAggregateBalance"];

  [v14 doubleValue];
  v16 = v15;

  v17 = [(_DPPrivacyBudgetRecord *)self initWithKey:v5 creationDate:longLongValue lastUpdate:0 balance:v8 cohortAggregateBalance:v11 objectId:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [coderCopy encodeObject:v4 forKey:@"creationDate"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUpdate];
  [coderCopy encodeObject:v5 forKey:@"lastUpdate"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_balance];
  [coderCopy encodeObject:v6 forKey:@"balance"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_cohortAggregateBalance];
  [coderCopy encodeObject:v7 forKey:@"cohortAggregateBalance"];

  objectId = self->_objectId;
  if (objectId)
  {
    [coderCopy encodeObject:objectId forKey:@"objectId"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPPrivacyBudgetRecord *)self key];
  [(_DPPrivacyBudgetRecord *)self creationDate];
  v7 = v6;
  [(_DPPrivacyBudgetRecord *)self lastUpdate];
  v9 = v8;
  balance = [(_DPPrivacyBudgetRecord *)self balance];
  [(_DPPrivacyBudgetRecord *)self cohortAggregateBalance];
  v12 = v11;
  objectId = [(_DPPrivacyBudgetRecord *)self objectId];
  v14 = [v4 initWithKey:v5 creationDate:balance lastUpdate:objectId balance:v7 cohortAggregateBalance:v9 objectId:v12];

  return v14;
}

- (BOOL)isEqualToPrivacyBudgetRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v5 = [(_DPPrivacyBudgetRecord *)self key];
    v6 = [recordCopy key];
    v7 = [v5 isEqualToString:v6];

    [(_DPPrivacyBudgetRecord *)self creationDate];
    v9 = v8;
    [recordCopy creationDate];
    v11 = areEqualTimeIntervals(v9, v10);
    [(_DPPrivacyBudgetRecord *)self lastUpdate];
    v13 = v12;
    [recordCopy lastUpdate];
    v15 = areEqualTimeIntervals(v13, v14);
    balance = [(_DPPrivacyBudgetRecord *)self balance];
    balance2 = [recordCopy balance];
    [(_DPPrivacyBudgetRecord *)self cohortAggregateBalance];
    v19 = v18;
    [recordCopy cohortAggregateBalance];
    v21 = vabdd_f64(v19, v20);
    objectId = [(_DPPrivacyBudgetRecord *)self objectId];

    if (objectId)
    {
      objectId2 = [(_DPPrivacyBudgetRecord *)self objectId];
      objectId3 = [recordCopy objectId];
      v25 = [objectId2 isEqual:objectId3];
    }

    else
    {
      objectId4 = [recordCopy objectId];

      v25 = objectId4 == 0;
    }

    v28 = v7 & v11 & v15;
    if (balance != balance2)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPPrivacyBudgetRecord *)self isEqualToPrivacyBudgetRecord:v5];
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
  objectId = [(_DPPrivacyBudgetRecord *)self objectId];
  v10 = [objectId hash];

  return v8 ^ v10;
}

+ (id)createRecordFromManagedObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_new();
  v5 = [v4 copyFromManagedObject:objectCopy];

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

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = objectCopy;
    v7 = [(_DPPrivacyBudgetRecord *)self key];
    [v6 setKey:v7];

    [(_DPPrivacyBudgetRecord *)self creationDate];
    [v6 setCreationDate:?];
    [(_DPPrivacyBudgetRecord *)self lastUpdate];
    [v6 setLastUpdate:?];
    [v6 setBalance:{-[_DPPrivacyBudgetRecord balance](self, "balance")}];
    [(_DPPrivacyBudgetRecord *)self cohortAggregateBalance];
    [v6 setCohortAggregateBalance:?];
    objectId = [(_DPPrivacyBudgetRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPPrivacyBudgetRecord *)self setObjectId:objectID2];
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)copyFromManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = objectCopy;
    v7 = [v6 key];
    [(_DPPrivacyBudgetRecord *)self setKey:v7];

    [v6 creationDate];
    [(_DPPrivacyBudgetRecord *)self setCreationDate:?];
    [v6 lastUpdate];
    [(_DPPrivacyBudgetRecord *)self setLastUpdate:?];
    -[_DPPrivacyBudgetRecord setBalance:](self, "setBalance:", [v6 balance]);
    [v6 cohortAggregateBalance];
    [(_DPPrivacyBudgetRecord *)self setCohortAggregateBalance:?];
    objectID = [v6 objectID];

    [(_DPPrivacyBudgetRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end