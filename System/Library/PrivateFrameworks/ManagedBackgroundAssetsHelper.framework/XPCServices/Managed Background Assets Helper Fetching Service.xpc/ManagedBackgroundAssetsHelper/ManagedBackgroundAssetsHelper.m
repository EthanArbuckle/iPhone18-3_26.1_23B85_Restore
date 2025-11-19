void sub_100000BF4()
{
  v1 = sub_100000DE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100000E44();
  v6 = &v5[*(sub_100000D9C(&qword_100008010, &qword_100000F08) + 48)];
  sub_100000E34();
  sub_100000E14();
  *v6 = nullsub_1;
  *(v6 + 1) = 0;
  (*(v2 + 104))(v5, _s26ManagedBackgroundAssetsXPC14XPCActorSystemC4RoleO6serveryAeA8ServerIDV_yAA10ConnectionC7RequestVYbAJ9RejectionVYKctcAEmFWC, v1);
  v7 = sub_100000E04();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_100000DF4();
  if (!v0)
  {
    qword_100008018 = sub_100000E24();

    v10 = [objc_opt_self() mainRunLoop];
    [v10 run];
  }
}

uint64_t sub_100000D9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}