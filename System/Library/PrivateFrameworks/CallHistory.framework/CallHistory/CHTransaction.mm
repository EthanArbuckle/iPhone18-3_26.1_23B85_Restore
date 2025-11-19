@interface CHTransaction
+ (id)toString:(unint64_t)a3;
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransaction:(id)a3;
- (CHTransaction)init;
- (CHTransaction)initWithCoder:(id)a3;
- (CHTransaction)initWithString:(id)a3 andRecord:(id)a4;
- (CHTransaction)initWithType:(unint64_t)a3 andRecord:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHTransaction

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

- (CHTransaction)init
{
  [(CHTransaction *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CHTransaction)initWithType:(unint64_t)a3 andRecord:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CHTransaction;
  v8 = [(CHTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_transactionType = a3;
    objc_storeStrong(&v8->_record, a4);
  }

  return v9;
}

- (CHTransaction)initWithString:(id)a3 andRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"Insert"])
  {
    v8 = 0;
LABEL_9:
    self = [(CHTransaction *)self initWithType:v8 andRecord:v7];
    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"Update"])
  {
    v8 = 1;
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"Delete"])
  {
    v8 = 2;
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"BatchDeleteAll"])
  {
    v8 = 3;
    goto LABEL_9;
  }

LABEL_10:

  return self;
}

+ (id)toString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E81DCA70[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CHTransaction transactionType](self forKey:{"transactionType"), @"type"}];
  v5 = [(CHTransaction *)self record];
  [v4 encodeObject:v5 forKey:@"record"];
}

- (CHTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHTransaction;
  v5 = [(CHTransaction *)&v9 init];
  if (v5)
  {
    v5->_transactionType = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"record"];
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
  v3 = [(CHTransaction *)self transactionType];
  v4 = [(CHTransaction *)self record];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHTransaction *)self isEqualToTransaction:v4];
  }

  return v5;
}

- (BOOL)isEqualToTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CHTransaction *)self transactionType];
  if (v5 == [v4 transactionType])
  {
    v6 = [(CHTransaction *)self record];
    v7 = [v4 record];
    v8 = (v6 | v7) == 0;
    if (v7)
    {
      v8 = [v6 isEqual:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end