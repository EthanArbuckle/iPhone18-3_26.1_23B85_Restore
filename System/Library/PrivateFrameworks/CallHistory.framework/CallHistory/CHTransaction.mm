@interface CHTransaction
+ (id)toString:(unint64_t)string;
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransaction:(id)transaction;
- (CHTransaction)init;
- (CHTransaction)initWithCoder:(id)coder;
- (CHTransaction)initWithString:(id)string andRecord:(id)record;
- (CHTransaction)initWithType:(unint64_t)type andRecord:(id)record;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHTransaction

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

- (CHTransaction)init
{
  [(CHTransaction *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CHTransaction)initWithType:(unint64_t)type andRecord:(id)record
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = CHTransaction;
  v8 = [(CHTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_transactionType = type;
    objc_storeStrong(&v8->_record, record);
  }

  return v9;
}

- (CHTransaction)initWithString:(id)string andRecord:(id)record
{
  stringCopy = string;
  recordCopy = record;
  if ([stringCopy isEqualToString:@"Insert"])
  {
    v8 = 0;
LABEL_9:
    self = [(CHTransaction *)self initWithType:v8 andRecord:recordCopy];
    goto LABEL_10;
  }

  if ([stringCopy isEqualToString:@"Update"])
  {
    v8 = 1;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"Delete"])
  {
    v8 = 2;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"BatchDeleteAll"])
  {
    v8 = 3;
    goto LABEL_9;
  }

LABEL_10:

  return self;
}

+ (id)toString:(unint64_t)string
{
  if (string > 3)
  {
    return 0;
  }

  else
  {
    return off_1E81DCA70[string];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CHTransaction transactionType](self forKey:{"transactionType"), @"type"}];
  record = [(CHTransaction *)self record];
  [coderCopy encodeObject:record forKey:@"record"];
}

- (CHTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CHTransaction;
  v5 = [(CHTransaction *)&v9 init];
  if (v5)
  {
    v5->_transactionType = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    record = v5->_record;
    v5->_record = v6;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_transactionType);
  v5 = [MEMORY[0x1E696AEC0] ch_stringWithCHTransactionType:{-[CHTransaction transactionType](self, "transactionType")}];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  transactionType = [(CHTransaction *)self transactionType];
  record = [(CHTransaction *)self record];
  v5 = [record hash];

  return v5 ^ transactionType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHTransaction *)self isEqualToTransaction:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionType = [(CHTransaction *)self transactionType];
  if (transactionType == [transactionCopy transactionType])
  {
    record = [(CHTransaction *)self record];
    record2 = [transactionCopy record];
    v8 = (record | record2) == 0;
    if (record2)
    {
      v8 = [record isEqual:record2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end