@interface ASSearchTask
- (ASSearchTask)initWithQuery:(id)query;
- (id)description;
- (int64_t)taskStatusForExchangeStatus:(int)status;
@end

@implementation ASSearchTask

- (ASSearchTask)initWithQuery:(id)query
{
  queryCopy = query;
  v8.receiver = self;
  v8.super_class = ASSearchTask;
  v5 = [(ASTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASSearchTask *)v5 setQuery:queryCopy];
  }

  return v6;
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  if (status < 0xD && ((0x1F0Fu >> status) & 1) != 0)
  {
    result = qword_24A14DBE8[status];
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
      statusCopy = status;
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
    query = [(ASSearchTask *)self query];
    v8 = [v5 stringWithFormat:@"%@, query = %@", v6, query];
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