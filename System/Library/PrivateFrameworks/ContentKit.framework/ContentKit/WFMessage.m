@interface WFMessage
- (WFMessage)initWithCoder:(id)a3;
- (WFMessage)initWithContent:(id)a3 conversationID:(id)a4 recipientContactIDs:(id)a5 recipients:(id)a6 senderContactID:(id)a7 senderHandles:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFMessage

- (WFMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFMessage *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"recipientContactIDs"];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"recipients"];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderContactID"];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"senderHandles"];

    v5 = [(WFMessage *)v5 initWithContent:v6 conversationID:v7 recipientContactIDs:v11 recipients:v15 senderContactID:v16 senderHandles:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFMessage *)self content];
  [v4 encodeObject:v5 forKey:@"content"];

  v6 = [(WFMessage *)self conversationID];
  [v4 encodeObject:v6 forKey:@"conversationID"];

  v7 = [(WFMessage *)self recipientContactIDs];
  [v4 encodeObject:v7 forKey:@"recipientContactIDs"];

  v8 = [(WFMessage *)self recipients];
  [v4 encodeObject:v8 forKey:@"recipients"];

  v9 = [(WFMessage *)self senderContactID];
  [v4 encodeObject:v9 forKey:@"senderContactID"];

  v10 = [(WFMessage *)self senderHandles];
  [v4 encodeObject:v10 forKey:@"senderHandles"];
}

- (WFMessage)initWithContent:(id)a3 conversationID:(id)a4 recipientContactIDs:(id)a5 recipients:(id)a6 senderContactID:(id)a7 senderHandles:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v35.receiver = self;
  v35.super_class = WFMessage;
  v20 = [(WFMessage *)&v35 init];
  if (v20)
  {
    v21 = [v14 copy];
    content = v20->_content;
    v20->_content = v21;

    v23 = [v15 copy];
    conversationID = v20->_conversationID;
    v20->_conversationID = v23;

    v25 = [v16 copy];
    recipientContactIDs = v20->_recipientContactIDs;
    v20->_recipientContactIDs = v25;

    v27 = [v17 copy];
    recipients = v20->_recipients;
    v20->_recipients = v27;

    v29 = [v18 copy];
    senderContactID = v20->_senderContactID;
    v20->_senderContactID = v29;

    v31 = [v19 copy];
    senderHandles = v20->_senderHandles;
    v20->_senderHandles = v31;

    v33 = v20;
  }

  return v20;
}

@end