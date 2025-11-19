@interface CWFANQPParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToANQPParameters:(id)a3;
- (CWFANQPParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFANQPParameters

- (BOOL)isEqualToANQPParameters:(id)a3
{
  v7 = a3;
  scanResults = self->_scanResults;
  v9 = [v7 scanResults];
  if (scanResults == v9)
  {
    goto LABEL_7;
  }

  if (self->_scanResults)
  {
    v10 = [v7 scanResults];
    if (v10)
    {
      v3 = v10;
      v11 = self->_scanResults;
      v12 = [v7 scanResults];
      if (![(NSArray *)v11 isEqual:v12])
      {
        v13 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v24 = v12;
LABEL_7:
      ANQPElementIDList = self->_ANQPElementIDList;
      v15 = [v7 ANQPElementIDList];
      if (ANQPElementIDList != v15)
      {
        if (!self->_ANQPElementIDList)
        {
          goto LABEL_21;
        }

        v16 = [v7 ANQPElementIDList];
        if (!v16)
        {
          goto LABEL_19;
        }

        v4 = v16;
        v17 = self->_ANQPElementIDList;
        v5 = [v7 ANQPElementIDList];
        if (![(NSArray *)v17 isEqual:v5])
        {
          v13 = 0;
          v12 = v24;
LABEL_16:

          goto LABEL_22;
        }
      }

      acceptableCacheAge = self->_acceptableCacheAge;
      if (acceptableCacheAge == [v7 acceptableCacheAge])
      {
        maximumAge = self->_maximumAge;
        if (maximumAge == [v7 maximumAge])
        {
          minimumTimestamp = self->_minimumTimestamp;
          if (minimumTimestamp == [v7 minimumTimestamp])
          {
            includeMatchingKnownNetworkProfiles = self->_includeMatchingKnownNetworkProfiles;
            v13 = includeMatchingKnownNetworkProfiles == [v7 includeMatchingKnownNetworkProfiles];
            v22 = ANQPElementIDList == v15;
            v12 = v24;
            if (v22)
            {
              goto LABEL_22;
            }

            goto LABEL_16;
          }
        }
      }

      if (ANQPElementIDList != v15)
      {

LABEL_19:
        v13 = 0;
        v12 = v24;
        if (scanResults == v9)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_21:
      v13 = 0;
      v12 = v24;
LABEL_22:

      if (scanResults == v9)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v13 = 0;
LABEL_26:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFANQPParameters *)self isEqualToANQPParameters:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFANQPParameters allocWithZone:?]];
  [(CWFANQPParameters *)v4 setScanResults:self->_scanResults];
  [(CWFANQPParameters *)v4 setANQPElementIDList:self->_ANQPElementIDList];
  [(CWFANQPParameters *)v4 setAcceptableCacheAge:self->_acceptableCacheAge];
  [(CWFANQPParameters *)v4 setMaximumAge:self->_maximumAge];
  [(CWFANQPParameters *)v4 setMinimumTimestamp:self->_minimumTimestamp];
  [(CWFANQPParameters *)v4 setIncludeMatchingKnownNetworkProfiles:self->_includeMatchingKnownNetworkProfiles];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  scanResults = self->_scanResults;
  v8 = a3;
  [v8 encodeObject:scanResults forKey:@"_scanResults"];
  [v8 encodeObject:self->_ANQPElementIDList forKey:@"_ANQPElementIDList"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_acceptableCacheAge];
  [v8 encodeObject:v5 forKey:@"_acceptableCacheAge"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumAge];
  [v8 encodeObject:v6 forKey:@"_maximumAge"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_minimumTimestamp];
  [v8 encodeObject:v7 forKey:@"_minimumTimestamp"];

  [v8 encodeBool:self->_includeMatchingKnownNetworkProfiles forKey:@"_includeMatchingKnownNetworkProfiles"];
}

- (CWFANQPParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CWFANQPParameters;
  v5 = [(CWFANQPParameters *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_scanResults"];
    scanResults = v5->_scanResults;
    v5->_scanResults = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_ANQPElementIDList"];
    ANQPElementIDList = v5->_ANQPElementIDList;
    v5->_ANQPElementIDList = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_acceptableCacheAge"];
    v5->_acceptableCacheAge = [v16 unsignedIntegerValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maximumAge"];
    v5->_maximumAge = [v17 unsignedIntegerValue];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_minimumTimestamp"];
    v5->_minimumTimestamp = [v18 unsignedLongLongValue];

    v5->_includeMatchingKnownNetworkProfiles = [v4 decodeBoolForKey:@"_includeMatchingKnownNetworkProfiles"];
  }

  return v5;
}

@end