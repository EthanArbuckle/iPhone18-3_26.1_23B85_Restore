@interface RTLocationOfInterestEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTLocationOfInterestEnumerationOptions)initWithAscending:(BOOL)a3 batchSize:(unint64_t)a4 dateInterval:(id)a5 wrappedVisit:(BOOL)a6;
- (RTLocationOfInterestEnumerationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)processingBlock;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDateInterval:(id)a3;
@end

@implementation RTLocationOfInterestEnumerationOptions

- (RTLocationOfInterestEnumerationOptions)initWithAscending:(BOOL)a3 batchSize:(unint64_t)a4 dateInterval:(id)a5 wrappedVisit:(BOOL)a6
{
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RTLocationOfInterestEnumerationOptions;
  v11 = [(RTLocationOfInterestEnumerationOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_ascending = a3;
    [(RTLocationOfInterestEnumerationOptions *)v11 setDateInterval:v10];
    v12->_batchSize = a4;
    v12->_wrappedVisit = a6;
  }

  return v12;
}

- (void)setDateInterval:(id)a3
{
  v6 = a3;
  v9 = v6;
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AB80]);
    v3 = [MEMORY[0x1E695DF00] distantPast];
    v4 = [MEMORY[0x1E695DF00] distantFuture];
    v6 = [v7 initWithStartDate:v3 endDate:v4];
  }

  objc_storeStrong(&self->_dateInterval, v6);
  v8 = v9;
  if (!v9)
  {

    v8 = 0;
  }
}

- (id)processingBlock
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__RTLocationOfInterestEnumerationOptions_processingBlock__block_invoke;
  v4[3] = &unk_1E80B4948;
  v4[4] = self;
  v2 = MEMORY[0x1BFB54DD0](v4, a2);

  return v2;
}

id __57__RTLocationOfInterestEnumerationOptions_processingBlock__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          v11 = [*(*(&v14 + 1) + 8 * i) pruneVisitsWithDateInterval:{*(*(a1 + 32) + 24), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTLocationOfInterestEnumerationOptions *)self ascending];
      v7 = [(RTLocationOfInterestEnumerationOptions *)v5 ascending];
      v8 = [(RTLocationOfInterestEnumerationOptions *)self batchSize];
      v9 = [(RTLocationOfInterestEnumerationOptions *)v5 batchSize];
      v10 = [(RTLocationOfInterestEnumerationOptions *)self dateInterval];
      v11 = [(RTLocationOfInterestEnumerationOptions *)v5 dateInterval];
      v12 = [v10 isEqualToDateInterval:v11];

      v13 = [(RTLocationOfInterestEnumerationOptions *)self wrappedVisit];
      v14 = v12 & (v13 ^ [(RTLocationOfInterestEnumerationOptions *)v5 wrappedVisit]^ 1);
      if (v8 != v9)
      {
        LOBYTE(v14) = 0;
      }

      v15 = v6 == v7 && v14;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSDateInterval *)self->_dateInterval hash];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_wrappedVisit];
  v9 = v7 ^ [v8 hash];

  return v6 ^ v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  ascending = self->_ascending;
  batchSize = self->_batchSize;
  dateInterval = self->_dateInterval;
  wrappedVisit = self->_wrappedVisit;

  return [v4 initWithAscending:ascending batchSize:batchSize dateInterval:dateInterval wrappedVisit:wrappedVisit];
}

- (void)encodeWithCoder:(id)a3
{
  ascending = self->_ascending;
  v5 = a3;
  [v5 encodeBool:ascending forKey:@"ascending"];
  [v5 encodeInteger:self->_batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeBool:self->_wrappedVisit forKey:@"wrappedVisit"];
}

- (RTLocationOfInterestEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"ascending"];
  v6 = [v4 decodeIntegerForKey:@"batchSize"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [v4 decodeBoolForKey:@"wrappedVisit"];

  v9 = [(RTLocationOfInterestEnumerationOptions *)self initWithAscending:v5 batchSize:v6 dateInterval:v7 wrappedVisit:v8];
  return v9;
}

@end