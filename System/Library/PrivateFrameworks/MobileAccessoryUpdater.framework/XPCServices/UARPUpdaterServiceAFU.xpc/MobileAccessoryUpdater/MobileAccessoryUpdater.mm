void sub_1000013E4(uint64_t a1)
{
  v2 = [*(a1 + 32) createFWAssetInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 48);
      v10 = 136315394;
      v11 = "[UARPUpdaterServiceAFU ioKitRuleMatched:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Updating Firmware for %@", &v10, 0x16u);
    }

    v6 = [*(a1 + 32) updateFirmwareWithOptions:0];
    if (v6)
    {
      v7 = *(*(a1 + 40) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100001C3C(a1, v6, v7);
      }
    }

    v8 = [*(a1 + 40) controllers];
    [v8 removeObject:*(a1 + 32)];
  }

  else if (v4)
  {
    v9 = *(a1 + 48);
    v10 = 136315394;
    v11 = "[UARPUpdaterServiceAFU ioKitRuleMatched:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Failed to get firmware asset Info for %@", &v10, 0x16u);
  }
}

uint64_t sub_100001748(uint64_t a1)
{
  qword_1000088E0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = os_log_create("com.apple.accessoryupdater.UARPUpdaterServiceAFU", "main");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UARP Updater Service AFU Started", v7, 2u);
  }

  if (!AUSandboxPlatformInit(v3, "com.apple.accessoryupdater.UARPUpdaterServiceAFU"))
  {
    v4 = objc_opt_new();
    v5 = +[NSXPCListener serviceListener];
    [v5 setDelegate:v4];
    [v5 resume];
  }

  return 0;
}

uint64_t AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = v1;
  bzero(v7, 0x400uLL);
  v4 = v3;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100001DE4();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100001D64();
  }

  v5 = 1;
LABEL_11:

  return v5;
}

void sub_100001B90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100001BB0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[UARPUpdaterServiceAFU ioKitRuleMatched:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to init AFU Controller for %@", &v2, 0x16u);
}

void sub_100001C3C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = 136315650;
  v5 = "[UARPUpdaterServiceAFU ioKitRuleMatched:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to update %@ with error: %@", &v4, 0x20u);
}

void sub_100001CD8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[UARPUpdaterServiceAFUPreferences overriddenFirmwareAssetDirectoryURL]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: read value %@", &v2, 0x16u);
}