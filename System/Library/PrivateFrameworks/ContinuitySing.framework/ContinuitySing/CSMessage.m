@interface CSMessage
- (CSMessage)initWithMessage:(id)a3;
- (NSString)identifier;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation CSMessage

- (CSMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CSMessage;
  v5 = [(CSMessage *)&v31 init];
  if (v5)
  {
    [objc_opt_class() requiredParameters];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v30 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v4 objectForKey:v11];

          if (!v12)
          {
            v14 = ContinuitySingLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              v18 = 136315906;
              v19 = "[CSMessage initWithMessage:]";
              v20 = 2112;
              v21 = v17;
              v22 = 2112;
              v23 = v4;
              v24 = 2112;
              v25 = v11;
              _os_log_error_impl(&dword_2441FB000, v14, OS_LOG_TYPE_ERROR, "%s: %@ Invalid message %@ missing required key: %@", &v18, 0x2Au);
            }

            v13 = 0;
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = v5;
LABEL_15:

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(CSMessage *)self identifier];
  [v3 setObject:v4 forKey:@"CSMessageIDKey"];

  return v3;
}

- (NSString)identifier
{
  v2 = [objc_opt_class() messageID];

  return CSIdentifierForMessageID(v2);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CSMessage *)self dictionaryRepresentation];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

@end