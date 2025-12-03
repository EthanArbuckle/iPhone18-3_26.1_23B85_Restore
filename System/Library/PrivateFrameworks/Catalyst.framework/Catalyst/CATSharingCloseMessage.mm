@interface CATSharingCloseMessage
+ (id)instanceWithDictionary:(id)dictionary;
- (CATSharingCloseMessage)initWithError:(id)error;
- (NSDictionary)dictionaryValue;
@end

@implementation CATSharingCloseMessage

- (CATSharingCloseMessage)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = CATSharingCloseMessage;
  v6 = [(CATSharingCloseMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_closeError, error);
  }

  return v7;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  closeError = [(CATSharingCloseMessage *)self closeError];
  [v3 setObject:closeError forKeyedSubscript:@"SharingCloseMessageError"];

  v5 = [v3 copy];

  return v5;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [self alloc];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"SharingCloseMessageError"];

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

  v9 = [v5 initWithError:v8];

  return v9;
}

@end