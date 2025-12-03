@interface IMCrossServiceAssociationMessagePipelineParameter
- (IMCrossServiceAssociationMessagePipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data;
@end

@implementation IMCrossServiceAssociationMessagePipelineParameter

- (IMCrossServiceAssociationMessagePipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v35.receiver = self;
  v35.super_class = IMCrossServiceAssociationMessagePipelineParameter;
  v8 = [(IMCrossServiceAssociationMessagePipelineParameter *)&v35 init];
  v9 = v8;
  if (v8)
  {
    replicationSourceServiceName = v8->_replicationSourceServiceName;
    v8->_replicationSourceServiceName = 0;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v9->_toIdentifier;
    v9->_toIdentifier = toIdentifier;

    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v9->_fromIdentifier;
    v9->_fromIdentifier = fromIdentifier;

    v9->_isFromMe = [dataCopy isFromMe];
    fromIdentifier2 = [(IMCrossServiceAssociationMessagePipelineParameter *)v9 fromIdentifier];
    _stripFZIDPrefix = [fromIdentifier2 _stripFZIDPrefix];
    fromDisplayID = v9->_fromDisplayID;
    v9->_fromDisplayID = _stripFZIDPrefix;

    groupID = v9->_groupID;
    v9->_groupID = 0;

    currentGroupName = v9->_currentGroupName;
    v9->_currentGroupName = 0;

    participantIdentifiers = v9->_participantIdentifiers;
    v9->_participantIdentifiers = 0;

    v9->_crossServiceDeduplicationMechanism = 1;
    replacementGUID = [messageCopy replacementGUID];
    uUIDString = [replacementGUID UUIDString];
    replacementGUID = v9->_replacementGUID;
    v9->_replacementGUID = uUIDString;

    metadata = [messageCopy metadata];
    messageGUID = [metadata messageGUID];
    uUIDString2 = [messageGUID UUIDString];
    GUID = v9->_GUID;
    v9->_GUID = uUIDString2;

    metadata2 = [messageCopy metadata];
    storageContext = [metadata2 storageContext];
    v9->_isFromStorage = [storageContext isFromStorage];

    metadata3 = [messageCopy metadata];
    storageContext2 = [metadata3 storageContext];
    v9->_isLastFromStorage = [storageContext2 isLastFromStorage];

    batchContext = [dataCopy batchContext];
    batchContext = v9->_batchContext;
    v9->_batchContext = batchContext;
  }

  return v9;
}

@end