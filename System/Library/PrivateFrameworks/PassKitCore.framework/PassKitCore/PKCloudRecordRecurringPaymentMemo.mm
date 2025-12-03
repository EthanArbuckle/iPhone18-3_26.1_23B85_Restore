@interface PKCloudRecordRecurringPaymentMemo
- (PKCloudRecordRecurringPaymentMemo)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordRecurringPaymentMemo

- (PKCloudRecordRecurringPaymentMemo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordRecurringPaymentMemo;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurringPayment"];
    recurringPayment = v5->_recurringPayment;
    v5->_recurringPayment = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordRecurringPaymentMemo;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_recurringPayment forKey:{@"recurringPayment", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  recurringPayment = self->_recurringPayment;
  compareCopy = compare;
  identifier = [(PKPeerPaymentRecurringPayment *)recurringPayment identifier];
  recurringPayment = [compareCopy recurringPayment];

  identifier2 = [recurringPayment identifier];
  v8 = [identifier compare:identifier2];

  return v8;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordRecurringPaymentMemo *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordRecurringPaymentMemo;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordRecurringPaymentMemo *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordRecurringPaymentMemo;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  if (self->_recurringPayment)
  {
    if (itemCopy)
    {
      [string appendFormat:@"recurringPayment: %@\n", self->_recurringPayment];
    }
  }

  else
  {
    [string appendFormat:@"No associated recurringPayment in database\n", v8];
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
    v10.super_class = PKCloudRecordRecurringPaymentMemo;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_recurringPayment)
    {
      recurringPayment = [v5 recurringPayment];

      if (recurringPayment)
      {
        recurringPayment2 = [v6 recurringPayment];
        recurringPayment = self->_recurringPayment;
        self->_recurringPayment = recurringPayment2;
      }
    }
  }
}

@end