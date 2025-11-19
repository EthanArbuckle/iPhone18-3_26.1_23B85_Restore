@interface IDSAccount(MSPExtras)
- (id)_msp_validityDescription;
@end

@implementation IDSAccount(MSPExtras)

- (id)_msp_validityDescription
{
  v2 = MEMORY[0x277CCACA8];
  if ([a1 accountType] == 1)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  if ([a1 isActive])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  if ([a1 canSend])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v2 stringWithFormat:@"isAppleID: %@, isActive: %@, canSend: %@", v4, v6, v7];

  return v8;
}

@end