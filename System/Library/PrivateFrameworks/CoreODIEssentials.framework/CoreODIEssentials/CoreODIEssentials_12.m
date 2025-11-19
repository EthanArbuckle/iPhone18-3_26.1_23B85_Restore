uint64_t sub_1DB022C00()
{
  result = os_variant_allows_internal_security_policies();
  v1 = result;
  if (result)
  {
    v3 = 0x657261685369646FLL;
    v4 = 0xEF726567676F4C64;
    v2 = 0;
    CoreODILogger.debug(_:category:)(0xD000000000000017, 0x80000001DB0CA6E0, &v2);
  }

  byte_1EE30A140 = v1;
  return result;
}

void sub_1DB022C94()
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {
    goto LABEL_8;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DB09D6B4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_1DB09D6B4();
  v5 = [v3 stringForKey_];

  if (!v5)
  {

LABEL_8:
    v6 = 0;
    v8 = 0;
    goto LABEL_9;
  }

  v6 = sub_1DB09D6C4();
  v8 = v7;

LABEL_9:
  qword_1EE309EE0 = v6;
  qword_1EE309EE8 = v8;
}

uint64_t sub_1DB022DDC()
{
  v0 = sub_1DB09E004();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB022E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 281))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB022E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 281) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 281) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB022F28()
{
  result = qword_1ECC0F518;
  if (!qword_1ECC0F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F518);
  }

  return result;
}

unint64_t sub_1DB022FA0()
{
  result = qword_1ECC0F520;
  if (!qword_1ECC0F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F520);
  }

  return result;
}

uint64_t type metadata accessor for RavioliRequestFactory()
{
  result = qword_1EE300F30;
  if (!qword_1EE300F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB023068()
{
  sub_1DB09CF64();
  if (v0 <= 0x3F)
  {
    sub_1DB023164(319, &qword_1ECC0F528);
    if (v1 <= 0x3F)
    {
      sub_1DB023164(319, &qword_1ECC0F530);
      if (v2 <= 0x3F)
      {
        sub_1DB023164(319, &qword_1ECC0F538);
        if (v3 <= 0x3F)
        {
          sub_1DAFEA7E8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DB023164(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DB0231C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DB09CBF4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1DB09CF64();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0232EC, 0, 0);
}

uint64_t sub_1DB0232EC()
{
  v1 = v0[5];
  (*(v0[10] + 16))(v0[12], v1, v0[9]);
  v2 = type metadata accessor for RavioliRequestFactory();
  v0[13] = v2;
  v3 = (v1 + *(v2 + 32));
  if (v3[1])
  {
    v4 = v0[12];
    v5 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5F0, &unk_1DB0B29A0);
    v6 = *(sub_1DB09CC94() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_1DB0A04E0;
    sub_1DB09CC84();
    sub_1DB09CF14();
  }

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[3];
  sub_1DB09CEF4();
  sub_1DB09CBB4();
  sub_1DB09CBD4();
  v15 = (v13 + *(v2 + 20));
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(v17 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_1DB0235A4;

  return v22(v16, v17);
}

uint64_t sub_1DB0235A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v6 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DB0236A4, 0, 0);
}

uint64_t sub_1DB0236A4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[8];
  v5 = v0[5];
  sub_1DB09CBD4();

  v6 = (v5 + *(v3 + 24));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 8);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1DB023818;
  v12 = v0[8];
  v13 = v0[2];

  return v15(v13, v12, v7, v8);
}

uint64_t sub_1DB023818()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DB0239EC;
  }

  else
  {
    v3 = sub_1DB02392C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB02392C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB0239EC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB023AC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB023B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB023B70()
{
  result = qword_1ECC0F540;
  if (!qword_1ECC0F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F540);
  }

  return result;
}

void *sub_1DB023BC8()
{
  type metadata accessor for DistributedNotificationsAsyncSequence.Iterator.Handler();
  swift_allocObject();
  result = sub_1DB023C08();
  qword_1EE300BB0 = result;
  return result;
}

void *sub_1DB023C08()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v2 = MEMORY[0x1E69E7CC8];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0;
  v5[4] = sub_1DB02532C;
  v6 = v0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1DB024014;
  v5[3] = &block_descriptor_14;
  v3 = _Block_copy(v5);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, v3);
  _Block_release(v3);
  return v0;
}

uint64_t sub_1DB023CF4(uint64_t a1)
{
  v2 = sub_1DB09D4B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v8 = swift_unknownObjectRetain();
    sub_1DB023ED4(v8);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1DB09D4A4();
    v10 = sub_1DB09D494();
    v11 = sub_1DB09DB74();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DAF16000, v10, v11, "Failed to cast XPC object to Sendable", v12, 2u);
      MEMORY[0x1E1281810](v12, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

id sub_1DB023ED4(uint64_t a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  result = [v3 unlock];
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(v4 + 56) + ((v6 << 9) | (8 * v12)));
    if (v13)
    {
      **(*(v13 + 64) + 40) = a1;
      swift_unknownObjectRetain();
      result = swift_continuation_resume();
    }
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
    }

    v9 = *(v4 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB024014(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1DB024074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  [v6 lock];
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (*(v7 + 16) && (v8 = sub_1DAF356DC(a2), (v9 & 1) != 0) && !*(*(v7 + 56) + 8 * v8))
  {
    swift_endAccess();
    swift_beginAccess();
    sub_1DB07FB18(a2);
    swift_endAccess();
    [v6 unlock];
    **(*(a1 + 64) + 40) = 0;
    return swift_continuation_resume();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v10 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_1DAF3BE58(a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v13;
    swift_endAccess();
    return [v6 unlock];
  }
}

id sub_1DB0241D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1DB07FB18(a1);
  swift_endAccess();
  if (v5 == 1)
  {
    swift_beginAccess();
    v6 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_1DAF3BE58(0, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v9;
    swift_endAccess();
    return [v4 unlock];
  }

  else
  {
    result = [v4 unlock];
    if (v5)
    {
      **(*(v5 + 64) + 40) = 0;
      return swift_continuation_resume();
    }
  }

  return result;
}

uint64_t sub_1DB0242E8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB024348()
{
  if (sub_1DB09DA64())
  {
    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = **(v0 + 24);
    v4 = [*(v3 + 16) lock];
    v12 = *(v3 + 32);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 32) = v12 + 1;
      [*(v3 + 16) unlock];
      v13 = swift_task_alloc();
      *(v0 + 32) = v13;
      *(v13 + 16) = v3;
      *(v13 + 24) = v12;
      v14 = swift_task_alloc();
      *(v0 + 40) = v14;
      *(v14 + 16) = v3;
      *(v14 + 24) = v12;
      v15 = *(MEMORY[0x1E69E88F0] + 4);
      v16 = swift_task_alloc();
      *(v0 + 48) = v16;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F548, qword_1DB0B2B40);
      *v16 = v0;
      v16[1] = sub_1DB0244DC;
      v5 = &unk_1DB0B2B30;
      v7 = sub_1DB0248C0;
      v4 = (v0 + 16);
      v6 = v13;
      v8 = v14;
      v9 = 0;
      v10 = 0;
    }

    return MEMORY[0x1EEE6DE18](v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

void sub_1DB0244DC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 32);
    v5 = *(v2 + 40);

    MEMORY[0x1EEE6DFA0](sub_1DB024620, 0, 0);
  }
}

uint64_t sub_1DB024638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB02465C, 0, 0);
}

uint64_t sub_1DB02465C()
{
  v1 = v0[12];
  v2 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DB024704;
  v3 = swift_continuation_init();
  sub_1DB024074(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB024704()
{
  v3 = *v0;
  **(*v0 + 88) = *(*v0 + 80);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB024814(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF63DEC;

  return sub_1DB024638(a1, v5, v4);
}

id sub_1DB0248C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1DB0241D0(v1);
}

uint64_t sub_1DB0248E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DB024978;

  return DistributedNotificationsAsyncSequence.Iterator.next()();
}

uint64_t sub_1DB024978(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1DB024A8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DB024B48;

  return sub_1DB024C6C();
}

uint64_t sub_1DB024B48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1DB024C8C()
{
  if (sub_1DB09DA64())
  {
    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = **(v0 + 24);
    v4 = [*(v3 + 16) lock];
    v12 = *(v3 + 32);
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 32) = v12 + 1;
      [*(v3 + 16) unlock];
      v13 = swift_task_alloc();
      *(v0 + 32) = v13;
      *(v13 + 16) = v3;
      *(v13 + 24) = v12;
      v14 = swift_task_alloc();
      *(v0 + 40) = v14;
      *(v14 + 16) = v3;
      *(v14 + 24) = v12;
      v15 = *(MEMORY[0x1E69E88F0] + 4);
      v16 = swift_task_alloc();
      *(v0 + 48) = v16;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F548, qword_1DB0B2B40);
      *v16 = v0;
      v16[1] = sub_1DB024E24;
      v5 = &unk_1DB0B2C98;
      v7 = sub_1DB02534C;
      v4 = (v0 + 16);
      v6 = v13;
      v8 = v14;
      v9 = 0;
      v10 = 0;
    }

    return MEMORY[0x1EEE6DE18](v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

void sub_1DB024E24()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 32);
    v5 = *(v2 + 40);

    MEMORY[0x1EEE6DFA0](sub_1DB024F68, 0, 0);
  }
}

uint64_t DistributedNotificationsAsyncSequence.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  if (qword_1EE300BA8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE300BB0;
}

unint64_t sub_1DB025004()
{
  result = qword_1EE300BA0;
  if (!qword_1EE300BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300BA0);
  }

  return result;
}

uint64_t sub_1DB025058@<X0>(void *a1@<X8>)
{
  if (qword_1EE300BA8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE300BB0;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator.Handler.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator.Handler.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DB025258(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB025280(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF62CC4;

  return sub_1DB024638(a1, v5, v4);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t ODIAnalyticsEvent.name.getter()
{
  if (*v0 < 0)
  {
    result = 0xD000000000000049;
  }

  else
  {
    result = 0xD00000000000003ELL;
  }

  *v0;
  return result;
}

unint64_t ODIAnalyticsEvent.fields.getter()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v4 = v0[1];
    v5 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001DB0C62E0;
    *(inited + 48) = sub_1DB09DAE4();
    *(inited + 56) = 0x646F43726F727265;
    *(inited + 64) = 0xE900000000000065;
    *(inited + 72) = sub_1DB09DB14();
    v3 = sub_1DAF3F518(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
    swift_arrayDestroy();
  }

  else
  {
    v1 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
    v2 = swift_initStackObject();
    *(v2 + 16) = xmmword_1DB0A04E0;
    *(v2 + 32) = 0xD000000000000012;
    *(v2 + 40) = 0x80000001DB0C62E0;
    *(v2 + 48) = sub_1DB09DAE4();
    v3 = sub_1DAF3F518(v2);
    swift_setDeallocating();
    sub_1DAFB8900(v2 + 32);
  }

  return v3;
}

unint64_t sub_1DB025508()
{
  if (*v0 < 0)
  {
    result = 0xD000000000000049;
  }

  else
  {
    result = 0xD00000000000003ELL;
  }

  *v0;
  return result;
}

uint64_t getEnumTagSinglePayload for ODIAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 1) << 32;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB02563C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64756F6C4369;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1684628325;
    }

    else
    {
      v3 = 1869903201;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 0x73656E755469;
    }

    else
    {
      v3 = 0x64756F6C4369;
    }

    v4 = 0xE600000000000000;
  }

  v5 = 1684628325;
  if (a2 != 2)
  {
    v5 = 1869903201;
  }

  if (a2)
  {
    v2 = 0x73656E755469;
  }

  if (a2 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 1u)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DB025754(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DB09E254();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DB0257B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064656B636F4CLL;
  v3 = 0x6563697665447369;
  v4 = a1;
  v5 = 0x614C656E6F687069;
  v6 = 0xEE0065676175676ELL;
  if (a1 != 4)
  {
    v5 = 0x7365727574616566;
    v6 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = 0x80000001DB0C1320;
  }

  v8 = 0x80000001DB0C1300;
  if (a1 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (a1 != 1)
  {
    v8 = 0x80000001DB0C0FC0;
  }

  if (!a1)
  {
    v9 = 0x6563697665447369;
    v8 = 0xEE0064656B636F4CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001DB0C1320;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_37;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0065676175676ELL;
      if (v10 != 0x614C656E6F687069)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x7365727574616566)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001DB0C1300;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v2 = 0x80000001DB0C0FC0;
      v3 = 0xD000000000000012;
    }

    if (v10 != v3)
    {
LABEL_37:
      v12 = sub_1DB09E254();
      goto LABEL_38;
    }
  }

LABEL_34:
  if (v11 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1DB0259A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x64757469676E6F6CLL;
    }

    else
    {
      v3 = 0x656475746974616CLL;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001DB0C1160;
    v3 = 0xD000000000000012;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001DB0C1180;
  }

  else
  {
    v3 = 0x6564757469746C61;
    v4 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE800000000000000;
    v7 = 0xE900000000000065;
    v8 = a2 == 0;
    if (a2)
    {
      v9 = 0x64757469676E6F6CLL;
    }

    else
    {
      v9 = 0x656475746974616CLL;
    }
  }

  else
  {
    v5 = 0x80000001DB0C1160;
    v6 = 0x6564757469746C61;
    if (a2 == 3)
    {
      v6 = 0xD000000000000010;
      v7 = 0x80000001DB0C1180;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    v8 = a2 == 2;
    if (a2 == 2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = v6;
    }
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DB025B28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF65647574697461;
  v3 = 0xD000000000000017;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001DB0C1110;
    v12 = 0xD000000000000016;
    if (a1 != 6)
    {
      v12 = 0xD000000000000017;
      v11 = 0x80000001DB0C1130;
    }

    v13 = 0x80000001DB0C10D0;
    if (a1 == 4)
    {
      v14 = 0xD000000000000017;
    }

    else
    {
      v14 = 0xD000000000000018;
    }

    if (a1 != 4)
    {
      v13 = 0x80000001DB0C10F0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000001DB0C1090;
    v6 = 0xD000000000000012;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
      v5 = 0x80000001DB0C10B0;
    }

    v7 = 0x80000001DB0C1070;
    v8 = 0xD000000000000010;
    if (!a1)
    {
      v8 = 0x4C73736572646461;
      v7 = 0xEF65647574697461;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001DB0C1110;
        v3 = 0xD000000000000016;
        goto LABEL_41;
      }

      v15 = "billingAddressLongitude";
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x80000001DB0C10F0;
        v3 = 0xD000000000000018;
        goto LABEL_41;
      }

      v15 = "shippingAddressLatitude";
    }

    v2 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000001DB0C1090;
      v3 = 0xD000000000000012;
    }

    else
    {
      v2 = 0x80000001DB0C10B0;
      v3 = 0xD000000000000013;
    }
  }

  else if (a2)
  {
    v2 = 0x80000001DB0C1070;
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x4C73736572646461;
  }

LABEL_41:
  if (v9 == v3 && v10 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1DB09E254();
  }

  return v16 & 1;
}

uint64_t sub_1DB025D60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000064695FLL;
  v3 = 0x776F6C666B726F77;
  v4 = a1;
  v5 = 0x80000001DB0C1480;
  v6 = 0xD000000000000017;
  if (a1 == 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001DB0C1460;
  }

  v7 = 0x80000001DB0C1420;
  v8 = 0xD000000000000026;
  if (a1 != 3)
  {
    v8 = 0x5F64616F6C796170;
    v7 = 0xEE006572756E6574;
  }

  if (a1 > 4u)
  {
    v8 = v6;
    v7 = v5;
  }

  v9 = 0x80000001DB0C13C0;
  v10 = 0xD000000000000033;
  if (a1 == 1)
  {
    v10 = 0xD000000000000010;
  }

  else
  {
    v9 = 0x80000001DB0C13E0;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x776F6C666B726F77;
  }

  if (!v4)
  {
    v9 = 0xEB0000000064695FLL;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = v8;
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0x80000001DB0C1420;
        if (v11 != 0xD000000000000026)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v3 = 0x5F64616F6C796170;
      v2 = 0xEE006572756E6574;
      goto LABEL_33;
    }

    if (a2 != 5)
    {
      v2 = 0x80000001DB0C1480;
      if (v11 != 0xD000000000000017)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x80000001DB0C1460;
LABEL_28:
    if (v11 != 0xD000000000000010)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v2 = 0x80000001DB0C13E0;
      if (v11 != 0xD000000000000033)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x80000001DB0C13C0;
    goto LABEL_28;
  }

LABEL_33:
  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1DB09E254();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1DB025F58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x42656C69666F7270;
  v6 = 0xED00007465536761;
  if (a1 != 4)
  {
    v5 = 0x49656C69666F7270;
    v6 = 0xEB000000006F666ELL;
  }

  if (a1 == 3)
  {
    v5 = 0x42656C69666F7270;
    v6 = 0xEF64497465536761;
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DB0C1F20;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DB0C1F00;
  }

  if (a1 <= 2u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = 0xEF64497465536761;
      if (v7 != 0x42656C69666F7270)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v9 = 0xED00007465536761;
      if (v7 != 0x42656C69666F7270)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v9 = 0xEB000000006F666ELL;
      if (v7 != 0x49656C69666F7270)
      {
LABEL_33:
        v10 = sub_1DB09E254();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0x80000001DB0C1F20;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      if (v7 != 25705)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = 0x80000001DB0C1F00;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_33;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_33;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DB026178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6382182;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6383472;
    }

    else
    {
      v4 = 6385763;
    }

    v5 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 6382448;
    v5 = 0xE300000000000000;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 6382182;
    }

    else
    {
      v4 = 0x73656C6966;
    }

    if (v3 == 3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 6383472;
    }

    else
    {
      v7 = 6385763;
    }

    v6 = 0xE300000000000000;
    if (v4 != v7)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (a2 == 2)
  {
    v2 = 6382448;
  }

  else if (a2 != 3)
  {
    v6 = 0xE500000000000000;
    if (v4 != 0x73656C6966)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v6 = 0xE300000000000000;
  if (v4 != v2)
  {
LABEL_28:
    v8 = sub_1DB09E254();
    goto LABEL_29;
  }

LABEL_26:
  if (v5 != v6)
  {
    goto LABEL_28;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_1DB0262AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C69666F7270;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0x80000001DB0C1F20;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x49656C69666F7270;
    v4 = 0xEB000000006F666ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x49656C69666F7270;
    }

    else
    {
      v3 = 0x6E6F6973726576;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000064;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x656C69666F7270;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x80000001DB0C1F20;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEB000000006F666ELL;
    if (v3 != 0x49656C69666F7270)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE900000000000064;
    if (v3 != 0x49656C69666F7270)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E6F6973726576)
    {
LABEL_34:
      v7 = sub_1DB09E254();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1DB026468(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x73656E755469;
    }

    else
    {
      v2 = 0x64756F6C4369;
    }

    v4 = 0xE600000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v2 = 0x64726143656DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v2 = 0x6D754E656E6F6870;
      v3 = 7497058;
    }

    else
    {
      v2 = 0x726F707075736E75;
      v3 = 6579572;
    }

    v4 = v3 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x73656E755469;
    }

    else
    {
      v9 = 0x64756F6C4369;
    }

    v8 = 0xE600000000000000;
    if (v2 != v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
    v6 = 0xEB00000000726562;
    if (a2 != 3)
    {
      v5 = 0x726F707075736E75;
      v6 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 0x64726143656DLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v2 != v7)
    {
      goto LABEL_29;
    }
  }

  if (v4 != v8)
  {
LABEL_29:
    v10 = sub_1DB09E254();
    goto LABEL_30;
  }

  v10 = 1;
LABEL_30:

  return v10 & 1;
}

uint64_t sub_1DB0265FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xEF64756F6C43692ELL;
    if (a1 != 1)
    {
      v9 = 0xEF73656E7554692ELL;
    }

    if (a1)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v7 = 0x73746E756F636341;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x64726143654DLL;
    if (a1 != 5)
    {
      v4 = 0x726F707075736E75;
      v3 = 0xEB00000000646574;
    }

    v5 = 0x656C655465726F43;
    v6 = 0xED0000796E6F6870;
    if (a1 != 3)
    {
      v5 = 0x797469746E656449;
      v6 = 0xE800000000000000;
    }

    if (a1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    v11 = 0xEF64756F6C43692ELL;
    if (a2 != 1)
    {
      v11 = 0xEF73656E7554692ELL;
    }

    if (a2)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != 0x73746E756F636341)
    {
      goto LABEL_41;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x64726143654DLL;
    }

    else
    {
      v12 = 0x726F707075736E75;
    }

    if (a2 == 5)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xEB00000000646574;
    }

    if (v7 != v12)
    {
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v10 = 0xED0000796E6F6870;
    if (v7 != 0x656C655465726F43)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v7 != 0x797469746E656449)
    {
LABEL_41:
      v13 = sub_1DB09E254();
      goto LABEL_42;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_1DB02681C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6574617473;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x42676E697373696DLL;
    }

    else
    {
      v4 = 0x6574617473;
    }

    if (v3)
    {
      v5 = 0xEF73676E69646E69;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x42746E6572727563;
    v5 = 0xEF73676E69646E69;
  }

  else if (a1 == 3)
  {
    v4 = 0x646F43726F727265;
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x616E696D6F4E7369;
    v5 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0x42676E697373696DLL;
    v8 = 0xEF73676E69646E69;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x42746E6572727563;
    v6 = 0xEF73676E69646E69;
    v7 = 0x646F43726F727265;
    v8 = 0xE900000000000065;
    if (a2 != 3)
    {
      v7 = 0x616E696D6F4E7369;
      v8 = 0xEB00000000646574;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DB09E254();
  }

  return v12 & 1;
}

uint64_t sub_1DB0269DC()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026B04()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026C24()
{
  sub_1DB09D794();
}

uint64_t sub_1DB026D6C()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026E88()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026FE4()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB027128()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB02724C()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t DsidType.rawValue.getter()
{
  v1 = 0x64756F6C4369;
  v2 = 1684628325;
  if (*v0 != 2)
  {
    v2 = 1869903201;
  }

  if (*v0)
  {
    v1 = 0x73656E755469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB0273D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 40);
  v29 = *(v0 + 48);
  v30 = *(v0 + 56);
  v8 = *(v0 + 57);

  sub_1DB042B1C(v3, v4, v5);
  v9 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v1, v2, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  if ((v5 & 1) == 0)
  {
    v3 = ArmandDeviceDataFieldName.rawValue.getter();
    v4 = v11;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v3, v4, 0x6D614E646C656966, 0xE900000000000065, v12);
  v13 = ArmandDataSource.rawValue.getter();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v13, v15, 0x656372756F73, 0xE600000000000000, v16);
  v17 = sub_1DB09E1D4();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v17, v19, 0x797469726F697270, 0xE800000000000000, v20);
  if (v8)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v8)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v21, v22, 0x67656C6976697270, 0xEA00000000006465, v23);
  if ((v30 & 1) == 0)
  {
    v24 = sub_1DB09E1D4();
    v26 = v25;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B440(v24, v26, 0x4D74756F656D6974, 0xEC000000696C6C69, v27);
  }

  return v9;
}

uint64_t DeviceDataField.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  v5 = sub_1DB0416A8(0, a1);
  if (v2)
  {
  }

  v7 = v5;
  v8 = v6;

  v9 = sub_1DB0416A8(1u, v3);
  v12 = v11;
  v13 = v9;

  v14 = sub_1DB0416A8(2u, v3);
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  ArmandDataSource.init(rawValue:)(v17);
  if (v96 != 15)
  {
    LODWORD(v94) = v96;

    v29._countAndFlagsBits = v13;
    v29._object = v12;
    ArmandDeviceDataFieldName.init(rawValue:)(v29);
    v30 = v96;
    if (v13 == 1145652037 && v12 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
    {

      v12 = 0;
      v99 = 0;
      v30 = 4;
    }

    else if (v96 == 19)
    {
      v99 = 1;
      v30 = v13;
    }

    else
    {

      v12 = 0;
      v99 = 0;
    }

    v31 = sub_1DB0416A8(3u, v3);
    v33 = v32;
    v34 = HIBYTE(v32) & 0xF;
    v35 = v31 & 0xFFFFFFFFFFFFLL;
    if ((v33 & 0x2000000000000000) != 0)
    {
      v36 = v34;
    }

    else
    {
      v36 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {
      goto LABEL_85;
    }

    if ((v33 & 0x1000000000000000) != 0)
    {
      LOBYTE(v95[0]) = 0;
      v69 = v31;

      v39 = sub_1DB04059C(v69, v33, 10);
      v93 = v70;

      if (v93)
      {
        goto LABEL_85;
      }

      goto LABEL_98;
    }

    if ((v33 & 0x2000000000000000) != 0)
    {
      *&v96 = v31;
      *(&v96 + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
      if (v31 == 43)
      {
        if (v34)
        {
          if (--v34)
          {
            v39 = 0;
            v49 = &v96 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                break;
              }

              v39 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                break;
              }

              ++v49;
              if (!--v34)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v31 != 45)
      {
        if (v34)
        {
          v39 = 0;
          v54 = &v96;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              break;
            }

            v39 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            ++v54;
            if (!--v34)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

      if (v34)
      {
        if (--v34)
        {
          v39 = 0;
          v43 = &v96 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              break;
            }

            v39 = v45 - v44;
            if (__OFSUB__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v34)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }
    }

    else
    {
      if ((v31 & 0x1000000000000000) != 0)
      {
        v37 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v37 = sub_1DB09DEC4();
      }

      v38 = *v37;
      if (v38 == 43)
      {
        if (v35 >= 1)
        {
          v34 = v35 - 1;
          if (v35 != 1)
          {
            v39 = 0;
            if (v37)
            {
              v46 = v37 + 1;
              while (1)
              {
                v47 = *v46 - 48;
                if (v47 > 9)
                {
                  goto LABEL_83;
                }

                v48 = 10 * v39;
                if ((v39 * 10) >> 64 != (10 * v39) >> 63)
                {
                  goto LABEL_83;
                }

                v39 = v48 + v47;
                if (__OFADD__(v48, v47))
                {
                  goto LABEL_83;
                }

                ++v46;
                if (!--v34)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_75;
          }

          goto LABEL_83;
        }

        goto LABEL_123;
      }

      if (v38 != 45)
      {
        if (v35)
        {
          v39 = 0;
          if (v37)
          {
            while (1)
            {
              v52 = *v37 - 48;
              if (v52 > 9)
              {
                goto LABEL_83;
              }

              v53 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_83;
              }

              v39 = v53 + v52;
              if (__OFADD__(v53, v52))
              {
                goto LABEL_83;
              }

              ++v37;
              if (!--v35)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_83:
        v39 = 0;
        LOBYTE(v34) = 1;
LABEL_84:
        LOBYTE(v95[0]) = v34;
        if (v34)
        {
LABEL_85:

          v94 = v30;
          if (qword_1EE301E08 != -1)
          {
            swift_once();
          }

          v57 = MEMORY[0x1E69E7CC0];
          v58 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v58 + 16))
          {
            v59 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
            if (v60)
            {
              sub_1DAF409DC(*(v58 + 56) + 32 * v59, &v96);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
              if (swift_dynamicCast())
              {
                v57 = *&v95[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1DAF72EC0(0, *(v57 + 2) + 1, 1, v57);
          }

          v62 = *(v57 + 2);
          v61 = *(v57 + 3);
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v91 = sub_1DAF72EC0((v61 > 1), v62 + 1, 1, v57);
            v63 = v62 + 1;
            v57 = v91;
          }

          *(v57 + 2) = v63;
          v64 = &v57[56 * v62];
          *(v64 + 4) = 0xD000000000000040;
          *(v64 + 5) = 0x80000001DB0CA860;
          *(v64 + 6) = 0xD000000000000023;
          *(v64 + 7) = 0x80000001DB0CA830;
          *(v64 + 8) = 0x6F72662874696E69;
          *(v64 + 9) = 0xEB00000000293A6DLL;
          *(v64 + 10) = 1029;
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          *&v96 = v57;
          sub_1DAF40D20(&v96, v95);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C(v95, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
          v66 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v67 = sub_1DB09D6B4();
LABEL_96:
          v68 = sub_1DB09D604();
          [v66 initWithDomain:v67 code:-3183 userInfo:v68];

          swift_willThrow();

          return sub_1DB041AD8(v94, v12, v99);
        }

LABEL_98:
        v71 = sub_1DB0416A8(5u, v3);
        if (v71 == 1702195828 && v72 == 0xE400000000000000 || (v73 = v71, v74 = v72, (sub_1DB09E254() & 1) != 0))
        {
          v75 = 1;
          if (!*(v3 + 2))
          {
            goto LABEL_108;
          }

          goto LABEL_102;
        }

        if (v73 == 0x65736C6166 && v74 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
        {
          v75 = 0;
          if (!*(v3 + 2))
          {
            goto LABEL_108;
          }

LABEL_102:
          v76 = sub_1DAF35210(0x4D74756F656D6974, 0xEC000000696C6C69);
          if (v77)
          {
            v78 = (*(v3 + 7) + 16 * v76);
            v79 = v78[1];
            v92 = *v78;

            result = sub_1DB0284B0(v92, v79);
LABEL_109:
            v98 = v80 & 1;
            v81 = v99;
            *a2 = v7;
            *(a2 + 1) = v8;
            *(a2 + 2) = v30;
            *(a2 + 3) = v12;
            a2[32] = v81;
            a2[33] = v94;
            *(a2 + 5) = v39;
            *(a2 + 6) = result;
            a2[56] = v80 & 1;
            a2[57] = v75;
            return result;
          }

LABEL_108:

          result = 0;
          v80 = 1;
          goto LABEL_109;
        }

        v94 = v30;

        v3 = "Unable to initialize DeviceDataField from dict, invalid privileged";
        a2 = "CoreODIEssentials/JSONObjects.swift";
        if (qword_1EE301E08 == -1)
        {
LABEL_111:
          v82 = v3 - 32;
          v83 = MEMORY[0x1E69E7CC0];
          v84 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v84 + 16))
          {
            v85 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
            if (v86)
            {
              sub_1DAF409DC(*(v84 + 56) + 32 * v85, &v96);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
              if (swift_dynamicCast())
              {
                v83 = *&v95[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_1DAF72EC0(0, *(v83 + 2) + 1, 1, v83);
          }

          v88 = *(v83 + 2);
          v87 = *(v83 + 3);
          if (v88 >= v87 >> 1)
          {
            v83 = sub_1DAF72EC0((v87 > 1), v88 + 1, 1, v83);
          }

          *(v83 + 2) = v88 + 1;
          v89 = &v83[56 * v88];
          *(v89 + 4) = 0xD000000000000042;
          *(v89 + 5) = v82 | 0x8000000000000000;
          *(v89 + 6) = 0xD000000000000023;
          *(v89 + 7) = (a2 - 32) | 0x8000000000000000;
          *(v89 + 8) = 0x6F72662874696E69;
          *(v89 + 9) = 0xEB00000000293A6DLL;
          *(v89 + 10) = 1034;
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          *&v96 = v83;
          sub_1DAF40D20(&v96, v95);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C(v95, 0x636F766E4949444FLL, 0xEE00736E6F697461, v90);
          v66 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v67 = sub_1DB09D6B4();
          goto LABEL_96;
        }

LABEL_125:
        swift_once();
        goto LABEL_111;
      }

      if (v35 >= 1)
      {
        v34 = v35 - 1;
        if (v35 != 1)
        {
          v39 = 0;
          if (v37)
          {
            v40 = v37 + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                goto LABEL_83;
              }

              v42 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_83;
              }

              v39 = v42 - v41;
              if (__OFSUB__(v42, v41))
              {
                goto LABEL_83;
              }

              ++v40;
              if (!--v34)
              {
                goto LABEL_84;
              }
            }
          }

LABEL_75:
          LOBYTE(v34) = 0;
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      __break(1u);
    }

    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v19 + 16))
  {
    v20 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v21)
    {
      sub_1DAF409DC(*(v19 + 56) + 32 * v20, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v18 = *&v95[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1DAF72EC0(0, *(v18 + 2) + 1, 1, v18);
  }

  v23 = *(v18 + 2);
  v22 = *(v18 + 3);
  if (v23 >= v22 >> 1)
  {
    v18 = sub_1DAF72EC0((v22 > 1), v23 + 1, 1, v18);
  }

  *(v18 + 2) = v23 + 1;
  v24 = &v18[56 * v23];
  *(v24 + 4) = 0xD000000000000042;
  *(v24 + 5) = 0x80000001DB0CA7E0;
  *(v24 + 6) = 0xD000000000000023;
  *(v24 + 7) = 0x80000001DB0CA830;
  *(v24 + 8) = 0x6F72662874696E69;
  *(v24 + 9) = 0xEB00000000293A6DLL;
  *(v24 + 10) = 1013;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v96 = v18;
  sub_1DAF40D20(&v96, v95);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v95, 0x636F766E4949444FLL, 0xEE00736E6F697461, v25);
  v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v27 = sub_1DB09D6B4();
  v28 = sub_1DB09D604();
  [v26 initWithDomain:v27 code:-3183 userInfo:v28];

  swift_willThrow();
}

uint64_t sub_1DB0283F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  return v3 | ((v1 == v2) << 8);
}

uint64_t sub_1DB028438()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB02846C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __swiftcall TSID.init(tsid:session_id:ts_nonce:)(CoreODIEssentials::TSID *__return_ptr retstr, Swift::String tsid, Swift::String session_id, Swift::String_optional ts_nonce)
{
  retstr->tsid = tsid;
  retstr->session_id = session_id;
  retstr->ts_nonce = ts_nonce;
}

uint64_t sub_1DB0284B0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1DB09DEC4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1DB04059C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_1DB0287B8(void *a1@<X8>)
{
  v165 = a1;
  v217 = *MEMORY[0x1E69E9840];
  *&v199 = sub_1DB09D564();
  v200 = *(v199 - 8);
  v2 = v200[8];
  MEMORY[0x1EEE9AC00](v199, v3);
  v198 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1DB09D5F4();
  v196 = *(v191 - 8);
  v5 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v191, v6);
  v197 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB09D734();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v172 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v163 = v14;
  v164 = v15;
  v17 = v1[4];
  v174 = v1[5];
  v175 = v17;
  v18 = v1[6];
  v183 = v1[7];
  v184 = v18;
  v20 = v1[8];
  v19 = v1[9];
  v21 = v1[11];
  v179 = v1[10];
  v180 = v19;
  v22 = v1[12];
  v185 = v1[13];
  v186 = v22;
  v23 = v1[14];
  v24 = v1[15];
  v176 = v21;
  v177 = v23;
  v25 = v1[17];
  v181 = v1[16];
  v182 = v24;
  v178 = v25;
  v27 = v1[18];
  v26 = v1[19];
  v28 = v1[21];
  v168 = v1[20];
  v169 = v26;
  v170 = v1[22];
  v171 = v28;
  sub_1DB09D714();
  v29 = sub_1DB09D6D4();
  v31 = v30;
  (*(v9 + 8))(v13, v8);
  if (v31 >> 60 == 15)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  v33 = 0xC000000000000000;
  if (v31 >> 60 != 15)
  {
    v33 = v31;
  }

  v193 = v33;
  v194 = v32;

  v192 = v27;
  v35 = sub_1DB056618(v34);
  v166 = v20;
  if (v20)
  {
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1DB0464BC(v20, v35);

  v37 = v176;
  if (v176)
  {
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v38 = sub_1DB0464BC(v37, v36);

  v39 = v177;
  if (v177)
  {
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v40 = sub_1DB0464BC(v39, v38);

  v41 = v178;
  v173 = v16;
  if (v178)
  {
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = sub_1DB0464BC(v41, v40);

  v43 = v42 + 56;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 56);
  v47 = (v44 + 63) >> 6;
  v189 = (v196 + 8);
  v190 = v200 + 1;
  v195 = v42;

  v48 = 0;
  v49 = 0;
  v50 = MEMORY[0x1E69E7CC8];
  v187 = v47;
  v188 = v43;
LABEL_23:
  if (v46)
  {
    v54 = v50;
    v55 = v48;
    goto LABEL_29;
  }

  while (1)
  {
    v55 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

    if (v55 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v55);
    ++v48;
    if (v46)
    {
      v54 = v50;
LABEL_29:
      v56 = (*(v195 + 48) + ((v55 << 10) | (16 * __clz(__rbit64(v46)))));
      v58 = *v56;
      v57 = v56[1];
      sub_1DAF40674(*v56, v57);
      sub_1DB09D5E4();
      sub_1DAF40674(v58, v57);
      sub_1DB040F20(v58, v57);
      v200 = v58;
      v59 = v57;
      sub_1DAF40780(v58, v57);
      v61 = v193;
      v60 = v194;
      sub_1DAF40674(v194, v193);
      sub_1DB040F20(v60, v61);
      v196 = v49;
      sub_1DAF40780(v60, v61);
      sub_1DB09D5D4();
      sub_1DB049B94(&qword_1ECC0FAB0, 255, MEMORY[0x1E69663E0]);
      v62 = sub_1DB09D5C4();
      v64 = sub_1DB0403A0(v62, v63);

      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
      *(&v209 + 1) = v65;
      *&v210 = sub_1DAF4AA8C(&qword_1EE301910, &qword_1ECC0E4A0, &qword_1DB0A0968);
      *&v208 = v64;
      v66 = __swift_project_boxed_opaque_existential_1(&v208, v65);
      v67 = *v66;
      v68 = *(*v66 + 16);
      if (v68)
      {
        if (v68 <= 0xE)
        {
          *(&v201 + 6) = 0;
          *&v201 = 0;
          BYTE14(v201) = v68;
          memcpy(&v201, (v67 + 32), v68);
          v74 = v201;
          v75 = v167 & 0xF00000000000000 | DWORD2(v201) | ((WORD6(v201) | (BYTE14(v201) << 16)) << 32);
          v167 = v75;
        }

        else
        {
          v69 = sub_1DB09CD84();
          v70 = *(v69 + 48);
          v71 = *(v69 + 52);
          swift_allocObject();
          v72 = sub_1DB09CD34();
          v73 = v72;
          if (v68 >= 0x7FFFFFFF)
          {
            sub_1DB09CFB4();
            v74 = swift_allocObject();
            *(v74 + 16) = 0;
            *(v74 + 24) = v68;
            v75 = v73 | 0x8000000000000000;
          }

          else
          {
            v74 = v68 << 32;
            v75 = v72 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v74 = 0;
        v75 = 0xC000000000000000;
      }

      v76 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm(&v208);
      v77 = sub_1DB09D064();
      v79 = v78;
      sub_1DAF40780(v74, v75);
      (*v190)(v198, v199);
      (*v189)(v197, v191);
      v80 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v208 = v54;
      v83 = sub_1DAF354E0(v200, v76);
      v84 = v54[2];
      v85 = (v82 & 1) == 0;
      v86 = v84 + v85;
      if (__OFADD__(v84, v85))
      {
        goto LABEL_81;
      }

      v87 = v82;
      if (v80[3] >= v86)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAF3D01C();
        }
      }

      else
      {
        sub_1DAF39584(v86, isUniquelyReferenced_nonNull_native);
        v88 = sub_1DAF354E0(v200, v76);
        if ((v87 & 1) != (v89 & 1))
        {
          goto LABEL_85;
        }

        v83 = v88;
      }

      v46 &= v46 - 1;
      v50 = v208;
      if (v87)
      {
        v51 = (*(v208 + 56) + 16 * v83);
        v52 = *v51;
        v53 = v51[1];
        *v51 = v77;
        v51[1] = v79;
        sub_1DAF40780(v52, v53);
        sub_1DAF40780(v200, v76);
        goto LABEL_22;
      }

      *(v208 + 8 * (v83 >> 6) + 64) |= 1 << v83;
      v90 = (v50[6] + 16 * v83);
      *v90 = v200;
      v90[1] = v76;
      v91 = (v50[7] + 16 * v83);
      *v91 = v77;
      v91[1] = v79;
      v92 = v50[2];
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        goto LABEL_82;
      }

      v50[2] = v94;
LABEL_22:
      v48 = v55;
      v49 = v196;
      v47 = v187;
      v43 = v188;
      goto LABEL_23;
    }
  }

  v200 = v50;

  if (v166)
  {
    *&v201 = v184;
    *(&v201 + 1) = v183;
    *&v202 = v166;
    sub_1DAF40674(v184, v183);

    ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v200, &v208);
    sub_1DAF40780(v201, *(&v201 + 1));

    v183 = *(&v208 + 1);
    v184 = v208;
    v198 = v209;
  }

  else
  {
    v198 = 0;
  }

  v96 = v177;
  v95 = v178;
  if (v176)
  {
    *&v201 = v180;
    *(&v201 + 1) = v179;
    *&v202 = v176;
    sub_1DAF40674(v180, v179);

    ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v200, &v208);
    sub_1DAF40780(v201, *(&v201 + 1));

    v179 = *(&v208 + 1);
    v180 = v208;
    v197 = v209;
    if (v96)
    {
      goto LABEL_50;
    }

LABEL_53:
    v195 = 0;
    v196 = v49;
    if (v95)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  v197 = 0;
  if (!v177)
  {
    goto LABEL_53;
  }

LABEL_50:
  *&v201 = v186;
  *(&v201 + 1) = v185;
  *&v202 = v96;
  sub_1DAF40674(v186, v185);

  ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v200, &v208);
  sub_1DAF40780(v201, *(&v201 + 1));

  v185 = *(&v208 + 1);
  v186 = v208;
  v195 = v209;
  v196 = v49;
  if (v95)
  {
LABEL_51:
    *&v201 = v182;
    *(&v201 + 1) = v181;
    *&v202 = v95;
    sub_1DAF40674(v182, v181);

    ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v200, &v208);
    sub_1DAF40780(v201, *(&v201 + 1));

    v181 = *(&v208 + 1);
    v182 = v208;
    v191 = v209;
    goto LABEL_55;
  }

LABEL_54:
  v191 = 0;
LABEL_55:
  v97 = v192 + 64;
  v98 = 1 << *(v192 + 32);
  v99 = -1;
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  v100 = v99 & *(v192 + 64);
  v101 = (v98 + 63) >> 6;

  v102 = 0;
  v190 = MEMORY[0x1E69E7CC8];
LABEL_77:
  v123 = v200;
  while (1)
  {
    do
    {
      if (v100)
      {
        v103 = v100;
        goto LABEL_64;
      }

      do
      {
        v104 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          goto LABEL_80;
        }

        if (v104 >= v101)
        {

          v132 = v183;
          v131 = v184;
          *&v201 = v184;
          *(&v201 + 1) = v183;
          v133 = v198;
          *&v202 = v198;
          *(&v202 + 1) = v180;
          *&v203 = v179;
          *(&v203 + 1) = v197;
          v135 = v185;
          v134 = v186;
          *&v204 = v186;
          *(&v204 + 1) = v185;
          *&v205 = v195;
          *(&v205 + 1) = v182;
          v136 = v190;
          *&v206 = v181;
          *(&v206 + 1) = v191;
          v207 = v190;
          v137 = v165;
          v138 = v172;
          *v165 = v163;
          v137[1] = v138;
          v139 = v173;
          v140 = v174;
          v137[2] = v164;
          v137[3] = v139;
          v142 = v168;
          v141 = v169;
          v137[18] = v136;
          v137[19] = v141;
          v143 = v202;
          *(v137 + 3) = v201;
          *(v137 + 4) = v143;
          v144 = v206;
          *(v137 + 7) = v205;
          *(v137 + 8) = v144;
          v145 = v204;
          *(v137 + 5) = v203;
          *(v137 + 6) = v145;
          v146 = v175;
          v137[4] = v175;
          v137[5] = v140;
          v147 = v170;
          v148 = v171;
          v137[20] = v142;
          v137[21] = v148;
          v137[22] = v147;
          type metadata accessor for ProfileSetObject.SingleValidatedConfigProvider();
          v149 = swift_allocObject();
          sub_1DAF40674(v146, v140);
          sub_1DAF40674(v146, v140);
          sub_1DB042284(v131, v132, v133);
          v151 = v179;
          v150 = v180;
          v152 = v197;
          sub_1DB042284(v180, v179, v197);
          v153 = v195;
          sub_1DB042284(v134, v135, v195);
          v155 = v181;
          v154 = v182;
          v156 = v191;
          sub_1DB042284(v182, v181, v191);

          sub_1DB0423AC(&v201, &v208);
          sub_1DAF40674(v169, v168);
          sub_1DAF40674(v171, v170);
          swift_defaultActor_initialize();
          sub_1DAF40780(v194, v193);
          sub_1DB04236C(v184, v183, v198);
          sub_1DB04236C(v150, v151, v152);
          sub_1DB04236C(v186, v185, v153);
          sub_1DB04236C(v154, v155, v156);
          sub_1DB0423E4(&v201);
          sub_1DB04210C(&v208);
          v157 = v215;
          *(v149 + 224) = v214;
          *(v149 + 240) = v157;
          *(v149 + 256) = v216;
          v158 = v211;
          *(v149 + 160) = v210;
          *(v149 + 176) = v158;
          v159 = v213;
          *(v149 + 192) = v212;
          *(v149 + 208) = v159;
          v160 = v209;
          *(v149 + 128) = v208;
          *(v149 + 144) = v160;
          v161 = v174;
          *(v149 + 112) = v175;
          *(v149 + 120) = v161;
          v137[23] = v149;
          v162 = *MEMORY[0x1E69E9840];
          return;
        }

        v103 = *(v97 + 8 * v104);
        ++v102;
      }

      while (!v103);
      v102 = v104;
LABEL_64:
      v100 = (v103 - 1) & v103;
    }

    while (!*(v123 + 16));
    v105 = __clz(__rbit64(v103)) | (v102 << 6);
    v106 = (*(v192 + 48) + 16 * v105);
    v108 = *v106;
    v107 = v106[1];
    v199 = *(*(v192 + 56) + 16 * v105);
    sub_1DAF40674(v108, v107);
    v109 = v199;
    sub_1DAF40674(v199, *(&v199 + 1));
    sub_1DAF40674(v108, v107);
    sub_1DAF40674(v109, *(&v109 + 1));
    v110 = sub_1DAF354E0(v108, v107);
    if ((v111 & 1) == 0)
    {
      sub_1DAF40780(v108, v107);
      sub_1DAF40780(v109, *(&v109 + 1));
      sub_1DAF40780(v108, v107);
      sub_1DAF40780(v109, *(&v109 + 1));
      goto LABEL_77;
    }

    v112 = (v200[7] + 16 * v110);
    v113 = *v112;
    v188 = v112[1];
    v114 = v188;
    v189 = v113;
    sub_1DAF40674(v109, *(&v109 + 1));
    sub_1DAF40674(v189, v114);
    v115 = v190;
    LODWORD(v187) = swift_isUniquelyReferenced_nonNull_native();
    *&v208 = v115;
    v117 = sub_1DAF354E0(v189, v188);
    v118 = v115[2];
    v119 = (v116 & 1) == 0;
    v120 = v118 + v119;
    if (__OFADD__(v118, v119))
    {
      goto LABEL_83;
    }

    if (v115[3] < v120)
    {
      break;
    }

    v123 = v200;
    v124 = v199;
    if ((v187 & 1) == 0)
    {
      LODWORD(v190) = v116;
      v187 = v117;
      sub_1DAF3D01C();
      v117 = v187;
      LOBYTE(v116) = v190;
      v124 = v199;
      v123 = v200;
    }

LABEL_72:
    v190 = v208;
    if (v116)
    {
      v125 = (*(v208 + 56) + 16 * v117);
      v126 = *v125;
      v127 = v125[1];
      *v125 = v124;
      sub_1DAF40780(v126, v127);
      sub_1DAF40780(v108, v107);
      sub_1DAF40780(v189, v188);
      sub_1DAF40780(v109, *(&v109 + 1));
      sub_1DAF40780(v108, v107);
      sub_1DAF40780(v109, *(&v109 + 1));
    }

    else
    {
      *(v208 + 8 * (v117 >> 6) + 64) |= 1 << v117;
      v128 = (v190[6] + 16 * v117);
      *v128 = v189;
      v128[1] = v188;
      *(v190[7] + 16 * v117) = v124;
      sub_1DAF40780(v108, v107);
      sub_1DAF40780(v109, *(&v109 + 1));
      sub_1DAF40780(v108, v107);
      sub_1DAF40780(v109, *(&v109 + 1));
      v129 = v190[2];
      v93 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v93)
      {
        goto LABEL_84;
      }

      v190[2] = v130;
    }
  }

  LODWORD(v190) = v116;
  sub_1DAF39584(v120, v187);
  v121 = sub_1DAF354E0(v189, v188);
  v122 = v116 & 1;
  LOBYTE(v116) = v190;
  if ((v190 & 1) == v122)
  {
    v117 = v121;
    v123 = v200;
    v124 = v199;
    goto LABEL_72;
  }

LABEL_85:
  sub_1DB09E2E4();
  __break(1u);
}

uint64_t sub_1DB029614()
{
  v27 = *v0;
  v25 = v0[1];
  v26 = v0[2];
  v24 = v0[3];
  v1 = v0[5];
  v63 = v0[4];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[9];
  v16 = v0[11];
  v17 = v0[10];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[14];
  v28 = v0[8];
  v29 = v0[15];
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[22];
  v23 = v0[21];

  sub_1DAF40674(v63, v1);
  sub_1DB042284(v2, v3, v28);
  sub_1DB042284(v4, v17, v16);
  sub_1DB042284(v5, v6, v7);
  sub_1DB042284(v29, v19, v18);
  *&v54 = v2;
  *(&v54 + 1) = v3;
  *&v55 = v28;
  *(&v55 + 1) = v4;
  *&v56 = v17;
  *(&v56 + 1) = v16;
  *&v57 = v5;
  *(&v57 + 1) = v6;
  *&v58 = v7;
  *(&v58 + 1) = v29;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  v60 = sub_1DAF3F2B0(MEMORY[0x1E69E7CC0]);
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v30 = v54;
  v31 = v55;
  v32 = v56;
  v33 = v57;
  type metadata accessor for ProfileSetObject.SingleValidatedConfigProvider();
  v8 = swift_allocObject();
  v9 = v63;
  sub_1DAF40674(v63, v1);
  sub_1DB0423AC(&v54, &v37);
  sub_1DAF40674(v21, v20);
  sub_1DAF40674(v23, v22);
  swift_defaultActor_initialize();
  sub_1DB04210C(v61);
  v10 = v61[7];
  *(v8 + 224) = v61[6];
  *(v8 + 240) = v10;
  *(v8 + 256) = v62;
  v11 = v61[3];
  *(v8 + 160) = v61[2];
  *(v8 + 176) = v11;
  v12 = v61[5];
  *(v8 + 192) = v61[4];
  *(v8 + 208) = v12;
  v13 = v61[1];
  *(v8 + 128) = v61[0];
  *(v8 + 144) = v13;
  *(v8 + 112) = v9;
  *(v8 + 120) = v1;
  *&v37 = v27;
  *(&v37 + 1) = v25;
  v38 = v26;
  v39 = v24;
  v40 = v9;
  v41 = v1;
  v46 = v34;
  v47 = v35;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v48 = v36;
  v49 = v21;
  v50 = v20;
  v51 = v23;
  v52 = v22;
  v53 = v8;
  if (qword_1ECC0E0F8 != -1)
  {
    swift_once();
  }

  v30 = xmmword_1EE309FE8;
  v31 = *&byte_1EE309FF8;
  LOBYTE(v32) = byte_1EE30A008;
  v14 = sub_1DB03324C(&v37, &v30);
  sub_1DB0423E4(&v54);
  sub_1DB008688(&v37);
  return v14;
}

uint64_t sub_1DB0298C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5F0, &unk_1DB0B29A0);
  v1 = *(sub_1DB09CC94() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB0B2CF0;
  v5 = *v0;
  v6 = v0[1];
  sub_1DB09CC84();
  v7 = v0[2];
  v8 = v0[3];
  sub_1DB09CC84();
  v9 = v0[4];
  v10 = v0[5];
  sub_1DB09CC84();
  v11 = v0[6];
  v12 = v0[7];
  sub_1DB09CC84();
  v13 = v0[8];
  v14 = v0[9];
  sub_1DB09CC84();
  v15 = v0[10];
  v16 = v0[11];
  sub_1DB09CC84();
  v17 = v0[12];
  v18 = v0[13];
  sub_1DB09CC84();
  return v4;
}

uint64_t sub_1DB029A78()
{
  if (*v0)
  {
    result = 0x4974736575716572;
  }

  else
  {
    result = 0x61737265766E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1DB029AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB029BB0(uint64_t a1)
{
  v2 = sub_1DB0494EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB029BEC(uint64_t a1)
{
  v2 = sub_1DB0494EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB029C28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB029C68(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FAA8, &unk_1DB0B68C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0494EC();
  sub_1DB09E434();
  v13 = v4[2];
  v14 = v4[3];
  v18[15] = 0;

  sub_1DB09E154();
  if (!v3)
  {

    v15 = v4[4];
    v16 = v4[5];
    v18[14] = 1;

    sub_1DB09E154();
  }

  (*(v7 + 8))(v11, v6);
}

void *sub_1DB029E1C(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9B8, &qword_1DB0B6830);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0494EC();
  sub_1DB09E414();
  if (v2)
  {
    type metadata accessor for RequestHeader();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    v1[2] = sub_1DB09E084();
    v1[3] = v11;
    v17 = 1;
    v13 = sub_1DB09E084();
    v15 = v14;
    (*(v5 + 8))(v9, v4);
    v1[4] = v13;
    v1[5] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DB029FFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA00, &qword_1DB0B6850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04966C();
  sub_1DB09E434();
  v12 = *v3;
  v13 = v3[1];
  v25[15] = 0;
  sub_1DB09E104();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v14 = v3[2];
  v15 = v3[3];
  v25[14] = 1;
  sub_1DB09E154();
  v16 = v3[4];
  v17 = v3[5];
  v25[13] = 2;
  sub_1DB09E154();
  v18 = v3[6];
  v19 = v3[7];
  v25[12] = 3;
  sub_1DB09E154();
  v20 = v3[8];
  v21 = v3[9];
  v25[11] = 4;
  sub_1DB09E104();
  v23 = v3[10];
  v24 = v3[11];
  v25[10] = 5;
  sub_1DB09E104();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1DB02A264()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x6F43737574617473;
  v4 = 0x7574617453627573;
  if (v1 != 4)
  {
    v4 = 0x654D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4974736575716572;
  if (v1 != 1)
  {
    v5 = 0x65736E6F70736572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB02A354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB04658C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB02A37C(uint64_t a1)
{
  v2 = sub_1DB04966C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02A3B8(uint64_t a1)
{
  v2 = sub_1DB04966C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DB02A3F4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DB0467B4(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1DB02A458(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x45656D69746E7572;
  }

  else
  {
    v4 = 0x65736E6F70736572;
  }

  if (v3)
  {
    v5 = 0xEE00726564616548;
  }

  else
  {
    v5 = 0xEC000000726F7272;
  }

  if (*a2)
  {
    v6 = 0x45656D69746E7572;
  }

  else
  {
    v6 = 0x65736E6F70736572;
  }

  if (*a2)
  {
    v7 = 0xEC000000726F7272;
  }

  else
  {
    v7 = 0xEE00726564616548;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();
  }

  return v9 & 1;
}

uint64_t sub_1DB02A514()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB02A5AC()
{
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB02A630()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB02A6D0(uint64_t *a1@<X8>)
{
  v2 = 0x65736E6F70736572;
  if (*v1)
  {
    v2 = 0x45656D69746E7572;
  }

  v3 = 0xEE00726564616548;
  if (*v1)
  {
    v3 = 0xEC000000726F7272;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB02A724()
{
  if (*v0)
  {
    result = 0x45656D69746E7572;
  }

  else
  {
    result = 0x65736E6F70736572;
  }

  *v0;
  return result;
}

uint64_t sub_1DB02A780(uint64_t a1)
{
  v2 = sub_1DB049540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02A7BC(uint64_t a1)
{
  v2 = sub_1DB049540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_OWORD *sub_1DB02A7F8(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9C8, &qword_1DB0B6838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049540();
  sub_1DB09E414();
  if (v2)
  {
    type metadata accessor for GenericResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = 0;
    sub_1DB049594();
    sub_1DB09E0C4();
    v12 = v23;
    v1[3] = v22;
    v1[4] = v12;
    v13 = v25;
    v1[5] = v24;
    v1[6] = v13;
    v14 = v21;
    v1[1] = v20;
    v1[2] = v14;
    v26 = 1;
    v16 = sub_1DB09E044();
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    *(v3 + 14) = v16;
    *(v3 + 15) = v18;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1DB02AA40()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[11];
  v6 = v0[13];

  v7 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_1DB02AAD4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA98, &qword_1DB0B68B8);
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049540();
  sub_1DB09E434();
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v32 = *(v3 + 64);
  v33 = v12;
  v13 = *(v3 + 80);
  v34 = *(v3 + 96);
  v14 = *(v3 + 16);
  v15 = *(v3 + 48);
  v30 = *(v3 + 32);
  v31 = v15;
  v16 = *(v3 + 16);
  v26 = v32;
  v27 = v13;
  v28 = *(v3 + 96);
  v29 = v16;
  v23 = v14;
  v24 = v30;
  v25 = v11;
  v22 = 0;
  sub_1DB0496C0(&v29, v21);
  sub_1DB049B40();
  sub_1DB09E194();
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v21[0] = v23;
  v21[1] = v24;
  sub_1DB0495E8(v21);
  if (!v2)
  {
    v17 = *(v3 + 112);
    v18 = *(v3 + 120);
    v20[15] = 1;
    sub_1DB09E104();
  }

  return (*(v35 + 8))(v9, v5);
}

uint64_t sub_1DB02AD54()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02ADD8()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02AE8C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DB09E004();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DB02AEE4(uint64_t a1)
{
  v2 = sub_1DB049AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02AF20(uint64_t a1)
{
  v2 = sub_1DB049AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DB02AF5C(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DB09DFA4();
  __break(1u);
}

uint64_t sub_1DB02AFBC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA80, &qword_1DB0B68B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049AEC();
  sub_1DB09E434();
  v13[1] = *(v2 + 16);
  type metadata accessor for RequestHeader();
  sub_1DB049B94(&qword_1ECC0FA90, v11, type metadata accessor for RequestHeader);
  sub_1DB09E194();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1DB02B13C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB02B174@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DB02B1F4()
{
  v1 = 0x6449656369766564;
  if (*v0 != 1)
  {
    v1 = 0x6E49746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747561;
  }
}

uint64_t sub_1DB02B260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB046C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB02B288(uint64_t a1)
{
  v2 = sub_1DB049618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02B2C4(uint64_t a1)
{
  v2 = sub_1DB049618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02B300()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1DB02B348(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA78, &qword_1DB0B68A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049618();
  sub_1DB09E434();
  v13 = v4[2];
  v14 = v4[3];
  v20[15] = 0;

  sub_1DB09E154();
  if (v3)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {

    v15 = v4[4];
    v16 = v4[5];
    v20[14] = 1;

    sub_1DB09E154();

    v18 = v4[6];
    v19 = v4[7];
    v20[13] = 2;

    sub_1DB09E154();
    (*(v7 + 8))(v11, v6);
  }
}

void *sub_1DB02B53C(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F9E0, &qword_1DB0B6840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049618();
  sub_1DB09E414();
  if (v2)
  {
    type metadata accessor for AppleCredentials();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    v1[2] = sub_1DB09E084();
    v1[3] = v11;
    v19 = 1;
    v1[4] = sub_1DB09E084();
    v1[5] = v12;
    v18 = 2;
    v14 = sub_1DB09E084();
    v16 = v15;
    (*(v5 + 8))(v9, v4);
    v1[6] = v14;
    v1[7] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DB02B7AC@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1DB02B840()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02B8B4()
{
  sub_1DB09E3A4();
  sub_1DB09D794();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB02B914@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB09E004();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DB02B9A0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DB09E004();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DB02B9F8(uint64_t a1)
{
  v2 = sub_1DB0499E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02BA34(uint64_t a1)
{
  v2 = sub_1DB0499E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DB02BA70(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DB09DFA4();
  __break(1u);
}

uint64_t sub_1DB02BAD0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA50, &qword_1DB0B6898);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  if (!*(v1 + 24))
  {
    return sub_1DB02AFBC(a1);
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0499E4();
  sub_1DB09E434();
  v12[1] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA60, &qword_1DB0B68A0);
  sub_1DB049A38();
  sub_1DB09E194();
  result = (*(v5 + 8))(v9, v4);
  if (!v2)
  {
    return sub_1DB02AFBC(a1);
  }

  return result;
}

uint64_t sub_1DB02BC5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1DB02BC9C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_1DB02BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CABB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB02BDC0(uint64_t a1)
{
  v2 = sub_1DB041AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02BDFC(uint64_t a1)
{
  v2 = sub_1DB041AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02BEF0()
{
  if (*v0)
  {
    result = 0x656D737365737361;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_1DB02BF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEF646975675F746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB02C01C(uint64_t a1)
{
  v2 = sub_1DB041B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02C058(uint64_t a1)
{
  v2 = sub_1DB041B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02C0D8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v17[1] = v4[3];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  sub_1DB09E434();
  v22 = 0;
  v15 = v19;
  sub_1DB09E154();
  if (!v15)
  {
    v21 = 1;
    sub_1DB09E154();
  }

  return (*(v20 + 8))(v10, v6);
}

uint64_t sub_1DB02C2B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB09E414();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = v25;
    v15 = v26;
    v28 = 0;
    v16 = sub_1DB09E084();
    v18 = v17;
    v24 = v16;
    v27 = 1;
    v20 = sub_1DB09E084();
    v22 = v21;
    (*(v14 + 8))(v12, v8);
    *v15 = v24;
    v15[1] = v18;
    v15[2] = v20;
    v15[3] = v22;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t ProfileSetObjectInfo.profileSetObjectId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProfileSetObjectInfo.profileBagSetId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ProfileSetObjectInfo.orderedProfileBagId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ProfileSetObjectInfo.assessmentConfigId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ProfileSetObjectInfo.orderedProfileBagName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

unint64_t sub_1DB02C5D8()
{
  v1 = *v0;
  v2 = 0x42656C69666F7270;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB02C690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB046D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB02C6B8(uint64_t a1)
{
  v2 = sub_1DB041B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02C6F4(uint64_t a1)
{
  v2 = sub_1DB041B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObjectInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F580, &qword_1DB0B2D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041B90();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = sub_1DB09E084();
  v33 = v13;
  LOBYTE(v39[0]) = 1;
  v14 = sub_1DB09E084();
  v32 = v15;
  v29 = v14;
  LOBYTE(v39[0]) = 2;
  v28 = sub_1DB09E084();
  v31 = v16;
  LOBYTE(v39[0]) = 3;
  v27 = sub_1DB09E084();
  v30 = v17;
  v40 = 4;
  v18 = sub_1DB09E084();
  v20 = v19;
  (*(v6 + 8))(v10, v5);
  *&v34 = v12;
  *(&v34 + 1) = v33;
  v21 = v32;
  *&v35 = v29;
  *(&v35 + 1) = v32;
  v22 = v31;
  *&v36 = v28;
  *(&v36 + 1) = v31;
  v23 = v30;
  *&v37 = v27;
  *(&v37 + 1) = v30;
  *&v38 = v18;
  *(&v38 + 1) = v20;
  v24 = v37;
  a2[2] = v36;
  a2[3] = v24;
  a2[4] = v38;
  v25 = v35;
  *a2 = v34;
  a2[1] = v25;
  sub_1DB041BE4(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39[0] = v12;
  v39[1] = v33;
  v39[2] = v29;
  v39[3] = v21;
  v39[4] = v28;
  v39[5] = v22;
  v39[6] = v27;
  v39[7] = v23;
  v39[8] = v18;
  v39[9] = v20;
  return sub_1DB041C1C(v39);
}

unint64_t sub_1DB02CB7C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000013;
    v7 = 0x6567416568636163;
    if (a1 != 10)
    {
      v7 = 0x6563697665447369;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000002DLL;
    v9 = 0x42676E697373696DLL;
    if (a1 != 7)
    {
      v9 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x776F6C666B726F77;
    v2 = 0x6E65674172657375;
    v3 = 0xD000000000000022;
    if (a1 == 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x49656C69666F7270;
    if (a1 != 1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB02CD30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA38, &qword_1DB0B6880);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v23 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v37 = *(v1 + 16);
  v38 = v9;
  v12 = *(v1 + 80);
  v50 = *(v1 + 64);
  v51 = v12;
  v52 = *(v1 + 96);
  v13 = *(v1 + 48);
  v48 = *(v1 + 32);
  v49 = v13;
  v14 = *(v1 + 120);
  v35 = *(v1 + 112);
  v36 = v11;
  v15 = *(v1 + 136);
  v33 = *(v1 + 128);
  v34 = v14;
  v16 = *(v1 + 152);
  v31 = *(v1 + 144);
  v32 = v15;
  v30 = *(v1 + 160);
  v17 = *(v1 + 176);
  v28 = *(v1 + 168);
  v29 = v16;
  v18 = *(v1 + 184);
  v26 = v17;
  v27 = v18;
  v25 = *(v1 + 192);
  v24 = *(v1 + 200);
  v23[1] = *(v1 + 208);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049894();
  sub_1DB09E434();
  LOBYTE(v43) = 0;
  v20 = v53;
  sub_1DB09E154();
  if (v20)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v53 = v4;
  LOBYTE(v43) = 1;
  sub_1DB09E104();
  v45 = v50;
  v46 = v51;
  v47 = v52;
  v43 = v48;
  v44 = v49;
  v42 = 2;
  sub_1DAF40A84(&v48, v41, &qword_1ECC0E8A0, &qword_1DB0A6650);
  sub_1DAF9C290();
  sub_1DB09E144();
  v41[2] = v45;
  v41[3] = v46;
  v41[4] = v47;
  v41[0] = v43;
  v41[1] = v44;
  sub_1DAF40AEC(v41, &qword_1ECC0E8A0, &qword_1DB0A6650);
  LOBYTE(v40) = 3;
  sub_1DB09E154();
  LOBYTE(v40) = 4;
  sub_1DB09E154();
  v40 = v31;
  v39 = 5;
  v38 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DAF4AA8C(&qword_1EE300F28, &qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DB09E144();
  LOBYTE(v40) = 6;
  sub_1DB09E134();
  v40 = v28;
  v39 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF673C8(&qword_1EE301938);
  sub_1DB09E144();
  LOBYTE(v40) = 8;
  sub_1DB09E104();
  LOBYTE(v40) = v25;
  v39 = 9;
  sub_1DB04993C();
  sub_1DB09E144();
  LOBYTE(v40) = 10;
  sub_1DB09E184();
  LOBYTE(v40) = 11;
  v22 = v38;
  sub_1DB09E164();
  return (*(v53 + 8))(v8, v22);
}

uint64_t sub_1DB02D26C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA28, &qword_1DB0B6878);
  v5 = *(v91 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v91, v7);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049894();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v58[0]) = 0;
  v41 = sub_1DB09E084();
  v43 = v11;
  LOBYTE(v58[0]) = 1;
  v12 = sub_1DB09E044();
  v42 = v13;
  v38 = v12;
  v78 = 2;
  sub_1DAF9C184();
  sub_1DB09E074();
  v87 = v80;
  v88 = v81;
  v89 = v82;
  v90 = v83;
  v86 = v79;
  LOBYTE(v58[0]) = 3;
  v37 = sub_1DB09E084();
  v40 = v14;
  LOBYTE(v58[0]) = 4;
  v36 = sub_1DB09E084();
  v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  LOBYTE(v44) = 5;
  sub_1DAF4AA8C(&qword_1ECC0E888, &qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DB09E074();
  v35 = v58[0];
  LOBYTE(v58[0]) = 6;
  v34 = sub_1DB09E064();
  v85 = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  LOBYTE(v44) = 7;
  sub_1DAF673C8(&qword_1EE301928);
  sub_1DB09E074();
  v17 = v58[0];
  LOBYTE(v58[0]) = 8;
  *&v33 = sub_1DB09E044();
  *(&v33 + 1) = v18;
  LOBYTE(v44) = 9;
  sub_1DB0498E8();
  sub_1DB09E074();
  v32 = LOBYTE(v58[0]);
  LOBYTE(v58[0]) = 10;
  v31 = sub_1DB09E0B4();
  v77 = 11;
  v19 = sub_1DB09E094();
  (*(v5 + 8))(v9, v91);
  *&v44 = v41;
  *(&v44 + 1) = v43;
  *&v45 = v38;
  *(&v45 + 1) = v42;
  v48 = v88;
  v49 = v89;
  v50 = v90;
  v47 = v87;
  v46 = v86;
  *&v51 = v37;
  *(&v51 + 1) = v40;
  *&v52 = v36;
  *(&v52 + 1) = v39;
  *&v53 = v35;
  *(&v53 + 1) = v34;
  LODWORD(v91) = v85;
  LOBYTE(v54) = v85;
  v20 = v33;
  *(&v54 + 1) = v17;
  v55 = v33;
  LOBYTE(v56) = v32;
  *(&v56 + 1) = v31;
  v19 &= 1u;
  v57 = v19;
  *(a2 + 208) = v19;
  v21 = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v21;
  v22 = v49;
  *(a2 + 64) = v48;
  *(a2 + 80) = v22;
  v23 = v45;
  *a2 = v44;
  *(a2 + 16) = v23;
  v24 = v56;
  v25 = v50;
  v26 = v51;
  v27 = v53;
  *(a2 + 128) = v52;
  *(a2 + 144) = v27;
  *(a2 + 96) = v25;
  *(a2 + 112) = v26;
  v28 = v54;
  *(a2 + 176) = v55;
  *(a2 + 192) = v24;
  *(a2 + 160) = v28;
  sub_1DAF8BDD0(&v44, v58);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v58[0] = v41;
  v58[1] = v43;
  v58[2] = v38;
  v58[3] = v42;
  v61 = v88;
  v62 = v89;
  v63 = v90;
  v59 = v86;
  v60 = v87;
  v64 = v37;
  v65 = v40;
  v66 = v36;
  v67 = v39;
  v68 = v35;
  v69 = v34;
  v70 = v91;
  v71 = v17;
  v72 = v20;
  v73 = v32;
  *&v74[3] = *&v84[3];
  *v74 = *v84;
  v75 = v31;
  v76 = v19;
  return sub_1DAF8BE80(v58);
}

uint64_t sub_1DB02DAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB046F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB02DB00(uint64_t a1)
{
  v2 = sub_1DB049894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02DB3C(uint64_t a1)
{
  v2 = sub_1DB049894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02DBA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA18, &qword_1DB0B6868);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v26 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 2);
  v52 = *(v1 + 1);
  v53 = v11;
  v12 = *(v1 + 4);
  v54 = *(v1 + 3);
  v55 = v12;
  v13 = *(v1 + 5);
  v26 = *(v1 + 6);
  v27 = v13;
  v28 = v1[14];
  v29 = v9;
  v14 = *(v1 + 29);
  v62 = *(v1 + 27);
  v63 = v14;
  v15 = *(v1 + 33);
  v16 = *(v1 + 35);
  v64 = *(v1 + 31);
  v65 = v15;
  v17 = *(v1 + 21);
  v58 = *(v1 + 19);
  v59 = v17;
  v18 = *(v1 + 25);
  v60 = *(v1 + 23);
  v61 = v18;
  v19 = *(v1 + 17);
  v56 = *(v1 + 15);
  v57 = v19;
  v20 = *(v1 + 37);
  v21 = *(v1 + 39);
  v69 = *(v1 + 328);
  v67 = v20;
  v68 = v21;
  v66 = v16;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0496F8();
  sub_1DB09E434();
  LOBYTE(v33) = 0;
  v23 = v30;
  sub_1DB09E104();
  if (!v23)
  {
    v24 = v28;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    v51 = v55;
    v71 = 1;
    sub_1DAF40A84(&v52, &v33, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DB0497EC();
    sub_1DB09E144();
    v47[0] = v48;
    v47[1] = v49;
    v47[2] = v50;
    v47[3] = v51;
    sub_1DAF40AEC(v47, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v33 = v27;
    v34 = v26;
    *&v35 = v24;
    LOBYTE(v31[0]) = 2;
    sub_1DAF9C544();
    sub_1DB09E144();
    v43 = v66;
    v44 = v67;
    v45 = v68;
    v46 = v69;
    v39 = v62;
    v40 = v63;
    v41 = v64;
    v42 = v65;
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v33 = v56;
    v34 = v57;
    v70 = 3;
    sub_1DAF40A84(&v56, v31, &qword_1ECC0FA20, &qword_1DB0B6870);
    sub_1DB049840();
    sub_1DB09E144();
    v31[10] = v43;
    v31[11] = v44;
    v31[12] = v45;
    v32 = v46;
    v31[6] = v39;
    v31[7] = v40;
    v31[8] = v41;
    v31[9] = v42;
    v31[2] = v35;
    v31[3] = v36;
    v31[4] = v37;
    v31[5] = v38;
    v31[0] = v33;
    v31[1] = v34;
    sub_1DAF40AEC(v31, &qword_1ECC0FA20, &qword_1DB0B6870);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1DB02DF74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA08, &unk_1DB0B6858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DB0496F8();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v95);
  }

  v30 = a2;
  LOBYTE(v32) = 0;
  v13 = sub_1DB09E044();
  v15 = v14;
  v27 = v13;
  v72 = 1;
  sub_1DAF8C3D4();
  sub_1DB09E074();
  v91 = v73;
  v92 = v74;
  v93 = v75;
  v94 = v76;
  LOBYTE(v31[0]) = 2;
  sub_1DAF9C3E0();
  sub_1DB09E074();
  v26 = v34;
  v24 = v33;
  v25 = *(&v34 + 1);
  v28 = v35;
  v29 = v32;
  v57 = 3;
  sub_1DB049760();
  sub_1DB09E074();
  (*(v6 + 8))(v10, v5);
  v87 = v68;
  v88 = v69;
  v89 = v70;
  v83 = v64;
  v84 = v65;
  v85 = v66;
  v86 = v67;
  v79 = v60;
  v80 = v61;
  v81 = v62;
  v82 = v63;
  v77 = v58;
  v78 = v59;
  v31[1] = v91;
  v31[2] = v92;
  v31[3] = v93;
  v31[4] = v94;
  *(&v31[18] + 8) = v69;
  *(&v31[19] + 8) = v70;
  *(&v31[16] + 8) = v67;
  *(&v31[17] + 8) = v68;
  *(&v31[8] + 8) = v59;
  *(&v31[7] + 8) = v58;
  v90 = v71;
  v16 = v26;
  v17 = v27;
  *&v31[0] = v27;
  *(&v31[0] + 1) = v15;
  v18 = v28;
  v19 = v29;
  v21 = v24;
  v20 = v25;
  *&v31[5] = v29;
  *(&v31[5] + 1) = v24;
  *&v31[6] = v26;
  *(&v31[6] + 1) = v25;
  *&v31[7] = v28;
  *(&v31[12] + 8) = v63;
  *(&v31[11] + 8) = v62;
  *(&v31[10] + 8) = v61;
  *(&v31[9] + 8) = v60;
  *(&v31[15] + 8) = v66;
  *(&v31[14] + 8) = v65;
  *(&v31[13] + 8) = v64;
  BYTE8(v31[20]) = v71;
  memcpy(v30, v31, 0x149uLL);
  sub_1DB0497B4(v31, &v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  v32 = v17;
  v33 = v15;
  v34 = v91;
  v35 = v92;
  v36 = v93;
  v37 = v94;
  v38 = v19;
  v39 = v21;
  v40 = v16;
  v41 = v20;
  v42 = v18;
  v54 = v88;
  v55 = v89;
  v52 = v86;
  v53 = v87;
  v44 = v78;
  v43 = v77;
  v48 = v82;
  v47 = v81;
  v46 = v80;
  v45 = v79;
  v51 = v85;
  v50 = v84;
  v49 = v83;
  v56 = v90;
  return sub_1DAFB7FA0(&v32);
}

uint64_t sub_1DB02E438()
{
  v1 = 0x6F6C79615069646FLL;
  v2 = 0x666E49726F727265;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697469646461;
  }

  if (*v0)
  {
    v1 = 0x7364656573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB02E4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB04731C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB02E4EC(uint64_t a1)
{
  v2 = sub_1DB0496F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02E528(uint64_t a1)
{
  v2 = sub_1DB0496F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getProfileId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getProfileSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getProfileBagSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getOrderedProfileBagId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EmptyProfileIdentifiers.getAssessmentConfigId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void __swiftcall EmptyProfileIdentifiers.getProfileSetObjectInfo()(CoreODIEssentials::ProfileSetObjectInfo_optional *__return_ptr retstr)
{
  retstr->value.assessmentConfigId = 0u;
  retstr->value.orderedProfileBagName = 0u;
  retstr->value.profileBagSetId = 0u;
  retstr->value.orderedProfileBagId = 0u;
  retstr->value.profileSetObjectId = 0u;
}

uint64_t sub_1DB02E5F0(uint64_t a1)
{
  v2 = sub_1DB041C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02E62C(uint64_t a1)
{
  v2 = sub_1DB041C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptyProfileIdentifiers.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F588, &qword_1DB0B2D38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041C4C();
  sub_1DB09E434();
  return (*(v3 + 8))(v7, v2);
}

double sub_1DB02E7A4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DB02E7E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F588, &qword_1DB0B2D38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041C4C();
  sub_1DB09E434();
  return (*(v3 + 8))(v7, v2);
}

uint64_t LegacyAugmentedProfileIdentifiers.profileId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getProfileId()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getProfileSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getProfileBagSetId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getOrderedProfileBagId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall LegacyAugmentedProfileIdentifiers.getAssessmentConfigId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1DB02E9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB02EA30(uint64_t a1)
{
  v2 = sub_1DB041CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02EA6C(uint64_t a1)
{
  v2 = sub_1DB041CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyAugmentedProfileIdentifiers.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F598, &qword_1DB0B2D40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041CA0();
  sub_1DB09E434();
  sub_1DB09E154();
  return (*(v4 + 8))(v8, v3);
}

uint64_t LegacyAugmentedProfileIdentifiers.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5A8, &qword_1DB0B2D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041CA0();
  sub_1DB09E414();
  if (!v2)
  {
    v12 = sub_1DB09E084();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB02ED58()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall ProfileSetIdentifiers.init(profileSetId:profileBagSetId:orderedProfileBagId:assessmentConfigId:bagName:)(CoreODIEssentials::ProfileSetIdentifiers *__return_ptr retstr, Swift::String profileSetId, Swift::String profileBagSetId, Swift::String orderedProfileBagId, Swift::String assessmentConfigId, Swift::String bagName)
{
  retstr->profileSetId = profileSetId;
  retstr->profileBagSetId = profileBagSetId;
  retstr->orderedProfileBagId = orderedProfileBagId;
  retstr->assessmentConfigId = assessmentConfigId;
  retstr->bagName = bagName;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getProfileId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getProfileSetId()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getProfileBagSetId()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getOrderedProfileBagId()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ProfileSetIdentifiers.getAssessmentConfigId()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void __swiftcall ProfileSetIdentifiers.getProfileSetObjectInfo()(CoreODIEssentials::ProfileSetObjectInfo_optional *__return_ptr retstr)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  retstr->value.profileSetObjectId._countAndFlagsBits = v3;
  retstr->value.profileSetObjectId._object = v2;
  retstr->value.profileBagSetId._countAndFlagsBits = v4;
  retstr->value.profileBagSetId._object = v5;
  retstr->value.orderedProfileBagId._countAndFlagsBits = v6;
  retstr->value.orderedProfileBagId._object = v7;
  retstr->value.assessmentConfigId._countAndFlagsBits = v8;
  retstr->value.assessmentConfigId._object = v9;
  retstr->value.orderedProfileBagName._countAndFlagsBits = v10;
  retstr->value.orderedProfileBagName._object = v11;
}

unint64_t sub_1DB02EF48()
{
  v1 = *v0;
  v2 = 0x53656C69666F7270;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x656D614E676162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x42656C69666F7270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB02F004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB047494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB02F02C(uint64_t a1)
{
  v2 = sub_1DB041CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB02F068(uint64_t a1)
{
  v2 = sub_1DB041CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB02F0E8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v22 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v21 - v10;
  v12 = *v4;
  v13 = v4[1];
  v14 = v4[3];
  v21[8] = v4[2];
  v21[9] = v12;
  v15 = v4[5];
  v21[6] = v4[4];
  v21[7] = v14;
  v16 = v4[7];
  v21[4] = v4[6];
  v21[5] = v15;
  v17 = v4[9];
  v21[2] = v4[8];
  v21[3] = v16;
  v21[1] = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22();
  sub_1DB09E434();
  v28 = 0;
  v19 = v23;
  sub_1DB09E154();
  if (v19)
  {
    return (*(v7 + 8))(v11, v6);
  }

  v27 = 1;
  sub_1DB09E154();
  v26 = 2;
  sub_1DB09E154();
  v25 = 3;
  sub_1DB09E154();
  v24 = 4;
  sub_1DB09E154();
  return (*(v7 + 8))(v11, v6);
}

uint64_t ProfileSetIdentifiers.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5C0, &qword_1DB0B2D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041CF4();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = sub_1DB09E084();
  v33 = v13;
  LOBYTE(v39[0]) = 1;
  v14 = sub_1DB09E084();
  v32 = v15;
  v29 = v14;
  LOBYTE(v39[0]) = 2;
  v28 = sub_1DB09E084();
  v31 = v16;
  LOBYTE(v39[0]) = 3;
  v27 = sub_1DB09E084();
  v30 = v17;
  v40 = 4;
  v18 = sub_1DB09E084();
  v20 = v19;
  (*(v6 + 8))(v10, v5);
  *&v34 = v12;
  *(&v34 + 1) = v33;
  v21 = v32;
  *&v35 = v29;
  *(&v35 + 1) = v32;
  v22 = v31;
  *&v36 = v28;
  *(&v36 + 1) = v31;
  v23 = v30;
  *&v37 = v27;
  *(&v37 + 1) = v30;
  *&v38 = v18;
  *(&v38 + 1) = v20;
  v24 = v37;
  a2[2] = v36;
  a2[3] = v24;
  a2[4] = v38;
  v25 = v35;
  *a2 = v34;
  a2[1] = v25;
  sub_1DB041D48(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39[0] = v12;
  v39[1] = v33;
  v39[2] = v29;
  v39[3] = v21;
  v39[4] = v28;
  v39[5] = v22;
  v39[6] = v27;
  v39[7] = v23;
  v39[8] = v18;
  v39[9] = v20;
  return sub_1DB041D80(v39);
}

unint64_t sub_1DB02F6CC(char a1)
{
  result = 0x617461645F617564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7364656573;
      break;
    case 3:
      result = 0x776F6C666B726F77;
      break;
    case 4:
    case 7:
      result = 0x5F656C69666F7270;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x726F727265;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      result = 0xD000000000000033;
      break;
    case 13:
      result = 0x5F64616F6C796170;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1DB02F878(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBC0, &qword_1DB0B7770);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v25 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[3];
  v47 = v1[2];
  v46 = v11;
  v12 = *(v1 + 3);
  v58 = *(v1 + 2);
  v59 = v12;
  v13 = *(v1 + 5);
  v60 = *(v1 + 4);
  v61 = v13;
  v14 = v1[13];
  v45 = v1[12];
  v44 = v14;
  v15 = v1[15];
  v43 = v1[14];
  v42 = v15;
  v16 = v1[17];
  v40 = v1[16];
  v41 = v16;
  v17 = v1[19];
  v38 = v1[18];
  v39 = v17;
  v18 = v1[21];
  v36 = v1[20];
  v37 = v18;
  v19 = v1[23];
  v34 = v1[22];
  v35 = v19;
  v20 = *(v1 + 12);
  v32 = *(v1 + 13);
  v33 = v20;
  v31 = v1[28];
  v30 = *(v1 + 232);
  v21 = v1[31];
  v29 = v1[30];
  v27 = v21;
  v28 = *(v1 + 256);
  v25[1] = v1[33];
  v26 = *(v1 + 272);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AF08();
  sub_1DB09E434();
  LOBYTE(v54) = 0;
  v23 = v62;
  sub_1DB09E154();
  if (v23)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v62 = v4;
  LOBYTE(v54) = 1;
  sub_1DB09E104();
  v54 = v58;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v53 = 2;
  sub_1DAF40A84(&v58, v52, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  sub_1DB0497EC();
  sub_1DB09E144();
  v52[0] = v54;
  v52[1] = v55;
  v52[2] = v56;
  v52[3] = v57;
  sub_1DAF40AEC(v52, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  LOBYTE(v49) = 3;
  sub_1DB09E104();
  LOBYTE(v49) = 4;
  sub_1DB09E104();
  LOBYTE(v49) = 5;
  sub_1DB09E104();
  LOBYTE(v49) = 6;
  sub_1DB09E104();
  LOBYTE(v49) = 7;
  sub_1DB09E104();
  LOBYTE(v49) = 8;
  sub_1DB09E104();
  v50 = v32;
  v49 = v33;
  v51 = v31;
  v48 = 9;
  sub_1DAF9C544();
  sub_1DB09E144();
  LOBYTE(v49) = 10;
  sub_1DB09E114();
  *&v49 = v29;
  v48 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DAF4AA8C(&qword_1EE300F28, &qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DB09E144();
  LOBYTE(v49) = 12;
  sub_1DB09E134();
  LOBYTE(v49) = 13;
  sub_1DB09E134();
  return (*(v62 + 8))(0, v3);
}

uint64_t sub_1DB02FEE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC08, &qword_1DB0B77A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v36 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DB04AF08();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v104);
  }

  v13 = v6;
  v59 = a2;
  LOBYTE(v61) = 0;
  v15 = sub_1DB09E084();
  v57 = v16;
  LOBYTE(v61) = 1;
  v17 = sub_1DB09E044();
  v56 = v18;
  v19 = v17;
  v91 = 2;
  sub_1DAF8C3D4();
  sub_1DB09E074();
  v100 = v92;
  v101 = v93;
  v102 = v94;
  v103 = v95;
  LOBYTE(v61) = 3;
  v49 = sub_1DB09E044();
  v55 = v20;
  LOBYTE(v61) = 4;
  v48 = sub_1DB09E044();
  v54 = v21;
  LOBYTE(v61) = 5;
  v47 = sub_1DB09E044();
  v53 = v22;
  LOBYTE(v61) = 6;
  v46 = sub_1DB09E044();
  v52 = v23;
  LOBYTE(v61) = 7;
  v45 = sub_1DB09E044();
  v51 = v24;
  LOBYTE(v61) = 8;
  v44 = sub_1DB09E044();
  v50 = v25;
  v58 = 0;
  v60[0] = 9;
  sub_1DAF9C3E0();
  v26 = v58;
  sub_1DB09E074();
  v58 = v26;
  if (v26)
  {
    (*(v13 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);

    v61 = v100;
    v62 = v101;
    v63 = v102;
    v64 = v103;
    sub_1DAF40AEC(&v61, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  }

  else
  {
    v42 = v61;
    v43 = v62;
    v41 = v63;
    LOBYTE(v61) = 10;
    v40 = sub_1DB09E054();
    v58 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
    v60[0] = 11;
    sub_1DAF4AA8C(&qword_1ECC0E888, &qword_1ECC0E880, &qword_1DB0A6640);
    v27 = v58;
    sub_1DB09E074();
    v58 = v27;
    if (v27)
    {
      (*(v13 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);

      v61 = v100;
      v62 = v101;
      v63 = v102;
      v64 = v103;
      sub_1DAF40AEC(&v61, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

      return sub_1DB04974C(v42, *(&v42 + 1), v43, *(&v43 + 1), v41);
    }

    else
    {
      v28 = v61;
      LOBYTE(v61) = 12;
      v39 = sub_1DB09E064();
      v58 = 0;
      v98 = v29 & 1;
      v90 = 13;
      v38 = sub_1DB09E064();
      v58 = 0;
      v31 = v30;
      (*(v13 + 8))(v10, v5);
      v96 = v31 & 1;
      v32 = v56;
      *v60 = v15;
      *&v60[8] = v57;
      *&v60[16] = v19;
      *&v60[24] = v56;
      *&v60[32] = v100;
      *&v60[48] = v101;
      *&v60[64] = v102;
      *&v60[80] = v103;
      v33 = v54;
      v34 = v55;
      *&v60[96] = v49;
      *&v60[104] = v55;
      *&v60[112] = v48;
      *&v60[120] = v54;
      *&v60[128] = v47;
      *&v60[136] = v53;
      *&v60[144] = v46;
      *&v60[152] = v52;
      *&v60[160] = v45;
      *&v60[168] = v51;
      *&v60[176] = v44;
      *&v60[184] = v50;
      *&v60[192] = v42;
      *&v60[208] = v43;
      v35 = v41;
      *&v60[224] = v41;
      v60[232] = v40;
      *&v60[240] = v28;
      *&v60[248] = v39;
      v36 = v98;
      v60[256] = v98;
      *&v60[264] = v38;
      v37 = v96;
      v60[272] = v96;
      memcpy(v59, v60, 0x111uLL);
      sub_1DAFFCFE4(v60, &v61);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      *&v61 = v15;
      *(&v61 + 1) = v57;
      *&v62 = v19;
      *(&v62 + 1) = v32;
      v63 = v100;
      v64 = v101;
      v65 = v102;
      v66 = v103;
      v67 = v49;
      v68 = v34;
      v69 = v48;
      v70 = v33;
      v71 = v47;
      v72 = v53;
      v73 = v46;
      v74 = v52;
      v75 = v45;
      v76 = v51;
      v77 = v44;
      v78 = v50;
      v79 = v42;
      v80 = v43;
      v81 = v35;
      v82 = v40;
      *&v83[3] = *&v99[3];
      *v83 = *v99;
      v84 = v28;
      v85 = v39;
      v86 = v36;
      *v87 = *v97;
      *&v87[3] = *&v97[3];
      v88 = v38;
      v89 = v37;
      return sub_1DAFFD1F4(&v61);
    }
  }
}

uint64_t sub_1DB0308C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FA48, &qword_1DB0B6890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB049990();
  sub_1DB09E434();
  v12 = *v3;
  v18[15] = 0;
  sub_1DB09E184();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v13 = v3[1];
  v14 = *(v3 + 16);
  v18[14] = 1;
  sub_1DB09E134();
  v16 = v3[3];
  v17 = v3[4];
  v18[13] = 2;
  sub_1DB09E104();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1DB030A68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DB030A98()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DB030AC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1DB030AF8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  a1[7] = v9;
  a1[8] = v10;
  a1[9] = v11;
}

uint64_t sub_1DB030BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB047660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB030BD4(uint64_t a1)
{
  v2 = sub_1DB04AF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB030C10(uint64_t a1)
{
  v2 = sub_1DB04AF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB030C7C()
{
  v1 = 0x6F7272655F6E646FLL;
  if (*v0 != 1)
  {
    v1 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F7272655F766469;
  }
}

uint64_t sub_1DB030CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB047AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB030D08(uint64_t a1)
{
  v2 = sub_1DB049990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB030D44(uint64_t a1)
{
  v2 = sub_1DB049990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DB030D80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB047BF4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DB030E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x666F72705F617564 && a2 == 0xEB00000000656C69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB030E8C(uint64_t a1)
{
  v2 = sub_1DB04B058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB030EC8(uint64_t a1)
{
  v2 = sub_1DB04B058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB030FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D697473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB031024(uint64_t a1)
{
  v2 = sub_1DB04B0AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB031060(uint64_t a1)
{
  v2 = sub_1DB04B0AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB0310E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB09E414();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = v21;
  v15 = v22;
  v16 = sub_1DB09E084();
  v18 = v17;
  (*(v14 + 8))(v12, v8);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v15 = v16;
  v15[1] = v18;
  return result;
}

uint64_t sub_1DB0312AC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v18 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  v14 = v6[1];
  v17 = *v6;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  sub_1DB09E434();
  sub_1DB09E154();
  return (*(v9 + 8))(v13, v8);
}

uint64_t static TSID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB09E254();
  }
}

uint64_t sub_1DB031424()
{
  v1 = 0x5F6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x65636E6F6E5F7374;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632436;
  }
}

uint64_t sub_1DB03147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB047DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB0314A4(uint64_t a1)
{
  v2 = sub_1DB041DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB0314E0(uint64_t a1)
{
  v2 = sub_1DB041DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TSID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5C8, &qword_1DB0B2D60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041DB0();
  sub_1DB09E434();
  v19 = 0;
  v14 = v16[5];
  sub_1DB09E154();
  if (v14)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v18 = 1;
  sub_1DB09E154();
  v17 = 2;
  sub_1DB09E104();
  return (*(v4 + 8))(v8, v3);
}

uint64_t TSID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D0, &qword_1DB0B2D68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB041DB0();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = 0;
  v12 = sub_1DB09E084();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_1DB09E084();
  v24 = v15;
  v26 = 2;
  v16 = sub_1DB09E044();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v10, v5);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB031958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC60, &qword_1DB0B7E60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04B968();
  sub_1DB09E434();
  v16 = 0;
  sub_1DB09E154();
  if (!v4)
  {
    v15 = 1;
    sub_1DB09E184();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1DB031B1C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB09E254();
  }
}

uint64_t sub_1DB031B4C()
{
  if (*v0)
  {
    result = 0x695F747365676964;
  }

  else
  {
    result = 0x64616F6C796170;
  }

  *v0;
  return result;
}

uint64_t sub_1DB031B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x695F747365676964 && a2 == 0xEC0000007865646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB031C70(uint64_t a1)
{
  v2 = sub_1DB04B968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB031CAC(uint64_t a1)
{
  v2 = sub_1DB04B968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB031CE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DB047F04(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

CoreODIEssentials::DUATaskType_optional __swiftcall DUATaskType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DB031D5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBE0, &qword_1DB0B7780);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 24);
  v17[2] = *(v1 + 25);
  v18 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AF5C();
  sub_1DB09E434();
  v24 = 0;
  v14 = v19;
  sub_1DB09E154();
  if (!v14)
  {
    v15 = v18;
    v23 = 1;
    sub_1DB09E174();
    v22 = v15;
    v21 = 2;
    sub_1DB04B004();
    sub_1DB09E194();
    v20 = 3;
    sub_1DB09E114();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1DB031F80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBD0, &qword_1DB0B7778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AF5C();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v12 = sub_1DB09E084();
  v14 = v13;
  v15 = v12;
  v24 = 1;
  sub_1DB09E0A4();
  v17 = v16;
  v22 = 2;
  sub_1DB04AFB0();
  sub_1DB09E0C4();
  HIDWORD(v20) = v23;
  v21 = 3;
  v19 = sub_1DB09E054();
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 24) = BYTE4(v20);
  *(a2 + 25) = v19;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DB0322B0()
{
  v1 = 0x617461645F617564;
  v2 = 0x7079745F6B736174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB032334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB0480DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB03235C(uint64_t a1)
{
  v2 = sub_1DB04AF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB032398(uint64_t a1)
{
  v2 = sub_1DB04AF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB032404(char a1)
{
  result = 0x6E6F635F64697374;
  switch(a1)
  {
    case 1:
      result = 0x7364656573;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x776F6C666B726F77;
      break;
    case 4:
      result = 0x617461645F617564;
      break;
    case 5:
      result = 0x6E6F6973726576;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD000000000000030;
      break;
    case 9:
      result = 0x726F727265;
      break;
    case 10:
    case 11:
      result = 0x6B63616264656566;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
    case 15:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB0325E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBB8, &qword_1DB0B7768);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v32 - v7;
  v9 = v1[1];
  v52 = *v1;
  v10 = v1[2];
  v11 = *(v1 + 5);
  v68 = *(v1 + 3);
  v69 = v11;
  v12 = *(v1 + 9);
  v70 = *(v1 + 7);
  v71 = v12;
  v13 = *(v1 + 13);
  v14 = *(v1 + 17);
  v74 = *(v1 + 15);
  v75 = v14;
  v76 = *(v1 + 19);
  v72 = *(v1 + 11);
  v73 = v13;
  v15 = v1[21];
  v50 = v1[22];
  v51 = v15;
  v16 = v1[24];
  v48 = v1[23];
  v49 = v16;
  v47 = v1[25];
  v77 = *(v1 + 208);
  v17 = v1[28];
  v46 = v1[27];
  v44 = v17;
  v45 = *(v1 + 232);
  v18 = *(v1 + 15);
  v42 = *(v1 + 16);
  v43 = v18;
  v19 = v1[35];
  v41 = v1[34];
  v40 = *(v1 + 288);
  v20 = v1[37];
  v38 = v1[38];
  v39 = v19;
  v21 = v1[40];
  v36 = v1[39];
  v37 = v20;
  v34 = v21;
  v35 = *(v1 + 328);
  v22 = v1[42];
  v33 = *(v1 + 344);
  v23 = v1[45];
  v32[0] = v1[44];
  v32[1] = v23;
  v32[2] = v22;
  v24 = a1[3];
  v25 = a1[4];
  v26 = a1;
  v28 = v27;
  __swift_project_boxed_opaque_existential_1(v26, v24);
  sub_1DB04AD88();

  sub_1DB09E434();
  *&v58 = v52;
  *(&v58 + 1) = v9;
  *&v59 = v10;
  LOBYTE(v57[0]) = 0;
  sub_1DB04ADDC();
  v29 = v53;
  sub_1DB09E194();
  if (v29)
  {

    return (*(v4 + 8))(v8, v28);
  }

  else
  {
    v53 = v4;

    v64 = v68;
    v65 = v69;
    v66 = v70;
    v67 = v71;
    v80 = 1;
    sub_1DAF40A84(&v68, &v58, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DB0497EC();
    sub_1DB09E144();
    v63[0] = v64;
    v63[1] = v65;
    v63[2] = v66;
    v63[3] = v67;
    sub_1DAF40AEC(v63, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v60 = v74;
    v61 = v75;
    v62 = v76;
    v58 = v72;
    v59 = v73;
    v79 = 2;
    sub_1DAF40A84(&v72, v57, &qword_1ECC0E8A0, &qword_1DB0A6650);
    sub_1DAF9C290();
    sub_1DB09E144();
    v57[2] = v60;
    v57[3] = v61;
    v57[4] = v62;
    v57[0] = v58;
    v57[1] = v59;
    sub_1DAF40AEC(v57, &qword_1ECC0E8A0, &qword_1DB0A6650);
    LOBYTE(v54) = 3;
    sub_1DB09E104();
    LOBYTE(v54) = 4;
    sub_1DB09E154();
    LOBYTE(v54) = 5;
    sub_1DB09E184();
    LOBYTE(v54) = 6;
    sub_1DB09E114();
    *&v54 = v46;
    v78 = 7;
    v52 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F018, &unk_1DB0AFAA0);
    sub_1DAF4AA8C(&qword_1EE300F18, &qword_1ECC0F018, &unk_1DB0AFAA0);
    sub_1DB09E144();
    LOBYTE(v54) = 8;
    sub_1DB09E134();
    v55 = v42;
    v54 = v43;
    v56 = v41;
    v78 = 9;
    sub_1DAF9C544();
    sub_1DB09E144();
    LOBYTE(v54) = 10;
    sub_1DB09E124();
    LOBYTE(v54) = 11;
    sub_1DB09E104();
    *&v54 = v36;
    v78 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F358, &qword_1DB0AFAC8);
    sub_1DB04AE30();
    sub_1DB09E194();
    LOBYTE(v54) = 13;
    sub_1DB09E124();
    LOBYTE(v54) = 14;
    sub_1DB09E124();
    LOBYTE(v54) = 15;
    v31 = v52;
    sub_1DB09E104();
    return (*(v53 + 8))(v31, v28);
  }
}

uint64_t sub_1DB032CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB048250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB032CE0(uint64_t a1)
{
  v2 = sub_1DB04AD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB032D1C(uint64_t a1)
{
  v2 = sub_1DB04AD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ProfileSetObject.profileIdentifiers(for:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v33 - v11;
  LODWORD(a1) = *a1;
  v14 = *v2;
  v15 = v2[1];
  v16 = v2[3];
  v36 = v2[2];
  v34 = v14;
  v35 = v16;
  v17 = v2[21];
  v18 = v2[22];
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (v2[14])
      {
        v19 = v2[12];
        v20 = v2[13];
        goto LABEL_12;
      }
    }

    else if (v2[17])
    {
      v19 = v2[15];
      v20 = v2[16];
      goto LABEL_12;
    }
  }

  else if (a1)
  {
    if (v2[11])
    {
      v19 = v2[9];
      v20 = v2[10];
      goto LABEL_12;
    }
  }

  else if (v2[8])
  {
    v19 = v2[6];
    v20 = v2[7];
LABEL_12:
    sub_1DAF40674(v19, v20);
    goto LABEL_14;
  }

  v19 = 0;
  v20 = 0xF000000000000000;
LABEL_14:
  a1 = a1;
  v33 = v15;

  Data.uuid.getter(v17, v18, v12);
  sub_1DAF40A84(v12, v9, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v21 = sub_1DB09D1D4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    sub_1DAF40AEC(v9, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v23 = 0xEC0000002D64692DLL;
    v24 = 0x676E697373696D2DLL;
  }

  else
  {
    sub_1DB09D174();
    (*(v22 + 8))(v9, v21);
    v24 = sub_1DB09D754();
    v23 = v25;
  }

  sub_1DAF40AEC(v12, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v26 = sub_1DB041EF4(v19, v20);
  v28 = v27;
  v29 = qword_1DB0B7F80[a1];
  v30 = v35;

  sub_1DAF4AC40(v19, v20);
  a2[3] = &type metadata for ProfileSetIdentifiers;
  a2[4] = sub_1DAFEA5B4();
  result = swift_allocObject();
  *a2 = result;
  v32 = v33;
  result[2] = v34;
  result[3] = v32;
  result[4] = v24;
  result[5] = v23;
  result[6] = v26;
  result[7] = v28;
  result[8] = v36;
  result[9] = v30;
  result[10] = v29;
  result[11] = 0xE300000000000000;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = *(v8 + 16);
  result = sub_1DAF40674(*v3, v7);
  if (v9)
  {
    v11 = 0;
    v12 = v8 + 40;
    v13 = MEMORY[0x1E69E7CC0];
    v28 = v7;
    v29 = v6;
    while (1)
    {
      v14 = v9 - v11;
      v15 = (v12 + 16 * v11);
      while (1)
      {
        if (v11 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        if (*(a1 + 16))
        {
          break;
        }

LABEL_4:
        v15 += 2;
        ++v11;
        if (!--v14)
        {
          v7 = v28;
          v6 = v29;
          goto LABEL_18;
        }
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      sub_1DAF40674(v16, *v15);
      v18 = sub_1DAF354E0(v16, v17);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = (*(a1 + 56) + 16 * v18);
      v21 = *v20;
      v27 = v20[1];
      sub_1DAF40674(*v20, v27);
      sub_1DAF40780(v16, v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v21;
      if ((result & 1) == 0)
      {
        result = sub_1DAF735C8(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1DAF735C8((v23 > 1), v24 + 1, 1, v13);
        v13 = result;
      }

      ++v11;
      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v27;
      v26 = v14 == 1;
      v7 = v28;
      v6 = v29;
      v12 = v8 + 40;
      if (v26)
      {
        goto LABEL_18;
      }
    }

    result = sub_1DAF40780(v16, v17);
    goto LABEL_4;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_18:
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v13;
  return result;
}

__n128 ProfileSetObject.ProfileBagSet.init(criticalPath:pregeneratedAssessment:populateCache:fallbackAssessment:files:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v8 = *(a3 + 16);
  v9 = a4[1].n128_u64[0];
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 24) = *a2;
  *(a6 + 40) = v7;
  *(a6 + 48) = *a3;
  *(a6 + 64) = v8;
  result = *a4;
  *(a6 + 72) = *a4;
  *(a6 + 88) = v9;
  *(a6 + 96) = a5;
  return result;
}

uint64_t sub_1DB03324C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ODISignpost();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v36[-v12 - 8];
  v14 = a1[9];
  v45 = a1[8];
  v46 = v14;
  v15 = a1[11];
  v47 = a1[10];
  v48 = v15;
  v16 = a1[5];
  v41 = a1[4];
  v42 = v16;
  v17 = a1[7];
  v43 = a1[6];
  v44 = v17;
  v18 = a1[1];
  v37 = *a1;
  v38 = v18;
  v19 = a1[3];
  v39 = a1[2];
  v40 = v19;
  *(v9 + 4) = "enableTelemetry=YES";
  *(v9 + 5) = 19;
  v9[48] = 2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v20;
  v9[16] = v21;
  v22 = *(a2 + 24);
  *(v9 + 3) = v22;
  v49 = v11;
  v23 = *(v11 + 28);
  sub_1DAFA7110(a2, v36);
  v24 = v22;
  sub_1DB09D474();
  LOBYTE(a2) = *(a2 + 32);
  sub_1DB09DC14();
  if (a2)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v9, v13);
  v25 = sub_1DB09D404();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1DB09D3F4();
  sub_1DB043BC8();
  v28 = sub_1DB09D3E4();

  sub_1DB09DC04();
  v29 = *(v13 + 3);
  v30 = *v13;
  v31 = *(v13 + 1);
  v32 = *(v49 + 28);
  v33 = v13[16];
  sub_1DB09D464();
  sub_1DAF60868(v13);
  return v28;
}

uint64_t ProfileSetObject.resolvedProfileInfo.getter()
{
  v1 = *(v0 + 152);
  sub_1DAF40674(v1, *(v0 + 160));
  return v1;
}

__n128 ProfileSetObject.config.getter@<Q0>(__n128 *a1@<X8>)
{
  sub_1DB0954E0(*(v1 + 32), *(v1 + 40), v16);
  v13 = v16[6];
  v14 = v16[7];
  v15 = v17;
  v9 = v16[2];
  v10 = v16[3];
  v11 = v16[4];
  v12 = v16[5];
  v7 = v16[0];
  v8 = v16[1];
  nullsub_3(&v7);
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  a1[8].n128_u8[0] = v15;
  v4 = v10;
  a1[2] = v9;
  a1[3] = v4;
  v5 = v12;
  a1[4] = v11;
  a1[5] = v5;
  result = v8;
  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.id.getter()
{
  v1 = *v0;
  sub_1DAF40674(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1DB0335F0@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB09E004();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t ProfileSetObject.ProfileBagSet.ProfileBag.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DB03369C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0x80000001DB0C1ED0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0x80000001DB0C1ED0;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();
  }

  return v9 & 1;
}

uint64_t sub_1DB03373C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB0337B8()
{
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB033820()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB0338A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB09E004();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DB033900(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DB0C1ED0;
  v3 = 25705;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DB033938()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DB033978@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB09E004();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DB0339D8(uint64_t a1)
{
  v2 = sub_1DB042128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB033A14(uint64_t a1)
{
  v2 = sub_1DB042128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.init(id:profileIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5E0, &qword_1DB0B2D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042128();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  sub_1DAFEA408();
  sub_1DB09E0C4();
  v13 = v16[0];
  v12 = v16[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
  v17 = 1;
  sub_1DB04217C();
  sub_1DB09E0C4();
  (*(v6 + 8))(v10, v5);
  v14 = v16[0];
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;
  sub_1DAF40674(v13, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DAF40780(v13, v12);
}

uint64_t ProfileSetObject.ProfileBagSet.ProfileBag.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F600, &qword_1DB0B2D88);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF40674(v9, v10);
  sub_1DB042128();
  sub_1DB09E434();
  v15 = v9;
  v16 = v10;
  v17 = 0;
  sub_1DAFEA608();
  sub_1DB09E194();
  sub_1DAF40780(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5F0, &qword_1DB0B2D80);
    sub_1DB042200();
    sub_1DB09E194();
  }

  return (*(v14 + 8))(v8, v4);
}

CoreODIEssentials::ProfileSetObject::ProfileBagSet::CodingKeys_optional __swiftcall ProfileSetObject.ProfileBagSet.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

CoreODIEssentials::ProfileSetObject::ProfileBagSet::CodingKeys_optional __swiftcall ProfileSetObject.ProfileBagSet.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ProfileSetObject.ProfileBagSet.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t ProfileSetObject.ProfileBagSet.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 6382448;
  v3 = 0x73656C6966;
  if (v1 == 3)
  {
    v3 = 6382182;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 6383472;
  if (!*v0)
  {
    v4 = 6385763;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB033FB0()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB034064()
{
  *v0;
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB034104()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

void sub_1DB0341C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 6382448;
  v4 = 0xE300000000000000;
  v5 = 0xE300000000000000;
  v6 = 0x73656C6966;
  if (v2 == 3)
  {
    v6 = 6382182;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v3 = v6;
    v4 = v5;
  }

  v7 = 6383472;
  if (!*v1)
  {
    v7 = 6385763;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v7 = v3;
    v8 = v4;
  }

  *a1 = v7;
  a1[1] = v8;
}

uint64_t sub_1DB034230()
{
  v1 = *v0;
  v2 = 6382448;
  v3 = 0x73656C6966;
  if (v1 == 3)
  {
    v3 = 6382182;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 6383472;
  if (!*v0)
  {
    v4 = 6385763;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB0342D4(uint64_t a1)
{
  v2 = sub_1DB0422C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB034310(uint64_t a1)
{
  v2 = sub_1DB0422C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObject.ProfileBagSet.criticalPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.pregeneratedAssessment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.populateCache.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.fallbackAssessment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DB042284(v2, v3, v4);
}

uint64_t ProfileSetObject.ProfileBagSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v50 = sub_1DB09DEA4();
  v47 = *(v50 - 8);
  v3 = *(v47 + 64);
  v5 = MEMORY[0x1EEE9AC00](v50, v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v35[-v10];
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v35[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F610, &qword_1DB0B2D90);
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v35[-v18];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0422C4();
  v21 = v68;
  sub_1DB09E414();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v68 = v7;
  v45 = v14;
  v22 = v49;
  v46 = v11;
  LOBYTE(v51) = 0;
  sub_1DB042318();
  sub_1DB09E074();
  v44 = *v58;
  v43 = *&v58[16];
  LOBYTE(v51) = 1;
  v23 = v19;
  sub_1DB09E074();
  v40 = *&v58[8];
  v41 = *v58;
  LOBYTE(v51) = 2;
  v39 = 0;
  sub_1DB09E074();
  v42 = *v58;
  v36 = *&v58[16];
  LOBYTE(v51) = 3;
  sub_1DB09E074();
  v38 = *&v58[8];
  v24 = *v58;
  v37 = *&v58[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F628, &qword_1DB0B2D98);
  LOBYTE(v51) = 4;
  sub_1DB042468(&qword_1ECC0F630, sub_1DAFEA408);
  sub_1DB09E0C4();
  v25 = v41;
  (*(v22 + 8))(v23, v15);
  v68 = *v58;
  v51 = v44;
  v26 = v43;
  *&v52 = v43;
  *(&v52 + 1) = v25;
  v27 = v40;
  v53 = v40;
  v28 = *(&v40 + 1);
  v54 = v42;
  *&v55 = v36;
  *(&v55 + 1) = v24;
  *&v56 = v38;
  v29 = *v58;
  *(&v56 + 1) = v37;
  v57 = *v58;
  v30 = v48;
  *(v48 + 96) = *v58;
  v31 = v56;
  v30[4] = v55;
  v30[5] = v31;
  v32 = v52;
  *v30 = v51;
  v30[1] = v32;
  v33 = v54;
  v30[2] = v53;
  v30[3] = v33;
  sub_1DB0423AC(&v51, v58);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v58 = v44;
  *&v58[16] = v26;
  v59 = v25;
  v60 = v27;
  v61 = v28;
  v62 = v42;
  v63 = v36;
  v64 = v24;
  v65 = v38;
  v66 = v37;
  v67 = v29;
  return sub_1DB0423E4(v58);
}

uint64_t ProfileSetObject.ProfileBagSet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F640, &qword_1DB0B2DA0);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[5];
  v34 = v1[4];
  v35 = v10;
  v13 = v1[7];
  v32 = v1[6];
  v33 = v12;
  v14 = v1[9];
  v30 = v1[8];
  v31 = v13;
  v16 = v1[10];
  v15 = v1[11];
  v27 = v14;
  v28 = v16;
  v29 = v15;
  v26 = v1[12];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB042284(v9, v8, v11);
  sub_1DB0422C4();
  sub_1DB09E434();
  v38 = v9;
  v39 = v8;
  v40 = v11;
  v18 = v3;
  v41 = 0;
  sub_1DB042414();
  v19 = v36;
  sub_1DB09E144();
  if (v19)
  {
    sub_1DB04236C(v38, v39, v40);
    return (*(v37 + 8))(v7, v3);
  }

  else
  {
    v22 = v30;
    v21 = v31;
    v23 = v32;
    v24 = v37;
    sub_1DB04236C(v38, v39, v40);
    v38 = v35;
    v39 = v34;
    v40 = v33;
    v41 = 1;
    sub_1DB042284(v35, v34, v33);
    sub_1DB09E144();
    sub_1DB04236C(v38, v39, v40);
    v38 = v23;
    v39 = v21;
    v40 = v22;
    v41 = 2;
    sub_1DB042284(v23, v21, v22);
    sub_1DB09E144();
    sub_1DB04236C(v38, v39, v40);
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = 3;
    sub_1DB042284(v27, v28, v29);
    sub_1DB09E144();
    sub_1DB04236C(v38, v39, v40);
    v38 = v26;
    v41 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F628, &qword_1DB0B2D98);
    sub_1DB042468(&qword_1ECC0F650, sub_1DAFEA608);
    sub_1DB09E194();
    return (*(v24 + 8))(v7, v18);
  }
}

uint64_t sub_1DB035068()
{
  sub_1DAF40780(*(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 240);
  v6[6] = *(v0 + 224);
  v6[7] = v1;
  v7 = *(v0 + 256);
  v2 = *(v0 + 176);
  v6[2] = *(v0 + 160);
  v6[3] = v2;
  v3 = *(v0 + 208);
  v6[4] = *(v0 + 192);
  v6[5] = v3;
  v4 = *(v0 + 144);
  v6[0] = *(v0 + 128);
  v6[1] = v4;
  sub_1DAF40AEC(v6, &qword_1ECC0F680, &qword_1DB0B2DC0);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t ProfileSetObject.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProfileSetObject.assessmentConfigID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ProfileSetObject.profileBagSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v13 = *(v1 + 112);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 144);
  v4 = v15;
  v5 = *(v1 + 64);
  v10[0] = *(v1 + 48);
  v10[1] = v5;
  v6 = *(v1 + 96);
  v11 = *(v1 + 80);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1DB0423AC(v10, v9);
}

uint64_t ProfileSetObject.profileBagSetId.getter()
{
  v1 = *(v0 + 168);
  sub_1DAF40674(v1, *(v0 + 176));
  return v1;
}

uint64_t sub_1DB0351E0()
{
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB0352F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB04875C();
  *a2 = result;
  return result;
}

void sub_1DB035328(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEF64497465536761;
  v6 = 0x42656C69666F7270;
  v7 = 0xED00007465536761;
  v8 = 0x42656C69666F7270;
  if (v2 != 4)
  {
    v8 = 0x49656C69666F7270;
    v7 = 0xEB000000006F666ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DB0C1F20;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DB0C1F00;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DB035408()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x42656C69666F7270;
  v4 = 0x42656C69666F7270;
  if (v1 != 4)
  {
    v4 = 0x49656C69666F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB0354E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB04875C();
  *a1 = result;
  return result;
}

uint64_t sub_1DB03550C(uint64_t a1)
{
  v2 = sub_1DB0424E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB035548(uint64_t a1)
{
  v2 = sub_1DB0424E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProfileSetObject.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v76 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v77 = &v62 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F658, &qword_1DB0B2DA8);
  v78 = *(v18 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v62 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB0424E0();
  v24 = v129;
  sub_1DB09E414();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v74 = v17;
  v129 = a1;
  LOBYTE(v81) = 2;
  v25 = sub_1DAFEA408();
  sub_1DB09E0C4();
  v26 = v22;
  v73 = v18;
  v28 = v74;
  v70 = v94;
  v71 = v93;
  Data.uuid.getter(v93, v94, v74);
  sub_1DAF40A84(v28, v14, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v29 = sub_1DB09D1D4();
  v30 = *(v29 - 8);
  v67 = *(v30 + 48);
  v68 = v30 + 48;
  v31 = v67(v14, 1, v29);
  v69 = v29;
  v66 = v30;
  if (v31 == 1)
  {
    v65 = 0x676E697373696D2DLL;
    sub_1DAF40AEC(v14, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v72 = 0xEC0000002D64692DLL;
  }

  else
  {
    sub_1DB09D174();
    v28 = v74;
    (*(v30 + 8))(v14, v29);
    v65 = sub_1DB09D754();
    v72 = v32;
  }

  sub_1DAF40780(v71, v70);
  sub_1DAF40AEC(v28, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  LOBYTE(v81) = 3;
  sub_1DB09E0C4();
  v74 = 0;
  v33 = v26;
  v34 = v93;
  v71 = v94;
  LOBYTE(v81) = 5;
  sub_1DB09E0C4();
  v70 = v93;
  v64 = v94;
  LOBYTE(v81) = 0;
  sub_1DB09E0C4();
  v62 = v25;
  v63 = v33;
  v35 = v93;
  v36 = v94;
  v37 = v77;
  Data.uuid.getter(v93, v94, v77);
  v38 = v76;
  sub_1DAF40A84(v37, v76, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v39 = v69;
  if (v67(v38, 1, v69) == 1)
  {
    v69 = 0x676E697373696D2DLL;
    sub_1DAF40AEC(v38, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    v40 = 0xEC0000002D64692DLL;
  }

  else
  {
    sub_1DB09D174();
    (*(v66 + 8))(v38, v39);
    v69 = sub_1DB09D754();
    v40 = v41;
    v37 = v77;
  }

  sub_1DAF40780(v35, v36);
  sub_1DAF40AEC(v37, &qword_1ECC0F5D8, &qword_1DB0B2D70);
  v114 = 4;
  sub_1DB042534();
  v42 = v73;
  v43 = v63;
  sub_1DB09E0C4();
  v126 = v119;
  v127 = v120;
  v128 = v121;
  v122 = v115;
  v123 = v116;
  v124 = v117;
  v125 = v118;
  v111 = 1;
  sub_1DB09E0C4();
  v44 = v113;
  v76 = v113;
  v77 = v112;
  type metadata accessor for ProfileSetObject.SingleValidatedConfigProvider();
  v45 = swift_allocObject();
  sub_1DAF40674(v77, v44);
  swift_defaultActor_initialize();
  (*(v78 + 8))(v43, v42);
  sub_1DB04210C(v79);
  v46 = v79[7];
  *(v45 + 224) = v79[6];
  *(v45 + 240) = v46;
  *(v45 + 256) = v80;
  v47 = v79[3];
  *(v45 + 160) = v79[2];
  *(v45 + 176) = v47;
  v48 = v79[5];
  *(v45 + 192) = v79[4];
  *(v45 + 208) = v48;
  v49 = v79[1];
  *(v45 + 128) = v79[0];
  *(v45 + 144) = v49;
  v50 = v76;
  v51 = v77;
  *(v45 + 112) = v77;
  *(v45 + 120) = v50;
  v74 = v45;
  v52 = v65;
  v53 = v72;
  *&v81 = v65;
  *(&v81 + 1) = v72;
  *&v82 = v69;
  *(&v82 + 1) = v40;
  *&v83 = v51;
  *(&v83 + 1) = v50;
  v88 = v126;
  v89 = v127;
  v84 = v122;
  v85 = v123;
  v86 = v124;
  v87 = v125;
  v54 = v71;
  *&v90 = v128;
  *(&v90 + 1) = v70;
  *&v91 = v64;
  *(&v91 + 1) = v34;
  *&v92 = v71;
  *(&v92 + 1) = v45;
  v55 = v122;
  v56 = v75;
  v75[2] = v83;
  v56[3] = v55;
  v57 = v82;
  *v56 = v81;
  v56[1] = v57;
  v58 = v88;
  v56[6] = v87;
  v56[7] = v58;
  v59 = v86;
  v56[4] = v85;
  v56[5] = v59;
  v60 = v92;
  v56[10] = v91;
  v56[11] = v60;
  v61 = v90;
  v56[8] = v89;
  v56[9] = v61;
  sub_1DB0425AC(&v81, &v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  v93 = v52;
  v94 = v53;
  v95 = v69;
  v96 = v40;
  v97 = v77;
  v98 = v76;
  v103 = v126;
  v104 = v127;
  v99 = v122;
  v100 = v123;
  v101 = v124;
  v102 = v125;
  v105 = v128;
  v106 = v70;
  v107 = v64;
  v108 = v34;
  v109 = v54;
  v110 = v74;
  return sub_1DB008688(&v93);
}

uint64_t ProfileSetObject.encode(to:)(void *a1)
{
  v71 = a1;
  v98 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F670, &qword_1DB0B2DB0);
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v73 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F5D8, &qword_1DB0B2D70);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v64 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v76 = v1[3];
  v77 = v17;
  v18 = v1[4];
  v69 = v1[5];
  v70 = v18;
  v19 = *(v1 + 8);
  v95 = *(v1 + 7);
  v96 = v19;
  v20 = v1[19];
  v97 = v1[18];
  v21 = *(v1 + 4);
  v91 = *(v1 + 3);
  v92 = v21;
  v22 = *(v1 + 6);
  v93 = *(v1 + 5);
  v94 = v22;
  v23 = v1[21];
  v66 = v1[20];
  v67 = v20;
  v68 = v23;
  v24 = v1[22];
  sub_1DB09D164();
  v25 = sub_1DB09D1D4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v14, 1, v25) == 1)
  {
    sub_1DAF40AEC(v14, &qword_1ECC0F5D8, &qword_1DB0B2D70);
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v28 = MEMORY[0x1E69E7CC0];
    v29 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v29 + 16))
    {
      v30 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v31)
      {
        sub_1DAF409DC(*(v29 + 56) + 32 * v30, &v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v28 = *&v82[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DAF72EC0(0, *(v28 + 2) + 1, 1, v28);
    }

    v33 = *(v28 + 2);
    v32 = *(v28 + 3);
    if (v33 >= v32 >> 1)
    {
      v28 = sub_1DAF72EC0((v32 > 1), v33 + 1, 1, v28);
    }

    *(v28 + 2) = v33 + 1;
    v34 = &v28[56 * v33];
    *(v34 + 4) = 0;
    *(v34 + 5) = 0xE000000000000000;
    *(v34 + 6) = 0xD000000000000023;
    *(v34 + 7) = 0x80000001DB0CA830;
    *(v34 + 8) = 0x742865646F636E65;
    *(v34 + 9) = 0xEB00000000293A6FLL;
    *(v34 + 10) = 686;
    *(&v85 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v84 = v28;
    sub_1DAF40D20(&v84, v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v29;
    sub_1DAF3B11C(v82, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v37 = sub_1DB09D6B4();
    v38 = sub_1DB09D604();
    [v36 initWithDomain:v37 code:-2129 userInfo:v38];

    result = swift_willThrow();
  }

  else
  {
    v64 = v24;
    *&v84 = sub_1DB09D1B4();
    *(&v84 + 1) = v40;
    *&v65 = sub_1DAF48A04(&v84, &v85);
    *(&v65 + 1) = v41;
    v42 = *(v26 + 8);
    v42(v14, v25);
    sub_1DB09D164();
    if (v27(v11, 1, v25) == 1)
    {
      sub_1DAF40AEC(v11, &qword_1ECC0F5D8, &qword_1DB0B2D70);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v43 = MEMORY[0x1E69E7CC0];
      v44 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v44 + 16))
      {
        v45 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v46)
        {
          sub_1DAF409DC(*(v44 + 56) + 32 * v45, &v84);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v43 = *&v82[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DAF72EC0(0, *(v43 + 2) + 1, 1, v43);
      }

      v48 = *(v43 + 2);
      v47 = *(v43 + 3);
      if (v48 >= v47 >> 1)
      {
        v43 = sub_1DAF72EC0((v47 > 1), v48 + 1, 1, v43);
      }

      *(v43 + 2) = v48 + 1;
      v49 = &v43[56 * v48];
      *(v49 + 4) = 0;
      *(v49 + 5) = 0xE000000000000000;
      *(v49 + 6) = 0xD000000000000023;
      *(v49 + 7) = 0x80000001DB0CA830;
      *(v49 + 8) = 0x742865646F636E65;
      *(v49 + 9) = 0xEB00000000293A6FLL;
      *(v49 + 10) = 689;
      *(&v85 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v84 = v43;
      sub_1DAF40D20(&v84, v82);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v44;
      sub_1DAF3B11C(v82, 0x636F766E4949444FLL, 0xEE00736E6F697461, v50);
      v51 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v52 = sub_1DB09D6B4();
      v53 = sub_1DB09D604();
      [v51 initWithDomain:v52 code:-2129 userInfo:v53];

      swift_willThrow();
      result = sub_1DAF40780(v65, *(&v65 + 1));
    }

    else
    {
      *&v84 = sub_1DB09D1B4();
      *(&v84 + 1) = v54;
      v55 = sub_1DAF48A04(&v84, &v85);
      v57 = v56;
      v42(v11, v25);
      v58 = v71[4];
      __swift_project_boxed_opaque_existential_1(v71, v71[3]);
      sub_1DB0424E0();
      v59 = v73;
      sub_1DB09E434();
      *&v84 = v55;
      *(&v84 + 1) = v57;
      LOBYTE(v82[0]) = 0;
      sub_1DAFEA608();
      v60 = v75;
      v61 = v72;
      sub_1DB09E194();
      if (v61)
      {
        (*(v74 + 8))(v59, v60);
        sub_1DAF40780(v65, *(&v65 + 1));
        result = sub_1DAF40780(v55, v57);
      }

      else
      {
        v76 = v55;
        v77 = v57;
        v62 = v65;
        v84 = v65;
        LOBYTE(v82[0]) = 2;
        sub_1DB09E194();
        *&v84 = v70;
        *(&v84 + 1) = v69;
        LOBYTE(v82[0]) = 1;
        sub_1DAF40674(v70, v69);
        sub_1DB09E194();
        sub_1DAF40780(v84, *(&v84 + 1));
        *&v84 = v68;
        *(&v84 + 1) = v64;
        LOBYTE(v82[0]) = 3;
        sub_1DAF40674(v68, v64);
        sub_1DB09E194();
        sub_1DAF40780(v84, *(&v84 + 1));
        v88 = v95;
        v89 = v96;
        v90 = v97;
        v84 = v91;
        v85 = v92;
        v86 = v93;
        v87 = v94;
        v79 = 4;
        sub_1DB0423AC(&v91, v82);
        sub_1DB0425E4();
        sub_1DB09E194();
        v82[4] = v88;
        v82[5] = v89;
        v83 = v90;
        v82[0] = v84;
        v82[1] = v85;
        v82[2] = v86;
        v82[3] = v87;
        sub_1DB0423E4(v82);
        v80 = v67;
        v81 = v66;
        v78 = 5;
        sub_1DAF40674(v67, v66);
        sub_1DB09E194();
        sub_1DAF40780(v76, v77);
        sub_1DAF40780(v62, *(&v62 + 1));
        sub_1DAF40780(v80, v81);
        result = (*(v74 + 8))(v59, v60);
      }
    }
  }

  v63 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ProfileSetObject.profile(for:)@<X0>(unsigned __int8 *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_1DB09D1D4();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v51 = &v47 - v11;
  v12 = *a1;
  v47 = a2;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = v2[14];
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = v2[17];
      if (!v13)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v12)
  {
    v13 = v2[11];
    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v13 = v2[8];
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_4:
  v13 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v52 = *(v13 + 16);
  if (!v52)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v45 = v47;
    *v47 = v17;
    v45[1] = 0x2000000000000000;
    return result;
  }

  v14 = 0;
  v15 = (v49 + 32);
  v16 = (v13 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  v48 = v5;
  while (v14 < *(v13 + 16))
  {
    v19 = *(v16 - 1);
    v18 = *v16;
    v20 = *v16 >> 62;
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_14;
      }

      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      v23 = v21 - v22;
      if (__OFSUB__(v21, v22))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (!v20)
      {
        if (BYTE6(v18) == 16)
        {
          goto LABEL_28;
        }

        goto LABEL_14;
      }

      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_49;
      }

      v23 = HIDWORD(v19) - v19;
    }

    sub_1DAF40674(*(v16 - 1), *v16);
    if (v23 == 16)
    {
LABEL_28:
      v24 = v50;
      if (v20 != 2)
      {
        if (v20 == 1)
        {
          if (v19 > v19 >> 32)
          {
            goto LABEL_50;
          }

          v25 = sub_1DB09CD44();
          if (!v25)
          {
            goto LABEL_55;
          }

          v26 = v25;
          v27 = sub_1DB09CD74();
          if (__OFSUB__(v19, v27))
          {
            goto LABEL_52;
          }

          v28 = (v19 - v27 + v26);
          result = sub_1DB09CD64();
          if (!v28)
          {
            goto LABEL_56;
          }

LABEL_38:
          v34 = v28[7];
          v35 = v28[6];
          v36 = v28[5];
          v37 = v28[4];
          v38 = v28[3];
          v39 = v28[2];
          v40 = v28[1];
          v41 = *v28;
          v46 = *(v28 + 1);
          v24 = v50;
          sub_1DB09D1A4();
          v5 = v48;
        }

        else
        {
          sub_1DB09D1A4();
        }

        sub_1DAF40780(v19, v18);
        v42 = *v15;
        (*v15)(v51, v24, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1DAF733C4(0, *(v17 + 2) + 1, 1, v17);
        }

        v44 = *(v17 + 2);
        v43 = *(v17 + 3);
        if (v44 >= v43 >> 1)
        {
          v17 = sub_1DAF733C4(v43 > 1, v44 + 1, 1, v17);
        }

        *(v17 + 2) = v44 + 1;
        v42(&v17[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44], v51, v5);
        goto LABEL_15;
      }

      v30 = *(v19 + 16);
      v31 = sub_1DB09CD44();
      if (!v31)
      {
        goto LABEL_53;
      }

      v32 = v31;
      v33 = sub_1DB09CD74();
      if (__OFSUB__(v30, v33))
      {
        goto LABEL_51;
      }

      v28 = (v30 - v33 + v32);
      sub_1DB09CD64();
      if (!v28)
      {
        goto LABEL_54;
      }

      goto LABEL_38;
    }

LABEL_14:
    sub_1DAF40780(v19, v18);
LABEL_15:
    ++v14;
    v16 += 2;
    if (v52 == v14)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_1DB09CD64();
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1DB09CD64();
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}