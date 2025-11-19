@interface SetOrRemoveProperty
@end

@implementation SetOrRemoveProperty

uint64_t __genericMFi_util_SetOrRemoveProperty_block_invoke(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 4;
  if (a1[4])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      __genericMFi_util_SetOrRemoveProperty_block_invoke_cold_1(a1, v4);
    }

    acc_endpoint_removeProperty(a2, *v4);
  }

  if (a1[6] && a1[7])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      __genericMFi_util_SetOrRemoveProperty_block_invoke_cold_2(a1, a1 + 6, a1 + 7);
    }

    acc_endpoint_setProperty(a2, a1[6], a1[7]);
  }

  return 1;
}

void __genericMFi_util_SetOrRemoveProperty_block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *(a1 + 40);
  v8 = *a2;
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __genericMFi_util_SetOrRemoveProperty_block_invoke_cold_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *a3;
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x30u);
}

@end