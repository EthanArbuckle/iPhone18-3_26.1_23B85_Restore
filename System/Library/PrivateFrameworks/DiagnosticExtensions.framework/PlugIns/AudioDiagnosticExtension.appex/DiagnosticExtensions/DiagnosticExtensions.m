char *sub_100000F88(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100001A28();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_1000015B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100001A18();
        sub_100001928();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000015B8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100001974(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100001928();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000015B8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100001974(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100001208()
{
  ObjectType = swift_getObjectType();
  sub_100001988();
  sub_100001988();
  sub_100001988();
  sub_100001988();
  sub_1000019C8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100001348()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioDiagnosticExtension()
{
  result = qword_100008258;
  if (!qword_100008258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000014E8()
{
  result = sub_100001998();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1000019D8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_1000015B8(char *a1, int64_t a2, char a3)
{
  result = sub_1000015D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000015D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000018E0(&qword_100008228, &qword_100001C68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000016E8()
{
  v1 = v0;
  v2 = sub_1000019B8();
  v3 = sub_100001A08();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "attachmentForParameters called.", v4, 2u);
  }

  sub_1000018E0(&qword_100008218, &qword_100001C60);
  v5 = sub_100001998();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100001C30;
  v10 = v9 + v8;
  v11 = *(v6 + 16);
  v11(v10, v1 + OBJC_IVAR___AudioDiagnosticExtension_audioCapturesPath, v5);
  v11(v10 + v7, v1 + OBJC_IVAR___AudioDiagnosticExtension_avvcCapturesPath, v5);
  v11(v10 + 2 * v7, v1 + OBJC_IVAR___AudioDiagnosticExtension_tailspinsPath, v5);
  v12 = sub_1000019A8();

  if (!v12)
  {
    return 0;
  }

  v13 = sub_100000F88(v12);

  return v13;
}

uint64_t sub_1000018E0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001928()
{
  result = qword_100008220;
  if (!qword_100008220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008220);
  }

  return result;
}

_OWORD *sub_100001974(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}