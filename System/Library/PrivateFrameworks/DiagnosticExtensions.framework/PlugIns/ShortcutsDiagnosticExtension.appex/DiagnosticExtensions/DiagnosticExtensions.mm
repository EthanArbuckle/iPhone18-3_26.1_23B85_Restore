id sub_100000F20()
{
  if (qword_100008188 != -1)
  {
    dispatch_once(&qword_100008188, &stru_100004138);
  }

  v1 = qword_100008190;

  return v1;
}

void sub_100000F74(id a1)
{
  qword_100008190 = os_log_create(WFLogSubsystem, "DiagnosticExtension");

  _objc_release_x1();
}