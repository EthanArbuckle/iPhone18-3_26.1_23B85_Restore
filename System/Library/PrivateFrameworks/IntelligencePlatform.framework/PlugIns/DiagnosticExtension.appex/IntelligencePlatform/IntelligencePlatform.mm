id sub_100001504(uint64_t a1)
{
  v3 = [objc_allocWithZone(GDXPCSysdiagnoseService) init];
  sub_1000030B0();
  sub_100001F34(v90, a1, &v91);
  sub_1000020F0(v90);
  v4 = &_s10Foundation22_convertNSErrorToErrorys0E0_pSo0C0CSgF_ptr;
  v5 = &GDIPDiagnosticExtension__metaData;
  if (!v92)
  {
    sub_100002144(&v91);
    goto LABEL_9;
  }

  v6 = swift_dynamicCast();
  if (!v6)
  {
LABEL_9:
    sub_100002AE8();
    if (!v14)
    {
      sub_100002A54(&qword_100008278);
    }

    v15 = sub_100002FE0();
    sub_1000021F4(v15, static Logging.defaultLog);
    v16 = sub_100002FD0();
    v17 = sub_100003080();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_100002C7C();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skipping collection of entityTagging diagnostic data because user did not consent", v18, 2u);
      sub_100002AF4(v18);
    }

    v19 = sub_100002FD0();
    v20 = sub_100003080();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_100002C7C();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Skipping collection of event view diagnostic data because user did not consent", v21, 2u);
      sub_100002AF4(v21);
    }

    v23 = 0;
LABEL_16:
    v90[0] = 0;
    v24 = sub_100002B88(v22, "entityRelevanceRankingSupplementalDiagnosticsWithError:");
    if (v24)
    {
      v25 = v24;
      sub_100003020();
      sub_100002C00();

      v26 = objc_allocWithZone(DEAttachmentItem);
      sub_100002B0C();

      result = sub_100002BB8();
      if (!result)
      {
        __break(1u);
        goto LABEL_73;
      }

      sub_100002B70();
      sub_100003040();
      sub_100002A74();
      if (v12)
      {
        sub_100002A88(v27);
      }

      v28 = sub_100002BD0();
      if (v23)
      {
LABEL_21:
        v90[0] = 0;
        v29 = sub_100002B88(v28, "entityResolutionSupplementalDiagnosticsWithError:");
        if (!v29)
        {
          v49 = v90[0];
          sub_100002B58();

          swift_willThrow();
          sub_100002AE8();
          if (!v14)
          {
            sub_100002A54(&qword_100008278);
          }

          v50 = sub_100002FE0();
          sub_100002C18(v50, static Logging.defaultLog);
          v30 = sub_100002FD0();
          sub_100003080();
          sub_100002C64();
          if (sub_100002C94())
          {
            sub_100002BE8();
            v51 = sub_100002B18();
            sub_100002C58(v51);
            v5->flags = 136315138;
            swift_getErrorValue();
            v52 = sub_1000030E0();
            sub_100002BA0(v52, v53);
            sub_100002B34();
            sub_100002C44();
            sub_100002AA8(&_mh_execute_header, v54, v55, "Failed to collect entityResolution diagnostic data: %s");
            v56 = sub_100002CAC();
            v4 = &_s10Foundation22_convertNSErrorToErrorys0E0_pSo0C0CSgF_ptr;
            sub_100002AF4(v56);
            sub_100002AC8();
          }

          else
          {
          }

LABEL_44:
          v90[0] = 0;
          v57 = sub_100002B88(v33, "viewsSupplementalDiagnosticsWithError:");
          if (!v57)
          {
            v61 = v90[0];
            sub_100002B58();

            swift_willThrow();
            sub_100002AE8();
            if (!v14)
            {
              sub_100002A54(&qword_100008278);
            }

            v62 = sub_100002FE0();
            sub_100002C18(v62, static Logging.defaultLog);
            v63 = sub_100002FD0();
            sub_100003080();
            sub_100002C64();
            if (sub_100002C94())
            {
              sub_100002BE8();
              v64 = sub_100002B18();
              sub_100002C58(v64);
              v5->flags = 136315138;
              swift_getErrorValue();
              v65 = sub_1000030E0();
              v67 = sub_100002BA0(v65, v66);

              *&v5->ivar_base_start = v67;
              sub_100002AA8(&_mh_execute_header, v68, v69, "Failed to collect views diagnostic data: %s");
              v70 = sub_100002CAC();
              sub_100002AF4(v70);
              sub_100002AF4(v5);
            }

            else
            {
            }

            return &_swiftEmptyArrayStorage;
          }

          v58 = v57;
          sub_100003020();
          sub_100002C00();

          v59 = objc_allocWithZone(v4[63]);
          sub_100002B0C();

          result = sub_100002BB8();
          if (result)
          {
            sub_100002B70();
            sub_100003040();
            sub_100002A74();
            if (v12)
            {
              sub_100002A88(v60);
            }

            sub_100002BD0();
LABEL_49:

            return &_swiftEmptyArrayStorage;
          }

          goto LABEL_74;
        }

        v30 = v29;
        sub_100003020();
        sub_100002C00();

        v31 = objc_allocWithZone(v4[63]);
        sub_100002B0C();

        result = sub_100002BB8();
        if (result)
        {
          sub_100002B70();
          sub_100003040();
          sub_100002A74();
          if (v12)
          {
            sub_100002A88(v32);
          }

          v33 = sub_100002BD0();
          goto LABEL_44;
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }
    }

    else
    {
      v34 = v90[0];
      sub_100002B58();

      swift_willThrow();
      sub_100002AE8();
      if (!v14)
      {
        sub_100002A54(&qword_100008278);
      }

      v35 = sub_100002FE0();
      sub_100002C18(v35, static Logging.defaultLog);
      v25 = sub_100002FD0();
      sub_100003080();
      sub_100002C64();
      if (sub_100002C94())
      {
        sub_100002BE8();
        v36 = sub_100002B18();
        sub_100002C58(v36);
        v5->flags = 136315138;
        swift_getErrorValue();
        v37 = sub_1000030E0();
        sub_100002BA0(v37, v38);
        sub_100002B34();
        sub_100002C44();
        sub_100002AA8(&_mh_execute_header, v39, v40, "Failed to collect entityRelevanceRanking diagnostic data: %s");
        v41 = sub_100002CAC();
        v4 = &_s10Foundation22_convertNSErrorToErrorys0E0_pSo0C0CSgF_ptr;
        sub_100002AF4(v41);
        sub_100002AC8();

        if (v23)
        {
          goto LABEL_21;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_21;
        }
      }
    }

    sub_100002AE8();
    if (!v14)
    {
      sub_100002A54(&qword_100008278);
    }

    v42 = sub_100002FE0();
    sub_1000021F4(v42, static Logging.defaultLog);
    v43 = sub_100002FD0();
    v44 = sub_100003080();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = sub_100002C7C();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Skipping collection of entityResolution diagnostic data because user did not consent", v45, 2u);
      sub_100002AF4(v45);
    }

    v46 = sub_100002FD0();
    v47 = sub_100003080();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = sub_100002C7C();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Skipping collection of views diagnostic data because user did not consent", v48, 2u);
      sub_100002AF4(v48);
    }

    goto LABEL_49;
  }

  v90[0] = 0;
  v7 = sub_100002B88(v6, "entityTaggingSupplementalDiagnosticsWithError:");
  if (v7)
  {
    v8 = v7;
    sub_100003020();
    sub_100002C00();

    v9 = objc_allocWithZone(DEAttachmentItem);
    sub_100002B0C();

    result = sub_100002BB8();
    if (!result)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    sub_100002B70();
    sub_100003040();
    sub_100002A74();
    if (v12)
    {
      sub_100002A88(v11);
    }

    v13 = sub_100002BD0();
  }

  else
  {
    v71 = v90[0];
    sub_100002B58();

    swift_willThrow();
    sub_100002AE8();
    if (!v14)
    {
      sub_100002A54(&qword_100008278);
    }

    v72 = sub_100002FE0();
    sub_1000021F4(v72, static Logging.defaultLog);
    sub_100002B0C();
    swift_errorRetain();
    v8 = sub_100002FD0();
    v73 = sub_100003080();

    if (os_log_type_enabled(v8, v73))
    {
      v74 = sub_100002BE8();
      v5 = swift_slowAlloc();
      v90[0] = v5;
      *v74 = 136315138;
      swift_getErrorValue();
      v75 = sub_1000030E0();
      v77 = sub_100002BA0(v75, v76);

      *(v74 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v8, v73, "Failed to collect entityTagging diagnostic data: %s", v74, 0xCu);
      sub_100002800(v5);
      sub_100002AC8();
      sub_100002AF4(v74);
    }

    else
    {
    }
  }

  v90[0] = 0;
  v78 = sub_100002B88(v13, "eventViewDiagnosticsWithError:");
  if (!v78)
  {
    v81 = v90[0];
    sub_100002B58();

    swift_willThrow();
    sub_100002AE8();
    if (!v14)
    {
      sub_100002A54(&qword_100008278);
    }

    v82 = sub_100002FE0();
    sub_100002C18(v82, static Logging.defaultLog);
    v20 = sub_100002FD0();
    sub_100003080();
    sub_100002C64();
    if (sub_100002C94())
    {
      sub_100002BE8();
      v83 = sub_100002B18();
      sub_100002C58(v83);
      v5->flags = 136315138;
      swift_getErrorValue();
      v84 = sub_1000030E0();
      v86 = sub_100002BA0(v84, v85);

      *&v5->ivar_base_start = v86;
      sub_100002AA8(&_mh_execute_header, v87, v88, "Failed to collect event view diagnostic data: %s");
      v89 = sub_100002CAC();
      v4 = &_s10Foundation22_convertNSErrorToErrorys0E0_pSo0C0CSgF_ptr;
      sub_100002AF4(v89);
      sub_100002AC8();
    }

    else
    {
    }

    v23 = 1;
    goto LABEL_16;
  }

  v20 = v78;
  sub_100003020();
  sub_100002C00();

  v79 = objc_allocWithZone(DEAttachmentItem);
  sub_100002B0C();

  result = sub_100002BB8();
  if (result)
  {
    sub_100002B70();
    sub_100003040();
    sub_100002A74();
    if (v12)
    {
      sub_100002A88(v80);
    }

    v22 = sub_100002BD0();
    v23 = 1;
    goto LABEL_16;
  }

LABEL_76:
  __break(1u);
  return result;
}

double sub_100001F34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000028AC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000284C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_100002040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPDiagnosticExtension();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100002098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPDiagnosticExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002144(uint64_t a1)
{
  v2 = sub_1000021AC(&qword_1000082A8, &qword_1000034B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000021AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000021F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_10000222C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100003010();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPath:v3];

  return v4;
}

unint64_t sub_100002290(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002354(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000284C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002800(v11);
  return v7;
}

unint64_t sub_100002354(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002454(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1000030D0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100002454(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000024A0(a1, a2);
  sub_1000025B8(&off_100004308);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000024A0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100003030())
  {
    result = sub_10000269C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000030C0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1000030D0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000025B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10000270C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000269C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000021AC(&qword_1000082B0, &unk_1000034C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000270C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021AC(&qword_1000082B0, &unk_1000034C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100002800(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000284C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000028AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003090(*(v2 + 40));

  return sub_1000028F0(a1, v4);
}

unint64_t sub_1000028F0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1000029B4(*(v2 + 48) + 40 * i, v7);
    v5 = sub_1000030A0();
    sub_1000020F0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100002A10()
{
  result = qword_1000082B8;
  if (!qword_1000082B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000082B8);
  }

  return result;
}

uint64_t sub_100002A54(uint64_t a1)
{

  return _swift_once(a1, sub_100002D1C);
}

uint64_t sub_100002A88@<X0>(unint64_t a1@<X8>)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1 + 1, 1);
}

void sub_100002AA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100002AC8()
{

  return _swift_slowDealloc(v0, -1, -1);
}

uint64_t sub_100002AF4(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_100002B18()
{

  return swift_slowAlloc();
}

uint64_t sub_100002B34()
{
}

uint64_t sub_100002B58()
{

  return _convertNSErrorToError(_:)(v0);
}

uint64_t sub_100002B70()
{
}

id sub_100002B88(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t sub_100002BA0(uint64_t a1, unint64_t a2)
{

  return sub_100002290(a1, a2, (v2 - 168));
}

id sub_100002BB8()
{

  return sub_10000222C(v1, v0);
}

uint64_t sub_100002BD0()
{

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v1, v0);
}

uint64_t sub_100002BE8()
{

  return swift_slowAlloc();
}

id sub_100002C00()
{

  return v0;
}

uint64_t sub_100002C18(uint64_t a1, uint64_t a2)
{
  sub_1000021F4(a1, a2);

  return swift_errorRetain();
}

uint64_t sub_100002C64()
{
}

uint64_t sub_100002C7C()
{

  return swift_slowAlloc();
}

BOOL sub_100002C94()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t Logging.defaultLog.unsafeMutableAddressor()
{
  if (qword_100008278 != -1)
  {
    sub_100002A54(&qword_100008278);
  }

  v0 = sub_100002FE0();

  return sub_1000021F4(v0, static Logging.defaultLog);
}

uint64_t sub_100002D1C()
{
  v0 = sub_100002FE0();
  sub_100002E20(v0, static Logging.defaultLog);
  sub_1000021F4(v0, static Logging.defaultLog);
  v1 = GDDiagnosticExtensionDefaultLog();
  return sub_100002FF0();
}

uint64_t static Logging.defaultLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100008278 != -1)
  {
    sub_100002A54(&qword_100008278);
  }

  v2 = sub_100002FE0();
  v3 = sub_1000021F4(v2, static Logging.defaultLog);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100002E20(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id GDDiagnosticExtensionDefaultLog()
{
  if (qword_1000082C8 != -1)
  {
    dispatch_once(&qword_1000082C8, &stru_100004370);
  }

  v1 = qword_1000082C0;

  return v1;
}

void sub_100002ED8(id a1)
{
  qword_1000082C0 = os_log_create([@"com.apple.intelligenceplatform.DiagnosticExtension" UTF8String], "default");

  _objc_release_x1();
}