@interface IMMessageHistoryDateRangeSummary
- (IMMessageHistoryDateRangeSummary)initWithCoder:(id)a3;
- (IMMessageHistoryDateRangeSummary)initWithDateInterval:(id)a3 messages:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messagesMatchingDateInterval:(id)a3;
- (int64_t)totalMessagePartCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMMessageHistoryDateRangeSummary

- (IMMessageHistoryDateRangeSummary)initWithDateInterval:(id)a3 messages:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IMMessageHistoryDateRangeSummary;
  v9 = [(IMMessageHistoryDateRangeSummary *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateInterval, a3);
    v11 = [v8 copy];
    messages = v10->_messages;
    v10->_messages = v11;
  }

  return v10;
}

- (id)messagesMatchingDateInterval:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_messages;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 date];
        if ([v4 containsDate:v12])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [IMMessageHistoryDateRangeSummary alloc];
  v14 = [v5 copy];
  v15 = [(IMMessageHistoryDateRangeSummary *)v13 initWithDateInterval:v4 messages:v14];

  return v15;
}

- (int64_t)totalMessagePartCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_messages;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) messagePartCount];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  dateInterval = self->_dateInterval;
  messages = self->_messages;

  return [v4 initWithDateInterval:dateInterval messages:messages];
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_messages forKey:@"messages"];
}

- (IMMessageHistoryDateRangeSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"messages"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(IMMessageHistoryDateRangeSummary *)self initWithDateInterval:v5 messages:v6];
    v8 = self;
  }

  return v8;
}

@end