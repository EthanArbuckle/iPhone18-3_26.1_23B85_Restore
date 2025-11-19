@interface MOEventBundleFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (MOEventBundleFetchOptions)initWithAllowedCategories:(id)a3 dateInterval:(id)a4 ascending:(BOOL)a5 limit:(id)a6 includeDeletedBundles:(BOOL)a7 skipRanking:(BOOL)a8 interfaceType:(unint64_t)a9;
- (MOEventBundleFetchOptions)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventBundleFetchOptions

- (MOEventBundleFetchOptions)initWithAllowedCategories:(id)a3 dateInterval:(id)a4 ascending:(BOOL)a5 limit:(id)a6 includeDeletedBundles:(BOOL)a7 skipRanking:(BOOL)a8 interfaceType:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = MOEventBundleFetchOptions;
  v19 = [(MOEventBundleFetchOptions *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_ascending = a5;
    objc_storeStrong(&v19->_dateInterval, a4);
    objc_storeStrong(&v20->_limit, a6);
    v20->_filterBundle = 0;
    objc_storeStrong(&v20->_categories, a3);
    v20->_includeDeletedBundles = a7;
    v20->_skipRanking = a8;
    v20->_interfaceType = a9;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  ascending = self->_ascending;
  v8 = a3;
  v6 = [v4 numberWithBool:ascending];
  [v8 encodeObject:v6 forKey:@"ascending"];

  [v8 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v8 encodeObject:self->_limit forKey:@"limit"];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_skipRanking];
  [v8 encodeObject:v7 forKey:@"skipRanking"];

  [v8 encodeBool:self->_includeDeletedBundles forKey:@"includeDeletedBundles"];
  [v8 encodeObject:self->_identifiers forKey:@"identifiers"];
  [v8 encodeInt64:self->_interfaceType forKey:@"interfaceType"];
  [v8 encodeBool:self->_personalizedSensingFilter forKey:@"pssFilter"];
  [v8 encodeBool:self->_personalizedSensingVisitsAllowed forKey:@"pssVisits"];
  [v8 encodeBool:self->_skipLocalization forKey:@"skipLocalization"];
}

- (MOEventBundleFetchOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ascending"];
  v21 = [v4 BOOLValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"skipRanking"];
  v8 = [v7 BOOLValue];

  v9 = [v3 decodeBoolForKey:@"includeDeletedBundles"];
  v10 = [v3 decodeBoolForKey:@"skipLocalization"];
  v11 = [v3 decodeBoolForKey:@"pssFilter"];
  v12 = [v3 decodeBoolForKey:@"pssVisits"];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v3 decodeObjectOfClasses:v15 forKey:@"identifiers"];

  v17 = [v3 decodeInt64ForKey:@"interfaceType"];
  v18 = [(MOEventBundleFetchOptions *)self initWithDateInterval:v5 ascending:v21 limit:v6 includeDeletedBundles:v9 skipRanking:v8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifiers, v16);
    v19->_interfaceType = v17;
    v19->_personalizedSensingFilter = v11;
    v19->_personalizedSensingVisitsAllowed = v12;
    v19->_skipLocalization = v10;
  }

  return v19;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MOEventBundleFetchOptions *)self isEqualToFetchOptions:v5];
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
      v15 = 0;
    }

    else if (self->_limit)
    {
      v16 = [v5 limit];
      if (v16)
      {
        limit = self->_limit;
        v18 = [v5 limit];
        LOBYTE(limit) = [(NSNumber *)limit isEqualToNumber:v18];

        v15 = limit ^ 1;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  filterBundle = self->_filterBundle;
  v20 = [v5 filterBundle];
  skipRanking = self->_skipRanking;
  v22 = [v5 skipRanking];
  v23 = 0;
  if (ascending == v7 && ((v13 ^ 1) & 1) == 0 && (v15 & 1) == 0)
  {
    v23 = filterBundle == v20 && (v22 & 1) == skipRanking;
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [(NSDateInterval *)self->_dateInterval hash];
  v6 = v5 ^ [(NSNumber *)self->_limit hash]^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_filterBundle];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_skipRanking];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
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
  v9 = v8;
  if (self->_filterBundle)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_skipRanking)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_personalizedSensingFilter)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_personalizedSensingVisitsAllowed)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v3 stringWithFormat:@"ascending, %@, startDate, %@, endDate, %@, limit, %@, filterBundle, %@, skipRanking, %@, interfaceType, %lu, pssFilter, %@, pssVisits, %@", v4, v6, v8, self->_limit, v10, v11, self->_interfaceType, v12, v13];

  return v14;
}

@end