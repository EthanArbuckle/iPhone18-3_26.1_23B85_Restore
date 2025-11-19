@interface CardDAVActionsLogger
+ (OS_os_log)os_log_summary;
+ (id)_nameForActionKind:(unint64_t)a3;
+ (unint64_t)_kindForAction:(id)a3;
+ (void)logSummaryForCardDAVActions:(id)a3 partialResults:(BOOL)a4 initialSync:(BOOL)a5 syncPhase:(id)a6 syncAccount:(id)a7;
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

+ (void)logSummaryForCardDAVActions:(id)a3 partialResults:(BOOL)a4 initialSync:(BOOL)a5 syncPhase:(id)a6 syncAccount:(id)a7
{
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v39 = a7;
  v13 = &stru_3CFD8;
  v14 = @"(partial)";
  if (!v10)
  {
    v14 = &stru_3CFD8;
  }

  if (v9)
  {
    v13 = @"(initial)";
  }

  v38 = [NSString stringWithFormat:@"%@%@ %@", v14, v13, a6];
  v37 = v12;
  if ([v12 count])
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
    v15 = v12;
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
          v21 = [a1 _kindForAction:v20];
          v22 = [v20 itemChangeType];
          if (v22 == &dword_0 + 2)
          {
            ++v60[3 * v21 + 2];
          }

          else if (v22 == &dword_0 + 1)
          {
            ++v60[3 * v21 + 1];
          }

          else if (v22)
          {
            v23 = [objc_opt_class() os_log_summary];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v40 = [v39 accountDescription];
              v24 = [v39 publicDescription];
              *buf = 138412802;
              v46 = v40;
              v47 = 2114;
              v48 = v24;
              v49 = 2112;
              v50 = v20;
              _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Syncing account %@ (%{public}@) -- unexpected action %@", buf, 0x20u);
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
      v27 = [a1 _nameForActionKind:v25];
      v28 = *(v26 - 2);
      if (v28 || *(v26 - 1) || *v26)
      {
        v29 = [objc_opt_class() os_log_summary];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v39 accountDescription];
          v31 = [v39 publicDescription];
          v32 = *(v26 - 1);
          v33 = *v26;
          *buf = 138413826;
          v46 = v30;
          v47 = 2114;
          v48 = v31;
          v49 = 2114;
          v50 = v27;
          v51 = 2048;
          v52 = v28;
          v53 = 2048;
          v54 = v32;
          v55 = 2048;
          v56 = v33;
          v57 = 2114;
          v58 = v38;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- %{public}@ actions (add:%lu mod:%lu del:%lu)%{public}@", buf, 0x48u);
        }
      }

      ++v25;
      v26 += 3;
    }

    while (v25 != 4);
  }

  else
  {
    v34 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v39 accountDescription];
      v36 = [v39 publicDescription];
      LODWORD(v60[0]) = 138412802;
      *(v60 + 4) = v35;
      WORD2(v60[1]) = 2114;
      *(&v60[1] + 6) = v36;
      HIWORD(v60[2]) = 2114;
      v60[3] = v38;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- no actions%{public}@", v60, 0x20u);
    }
  }
}

+ (id)_nameForActionKind:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"unclassifable";
  }

  else
  {
    return off_3CD20[a3 - 1];
  }
}

+ (unint64_t)_kindForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 changedItem];

  if (v4)
  {
    v5 = [v3 changedItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v3 changedItem];
      v8 = [v7 cardDAVRecordItem];
      v9 = v8;
      if (v8)
      {
        if ([v8 isContact])
        {
          v10 = 2;
        }

        else if ([v9 isGroup])
        {
          v10 = 3;
        }

        else
        {
          v11 = [objc_opt_class() os_log_summary];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_25D18(v3, v11);
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
      v7 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_25CA0(v3, v7);
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