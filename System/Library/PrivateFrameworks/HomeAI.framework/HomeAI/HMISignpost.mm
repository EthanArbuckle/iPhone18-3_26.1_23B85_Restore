@interface HMISignpost
- (BOOL)hasBegun;
- (BOOL)shouldSignpost;
- (HMISignpost)initWithName:(id)name deferred:(BOOL)deferred;
- (id)logIdentifier;
- (void)begin;
- (void)end;
@end

@implementation HMISignpost

- (HMISignpost)initWithName:(id)name deferred:(BOOL)deferred
{
  v18[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = HMISignpost;
  v7 = [(HMISignpost *)&v16 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v7->_identifier;
    v7->_identifier = uUID;

    v12 = v7->_identifier;
    v17 = 0;
    v18[0] = 0;
    v18[1] = 0;
    [(NSUUID *)v12 getUUIDBytes:v18];
    v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v18 length:16 freeWhenDone:0];
    [v13 getBytes:&v17 range:{objc_msgSend(v13, "length") - 8, 8}];

    v14 = v17;
    if (v17 + 1 < 2)
    {
      v14 = 0xEEEEB0B5B2B2EEEELL;
    }

    v7->_signpostIdentifier = v14;
    if (!deferred)
    {
      [(HMISignpost *)v7 begin];
    }
  }

  return v7;
}

- (BOOL)shouldSignpost
{
  v3 = +[HMIPreference sharedInstance];
  v4 = 0;
  if ([v3 BOOLPreferenceForKey:@"enableSignposts" defaultValue:0])
  {
    signpostLog = [(HMISignpost *)self signpostLog];
    v4 = os_signpost_enabled(signpostLog);
  }

  return v4;
}

- (BOOL)hasBegun
{
  beginDate = [(HMISignpost *)self beginDate];
  v3 = beginDate != 0;

  return v3;
}

- (void)begin
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(HMISignpost *)self hasBegun])
  {
    date = [MEMORY[0x277CBEAA8] date];
    beginDate = self->_beginDate;
    self->_beginDate = date;

    if ([(HMISignpost *)self shouldSignpost])
    {
      signpostLog = [(HMISignpost *)self signpostLog];
      signpostIdentifier = [(HMISignpost *)self signpostIdentifier];
      if (signpostIdentifier - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostIdentifier;
        if (os_signpost_enabled(signpostLog))
        {
          identifier = [(HMISignpost *)self identifier];
          uUIDString = [identifier UUIDString];
          name = [(HMISignpost *)self name];
          v11 = 138412546;
          v12 = uUIDString;
          v13 = 2112;
          v14 = name;
          _os_signpost_emit_with_name_impl(&dword_22D12F000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HMISignpost", "Identifier = %@, Name = %@", &v11, 0x16u);
        }
      }
    }
  }
}

- (void)end
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(HMISignpost *)self shouldSignpost])
  {
    signpostLog = [(HMISignpost *)self signpostLog];
    signpostIdentifier = [(HMISignpost *)self signpostIdentifier];
    if (signpostIdentifier - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = signpostIdentifier;
      if (os_signpost_enabled(signpostLog))
      {
        identifier = [(HMISignpost *)self identifier];
        uUIDString = [identifier UUIDString];
        name = [(HMISignpost *)self name];
        v9 = 138412546;
        v10 = uUIDString;
        v11 = 2112;
        v12 = name;
        _os_signpost_emit_with_name_impl(&dword_22D12F000, signpostLog, OS_SIGNPOST_INTERVAL_END, v5, "HMISignpost", "Identifier = %@, Name = %@", &v9, 0x16u);
      }
    }
  }
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  name = self->_name;
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v2 stringWithFormat:@"%@ (%@)", name, uUIDString];

  return v5;
}

@end