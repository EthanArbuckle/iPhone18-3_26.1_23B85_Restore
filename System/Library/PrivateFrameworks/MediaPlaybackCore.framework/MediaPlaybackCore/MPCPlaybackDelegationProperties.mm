@interface MPCPlaybackDelegationProperties
+ (id)payloadValueFromJSONValue:(id)value;
- (MPCPlaybackDelegationProperties)initWithCoder:(id)coder;
- (MPCPlaybackDelegationProperties)initWithStoreAccountID:(unint64_t)d deviceGUID:(id)iD;
- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone;
- (id)mpc_jsonValue;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPCPlaybackDelegationProperties

- (id)mpc_jsonValue
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPCPlaybackDelegationProperties storeAccountID](self, "storeAccountID")}];
  [dictionary setObject:v4 forKeyedSubscript:@"accountID"];

  deviceGUID = [(MPCPlaybackDelegationProperties *)self deviceGUID];
  [dictionary setObject:deviceGUID forKeyedSubscript:@"deviceGUID"];

  deviceName = [(MPCPlaybackDelegationProperties *)self deviceName];
  [dictionary setObject:deviceName forKeyedSubscript:@"deviceName"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPCPlaybackDelegationProperties systemReleaseType](self, "systemReleaseType")}];
  [dictionary setObject:v7 forKeyedSubscript:@"systemType"];

  requestUserAgent = [(MPCPlaybackDelegationProperties *)self requestUserAgent];
  [dictionary setObject:requestUserAgent forKeyedSubscript:@"requestUserAgent"];

  timeZone = [(MPCPlaybackDelegationProperties *)self timeZone];
  name = [timeZone name];
  [dictionary setObject:name forKeyedSubscript:@"timeZone"];

  return dictionary;
}

+ (id)payloadValueFromJSONValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    v4 = [MPCMutablePlaybackDelegationProperties alloc];
    v5 = [valueCopy objectForKeyedSubscript:@"accountID"];
    unsignedLongLongValue = [v5 unsignedLongLongValue];
    v7 = [valueCopy objectForKeyedSubscript:@"deviceGUID"];
    v8 = [(MPCPlaybackDelegationProperties *)v4 initWithStoreAccountID:unsignedLongLongValue deviceGUID:v7];

    v9 = [valueCopy objectForKeyedSubscript:@"deviceName"];
    [(MPCMutablePlaybackDelegationProperties *)v8 setDeviceName:v9];

    v10 = [valueCopy objectForKeyedSubscript:@"systemType"];
    -[MPCMutablePlaybackDelegationProperties setSystemReleaseType:](v8, "setSystemReleaseType:", [v10 integerValue]);

    v11 = [valueCopy objectForKeyedSubscript:@"requestUserAgent"];
    [(MPCMutablePlaybackDelegationProperties *)v8 setRequestUserAgent:v11];

    v12 = MEMORY[0x1E695DFE8];
    v13 = [valueCopy objectForKeyedSubscript:@"timeZone"];

    v14 = [v12 timeZoneWithName:v13];
    [(MPCMutablePlaybackDelegationProperties *)v8 setTimeZone:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone
{
  v6 = [[(objc_class *)class allocWithZone:zone] initWithStoreAccountID:self->_storeAccountID deviceGUID:self->_deviceGUID];
  if (v6)
  {
    v7 = [(NSString *)self->_deviceName copyWithZone:zone];
    v8 = *(v6 + 2);
    *(v6 + 2) = v7;

    v9 = [(NSString *)self->_requestUserAgent copyWithZone:zone];
    v10 = *(v6 + 4);
    *(v6 + 4) = v9;

    *(v6 + 3) = self->_systemReleaseType;
    v11 = [(NSTimeZone *)self->_timeZone copyWithZone:zone];
    v12 = *(v6 + 6);
    *(v6 + 6) = v11;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MPCPlaybackDelegationProperties *)self _copyWithClass:v5 zone:zone];
}

- (void)encodeWithCoder:(id)coder
{
  storeAccountID = self->_storeAccountID;
  coderCopy = coder;
  [coderCopy encodeInt64:storeAccountID forKey:@"storeAccountID"];
  [coderCopy encodeObject:self->_deviceGUID forKey:@"deviceGUID"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_requestUserAgent forKey:@"requestUserAgent"];
  [coderCopy encodeInteger:self->_systemReleaseType forKey:@"systemReleaseType"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
}

- (MPCPlaybackDelegationProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MPCPlaybackDelegationProperties;
  v5 = [(MPCPlaybackDelegationProperties *)&v15 init];
  if (v5)
  {
    v5->_storeAccountID = [coderCopy decodeInt64ForKey:@"storeAccountID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceGUID"];
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUserAgent"];
    requestUserAgent = v5->_requestUserAgent;
    v5->_requestUserAgent = v10;

    v5->_systemReleaseType = [coderCopy decodeIntegerForKey:@"systemReleaseType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v12;
  }

  return v5;
}

- (MPCPlaybackDelegationProperties)initWithStoreAccountID:(unint64_t)d deviceGUID:(id)iD
{
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = MPCPlaybackDelegationProperties;
  v7 = [(MPCPlaybackDelegationProperties *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_storeAccountID = d;
    v9 = [iDCopy copy];
    deviceGUID = v8->_deviceGUID;
    v8->_deviceGUID = v9;
  }

  return v8;
}

@end