@interface IMSyndicationActionPipelineParameter
- (IMSyndicationActionPipelineParameter)initWithDefusedSyndicationAction:(id)action idsTrustedData:(id)data pipelineResources:(id)resources;
- (_NSRange)syndicatedMessagePartRange;
- (id)createSyndicationActionWithChat:(id)chat;
- (id)description;
@end

@implementation IMSyndicationActionPipelineParameter

- (IMSyndicationActionPipelineParameter)initWithDefusedSyndicationAction:(id)action idsTrustedData:(id)data pipelineResources:(id)resources
{
  actionCopy = action;
  dataCopy = data;
  v49.receiver = self;
  v49.super_class = IMSyndicationActionPipelineParameter;
  v9 = [(IMSyndicationActionPipelineParameter *)&v49 init];
  if (!v9)
  {
    goto LABEL_9;
  }

  version = [actionCopy version];
  v9->_version = version;
  v11 = *MEMORY[0x277D1A798];
  if (v11 != version)
  {
    v37 = IMLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0738(&v9->_version, v11, v37);
    }

    goto LABEL_13;
  }

  v9->_actionType = [actionCopy actionType];
  v9->_encodedSyndicationStartDate = [actionCopy encodedSyndicationStartDate];
  v9->_itemType = [actionCopy itemType];
  messagePartGUID = [actionCopy messagePartGUID];
  messagePartGUID = v9->_messagePartGUID;
  v9->_messagePartGUID = messagePartGUID;

  v9->_syndicatedMessagePartRange.location = [actionCopy syndicatedMessagePartRange];
  v9->_syndicatedMessagePartRange.length = v14;
  groupContext = [actionCopy groupContext];
  groupID = [groupContext groupID];
  groupID = v9->_groupID;
  v9->_groupID = groupID;

  currentGroupName = [groupContext currentGroupName];
  currentGroupName = v9->_currentGroupName;
  v9->_currentGroupName = currentGroupName;

  participantDestinationIdentifiers = [groupContext participantDestinationIdentifiers];
  participantIdentifiers = v9->_participantIdentifiers;
  v9->_participantIdentifiers = participantDestinationIdentifiers;

  v9->_isFromMe = [dataCopy isFromMe];
  fromIdentifier = [dataCopy fromIdentifier];
  v23 = [fromIdentifier copy];
  fromIdentifier = v9->_fromIdentifier;
  v9->_fromIdentifier = v23;

  toIdentifier = [dataCopy toIdentifier];
  v26 = [toIdentifier copy];
  toIdentifier = v9->_toIdentifier;
  v9->_toIdentifier = v26;

  v28 = v9->_participantIdentifiers;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_22B52F494;
  v47[3] = &unk_278703AF0;
  v29 = v9;
  v48 = v29;
  v30 = [(NSArray *)v28 __imArrayByFilteringWithBlock:v47];
  _IDsFromURIs = [v30 _IDsFromURIs];

  _stripFZIDPrefix = [(NSString *)v9->_fromIdentifier _stripFZIDPrefix];
  if (-[NSArray count](v9->_participantIdentifiers, "count") > 2 || !v9->_isFromMe || ![_IDsFromURIs count])
  {
    goto LABEL_8;
  }

  if ([_IDsFromURIs count] != 1)
  {
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D07C8(v39, v40, v41, v42, v43, v44, v45, v46);
    }

LABEL_13:
    v36 = 0;
    goto LABEL_14;
  }

  lastObject = [_IDsFromURIs lastObject];
  _stripFZIDPrefix2 = [lastObject _stripFZIDPrefix];

  _stripFZIDPrefix = _stripFZIDPrefix2;
LABEL_8:
  fromDisplayID = v29->_fromDisplayID;
  v29->_fromDisplayID = _stripFZIDPrefix;

LABEL_9:
  v36 = v9;
LABEL_14:

  return v36;
}

- (id)createSyndicationActionWithChat:(id)chat
{
  chatCopy = chat;
  if (!chatCopy)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D08B4(v5, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_14;
  }

  v5 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:self->_encodedSyndicationStartDate];
  actionType = self->_actionType;
  itemType = self->_itemType;
  if (itemType == 2)
  {
    v18 = (actionType >> 2) & 1;
    v19 = objc_alloc(MEMORY[0x277D1A920]);
    guid = [chatCopy guid];
    v10 = [v19 initWithChatGUID:guid syndicationStartDate:v5 autoDonateMessages:v18];
    goto LABEL_8;
  }

  if (itemType == 1)
  {
    v8 = objc_alloc(MEMORY[0x277D1AAA0]);
    guid = [chatCopy guid];
    v10 = [v8 initWithChatGUID:guid syndicationStartDate:v5 syndicationActionType:actionType encodedMessagePartGUID:self->_messagePartGUID messagePartRange:{self->_syndicatedMessagePartRange.location, self->_syndicatedMessagePartRange.length}];
LABEL_8:
    v20 = v10;

    if (v20)
    {
      goto LABEL_15;
    }

    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0800(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_13;
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D0838(itemType, v21);
  }

LABEL_13:

LABEL_14:
  v20 = 0;
LABEL_15:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  syndicationAction = [(IMSyndicationActionPipelineParameter *)self syndicationAction];
  v5 = [v3 stringWithFormat:@"<IMSyndicationActionPipelineParameter %p OUTPUT syndicationAction = %@>", self, syndicationAction];;

  return v5;
}

- (_NSRange)syndicatedMessagePartRange
{
  length = self->_syndicatedMessagePartRange.length;
  location = self->_syndicatedMessagePartRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end