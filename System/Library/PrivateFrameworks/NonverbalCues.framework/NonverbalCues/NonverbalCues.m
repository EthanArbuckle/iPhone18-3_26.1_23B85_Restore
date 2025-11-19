id _log()
{
  if (_log_onceToken != -1)
  {
    _log_cold_1();
  }

  v1 = _log_sLog;

  return v1;
}

uint64_t ___log_block_invoke()
{
  _log_sLog = os_log_create("com.apple.siri.NonverbalCues", "NonverbalCues");

  return MEMORY[0x2821F96F8]();
}