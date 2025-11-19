@interface GTRejectedConnectionReport
- (GTRejectedConnectionReport)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTRejectedConnectionReport

- (GTRejectedConnectionReport)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = GTRejectedConnectionReport;
  v5 = [(GTRejectedConnectionReport *)&v18 init];
  if (v5)
  {
    v17 = 0;
    v6 = [v4 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"timestamp" error:&v17];
    v7 = v17;
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    if (v7)
    {
      if (GTCoreLogUseOsLog())
      {
        v9 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(GTRejectedConnectionReport *)v7 initWithCoder:v9];
        }
      }

      else
      {
        v10 = *MEMORY[0x277D85DF8];
        v11 = MEMORY[0x277CCACA8];
        v9 = [v7 localizedDescription];
        v12 = [v11 stringWithFormat:@"Failure whilst decoding timestamp for GTRejectedConnectionReport, %@", v9];
        fprintf(v10, "%s\n", [v12 UTF8String]);
      }
    }

    v5->_pid = [v4 decodeInt64ForKey:@"pid"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeInt64:self->_pid forKey:@"pid"];
  [v5 encodeObject:self->_name forKey:@"name"];
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_ERROR, "Failure whilst decoding timestamp for GTRejectedConnectionReport, %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end