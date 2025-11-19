id _DKLogSystem()
{
  if (_DKLogSystem_onceToken != -1)
  {
    _DKLogSystem_cold_1();
  }

  v1 = _DKLogSystem_log;

  return v1;
}