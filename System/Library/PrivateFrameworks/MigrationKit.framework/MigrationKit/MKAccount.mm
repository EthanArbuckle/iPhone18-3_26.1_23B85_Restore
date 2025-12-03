@interface MKAccount
- (MKAccount)initWithData:(id)data;
@end

@implementation MKAccount

- (MKAccount)initWithData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = MKAccount;
  v5 = [(MKAccount *)&v18 init];
  if (v5)
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v17];
    v7 = v17;
    if (v7)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKAccount *)v5 initWithData:v7, v8];
      }

LABEL_12:

      v14 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKAccount *)v5 initWithData:v8];
      }

      goto LABEL_12;
    }

    v9 = v6;
    v10 = [v9 objectForKey:@"name"];
    [(MKAccount *)v5 setName:v10];

    v11 = [v9 objectForKey:@"type"];
    [(MKAccount *)v5 setType:v11];

    v12 = +[MKLog log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      type = v5->_type;
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = type;
      _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "%@ did receive an account. type=%@", buf, 0x16u);
    }
  }

  v14 = v5;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end