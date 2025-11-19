@interface PKAccount(NanoPassKit)
- (uint64_t)npkShouldShowSavingsAccountInfo;
@end

@implementation PKAccount(NanoPassKit)

- (uint64_t)npkShouldShowSavingsAccountInfo
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [a1 state];
  if (v2 > 5)
  {
    goto LABEL_8;
  }

  if (((1 << v2) & 0x31) != 0)
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        goto LABEL_8;
      }

      v6 = objc_opt_class();
      v7 = v6;
      [a1 state];
      v8 = PKAccountStateToString();
      v9 = NSStringFromBOOL();
      v18 = 138412802;
      v19 = v6;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@ account in %@ state. Should show savings: %@", &v18, 0x20u);

LABEL_6:
      goto LABEL_7;
    }
  }

  else
  {
    if ((1 << v2) & 6) != 0 || ([a1 supportsOneTimeDeposit] & 1) != 0 || (objc_msgSend(a1, "supportsOneTimeWithdrawal"))
    {
      result = 1;
      goto LABEL_11;
    }

    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v5 = pk_General_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v14 = objc_opt_class();
      v7 = v14;
      [a1 state];
      v15 = PKAccountStateToString();
      [a1 supportsOneTimeDeposit];
      v16 = NSStringFromBOOL();
      [a1 supportsOneTimeWithdrawal];
      v17 = NSStringFromBOOL();
      v18 = 138413058;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@ account in %@ state, supports one time deposit %@, supports one time withdrawal %@.", &v18, 0x2Au);

      goto LABEL_6;
    }
  }

LABEL_8:
  result = 0;
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end