@interface CATInitializingServiceConnectionIDSMessage
+ (id)instanceWithDictionary:(id)dictionary;
- (CATInitializingServiceConnectionIDSMessage)initWithInvitationIdentifier:(id)identifier content:(id)content;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingServiceConnectionIDSMessage

- (CATInitializingServiceConnectionIDSMessage)initWithInvitationIdentifier:(id)identifier content:(id)content
{
  identifierCopy = identifier;
  contentCopy = content;
  v12.receiver = self;
  v12.super_class = CATInitializingServiceConnectionIDSMessage;
  v9 = [(CATInitializingServiceConnectionIDSMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, content);
    objc_storeStrong(&v10->_invitationIdentifier, identifier);
  }

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"Content";
  content = [(CATInitializingServiceConnectionIDSMessage *)self content];
  dictionaryValue = [content dictionaryValue];
  v14[0] = dictionaryValue;
  v13[1] = @"ContentType";
  v5 = MEMORY[0x277CCABB0];
  content2 = [(CATInitializingServiceConnectionIDSMessage *)self content];
  v7 = [v5 numberWithInteger:{objc_msgSend(content2, "contentType")}];
  v14[1] = v7;
  v13[2] = @"InvitationIdentifier";
  invitationIdentifier = [(CATInitializingServiceConnectionIDSMessage *)self invitationIdentifier];
  uUIDString = [invitationIdentifier UUIDString];
  v14[2] = uUIDString;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"ContentType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"Content"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dictionaryCopy cat_uuidForKey:@"InvitationIdentifier"];

  v12 = 0;
  if (v11)
  {
    if (v7 && v10 != 0)
    {
      integerValue = [v7 integerValue];
      if ((integerValue - 1) <= 3 && ([(__objc2_class *)*off_278DA7BE8[integerValue - 1] instanceWithDictionary:v10], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = v15;
        v12 = [[self alloc] initWithInvitationIdentifier:v11 content:v15];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

@end