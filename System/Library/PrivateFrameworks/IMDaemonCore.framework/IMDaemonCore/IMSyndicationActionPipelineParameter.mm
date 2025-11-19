@interface IMSyndicationActionPipelineParameter
- (IMSyndicationActionPipelineParameter)initWithDefusedSyndicationAction:(id)a3 idsTrustedData:(id)a4 pipelineResources:(id)a5;
- (_NSRange)syndicatedMessagePartRange;
- (id)createSyndicationActionWithChat:(id)a3;
- (id)description;
@end

@implementation IMSyndicationActionPipelineParameter

- (IMSyndicationActionPipelineParameter)initWithDefusedSyndicationAction:(id)a3 idsTrustedData:(id)a4 pipelineResources:(id)a5
{
  v7 = a3;
  v8 = a4;
  v49.receiver = self;
  v49.super_class = IMSyndicationActionPipelineParameter;
  v9 = [(IMSyndicationActionPipelineParameter *)&v49 init];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v7 version];
  v9->_version = v10;
  v11 = *MEMORY[0x277D1A798];
  if (v11 != v10)
  {
    v37 = IMLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0738(&v9->_version, v11, v37);
    }

    goto LABEL_13;
  }

  v9->_actionType = [v7 actionType];
  v9->_encodedSyndicationStartDate = [v7 encodedSyndicationStartDate];
  v9->_itemType = [v7 itemType];
  v12 = [v7 messagePartGUID];
  messagePartGUID = v9->_messagePartGUID;
  v9->_messagePartGUID = v12;

  v9->_syndicatedMessagePartRange.location = [v7 syndicatedMessagePartRange];
  v9->_syndicatedMessagePartRange.length = v14;
  v15 = [v7 groupContext];
  v16 = [v15 groupID];
  groupID = v9->_groupID;
  v9->_groupID = v16;

  v18 = [v15 currentGroupName];
  currentGroupName = v9->_currentGroupName;
  v9->_currentGroupName = v18;

  v20 = [v15 participantDestinationIdentifiers];
  participantIdentifiers = v9->_participantIdentifiers;
  v9->_participantIdentifiers = v20;

  v9->_isFromMe = [v8 isFromMe];
  v22 = [v8 fromIdentifier];
  v23 = [v22 copy];
  fromIdentifier = v9->_fromIdentifier;
  v9->_fromIdentifier = v23;

  v25 = [v8 toIdentifier];
  v26 = [v25 copy];
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
  v31 = [v30 _IDsFromURIs];

  v32 = [(NSString *)v9->_fromIdentifier _stripFZIDPrefix];
  if (-[NSArray count](v9->_participantIdentifiers, "count") > 2 || !v9->_isFromMe || ![v31 count])
  {
    goto LABEL_8;
  }

  if ([v31 count] != 1)
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

  v33 = [v31 lastObject];
  v34 = [v33 _stripFZIDPrefix];

  v32 = v34;
LABEL_8:
  fromDisplayID = v29->_fromDisplayID;
  v29->_fromDisplayID = v32;

LABEL_9:
  v36 = v9;
LABEL_14:

  return v36;
}

- (id)createSyndicationActionWithChat:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v9 = [v4 guid];
    v10 = [v19 initWithChatGUID:v9 syndicationStartDate:v5 autoDonateMessages:v18];
    goto LABEL_8;
  }

  if (itemType == 1)
  {
    v8 = objc_alloc(MEMORY[0x277D1AAA0]);
    v9 = [v4 guid];
    v10 = [v8 initWithChatGUID:v9 syndicationStartDate:v5 syndicationActionType:actionType encodedMessagePartGUID:self->_messagePartGUID messagePartRange:{self->_syndicatedMessagePartRange.location, self->_syndicatedMessagePartRange.length}];
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
  v4 = [(IMSyndicationActionPipelineParameter *)self syndicationAction];
  v5 = [v3 stringWithFormat:@"<IMSyndicationActionPipelineParameter %p OUTPUT syndicationAction = %@>", self, v4];;

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