@interface PKCloudRecordTransaction
+ (id)dateFormatter;
- (PKCloudRecordTransaction)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordTransaction

+ (id)dateFormatter
{
  if (qword_1EB5A00B0[0] != -1)
  {
    dispatch_once(qword_1EB5A00B0, &__block_literal_global_223);
  }

  v3 = _MergedGlobals_1_8;

  return v3;
}

uint64_t __41__PKCloudRecordTransaction_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_1_8;
  _MergedGlobals_1_8 = v0;

  v2 = _MergedGlobals_1_8;

  return [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
}

- (PKCloudRecordTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordTransaction;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transaction"];
    transaction = v5->_transaction;
    v5->_transaction = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordTransaction;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_transaction forKey:{@"transaction", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (compareCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    transaction = [(PKCloudRecordTransaction *)self transaction];
    transactionDate = [transaction transactionDate];
    transaction2 = [compareCopy transaction];
    transactionDate2 = [transaction2 transactionDate];
    v9 = [transactionDate compare:transactionDate2];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordTransaction *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordTransaction;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordTransaction *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordTransaction;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  if (self->_transaction)
  {
    if (itemCopy)
    {
      dateFormatter = [objc_opt_class() dateFormatter];
      transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
      v9 = [dateFormatter stringFromDate:transactionDate];

      [v6 appendFormat:@"transaction: (%@)\n%@\n", v9, self->_transaction];
    }
  }

  else
  {
    [string appendFormat:@"No associated transaction in database\n"];
  }

  return v6;
}

- (void)applyCloudRecordObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordTransaction;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_transaction)
    {
      transaction = [v5 transaction];

      if (transaction)
      {
        transaction2 = [v6 transaction];
        transaction = self->_transaction;
        self->_transaction = transaction2;
      }
    }
  }
}

@end