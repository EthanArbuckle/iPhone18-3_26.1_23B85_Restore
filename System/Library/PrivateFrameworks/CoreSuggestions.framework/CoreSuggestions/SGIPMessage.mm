@interface SGIPMessage
+ (id)messageWithIPMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (SGIPMessage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGIPMessage

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGIPMessage *)self isEqualToMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToMessage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = self->_messageId;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v8 = self->_sender;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(SGIPPerson *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_27;
    }
  }

  v11 = self->_recipients;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSArray *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v14 = self->_subject;
  v15 = v14;
  if (v14 == v4[5])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = self->_dateSent;
  v18 = v17;
  if (v17 == v4[6])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (self->_isSent != *(v4 + 8) || self->_isGroupConversation != *(v4 + 9) || self->_isSenderSignificant != *(v4 + 10))
  {
    goto LABEL_27;
  }

  v20 = self->_messageUnits;
  v21 = v20;
  if (v20 == v4[7])
  {
  }

  else
  {
    v22 = [(NSArray *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
LABEL_27:
      v23 = 0;
      goto LABEL_28;
    }
  }

  v25 = self->_type;
  v26 = v25;
  if (v25 == v4[8])
  {
    v23 = 1;
  }

  else
  {
    v23 = [(NSString *)v25 isEqual:?];
  }

LABEL_28:
  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_messageId copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(SGIPPerson *)self->_sender copyWithZone:a3];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSArray *)self->_recipients copyWithZone:a3];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(NSString *)self->_subject copyWithZone:a3];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    v14 = [(NSDate *)self->_dateSent copyWithZone:a3];
    v15 = *(v5 + 48);
    *(v5 + 48) = v14;

    *(v5 + 8) = self->_isSent;
    *(v5 + 9) = self->_isGroupConversation;
    *(v5 + 10) = self->_isSenderSignificant;
    v16 = [(NSArray *)self->_messageUnits copyWithZone:a3];
    v17 = *(v5 + 56);
    *(v5 + 56) = v16;

    v18 = [(NSString *)self->_type copyWithZone:a3];
    v19 = *(v5 + 64);
    *(v5 + 64) = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  messageId = self->_messageId;
  v5 = a3;
  [v5 encodeObject:messageId forKey:@"mid"];
  [v5 encodeObject:self->_sender forKey:@"sen"];
  [v5 encodeObject:self->_recipients forKey:@"rec"];
  [v5 encodeObject:self->_subject forKey:@"sbj"];
  [v5 encodeObject:self->_dateSent forKey:@"dat"];
  [v5 encodeBool:self->_isSent forKey:@"snt"];
  [v5 encodeBool:self->_isGroupConversation forKey:@"igc"];
  [v5 encodeBool:self->_isSenderSignificant forKey:@"iss"];
  [v5 encodeObject:self->_messageUnits forKey:@"mun"];
  [v5 encodeObject:self->_type forKey:@"typ"];
}

- (SGIPMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mid"];
  [(SGIPMessage *)v5 setMessageId:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sen"];
  [(SGIPMessage *)v5 setSender:v7];

  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"rec"];
  [(SGIPMessage *)v5 setRecipients:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sbj"];
  [(SGIPMessage *)v5 setSubject:v13];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dat"];
  [(SGIPMessage *)v5 setDateSent:v14];

  -[SGIPMessage setIsSent:](v5, "setIsSent:", [v4 decodeBoolForKey:@"snt"]);
  -[SGIPMessage setIsGroupConversation:](v5, "setIsGroupConversation:", [v4 decodeBoolForKey:@"igc"]);
  -[SGIPMessage setIsSenderSignificant:](v5, "setIsSenderSignificant:", [v4 decodeBoolForKey:@"iss"]);
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v17 = objc_opt_class();
  v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v15);
  v19 = [v4 decodeObjectOfClasses:v18 forKey:@"mun"];
  [(SGIPMessage *)v5 setMessageUnits:v19];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typ"];
  [(SGIPMessage *)v5 setType:v20];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  messageId = self->_messageId;
  v5 = [(SGIPPerson *)self->_sender handle];
  v6 = [v3 initWithFormat:@"<SGIPMessage id:%@ s:%@ sbj:'%@' d:%@>", messageId, v5, self->_subject, self->_dateSent];

  return v6;
}

+ (id)messageWithIPMessage:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 identifier];
  v6 = [v5 copy];
  [v4 setMessageId:v6];

  v7 = [v3 sender];
  v8 = [SGIPPerson personWithIPPerson:v7];
  v36 = v4;
  [v4 setSender:v8];

  v9 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = [v3 recipients];
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [SGIPPerson personWithIPPerson:v15];
        [v9 addObject:v17];

        objc_autoreleasePoolPop(v16);
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  [v36 setRecipients:v9];
  v18 = [v3 subject];
  v19 = [v18 copy];
  [v36 setSubject:v19];

  v20 = [v3 dateSent];
  v21 = [v20 copy];
  [v36 setDateSent:v21];

  [v36 setIsSent:{objc_msgSend(v3, "isSent")}];
  [v36 setIsGroupConversation:{objc_msgSend(v3, "isGroupConversation")}];
  [v36 setIsSenderSignificant:{objc_msgSend(v3, "isSenderSignificant")}];
  v22 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = [v3 messageUnits];
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v37 + 1) + 8 * j);
        v29 = objc_autoreleasePoolPush();
        v30 = [v28 text];

        if (v30)
        {
          v31 = [v28 text];
          [v22 addObject:v31];
        }

        objc_autoreleasePoolPop(v29);
      }

      v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v25);
  }

  [v36 setMessageUnits:v22];
  v32 = [v3 type];
  v33 = [v32 copy];
  [v36 setType:v33];

  v34 = *MEMORY[0x1E69E9840];

  return v36;
}

@end