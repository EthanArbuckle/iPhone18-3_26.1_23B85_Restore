@interface IMCrossServiceAssociationMessagePipelineParameter
- (IMCrossServiceAssociationMessagePipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4;
@end

@implementation IMCrossServiceAssociationMessagePipelineParameter

- (IMCrossServiceAssociationMessagePipelineParameter)initWithDefusedMessage:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = IMCrossServiceAssociationMessagePipelineParameter;
  v8 = [(IMCrossServiceAssociationMessagePipelineParameter *)&v35 init];
  v9 = v8;
  if (v8)
  {
    replicationSourceServiceName = v8->_replicationSourceServiceName;
    v8->_replicationSourceServiceName = 0;

    v11 = [v7 toIdentifier];
    toIdentifier = v9->_toIdentifier;
    v9->_toIdentifier = v11;

    v13 = [v7 fromIdentifier];
    fromIdentifier = v9->_fromIdentifier;
    v9->_fromIdentifier = v13;

    v9->_isFromMe = [v7 isFromMe];
    v15 = [(IMCrossServiceAssociationMessagePipelineParameter *)v9 fromIdentifier];
    v16 = [v15 _stripFZIDPrefix];
    fromDisplayID = v9->_fromDisplayID;
    v9->_fromDisplayID = v16;

    groupID = v9->_groupID;
    v9->_groupID = 0;

    currentGroupName = v9->_currentGroupName;
    v9->_currentGroupName = 0;

    participantIdentifiers = v9->_participantIdentifiers;
    v9->_participantIdentifiers = 0;

    v9->_crossServiceDeduplicationMechanism = 1;
    v21 = [v6 replacementGUID];
    v22 = [v21 UUIDString];
    replacementGUID = v9->_replacementGUID;
    v9->_replacementGUID = v22;

    v24 = [v6 metadata];
    v25 = [v24 messageGUID];
    v26 = [v25 UUIDString];
    GUID = v9->_GUID;
    v9->_GUID = v26;

    v28 = [v6 metadata];
    v29 = [v28 storageContext];
    v9->_isFromStorage = [v29 isFromStorage];

    v30 = [v6 metadata];
    v31 = [v30 storageContext];
    v9->_isLastFromStorage = [v31 isLastFromStorage];

    v32 = [v7 batchContext];
    batchContext = v9->_batchContext;
    v9->_batchContext = v32;
  }

  return v9;
}

@end