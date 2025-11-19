@interface HMISignpost
- (BOOL)hasBegun;
- (BOOL)shouldSignpost;
- (HMISignpost)initWithName:(id)a3 deferred:(BOOL)a4;
- (id)logIdentifier;
- (void)begin;
- (void)end;
@end

@implementation HMISignpost

- (HMISignpost)initWithName:(id)a3 deferred:(BOOL)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = HMISignpost;
  v7 = [(HMISignpost *)&v16 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v10 = [MEMORY[0x277CCAD78] UUID];
    identifier = v7->_identifier;
    v7->_identifier = v10;

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
    if (!a4)
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
    v5 = [(HMISignpost *)self signpostLog];
    v4 = os_signpost_enabled(v5);
  }

  return v4;
}

- (BOOL)hasBegun
{
  v2 = [(HMISignpost *)self beginDate];
  v3 = v2 != 0;

  return v3;
}

- (void)begin
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(HMISignpost *)self hasBegun])
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    beginDate = self->_beginDate;
    self->_beginDate = v3;

    if ([(HMISignpost *)self shouldSignpost])
    {
      v5 = [(HMISignpost *)self signpostLog];
      v6 = [(HMISignpost *)self signpostIdentifier];
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          v8 = [(HMISignpost *)self identifier];
          v9 = [v8 UUIDString];
          v10 = [(HMISignpost *)self name];
          v11 = 138412546;
          v12 = v9;
          v13 = 2112;
          v14 = v10;
          _os_signpost_emit_with_name_impl(&dword_22D12F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HMISignpost", "Identifier = %@, Name = %@", &v11, 0x16u);
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
    v3 = [(HMISignpost *)self signpostLog];
    v4 = [(HMISignpost *)self signpostIdentifier];
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        v6 = [(HMISignpost *)self identifier];
        v7 = [v6 UUIDString];
        v8 = [(HMISignpost *)self name];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_signpost_emit_with_name_impl(&dword_22D12F000, v3, OS_SIGNPOST_INTERVAL_END, v5, "HMISignpost", "Identifier = %@, Name = %@", &v9, 0x16u);
      }
    }
  }
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  name = self->_name;
  v4 = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v2 stringWithFormat:@"%@ (%@)", name, v4];

  return v5;
}

@end