@interface HFErrorHandler
+ (id)_descriptionForHFErrorCode:(int64_t)a3;
+ (id)_descriptionForHMErrorCode:(int64_t)a3;
+ (id)_descriptionForHMHomeAddWalletKeyErrorCode:(int64_t)a3;
+ (id)descriptionLocalizationKeyForError:(id)a3;
+ (id)localizedDescriptionForError:(id)a3;
+ (id)sharedHandler;
- (BOOL)_isErrorIndicativeOfApplicationBug:(id)a3 operationType:(id)a4 options:(id)a5;
- (BOOL)_isErrorPermanent:(id)a3 operationType:(id)a4 options:(id)a5;
- (BOOL)canIgnoreError:(id)a3 operationType:(id)a4;
- (id)_localizedDescriptionForError:(id)a3 operationType:(id)a4 options:(id)a5;
- (id)_localizedStringOrNilIfNotFoundForKey:(id)a3;
- (id)_localizedTitleForError:(id)a3 operationType:(id)a4 options:(id)a5;
- (void)handleError:(id)a3 operationType:(id)a4 options:(id)a5 retryBlock:(id)a6 cancelBlock:(id)a7;
- (void)logError:(id)a3 operationDescription:(id)a4;
@end

@implementation HFErrorHandler

+ (id)sharedHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HFErrorHandler_sharedHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_280E02E78 != -1)
  {
    dispatch_once(&qword_280E02E78, block);
  }

  v2 = _MergedGlobals_240;

  return v2;
}

void __31__HFErrorHandler_sharedHandler__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_240;
  _MergedGlobals_240 = v1;
}

- (void)handleError:(id)a3 operationType:(id)a4 options:(id)a5 retryBlock:(id)a6 cancelBlock:(id)a7
{
  v100 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v17 = [(HFErrorHandler *)self presentingAlertOperationType];
      v18 = [v17 isEqual:v13];

      if (v18)
      {
        v19 = HFLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [objc_opt_class() descriptionLocalizationKeyForError:v12];
          *buf = 138543874;
          v95 = v20;
          v96 = 2114;
          v97 = v12;
          v98 = 2114;
          v99 = v13;
          _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "HFErrorHandler: Suppressing error: %{public}@ <%{public}@> for operation: %{public}@ because an alert for that operation is actively being presented", buf, 0x20u);
        }
      }

      else
      {
        if (!v13)
        {
          v21 = [v12 userInfo];
          v13 = [v21 objectForKeyedSubscript:@"HFErrorUserInfoOperationKey"];
        }

        v22 = [v12 userInfo];
        v23 = [v22 objectForKeyedSubscript:@"HFErrorUserInfoOptionsKey"];

        if (v23)
        {
          if (v14)
          {
            v24 = [v14 mutableCopy];
          }

          else
          {
            v24 = [MEMORY[0x277CBEB38] dictionary];
          }

          v25 = v24;
          [v24 addEntriesFromDictionary:v23];

          v14 = v25;
        }

        if ([(HFErrorHandler *)self _isErrorIndicativeOfApplicationBug:v12 operationType:v13 options:v14])
        {
          NSLog(&cfstr_ReceivedErrorT.isa, v12, v13);
        }

        v26 = [(HFErrorHandler *)self canIgnoreError:v12 operationType:v13];
        v27 = HFLogForCategory(0);
        v28 = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [objc_opt_class() descriptionLocalizationKeyForError:v12];
            *buf = 138543874;
            v95 = v13;
            v96 = 2114;
            v97 = v29;
            v98 = 2114;
            v99 = v12;
            _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "HFErrorHandler: [Ignore] Operation: %{public}@ encountered error: %{public}@ <%{public}@>", buf, 0x20u);
          }

          if (v16)
          {
            v16[2](v16);
          }
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v60 = [objc_opt_class() descriptionLocalizationKeyForError:v12];
            *buf = 138543874;
            v95 = v13;
            v96 = 2114;
            v97 = v60;
            v98 = 2114;
            v99 = v12;
            _os_log_error_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_ERROR, "HFErrorHandler: Operation: %{public}@ encountered error: %{public}@ <%{public}@>", buf, 0x20u);
          }

          v67 = v23;

          v30 = [(HFErrorHandler *)self _localizedTitleForError:v12 operationType:v13 options:v14];
          v31 = [(HFErrorHandler *)self _localizedDescriptionForError:v12 operationType:v13 options:v14];
          if (v15)
          {
            v32 = ![(HFErrorHandler *)self _isErrorPermanent:v12 operationType:v13 options:v14];
          }

          else
          {
            v32 = 0;
          }

          v68 = [v14 objectForKeyedSubscript:@"HFErrorHandlerOptionPresentingViewControllerForAlert"];
          v69 = v31;
          if (!v68)
          {
            v33 = v30;
            v34 = [MEMORY[0x277D75128] sharedApplication];
            v35 = [v34 keyWindow];

            v36 = [v35 rootViewController];
            v68 = [v36 hf_topmostViewController];
            if (!v68)
            {
              NSLog(&cfstr_NoViewControll.isa, v35, v36);
            }

            v30 = v33;
            v31 = v69;
          }

          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_295;
          aBlock[3] = &unk_277DF8C40;
          aBlock[4] = self;
          v37 = _Block_copy(aBlock);
          v66 = v30;
          v70 = [MEMORY[0x277D75110] alertControllerWithTitle:v30 message:v31 preferredStyle:1];
          if (v32)
          {
            v38 = _HFLocalizedStringWithDefaultValue(@"HFErrorButtonTitleTryAgain", @"HFErrorButtonTitleTryAgain", 1);
            v39 = [v14 objectForKeyedSubscript:@"HFErrorHandlerOptionRetryButtonText"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v41 = [v14 objectForKeyedSubscript:@"HFErrorHandlerOptionRetryButtonText"];

              v38 = v41;
            }

            v42 = MEMORY[0x277D750F8];
            v79 = MEMORY[0x277D85DD0];
            v80 = 3221225472;
            v81 = __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_303;
            v82 = &unk_277DF8C68;
            v65 = &v83;
            v83 = v12;
            v64 = &v85;
            v85 = v15;
            v43 = v37;
            v86 = v43;
            v84 = v38;
            v61 = v84;
            v44 = [v42 actionWithTitle:? style:? handler:?];
            [v70 addAction:v44];

            v45 = _HFLocalizedStringWithDefaultValue(@"HFErrorButtonTitleCancel", @"HFErrorButtonTitleCancel", 1);
            v46 = [v14 objectForKeyedSubscript:@"HFErrorHandlerOptionCancelButtonTextKey"];
            objc_opt_class();
            v47 = objc_opt_isKindOfClass();

            if (v47)
            {
              v48 = [v14 objectForKeyedSubscript:@"HFErrorHandlerOptionCancelButtonTextKey"];

              v45 = v48;
            }

            v49 = MEMORY[0x277D750F8];
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_308;
            v75[3] = &unk_277DF8C90;
            v77 = v16;
            v78 = v43;
            v76 = v45;
            v62 = v43;
            v50 = v45;
            v51 = [v49 actionWithTitle:v50 style:0 handler:v75];
            [v70 addAction:v51];

            v52 = v70;
            v53 = v84;
            v55 = v61;
            v54 = &v86;
          }

          else
          {
            v56 = _HFLocalizedStringWithDefaultValue(@"HFErrorButtonTitleOK", @"HFErrorButtonTitleOK", 1);
            v63 = MEMORY[0x277D750F8];
            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_312;
            v71[3] = &unk_277DF8C90;
            v65 = &v73;
            v73 = v16;
            v74 = v37;
            v64 = &v74;
            v54 = &v72;
            v72 = v56;
            v57 = v56;
            v55 = v37;
            v58 = v63;
            v62 = v57;
            v53 = [v58 actionWithTitle:v57 style:0 handler:v71];
            v52 = v70;
            [v70 addAction:v53];
          }

          [(HFErrorHandler *)self setPresentingAlertOperationType:v13];
          [v68 presentViewController:v52 animated:1 completion:0];

          v23 = v67;
        }
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke;
      block[3] = &unk_277DF8C18;
      block[4] = self;
      v89 = v12;
      v13 = v13;
      v90 = v13;
      v14 = v14;
      v91 = v14;
      v92 = v15;
      v93 = v16;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

void __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_295(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x4BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFErrorHandler: User dismissed error alert by tapping %{public}@", &v6, 0xCu);
  }

  [*(a1 + 32) setPresentingAlertOperationType:0];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_303(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x4BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "HFErrorHandler: User tapped retry button from alert for error %{public}@", &v8, 0xCu);
  }

  v4 = a1[6];
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = a1[5];
  result = (*(a1[7] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_308(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x4BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFErrorHandler handleError:operationType:options:retryBlock:cancelBlock:]_block_invoke";
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button from alert", &v7, 0xCu);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = a1[4];
  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __75__HFErrorHandler_handleError_operationType_options_retryBlock_cancelBlock___block_invoke_312(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x4BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFErrorHandler handleError:operationType:options:retryBlock:cancelBlock:]_block_invoke";
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'OK' from alert", &v7, 0xCu);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = a1[4];
  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)logError:(id)a3 operationDescription:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = HFLogForCategory(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v8)
      {
        v9 = [objc_opt_class() descriptionLocalizationKeyForError:v5];
        v14 = 138543874;
        v15 = v6;
        v16 = 2114;
        v17 = v9;
        v18 = 2114;
        v19 = v5;
        v10 = "HFErrorHandler: [Log] Operation: %{public}@ encountered error: %{public}@ <%{public}@>";
        v11 = v7;
        v12 = 32;
LABEL_9:
        _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, v10, &v14, v12);
      }
    }

    else if (v8)
    {
      v9 = [objc_opt_class() descriptionLocalizationKeyForError:v5];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v10 = "HFErrorHandler: Encountered error: %{public}@ <%{public}@>";
      v11 = v7;
      v12 = 22;
      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)canIgnoreError:(id)a3 operationType:(id)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCFD28]];

  if (v7)
  {
    v8 = [v5 code];
    v9 = (v8 - 15) <= 0x35 && ((1 << (v8 - 15)) & 0x24000003800101) != 0 || v8 == 1 && a4 == @"HFOperationModifyUserAccess";
  }

  else
  {
    v10 = [v5 domain];
    v11 = [v10 isEqualToString:@"HFErrorDomain"];

    if (v11)
    {
      v12 = [v5 code];
      if (v12 <= 0x34)
      {
        v9 = 0x10402000000000uLL >> v12;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

- (BOOL)_isErrorIndicativeOfApplicationBug:(id)a3 operationType:(id)a4 options:(id)a5
{
  v17[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"HFOperationNamingObject"])
  {
    LOBYTE(v8) = 0;
    goto LABEL_15;
  }

  v9 = [v6 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCFD28]];

  if (v10)
  {
    v11 = [v6 code];
    if (v11 <= 0x3E)
    {
      if (((1 << v11) & 0x41003000597800E8) != 0)
      {
LABEL_14:
        LOBYTE(v8) = 1;
        goto LABEL_15;
      }

      if (((1 << v11) & 0x8480000000000) != 0)
      {
        v17[0] = @"HFOperationChangePassword";
        v17[1] = @"HFOperationEditServiceGroup";
        v17[2] = @"HFOperationEditService";
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
        LOBYTE(v8) = [v12 containsObject:v7] ^ 1;

        goto LABEL_15;
      }
    }

    LOBYTE(v8) = 0;
    if (v11 - 69 <= 0xB && ((1 << (v11 - 69)) & 0x80F) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = [v6 domain];
    v8 = [v13 isEqualToString:@"HFErrorDomain"];

    if (v8)
    {
      v14 = [v6 code];
      if (v14 <= 0x33)
      {
        LOBYTE(v8) = 0xC000200000000uLL >> v14;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)_isErrorPermanent:(id)a3 operationType:(id)a4 options:(id)a5
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCFD28]];

  if (v7)
  {
    v8 = [v5 code];
    if (((v8 - 4) > 0x3F || ((1 << (v8 - 4)) & 0xF8AF402000005C71) == 0) && ((v8 - 73) > 0xC || ((1 << (v8 - 73)) & 0x1E73) == 0) && v8 != 2040)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v9 = [v5 domain];
  v10 = [v9 isEqualToString:@"HFErrorDomain"];

  if (v10)
  {
    v11 = [v5 code];
    if (v11 - 74 <= 0x1C && ((1 << (v11 - 74)) & 0x1F0001AF) != 0 || (v12 = 1, v11 <= 0x29) && ((1 << v11) & 0x28C00000020) != 0)
    {
LABEL_13:
      v12 = 0;
    }
  }

  else
  {
    v14 = [v5 domain];
    v15 = [v14 isEqualToString:*MEMORY[0x277CD06D8]];

    if (!v15)
    {
LABEL_19:
      v12 = 1;
      goto LABEL_14;
    }

    v16 = [v5 code];
    if (v16 <= 8)
    {
      v12 = 0xD9u >> v16;
    }

    else
    {
      v12 = 1;
    }
  }

LABEL_14:

  return v12 & 1;
}

- (id)_localizedTitleForError:(id)a3 operationType:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKeyedSubscript:@"HFErrorUserInfoOptionTitleKey"];
  v12 = [v9 objectForKeyedSubscript:@"HFErrorHandlerOptionFailedItemName"];

  v13 = [objc_opt_class() descriptionLocalizationKeyForError:v10];

  if (v11)
  {
    v14 = v11;
LABEL_3:
    v15 = v14;
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFError_%@_%@_withName_title", v8, v13];
  v17 = [(HFErrorHandler *)self _localizedStringOrNilIfNotFoundForKey:v16];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFError_%@_withName_title", v8];

    v18 = [(HFErrorHandler *)self _localizedStringOrNilIfNotFoundForKey:v19];
    if (!v18)
    {
LABEL_15:

      goto LABEL_17;
    }

    v16 = v19;
  }

  if (([v18 containsString:@"%@"] & 1) == 0)
  {
    NSLog(&cfstr_IncorrectlyFor.isa, v18);
  }

  if (![v18 containsString:@"%@"])
  {
    v19 = v16;
    goto LABEL_15;
  }

  v25 = 0;
  v15 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:&v25, v12];
  v20 = v25;
  v21 = v20;
  if (v15)
  {

    goto LABEL_19;
  }

  NSLog(&cfstr_CouldnTLocaliz_0.isa, v18, v20);

LABEL_17:
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFError_%@_%@_title", v8, v13];
  v15 = [(HFErrorHandler *)self _localizedStringOrNilIfNotFoundForKey:v22];

  if (!v15)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFError_%@_title", v8];
    v15 = [(HFErrorHandler *)self _localizedStringOrNilIfNotFoundForKey:v23];

    if (!v15)
    {
      v14 = _HFLocalizedStringWithDefaultValue(@"HFError_HFOperationGeneric_title", @"HFError_HFOperationGeneric_title", 1);
      goto LABEL_3;
    }
  }

LABEL_19:

  return v15;
}

+ (id)localizedDescriptionForError:(id)a3
{
  v3 = a3;
  v4 = +[HFErrorHandler sharedHandler];
  v5 = [v4 _localizedDescriptionForError:v3 operationType:&stru_2824B1A78 options:MEMORY[0x277CBEC10]];

  return v5;
}

- (id)_localizedDescriptionForError:(id)a3 operationType:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:@"HFErrorUserInfoOptionDescriptionKey"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    goto LABEL_12;
  }

  v14 = [objc_opt_class() descriptionLocalizationKeyForError:v8];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFError_%@_%@_description", v9, v14];
  v16 = [(HFErrorHandler *)self _localizedStringOrNilIfNotFoundForKey:v15];
  if (v16)
  {
    v13 = v16;
LABEL_6:
    v18 = [v10 objectForKeyedSubscript:@"HFErrorHandlerOptionFailedItemName"];
    if (v18)
    {
      v22 = 0;
      v19 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:&v22, v18];
      v20 = v22;

      if (!v19)
      {
        NSLog(&cfstr_CouldnTLocaliz_0.isa, v15, v20);
      }

      v13 = v19;
    }

    goto LABEL_11;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFError_%@_description", v14];

  v13 = [(HFErrorHandler *)self _localizedStringOrNilIfNotFoundForKey:v17];
  v15 = v17;
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_11:

LABEL_12:

  return v13;
}

- (id)_localizedStringOrNilIfNotFoundForKey:(id)a3
{
  v3 = a3;
  v4 = _HFLocalizedStringWithDefaultValue(v3, 0, 0);
  if (([v4 isEqualToString:&stru_2824B1A78] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", v3))
  {

    v4 = 0;
  }

  return v4;
}

+ (id)descriptionLocalizationKeyForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCFD28]];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [a1 _descriptionForHMErrorCode:{objc_msgSend(v4, "code")}];
    [v7 stringWithFormat:@"HMErrorCode%@", v8];
    v15 = LABEL_7:;

    goto LABEL_8;
  }

  v9 = [v4 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x277CD06D8]];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v8 = [a1 _descriptionForHMHomeAddWalletKeyErrorCode:{objc_msgSend(v4, "code")}];
    [v11 stringWithFormat:@"HMHomeAddWalletKeyErrorCode%@", v8];
    goto LABEL_7;
  }

  v12 = [v4 domain];
  v13 = [v12 isEqualToString:@"HFErrorDomain"];

  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v8 = [a1 _descriptionForHFErrorCode:{objc_msgSend(v4, "code")}];
    [v14 stringWithFormat:@"HFErrorCode%@", v8];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

+ (id)_descriptionForHMHomeAddWalletKeyErrorCode:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 >= 9)
  {
    v6 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "+[HFErrorHandler _descriptionForHMHomeAddWalletKeyErrorCode:]";
      v10 = 2112;
      v11 = a1;
      v12 = 2048;
      v13 = a3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s(%@) UNKNOWN HOMEKIT ERROR %ld", &v8, 0x20u);
    }

    result = 0;
  }

  else
  {
    result = off_277DF8CB0[a3];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)_descriptionForHMErrorCode:(int64_t)a3
{
  if (a3 <= 2000)
  {
    v6 = @"AccessDenied";
    switch(a3)
    {
      case -1:
        v6 = @"UnexpectedError";

        break;
      case 1:
        v6 = @"AlreadyExists";

        break;
      case 2:
        v6 = @"NotFound";

        break;
      case 3:
        v6 = @"InvalidParameter";

        break;
      case 4:
        v6 = @"AccessoryNotReachable";

        break;
      case 5:
        v6 = @"ReadOnlyCharacteristic";

        break;
      case 6:
        v6 = @"WriteOnlyCharacteristic";

        break;
      case 7:
        v6 = @"NotificationNotSupported";

        break;
      case 8:
        v6 = @"OperationTimedOut";

        break;
      case 9:
        v6 = @"AccessoryPoweredOff";

        break;
      case 10:
        goto LABEL_395;
      case 11:
        v6 = @"ObjectAssociatedToAnotherHome";

        break;
      case 12:
        v6 = @"ObjectNotAssociatedToAnyHome";

        break;
      case 13:
        v6 = @"ObjectAlreadyAssociatedToHome";

        break;
      case 14:
        v6 = @"AccessoryIsBusy";

        break;
      case 15:
        v6 = @"OperationInProgress";

        break;
      case 16:
        v6 = @"AccessoryOutOfResources";

        break;
      case 17:
        v6 = @"InsufficientPrivileges";

        break;
      case 18:
        v6 = @"AccessoryPairingFailed";

        break;
      case 19:
        v6 = @"InvalidDataFormatSpecified";

        break;
      case 20:
        v6 = @"NilParameter";

        break;
      case 21:
        v6 = @"UnconfiguredParameter";

        break;
      case 22:
        v6 = @"InvalidClass";

        break;
      case 23:
        v6 = @"OperationCancelled";

        break;
      case 24:
        v6 = @"RoomForHomeCannotBeInZone";

        break;
      case 25:
        v6 = @"NoActionsInActionSet";

        break;
      case 26:
        v6 = @"NoRegisteredActionSets";

        break;
      case 27:
        v6 = @"MissingParameter";

        break;
      case 28:
        v6 = @"FireDateInPast";

        break;
      case 29:
        v6 = @"RoomForHomeCannotBeUpdated";

        break;
      case 30:
        v6 = @"ActionInAnotherActionSet";

        break;
      case 31:
        v6 = @"ObjectWithSimilarNameExistsInHome";

        break;
      case 32:
        v6 = @"HomeWithSimilarNameExists";

        break;
      case 33:
        v6 = @"RenameWithSimilarName";

        break;
      case 34:
        v6 = @"CannotRemoveNonBridgeAccessory";

        break;
      case 35:
        v6 = @"NameContainsProhibitedCharacters";

        break;
      case 36:
        v6 = @"NameDoesNotStartWithValidCharacters";

        break;
      case 37:
        v6 = @"UserIDNotEmailAddress";

        break;
      case 38:
        v6 = @"UserDeclinedAddingUser";

        break;
      case 39:
        v6 = @"UserDeclinedRemovingUser";

        break;
      case 40:
        v6 = @"UserDeclinedInvite";

        break;
      case 41:
        v6 = @"UserManagementFailed";

        break;
      case 42:
        v6 = @"RecurrenceTooSmall";

        break;
      case 43:
        v6 = @"InvalidValueType";

        break;
      case 44:
        v6 = @"ValueLowerThanMinimum";

        break;
      case 45:
        v6 = @"ValueHigherThanMaximum";

        break;
      case 46:
        v6 = @"StringLongerThanMaximum";

        break;
      case 47:
        v6 = @"HomeAccessNotAuthorized";

        break;
      case 48:
        v6 = @"OperationNotSupported";

        break;
      case 49:
        v6 = @"MaximumObjectLimitReached";

        break;
      case 50:
        v6 = @"AccessorySentInvalidResponse";

        break;
      case 51:
        v6 = @"StringShorterThanMinimum";

        break;
      case 52:
        v6 = @"GenericError";

        break;
      case 53:
        v6 = @"SecurityFailure";

        break;
      case 54:
        v6 = @"CommunicationFailure";

        break;
      case 55:
        v6 = @"MessageAuthenticationFailed";

        break;
      case 56:
        v6 = @"InvalidMessageSize";

        break;
      case 57:
        v6 = @"AccessoryDiscoveryFailed";

        break;
      case 58:
        v6 = @"ClientRequestError";

        break;
      case 59:
        v6 = @"AccessoryResponseError";

        break;
      case 60:
        v6 = @"NameDoesNotEndWithValidCharacters";

        break;
      case 61:
        v6 = @"AccessoryIsBlocked";

        break;
      case 62:
        v6 = @"InvalidAssociatedServiceType";

        break;
      case 63:
        v6 = @"ActionSetExecutionFailed";

        break;
      case 64:
        v6 = @"ActionSetExecutionPartialSuccess";

        break;
      case 65:
        v6 = @"ActionSetExecutionInProgress";

        break;
      case 66:
        v6 = @"AccessoryOutOfCompliance";

        break;
      case 67:
        v6 = @"DataResetFailure";

        break;
      case 68:
        v6 = @"NotificationAlreadyEnabled";

        break;
      case 69:
        v6 = @"RecurrenceMustBeOnSpecifiedBoundaries";

        break;
      case 70:
        v6 = @"DateMustBeOnSpecifiedBoundaries";

        break;
      case 71:
        v6 = @"CannotActivateTriggerTooFarInFuture";

        break;
      case 72:
        v6 = @"RecurrenceTooLarge";

        break;
      case 73:
        v6 = @"ReadWritePartialSuccess";

        break;
      case 74:
        v6 = @"ReadWriteFailure";

        break;
      case 75:
        v6 = @"NotSignedIntoiCloud";

        break;
      case 76:
        v6 = @"KeychainSyncNotEnabled";

        break;
      case 77:
        v6 = @"CloudDataSyncInProgress";

        break;
      case 78:
        v6 = @"NetworkUnavailable";

        break;
      case 79:
        v6 = @"AddAccessoryFailed";

        break;
      case 80:
        v6 = @"MissingEntitlement";

        break;
      case 81:
        v6 = @"CannotUnblockNonBridgeAccessory";

        break;
      case 82:
        v6 = @"DeviceLocked";

        break;
      case 83:
        v6 = @"CannotRemoveBuiltinActionSet";

        break;
      case 84:
        v6 = @"LocationForHomeDisabled";

        break;
      case 85:
        v6 = @"NotAuthorizedForLocationServices";

        break;
      case 86:
        v6 = @"ReferToUserManual";

        break;
      case 87:
        v6 = @"InvalidOrMissingAuthorizationData";

        break;
      case 88:
        v6 = @"BridgedAccessoryNotReachable";

        break;
      case 89:
        v6 = @"NotAuthorizedForMicrophoneAccess";

        break;
      case 90:
        v6 = @"IncompatibleNetwork";

        break;
      case 91:
        v6 = @"NoHomeHub";

        break;
      case 92:
        v6 = @"NoCompatibleHomeHub";

        break;
      case 93:
        v6 = @"IncompatibleAccessory";

        break;
      case 95:
        v6 = @"ObjectWithSimilarNameExists";

        break;
      case 96:
        v6 = @"OwnershipFailure";

        break;
      case 97:
        v6 = @"MaximumAccessoriesOfTypeInHome";

        break;
      case 98:
        v6 = @"WiFiCredentialGenerationFailed";

        break;
      case 99:
        v6 = @"EnterpriseNetworkNotSupported";

        break;
      case 100:
        v6 = @"TimedOutWaitingForAccessory";

        break;
      case 101:
        v6 = @"AccessoryCommunicationFailure";

        break;
      case 102:
        v6 = @"FailedToJoinNetwork";

        break;
      default:
        goto LABEL_394;
    }

    return v6;
  }

  if (a3 <= 2299)
  {
    if (a3 > 2005)
    {
      if (a3 <= 2099)
      {
        if (a3 == 2006)
        {
          v6 = @"QuotaExceeded";
        }

        else
        {
          if (a3 != 2040)
          {
            goto LABEL_394;
          }

          v6 = @"AddHomeWithoutiCloudAccount";
        }
      }

      else
      {
        switch(a3)
        {
          case 2100:
            v6 = @"NoTargetAccessory";

            break;
          case 2200:
            v6 = @"InvalidCharacters";

            break;
          case 2201:
            v6 = @"WeakPassword";

            break;
          default:
            goto LABEL_394;
        }
      }
    }

    else if (a3 <= 2002)
    {
      if (a3 == 2001)
      {
        v6 = @"OperationCanceledByUser";
      }

      else
      {
        v6 = @"IncorrectSetupCode";
      }
    }

    else if (a3 == 2003)
    {
      v6 = @"SecureAccessDenied";
    }

    else if (a3 == 2004)
    {
      v6 = @"UnsupportedSetupPayload";
    }

    else
    {
      v6 = @"MediaRemoteError";
    }
  }

  else if (a3 <= 2500)
  {
    if (a3 <= 2400)
    {
      if (a3 == 2300)
      {
        v6 = @"VoiceShortcutWithSimilarNameExists";
      }

      else
      {
        if (a3 != 2400)
        {
          goto LABEL_394;
        }

        v6 = @"AccessorySuspended";
      }
    }

    else
    {
      switch(a3)
      {
        case 2401:
          v6 = @"AccessorySuspendedLocally";

          break;
        case 2404:
          v6 = @"OperationStarted";

          break;
        case 2500:
          v6 = @"ResetConfig";

          break;
        default:
          goto LABEL_394;
      }
    }
  }

  else
  {
    if (a3 <= 2503)
    {
      if (a3 == 2501)
      {
        v6 = @"HomeUIServiceTerminated";
      }

      else if (a3 == 2502)
      {
        v6 = @"HomeUIServiceBackgrounded";
      }

      else
      {
        v6 = @"NoClients";
      }

      return v6;
    }

    switch(a3)
    {
      case 2504:
        v6 = @"AccessoryBrowserStopped";

        break;
      case 2602:
        v6 = @"AccessCodeDuplicate";

        break;
      case 2821:
        v6 = @"PrivateAccountUnqualifiedForHomeWithAdaptiveTemperatureAutomationsEnabled";

        return v6;
      default:
LABEL_394:
        v6 = [a1 _descriptionForHMHomeAddWalletKeyErrorCode:v3];
LABEL_395:

        return v6;
    }
  }

  return v6;
}

+ (id)_descriptionForHFErrorCode:(int64_t)a3
{
  if ((a3 + 1) > 0x6A)
  {
    return 0;
  }

  else
  {
    return *(&off_277DF8CF8 + a3 + 1);
  }
}

@end