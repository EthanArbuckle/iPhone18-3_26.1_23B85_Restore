@interface NSData(ULExtensions)
+ (id)fromNSArray:()ULExtensions;
- (id)toNSArrayWithElementType:()ULExtensions;
@end

@implementation NSData(ULExtensions)

+ (id)fromNSArray:()ULExtensions
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
  v4 = v9;
  if (v4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[NSData(ULExtensions) fromNSArray:];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "fromNSArray: failed to archive. Error : %@", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)toNSArrayWithElementType:()ULExtensions
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  v17[0] = a3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v7 = [v5 setWithArray:v6];
  v14 = 0;
  v8 = [v4 unarchivedArrayOfObjectsOfClasses:v7 fromData:a1 error:&v14];
  v9 = v14;

  if (v9)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[NSData(ULExtensions) fromNSArray:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "toNSArray: failed to unarchive. Error : %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end