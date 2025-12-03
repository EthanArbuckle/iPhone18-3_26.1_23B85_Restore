@interface IMDTelephonyIncomingMessageContext
- (BOOL)isGroupChat;
- (BOOL)isGroupMessagingEnabled;
- (NSString)destinationCallerID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)replaceCountryCodes:(id)codes;
- (void)replaceParticipants:(id)participants;
- (void)replaceUnformattedIDs:(id)ds;
@end

@implementation IMDTelephonyIncomingMessageContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(IMDTelephonyIncomingMessageContext);
  [(IMDTelephonyIncomingMessageContext *)v4 setCategory:[(IMDTelephonyIncomingMessageContext *)self category]];
  [(IMDTelephonyIncomingMessageContext *)v4 setSubCategory:[(IMDTelephonyIncomingMessageContext *)self subCategory]];
  spamExtensionName = [(IMDTelephonyIncomingMessageContext *)self spamExtensionName];
  [(IMDTelephonyIncomingMessageContext *)v4 setSpamExtensionName:spamExtensionName];

  [(IMDTelephonyIncomingMessageContext *)v4 setIsSendEnabled:[(IMDTelephonyIncomingMessageContext *)self isSendEnabled]];
  [(IMDTelephonyIncomingMessageContext *)v4 setCapability:[(IMDTelephonyIncomingMessageContext *)self capability]];
  chatIdentifier = [(IMDTelephonyIncomingMessageContext *)self chatIdentifier];
  [(IMDTelephonyIncomingMessageContext *)v4 setChatIdentifier:chatIdentifier];

  mySIMIDString = [(IMDTelephonyIncomingMessageContext *)self mySIMIDString];
  [(IMDTelephonyIncomingMessageContext *)v4 setMySIMIDString:mySIMIDString];

  myNumberString = [(IMDTelephonyIncomingMessageContext *)self myNumberString];
  [(IMDTelephonyIncomingMessageContext *)v4 setMyNumberString:myNumberString];

  sender = [(IMDTelephonyIncomingMessageContext *)self sender];
  [(IMDTelephonyIncomingMessageContext *)v4 setSender:sender];

  senderUnformatted = [(IMDTelephonyIncomingMessageContext *)self senderUnformatted];
  [(IMDTelephonyIncomingMessageContext *)v4 setSenderUnformatted:senderUnformatted];

  countryCode = [(IMDTelephonyIncomingMessageContext *)self countryCode];
  [(IMDTelephonyIncomingMessageContext *)v4 setCountryCode:countryCode];

  participants = [(IMDTelephonyIncomingMessageContext *)self participants];
  v13 = [participants mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)v4 setParticipants:v13];

  unformattedIDs = [(IMDTelephonyIncomingMessageContext *)self unformattedIDs];
  v15 = [unformattedIDs mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)v4 setUnformattedIDs:v15];

  countryCodes = [(IMDTelephonyIncomingMessageContext *)self countryCodes];
  v17 = [countryCodes mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)v4 setCountryCodes:v17];

  [(IMDTelephonyIncomingMessageContext *)v4 setStyle:[(IMDTelephonyIncomingMessageContext *)self style]];
  [(IMDTelephonyIncomingMessageContext *)v4 setWasRelayed:[(IMDTelephonyIncomingMessageContext *)self wasRelayed]];
  groupID = [(IMDTelephonyIncomingMessageContext *)self groupID];
  [(IMDTelephonyIncomingMessageContext *)v4 setGroupID:groupID];

  originalGroupID = [(IMDTelephonyIncomingMessageContext *)self originalGroupID];
  [(IMDTelephonyIncomingMessageContext *)v4 setOriginalGroupID:originalGroupID];

  displayName = [(IMDTelephonyIncomingMessageContext *)self displayName];
  [(IMDTelephonyIncomingMessageContext *)v4 setDisplayName:displayName];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v17) = [mEMORY[0x277D1A9B8] isMergeBusinessSenderIndiaEnabled];

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
  myNumberString = [(IMDTelephonyIncomingMessageContext *)self myNumberString];
  mySIMIDString = [(IMDTelephonyIncomingMessageContext *)self mySIMIDString];
  LOBYTE(v4) = [v4 IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:myNumberString simID:mySIMIDString];

  return v4;
}

- (BOOL)isGroupChat
{
  participants = [(IMDTelephonyIncomingMessageContext *)self participants];
  v4 = [participants count] >= 2 && -[IMDTelephonyIncomingMessageContext isGroupMessagingEnabled](self, "isGroupMessagingEnabled");

  return v4;
}

- (NSString)destinationCallerID
{
  myNumberString = [(IMDTelephonyIncomingMessageContext *)self myNumberString];
  v4 = myNumberString;
  if (myNumberString)
  {
    mySIMIDString = myNumberString;
  }

  else
  {
    mySIMIDString = [(IMDTelephonyIncomingMessageContext *)self mySIMIDString];
  }

  v6 = mySIMIDString;

  return v6;
}

- (void)replaceParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)self setParticipants:v4];
}

- (void)replaceUnformattedIDs:(id)ds
{
  v4 = [ds mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)self setUnformattedIDs:v4];
}

- (void)replaceCountryCodes:(id)codes
{
  v4 = [codes mutableCopy];
  [(IMDTelephonyIncomingMessageContext *)self setCountryCodes:v4];
}

@end