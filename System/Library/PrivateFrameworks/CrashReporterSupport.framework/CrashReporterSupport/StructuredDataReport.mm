@interface StructuredDataReport
- (StructuredDataReport)initWithType:(int)a3 withFile:(id)a4;
- (void)dealloc;
- (void)generateCustomLogAtLevel:(BOOL)a3 withBlock:(id)a4;
@end

@implementation StructuredDataReport

- (StructuredDataReport)initWithType:(int)a3 withFile:(id)a4
{
  v9.receiver = self;
  v9.super_class = StructuredDataReport;
  v6 = [(OSAReport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_log_type = a3;
    v6->_raw_logfile = a4;
    *(&v7->super.super.isa + *MEMORY[0x277D36BA8]) = CFAbsoluteTimeGetCurrent();
    [*(&v7->super.super.isa + *MEMORY[0x277D36BB0]) setObject:@"ips.synced" forKeyedSubscript:*MEMORY[0x277D36C38]];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = StructuredDataReport;
  [(StructuredDataReport *)&v3 dealloc];
}

- (void)generateCustomLogAtLevel:(BOOL)a3 withBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = *(&self->super.super.isa + *MEMORY[0x277D36BA8]);
  v8 = OSADateFormat();
  v9 = [objc_msgSend(v6 stringWithFormat:@"Date:%@\nIncident ID:%@\n%@\n", v8, -[OSAReport incidentID](self, "incidentID"), GetDeviceConfig()), "dataUsingEncoding:allowLossyConversion:", 4, 1];
  (*(a4 + 2))(a4, v9);
  v10 = fopen([(NSString *)self->_raw_logfile fileSystemRepresentation], "r");
  if (v10)
  {
    v11 = v10;
    v12 = [MEMORY[0x277CBEB28] dataWithLength:0x10000];
    if (v12)
    {
      v13 = v12;
      do
      {
        v14 = fread([v13 mutableBytes], 1uLL, 0x10000uLL, v11);
        v15 = ferror(v11);
        if (!v14)
        {
          break;
        }

        if (v15)
        {
          break;
        }

        [v13 setLength:v14];
        (*(a4 + 2))(a4, v13);
      }

      while (!feof(v11));
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    raw_logfile = self->_raw_logfile;
    v17 = __error();
    v18 = strerror(*v17);
    *buf = 138412546;
    v21 = raw_logfile;
    v22 = 2080;
    v23 = v18;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to open '%@': %s", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __55__StructuredDataReport_streamContentAtLevel_withBlock___block_invoke(uint64_t result, void *a2)
{
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v2 = result;
    result = [a2 length];
    if (result)
    {
      result = (*(*(v2 + 32) + 16))();
      *(*(*(v2 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

@end