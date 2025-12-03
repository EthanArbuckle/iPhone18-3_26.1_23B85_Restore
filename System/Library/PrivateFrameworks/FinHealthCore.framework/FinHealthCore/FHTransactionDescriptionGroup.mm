@interface FHTransactionDescriptionGroup
- (FHTransactionDescriptionGroup)initWithCoder:(id)coder;
- (FHTransactionDescriptionGroup)initWithExemplarDescription:(id)description groupIdentifier:(id)identifier transactionIds:(id)ids creditDebitType:(unint64_t)type category:(id)category;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionDescriptionGroup

- (FHTransactionDescriptionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FHTransactionDescriptionGroup;
  v5 = [(FHTransactionGroup *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exemplarDescription"];
    exemplarDescription = v5->_exemplarDescription;
    v5->_exemplarDescription = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHTransactionDescriptionGroup;
  coderCopy = coder;
  [(FHTransactionGroup *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_exemplarDescription forKey:{@"exemplarDescription", v5.receiver, v5.super_class}];
}

- (FHTransactionDescriptionGroup)initWithExemplarDescription:(id)description groupIdentifier:(id)identifier transactionIds:(id)ids creditDebitType:(unint64_t)type category:(id)category
{
  descriptionCopy = description;
  v16.receiver = self;
  v16.super_class = FHTransactionDescriptionGroup;
  v13 = [(FHTransactionGroup *)&v16 initWithGroupIdentifier:identifier transactionIds:ids groupingMethod:3 creditDebitType:type category:category];
  v14 = v13;
  if (v13)
  {
    [(FHTransactionDescriptionGroup *)v13 setExemplarDescription:descriptionCopy];
  }

  return v14;
}

@end