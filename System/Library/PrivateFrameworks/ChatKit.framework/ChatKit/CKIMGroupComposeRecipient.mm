@interface CKIMGroupComposeRecipient
+ (id)composeRecipientWithConversation:(id)conversation searchTerm:(id)term matchingRecipient:(id)recipient;
- (CKIMGroupComposeRecipient)initWithCoder:(id)coder;
- (CKIMGroupComposeRecipient)initWithGUID:(id)d displayString:(id)string detailsString:(id)detailsString handles:(id)handles lastMessageDate:(id)date searchTerm:(id)term matchingRecipient:(id)recipient;
- (id)address;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKIMGroupComposeRecipient

+ (id)composeRecipientWithConversation:(id)conversation searchTerm:(id)term matchingRecipient:(id)recipient
{
  conversationCopy = conversation;
  recipientCopy = recipient;
  termCopy = term;
  chat = [conversationCopy chat];
  lastMessage = [chat lastMessage];
  if (lastMessage)
  {
    lastMessage2 = [chat lastMessage];
    time = [lastMessage2 time];
  }

  else
  {
    time = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(chat, "lastMessageTimeStampOnLoad")}];
  }

  if ([conversationCopy hasDisplayName])
  {
    displayName = [conversationCopy displayName];
  }

  else
  {
    displayName = 0;
  }

  if ([conversationCopy hasDisplayName])
  {
    name = [conversationCopy name];
  }

  else
  {
    name = 0;
  }

  v14 = [CKIMGroupComposeRecipient alloc];
  chat2 = [conversationCopy chat];
  guid = [chat2 guid];
  handles = [conversationCopy handles];
  v18 = [(CKIMGroupComposeRecipient *)v14 initWithGUID:guid displayString:displayName detailsString:name handles:handles lastMessageDate:time searchTerm:termCopy matchingRecipient:recipientCopy];

  return v18;
}

- (CKIMGroupComposeRecipient)initWithGUID:(id)d displayString:(id)string detailsString:(id)detailsString handles:(id)handles lastMessageDate:(id)date searchTerm:(id)term matchingRecipient:(id)recipient
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  stringCopy = string;
  detailsStringCopy = detailsString;
  handlesCopy = handles;
  dateCopy = date;
  termCopy = term;
  recipientCopy = recipient;
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = handlesCopy;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [[CKIMComposeRecipient alloc] initWithHandle:*(*(&v34 + 1) + 8 * i)];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  v33.receiver = self;
  v33.super_class = CKIMGroupComposeRecipient;
  v25 = [(CNComposeRecipientGroup *)&v33 initWithChildren:v18 displayString:stringCopy];
  v26 = v25;
  if (v25)
  {
    [(CKIMGroupComposeRecipient *)v25 setConversationGUID:dCopy];
    [(CKIMGroupComposeRecipient *)v26 setDetailsString:detailsStringCopy];
    [(CKIMGroupComposeRecipient *)v26 setHandles:v19];
    [(CKIMGroupComposeRecipient *)v26 setLastMessageDate:dateCopy];
    [(CKIMGroupComposeRecipient *)v26 setMatchingRecipient:recipientCopy];
    v27 = objc_alloc_init(MEMORY[0x1E6996420]);
    [v27 setResultType:1];
    [v27 setSearchTerm:termCopy];
    [(CKIMGroupComposeRecipient *)v26 setOriginContext:v27];
  }

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CKIMGroupComposeRecipient;
  coderCopy = coder;
  [(CKIMGroupComposeRecipient *)&v10 encodeWithCoder:coderCopy];
  v5 = [(CKIMGroupComposeRecipient *)self conversationGUID:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"conversationGUID"];

  detailsString = [(CKIMGroupComposeRecipient *)self detailsString];
  [coderCopy encodeObject:detailsString forKey:@"detailsString"];

  handles = [(CKIMGroupComposeRecipient *)self handles];
  [coderCopy encodeObject:handles forKey:@"handles"];

  lastMessageDate = [(CKIMGroupComposeRecipient *)self lastMessageDate];
  [coderCopy encodeObject:lastMessageDate forKey:@"lastMessageDate"];

  matchingRecipient = [(CKIMGroupComposeRecipient *)self matchingRecipient];
  [coderCopy encodeObject:matchingRecipient forKey:@"matchingRecipient"];
}

- (CKIMGroupComposeRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CKIMGroupComposeRecipient;
  v5 = [(CKIMGroupComposeRecipient *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationGUID"];
    conversationGUID = v5->_conversationGUID;
    v5->_conversationGUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailsString"];
    detailsString = v5->_detailsString;
    v5->_detailsString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handles"];
    handles = v5->_handles;
    v5->_handles = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastMessageDate"];
    lastMessageDate = v5->_lastMessageDate;
    v5->_lastMessageDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchingRecipient"];
    matchingRecipient = v5->_matchingRecipient;
    v5->_matchingRecipient = v14;
  }

  return v5;
}

- (id)address
{
  conversationGUID = [(CKIMGroupComposeRecipient *)self conversationGUID];
  v4 = conversationGUID;
  if (conversationGUID)
  {
    address = conversationGUID;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKIMGroupComposeRecipient;
    address = [(CNComposeRecipientGroup *)&v8 address];
  }

  v6 = address;

  return v6;
}

@end