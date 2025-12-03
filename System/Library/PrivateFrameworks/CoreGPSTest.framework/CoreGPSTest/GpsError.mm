@interface GpsError
+ (BOOL)setError:(id *)error withCode:(int)code format:(id)format;
@end

@implementation GpsError

+ (BOOL)setError:(id *)error withCode:(int)code format:(id)format
{
  v20[3] = *MEMORY[0x277D85DE8];
  formatCopy = format;
  if (formatCopy)
  {
    v20[0] = &v21;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v21];
  }

  else
  {
    v8 = 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dictionary;
  if (v8)
  {
    [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GpsFactoryTest" code:code userInfo:v10];
  v12 = v11;
  if (error)
  {
    v13 = *error == 0;
    v14 = v11;
    *error = v12;
    if (v13)
    {
      v17 = 1;
      goto LABEL_13;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v20[0]) = 138412290;
      *(v20 + 4) = v12;
      v15 = MEMORY[0x277D86220];
      v16 = "NSError variable was previously assigned.  New unsaved error: %@";
LABEL_15:
      _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, v16, v20, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LODWORD(v20[0]) = 138412290;
    *(v20 + 4) = v12;
    v15 = MEMORY[0x277D86220];
    v16 = "NSError variable was nil.  New unsaved error: %@";
    goto LABEL_15;
  }

  v17 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end