int main(int argc, const char **argv, const char **envp)
{
  os_transaction_create();
  sub_1000011C0();
  swift_unknownObjectRelease();
  dispatch_main();
}

id sub_1000011C0()
{
  v0 = sub_1000013F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001350();
  sub_1000013C8();
  sub_1000013D8();
  v5 = sub_1000013E8();
  v6 = sub_100001408();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting knowledgeconstructiond", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_1000013B8();
  return [objc_opt_self() registerForLaunchEvents];
}

unint64_t sub_100001350()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}