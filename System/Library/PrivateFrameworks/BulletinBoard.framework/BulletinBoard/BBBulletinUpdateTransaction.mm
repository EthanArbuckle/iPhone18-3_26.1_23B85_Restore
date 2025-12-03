@interface BBBulletinUpdateTransaction
+ (id)transactionWithBulletinUpdate:(id)update transactionID:(unint64_t)d;
- (BBBulletinUpdateTransaction)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithBulletinUpdate:(id)update transactionID:(unint64_t)d;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBBulletinUpdateTransaction

+ (id)transactionWithBulletinUpdate:(id)update transactionID:(unint64_t)d
{
  updateCopy = update;
  v7 = [[self alloc] _initWithBulletinUpdate:updateCopy transactionID:d];

  return v7;
}

- (id)_initWithBulletinUpdate:(id)update transactionID:(unint64_t)d
{
  updateCopy = update;
  if (!d)
  {
    [BBBulletinUpdateTransaction _initWithBulletinUpdate:a2 transactionID:self];
  }

  v12.receiver = self;
  v12.super_class = BBBulletinUpdateTransaction;
  v8 = [(BBBulletinUpdateTransaction *)&v12 init];
  if (v8)
  {
    v9 = [updateCopy copy];
    bulletinUpdate = v8->_bulletinUpdate;
    v8->_bulletinUpdate = v9;

    v8->_transactionID = d;
  }

  return v8;
}

- (unint64_t)hash
{
  bulletinUpdate = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
  v4 = [bulletinUpdate hash];
  transactionID = [(BBBulletinUpdateTransaction *)self transactionID];

  return transactionID ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      bulletinUpdate = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
      bulletinUpdate2 = [(BBBulletinUpdateTransaction *)v5 bulletinUpdate];
      if (BSEqualObjects())
      {
        transactionID = [(BBBulletinUpdateTransaction *)self transactionID];
        v9 = transactionID == [(BBBulletinUpdateTransaction *)v5 transactionID];
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
  bulletinUpdate = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
  v5 = [v3 appendObject:bulletinUpdate withName:@"Bulletin Update"];

  v6 = [v3 appendInteger:-[BBBulletinUpdateTransaction transactionID](self withName:{"transactionID"), @"Transaction ID"}];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bulletinUpdate = [(BBBulletinUpdateTransaction *)self bulletinUpdate];
  [coderCopy encodeObject:bulletinUpdate forKey:@"bulletinUpdate"];

  [coderCopy encodeInteger:-[BBBulletinUpdateTransaction transactionID](self forKey:{"transactionID"), @"transactionID"}];
}

- (BBBulletinUpdateTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletinUpdate"];
  v6 = [coderCopy decodeIntegerForKey:@"transactionID"];

  v7 = [(BBBulletinUpdateTransaction *)self _initWithBulletinUpdate:v5 transactionID:v6];
  return v7;
}

- (void)_initWithBulletinUpdate:(uint64_t)a1 transactionID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBBulletinUpdateTransaction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"transactionID > 0"}];
}

@end