@interface PKAccountScheduledPaymentList
- (NSArray)scheduledPayments;
- (PKAccountScheduledPaymentList)initWithCoder:(id)a3;
- (PKAccountScheduledPaymentList)initWithScheduledPayment:(id)a3;
- (id)jsonArrayRepresentationWithCertificatesResponse:(id)a3;
- (id)scheduledPaymentOfFundingSourceType:(int64_t)a3;
@end

@implementation PKAccountScheduledPaymentList

- (PKAccountScheduledPaymentList)initWithScheduledPayment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAccountScheduledPaymentList;
  v5 = [(PKAccountScheduledPaymentList *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    scheduledPayments = v5->_scheduledPayments;
    v5->_scheduledPayments = v6;

    [(NSMutableArray *)v5->_scheduledPayments safelyAddObject:v4];
  }

  return v5;
}

- (NSArray)scheduledPayments
{
  v2 = [(NSMutableArray *)self->_scheduledPayments copy];

  return v2;
}

- (id)jsonArrayRepresentationWithCertificatesResponse:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_scheduledPayments;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) jsonDictionaryRepresentationWithCertificatesResponse:{v4, v14}];
        [v5 safelyAddObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)scheduledPaymentOfFundingSourceType:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_scheduledPayments;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 fundingSource];
        v11 = [v10 type];

        if (v11 == a3)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (PKAccountScheduledPaymentList)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountScheduledPaymentList;
  v5 = [(PKAccountScheduledPaymentList *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"scheduledPayments"];
  }

  return v5;
}

@end