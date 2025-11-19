uint64_t gcs_isInternalBuild()
{
  if (gcs_isInternalBuild_onceToken != -1)
  {
    gcs_isInternalBuild_cold_1();
  }

  return gcs_isInternalBuild_isInternalBuild;
}

uint64_t __gcs_isInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  gcs_isInternalBuild_isInternalBuild = result;
  return result;
}

id getGCSLogger()
{
  if (getGCSLogger_onceToken != -1)
  {
    getGCSLogger_cold_1();
  }

  v1 = gcLogger;

  return v1;
}

uint64_t __getGCSLogger_block_invoke()
{
  gcLogger = os_log_create("com.apple.GameController.Settings", "default");

  return MEMORY[0x2821F96F8]();
}