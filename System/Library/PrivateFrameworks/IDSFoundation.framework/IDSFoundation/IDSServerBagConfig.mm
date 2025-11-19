@interface IDSServerBagConfig
+ (id)IDSConfig;
+ (id)courierConfig;
- (IDSServerBagConfig)initWithURL:(id)a3 defaultsDomain:(id)a4 defaultBag:(id)a5 apsEnvironmentName:(id)a6 sosDomain:(unint64_t)a7 hashAlgorithm:(char)a8 requiresIDSHost:(BOOL)a9 validateAgainstIDSPolicy:(BOOL)a10 bagType:(int64_t)a11 bypassProcessChecks:(BOOL)a12 logCategory:(id)a13;
- (id)debugDescription;
- (id)description;
@end

@implementation IDSServerBagConfig

+ (id)IDSConfig
{
  v3 = IMGetConferenceSettings();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (v3)
  {
    if (qword_1ED5DF7D0 != -1)
    {
      sub_1A7B00A40();
    }

    v7 = qword_1ED5DF798;
    LOBYTE(v10) = 0;
    LOWORD(v9) = 256;
    v6 = [[a1 alloc] initWithURL:v4 defaultsDomain:@"com.apple.facetime.bag" defaultBag:&unk_1F1B22960 apsEnvironmentName:v5 sosDomain:2 hashAlgorithm:1 requiresIDSHost:v9 validateAgainstIDSPolicy:0 bagType:v10 bypassProcessChecks:v7 logCategory:?];
  }

  return v6;
}

+ (id)courierConfig
{
  v3 = IMGetiMessageSettings();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (v3)
  {
    if (qword_1ED5DF7B0 != -1)
    {
      sub_1A7B00C44();
    }

    v7 = qword_1ED5DF7B8;
    LOBYTE(v10) = 0;
    LOWORD(v9) = 0;
    v6 = [[a1 alloc] initWithURL:v4 defaultsDomain:@"com.apple.imessage.bag" defaultBag:0 apsEnvironmentName:v5 sosDomain:1 hashAlgorithm:1 requiresIDSHost:v9 validateAgainstIDSPolicy:1 bagType:v10 bypassProcessChecks:v7 logCategory:?];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_requiresIDSHost)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_validateAgainstIDSPolicy)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@:%p; url: %@; defaultsDomain: %@; apsName: %@; sosDomain: %d; hashAlgorithm: %d; requiresIDS: %@; IDSPolicy: %@; bagType: %d; defaultBag.count: %llu", v4, self, *&self->_url, self->_apsEnvironmentName, self->_sosDomain, self->_hashAlgorithm, v5, v6, self->_bagType, -[NSDictionary count](self->_defaultBag, "count")];
}

- (IDSServerBagConfig)initWithURL:(id)a3 defaultsDomain:(id)a4 defaultBag:(id)a5 apsEnvironmentName:(id)a6 sosDomain:(unint64_t)a7 hashAlgorithm:(char)a8 requiresIDSHost:(BOOL)a9 validateAgainstIDSPolicy:(BOOL)a10 bagType:(int64_t)a11 bypassProcessChecks:(BOOL)a12 logCategory:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a13;
  v30.receiver = self;
  v30.super_class = IDSServerBagConfig;
  v23 = [(IDSServerBagConfig *)&v30 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_url, a3);
    objc_storeStrong(&v24->_defaultsDomain, a4);
    objc_storeStrong(&v24->_defaultBag, a5);
    objc_storeStrong(&v24->_apsEnvironmentName, a6);
    v24->_hashAlgorithm = a8;
    v24->_requiresIDSHost = a9;
    v24->_validateAgainstIDSPolicy = a10;
    v24->_sosDomain = a7;
    v24->_bagType = a11;
    v24->_bypassProcessChecks = a12;
    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = [MEMORY[0x1E69A6138] serverBag];
    }

    logCategory = v24->_logCategory;
    v24->_logCategory = v25;
  }

  return v24;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_requiresIDSHost)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_validateAgainstIDSPolicy)
  {
    v5 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@:%p; url: %@; defaultsDomain: %@; apsName: %@; sosDomain: %d; hashAlgorithm: %d; requiresIDS: %@; IDSPolicy: %@; bagType: %d; defaultBag: %@", v4, self, *&self->_url, self->_apsEnvironmentName, self->_sosDomain, self->_hashAlgorithm, v6, v5, self->_bagType, self->_defaultBag];
}

@end