@interface CWFANQPParameters
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToANQPParameters:(id)parameters;
- (CWFANQPParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFANQPParameters

- (BOOL)isEqualToANQPParameters:(id)parameters
{
  parametersCopy = parameters;
  scanResults = self->_scanResults;
  scanResults = [parametersCopy scanResults];
  if (scanResults == scanResults)
  {
    goto LABEL_7;
  }

  if (self->_scanResults)
  {
    scanResults2 = [parametersCopy scanResults];
    if (scanResults2)
    {
      v3 = scanResults2;
      v11 = self->_scanResults;
      scanResults3 = [parametersCopy scanResults];
      if (![(NSArray *)v11 isEqual:scanResults3])
      {
        v13 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v24 = scanResults3;
LABEL_7:
      ANQPElementIDList = self->_ANQPElementIDList;
      aNQPElementIDList = [parametersCopy ANQPElementIDList];
      if (ANQPElementIDList != aNQPElementIDList)
      {
        if (!self->_ANQPElementIDList)
        {
          goto LABEL_21;
        }

        aNQPElementIDList2 = [parametersCopy ANQPElementIDList];
        if (!aNQPElementIDList2)
        {
          goto LABEL_19;
        }

        v4 = aNQPElementIDList2;
        v17 = self->_ANQPElementIDList;
        aNQPElementIDList3 = [parametersCopy ANQPElementIDList];
        if (![(NSArray *)v17 isEqual:aNQPElementIDList3])
        {
          v13 = 0;
          scanResults3 = v24;
LABEL_16:

          goto LABEL_22;
        }
      }

      acceptableCacheAge = self->_acceptableCacheAge;
      if (acceptableCacheAge == [parametersCopy acceptableCacheAge])
      {
        maximumAge = self->_maximumAge;
        if (maximumAge == [parametersCopy maximumAge])
        {
          minimumTimestamp = self->_minimumTimestamp;
          if (minimumTimestamp == [parametersCopy minimumTimestamp])
          {
            includeMatchingKnownNetworkProfiles = self->_includeMatchingKnownNetworkProfiles;
            v13 = includeMatchingKnownNetworkProfiles == [parametersCopy includeMatchingKnownNetworkProfiles];
            v22 = ANQPElementIDList == aNQPElementIDList;
            scanResults3 = v24;
            if (v22)
            {
              goto LABEL_22;
            }

            goto LABEL_16;
          }
        }
      }

      if (ANQPElementIDList != aNQPElementIDList)
      {

LABEL_19:
        v13 = 0;
        scanResults3 = v24;
        if (scanResults == scanResults)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_21:
      v13 = 0;
      scanResults3 = v24;
LABEL_22:

      if (scanResults == scanResults)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFANQPParameters *)self isEqualToANQPParameters:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  scanResults = self->_scanResults;
  coderCopy = coder;
  [coderCopy encodeObject:scanResults forKey:@"_scanResults"];
  [coderCopy encodeObject:self->_ANQPElementIDList forKey:@"_ANQPElementIDList"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_acceptableCacheAge];
  [coderCopy encodeObject:v5 forKey:@"_acceptableCacheAge"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumAge];
  [coderCopy encodeObject:v6 forKey:@"_maximumAge"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_minimumTimestamp];
  [coderCopy encodeObject:v7 forKey:@"_minimumTimestamp"];

  [coderCopy encodeBool:self->_includeMatchingKnownNetworkProfiles forKey:@"_includeMatchingKnownNetworkProfiles"];
}

- (CWFANQPParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CWFANQPParameters;
  v5 = [(CWFANQPParameters *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_scanResults"];
    scanResults = v5->_scanResults;
    v5->_scanResults = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_ANQPElementIDList"];
    ANQPElementIDList = v5->_ANQPElementIDList;
    v5->_ANQPElementIDList = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_acceptableCacheAge"];
    v5->_acceptableCacheAge = [v16 unsignedIntegerValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maximumAge"];
    v5->_maximumAge = [v17 unsignedIntegerValue];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_minimumTimestamp"];
    v5->_minimumTimestamp = [v18 unsignedLongLongValue];

    v5->_includeMatchingKnownNetworkProfiles = [coderCopy decodeBoolForKey:@"_includeMatchingKnownNetworkProfiles"];
  }

  return v5;
}

@end