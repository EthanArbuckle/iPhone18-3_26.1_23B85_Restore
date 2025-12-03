@interface IDSTransactionLogMessage
+ (id)transactionLogMessageFromDictionaryRepresentation:(id)representation;
- (IDSTransactionLogMessage)initWithDictionaryRepresentation:(id)representation;
- (id)_dictionaryRepresentation;
- (id)_initWithAccountUniqueID:(id)d fromID:(id)iD loginID:(id)loginID serviceName:(id)name;
@end

@implementation IDSTransactionLogMessage

- (id)_initWithAccountUniqueID:(id)d fromID:(id)iD loginID:(id)loginID serviceName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  loginIDCopy = loginID;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = IDSTransactionLogMessage;
  v15 = [(IDSTransactionLogMessage *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_accountUniqueID, d);
    objc_storeStrong(p_isa + 1, iD);
    objc_storeStrong(p_isa + 2, loginID);
    objc_storeStrong(p_isa + 4, name);
  }

  return p_isa;
}

- (IDSTransactionLogMessage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageAccountUniqueIDKey"];
  v6 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageFromIDKey"];
  v7 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageLoginIDKey"];
  v8 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageServiceNameKey"];

  v9 = [(IDSTransactionLogMessage *)self _initWithAccountUniqueID:v5 fromID:v6 loginID:v7 serviceName:v8];
  return v9;
}

- (id)_dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  accountUniqueID = [(IDSTransactionLogMessage *)self accountUniqueID];

  if (accountUniqueID)
  {
    accountUniqueID2 = [(IDSTransactionLogMessage *)self accountUniqueID];
    [v3 setObject:accountUniqueID2 forKeyedSubscript:@"IDSTransactionLogMessageAccountUniqueIDKey"];
  }

  fromID = [(IDSTransactionLogMessage *)self fromID];

  if (fromID)
  {
    fromID2 = [(IDSTransactionLogMessage *)self fromID];
    [v3 setObject:fromID2 forKeyedSubscript:@"IDSTransactionLogMessageFromIDKey"];
  }

  loginID = [(IDSTransactionLogMessage *)self loginID];

  if (loginID)
  {
    loginID2 = [(IDSTransactionLogMessage *)self loginID];
    [v3 setObject:loginID2 forKeyedSubscript:@"IDSTransactionLogMessageLoginIDKey"];
  }

  serviceName = [(IDSTransactionLogMessage *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(IDSTransactionLogMessage *)self serviceName];
    [v3 setObject:serviceName2 forKeyedSubscript:@"IDSTransactionLogMessageServiceNameKey"];
  }

  return v3;
}

+ (id)transactionLogMessageFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = 0;
    goto LABEL_9;
  }

  v4 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageDictionaryValueKey"];

  if (v4)
  {
    v5 = off_1E743D598;
  }

  else
  {
    v6 = [representationCopy objectForKeyedSubscript:@"IDSTransactionLogMessageDataValueKey"];

    if (!v6)
    {
      goto LABEL_9;
    }

    v5 = off_1E743D590;
  }

  v6 = [objc_alloc(*v5) initWithDictionaryRepresentation:representationCopy];
LABEL_9:

  return v6;
}

@end