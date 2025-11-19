@interface MPCPlaybackDelegationProperties
+ (id)payloadValueFromJSONValue:(id)a3;
- (MPCPlaybackDelegationProperties)initWithCoder:(id)a3;
- (MPCPlaybackDelegationProperties)initWithStoreAccountID:(unint64_t)a3 deviceGUID:(id)a4;
- (id)_copyWithClass:(Class)a3 zone:(_NSZone *)a4;
- (id)mpc_jsonValue;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPCPlaybackDelegationProperties

- (id)mpc_jsonValue
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPCPlaybackDelegationProperties storeAccountID](self, "storeAccountID")}];
  [v3 setObject:v4 forKeyedSubscript:@"accountID"];

  v5 = [(MPCPlaybackDelegationProperties *)self deviceGUID];
  [v3 setObject:v5 forKeyedSubscript:@"deviceGUID"];

  v6 = [(MPCPlaybackDelegationProperties *)self deviceName];
  [v3 setObject:v6 forKeyedSubscript:@"deviceName"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPCPlaybackDelegationProperties systemReleaseType](self, "systemReleaseType")}];
  [v3 setObject:v7 forKeyedSubscript:@"systemType"];

  v8 = [(MPCPlaybackDelegationProperties *)self requestUserAgent];
  [v3 setObject:v8 forKeyedSubscript:@"requestUserAgent"];

  v9 = [(MPCPlaybackDelegationProperties *)self timeZone];
  v10 = [v9 name];
  [v3 setObject:v10 forKeyedSubscript:@"timeZone"];

  return v3;
}

+ (id)payloadValueFromJSONValue:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [MPCMutablePlaybackDelegationProperties alloc];
    v5 = [v3 objectForKeyedSubscript:@"accountID"];
    v6 = [v5 unsignedLongLongValue];
    v7 = [v3 objectForKeyedSubscript:@"deviceGUID"];
    v8 = [(MPCPlaybackDelegationProperties *)v4 initWithStoreAccountID:v6 deviceGUID:v7];

    v9 = [v3 objectForKeyedSubscript:@"deviceName"];
    [(MPCMutablePlaybackDelegationProperties *)v8 setDeviceName:v9];

    v10 = [v3 objectForKeyedSubscript:@"systemType"];
    -[MPCMutablePlaybackDelegationProperties setSystemReleaseType:](v8, "setSystemReleaseType:", [v10 integerValue]);

    v11 = [v3 objectForKeyedSubscript:@"requestUserAgent"];
    [(MPCMutablePlaybackDelegationProperties *)v8 setRequestUserAgent:v11];

    v12 = MEMORY[0x1E695DFE8];
    v13 = [v3 objectForKeyedSubscript:@"timeZone"];

    v14 = [v12 timeZoneWithName:v13];
    [(MPCMutablePlaybackDelegationProperties *)v8 setTimeZone:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_copyWithClass:(Class)a3 zone:(_NSZone *)a4
{
  v6 = [[(objc_class *)a3 allocWithZone:a4] initWithStoreAccountID:self->_storeAccountID deviceGUID:self->_deviceGUID];
  if (v6)
  {
    v7 = [(NSString *)self->_deviceName copyWithZone:a4];
    v8 = *(v6 + 2);
    *(v6 + 2) = v7;

    v9 = [(NSString *)self->_requestUserAgent copyWithZone:a4];
    v10 = *(v6 + 4);
    *(v6 + 4) = v9;

    *(v6 + 3) = self->_systemReleaseType;
    v11 = [(NSTimeZone *)self->_timeZone copyWithZone:a4];
    v12 = *(v6 + 6);
    *(v6 + 6) = v11;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MPCPlaybackDelegationProperties *)self _copyWithClass:v5 zone:a3];
}

- (void)encodeWithCoder:(id)a3
{
  storeAccountID = self->_storeAccountID;
  v5 = a3;
  [v5 encodeInt64:storeAccountID forKey:@"storeAccountID"];
  [v5 encodeObject:self->_deviceGUID forKey:@"deviceGUID"];
  [v5 encodeObject:self->_deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_requestUserAgent forKey:@"requestUserAgent"];
  [v5 encodeInteger:self->_systemReleaseType forKey:@"systemReleaseType"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (MPCPlaybackDelegationProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MPCPlaybackDelegationProperties;
  v5 = [(MPCPlaybackDelegationProperties *)&v15 init];
  if (v5)
  {
    v5->_storeAccountID = [v4 decodeInt64ForKey:@"storeAccountID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceGUID"];
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUserAgent"];
    requestUserAgent = v5->_requestUserAgent;
    v5->_requestUserAgent = v10;

    v5->_systemReleaseType = [v4 decodeIntegerForKey:@"systemReleaseType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v12;
  }

  return v5;
}

- (MPCPlaybackDelegationProperties)initWithStoreAccountID:(unint64_t)a3 deviceGUID:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MPCPlaybackDelegationProperties;
  v7 = [(MPCPlaybackDelegationProperties *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_storeAccountID = a3;
    v9 = [v6 copy];
    deviceGUID = v8->_deviceGUID;
    v8->_deviceGUID = v9;
  }

  return v8;
}

@end