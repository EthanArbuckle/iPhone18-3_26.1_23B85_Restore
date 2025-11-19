@interface NSKeyedArchiver(WFFileCoder)
+ (id)wf_securelyArchivedDataWithRootObject:()WFFileCoder fileCoder:;
@end

@implementation NSKeyedArchiver(WFFileCoder)

+ (id)wf_securelyArchivedDataWithRootObject:()WFFileCoder fileCoder:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAB0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initRequiringSecureCoding:1];
  [v8 setWfFileCoder:v6];
  [v8 encodeObject:v7 forKey:*MEMORY[0x277CCA308]];

  [v8 encodeObject:v6 forKey:@"WFFileCoder"];
  v9 = [v8 encodedData];
  if (!v9)
  {
    v10 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 error];
      v13 = 136315394;
      v14 = "+[NSKeyedArchiver(WFFileCoder) wf_securelyArchivedDataWithRootObject:fileCoder:]";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_ERROR, "%s Failed to encode data: %@", &v13, 0x16u);
    }
  }

  return v9;
}

@end