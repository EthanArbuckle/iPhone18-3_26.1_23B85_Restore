@interface IMAssistantHandleFromContact
- (BOOL)matchesHandleID:(id)a3;
- (BOOL)matchesIMHandle:(id)a3;
- (NSString)personHandleLabel;
- (id)_initWithPhoneNumber:(id)a3 emailAddress:(id)a4 businessID:(id)a5 handleType:(int64_t)a6 contact:(id)a7;
- (id)description;
@end

@implementation IMAssistantHandleFromContact

- (id)_initWithPhoneNumber:(id)a3 emailAddress:(id)a4 businessID:(id)a5 handleType:(int64_t)a6 contact:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v33 = a5;
  v15 = a7;
  v34.receiver = self;
  v34.super_class = IMAssistantHandleFromContact;
  v16 = [(IMAssistantHandleFromContact *)&v34 init];
  if (!v16)
  {
    goto LABEL_21;
  }

  if (a6 <= 1)
  {
    if (!a6)
    {
LABEL_10:
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v36 = a6;
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

    if (a6 != 1)
    {
      goto LABEL_15;
    }

    v32 = v14;
    v17 = v13;
    v18 = [v13 value];
    v19 = [v18 stringValue];
    handleID = v16->_handleID;
    v16->_handleID = v19;

    v21 = 2;
LABEL_14:

    v16->_personHandleType = v21;
    v13 = v17;
    v14 = v32;
    goto LABEL_15;
  }

  switch(a6)
  {
    case 2:
      v26 = v14;
      v17 = v13;
      v32 = v26;
      v27 = [v26 value];
      v18 = v16->_handleID;
      v16->_handleID = v27;
      v21 = 1;
      goto LABEL_14;
    case 3:
      v32 = v14;
      v17 = v13;
      v28 = v33;
      v21 = 0;
      v18 = v16->_handleID;
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

  objc_storeStrong(&v16->_contact, a7);
  objc_storeStrong(&v16->_labeledPhoneNumber, a3);
  objc_storeStrong(&v16->_labeledEmailAddress, a4);
  objc_storeStrong(&v16->_businessID, a5);
  v16->_handleType = a6;
  v29 = v16;
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (NSString)personHandleLabel
{
  v3 = [(IMAssistantHandleFromContact *)self handleType];
  if (v3 == 2)
  {
    v4 = [(IMAssistantHandleFromContact *)self labeledEmailAddress];
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = [(IMAssistantHandleFromContact *)self labeledPhoneNumber];
LABEL_5:
    v5 = v4;
    if (v4)
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

- (BOOL)matchesHandleID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CD3E98] __im_assistant_handleTypeForString:v4];
  if ([(IMAssistantHandleFromContact *)self handleType]== v5)
  {
    v6 = [(IMAssistantHandleFromContact *)self handleID];
    v7 = v6;
    if (v5 == 3)
    {
      v11 = [v6 isEqualToString:v4];
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

        v8 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v6];
        v9 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v4];
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

- (BOOL)matchesIMHandle:(id)a3
{
  v4 = [a3 normalizedID];
  if (v4)
  {
    v5 = [(IMAssistantHandleFromContact *)self matchesHandleID:v4];
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