uint64_t static Daemon.enterSandbox(identifier:)()
{
  sub_255429CE8();
  v0 = _set_user_dir_suffix();

  if (v0 && (static Daemon.confstr(_:)(65537), v1) && (sub_2554280B8(), v3 = v2, , v3))
  {
  }

  else
  {
    sub_255429D98();

    OUTLINED_FUNCTION_0();
    MEMORY[0x259C344E0]();
    v5 = sub_255429DC8();
    MEMORY[0x259C34520](v5);

    result = sub_255429DB8();
    __break(1u);
  }

  return result;
}

uint64_t static Daemon.confstr(_:)(int a1)
{
  v2 = sub_255429C38();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = sub_255429C08();
  sub_2554285E4(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  v5 = sub_255428198(&v7, a1);
  sub_25542868C(v7, v8);
  return v5;
}

uint64_t sub_2554280B8()
{
  v0 = sub_255429CE8();
  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = sub_255429D08();
  MEMORY[0x259C34800](v1, -1, -1);
  return v2;
}

uint64_t sub_255428134@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_255429D08();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_255428198(uint64_t *a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_25542868C(v4, v3);
      *a1 = xmmword_25542A0A0;
      sub_25542868C(0, 0xC000000000000000);
      v14 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v4)
      {
        goto LABEL_23;
      }

      if (sub_255429BF8() && __OFSUB__(v4, sub_255429C28()))
      {
        goto LABEL_24;
      }

      v15 = sub_255429C38();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_255429BE8();

      v13 = v18;
LABEL_16:
      if (v14 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_255428538(v4, v4 >> 32, v13, a2);

      v12 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v12;
      break;
    case 2uLL:
      v9 = *a1;

      sub_25542868C(v4, v3);
      v23 = v4;
      v24 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_25542A0A0;
      sub_25542868C(0, 0xC000000000000000);
      sub_255429C48();
      v10 = v24;
      v11 = sub_255428538(*(v23 + 16), *(v23 + 24), v24, a2);
      if (v2)
      {
        v12 = v24 | 0x8000000000000000;
        *a1 = v23;
LABEL_19:
        a1[1] = v12;
      }

      else
      {
        v5 = v11;
        *a1 = v23;
        a1[1] = v10 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v22, 0, 15);
      sub_255428134(v22, a2, &v23);
      if (!v2)
      {
        v5 = v23;
      }

      break;
    default:
      v5 = v4 >> 40;
      sub_25542868C(v4, v3);
      *v22 = v4;
      *&v22[8] = v3;
      v22[10] = BYTE2(v3);
      v22[11] = BYTE3(v3);
      v22[12] = BYTE4(v3);
      v22[13] = BYTE5(v3);
      v22[14] = BYTE6(v3);
      sub_255428134(v22, a2, &v23);
      if (!v2)
      {
        v5 = v23;
      }

      v8 = *&v22[8] | ((*&v22[12] | (v22[14] << 16)) << 32);
      *a1 = *v22;
      a1[1] = v8;
      break;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_255428538(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_255429BF8();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_255429C28();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_255429C18();
  result = sub_255428134((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_2554285E4(int *a1, int a2)
{
  result = sub_255429C58();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_255429BF8();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_255429C28();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_255429C18();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_25542868C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2554286F8()
{
  v0 = sub_255429C88();
  __swift_allocate_value_buffer(v0, qword_2814375C0);
  __swift_project_value_buffer(v0, qword_2814375C0);
  return sub_255429C78();
}

uint64_t static Logging.Engine.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814375B8 != -1)
  {
    swift_once();
  }

  v2 = sub_255429C88();
  v3 = __swift_project_value_buffer(v2, qword_2814375C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for Logging(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2554289C0()
{
  v0 = sub_255429D58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_255429D48() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_255429CD8() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_255429AA0();
  sub_255429CC8();
  v8[1] = MEMORY[0x277D84F90];
  sub_255429AE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B6560, &qword_25542A118);
  sub_255429B3C();
  sub_255429D78();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_255429D68();
  qword_2814375E0 = result;
  return result;
}

void static Daemon.start()()
{
  sub_255428D0C();
  if (qword_2814375B8 != -1)
  {
    swift_once();
  }

  v0 = sub_255429C88();
  __swift_project_value_buffer(v0, qword_2814375C0);
  oslog = sub_255429C68();
  v1 = sub_255429D38();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_255429374(0x6E6F6D656144, 0xE600000000000000, &v5);
    _os_log_impl(&dword_255427000, oslog, v1, "%s started", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x259C34800](v3, -1, -1);
    MEMORY[0x259C34800](v2, -1, -1);
  }
}

void sub_255428D0C()
{
  if (qword_2814375D8 != -1)
  {
    swift_once();
  }

  v0 = qword_2814375E0;
  v2[4] = sub_255429A84;
  v2[5] = 0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_255429314;
  v2[3] = &block_descriptor;
  v1 = _Block_copy(v2);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v0, v1);
  _Block_release(v1);
}

uint64_t sub_255428DF0(void *a1)
{
  result = sub_255428FEC(a1);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    if (qword_2814375B8 != -1)
    {
      swift_once();
    }

    v5 = sub_255429C88();
    __swift_project_value_buffer(v5, qword_2814375C0);

    v6 = sub_255429C68();
    v7 = sub_255429D38();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_255429374(0x6E6F6D656144, 0xE600000000000000, v10);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_255429374(v3, v4, v10);
      _os_log_impl(&dword_255427000, v6, v7, "%s received event from notifyd: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C34800](v9, -1, -1);
      MEMORY[0x259C34800](v8, -1, -1);
    }

    sub_255429CE8();
    os_transaction_create();

    sub_255429190(v3, v4);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_255428FEC(void *a1)
{
  v2 = MEMORY[0x259C34840]();
  if (v2 != sub_255429CA8())
  {
    if (qword_2814375B8 != -1)
    {
      swift_once();
    }

    v3 = sub_255429C88();
    __swift_project_value_buffer(v3, qword_2814375C0);
    v4 = sub_255429C68();
    v5 = sub_255429D28();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Cannot handle xpc event with type != XPC_TYPE_DICTIONARY";
LABEL_6:
    _os_log_impl(&dword_255427000, v4, v5, v7, v6, 2u);
    MEMORY[0x259C34800](v6, -1, -1);
LABEL_7:

    return 0;
  }

  v9 = sub_255429C98();
  if (!xpc_dictionary_get_string(a1, v9))
  {
    if (qword_2814375B8 != -1)
    {
      swift_once();
    }

    v10 = sub_255429C88();
    __swift_project_value_buffer(v10, qword_2814375C0);
    v4 = sub_255429C68();
    v5 = sub_255429D28();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Cannot handle xpc event missing XPX_EVENT_KEY_NAME";
    goto LABEL_6;
  }

  return sub_255429D08();
}

void sub_255429190(uint64_t a1, unint64_t a2)
{
  if (qword_2814375B8 != -1)
  {
    swift_once();
  }

  v4 = sub_255429C88();
  __swift_project_value_buffer(v4, qword_2814375C0);

  v5 = sub_255429C68();
  v6 = sub_255429D38();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_255429374(0x6E6F6D656144, 0xE600000000000000, &v9);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_255429374(a1, a2, &v9);
    _os_log_impl(&dword_255427000, v5, v6, "%s has no handler for event %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C34800](v8, -1, -1);
    MEMORY[0x259C34800](v7, -1, -1);
  }
}

uint64_t sub_255429314(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_255429374(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255429438(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2554299DC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_255429438(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_255429538(a5, a6);
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
    result = sub_255429DA8();
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

uint64_t sub_255429538(uint64_t a1, unint64_t a2)
{
  v4 = sub_255429584(a1, a2);
  sub_25542969C(&unk_286751930);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_255429584(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_255429D18())
  {
    result = sub_255429780(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_255429D88();
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

        v9 = (result + 32);
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
          result = sub_255429DA8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_25542969C(uint64_t result)
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

    result = sub_2554297F0(result, v8, 1, v3);
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

void *sub_255429780(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B6558, &qword_25542A110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2554297F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B6558, &qword_25542A110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_BYTE *storeEnumTagSinglePayload for Daemon(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_2554299DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_255429AA0()
{
  result = qword_2814375A0;
  if (!qword_2814375A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814375A0);
  }

  return result;
}

unint64_t sub_255429AE4()
{
  result = qword_2814375A8;
  if (!qword_2814375A8)
  {
    sub_255429D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814375A8);
  }

  return result;
}

unint64_t sub_255429B3C()
{
  result = qword_2814375B0;
  if (!qword_2814375B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B6560, &qword_25542A118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814375B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}