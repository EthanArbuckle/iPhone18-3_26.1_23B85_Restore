@interface MFMailMessageLibrary
- (id)libraryMessagesForMessageIds:(id)a3 protectedDataAvailable:(BOOL *)a4;
- (id)loadLibraryMessagesFromLibraryMatchingCriterion:(id)a3 count:(unint64_t)a4 protectedDataAvailable:(BOOL *)a5;
@end

@implementation MFMailMessageLibrary

- (id)libraryMessagesForMessageIds:(id)a3 protectedDataAvailable:(BOOL *)a4
{
  v19 = a3;
  if ([v19 count])
  {
    v18 = self;
    v6 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v19;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [NSURL URLWithString:v11];
          v13 = [v12 mf_messageCriterion];

          if (v13)
          {
            [v6 addObject:v13];
          }

          else
          {
            v14 = MFLogGeneral();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v25 = v11;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Nano Could not create criterion for message id: %{public}@", buf, 0xCu);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }

    v15 = objc_alloc_init(MFMessageCriterion);
    [v15 setCriterionType:25];
    [v15 setAllCriteriaMustBeSatisfied:0];
    [v15 setCriteria:v6];
    v16 = [(MFMailMessageLibrary *)v18 loadLibraryMessagesFromLibraryMatchingCriterion:v15 count:0x7FFFFFFFFFFFFFFFLL protectedDataAvailable:a4];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

- (id)loadLibraryMessagesFromLibraryMatchingCriterion:(id)a3 count:(unint64_t)a4 protectedDataAvailable:(BOOL *)a5
{
  v7 = a3;
  if (a5)
  {
    v8 = +[MFMailMessageLibrary defaultInstance];
    *a5 = [v8 protectedDataAvailability] == 0;
  }

  v9 = +[MFMailMessageLibrary defaultInstance];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 messagesMatchingCriterion:v7 options:6297791];
  }

  else
  {
    [v9 messagesMatchingCriterion:v7 options:6297791 range:{0, a4}];
  }
  v10 = ;

  if (a5)
  {
    v11 = +[MFMailMessageLibrary defaultInstance];
    v12 = [v11 protectedDataAvailability];
    v13 = *a5;
    if (v12)
    {
      v13 = 0;
    }

    *a5 = v13;
  }

  return v10;
}

@end