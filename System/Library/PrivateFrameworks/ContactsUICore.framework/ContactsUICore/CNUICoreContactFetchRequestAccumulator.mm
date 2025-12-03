@interface CNUICoreContactFetchRequestAccumulator
+ (id)resultOfFetchRequest:(id)request fromStore:(id)store;
@end

@implementation CNUICoreContactFetchRequestAccumulator

+ (id)resultOfFetchRequest:(id)request fromStore:(id)store
{
  requestCopy = request;
  storeCopy = store;
  if (requestCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_6 != -1)
  {
    +[CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:fromStore:];
  }

  v7 = CNGuardOSLog_cn_once_object_0_6;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_6, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v7 fromStore:?];
    if (storeCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (storeCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_6 != -1)
  {
    +[CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:fromStore:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_6;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_6, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreContactFetchRequestAccumulator resultOfFetchRequest:v8 fromStore:?];
  }

LABEL_10:
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__CNUICoreContactFetchRequestAccumulator_resultOfFetchRequest_fromStore___block_invoke;
  v18 = &unk_1E76E8960;
  v10 = array;
  v19 = v10;
  v11 = [storeCopy enumerateContactsWithFetchRequest:requestCopy error:&v20 usingBlock:&v15];
  v12 = v20;
  if ((v11 & 1) == 0)
  {

    v10 = 0;
  }

  v13 = [MEMORY[0x1E6996810] resultWithValue:v10 orError:{v12, v15, v16, v17, v18}];

  return v13;
}

@end