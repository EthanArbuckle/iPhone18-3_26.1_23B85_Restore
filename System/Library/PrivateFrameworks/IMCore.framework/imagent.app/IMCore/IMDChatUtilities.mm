@interface IMDChatUtilities
+ (IMDChatUtilities)sharedUtilities;
+ (id)_stringForChatIDs:(id)ds onServices:(id)services;
@end

@implementation IMDChatUtilities

+ (IMDChatUtilities)sharedUtilities
{
  if (qword_10008B7D8 != -1)
  {
    sub_100053B88();
  }

  v3 = qword_10008B7E0;

  return v3;
}

+ (id)_stringForChatIDs:(id)ds onServices:(id)services
{
  dsCopy = ds;
  servicesCopy = services;
  if ([dsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v7 = [&stru_100083400 mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendFormat:@"%@:\n", *(*(&v24 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = servicesCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v7 appendFormat:@"%@\n", *(*(&v20 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    v18 = [v7 copy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end