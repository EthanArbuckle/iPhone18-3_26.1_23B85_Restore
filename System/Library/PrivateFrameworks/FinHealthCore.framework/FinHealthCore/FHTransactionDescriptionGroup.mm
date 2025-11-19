@interface FHTransactionDescriptionGroup
- (FHTransactionDescriptionGroup)initWithCoder:(id)a3;
- (FHTransactionDescriptionGroup)initWithExemplarDescription:(id)a3 groupIdentifier:(id)a4 transactionIds:(id)a5 creditDebitType:(unint64_t)a6 category:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHTransactionDescriptionGroup

- (FHTransactionDescriptionGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FHTransactionDescriptionGroup;
  v5 = [(FHTransactionGroup *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exemplarDescription"];
    exemplarDescription = v5->_exemplarDescription;
    v5->_exemplarDescription = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FHTransactionDescriptionGroup;
  v4 = a3;
  [(FHTransactionGroup *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_exemplarDescription forKey:{@"exemplarDescription", v5.receiver, v5.super_class}];
}

- (FHTransactionDescriptionGroup)initWithExemplarDescription:(id)a3 groupIdentifier:(id)a4 transactionIds:(id)a5 creditDebitType:(unint64_t)a6 category:(id)a7
{
  v12 = a3;
  v16.receiver = self;
  v16.super_class = FHTransactionDescriptionGroup;
  v13 = [(FHTransactionGroup *)&v16 initWithGroupIdentifier:a4 transactionIds:a5 groupingMethod:3 creditDebitType:a6 category:a7];
  v14 = v13;
  if (v13)
  {
    [(FHTransactionDescriptionGroup *)v13 setExemplarDescription:v12];
  }

  return v14;
}

@end