@interface CardDAVActionsLogger
+ (OS_os_log)os_log_summary;
+ (id)_nameForActionKind:(unint64_t)kind;
+ (unint64_t)_kindForAction:(id)action;
+ (void)logSummaryForCardDAVActions:(id)actions partialResults:(BOOL)results initialSync:(BOOL)sync syncPhase:(id)phase syncAccount:(id)account;
@end

@implementation CardDAVActionsLogger

+ (OS_os_log)os_log_summary
{
  if (qword_46F78 != -1)
  {
    sub_25C8C();
  }

  v3 = qword_46F80;

  return v3;
}

+ (void)logSummaryForCardDAVActions:(id)actions partialResults:(BOOL)results initialSync:(BOOL)sync syncPhase:(id)phase syncAccount:(id)account
{
  syncCopy = sync;
  resultsCopy = results;
  actionsCopy = actions;
  accountCopy = account;
  v13 = &stru_3CFD8;
  v14 = @"(partial)";
  if (!resultsCopy)
  {
    v14 = &stru_3CFD8;
  }

  if (syncCopy)
  {
    v13 = @"(initial)";
  }

  phase = [NSString stringWithFormat:@"%@%@ %@", v14, v13, phase];
  v37 = actionsCopy;
  if ([actionsCopy count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    memset(v60, 0, sizeof(v60));
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = actionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v59 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v41 + 1) + 8 * i);
          v21 = [self _kindForAction:v20];
          itemChangeType = [v20 itemChangeType];
          if (itemChangeType == &dword_0 + 2)
          {
            ++v60[3 * v21 + 2];
          }

          else if (itemChangeType == &dword_0 + 1)
          {
            ++v60[3 * v21 + 1];
          }

          else if (itemChangeType)
          {
            os_log_summary = [objc_opt_class() os_log_summary];
            if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_ERROR))
            {
              accountDescription = [accountCopy accountDescription];
              publicDescription = [accountCopy publicDescription];
              *buf = 138412802;
              v46 = accountDescription;
              v47 = 2114;
              v48 = publicDescription;
              v49 = 2112;
              v50 = v20;
              _os_log_error_impl(&dword_0, os_log_summary, OS_LOG_TYPE_ERROR, "Syncing account %@ (%{public}@) -- unexpected action %@", buf, 0x20u);
            }
          }

          else
          {
            ++v60[3 * v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v59 count:16];
      }

      while (v17);
    }

    v25 = 0;
    v26 = &v60[2];
    do
    {
      v27 = [self _nameForActionKind:v25];
      v28 = *(v26 - 2);
      if (v28 || *(v26 - 1) || *v26)
      {
        os_log_summary2 = [objc_opt_class() os_log_summary];
        if (os_log_type_enabled(os_log_summary2, OS_LOG_TYPE_DEFAULT))
        {
          accountDescription2 = [accountCopy accountDescription];
          publicDescription2 = [accountCopy publicDescription];
          v32 = *(v26 - 1);
          v33 = *v26;
          *buf = 138413826;
          v46 = accountDescription2;
          v47 = 2114;
          v48 = publicDescription2;
          v49 = 2114;
          v50 = v27;
          v51 = 2048;
          v52 = v28;
          v53 = 2048;
          v54 = v32;
          v55 = 2048;
          v56 = v33;
          v57 = 2114;
          v58 = phase;
          _os_log_impl(&dword_0, os_log_summary2, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- %{public}@ actions (add:%lu mod:%lu del:%lu)%{public}@", buf, 0x48u);
        }
      }

      ++v25;
      v26 += 3;
    }

    while (v25 != 4);
  }

  else
  {
    os_log_summary3 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary3, OS_LOG_TYPE_DEFAULT))
    {
      accountDescription3 = [accountCopy accountDescription];
      publicDescription3 = [accountCopy publicDescription];
      LODWORD(v60[0]) = 138412802;
      *(v60 + 4) = accountDescription3;
      WORD2(v60[1]) = 2114;
      *(&v60[1] + 6) = publicDescription3;
      HIWORD(v60[2]) = 2114;
      v60[3] = phase;
      _os_log_impl(&dword_0, os_log_summary3, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- no actions%{public}@", v60, 0x20u);
    }
  }
}

+ (id)_nameForActionKind:(unint64_t)kind
{
  if (kind - 1 > 2)
  {
    return @"unclassifable";
  }

  else
  {
    return off_3CD20[kind - 1];
  }
}

+ (unint64_t)_kindForAction:(id)action
{
  actionCopy = action;
  changedItem = [actionCopy changedItem];

  if (changedItem)
  {
    changedItem2 = [actionCopy changedItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      changedItem3 = [actionCopy changedItem];
      cardDAVRecordItem = [changedItem3 cardDAVRecordItem];
      v9 = cardDAVRecordItem;
      if (cardDAVRecordItem)
      {
        if ([cardDAVRecordItem isContact])
        {
          v10 = 2;
        }

        else if ([v9 isGroup])
        {
          v10 = 3;
        }

        else
        {
          os_log_summary = [objc_opt_class() os_log_summary];
          if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_ERROR))
          {
            sub_25D18(actionCopy, os_log_summary);
          }

          v10 = 0;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      changedItem3 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(changedItem3, OS_LOG_TYPE_ERROR))
      {
        sub_25CA0(actionCopy, changedItem3);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end