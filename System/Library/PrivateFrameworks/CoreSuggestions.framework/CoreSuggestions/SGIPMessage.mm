@interface SGIPMessage
+ (id)messageWithIPMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (SGIPMessage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGIPMessage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGIPMessage *)self isEqualToMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    goto LABEL_27;
  }

  v5 = self->_messageId;
  v6 = v5;
  if (v5 == messageCopy[2])
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
  if (v8 == messageCopy[3])
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
  if (v11 == messageCopy[4])
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
  if (v14 == messageCopy[5])
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
  if (v17 == messageCopy[6])
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

  if (self->_isSent != *(messageCopy + 8) || self->_isGroupConversation != *(messageCopy + 9) || self->_isSenderSignificant != *(messageCopy + 10))
  {
    goto LABEL_27;
  }

  v20 = self->_messageUnits;
  v21 = v20;
  if (v20 == messageCopy[7])
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
  if (v25 == messageCopy[8])
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

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_messageId copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(SGIPPerson *)self->_sender copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSArray *)self->_recipients copyWithZone:zone];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(NSString *)self->_subject copyWithZone:zone];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    v14 = [(NSDate *)self->_dateSent copyWithZone:zone];
    v15 = *(v5 + 48);
    *(v5 + 48) = v14;

    *(v5 + 8) = self->_isSent;
    *(v5 + 9) = self->_isGroupConversation;
    *(v5 + 10) = self->_isSenderSignificant;
    v16 = [(NSArray *)self->_messageUnits copyWithZone:zone];
    v17 = *(v5 + 56);
    *(v5 + 56) = v16;

    v18 = [(NSString *)self->_type copyWithZone:zone];
    v19 = *(v5 + 64);
    *(v5 + 64) = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  messageId = self->_messageId;
  coderCopy = coder;
  [coderCopy encodeObject:messageId forKey:@"mid"];
  [coderCopy encodeObject:self->_sender forKey:@"sen"];
  [coderCopy encodeObject:self->_recipients forKey:@"rec"];
  [coderCopy encodeObject:self->_subject forKey:@"sbj"];
  [coderCopy encodeObject:self->_dateSent forKey:@"dat"];
  [coderCopy encodeBool:self->_isSent forKey:@"snt"];
  [coderCopy encodeBool:self->_isGroupConversation forKey:@"igc"];
  [coderCopy encodeBool:self->_isSenderSignificant forKey:@"iss"];
  [coderCopy encodeObject:self->_messageUnits forKey:@"mun"];
  [coderCopy encodeObject:self->_type forKey:@"typ"];
}

- (SGIPMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mid"];
  [(SGIPMessage *)v5 setMessageId:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sen"];
  [(SGIPMessage *)v5 setSender:v7];

  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"rec"];
  [(SGIPMessage *)v5 setRecipients:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sbj"];
  [(SGIPMessage *)v5 setSubject:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dat"];
  [(SGIPMessage *)v5 setDateSent:v14];

  -[SGIPMessage setIsSent:](v5, "setIsSent:", [coderCopy decodeBoolForKey:@"snt"]);
  -[SGIPMessage setIsGroupConversation:](v5, "setIsGroupConversation:", [coderCopy decodeBoolForKey:@"igc"]);
  -[SGIPMessage setIsSenderSignificant:](v5, "setIsSenderSignificant:", [coderCopy decodeBoolForKey:@"iss"]);
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v17 = objc_opt_class();
  v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v15);
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"mun"];
  [(SGIPMessage *)v5 setMessageUnits:v19];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typ"];
  [(SGIPMessage *)v5 setType:v20];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  messageId = self->_messageId;
  handle = [(SGIPPerson *)self->_sender handle];
  v6 = [v3 initWithFormat:@"<SGIPMessage id:%@ s:%@ sbj:'%@' d:%@>", messageId, handle, self->_subject, self->_dateSent];

  return v6;
}

+ (id)messageWithIPMessage:(id)message
{
  v47 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = objc_opt_new();
  identifier = [messageCopy identifier];
  v6 = [identifier copy];
  [v4 setMessageId:v6];

  sender = [messageCopy sender];
  v8 = [SGIPPerson personWithIPPerson:sender];
  v36 = v4;
  [v4 setSender:v8];

  v9 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  recipients = [messageCopy recipients];
  v11 = [recipients countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          objc_enumerationMutation(recipients);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [SGIPPerson personWithIPPerson:v15];
        [v9 addObject:v17];

        objc_autoreleasePoolPop(v16);
      }

      v12 = [recipients countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  [v36 setRecipients:v9];
  subject = [messageCopy subject];
  v19 = [subject copy];
  [v36 setSubject:v19];

  dateSent = [messageCopy dateSent];
  v21 = [dateSent copy];
  [v36 setDateSent:v21];

  [v36 setIsSent:{objc_msgSend(messageCopy, "isSent")}];
  [v36 setIsGroupConversation:{objc_msgSend(messageCopy, "isGroupConversation")}];
  [v36 setIsSenderSignificant:{objc_msgSend(messageCopy, "isSenderSignificant")}];
  v22 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  messageUnits = [messageCopy messageUnits];
  v24 = [messageUnits countByEnumeratingWithState:&v37 objects:v45 count:16];
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
          objc_enumerationMutation(messageUnits);
        }

        v28 = *(*(&v37 + 1) + 8 * j);
        v29 = objc_autoreleasePoolPush();
        text = [v28 text];

        if (text)
        {
          text2 = [v28 text];
          [v22 addObject:text2];
        }

        objc_autoreleasePoolPop(v29);
      }

      v25 = [messageUnits countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v25);
  }

  [v36 setMessageUnits:v22];
  type = [messageCopy type];
  v33 = [type copy];
  [v36 setType:v33];

  v34 = *MEMORY[0x1E69E9840];

  return v36;
}

@end