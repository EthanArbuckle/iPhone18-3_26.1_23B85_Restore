@interface IMTranscriptBackgroundCommandPipelineParameter
- (IMTranscriptBackgroundCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
- (id)description;
@end

@implementation IMTranscriptBackgroundCommandPipelineParameter

- (IMTranscriptBackgroundCommandPipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = IMTranscriptBackgroundCommandPipelineParameter;
  v9 = [(IMTranscriptBackgroundCommandPipelineParameter *)&v20 init];
  if (v9)
  {
    v9->_isFromMe = [v8 isFromMe];
    v10 = [v8 fromIdentifier];
    fromIdentifier = v9->_fromIdentifier;
    v9->_fromIdentifier = v10;

    v12 = [v8 toIdentifier];
    toIdentifier = v9->_toIdentifier;
    v9->_toIdentifier = v12;

    objc_storeStrong(&v9->_transcriptBackgroundCommand, a3);
    if (objc_opt_respondsToSelector())
    {
      if ([v7 has_replicationSourceID])
      {
        v14 = [v7 replicationSourceID];
        v15 = +[IMDServiceController sharedController];
        v16 = [v15 serviceWithReplicationSourceID:v14];

        v17 = [v16 internalName];
        replicationSourceServiceName = v9->_replicationSourceServiceName;
        v9->_replicationSourceServiceName = v17;
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

  v5 = [(IMTranscriptBackgroundCommandPipelineParameter *)self transcriptBackgroundCommand];
  v6 = [v3 stringWithFormat:@"<IMTranscriptBackgroundCommandPipelineParameter %p isFromMe = %@; OUTPUT transcriptBackgroundCommand = %@;", self, v4, v5];;

  return v6;
}

@end