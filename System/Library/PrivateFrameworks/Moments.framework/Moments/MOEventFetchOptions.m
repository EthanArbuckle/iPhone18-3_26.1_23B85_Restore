@interface MOEventFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (MOEventFetchOptions)initWithCoder:(id)a3;
- (MOEventFetchOptions)initWithDateInterval:(id)a3 ascending:(BOOL)a4 categories:(id)a5 limit:(id)a6;
- (MOEventFetchOptions)initWithDateInterval:(id)a3 ascending:(BOOL)a4 limit:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventFetchOptions

- (MOEventFetchOptions)initWithDateInterval:(id)a3 ascending:(BOOL)a4 limit:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MOEventFetchOptions;
  v11 = [(MOEventFetchOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_ascending = a4;
    objc_storeStrong(&v11->_dateInterval, a3);
    objc_storeStrong(&v12->_limit, a5);
  }

  return v12;
}

- (MOEventFetchOptions)initWithDateInterval:(id)a3 ascending:(BOOL)a4 categories:(id)a5 limit:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MOEventFetchOptions;
  v14 = [(MOEventFetchOptions *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_ascending = a4;
    objc_storeStrong(&v14->_categories, a5);
    objc_storeStrong(&v15->_dateInterval, a3);
    objc_storeStrong(&v15->_limit, a6);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  ascending = self->_ascending;
  v7 = a3;
  v6 = [v4 numberWithBool:ascending];
  [v7 encodeObject:v6 forKey:@"ascending"];

  [v7 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v7 encodeObject:self->_limit forKey:@"limit"];
  [v7 encodeObject:self->_categories forKey:@"categories"];
}

- (MOEventFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ascending"];
  v6 = [v5 BOOLValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"categories"];

  v13 = [(MOEventFetchOptions *)self initWithDateInterval:v7 ascending:v6 categories:v12 limit:v8];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MOEventFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v5 = a3;
  ascending = self->_ascending;
  v7 = [v5 ascending];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  v3 = [v5 dateInterval];
  if (!v3)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    v9 = [v5 dateInterval];
    if (v9)
    {
      v10 = v9;
      v11 = self->_dateInterval;
      v12 = [v5 dateInterval];
      v13 = [(NSDateInterval *)v11 isEqualToDateInterval:v12];

      if (dateInterval)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (dateInterval)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

LABEL_12:
  if (self->_limit)
  {
    v14 = [v5 limit];
    if (v14)
    {
      v15 = 1;
    }

    else if (self->_limit)
    {
      v16 = [v5 limit];
      if (v16)
      {
        limit = self->_limit;
        v18 = [v5 limit];
        v15 = [(NSNumber *)limit isEqualToNumber:v18];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  categories = self->_categories;
  v20 = [v5 categories];

  if (categories == v20)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  if (((ascending == v7) & v13) == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [(NSDateInterval *)self->_dateInterval hash];
  v6 = v5 ^ [(NSNumber *)self->_limit hash];
  v7 = v6 ^ [(NSArray *)self->_categories hash];

  return v7 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_ascending)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(NSDateInterval *)self->_dateInterval startDate];
  v6 = [v5 stringFromDate];
  v7 = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [v7 stringFromDate];
  v9 = [v3 stringWithFormat:@"ascending, %@, startDate, %@, endDate, %@, categories, %@, limit, %@", v4, v6, v8, self->_categories, self->_limit];

  return v9;
}

@end