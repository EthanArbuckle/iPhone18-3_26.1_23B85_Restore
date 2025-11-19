@interface GTReplayUnarchiver
+ (NSSet)ASVClassSet;
+ (NSSet)batchDecodeClassSet;
+ (NSSet)batchFetchClassSet;
+ (NSSet)batchQueryClassSet;
+ (NSSet)profileClassSet;
+ (NSSet)rootResponseClassSet;
+ (NSSet)sessionClassSet;
+ (NSSet)shaderDebugClassSet;
+ (NSSet)streamResponseClassSet;
+ (id)firstTopLevelResponse:(id)a3 error:(id *)a4;
+ (id)topLevelResponses:(id)a3 error:(id *)a4;
@end

@implementation GTReplayUnarchiver

+ (id)firstTopLevelResponse:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [a1 topLevelResponses:a3 error:?];
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    a4 = 0;
    goto LABEL_8;
  }

  if ([v5 count] == 1)
  {
    a4 = [v6 firstObject];
    goto LABEL_8;
  }

  if (a4)
  {
    if (*a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D0B500];
      v13 = *MEMORY[0x277CCA450];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected number of responses. Expected %lu Received %lu", 1, objc_msgSend(v6, "count")];
      v14[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a4 = [v7 errorWithDomain:v8 code:11 userInfo:v10];
    }

    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return a4;
}

+ (id)topLevelResponses:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [a1 rootResponseClassSet];
  objc_opt_class();
  v7 = [v5 data];

  v8 = GTUnarchivedObjectOfClassesExpectingClass();

  return v8;
}

+ (NSSet)sessionClassSet
{
  v13 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v13 setWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (NSSet)ASVClassSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

+ (NSSet)shaderDebugClassSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

+ (NSSet)profileClassSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

+ (NSSet)batchDecodeClassSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

+ (NSSet)batchQueryClassSet
{
  v17 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v17 setWithObjects:{v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (NSSet)batchFetchClassSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

+ (NSSet)streamResponseClassSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (NSSet)rootResponseClassSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

@end