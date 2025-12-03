@interface GCSTombstone
+ (id)archivalClasses;
- (GCSJSONObject)jsonObject;
- (GCSTombstone)initWithCoder:(id)coder;
- (GCSTombstone)initWithIdentifier:(id)identifier creationDate:(id)date recordType:(int64_t)type;
- (GCSTombstone)initWithJSONObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSTombstone

- (GCSTombstone)initWithIdentifier:(id)identifier creationDate:(id)date recordType:(int64_t)type
{
  identifierCopy = identifier;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = GCSTombstone;
  v11 = [(GCSTombstone *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_creationDate, date);
    v12->_recordType = type;
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

- (GCSTombstone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = +[GCSTombstone archivalClasses];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"_jsonObject"];

  v7 = [(GCSTombstone *)self initWithJSONObject:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  jsonObject = [(GCSTombstone *)self jsonObject];
  [coderCopy encodeObject:jsonObject forKey:@"_jsonObject"];
}

- (GCSTombstone)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GCSJSONObject)jsonObject
{
  v11[3] = *MEMORY[0x277D85DE8];
  identifier = self->_identifier;
  creationDate = self->_creationDate;
  v11[0] = identifier;
  v10[0] = @"identifier";
  v10[1] = @"creationDate";
  jsonObject = [(NSDate *)creationDate jsonObject];
  v11[1] = jsonObject;
  v10[2] = @"recordType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_recordType];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end