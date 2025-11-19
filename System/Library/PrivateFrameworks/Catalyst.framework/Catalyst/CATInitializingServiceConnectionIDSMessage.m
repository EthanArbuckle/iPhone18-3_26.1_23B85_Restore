@interface CATInitializingServiceConnectionIDSMessage
+ (id)instanceWithDictionary:(id)a3;
- (CATInitializingServiceConnectionIDSMessage)initWithInvitationIdentifier:(id)a3 content:(id)a4;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingServiceConnectionIDSMessage

- (CATInitializingServiceConnectionIDSMessage)initWithInvitationIdentifier:(id)a3 content:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CATInitializingServiceConnectionIDSMessage;
  v9 = [(CATInitializingServiceConnectionIDSMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, a4);
    objc_storeStrong(&v10->_invitationIdentifier, a3);
  }

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"Content";
  v3 = [(CATInitializingServiceConnectionIDSMessage *)self content];
  v4 = [v3 dictionaryValue];
  v14[0] = v4;
  v13[1] = @"ContentType";
  v5 = MEMORY[0x277CCABB0];
  v6 = [(CATInitializingServiceConnectionIDSMessage *)self content];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "contentType")}];
  v14[1] = v7;
  v13[2] = @"InvitationIdentifier";
  v8 = [(CATInitializingServiceConnectionIDSMessage *)self invitationIdentifier];
  v9 = [v8 UUIDString];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ContentType"];
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

  v8 = [v4 objectForKeyedSubscript:@"Content"];
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

  v11 = [v4 cat_uuidForKey:@"InvitationIdentifier"];

  v12 = 0;
  if (v11)
  {
    if (v7 && v10 != 0)
    {
      v14 = [v7 integerValue];
      if ((v14 - 1) <= 3 && ([(__objc2_class *)*off_278DA7BE8[v14 - 1] instanceWithDictionary:v10], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = v15;
        v12 = [[a1 alloc] initWithInvitationIdentifier:v11 content:v15];
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