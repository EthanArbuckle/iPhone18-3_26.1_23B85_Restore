@interface PKAccountScheduledTransferList
- (NSArray)scheduledTransfers;
- (PKAccountScheduledTransferList)initWithCoder:(id)a3;
- (PKAccountScheduledTransferList)initWithScheduledTransfer:(id)a3;
- (id)jsonArrayRepresentation;
- (id)scheduledTransferOfFundingSourceType:(int64_t)a3;
@end

@implementation PKAccountScheduledTransferList

- (PKAccountScheduledTransferList)initWithScheduledTransfer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAccountScheduledTransferList;
  v5 = [(PKAccountScheduledTransferList *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    scheduledTransfers = v5->_scheduledTransfers;
    v5->_scheduledTransfers = v6;

    [(NSMutableArray *)v5->_scheduledTransfers safelyAddObject:v4];
  }

  return v5;
}

- (NSArray)scheduledTransfers
{
  v2 = [(NSMutableArray *)self->_scheduledTransfers copy];

  return v2;
}

- (id)jsonArrayRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_scheduledTransfers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionaryRepresentation];
        [v3 safelyAddObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)scheduledTransferOfFundingSourceType:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_scheduledTransfers;
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
        v10 = [v9 externalAccount];
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

- (PKAccountScheduledTransferList)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountScheduledTransferList;
  v5 = [(PKAccountScheduledTransferList *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"scheduledTransfers"];
  }

  return v5;
}

@end