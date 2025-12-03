@interface IMAssistantHandleFromContact
- (BOOL)matchesHandleID:(id)d;
- (BOOL)matchesIMHandle:(id)handle;
- (NSString)personHandleLabel;
- (id)_initWithPhoneNumber:(id)number emailAddress:(id)address businessID:(id)d handleType:(int64_t)type contact:(id)contact;
- (id)description;
@end

@implementation IMAssistantHandleFromContact

- (id)_initWithPhoneNumber:(id)number emailAddress:(id)address businessID:(id)d handleType:(int64_t)type contact:(id)contact
{
  v37 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  addressCopy = address;
  dCopy = d;
  contactCopy = contact;
  v34.receiver = self;
  v34.super_class = IMAssistantHandleFromContact;
  v16 = [(IMAssistantHandleFromContact *)&v34 init];
  if (!v16)
  {
    goto LABEL_21;
  }

  if (type <= 1)
  {
    if (!type)
    {
LABEL_10:
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        typeCopy = type;
        v23 = "Initialized IMAssistantHandleFromContact with an unrecognized handle type %ld, returning nil";
        v24 = v22;
        v25 = 12;
LABEL_19:
        _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, v23, buf, v25);
      }

LABEL_20:

LABEL_21:
      v29 = 0;
      goto LABEL_22;
    }

    if (type != 1)
    {
      goto LABEL_15;
    }

    v32 = addressCopy;
    v17 = numberCopy;
    value = [numberCopy value];
    stringValue = [value stringValue];
    handleID = v16->_handleID;
    v16->_handleID = stringValue;

    v21 = 2;
LABEL_14:

    v16->_personHandleType = v21;
    numberCopy = v17;
    addressCopy = v32;
    goto LABEL_15;
  }

  switch(type)
  {
    case 2:
      v26 = addressCopy;
      v17 = numberCopy;
      v32 = v26;
      value2 = [v26 value];
      value = v16->_handleID;
      v16->_handleID = value2;
      v21 = 1;
      goto LABEL_14;
    case 3:
      v32 = addressCopy;
      v17 = numberCopy;
      v28 = dCopy;
      v21 = 0;
      value = v16->_handleID;
      v16->_handleID = v28;
      goto LABEL_14;
    case 4:
      goto LABEL_10;
  }

LABEL_15:
  if (![(NSString *)v16->_handleID length])
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v23 = "Can't initalize IMAssistantHandleFromContact with an empty handle";
      v24 = v22;
      v25 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  objc_storeStrong(&v16->_contact, contact);
  objc_storeStrong(&v16->_labeledPhoneNumber, number);
  objc_storeStrong(&v16->_labeledEmailAddress, address);
  objc_storeStrong(&v16->_businessID, d);
  v16->_handleType = type;
  v29 = v16;
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (NSString)personHandleLabel
{
  handleType = [(IMAssistantHandleFromContact *)self handleType];
  if (handleType == 2)
  {
    labeledEmailAddress = [(IMAssistantHandleFromContact *)self labeledEmailAddress];
    goto LABEL_5;
  }

  if (handleType == 1)
  {
    labeledEmailAddress = [(IMAssistantHandleFromContact *)self labeledPhoneNumber];
LABEL_5:
    v5 = labeledEmailAddress;
    if (labeledEmailAddress)
    {
      v6 = INPersonHandleLabelForCNLabeledValue();
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (BOOL)matchesHandleID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x277CD3E98] __im_assistant_handleTypeForString:dCopy];
  if ([(IMAssistantHandleFromContact *)self handleType]== v5)
  {
    handleID = [(IMAssistantHandleFromContact *)self handleID];
    v7 = handleID;
    if (v5 == 3)
    {
      v11 = [handleID isEqualToString:dCopy];
    }

    else
    {
      if (v5 == 2)
      {
        v8 = IMNormalizeFormattedString();
        v9 = IMNormalizeFormattedString();
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        if (v5 != 1)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v8 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:handleID];
        v9 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:dCopy];
        v10 = [v8 isLikePhoneNumber:v9];
      }

      v11 = v10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)matchesIMHandle:(id)handle
{
  normalizedID = [handle normalizedID];
  if (normalizedID)
  {
    v5 = [(IMAssistantHandleFromContact *)self matchesHandleID:normalizedID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = [(IMAssistantHandleFromContact *)self handleType]- 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:off_279786BC8[v3], self, *(&self->super.isa + qword_2547CA1E8[v3]), self->_contact];
  }

  return v4;
}

@end