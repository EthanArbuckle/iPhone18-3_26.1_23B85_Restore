@interface CATSharingCloseMessage
+ (id)instanceWithDictionary:(id)a3;
- (CATSharingCloseMessage)initWithError:(id)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CATSharingCloseMessage

- (CATSharingCloseMessage)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CATSharingCloseMessage;
  v6 = [(CATSharingCloseMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_closeError, a3);
  }

  return v7;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CATSharingCloseMessage *)self closeError];
  [v3 setObject:v4 forKeyedSubscript:@"SharingCloseMessageError"];

  v5 = [v3 copy];

  return v5;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 objectForKeyedSubscript:@"SharingCloseMessageError"];

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