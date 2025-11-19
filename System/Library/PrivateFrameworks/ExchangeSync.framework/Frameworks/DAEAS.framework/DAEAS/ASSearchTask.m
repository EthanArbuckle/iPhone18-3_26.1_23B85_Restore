@interface ASSearchTask
- (ASSearchTask)initWithQuery:(id)a3;
- (id)description;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
@end

@implementation ASSearchTask

- (ASSearchTask)initWithQuery:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASSearchTask;
  v5 = [(ASTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASSearchTask *)v5 setQuery:v4];
  }

  return v6;
}

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 < 0xD && ((0x1F0Fu >> a3) & 1) != 0)
  {
    result = qword_24A14DBE8[a3];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412546;
      v11 = v8;
      v12 = 1024;
      v13 = a3;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  v3 = DALoggingwithCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = ASSearchTask;
    v6 = [(ASTask *)&v11 description];
    v7 = [(ASSearchTask *)self query];
    v8 = [v5 stringWithFormat:@"%@, query = %@", v6, v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ASSearchTask;
    v6 = [(ASTask *)&v10 description];
    v8 = [v5 stringWithFormat:@"%@", v6];
  }

  return v8;
}

@end