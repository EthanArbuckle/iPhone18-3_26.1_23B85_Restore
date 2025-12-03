@interface PKActivityEvent
+ (id)eventsWithTransactions:(id)transactions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActivityEvent:(id)event;
- (PKActivityEvent)initWithIdentifier:(id)identifier date:(id)date unread:(BOOL)unread;
- (unint64_t)hash;
@end

@implementation PKActivityEvent

+ (id)eventsWithTransactions:(id)transactions
{
  v20 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = transactionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 transactionType] == 3)
        {
          v11 = off_1E79BF308;
        }

        else
        {
          v11 = off_1E79BF310;
        }

        v12 = [objc_alloc(*v11) initWithTransaction:v10 unread:0];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (PKActivityEvent)initWithIdentifier:(id)identifier date:(id)date unread:(BOOL)unread
{
  identifierCopy = identifier;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = PKActivityEvent;
  v10 = [(PKActivityEvent *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [dateCopy copy];
    date = v10->_date;
    v10->_date = v13;

    v10->_unread = unread;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSDate *)self->_date hash]- v3 + 32 * v3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_unread];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6 + 506447;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKActivityEvent *)self isEqualToActivityEvent:equalCopy];

  return v5;
}

- (BOOL)isEqualToActivityEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_unread != *(eventCopy + 8))
  {
    goto LABEL_10;
  }

  date = self->_date;
  v6 = eventCopy[4];
  if (!date || !v6)
  {
    if (date == v6)
    {
      goto LABEL_6;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (([(NSDate *)date isEqual:?]& 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  identifier = self->_identifier;
  v8 = eventCopy[3];
  if (identifier && v8)
  {
    v9 = [(NSString *)identifier isEqual:?];
  }

  else
  {
    v9 = identifier == v8;
  }

LABEL_11:

  return v9;
}

@end