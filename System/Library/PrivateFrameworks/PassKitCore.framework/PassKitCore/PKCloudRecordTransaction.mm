@interface PKCloudRecordTransaction
+ (id)dateFormatter;
- (PKCloudRecordTransaction)initWithCoder:(id)a3;
- (id)_descriptionWithIncludeItem:(BOOL)a3;
- (id)description;
- (id)descriptionWithItem:(BOOL)a3;
- (int64_t)compare:(id)a3;
- (void)applyCloudRecordObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (PKCloudRecordTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCloudRecordTransaction;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transaction"];
    transaction = v5->_transaction;
    v5->_transaction = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordTransaction;
  v4 = a3;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_transaction forKey:{@"transaction", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(PKCloudRecordTransaction *)self transaction];
    v6 = [v5 transactionDate];
    v7 = [v4 transaction];
    v8 = [v7 transactionDate];
    v9 = [v6 compare:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)descriptionWithItem:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKCloudRecordTransaction *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordTransaction;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:v3];
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

- (id)_descriptionWithIncludeItem:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = v5;
  if (self->_transaction)
  {
    if (v3)
    {
      v7 = [objc_opt_class() dateFormatter];
      v8 = [(PKPaymentTransaction *)self->_transaction transactionDate];
      v9 = [v7 stringFromDate:v8];

      [v6 appendFormat:@"transaction: (%@)\n%@\n", v9, self->_transaction];
    }
  }

  else
  {
    [v5 appendFormat:@"No associated transaction in database\n"];
  }

  return v6;
}

- (void)applyCloudRecordObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordTransaction;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:v4];
    v5 = v4;
    v6 = v5;
    if (!self->_transaction)
    {
      v7 = [v5 transaction];

      if (v7)
      {
        v8 = [v6 transaction];
        transaction = self->_transaction;
        self->_transaction = v8;
      }
    }
  }
}

@end