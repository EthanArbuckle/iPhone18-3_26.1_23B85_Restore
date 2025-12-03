@interface WFMessage
- (WFMessage)initWithCoder:(id)coder;
- (WFMessage)initWithContent:(id)content conversationID:(id)d recipientContactIDs:(id)ds recipients:(id)recipients senderContactID:(id)iD senderHandles:(id)handles;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFMessage

- (WFMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFMessage *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"recipientContactIDs"];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"recipients"];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderContactID"];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"senderHandles"];

    v5 = [(WFMessage *)v5 initWithContent:v6 conversationID:v7 recipientContactIDs:v11 recipients:v15 senderContactID:v16 senderHandles:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  content = [(WFMessage *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  conversationID = [(WFMessage *)self conversationID];
  [coderCopy encodeObject:conversationID forKey:@"conversationID"];

  recipientContactIDs = [(WFMessage *)self recipientContactIDs];
  [coderCopy encodeObject:recipientContactIDs forKey:@"recipientContactIDs"];

  recipients = [(WFMessage *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"recipients"];

  senderContactID = [(WFMessage *)self senderContactID];
  [coderCopy encodeObject:senderContactID forKey:@"senderContactID"];

  senderHandles = [(WFMessage *)self senderHandles];
  [coderCopy encodeObject:senderHandles forKey:@"senderHandles"];
}

- (WFMessage)initWithContent:(id)content conversationID:(id)d recipientContactIDs:(id)ds recipients:(id)recipients senderContactID:(id)iD senderHandles:(id)handles
{
  contentCopy = content;
  dCopy = d;
  dsCopy = ds;
  recipientsCopy = recipients;
  iDCopy = iD;
  handlesCopy = handles;
  v35.receiver = self;
  v35.super_class = WFMessage;
  v20 = [(WFMessage *)&v35 init];
  if (v20)
  {
    v21 = [contentCopy copy];
    content = v20->_content;
    v20->_content = v21;

    v23 = [dCopy copy];
    conversationID = v20->_conversationID;
    v20->_conversationID = v23;

    v25 = [dsCopy copy];
    recipientContactIDs = v20->_recipientContactIDs;
    v20->_recipientContactIDs = v25;

    v27 = [recipientsCopy copy];
    recipients = v20->_recipients;
    v20->_recipients = v27;

    v29 = [iDCopy copy];
    senderContactID = v20->_senderContactID;
    v20->_senderContactID = v29;

    v31 = [handlesCopy copy];
    senderHandles = v20->_senderHandles;
    v20->_senderHandles = v31;

    v33 = v20;
  }

  return v20;
}

@end