uint64_t BTDevicePickerUILogInit()
{
  BTDevicePickerUILogComponent = os_log_create("com.apple.bluetooth", "BTDevicePickerUI");

  return _objc_release_x1();
}

void sub_100003BFC(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 88);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Ignoring authentication request as there's something pending user interaction: _sspAlert(%@), _alert(%@)", &v5, 0x16u);
}