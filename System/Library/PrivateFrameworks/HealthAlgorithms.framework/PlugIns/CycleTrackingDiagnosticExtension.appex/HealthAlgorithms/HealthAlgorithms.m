id sub_100000E20()
{
  if (qword_100008170 != -1)
  {
    sub_100001398();
  }

  v1 = qword_100008178;

  return v1;
}

uint64_t sub_1000011E8(const char *a1)
{
  out_token = -1;
  notify_register_check(a1, &out_token);
  if (out_token == -1)
  {
    v2 = sub_100000E20();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000013AC(v2);
    }
  }

  else
  {
    notify_set_state(out_token, 1uLL);
    notify_post(a1);
  }

  return out_token;
}

void sub_10000126C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = sub_100000E20();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "triggering force analysis successful";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138543362;
    v11 = v4;
    v7 = "triggering force analysis failed with error %{public}@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

void sub_100001354(id a1)
{
  qword_100008178 = os_log_create("com.apple.HealthAlgorithms", "diagnostic");

  _objc_release_x1();
}