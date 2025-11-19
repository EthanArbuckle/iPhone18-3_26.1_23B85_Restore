@interface FAShowAccountDetailsHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_showAccountDetailsFor:(id)a3 withCompletion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation FAShowAccountDetailsHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"family:showAccountDetails"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:showAccountDetails"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [a4 objectForKeyedSubscript:@"altDSID"];
  [(FAShowAccountDetailsHook *)self _showAccountDetailsFor:v9 withCompletion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [a3 clientInfo];
  v7 = [v8 objectForKeyedSubscript:@"altDSID"];
  [(FAShowAccountDetailsHook *)self _showAccountDetailsFor:v7 withCompletion:v6];
}

- (void)_showAccountDetailsFor:(id)a3 withCompletion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[FAShowAccountDetailsHook _showAccountDetailsFor:withCompletion:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "%s - show account details for %@", buf, 0x16u);
  }

  v9 = objc_opt_new();
  [v9 setCachePolicy:1];
  [v9 setQualityOfService:33];
  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke;
  v13[3] = &unk_2782F3DA0;
  objc_copyWeak(&v16, buf);
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v14 = v11;
  [v9 startRequestWithCompletionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_cold_1(v6, v8);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    v9 = [v5 members];
    v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_13];
    v11 = [v9 filteredArrayUsingPredicate:v10];
    v12 = [v11 firstObject];

    v13 = v12;
    v14 = v13;
    if ([a1[4] length])
    {
      v15 = [v5 members];
      v16 = MEMORY[0x277CCAC30];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_2;
      v29[3] = &unk_2782F3D50;
      v30 = a1[4];
      v17 = [v16 predicateWithBlock:v29];
      v18 = [v15 filteredArrayUsingPredicate:v17];
      v14 = [v18 firstObject];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_3;
    block[3] = &unk_2782F3D78;
    v23 = v13;
    v24 = v14;
    v25 = v5;
    v26 = WeakRetained;
    v19 = a1[5];
    v27 = 0;
    v28 = v19;
    v20 = v14;
    v21 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 altDSID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_3(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider familyMemberAccountChangePasswordControllerWithMainAccount:a1[4] memberToShow:a1[5] familyCircle:a1[6]];
  WeakRetained = objc_loadWeakRetained((a1[7] + 8));
  v4 = [WeakRetained presentationContextForHook:a1[7]];

  [v4 showViewController:v2 sender:0];
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v10 = 136315650;
    v11 = "[FAShowAccountDetailsHook _showAccountDetailsFor:withCompletion:]_block_invoke_3";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "%s - %@ Displaying member details for %@", &v10, 0x20u);
  }

  v8 = a1[8];
  (*(a1[9] + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[FAShowAccountDetailsHook _showAccountDetailsFor:withCompletion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Error %s - %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end