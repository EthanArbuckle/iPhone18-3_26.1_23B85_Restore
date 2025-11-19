@interface CKIMGroupComposeRecipient
+ (id)composeRecipientWithConversation:(id)a3 searchTerm:(id)a4 matchingRecipient:(id)a5;
- (CKIMGroupComposeRecipient)initWithCoder:(id)a3;
- (CKIMGroupComposeRecipient)initWithGUID:(id)a3 displayString:(id)a4 detailsString:(id)a5 handles:(id)a6 lastMessageDate:(id)a7 searchTerm:(id)a8 matchingRecipient:(id)a9;
- (id)address;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKIMGroupComposeRecipient

+ (id)composeRecipientWithConversation:(id)a3 searchTerm:(id)a4 matchingRecipient:(id)a5
{
  v7 = a3;
  v21 = a5;
  v20 = a4;
  v8 = [v7 chat];
  v9 = [v8 lastMessage];
  if (v9)
  {
    v10 = [v8 lastMessage];
    v11 = [v10 time];
  }

  else
  {
    v11 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v8, "lastMessageTimeStampOnLoad")}];
  }

  if ([v7 hasDisplayName])
  {
    v12 = [v7 displayName];
  }

  else
  {
    v12 = 0;
  }

  if ([v7 hasDisplayName])
  {
    v13 = [v7 name];
  }

  else
  {
    v13 = 0;
  }

  v14 = [CKIMGroupComposeRecipient alloc];
  v15 = [v7 chat];
  v16 = [v15 guid];
  v17 = [v7 handles];
  v18 = [(CKIMGroupComposeRecipient *)v14 initWithGUID:v16 displayString:v12 detailsString:v13 handles:v17 lastMessageDate:v11 searchTerm:v20 matchingRecipient:v21];

  return v18;
}

- (CKIMGroupComposeRecipient)initWithGUID:(id)a3 displayString:(id)a4 detailsString:(id)a5 handles:(id)a6 lastMessageDate:(id)a7 searchTerm:(id)a8 matchingRecipient:(id)a9
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v30 = a4;
  v31 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v14;
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
  v25 = [(CNComposeRecipientGroup *)&v33 initWithChildren:v18 displayString:v30];
  v26 = v25;
  if (v25)
  {
    [(CKIMGroupComposeRecipient *)v25 setConversationGUID:v32];
    [(CKIMGroupComposeRecipient *)v26 setDetailsString:v31];
    [(CKIMGroupComposeRecipient *)v26 setHandles:v19];
    [(CKIMGroupComposeRecipient *)v26 setLastMessageDate:v15];
    [(CKIMGroupComposeRecipient *)v26 setMatchingRecipient:v17];
    v27 = objc_alloc_init(MEMORY[0x1E6996420]);
    [v27 setResultType:1];
    [v27 setSearchTerm:v16];
    [(CKIMGroupComposeRecipient *)v26 setOriginContext:v27];
  }

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CKIMGroupComposeRecipient;
  v4 = a3;
  [(CKIMGroupComposeRecipient *)&v10 encodeWithCoder:v4];
  v5 = [(CKIMGroupComposeRecipient *)self conversationGUID:v10.receiver];
  [v4 encodeObject:v5 forKey:@"conversationGUID"];

  v6 = [(CKIMGroupComposeRecipient *)self detailsString];
  [v4 encodeObject:v6 forKey:@"detailsString"];

  v7 = [(CKIMGroupComposeRecipient *)self handles];
  [v4 encodeObject:v7 forKey:@"handles"];

  v8 = [(CKIMGroupComposeRecipient *)self lastMessageDate];
  [v4 encodeObject:v8 forKey:@"lastMessageDate"];

  v9 = [(CKIMGroupComposeRecipient *)self matchingRecipient];
  [v4 encodeObject:v9 forKey:@"matchingRecipient"];
}

- (CKIMGroupComposeRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKIMGroupComposeRecipient;
  v5 = [(CKIMGroupComposeRecipient *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationGUID"];
    conversationGUID = v5->_conversationGUID;
    v5->_conversationGUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailsString"];
    detailsString = v5->_detailsString;
    v5->_detailsString = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handles"];
    handles = v5->_handles;
    v5->_handles = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastMessageDate"];
    lastMessageDate = v5->_lastMessageDate;
    v5->_lastMessageDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchingRecipient"];
    matchingRecipient = v5->_matchingRecipient;
    v5->_matchingRecipient = v14;
  }

  return v5;
}

- (id)address
{
  v3 = [(CKIMGroupComposeRecipient *)self conversationGUID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKIMGroupComposeRecipient;
    v5 = [(CNComposeRecipientGroup *)&v8 address];
  }

  v6 = v5;

  return v6;
}

@end