@interface IMTranscriptBackgroundCommandPipelineParameter
- (IMTranscriptBackgroundCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
- (id)description;
@end

@implementation IMTranscriptBackgroundCommandPipelineParameter

- (IMTranscriptBackgroundCommandPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = IMTranscriptBackgroundCommandPipelineParameter;
  v9 = [(IMTranscriptBackgroundCommandPipelineParameter *)&v20 init];
  if (v9)
  {
    v9->_isFromMe = [dataCopy isFromMe];
    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v9->_fromIdentifier;
    v9->_fromIdentifier = fromIdentifier;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v9->_toIdentifier;
    v9->_toIdentifier = toIdentifier;

    objc_storeStrong(&v9->_transcriptBackgroundCommand, message);
    if (objc_opt_respondsToSelector())
    {
      if ([messageCopy has_replicationSourceID])
      {
        replicationSourceID = [messageCopy replicationSourceID];
        v15 = +[IMDServiceController sharedController];
        v16 = [v15 serviceWithReplicationSourceID:replicationSourceID];

        internalName = [v16 internalName];
        replicationSourceServiceName = v9->_replicationSourceServiceName;
        v9->_replicationSourceServiceName = internalName;
      }
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(IMTranscriptBackgroundCommandPipelineParameter *)self isFromMe])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  transcriptBackgroundCommand = [(IMTranscriptBackgroundCommandPipelineParameter *)self transcriptBackgroundCommand];
  v6 = [v3 stringWithFormat:@"<IMTranscriptBackgroundCommandPipelineParameter %p isFromMe = %@; OUTPUT transcriptBackgroundCommand = %@;", self, v4, transcriptBackgroundCommand];;

  return v6;
}

@end