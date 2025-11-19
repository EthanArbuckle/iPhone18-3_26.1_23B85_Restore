void sub_100001CA4(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [*(a1 + 32) stackView];
  v3 = [v2 arrangedSubviews];

  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [*(a1 + 32) stackView];
        [v9 removeArrangedSubview:v8];

        [v8 removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = [*(a1 + 40) userInfo];
  v13 = [v12 objectForKeyedSubscript:@"HIDRMUINotificationPairingCodeDigits"];
  v14 = [v11 createDigitViewArrayFromPairingCodeDigitArray:v13];

  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        v20 = [*(a1 + 32) stackView];
        [v20 addArrangedSubview:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }
}

void sub_100001F14(uint64_t a1)
{
  v1 = 134217984;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Waiting %lldms for animation to finish...", &v1, 0xCu);
}