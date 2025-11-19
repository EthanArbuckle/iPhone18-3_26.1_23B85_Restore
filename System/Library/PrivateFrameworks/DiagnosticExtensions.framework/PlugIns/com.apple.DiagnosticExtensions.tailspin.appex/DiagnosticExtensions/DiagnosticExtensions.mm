id sub_100000EE8()
{
  if (qword_1000082A0 != -1)
  {
    sub_10000100C();
  }

  v1 = qword_100008298;

  return v1;
}

void sub_100000F2C(id a1)
{
  v1 = os_log_create("com.apple.tailspin", "library");
  v2 = qword_100008298;
  qword_100008298 = v1;

  v3 = qword_100008298;
  if (!v3)
  {
    sub_100001020();
  }
}

uint64_t sub_100000F8C(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = snprintf(byte_1000082A8, 0x400uLL, "%d ", a1);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_1000082A8[result], 1024 - result, a2, &a9);
  }

  qword_100008158 = byte_1000082A8;
  return result;
}

void sub_100001020()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
  NSExtensionMain();
}