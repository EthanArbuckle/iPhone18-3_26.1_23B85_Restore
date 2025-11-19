@interface IMDTelephonyIncomingMessageContext
- (BOOL)isGroupChat;
- (BOOL)isGroupMessagingEnabled;
- (NSString)destinationCallerID;
- (id)copyWithZone:(_NSZone *)a3;
- (void)replaceCountryCodes:(id)a3;
- (void)replaceParticipants:(id)a3;
- (void)replaceUnformattedIDs:(id)a3;
@end

@implementation IMDTelephonyIncomingMessageContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(IMDTelephonyIncomingMessageContext);
  [(IMDTelephonyIncomingMessageContext *)v4 setCategory:[(IMDTelephonyIncomingMessageContext *)self category]];
  [(IMDTelephonyIncomingMessageContext *)v4 setSubCategory:[(IMDTelephonyIncomingMessageContext *)self subCategory]];
  v5 = [(IMDTelephonyIncomingMessageContext *)self spamExtensionName];
  [(IMDTelephonyIncomingMessageContext *)v4 setSpamExtensionName:v5];

  [(IMDTelephonyIncomingMessageContext *)v4 setIsSendEnabled:[(IMDTelephonyIncomingMessageContext *)self isSendEnabled]];
  [(IMDTelephonyIncomingMessageContext *)v4 setCapability:[(IMDTelephonyIncomingMessageContext *)self capability]];
  v6 = [(IMDTelephonyIncomingMessageContext *)self chatIdentifier];
  [(IMDTelephonyIncomingMessageContext *)v4 setChatIdentifier:v6];

  v7 = [(IMDTelephonyIncomingMessageContext *)self mySIMIDString];
  [(IMDTelephonyIncomingMessageContext *)v4 setMySIMIDString:v7];

  v8 = [(IMDTelephonyIncomingMessageContext *)self myNumberString];
  [(IMDTelephonyIncomingMessageContext *)v4 setMyNumberString:v8];

  v9 = [(IMDTelephonyIncomingMessageContext *)self sender];
  [(IMDTelephonyIncomingMessageContext *)v4 setSender:v9];

  v10 = [(IMDTelephonyIncomingMessageContext *)self senderUnformatted];
  [(IMDTelephonyIncomingMessageContext *)v4 setSenderUnformatted:v10];

  v11 = [(IMDTelephonyIncomingMessageContext *)self countryCode];
  [(IMDTelephonyIncomingMessageContext *)v4 setCountryCode:v11];

  v12 = [(IMDTelephonyIncomingMessageContext *)self participants];
  v13 = [v12 mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)v4 setParticipants:v13];

  v14 = [(IMDTelephonyIncomingMessageContext *)self unformattedIDs];
  v15 = [v14 mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)v4 setUnformattedIDs:v15];

  v16 = [(IMDTelephonyIncomingMessageContext *)self countryCodes];
  v17 = [v16 mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)v4 setCountryCodes:v17];

  [(IMDTelephonyIncomingMessageContext *)v4 setStyle:[(IMDTelephonyIncomingMessageContext *)self style]];
  [(IMDTelephonyIncomingMessageContext *)v4 setWasRelayed:[(IMDTelephonyIncomingMessageContext *)self wasRelayed]];
  v18 = [(IMDTelephonyIncomingMessageContext *)self groupID];
  [(IMDTelephonyIncomingMessageContext *)v4 setGroupID:v18];

  v19 = [(IMDTelephonyIncomingMessageContext *)self originalGroupID];
  [(IMDTelephonyIncomingMessageContext *)v4 setOriginalGroupID:v19];

  v20 = [(IMDTelephonyIncomingMessageContext *)self displayName];
  [(IMDTelephonyIncomingMessageContext *)v4 setDisplayName:v20];

  v21 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v17) = [v21 isMergeBusinessSenderIndiaEnabled];

  if (v17)
  {
    [(IMDTelephonyIncomingMessageContext *)v4 setIsMergedBusinessThread:[(IMDTelephonyIncomingMessageContext *)self isMergedBusinessThread]];
  }

  return v4;
}

- (BOOL)isGroupMessagingEnabled
{
  if ([(IMDTelephonyIncomingMessageContext *)self wasRelayed])
  {
    return 1;
  }

  v4 = MEMORY[0x277D1A8F8];
  v5 = [(IMDTelephonyIncomingMessageContext *)self myNumberString];
  v6 = [(IMDTelephonyIncomingMessageContext *)self mySIMIDString];
  LOBYTE(v4) = [v4 IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:v5 simID:v6];

  return v4;
}

- (BOOL)isGroupChat
{
  v3 = [(IMDTelephonyIncomingMessageContext *)self participants];
  v4 = [v3 count] >= 2 && -[IMDTelephonyIncomingMessageContext isGroupMessagingEnabled](self, "isGroupMessagingEnabled");

  return v4;
}

- (NSString)destinationCallerID
{
  v3 = [(IMDTelephonyIncomingMessageContext *)self myNumberString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(IMDTelephonyIncomingMessageContext *)self mySIMIDString];
  }

  v6 = v5;

  return v6;
}

- (void)replaceParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)self setParticipants:v4];
}

- (void)replaceUnformattedIDs:(id)a3
{
  v4 = [a3 mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)self setUnformattedIDs:v4];
}

- (void)replaceCountryCodes:(id)a3
{
  v4 = [a3 mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)self setCountryCodes:v4];
}

@end