@interface IDSActivityInfo
+ (id)activityInfoWithSubActivity:(id)activity URIs:(id)is;
+ (id)activityInfoWithSubActivity:(id)activity devices:(id)devices;
+ (id)activityInfoWithSubActivity:(id)activity tokens:(id)tokens;
- (BOOL)isIdentical:(id)identical;
- (IDSActivityInfo)initWithCoder:(id)coder;
- (id)_initWithSubActivity:(id)activity;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSActivityInfo

+ (id)activityInfoWithSubActivity:(id)activity tokens:(id)tokens
{
  activityCopy = activity;
  tokensCopy = tokens;
  v8 = tokensCopy;
  v9 = 0;
  if (activityCopy && tokensCopy)
  {
    if ([activityCopy length])
    {
      v9 = [[self alloc] _initWithSubActivity:activityCopy];
      if (v9)
      {
        v10 = [v8 copy];
        v11 = v9[5];
        v9[5] = v10;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)activityInfoWithSubActivity:(id)activity URIs:(id)is
{
  activityCopy = activity;
  isCopy = is;
  v8 = isCopy;
  v9 = 0;
  if (activityCopy && isCopy)
  {
    if ([activityCopy length])
    {
      v9 = [[self alloc] _initWithSubActivity:activityCopy];
      if (v9)
      {
        v10 = [v8 copy];
        v11 = v9[6];
        v9[6] = v10;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)activityInfoWithSubActivity:(id)activity devices:(id)devices
{
  activityCopy = activity;
  devicesCopy = devices;
  v8 = devicesCopy;
  v9 = 0;
  if (activityCopy && devicesCopy)
  {
    if ([activityCopy length])
    {
      v9 = [[self alloc] _initWithSubActivity:activityCopy];
      if (v9)
      {
        v10 = [v8 __imArrayByApplyingBlock:&unk_1F09E5E00];
        v11 = v9[4];
        v9[4] = v10;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_initWithSubActivity:(id)activity
{
  v26 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v23.receiver = self;
  v23.super_class = IDSActivityInfo;
  v6 = [(IDSActivityInfo *)&v23 init];
  p_isa = &v6->super.isa;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_subActivity, activity);
  v8 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v9 = [v8 objectForKey:@"presence-subscription-ttl-sec"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLong:3888000];
  }

  v11 = v10;
  date = [MEMORY[0x1E695DF00] date];
  v13 = objc_opt_new();
  [v13 setSecond:{objc_msgSend(v11, "unsignedLongValue")}];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [currentCalendar dateByAddingComponents:v13 toDate:date options:0];
  v16 = p_isa[2];
  p_isa[2] = v15;

  [p_isa[2] timeIntervalSinceNow];
  if (v17 >= 0.0)
  {

LABEL_7:
    v18 = p_isa;
    goto LABEL_11;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v20 = p_isa[2];
    *buf = 138412290;
    v25 = v20;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Expiration dates in the past are not allowed: %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)description
{
  tokens = self->_tokens;
  if (tokens)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@" tokens: %@", tokens];
    v4 = LABEL_7:;
    goto LABEL_8;
  }

  if (self->_URIs)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@" URIs: %@", self->_URIs];
    goto LABEL_7;
  }

  if (self->_deviceUniqueIDs)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@" deviceUniqueIDs: %@", self->_deviceUniqueIDs];
    goto LABEL_7;
  }

  v4 = &stru_1F09E7B80;
LABEL_8:
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p subactivity: %@ expirationDate: %@%@>", objc_opt_class(), self, self->_subActivity, self->_expirationDate, v4];;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  subActivity = self->_subActivity;
  coderCopy = coder;
  [coderCopy encodeObject:subActivity forKey:@"subActivity"];
  [coderCopy encodeObject:self->_appContext forKey:@"appcontext"];
  [coderCopy encodeObject:self->_deviceUniqueIDs forKey:@"deviceids"];
  [coderCopy encodeObject:self->_tokens forKey:@"tokens"];
  [coderCopy encodeObject:self->_URIs forKey:@"uris"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (IDSActivityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subActivity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appcontext"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"deviceids"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"tokens"];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"uris"];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];

  v20 = [(IDSActivityInfo *)self _initWithSubActivity:v5];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(v20 + 3, v6);
    objc_storeStrong(&v21->_deviceUniqueIDs, v10);
    objc_storeStrong(&v21->_tokens, v14);
    objc_storeStrong(&v21->_URIs, v18);
    objc_storeStrong(&v21->_expirationDate, v19);
  }

  return v21;
}

- (BOOL)isIdentical:(id)identical
{
  identicalCopy = identical;
  tokens = [identicalCopy tokens];

  if (tokens)
  {
    tokens2 = [identicalCopy tokens];
    tokens3 = [(IDSActivityInfo *)self tokens];
    goto LABEL_5;
  }

  uRIs = [identicalCopy URIs];

  if (uRIs)
  {
    tokens2 = [identicalCopy URIs];
    tokens3 = [(IDSActivityInfo *)self URIs];
LABEL_5:
    v9 = tokens3;
    v10 = [tokens2 isEqual:tokens3];

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    LODWORD(deviceUniqueIDs) = 0;
    goto LABEL_10;
  }

  deviceUniqueIDs = [identicalCopy deviceUniqueIDs];

  if (!deviceUniqueIDs)
  {
    goto LABEL_10;
  }

  deviceUniqueIDs2 = [identicalCopy deviceUniqueIDs];
  deviceUniqueIDs3 = [(IDSActivityInfo *)self deviceUniqueIDs];
  v16 = [deviceUniqueIDs2 isEqual:deviceUniqueIDs3];

  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_6:
  subActivity = [identicalCopy subActivity];
  subActivity2 = [(IDSActivityInfo *)self subActivity];
  LODWORD(deviceUniqueIDs) = [subActivity isEqualToString:subActivity2];

LABEL_10:
  appContext = [identicalCopy appContext];

  v18 = (appContext == 0) & deviceUniqueIDs;
  if (appContext && deviceUniqueIDs)
  {
    appContext2 = [identicalCopy appContext];
    appContext3 = [(IDSActivityInfo *)self appContext];
    v18 = [appContext2 isEqualToData:appContext3];
  }

  return v18;
}

@end