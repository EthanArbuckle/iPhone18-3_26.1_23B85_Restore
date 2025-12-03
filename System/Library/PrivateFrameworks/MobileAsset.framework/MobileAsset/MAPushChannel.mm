@interface MAPushChannel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPushChannelId:(id)id;
- (MAPushChannel)initWithCoder:(id)coder;
- (MAPushChannel)initWithIdentifier:(id)identifier;
- (MAPushChannel)initWithPopulationType:(int64_t)type;
- (id)channelIDForPopulationType;
- (id)description;
- (id)humanReadableChannelName;
- (id)populationTypeString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAPushChannel

- (MAPushChannel)initWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = MAPushChannel;
  v6 = [(MAPushChannel *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_identifier, identifier);
  v7->_populationType = 0;
  if (identifierCopy)
  {
    if (([identifierCopy isEqualToString:&stru_1F0C1B388] & 1) == 0)
    {
      base64String = [identifierCopy base64String];
      objc_storeStrong(&v7->_base64ChannelId, identifier);
      if (base64String)
      {

LABEL_6:
        v9 = v7;
        goto LABEL_10;
      }
    }
  }

  v10 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "[WARNING] Channel ID is nil for identifier %{public}@", buf, 0xCu);
  }

  v9 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MAPushChannel)initWithPopulationType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MAPushChannel;
  v4 = [(MAPushChannel *)&v15 init];
  p_isa = &v4->super.isa;
  if (!v4)
  {
    goto LABEL_4;
  }

  v4->_populationType = type;
  channelIDForPopulationType = [(MAPushChannel *)v4 channelIDForPopulationType];
  v7 = p_isa[1];
  p_isa[1] = channelIDForPopulationType;

  base64String = [p_isa[1] base64String];
  if (base64String)
  {
    v9 = base64String;
    objc_storeStrong(p_isa + 3, p_isa[1]);

LABEL_4:
    v10 = p_isa;
    goto LABEL_8;
  }

  v11 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = p_isa[1];
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "[WARNING] Channel ID is nil for identifier %{public}@", buf, 0xCu);
  }

  v10 = 0;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(MAPushChannel *)self identifier];
  base64ChannelId = [(MAPushChannel *)self base64ChannelId];
  populationType = [(MAPushChannel *)self populationType];
  humanReadableChannelName = [(MAPushChannel *)self humanReadableChannelName];
  v8 = [v3 stringWithFormat:@"<MAPushChannelId | identifier:%@ base64String:%@ populationType:%li name: %@>", identifier, base64ChannelId, populationType, humanReadableChannelName];

  return v8;
}

- (id)humanReadableChannelName
{
  populationType = [(MAPushChannel *)self populationType];
  if ((populationType - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E74C96F8[populationType - 1];
  }
}

- (id)channelIDForPopulationType
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _MAClientLog(@"PushNotification");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    populationType = [(MAPushChannel *)self populationType];
    _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_DEFAULT, "Channel population type: %li", &v9, 0xCu);
  }

  v4 = [(MAPushChannel *)self populationType]- 1;
  if (v4 >= 5)
  {
    v6 = _MAClientLog(@"PushNotification");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, "[WARNING] No population type ID for device!", &v9, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = off_1E74C9720[v4];
    v6 = _MAClientLog(@"PushNotification");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      populationType = v5;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Channel Population ID: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MAPushChannel *)self isEqualToPushChannelId:v5];
  }

  return v6;
}

- (BOOL)isEqualToPushChannelId:(id)id
{
  base64ChannelId = [id base64ChannelId];
  base64ChannelId2 = [(MAPushChannel *)self base64ChannelId];
  v6 = [base64ChannelId isEqual:base64ChannelId2];

  return v6;
}

- (unint64_t)hash
{
  base64ChannelId = [(MAPushChannel *)self base64ChannelId];
  v3 = [base64ChannelId hash];

  return v3;
}

- (id)populationTypeString
{
  populationType = [(MAPushChannel *)self populationType];
  if ((populationType - 1) > 4)
  {
    return @"MAPushPopulationTypeUnknown";
  }

  else
  {
    return off_1E74C9748[populationType - 1];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MAPushChannel *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAPushChannel populationType](self, "populationType")}];
  [coderCopy encodeObject:v6 forKey:@"PopulationType"];

  base64ChannelId = [(MAPushChannel *)self base64ChannelId];
  [coderCopy encodeObject:base64ChannelId forKey:@"Base64ID"];
}

- (MAPushChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MAPushChannel;
  v5 = [(MAPushChannel *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PopulationType"];
    v5->_populationType = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Base64ID"];
    base64ChannelId = v5->_base64ChannelId;
    v5->_base64ChannelId = v9;
  }

  return v5;
}

@end