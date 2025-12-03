@interface PKAccountScheduledTransferList
- (NSArray)scheduledTransfers;
- (PKAccountScheduledTransferList)initWithCoder:(id)coder;
- (PKAccountScheduledTransferList)initWithScheduledTransfer:(id)transfer;
- (id)jsonArrayRepresentation;
- (id)scheduledTransferOfFundingSourceType:(int64_t)type;
@end

@implementation PKAccountScheduledTransferList

- (PKAccountScheduledTransferList)initWithScheduledTransfer:(id)transfer
{
  transferCopy = transfer;
  v9.receiver = self;
  v9.super_class = PKAccountScheduledTransferList;
  v5 = [(PKAccountScheduledTransferList *)&v9 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    scheduledTransfers = v5->_scheduledTransfers;
    v5->_scheduledTransfers = array;

    [(NSMutableArray *)v5->_scheduledTransfers safelyAddObject:transferCopy];
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
  array = [MEMORY[0x1E695DF70] array];
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

        jsonDictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) jsonDictionaryRepresentation];
        [array safelyAddObject:jsonDictionaryRepresentation];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [array copy];

  return v10;
}

- (id)scheduledTransferOfFundingSourceType:(int64_t)type
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
        externalAccount = [v9 externalAccount];
        type = [externalAccount type];

        if (type == type)
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

- (PKAccountScheduledTransferList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountScheduledTransferList;
  v5 = [(PKAccountScheduledTransferList *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"scheduledTransfers"];
  }

  return v5;
}

@end