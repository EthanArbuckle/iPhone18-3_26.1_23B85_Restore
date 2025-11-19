id _DKLogSystem()
{
  if (qword_100008130 != -1)
  {
    sub_100000F9C();
  }

  v1 = qword_100008128;

  return v1;
}

void sub_100000CBC(id a1)
{
  qword_100008128 = os_log_create("com.apple.disembarkui", "general");

  _objc_release_x1();
}