void FCRegisterLogging()
{
  if (FCRegisterLogging_onceToken != -1)
  {
    FCRegisterLogging_cold_1();
  }
}

uint64_t __FCRegisterLogging_block_invoke()
{
  FCLogActivities = os_log_create("com.apple.focus", "Activities");

  return MEMORY[0x2821F96F8]();
}

id _FocusUserDefaults()
{
  if (_FocusUserDefaults_onceToken != -1)
  {
    _FocusUserDefaults_cold_1();
  }

  v1 = _FocusUserDefaults___userDefaults;

  return v1;
}

uint64_t _FCSortRealizedAndPlaceholderActivities(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 isPlaceholder];
  v6 = [v4 isPlaceholder];
  if ((v5 & 1) != 0 || !v6)
  {
    if (!(v6 & 1 | ((v5 & 1) == 0)))
    {
      v7 = 1;
      goto LABEL_16;
    }

    v8 = v3;
    v9 = v4;
    v10 = [v8 activityIdentifier];
    v11 = *MEMORY[0x277D05830];
    v12 = BSEqualStrings();

    if (v12)
    {
      goto LABEL_6;
    }

    v13 = [v9 activityIdentifier];
    v14 = BSEqualStrings();

    if ((v14 & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_14;
      }

      v15 = objc_opt_respondsToSelector();
      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }

      v16 = ___FCSortActivities_block_invoke(v15, v8);
      v17 = ___FCSortActivities_block_invoke(v16, v9);
      if (v16 < v17)
      {
LABEL_6:
        v7 = -1;
LABEL_15:

        goto LABEL_16;
      }

      if (v16 <= v17)
      {
LABEL_14:
        v18 = [v9 activityCreationDate];
        v19 = [v8 activityCreationDate];
        v7 = [v18 compare:v19];

        goto LABEL_15;
      }
    }

    v7 = 1;
    goto LABEL_15;
  }

  v7 = -1;
LABEL_16:

  return v7;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}