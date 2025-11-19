@interface IMAccount(CNFRegInternalUtilities)
- (uint64_t)CNFRegIsSignedOut;
- (uint64_t)CNFRegRegisteringLocalPhoneNumberSentinelAlias;
@end

@implementation IMAccount(CNFRegInternalUtilities)

- (uint64_t)CNFRegRegisteringLocalPhoneNumberSentinelAlias
{
  v16 = *MEMORY[0x277D85DE8];
  if (CNFRegSupportsLocalPhoneNumberSentinelAlias() && [a1 accountType] == 1 && objc_msgSend(a1, "registrationStatus") >= 3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [a1 aliases];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v12;
      v7 = *MEMORY[0x277D19478];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v5 |= [*(*(&v11 + 1) + 8 * i) isEqualToIgnoringCase:v7];
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (uint64_t)CNFRegIsSignedOut
{
  if ([a1 isOperational] & 1) != 0 || (objc_msgSend(a1, "canSendMessages"))
  {
    return 0;
  }

  return [a1 BOOLForKey:@"AccountSignedOut"];
}

@end