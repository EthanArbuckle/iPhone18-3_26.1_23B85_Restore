@interface CATActiveServiceConnectionIDSMessage
+ (id)instanceWithDictionary:(id)a3;
- (CATActiveServiceConnectionIDSMessage)initWithConnectionIdentifier:(id)a3 receivedSequenceNumber:(id)a4 content:(id)a5;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveServiceConnectionIDSMessage

- (CATActiveServiceConnectionIDSMessage)initWithConnectionIdentifier:(id)a3 receivedSequenceNumber:(id)a4 content:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CATActiveServiceConnectionIDSMessage;
  v12 = [(CATActiveServiceConnectionIDSMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connectionIdentifier, a3);
    objc_storeStrong(&v13->_receivedSequenceNumber, a4);
    objc_storeStrong(&v13->_content, a5);
  }

  return v13;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CATActiveServiceConnectionIDSMessage *)self connectionIdentifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"ConnectionIdentifier"];

  v6 = [(CATActiveServiceConnectionIDSMessage *)self content];
  v7 = [v6 dictionaryValue];
  [v3 setObject:v7 forKeyedSubscript:@"Content"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(CATActiveServiceConnectionIDSMessage *)self content];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "contentType")}];
  [v3 setObject:v10 forKeyedSubscript:@"ContentType"];

  v11 = [(CATActiveServiceConnectionIDSMessage *)self receivedSequenceNumber];
  [v3 setObject:v11 forKeyedSubscript:@"ReceivedSequenceNumber"];

  v12 = [v3 copy];

  return v12;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 cat_uuidForKey:@"ConnectionIdentifier"];
  v6 = [v4 objectForKeyedSubscript:@"Content"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:@"ContentType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v4 objectForKeyedSubscript:@"ReceivedSequenceNumber"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = 0;
  if (v5 && v8 && v11)
  {
    v16 = [v11 integerValue];
    if ((v16 - 1) <= 5 && ([(__objc2_class *)*off_278DA73E8[v16 - 1] instanceWithDictionary:v8], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v17;
      v15 = [[a1 alloc] initWithConnectionIdentifier:v5 receivedSequenceNumber:v14 content:v17];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end