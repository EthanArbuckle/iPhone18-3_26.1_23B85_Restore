@interface BBBulletinUpdateTransaction
+ (id)transactionWithBulletinUpdate:(id)a3 transactionID:(unint64_t)a4;
- (BBBulletinUpdateTransaction)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithBulletinUpdate:(id)a3 transactionID:(unint64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBBulletinUpdateTransaction

+ (id)transactionWithBulletinUpdate:(id)a3 transactionID:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _initWithBulletinUpdate:v6 transactionID:a4];

  return v7;
}

- (id)_initWithBulletinUpdate:(id)a3 transactionID:(unint64_t)a4
{
  v7 = a3;
  if (!a4)
  {
    [BBBulletinUpdateTransaction _initWithBulletinUpdate:a2 transactionID:self];
  }

  v12.receiver = self;
  v12.super_class = BBBulletinUpdateTransaction;
  v8 = [(BBBulletinUpdateTransaction *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    bulletinUpdate = v8->_bulletinUpdate;
    v8->_bulletinUpdate = v9;

    v8->_transactionID = a4;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
  v4 = [v3 hash];
  v5 = [(BBBulletinUpdateTransaction *)self transactionID];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
      v7 = [(BBBulletinUpdateTransaction *)v5 bulletinUpdate];
      if (BSEqualObjects())
      {
        v8 = [(BBBulletinUpdateTransaction *)self transactionID];
        v9 = v8 == [(BBBulletinUpdateTransaction *)v5 transactionID];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
  v5 = [v3 appendObject:v4 withName:@"Bulletin Update"];

  v6 = [v3 appendInteger:-[BBBulletinUpdateTransaction transactionID](self withName:{"transactionID"), @"Transaction ID"}];
  v7 = [v3 build];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
  [v5 encodeObject:v4 forKey:@"bulletinUpdate"];

  [v5 encodeInteger:-[BBBulletinUpdateTransaction transactionID](self forKey:{"transactionID"), @"transactionID"}];
}

- (BBBulletinUpdateTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletinUpdate"];
  v6 = [v4 decodeIntegerForKey:@"transactionID"];

  v7 = [(BBBulletinUpdateTransaction *)self _initWithBulletinUpdate:v5 transactionID:v6];
  return v7;
}

- (void)_initWithBulletinUpdate:(uint64_t)a1 transactionID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBBulletinUpdateTransaction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"transactionID > 0"}];
}

@end