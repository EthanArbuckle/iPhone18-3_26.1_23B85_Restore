@interface RTLocationOfInterestEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTLocationOfInterestEnumerationOptions)initWithAscending:(BOOL)ascending batchSize:(unint64_t)size dateInterval:(id)interval wrappedVisit:(BOOL)visit;
- (RTLocationOfInterestEnumerationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)processingBlock;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDateInterval:(id)interval;
@end

@implementation RTLocationOfInterestEnumerationOptions

- (RTLocationOfInterestEnumerationOptions)initWithAscending:(BOOL)ascending batchSize:(unint64_t)size dateInterval:(id)interval wrappedVisit:(BOOL)visit
{
  intervalCopy = interval;
  v14.receiver = self;
  v14.super_class = RTLocationOfInterestEnumerationOptions;
  v11 = [(RTLocationOfInterestEnumerationOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_ascending = ascending;
    [(RTLocationOfInterestEnumerationOptions *)v11 setDateInterval:intervalCopy];
    v12->_batchSize = size;
    v12->_wrappedVisit = visit;
  }

  return v12;
}

- (void)setDateInterval:(id)interval
{
  intervalCopy = interval;
  v9 = intervalCopy;
  if (!intervalCopy)
  {
    v7 = objc_alloc(MEMORY[0x1E696AB80]);
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    intervalCopy = [v7 initWithStartDate:distantPast endDate:distantFuture];
  }

  objc_storeStrong(&self->_dateInterval, intervalCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      ascending = [(RTLocationOfInterestEnumerationOptions *)self ascending];
      ascending2 = [(RTLocationOfInterestEnumerationOptions *)v5 ascending];
      batchSize = [(RTLocationOfInterestEnumerationOptions *)self batchSize];
      batchSize2 = [(RTLocationOfInterestEnumerationOptions *)v5 batchSize];
      dateInterval = [(RTLocationOfInterestEnumerationOptions *)self dateInterval];
      dateInterval2 = [(RTLocationOfInterestEnumerationOptions *)v5 dateInterval];
      v12 = [dateInterval isEqualToDateInterval:dateInterval2];

      wrappedVisit = [(RTLocationOfInterestEnumerationOptions *)self wrappedVisit];
      v14 = v12 & (wrappedVisit ^ [(RTLocationOfInterestEnumerationOptions *)v5 wrappedVisit]^ 1);
      if (batchSize != batchSize2)
      {
        LOBYTE(v14) = 0;
      }

      v15 = ascending == ascending2 && v14;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  ascending = self->_ascending;
  batchSize = self->_batchSize;
  dateInterval = self->_dateInterval;
  wrappedVisit = self->_wrappedVisit;

  return [v4 initWithAscending:ascending batchSize:batchSize dateInterval:dateInterval wrappedVisit:wrappedVisit];
}

- (void)encodeWithCoder:(id)coder
{
  ascending = self->_ascending;
  coderCopy = coder;
  [coderCopy encodeBool:ascending forKey:@"ascending"];
  [coderCopy encodeInteger:self->_batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeBool:self->_wrappedVisit forKey:@"wrappedVisit"];
}

- (RTLocationOfInterestEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"ascending"];
  v6 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [coderCopy decodeBoolForKey:@"wrappedVisit"];

  v9 = [(RTLocationOfInterestEnumerationOptions *)self initWithAscending:v5 batchSize:v6 dateInterval:v7 wrappedVisit:v8];
  return v9;
}

@end