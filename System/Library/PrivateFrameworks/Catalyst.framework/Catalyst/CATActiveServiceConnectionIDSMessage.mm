@interface CATActiveServiceConnectionIDSMessage
+ (id)instanceWithDictionary:(id)dictionary;
- (CATActiveServiceConnectionIDSMessage)initWithConnectionIdentifier:(id)identifier receivedSequenceNumber:(id)number content:(id)content;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveServiceConnectionIDSMessage

- (CATActiveServiceConnectionIDSMessage)initWithConnectionIdentifier:(id)identifier receivedSequenceNumber:(id)number content:(id)content
{
  identifierCopy = identifier;
  numberCopy = number;
  contentCopy = content;
  v15.receiver = self;
  v15.super_class = CATActiveServiceConnectionIDSMessage;
  v12 = [(CATActiveServiceConnectionIDSMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connectionIdentifier, identifier);
    objc_storeStrong(&v13->_receivedSequenceNumber, number);
    objc_storeStrong(&v13->_content, content);
  }

  return v13;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  connectionIdentifier = [(CATActiveServiceConnectionIDSMessage *)self connectionIdentifier];
  uUIDString = [connectionIdentifier UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"ConnectionIdentifier"];

  content = [(CATActiveServiceConnectionIDSMessage *)self content];
  dictionaryValue = [content dictionaryValue];
  [v3 setObject:dictionaryValue forKeyedSubscript:@"Content"];

  v8 = MEMORY[0x277CCABB0];
  content2 = [(CATActiveServiceConnectionIDSMessage *)self content];
  v10 = [v8 numberWithInteger:{objc_msgSend(content2, "contentType")}];
  [v3 setObject:v10 forKeyedSubscript:@"ContentType"];

  receivedSequenceNumber = [(CATActiveServiceConnectionIDSMessage *)self receivedSequenceNumber];
  [v3 setObject:receivedSequenceNumber forKeyedSubscript:@"ReceivedSequenceNumber"];

  v12 = [v3 copy];

  return v12;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy cat_uuidForKey:@"ConnectionIdentifier"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Content"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"ContentType"];
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

  v12 = [dictionaryCopy objectForKeyedSubscript:@"ReceivedSequenceNumber"];

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
    integerValue = [v11 integerValue];
    if ((integerValue - 1) <= 5 && ([(__objc2_class *)*off_278DA73E8[integerValue - 1] instanceWithDictionary:v8], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v17;
      v15 = [[self alloc] initWithConnectionIdentifier:v5 receivedSequenceNumber:v14 content:v17];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end