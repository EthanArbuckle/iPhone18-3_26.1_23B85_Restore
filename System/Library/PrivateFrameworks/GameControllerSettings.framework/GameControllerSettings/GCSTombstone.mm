@interface GCSTombstone
+ (id)archivalClasses;
- (GCSJSONObject)jsonObject;
- (GCSTombstone)initWithCoder:(id)a3;
- (GCSTombstone)initWithIdentifier:(id)a3 creationDate:(id)a4 recordType:(int64_t)a5;
- (GCSTombstone)initWithJSONObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCSTombstone

- (GCSTombstone)initWithIdentifier:(id)a3 creationDate:(id)a4 recordType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = GCSTombstone;
  v11 = [(GCSTombstone *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_creationDate, a4);
    v12->_recordType = a5;
  }

  return v12;
}

+ (id)archivalClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
}

- (GCSTombstone)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = +[GCSTombstone archivalClasses];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"_jsonObject"];

  v7 = [(GCSTombstone *)self initWithJSONObject:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCSTombstone *)self jsonObject];
  [v4 encodeObject:v5 forKey:@"_jsonObject"];
}

- (GCSTombstone)initWithJSONObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v14.receiver = self;
    v14.super_class = GCSTombstone;
    v6 = [(GCSTombstone *)&v14 init];
    if (v6)
    {
      v7 = [v5 _gcs_stringForJSONKey:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v7;

      v9 = [v5 _gcs_dateForJSONKey:@"creationDate"];
      creationDate = v6->_creationDate;
      v6->_creationDate = v9;

      v11 = [v5 _gcs_numberForJSONKey:@"recordType"];
      v6->_recordType = [v11 longValue];
    }

    self = v6;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (GCSJSONObject)jsonObject
{
  v11[3] = *MEMORY[0x277D85DE8];
  identifier = self->_identifier;
  creationDate = self->_creationDate;
  v11[0] = identifier;
  v10[0] = @"identifier";
  v10[1] = @"creationDate";
  v5 = [(NSDate *)creationDate jsonObject];
  v11[1] = v5;
  v10[2] = @"recordType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_recordType];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end