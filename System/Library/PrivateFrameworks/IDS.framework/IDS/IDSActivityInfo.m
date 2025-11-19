@interface IDSActivityInfo
+ (id)activityInfoWithSubActivity:(id)a3 URIs:(id)a4;
+ (id)activityInfoWithSubActivity:(id)a3 devices:(id)a4;
+ (id)activityInfoWithSubActivity:(id)a3 tokens:(id)a4;
- (BOOL)isIdentical:(id)a3;
- (IDSActivityInfo)initWithCoder:(id)a3;
- (id)_initWithSubActivity:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSActivityInfo

+ (id)activityInfoWithSubActivity:(id)a3 tokens:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v6 length])
    {
      v9 = [[a1 alloc] _initWithSubActivity:v6];
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

+ (id)activityInfoWithSubActivity:(id)a3 URIs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v6 length])
    {
      v9 = [[a1 alloc] _initWithSubActivity:v6];
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

+ (id)activityInfoWithSubActivity:(id)a3 devices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v6 length])
    {
      v9 = [[a1 alloc] _initWithSubActivity:v6];
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

- (id)_initWithSubActivity:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23.receiver = self;
  v23.super_class = IDSActivityInfo;
  v6 = [(IDSActivityInfo *)&v23 init];
  p_isa = &v6->super.isa;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_subActivity, a3);
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
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = objc_opt_new();
  [v13 setSecond:{objc_msgSend(v11, "unsignedLongValue")}];
  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [v14 dateByAddingComponents:v13 toDate:v12 options:0];
  v16 = p_isa[2];
  p_isa[2] = v15;

  [p_isa[2] timeIntervalSinceNow];
  if (v17 >= 0.0)
  {

LABEL_7:
    v18 = p_isa;
    goto LABEL_11;
  }

  v19 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = p_isa[2];
    *buf = 138412290;
    v25 = v20;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Expiration dates in the past are not allowed: %@", buf, 0xCu);
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

- (void)encodeWithCoder:(id)a3
{
  subActivity = self->_subActivity;
  v5 = a3;
  [v5 encodeObject:subActivity forKey:@"subActivity"];
  [v5 encodeObject:self->_appContext forKey:@"appcontext"];
  [v5 encodeObject:self->_deviceUniqueIDs forKey:@"deviceids"];
  [v5 encodeObject:self->_tokens forKey:@"tokens"];
  [v5 encodeObject:self->_URIs forKey:@"uris"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (IDSActivityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subActivity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appcontext"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"deviceids"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"tokens"];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"uris"];

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];

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

- (BOOL)isIdentical:(id)a3
{
  v4 = a3;
  v5 = [v4 tokens];

  if (v5)
  {
    v6 = [v4 tokens];
    v7 = [(IDSActivityInfo *)self tokens];
    goto LABEL_5;
  }

  v8 = [v4 URIs];

  if (v8)
  {
    v6 = [v4 URIs];
    v7 = [(IDSActivityInfo *)self URIs];
LABEL_5:
    v9 = v7;
    v10 = [v6 isEqual:v7];

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    LODWORD(v13) = 0;
    goto LABEL_10;
  }

  v13 = [v4 deviceUniqueIDs];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [v4 deviceUniqueIDs];
  v15 = [(IDSActivityInfo *)self deviceUniqueIDs];
  v16 = [v14 isEqual:v15];

  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = [v4 subActivity];
  v12 = [(IDSActivityInfo *)self subActivity];
  LODWORD(v13) = [v11 isEqualToString:v12];

LABEL_10:
  v17 = [v4 appContext];

  v18 = (v17 == 0) & v13;
  if (v17 && v13)
  {
    v19 = [v4 appContext];
    v20 = [(IDSActivityInfo *)self appContext];
    v18 = [v19 isEqualToData:v20];
  }

  return v18;
}

@end