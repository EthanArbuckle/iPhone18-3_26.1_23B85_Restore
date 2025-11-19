@interface InitiateAuthFailureSysdiagnose
@end

@implementation InitiateAuthFailureSysdiagnose

void __acc_sysdiagnose_InitiateAuthFailureSysdiagnose_block_invoke(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "acc_sysdiagnose_InitiateAuthFailureSysdiagnose_block_invoke";
    v3 = 1024;
    v4 = 57;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d", &v1, 0x12u);
  }

  _acc_sysdiagnose_authFailure(0);
  _isSysdiagnosePending = 0;
}

@end