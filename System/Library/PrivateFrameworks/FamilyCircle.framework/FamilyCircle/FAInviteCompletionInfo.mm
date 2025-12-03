@interface FAInviteCompletionInfo
- (FAInviteCompletionInfo)initWithCoder:(id)coder;
- (id)_completionStatusStringValue;
- (id)_transportStringValue;
- (id)serverReadableDictionary;
- (unint64_t)completionTypeFrom:(id)from;
- (unint64_t)transportTypeFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAInviteCompletionInfo

- (id)serverReadableDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _transportStringValue = [(FAInviteCompletionInfo *)self _transportStringValue];
  [dictionary setObject:_transportStringValue forKeyedSubscript:@"transportMode"];

  recipients = [(FAInviteCompletionInfo *)self recipients];
  [dictionary setObject:recipients forKeyedSubscript:@"inviteRecipients"];

  _completionStatusStringValue = [(FAInviteCompletionInfo *)self _completionStatusStringValue];
  [dictionary setObject:_completionStatusStringValue forKeyedSubscript:@"completionStatus"];

  return dictionary;
}

- (id)_transportStringValue
{
  transportType = [(FAInviteCompletionInfo *)self transportType];
  if (transportType - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7CA5630[transportType - 1];
  }
}

- (unint64_t)transportTypeFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isEqualToString:@"messages"])
  {
    v4 = 1;
  }

  else if ([fromCopy isEqualToString:@"mail"])
  {
    v4 = 2;
  }

  else if ([fromCopy isEqualToString:@"airdrop"])
  {
    v4 = 3;
  }

  else if ([fromCopy isEqualToString:@"inviteInPerson"])
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
  status = [(FAInviteCompletionInfo *)self status];
  if (status > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7CA5650[status];
  }
}

- (unint64_t)completionTypeFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isEqualToString:@"failure"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [fromCopy isEqualToString:@"success"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _transportStringValue = [(FAInviteCompletionInfo *)self _transportStringValue];
  [coderCopy encodeObject:_transportStringValue forKey:@"transportMode"];

  recipients = [(FAInviteCompletionInfo *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"inviteRecipients"];

  _completionStatusStringValue = [(FAInviteCompletionInfo *)self _completionStatusStringValue];
  [coderCopy encodeObject:_completionStatusStringValue forKey:@"completionStatus"];
}

- (FAInviteCompletionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAInviteCompletionInfo *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"inviteRecipients"];
    recipients = v5->_recipients;
    v5->_recipients = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transportMode"];
    v5->_transportType = [(FAInviteCompletionInfo *)v5 transportTypeFrom:v11];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completionStatus"];
    v5->_status = [(FAInviteCompletionInfo *)v5 completionTypeFrom:v12];
  }

  return v5;
}

@end