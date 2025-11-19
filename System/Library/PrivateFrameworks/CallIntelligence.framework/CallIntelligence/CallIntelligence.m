int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_100001204(&qword_100008010, &qword_100002050) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_10000170C(0, 0, v5, &unk_100002060, v8);

  v9 = [objc_opt_self() mainRunLoop];
  [v9 run];

  return 0;
}

uint64_t sub_100001204(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000124C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000012E0, v2, v1);
}

uint64_t sub_1000012E0()
{
  v1 = type metadata accessor for Daemon();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = Daemon.init()();
  v4 = async function pointer to Daemon.start()[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100001394;

  return Daemon.start()();
}

uint64_t sub_100001394()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = sub_100001524;
  }

  else
  {
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = sub_1000014B8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000014B8()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100001554()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000158C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001618;

  return sub_10000124C();
}

uint64_t sub_100001618()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001204(&qword_100008010, &qword_100002050) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_1000019CC(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100001A3C(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100001A3C(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100001A3C(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000019CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001204(&qword_100008010, &qword_100002050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001A3C(uint64_t a1)
{
  v2 = sub_100001204(&qword_100008010, &qword_100002050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001AA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001B9C;

  return v7(a1);
}

uint64_t sub_100001B9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001C94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001CCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001E40;

  return sub_100001AA4(a1, v5);
}

uint64_t sub_100001D84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001618;

  return sub_100001AA4(a1, v5);
}