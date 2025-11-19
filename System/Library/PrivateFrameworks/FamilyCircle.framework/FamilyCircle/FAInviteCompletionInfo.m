@interface FAInviteCompletionInfo
- (FAInviteCompletionInfo)initWithCoder:(id)a3;
- (id)_completionStatusStringValue;
- (id)_transportStringValue;
- (id)serverReadableDictionary;
- (unint64_t)completionTypeFrom:(id)a3;
- (unint64_t)transportTypeFrom:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAInviteCompletionInfo

- (id)serverReadableDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(FAInviteCompletionInfo *)self _transportStringValue];
  [v3 setObject:v4 forKeyedSubscript:@"transportMode"];

  v5 = [(FAInviteCompletionInfo *)self recipients];
  [v3 setObject:v5 forKeyedSubscript:@"inviteRecipients"];

  v6 = [(FAInviteCompletionInfo *)self _completionStatusStringValue];
  [v3 setObject:v6 forKeyedSubscript:@"completionStatus"];

  return v3;
}

- (id)_transportStringValue
{
  v2 = [(FAInviteCompletionInfo *)self transportType];
  if (v2 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7CA5630[v2 - 1];
  }
}

- (unint64_t)transportTypeFrom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"messages"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"mail"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"airdrop"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"inviteInPerson"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_completionStatusStringValue
{
  v2 = [(FAInviteCompletionInfo *)self status];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7CA5650[v2];
  }
}

- (unint64_t)completionTypeFrom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"failure"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqualToString:@"success"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAInviteCompletionInfo *)self _transportStringValue];
  [v4 encodeObject:v5 forKey:@"transportMode"];

  v6 = [(FAInviteCompletionInfo *)self recipients];
  [v4 encodeObject:v6 forKey:@"inviteRecipients"];

  v7 = [(FAInviteCompletionInfo *)self _completionStatusStringValue];
  [v4 encodeObject:v7 forKey:@"completionStatus"];
}

- (FAInviteCompletionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAInviteCompletionInfo *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"inviteRecipients"];
    recipients = v5->_recipients;
    v5->_recipients = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transportMode"];
    v5->_transportType = [(FAInviteCompletionInfo *)v5 transportTypeFrom:v11];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completionStatus"];
    v5->_status = [(FAInviteCompletionInfo *)v5 completionTypeFrom:v12];
  }

  return v5;
}

@end