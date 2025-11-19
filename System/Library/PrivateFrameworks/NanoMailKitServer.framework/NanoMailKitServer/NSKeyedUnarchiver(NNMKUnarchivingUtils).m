@interface NSKeyedUnarchiver(NNMKUnarchivingUtils)
+ (id)nnmk_allowedClasses;
+ (id)unarchiveObjectOfClass:()NNMKUnarchivingUtils withData:;
+ (id)unarchiveObjectOfClasses:()NNMKUnarchivingUtils withData:;
@end

@implementation NSKeyedUnarchiver(NNMKUnarchivingUtils)

+ (id)unarchiveObjectOfClass:()NNMKUnarchivingUtils withData:
{
  if (a4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = a4;
    v12 = 0;
    v7 = [[v5 alloc] initForReadingFromData:v6 error:&v12];

    v8 = v12;
    if (v8)
    {
      v9 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [NSKeyedUnarchiver(NNMKUnarchivingUtils) unarchiveObjectOfClass:v8 withData:v9];
      }
    }

    v10 = [v7 decodeObjectOfClass:a3 forKey:*MEMORY[0x277CCA308]];
    [v7 finishDecoding];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)unarchiveObjectOfClasses:()NNMKUnarchivingUtils withData:
{
  v5 = a3;
  if (a4)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = a4;
    v13 = 0;
    v8 = [[v6 alloc] initForReadingFromData:v7 error:&v13];

    v9 = v13;
    if (v9)
    {
      v10 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [NSKeyedUnarchiver(NNMKUnarchivingUtils) unarchiveObjectOfClass:v9 withData:v10];
      }
    }

    v11 = [v8 decodeObjectOfClasses:v5 forKey:*MEMORY[0x277CCA308]];
    [v8 finishDecoding];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)nnmk_allowedClasses
{
  if (nnmk_allowedClasses_onceToken != -1)
  {
    +[NSKeyedUnarchiver(NNMKUnarchivingUtils) nnmk_allowedClasses];
  }

  v1 = nnmk_allowedClasses_allowedClasses;

  return v1;
}

+ (void)unarchiveObjectOfClass:()NNMKUnarchivingUtils withData:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving object. %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end