@interface IMTranscriptChatItem
- (BOOL)isContiguousWithChatItem:(id)a3;
- (NSString)description;
- (NSString)serviceName;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setGUID:(id)a3;
@end

@implementation IMTranscriptChatItem

- (NSString)serviceName
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMTranscriptChatItem;
  v4 = [(IMChatItem *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ (%@)", v4, self->_guid);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_(v4, v8, v7);

  return v9;
}

- (BOOL)isContiguousWithChatItem:(id)a3
{
  v4 = a3;
  v5 = &selRef_setCallProviderManager_;
  if (!objc_msgSend_conformsToProtocol_(self, v6, &unk_1F1BB2640))
  {
    goto LABEL_41;
  }

  if (objc_msgSend_isEditedMessageHistory(self, v7, v8))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }
  }

  if (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend_messageHighlightChatItem(self, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12) || !objc_msgSend_conformsToProtocol_(v4, v10, &unk_1F1BB2640) || (objc_msgSend_isReplyContextPreview(self, v13, v14) & 1) != 0 || (objc_msgSend_isReplyContextPreview(v4, v15, v16) & 1) != 0 || (objc_msgSend_itemIsThreadOriginator(self, v17, v18) & 1) != 0 || (objc_msgSend_itemIsThreadOriginator(v4, v19, v20))
  {
LABEL_41:
    v9 = 0;
    goto LABEL_42;
  }

  v23 = objc_msgSend__item(self, v21, v22);
  isReply = objc_msgSend_isReply(v23, v24, v25);
  v29 = isReply;
  if (isReply && (objc_msgSend__item(v4, v27, v28), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isReply(v5, v30, v31)))
  {
  }

  else
  {
    v34 = objc_msgSend__item(self, v27, v28);
    if (objc_msgSend_isReply(v34, v35, v36))
    {

      if (v29)
      {
      }

      goto LABEL_41;
    }

    v39 = objc_msgSend__item(v4, v37, v38);
    v42 = objc_msgSend_isReply(v39, v40, v41);

    if (v29)
    {
    }

    if (v42)
    {
      goto LABEL_41;
    }
  }

  v43 = objc_msgSend__item(self, v32, v33);
  v46 = objc_msgSend__item(v4, v44, v45);

  if (v43 != v46)
  {
    isEditedMessageHistory = objc_msgSend_isEditedMessageHistory(self, v47, v48);
    if (isEditedMessageHistory == objc_msgSend_isEditedMessageHistory(v4, v50, v51))
    {
      v54 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v52, v53);
      isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v54, v55, v56);

      if (!isGroupTypingIndicatorsEnabled || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v60 = self;
            v61 = v4;
            v64 = objc_msgSend_requiresSiriAttribution(v60, v62, v63);
            v69 = v64 ^ objc_msgSend_requiresSiriAttribution(v61, v65, v66);
            if ((v69 & 1) != 0 || objc_msgSend_requiresFaceTimeAttribution(v60, v67, v68) && objc_msgSend_requiresFaceTimeAttribution(v61, v70, v71) && (v74 = objc_msgSend_isFromMe(v60, v72, v73), v74 == objc_msgSend_isFromMe(v61, v75, v76)))
            {
              v9 = v69 ^ 1;

              goto LABEL_42;
            }
          }
        }

        v77 = objc_msgSend_isFromMe(self, v58, v59);
        if (v77 == objc_msgSend_isFromMe(v4, v78, v79))
        {
          v82 = objc_msgSend_time(v4, v80, v81);
          v85 = objc_msgSend_time(self, v83, v84);
          objc_msgSend_timeIntervalSinceDate_(v82, v86, v85);
          v88 = fabs(v87);

          if (v88 <= 60.0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v9 = objc_opt_isKindOfClass() ^ 1;
              goto LABEL_42;
            }
          }
        }
      }
    }

    goto LABEL_41;
  }

LABEL_4:
  v9 = 1;
LABEL_42:

  return v9 & 1;
}

- (void)_setGUID:(id)a3
{
  v4 = a3;
  if (self->_guid != v4)
  {
    v8 = v4;
    v7 = objc_msgSend_copy(v4, v5, v6);

    objc_storeStrong(&self->_guid, v7);
    v4 = v7;
  }
}

@end