@interface MFMailMessageLibrary
- (id)libraryMessagesForMessageIds:(id)ids protectedDataAvailable:(BOOL *)available;
- (id)loadLibraryMessagesFromLibraryMatchingCriterion:(id)criterion count:(unint64_t)count protectedDataAvailable:(BOOL *)available;
@end

@implementation MFMailMessageLibrary

- (id)libraryMessagesForMessageIds:(id)ids protectedDataAvailable:(BOOL *)available
{
  idsCopy = ids;
  if ([idsCopy count])
  {
    selfCopy = self;
    v6 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = idsCopy;
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
          mf_messageCriterion = [v12 mf_messageCriterion];

          if (mf_messageCriterion)
          {
            [v6 addObject:mf_messageCriterion];
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
    v16 = [(MFMailMessageLibrary *)selfCopy loadLibraryMessagesFromLibraryMatchingCriterion:v15 count:0x7FFFFFFFFFFFFFFFLL protectedDataAvailable:available];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

- (id)loadLibraryMessagesFromLibraryMatchingCriterion:(id)criterion count:(unint64_t)count protectedDataAvailable:(BOOL *)available
{
  criterionCopy = criterion;
  if (available)
  {
    v8 = +[MFMailMessageLibrary defaultInstance];
    *available = [v8 protectedDataAvailability] == 0;
  }

  v9 = +[MFMailMessageLibrary defaultInstance];
  if (count == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 messagesMatchingCriterion:criterionCopy options:6297791];
  }

  else
  {
    [v9 messagesMatchingCriterion:criterionCopy options:6297791 range:{0, count}];
  }
  v10 = ;

  if (available)
  {
    v11 = +[MFMailMessageLibrary defaultInstance];
    protectedDataAvailability = [v11 protectedDataAvailability];
    v13 = *available;
    if (protectedDataAvailability)
    {
      v13 = 0;
    }

    *available = v13;
  }

  return v10;
}

@end