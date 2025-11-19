void PinnedContentStore.init(healthStore:domain:)(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_2512ED6D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider] = 0;
  *&v3[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_healthStore] = a1;
  v3[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain] = a2 & 1;
  v24.receiver = v3;
  v24.super_class = ObjectType;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v24, sel_init);
  v14 = v12;
  v15 = v13;
  sub_2512ED9F8();
  v16 = [objc_opt_self() interfaceWithProtocol_];
  v17 = _s09HealthAppA13DaemonSupport18PinnedContentStoreC15serverInterfaceSo14NSXPCInterfaceCvgZ_0();
  sub_2512ED6C8();
  v18 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v19 = sub_2512ED728();

  v20 = sub_2512ED6B8();
  v21 = [v18 initWithHealthStore:v14 taskIdentifier:v19 exportedObject:v15 exportedInterface:v16 remoteInterface:v17 taskUUID:v20];

  (*(v8 + 8))(v11, v7);
  v22 = *&v15[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  *&v15[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider] = v21;
  v23 = v21;

  if (v23)
  {
    [v23 setShouldRetryOnInterruption_];
  }

  else
  {
    __break(1u);
  }
}

id _s09HealthAppA13DaemonSupport18PinnedContentStoreC15serverInterfaceSo14NSXPCInterfaceCvgZ_0()
{
  v19 = [objc_opt_self() interfaceWithProtocol_];
  sub_2512E2B58();
  inited = swift_initStackObject();
  inited[4] = sub_2512E2BF8(0, &qword_280CF7418, 0x277CBEA60);
  inited[5] = sub_2512E2BF8(0, &qword_280CF73F0, 0x277CCACA8);
  inited[6] = type metadata accessor for CodablePinnedContentDifference();
  inited[7] = type metadata accessor for PinnedContentState();
  *&v23 = MEMORY[0x277D84F90];
  MEMORY[0x253070340]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    v1 = sub_2512ED7C8();
    MEMORY[0x253070340](v1);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2512ED7B8();
    }

    swift_getObjCClassFromMetadata();
    v2 = sub_2512ED7C8();
    MEMORY[0x253070340](v2);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2512ED7B8();
    }

    swift_getObjCClassFromMetadata();
    v3 = sub_2512ED7C8();
    MEMORY[0x253070340](v3);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2512ED7B8();
    }

    swift_getObjCClassFromMetadata();
    sub_2512ED7C8();
    v4 = v23;
    swift_setDeallocating();
    if (!(v4 >> 62))
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        break;
      }

      goto LABEL_10;
    }

    v5 = sub_2512ED938();
    if (!v5)
    {
      break;
    }

LABEL_10:
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84030];
    while ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x253070460](v6, v4);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      *&v23 = v10;
      if (swift_dynamicCast())
      {
        if (*(&v21 + 1))
        {
          v23 = v20;
          v24 = v21;
          v25 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2512E2CEC(0, *(v7 + 2) + 1, 1, v7);
          }

          v13 = *(v7 + 2);
          v12 = *(v7 + 3);
          if (v13 >= v12 >> 1)
          {
            v7 = sub_2512E2CEC((v12 > 1), v13 + 1, 1, v7);
          }

          *(v7 + 2) = v13 + 1;
          v14 = &v7[40 * v13];
          v15 = v23;
          v16 = v24;
          *(v14 + 8) = v25;
          *(v14 + 2) = v15;
          *(v14 + 3) = v16;
          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
      }

      sub_2512EB5E0(&v20, &qword_27F4294E8, v8);
LABEL_13:
      ++v6;
      if (v11 == v5)
      {
        goto LABEL_31;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v9 = *(v4 + 8 * v6 + 32);
    v10 = swift_unknownObjectRetain();
    v11 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_2512ED7B8();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_31:

  sub_2512E2E78(v7);

  v17 = sub_2512ED7E8();

  [v19 setClasses:v17 forSelector:sel_remote_applyDifferencesWithDifferences_inDomain_completion_ argumentIndex:0 ofReply:0];

  return v19;
}

unint64_t sub_2512E2B00()
{
  result = qword_280CF7400;
  if (!qword_280CF7400)
  {
    sub_2512E2BF8(255, &unk_280CF7408, 0x277D82BB8);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280CF7400);
  }

  return result;
}

void sub_2512E2B58()
{
  v0 = sub_2512E2B00();
  if (swift_isClassType() && v0)
  {
    sub_2512E2E24(0, &qword_27F4294F8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  }

  else
  {
    sub_2512E2C40(0, &unk_280CF73E0, sub_2512E2B00, MEMORY[0x277D84560]);
  }
}

uint64_t sub_2512E2BF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2512E2C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_2512E2CEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2512E2E24(0, &qword_280CF73D8, MEMORY[0x277D84030], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2512E2E24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2512E2E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530703A0](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_2512E2F04(v4, v5);
      sub_2512E2F60(v6, v5);
      sub_2512E30AC(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2512E2F60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_2512ED848();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_2512E2F04(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x253070400](v18, a2);
      sub_2512E30AC(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_2512E30AC(a2);
    sub_2512E2F04(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2512E2F04(a2, v18);
    v17 = *v3;
    sub_2512E3100(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_2512E3100(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2512EA7C0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2512EAA14();
      goto LABEL_12;
    }

    sub_2512EAB80(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_2512ED848();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_2512E2F04(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x253070400](v20, v6);
      result = sub_2512E30AC(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2512ED978();
  __break(1u);
  return result;
}

unint64_t sub_2512E32C4()
{
  result = qword_280CF7350;
  if (!qword_280CF7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7350);
  }

  return result;
}

uint64_t sub_2512E331C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2512E3354()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2512E338C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2512E33D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2512E3424()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2512E346C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2512E34BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2512E34F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2512E352C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2512E3574()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2512E35D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2512E361C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2512E36FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HAHDCodablePinnedContentDifference_index;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2512E3758(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___HAHDCodablePinnedContentDifference_index;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_2512E37B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id PinnedContentState.__allocating_init(shouldRespectOrder:identifiers:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___HAHDPinnedContentState_shouldRespectOrder] = a1;
  *&v5[OBJC_IVAR___HAHDPinnedContentState_identifiers] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PinnedContentState.init(shouldRespectOrder:identifiers:)(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___HAHDPinnedContentState_shouldRespectOrder] = a1;
  *&v2[OBJC_IVAR___HAHDPinnedContentState_identifiers] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall PinnedContentState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___HAHDPinnedContentState_shouldRespectOrder);
  v4 = sub_2512ED728();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___HAHDPinnedContentState_identifiers);
  v6 = *(v5 + 16);
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2512ED8F8();
    v7 = (v5 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);

      v11 = sub_2512ED728();

      [v10 initWithString_];

      sub_2512ED8D8();
      v12 = *(v15 + 16);
      sub_2512ED908();
      sub_2512ED918();
      sub_2512ED8E8();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  sub_2512E3CD4();
  v13 = sub_2512ED7A8();

  v14 = sub_2512ED728();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id PinnedContentState.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2512E3D20(a1);

  return v4;
}

id PinnedContentState.init(coder:)(void *a1)
{
  v2 = sub_2512E3D20(a1);

  return v2;
}

id PinnedContentState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PinnedContentState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2512E3CD4()
{
  result = qword_280CF73F0;
  if (!qword_280CF73F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CF73F0);
  }

  return result;
}

id sub_2512E3D20(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2512ED728();
  v6 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___HAHDPinnedContentState_shouldRespectOrder) = v6;
  sub_2512E3CD4();
  v7 = sub_2512ED828();
  if (v7)
  {
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = ObjectType;
    for (i = v2; v10; i = v2)
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      while ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253070460](v11, v8);
        v2 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_18;
        }

LABEL_8:
        ObjectType = v10;
        v14 = sub_2512ED748();
        v16 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2512EA69C(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = sub_2512EA69C((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v19 = &v12[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        ++v11;
        v10 = ObjectType;
        if (v2 == ObjectType)
        {
          goto LABEL_22;
        }
      }

      if (v11 >= *(v9 + 16))
      {
        goto LABEL_19;
      }

      v13 = *(v8 + 8 * v11 + 32);
      v2 = (v11 + 1);
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v10 = sub_2512ED938();
      v21 = ObjectType;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_22:

    ObjectType = v21;
    v2 = i;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *(v2 + OBJC_IVAR___HAHDPinnedContentState_identifiers) = v12;
  v23.receiver = v2;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_2512E40FC()
{
  v0 = sub_2512ED708();
  __swift_allocate_value_buffer(v0, qword_280CF7428);
  __swift_project_value_buffer(v0, qword_280CF7428);
  return sub_2512ED6F8();
}

uint64_t static Logger.pinnedContent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CF7420 != -1)
  {
    swift_once();
  }

  v2 = sub_2512ED708();
  v3 = __swift_project_value_buffer(v2, qword_280CF7428);
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

id static PinnedContentStore.clientInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

void PinnedContentStore.fetchPinnedContent(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider;
  v8 = *&v3[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (v8)
  {
    v9 = ObjectType;
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a1;
    v10[4] = a2;
    v10[5] = v9;
    v28 = sub_2512EADA0;
    v29 = v10;
    v24 = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_2512E4654;
    v27 = &block_descriptor;
    v11 = _Block_copy(&v24);
    v12 = v3;

    v13 = v8;

    v14 = [v13 clientQueueObjectHandlerWithCompletion_];
    _Block_release(v11);

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = *&v3[v7];
    if (v16)
    {
      v17 = v15;
      v18 = swift_allocObject();
      v18[2] = v12;
      v18[3] = sub_2512EADE0;
      v18[4] = v17;
      v18[5] = v9;
      v28 = sub_2512EADE8;
      v29 = v18;
      v24 = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_2512E4CD0;
      v27 = &block_descriptor_9;
      v19 = _Block_copy(&v24);
      v20 = v12;
      v21 = v16;

      v22 = swift_allocObject();
      *(v22 + 16) = sub_2512EADE0;
      *(v22 + 24) = v17;
      v28 = sub_2512EB804;
      v29 = v22;
      v24 = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_2512E4D40;
      v27 = &block_descriptor_15;
      v23 = _Block_copy(&v24);

      [v21 fetchProxyWithHandler:v19 errorHandler:v23];
      _Block_release(v23);
      _Block_release(v19);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2512E4654(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_2512EB484(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_2512EB5E0(v11, &qword_27F4294C8, MEMORY[0x277D84F70] + 8);
}

void sub_2512E4708(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2512EB494(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_2512ED958();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_2512ED6A8();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

void sub_2512E486C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v8 = v27;
    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v9 = sub_2512ED728();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v25 = sub_2512EB758;
    v26 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2512E4C44;
    v24 = &block_descriptor_302;
    v11 = _Block_copy(&aBlock);

    [v8 remote:v9 fetchPinnedContentInDomain:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v22 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v22 = 0xE100000000000000;
    v12 = sub_2512ED9F8();
    MEMORY[0x253070320](v12);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v13 = ".pinnedContent.summary";
    }

    else
    {
      v13 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v13 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v14 = a1[3];
    v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    (*(v18 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = sub_2512ED758();
    MEMORY[0x253070320](v19);

    sub_2512ED928();
    __break(1u);
  }
}

uint64_t sub_2512E4BAC(void *a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    v9 = type metadata accessor for PinnedContentState();
    *&v8 = a1;
    sub_2512EB484(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a1;
  a3(v10, a2);
  return sub_2512EB5E0(v10, &qword_27F4294C8, MEMORY[0x277D84F70] + 8);
}

void sub_2512E4C44(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2512E4CD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_2512E4D40(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t PinnedContentStore.fetchPinnedContent()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v17 = (v3 + 16);
  result = swift_allocObject();
  *(result + 16) = 0;
  v16 = (result + 16);
  v5 = *&v0[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = result;
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2512EADF4;
  *(v8 + 24) = v7;
  v22 = sub_2512EAE00;
  v23 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2512E5420;
  v21 = &block_descriptor_30;
  v9 = _Block_copy(&aBlock);
  v10 = v1;

  v11 = v5;

  v22 = sub_2512EB808;
  v23 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2512E4D40;
  v21 = &block_descriptor_33;
  v12 = _Block_copy(&aBlock);

  [v11 getSynchronousProxyWithHandler:v9 errorHandler:v12];

  _Block_release(v12);
  _Block_release(v9);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*v17)
  {
    v13 = *v17;

    return v13;
  }

  else
  {
    swift_beginAccess();
    v14 = *v16;
    if (!*v16)
    {
      sub_2512EAE28();
      swift_allocError();
    }

    swift_willThrow();
    v15 = v14;
  }
}

void sub_2512E50D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v8 = v27;
    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v9 = sub_2512ED728();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v25 = sub_2512EB754;
    v26 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2512E4C44;
    v24 = &block_descriptor_295;
    v11 = _Block_copy(&aBlock);

    [v8 remote:v9 fetchPinnedContentInDomain:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v22 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v22 = 0xE100000000000000;
    v12 = sub_2512ED9F8();
    MEMORY[0x253070320](v12);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v13 = ".pinnedContent.summary";
    }

    else
    {
      v13 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v13 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v14 = a1[3];
    v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    (*(v18 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = sub_2512ED758();
    MEMORY[0x253070320](v19);

    sub_2512ED928();
    __break(1u);
  }
}

uint64_t sub_2512E5420(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;
  swift_unknownObjectRetain();
  v4(v6);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void PinnedContentStore.applyDifferences(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider;
  v10 = *&v4[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (v10)
  {
    v11 = ObjectType;
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = v11;
    v30 = sub_2512EB74C;
    v31 = v12;
    v26 = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_2512E4654;
    v29 = &block_descriptor_39;
    v13 = _Block_copy(&v26);
    v14 = v4;

    v15 = v10;

    v16 = [v15 clientQueueObjectHandlerWithCompletion_];
    _Block_release(v13);

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v18 = *&v4[v9];
    if (v18)
    {
      v19 = v17;
      v20 = swift_allocObject();
      v20[2] = v14;
      v20[3] = a1;
      v20[4] = sub_2512EB75C;
      v20[5] = v19;
      v20[6] = v11;
      v30 = sub_2512EAE7C;
      v31 = v20;
      v26 = MEMORY[0x277D85DD0];
      v27 = 1107296256;
      v28 = sub_2512E4CD0;
      v29 = &block_descriptor_49;
      v21 = _Block_copy(&v26);
      v22 = v14;
      v23 = v18;

      v24 = swift_allocObject();
      *(v24 + 16) = sub_2512EB75C;
      *(v24 + 24) = v19;
      v30 = sub_2512EB804;
      v31 = v24;
      v26 = MEMORY[0x277D85DD0];
      v27 = 1107296256;
      v28 = sub_2512E4D40;
      v29 = &block_descriptor_55;
      v25 = _Block_copy(&v26);

      [v23 fetchProxyWithHandler:v21 errorHandler:v25];
      _Block_release(v25);
      _Block_release(v21);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2512E575C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v10 = v56;
    v11 = *(a3 + 16);
    if (v11)
    {
      v44 = a4;
      v45 = v56;
      v46 = a2;
      v47 = a5;
      aBlock = MEMORY[0x277D84F90];
      sub_2512ED8F8();
      v12 = (a3 + 56);
      v13 = &OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier;
      v14 = 0x2796B4000uLL;
      do
      {
        v23 = *(v12 - 3);
        v22 = *(v12 - 2);
        if (*v12 == 1)
        {
          v24 = v14;
          v25 = v13;
          v26 = *(v12 - 1);
          v27 = type metadata accessor for CodablePinnedContentDifference();
          v28 = objc_allocWithZone(v27);
          v29 = &v28[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
          *v29 = 0;
          v29[8] = 1;
          swift_beginAccess();
          *v29 = v26;
          v13 = v25;
          v14 = v24;
          v29[8] = 0;
          v30 = &v28[*v13];
          *v30 = v23;
          *(v30 + 1) = v22;
          v48[0] = v28;
          v48[1] = v27;
          v19 = v48;
        }

        else
        {
          v15 = type metadata accessor for CodablePinnedContentDifference();
          v16 = objc_allocWithZone(v15);
          v17 = &v16[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
          *v17 = 0;
          v17[8] = 1;
          swift_beginAccess();
          *v17 = 0;
          v17[8] = 1;
          v18 = &v16[*v13];
          *v18 = v23;
          *(v18 + 1) = v22;
          v55[0] = v16;
          v55[1] = v15;
          v19 = v55;
        }

        v20 = *(v14 + 3192);

        objc_msgSendSuper2(v19, v20);
        sub_2512ED8D8();
        v21 = *(aBlock + 16);
        sub_2512ED908();
        sub_2512ED918();
        sub_2512ED8E8();
        v12 += 32;
        --v11;
      }

      while (v11);
      a2 = v46;
      a5 = v47;
      a4 = v44;
      v10 = v45;
    }

    type metadata accessor for CodablePinnedContentDifference();
    v31 = sub_2512ED7A8();

    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v32 = sub_2512ED728();

    v33 = swift_allocObject();
    *(v33 + 16) = a4;
    *(v33 + 24) = a5;
    v53 = sub_2512EB758;
    v54 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_2512E4C44;
    v52 = &block_descriptor_289;
    v34 = _Block_copy(&aBlock);

    [v10 remote:v31 applyDifferencesWithDifferences:v32 inDomain:v34 completion:?];
    _Block_release(v34);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v50 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v50 = 0xE100000000000000;
    v35 = sub_2512ED9F8();
    MEMORY[0x253070320](v35);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v36 = ".pinnedContent.summary";
    }

    else
    {
      v36 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v36 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v37 = a1[3];
    v38 = __swift_project_boxed_opaque_existential_0(a1, v37);
    v39 = *(*(v37 - 8) + 64);
    MEMORY[0x28223BE20](v38, v38);
    (*(v41 + 16))(&v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = sub_2512ED758();
    MEMORY[0x253070320](v42);

    sub_2512ED928();
    __break(1u);
  }
}

uint64_t PinnedContentStore.applyDifferences(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v18 = (v4 + 16);
  result = swift_allocObject();
  *(result + 16) = 0;
  v17 = (result + 16);
  v19 = *&v1[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (!v19)
  {
    goto LABEL_10;
  }

  v6 = result;
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = a1;
  v7[4] = v4;
  v7[5] = v6;
  v7[6] = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2512EAE94;
  *(v8 + 24) = v7;
  v24 = sub_2512EB810;
  v25 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2512E5420;
  v23 = &block_descriptor_67;
  v9 = _Block_copy(&aBlock);
  v10 = v1;

  v11 = v19;

  v24 = sub_2512EB808;
  v25 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2512E4D40;
  v23 = &block_descriptor_70;
  v12 = _Block_copy(&aBlock);

  [v11 getSynchronousProxyWithHandler:v9 errorHandler:v12];

  _Block_release(v12);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*v18)
  {
    v13 = *v18;

    return v13;
  }

  else
  {
    swift_beginAccess();
    v14 = *v17;
    if (*v17)
    {
      v15 = *v17;
    }

    else
    {
      sub_2512EAE28();
      swift_allocError();
    }

    swift_willThrow();
    v16 = v14;
  }
}

void sub_2512E5F98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v10 = v56;
    v11 = *(a3 + 16);
    if (v11)
    {
      v44 = v56;
      v45 = a2;
      v46 = a4;
      v47 = a5;
      aBlock = MEMORY[0x277D84F90];
      sub_2512ED8F8();
      v12 = (a3 + 56);
      v13 = &OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier;
      v14 = 0x2796B4000uLL;
      do
      {
        v23 = *(v12 - 3);
        v22 = *(v12 - 2);
        if (*v12 == 1)
        {
          v24 = v14;
          v25 = v13;
          v26 = *(v12 - 1);
          v27 = type metadata accessor for CodablePinnedContentDifference();
          v28 = objc_allocWithZone(v27);
          v29 = &v28[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
          *v29 = 0;
          v29[8] = 1;
          swift_beginAccess();
          *v29 = v26;
          v13 = v25;
          v14 = v24;
          v29[8] = 0;
          v30 = &v28[*v13];
          *v30 = v23;
          *(v30 + 1) = v22;
          v48[0] = v28;
          v48[1] = v27;
          v19 = v48;
        }

        else
        {
          v15 = type metadata accessor for CodablePinnedContentDifference();
          v16 = objc_allocWithZone(v15);
          v17 = &v16[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
          *v17 = 0;
          v17[8] = 1;
          swift_beginAccess();
          *v17 = 0;
          v17[8] = 1;
          v18 = &v16[*v13];
          *v18 = v23;
          *(v18 + 1) = v22;
          v55[0] = v16;
          v55[1] = v15;
          v19 = v55;
        }

        v20 = *(v14 + 3192);

        objc_msgSendSuper2(v19, v20);
        sub_2512ED8D8();
        v21 = *(aBlock + 16);
        sub_2512ED908();
        sub_2512ED918();
        sub_2512ED8E8();
        v12 += 32;
        --v11;
      }

      while (v11);
      a4 = v46;
      a5 = v47;
      v10 = v44;
      a2 = v45;
    }

    type metadata accessor for CodablePinnedContentDifference();
    v31 = sub_2512ED7A8();

    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v32 = sub_2512ED728();

    v33 = swift_allocObject();
    *(v33 + 16) = a4;
    *(v33 + 24) = a5;
    v53 = sub_2512EB754;
    v54 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_2512E4C44;
    v52 = &block_descriptor_282;
    v34 = _Block_copy(&aBlock);

    [v10 remote:v31 applyDifferencesWithDifferences:v32 inDomain:v34 completion:?];
    _Block_release(v34);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v50 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v50 = 0xE100000000000000;
    v35 = sub_2512ED9F8();
    MEMORY[0x253070320](v35);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v36 = ".pinnedContent.summary";
    }

    else
    {
      v36 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v36 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v37 = a1[3];
    v38 = __swift_project_boxed_opaque_existential_0(a1, v37);
    v39 = *(*(v37 - 8) + 64);
    MEMORY[0x28223BE20](v38, v38);
    (*(v41 + 16))(&v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = sub_2512ED758();
    MEMORY[0x253070320](v42);

    sub_2512ED928();
    __break(1u);
  }
}

void PinnedContentStore.pinContentWithIdentifier(_:at:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider;
  v13 = *&v7[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (v13)
  {
    v14 = ObjectType;
    v15 = swift_allocObject();
    v15[2] = v7;
    v15[3] = a5;
    v15[4] = a6;
    v15[5] = v14;
    v36 = sub_2512EAEC4;
    v37 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_2512E4654;
    v35 = &block_descriptor_76;
    v16 = _Block_copy(&aBlock);
    v17 = v7;

    v18 = v13;

    v19 = [v18 clientQueueObjectHandlerWithCompletion_];
    _Block_release(v16);

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = *&v7[v12];
    if (v21)
    {
      v22 = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = v17;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = a3;
      *(v23 + 48) = a4 & 1;
      *(v23 + 56) = sub_2512EB75C;
      *(v23 + 64) = v22;
      *(v23 + 72) = v14;
      v36 = sub_2512EAEEC;
      v37 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_2512E4CD0;
      v35 = &block_descriptor_86;
      v24 = _Block_copy(&aBlock);
      v25 = v17;
      v26 = v21;

      v27 = swift_allocObject();
      *(v27 + 16) = sub_2512EB75C;
      *(v27 + 24) = v22;
      v36 = sub_2512EAF04;
      v37 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_2512E4D40;
      v35 = &block_descriptor_92;
      v28 = _Block_copy(&aBlock);

      [v26 fetchProxyWithHandler:v24 errorHandler:v28];
      _Block_release(v28);
      _Block_release(v24);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2512E6794(uint64_t a1, void *a2, void *a3, void (*a4)(id, void), uint64_t a5, uint64_t a6, char *a7)
{
  sub_2512EB494(a1, v40);
  if (v41)
  {
    type metadata accessor for PinnedContentState();
    if (swift_dynamicCast())
    {
      v12 = v38[0];
      a4(v38[0], 0);

      return;
    }
  }

  else
  {
    sub_2512EB5E0(v40, &qword_27F4294C8, MEMORY[0x277D84F70] + 8);
  }

  if (qword_280CF7420 != -1)
  {
    swift_once();
  }

  v13 = sub_2512ED708();
  __swift_project_value_buffer(v13, qword_280CF7428);
  sub_2512EB494(a1, v40);
  v14 = a3;
  v15 = a2;
  v16 = sub_2512ED6E8();
  v17 = sub_2512ED808();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v39 = v19;
    *v18 = 136315906;
    v20 = sub_2512ED9F8();
    format = a7;
    v22 = sub_2512ECED0(v20, v21, &v39);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v37 = a4;
    if (*(v14 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v23 = ".pinnedContent.summary";
    }

    else
    {
      v23 = "shouldRespectOrder";
    }

    v24 = sub_2512ECED0(0xD000000000000026, v23 | 0x8000000000000000, &v39);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    sub_2512EB494(v40, v38);
    v25 = MEMORY[0x277D84F70];
    sub_2512E2E24(0, &qword_27F4294C8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    v26 = sub_2512ED758();
    v28 = v27;
    sub_2512EB5E0(v40, &qword_27F4294C8, v25 + 8);
    v29 = sub_2512ECED0(v26, v28, &v39);

    *(v18 + 24) = v29;
    *(v18 + 32) = 2080;
    v38[0] = a2;
    v30 = a2;
    sub_2512E2C40(0, &qword_27F4294D8, sub_2512EB53C, MEMORY[0x277D83D88]);
    v31 = sub_2512ED758();
    v33 = sub_2512ECED0(v31, v32, &v39);

    *(v18 + 34) = v33;
    _os_log_impl(&dword_2512E1000, v16, v17, format, v18, 0x2Au);
    a4 = v37;
    swift_arrayDestroy();
    MEMORY[0x253070A00](v19, -1, -1);
    MEMORY[0x253070A00](v18, -1, -1);

    v34 = a2;
    if (a2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_2512EB5E0(v40, &qword_27F4294C8, MEMORY[0x277D84F70] + 8);
  v34 = a2;
  if (!a2)
  {
LABEL_14:
    sub_2512EAE28();
    v34 = swift_allocError();
  }

LABEL_15:
  v35 = a2;
  a4(v34, 1);
}

void sub_2512E6B94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v13 = v34;
    v14 = sub_2512ED728();
    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v15 = sub_2512ED728();

    if (a6)
    {
      v16 = 0;
    }

    else
    {
      sub_2512E2BF8(0, &qword_27F4294D0, 0x277CCABB0);
      v16 = sub_2512ED838();
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a7;
    *(v17 + 24) = a8;
    v32 = sub_2512EB758;
    v33 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_2512E4C44;
    v31 = &block_descriptor_276;
    v18 = _Block_copy(&aBlock);

    [v13 remote:v14 pinContentWithIdentifier:v15 inDomain:v16 atIndex:v18 completion:?];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v29 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v29 = 0xE100000000000000;
    v19 = sub_2512ED9F8();
    MEMORY[0x253070320](v19);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v20 = ".pinnedContent.summary";
    }

    else
    {
      v20 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v20 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v21 = a1[3];
    v22 = __swift_project_boxed_opaque_existential_0(a1, v21);
    v23 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v22, v22);
    (*(v25 + 16))(&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = sub_2512ED758();
    MEMORY[0x253070320](v26);

    sub_2512ED928();
    __break(1u);
  }
}

uint64_t PinnedContentStore.pinContentWithIdentifier(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v25 = (v11 + 16);
  result = swift_allocObject();
  *(result + 16) = 0;
  v24 = (result + 16);
  v26 = *&v5[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (!v26)
  {
    goto LABEL_10;
  }

  v13 = result;
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4 & 1;
  *(v14 + 56) = v11;
  *(v14 + 64) = v13;
  *(v14 + 72) = ObjectType;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2512EAF64;
  *(v15 + 24) = v14;
  v31 = sub_2512EB810;
  v32 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2512E5420;
  v30 = &block_descriptor_104;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  v18 = v26;

  v31 = sub_2512EAFBC;
  v32 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2512E4D40;
  v30 = &block_descriptor_107;
  v19 = _Block_copy(&aBlock);

  [v18 getSynchronousProxyWithHandler:v16 errorHandler:v19];

  _Block_release(v19);
  _Block_release(v16);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*v25)
  {
    v20 = *v25;

    return v20;
  }

  else
  {
    swift_beginAccess();
    v21 = *v24;
    if (*v24)
    {
      v22 = *v24;
    }

    else
    {
      sub_2512EAE28();
      swift_allocError();
    }

    swift_willThrow();
    v23 = v21;
  }
}

void sub_2512E72A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v13 = v34;
    v14 = sub_2512ED728();
    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v15 = sub_2512ED728();

    if (a6)
    {
      v16 = 0;
    }

    else
    {
      sub_2512E2BF8(0, &qword_27F4294D0, 0x277CCABB0);
      v16 = sub_2512ED838();
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a7;
    *(v17 + 24) = a8;
    v32 = sub_2512EB520;
    v33 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_2512E4C44;
    v31 = &block_descriptor_269;
    v18 = _Block_copy(&aBlock);

    [v13 remote:v14 pinContentWithIdentifier:v15 inDomain:v16 atIndex:v18 completion:?];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v29 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v29 = 0xE100000000000000;
    v19 = sub_2512ED9F8();
    MEMORY[0x253070320](v19);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v20 = ".pinnedContent.summary";
    }

    else
    {
      v20 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v20 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v21 = a1[3];
    v22 = __swift_project_boxed_opaque_existential_0(a1, v21);
    v23 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v22, v22);
    (*(v25 + 16))(&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = sub_2512ED758();
    MEMORY[0x253070320](v26);

    sub_2512ED928();
    __break(1u);
  }
}

void PinnedContentStore.unpinContentWithIdentifier(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider;
  v10 = *&v4[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v29 = sub_2512EB750;
    v30 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_2512E4654;
    v28 = &block_descriptor_113;
    v12 = _Block_copy(&aBlock);

    v13 = v10;

    v14 = [v13 clientQueueObjectHandlerWithCompletion_];
    _Block_release(v12);

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = *&v4[v9];
    if (v16)
    {
      v17 = v15;
      v18 = swift_allocObject();
      v18[2] = v4;
      v18[3] = a1;
      v18[4] = a2;
      v18[5] = sub_2512EB75C;
      v18[6] = v17;
      v18[7] = ObjectType;
      v29 = sub_2512EAFD8;
      v30 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_2512E4CD0;
      v28 = &block_descriptor_123;
      v19 = _Block_copy(&aBlock);
      v20 = v16;
      v21 = v4;

      v22 = swift_allocObject();
      *(v22 + 16) = sub_2512EB75C;
      *(v22 + 24) = v17;
      v29 = sub_2512EB80C;
      v30 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_2512E4D40;
      v28 = &block_descriptor_129;
      v23 = _Block_copy(&aBlock);

      [v20 fetchProxyWithHandler:v19 errorHandler:v23];
      _Block_release(v23);
      _Block_release(v19);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2512E792C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2512EB32C(a1, aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v10 = v40;
    v11 = sub_2512ED728();
    a2[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain];
    v12 = sub_2512ED728();

    v13 = swift_allocObject();
    *(v13 + 16) = a5;
    *(v13 + 24) = a6;
    v38 = sub_2512EB758;
    v39 = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2512E4C44;
    v37 = &block_descriptor_263;
    v14 = _Block_copy(aBlock);

    [v10 remote:v11 unpinContentWithIdentifier:v12 inDomain:v14 completion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280CF7420 != -1)
    {
      swift_once();
    }

    v15 = sub_2512ED708();
    __swift_project_value_buffer(v15, qword_280CF7428);
    sub_2512EB32C(a1, aBlock);
    v16 = a2;
    v17 = sub_2512ED6E8();
    v18 = sub_2512ED808();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136315650;
      v21 = sub_2512ED9F8();
      v23 = sub_2512ECED0(v21, v22, &v40);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      if (v16[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain])
      {
        v24 = ".pinnedContent.summary";
      }

      else
      {
        v24 = "shouldRespectOrder";
      }

      v25 = sub_2512ECED0(0xD000000000000026, v24 | 0x8000000000000000, &v40);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2080;
      v26 = v37;
      v27 = __swift_project_boxed_opaque_existential_0(aBlock, v37);
      v28 = *(*(v26 - 1) + 64);
      MEMORY[0x28223BE20](v27, v27);
      (*(v30 + 16))(&aBlock[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = sub_2512ED758();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      v34 = sub_2512ECED0(v31, v33, &v40);

      *(v19 + 24) = v34;
      _os_log_impl(&dword_2512E1000, v17, v18, "[%s]_%s: Proxy is unrecognized type: %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253070A00](v20, -1, -1);
      MEMORY[0x253070A00](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }
  }
}

uint64_t PinnedContentStore.unpinContentWithIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v20 = (v6 + 16);
  result = swift_allocObject();
  *(result + 16) = 0;
  v19 = (result + 16);
  v21 = *&v2[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (!v21)
  {
    goto LABEL_10;
  }

  v8 = result;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v6;
  v9[6] = v8;
  v9[7] = ObjectType;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2512EAFF0;
  *(v10 + 24) = v9;
  v26 = sub_2512EB810;
  v27 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2512E5420;
  v25 = &block_descriptor_141;
  v11 = _Block_copy(&aBlock);
  v12 = v2;

  v13 = v21;

  v26 = sub_2512EB808;
  v27 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2512E4D40;
  v25 = &block_descriptor_144;
  v14 = _Block_copy(&aBlock);

  [v13 getSynchronousProxyWithHandler:v11 errorHandler:v14];

  _Block_release(v14);
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*v20)
  {
    v15 = *v20;

    return v15;
  }

  else
  {
    swift_beginAccess();
    v16 = *v19;
    if (*v19)
    {
      v17 = *v19;
    }

    else
    {
      sub_2512EAE28();
      swift_allocError();
    }

    swift_willThrow();
    v18 = v16;
  }
}

void sub_2512E80AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v10 = v30;
    v11 = sub_2512ED728();
    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v12 = sub_2512ED728();

    v13 = swift_allocObject();
    *(v13 + 16) = a5;
    *(v13 + 24) = a6;
    v28 = sub_2512EB754;
    v29 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_2512E4C44;
    v27 = &block_descriptor_256;
    v14 = _Block_copy(&aBlock);

    [v10 remote:v11 unpinContentWithIdentifier:v12 inDomain:v14 completion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v25 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v25 = 0xE100000000000000;
    v15 = sub_2512ED9F8();
    MEMORY[0x253070320](v15);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v16 = ".pinnedContent.summary";
    }

    else
    {
      v16 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v16 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v17 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_0(a1, v17);
    v19 = *(*(v17 - 8) + 64);
    MEMORY[0x28223BE20](v18, v18);
    (*(v21 + 16))(&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_2512ED758();
    MEMORY[0x253070320](v22);

    sub_2512ED928();
    __break(1u);
  }
}

void PinnedContentStore.movePinnedContentWithIdentifier(_:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider;
  v11 = *&v5[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;
    v31 = sub_2512EB020;
    v32 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_2512E4654;
    v30 = &block_descriptor_150;
    v13 = _Block_copy(&aBlock);

    v14 = v11;

    v15 = [v14 clientQueueObjectHandlerWithCompletion_];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = *&v5[v10];
    if (v17)
    {
      v18 = v16;
      v19 = swift_allocObject();
      v19[2] = v5;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = a3;
      v19[6] = sub_2512EB75C;
      v19[7] = v18;
      v19[8] = ObjectType;
      v31 = sub_2512EB03C;
      v32 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_2512E4CD0;
      v30 = &block_descriptor_160;
      v20 = _Block_copy(&aBlock);
      v21 = v17;
      v22 = v5;

      v23 = swift_allocObject();
      *(v23 + 16) = sub_2512EB75C;
      *(v23 + 24) = v18;
      v31 = sub_2512EB054;
      v32 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_2512E4D40;
      v30 = &block_descriptor_166;
      v24 = _Block_copy(&aBlock);

      [v21 fetchProxyWithHandler:v20 errorHandler:v24];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2512E86F4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2512EB32C(a1, aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v11 = v42;
    v12 = sub_2512ED728();
    a2[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain];
    v13 = sub_2512ED728();

    sub_2512E2BF8(0, &qword_27F4294D0, 0x277CCABB0);
    v14 = sub_2512ED838();
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v40 = sub_2512EB758;
    v41 = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2512E4C44;
    v39 = &block_descriptor_250;
    v16 = _Block_copy(aBlock);

    [v11 remote:v12 movePinnedContentWithIdentifier:v13 inDomain:v14 toIndex:v16 completion:?];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280CF7420 != -1)
    {
      swift_once();
    }

    v17 = sub_2512ED708();
    __swift_project_value_buffer(v17, qword_280CF7428);
    sub_2512EB32C(a1, aBlock);
    v18 = a2;
    v19 = sub_2512ED6E8();
    v20 = sub_2512ED808();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315650;
      v23 = sub_2512ED9F8();
      v25 = sub_2512ECED0(v23, v24, &v42);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      if (v18[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain])
      {
        v26 = ".pinnedContent.summary";
      }

      else
      {
        v26 = "shouldRespectOrder";
      }

      v27 = sub_2512ECED0(0xD000000000000026, v26 | 0x8000000000000000, &v42);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      v28 = v39;
      v29 = __swift_project_boxed_opaque_existential_0(aBlock, v39);
      v30 = *(*(v28 - 1) + 64);
      MEMORY[0x28223BE20](v29, v29);
      (*(v32 + 16))(&aBlock[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = sub_2512ED758();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      v36 = sub_2512ECED0(v33, v35, &v42);

      *(v21 + 24) = v36;
      _os_log_impl(&dword_2512E1000, v19, v20, "[%s]_%s: Proxy is unrecognized type: %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253070A00](v22, -1, -1);
      MEMORY[0x253070A00](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }
  }
}

uint64_t PinnedContentStore.movePinnedContentWithIdentifier(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v23 = (v9 + 16);
  result = swift_allocObject();
  *(result + 16) = 0;
  v22 = (result + 16);
  v24 = *&v4[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (!v24)
  {
    goto LABEL_10;
  }

  v11 = result;
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = v9;
  v12[7] = v11;
  v12[8] = ObjectType;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2512EB058;
  *(v13 + 24) = v12;
  v29 = sub_2512EB810;
  v30 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2512E5420;
  v28 = &block_descriptor_178;
  v14 = _Block_copy(&aBlock);
  v15 = v4;

  v16 = v24;

  v29 = sub_2512EB808;
  v30 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2512E4D40;
  v28 = &block_descriptor_181;
  v17 = _Block_copy(&aBlock);

  [v16 getSynchronousProxyWithHandler:v14 errorHandler:v17];

  _Block_release(v17);
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*v23)
  {
    v18 = *v23;

    return v18;
  }

  else
  {
    swift_beginAccess();
    v19 = *v22;
    if (*v22)
    {
      v20 = *v22;
    }

    else
    {
      sub_2512EAE28();
      swift_allocError();
    }

    swift_willThrow();
    v21 = v19;
  }
}

void sub_2512E8EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v11 = v32;
    v12 = sub_2512ED728();
    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v13 = sub_2512ED728();

    sub_2512E2BF8(0, &qword_27F4294D0, 0x277CCABB0);
    v14 = sub_2512ED838();
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v30 = sub_2512EB754;
    v31 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_2512E4C44;
    v29 = &block_descriptor_243;
    v16 = _Block_copy(&aBlock);

    [v11 remote:v12 movePinnedContentWithIdentifier:v13 inDomain:v14 toIndex:v16 completion:?];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v27 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v27 = 0xE100000000000000;
    v17 = sub_2512ED9F8();
    MEMORY[0x253070320](v17);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v18 = ".pinnedContent.summary";
    }

    else
    {
      v18 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v18 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v19 = a1[3];
    v20 = __swift_project_boxed_opaque_existential_0(a1, v19);
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v20, v20);
    (*(v23 + 16))(&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = sub_2512ED758();
    MEMORY[0x253070320](v24);

    sub_2512ED928();
    __break(1u);
  }
}

void PinnedContentStore.unpinAllContentInDomain(completion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider;
  v7 = *&v2[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (v7)
  {
    v8 = ObjectType;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v26 = sub_2512EB750;
    v27 = v9;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2512E4654;
    v25 = &block_descriptor_187;
    v10 = _Block_copy(&v22);

    v11 = v7;

    v12 = [v11 clientQueueObjectHandlerWithCompletion_];
    _Block_release(v10);

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = *&v2[v6];
    if (v14)
    {
      v15 = v13;
      v16 = swift_allocObject();
      v16[2] = v2;
      v16[3] = sub_2512EB75C;
      v16[4] = v15;
      v16[5] = v8;
      v26 = sub_2512EB0CC;
      v27 = v16;
      v22 = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_2512E4CD0;
      v25 = &block_descriptor_197;
      v17 = _Block_copy(&v22);
      v18 = v14;
      v19 = v2;

      v20 = swift_allocObject();
      *(v20 + 16) = sub_2512EB75C;
      *(v20 + 24) = v15;
      v26 = sub_2512EB80C;
      v27 = v20;
      v22 = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_2512E4D40;
      v25 = &block_descriptor_203;
      v21 = _Block_copy(&v22);

      [v18 fetchProxyWithHandler:v17 errorHandler:v21];
      _Block_release(v21);
      _Block_release(v17);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2512E9514(uint64_t a1, void *a2, void (*a3)(void *, uint64_t))
{
  sub_2512EB494(a1, v9);
  if (v10)
  {
    type metadata accessor for PinnedContentState();
    if (swift_dynamicCast())
    {
      v5 = v8;
      a3(v8, 0);

      return;
    }

    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2512EB5E0(v9, &qword_27F4294C8, MEMORY[0x277D84F70] + 8);
    if (!a2)
    {
LABEL_7:
      sub_2512EAE28();
      v6 = swift_allocError();
      goto LABEL_8;
    }
  }

  v6 = a2;
LABEL_8:
  v7 = a2;
  a3(v6, 1);
}

void sub_2512E961C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  sub_2512EB32C(a1, aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v8 = v37;
    a2[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain];
    v9 = sub_2512ED728();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v35 = sub_2512EB47C;
    v36 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2512E4C44;
    v34 = &block_descriptor_237;
    v11 = _Block_copy(aBlock);

    [v8 remote:v9 unpinAllContentInDomain:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280CF7420 != -1)
    {
      swift_once();
    }

    v12 = sub_2512ED708();
    __swift_project_value_buffer(v12, qword_280CF7428);
    sub_2512EB32C(a1, aBlock);
    v13 = a2;
    v14 = sub_2512ED6E8();
    v15 = sub_2512ED808();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315650;
      v18 = sub_2512ED9F8();
      v20 = sub_2512ECED0(v18, v19, &v37);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      if (v13[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain])
      {
        v21 = ".pinnedContent.summary";
      }

      else
      {
        v21 = "shouldRespectOrder";
      }

      v22 = sub_2512ECED0(0xD000000000000026, v21 | 0x8000000000000000, &v37);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      v23 = v34;
      v24 = __swift_project_boxed_opaque_existential_0(aBlock, v34);
      v25 = *(*(v23 - 1) + 64);
      MEMORY[0x28223BE20](v24, v24);
      (*(v27 + 16))(&aBlock[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = sub_2512ED758();
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      v31 = sub_2512ECED0(v28, v30, &v37);

      *(v16 + 24) = v31;
      _os_log_impl(&dword_2512E1000, v14, v15, "[%s]_%s: Proxy is unrecognized type: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253070A00](v17, -1, -1);
      MEMORY[0x253070A00](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }
  }
}

uint64_t PinnedContentStore.unpinAllContentInDomain()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v17 = (v3 + 16);
  result = swift_allocObject();
  *(result + 16) = 0;
  v16 = (result + 16);
  v5 = *&v0[OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_proxyProvider];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = result;
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2512EB184;
  *(v8 + 24) = v7;
  v22 = sub_2512EB810;
  v23 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2512E5420;
  v21 = &block_descriptor_215;
  v9 = _Block_copy(&aBlock);
  v10 = v1;

  v11 = v5;

  v22 = sub_2512EB808;
  v23 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2512E4D40;
  v21 = &block_descriptor_218;
  v12 = _Block_copy(&aBlock);

  [v11 getSynchronousProxyWithHandler:v9 errorHandler:v12];

  _Block_release(v12);
  _Block_release(v9);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*v17)
  {
    v13 = *v17;

    return v13;
  }

  else
  {
    swift_beginAccess();
    v14 = *v16;
    if (!*v16)
    {
      sub_2512EAE28();
      swift_allocError();
    }

    swift_willThrow();
    v15 = v14;
  }
}

void sub_2512E9D58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2512EB32C(a1, &aBlock);
  sub_2512EB388();
  if (swift_dynamicCast())
  {
    v8 = v27;
    *(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain);
    v9 = sub_2512ED728();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v25 = sub_2512EB754;
    v26 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2512E4C44;
    v24 = &block_descriptor_231;
    v11 = _Block_copy(&aBlock);

    [v8 remote:v9 unpinAllContentInDomain:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0;
    v22 = 0xE000000000000000;
    sub_2512ED8A8();

    aBlock = 91;
    v22 = 0xE100000000000000;
    v12 = sub_2512ED9F8();
    MEMORY[0x253070320](v12);

    MEMORY[0x253070320](24413, 0xE200000000000000);
    if (*(a2 + OBJC_IVAR____TtC28HealthAppHealthDaemonSupport18PinnedContentStore_domain))
    {
      v13 = ".pinnedContent.summary";
    }

    else
    {
      v13 = "shouldRespectOrder";
    }

    MEMORY[0x253070320](0xD000000000000026, v13 | 0x8000000000000000);

    MEMORY[0x253070320](0xD00000000000001ELL, 0x80000002512EE990);
    v14 = a1[3];
    v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    (*(v18 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = sub_2512ED758();
    MEMORY[0x253070320](v19);

    sub_2512ED928();
    __break(1u);
  }
}

void sub_2512EA0A0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;
}

id sub_2512EA134(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

NSXPCInterface_optional __swiftcall PinnedContentStore.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  v1 = v0;
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id PinnedContentStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PinnedContentStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PinnedContentStore.Failure.hashValue.getter()
{
  sub_2512ED9C8();
  MEMORY[0x253070580](0);
  return sub_2512ED9E8();
}

uint64_t sub_2512EA5E0()
{
  sub_2512ED9C8();
  MEMORY[0x253070580](0);
  return sub_2512ED9E8();
}

uint64_t sub_2512EA64C()
{
  sub_2512ED9C8();
  MEMORY[0x253070580](0);
  return sub_2512ED9E8();
}

char *sub_2512EA69C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2512E2E24(0, &unk_280CF7330, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2512EA7C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2512EB650();
  result = sub_2512ED878();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_2512ED848();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_2512EAA14()
{
  v1 = v0;
  sub_2512EB650();
  v2 = *v0;
  v3 = sub_2512ED868();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_2512E2F04(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2512EAB80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2512EB650();
  result = sub_2512ED878();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_2512E2F04(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_2512ED848();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2512EAE00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2512EAE28()
{
  result = qword_27F429448;
  if (!qword_27F429448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429448);
  }

  return result;
}

uint64_t sub_2512EAF08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  memset(v5, 0, sizeof(v5));
  v2(v5, a1);
  return sub_2512EB5E0(v5, &qword_27F4294C8, MEMORY[0x277D84F70] + 8);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2512EB0D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = MEMORY[0x277D839B0];
  v5[0] = 0;
  v2(v5, a1);
  return sub_2512EB5E0(v5, &qword_27F4294C8, MEMORY[0x277D84F70] + 8);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2512EB194()
{
  result = qword_27F429450;
  if (!qword_27F429450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429450);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PinnedContentStore.Failure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PinnedContentStore.Failure(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2512EB32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2512EB388()
{
  result = qword_280CF7340;
  if (!qword_280CF7340)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280CF7340);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

_OWORD *sub_2512EB484(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2512EB494(uint64_t a1, uint64_t a2)
{
  sub_2512E2E24(0, &qword_27F4294C8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2512EB53C()
{
  result = qword_27F4294E0;
  if (!qword_27F4294E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4294E0);
  }

  return result;
}

uint64_t objectdestroy_227Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2512EB5E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2512E2E24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2512EB650()
{
  if (!qword_27F4294F0)
  {
    v0 = sub_2512ED888();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4294F0);
    }
  }
}

HealthAppHealthDaemonSupport::PinnedContentDomain_optional __swiftcall PinnedContentDomain.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2512ED948();

  if (v1 == 1)
  {
    v2.value = HealthAppHealthDaemonSupport_PinnedContentDomain_logging;
  }

  else
  {
    v2.value = HealthAppHealthDaemonSupport_PinnedContentDomain_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2512EB874(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = ".pinnedContent.summary";
  }

  else
  {
    v2 = "shouldRespectOrder";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = ".pinnedContent.summary";
  }

  else
  {
    v4 = "shouldRespectOrder";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2512ED968();
  }

  return v5 & 1;
}

uint64_t sub_2512EB918()
{
  v1 = *v0;
  sub_2512ED9C8();
  sub_2512ED768();

  return sub_2512ED9E8();
}

uint64_t sub_2512EB990()
{
  *v0;
  sub_2512ED768();
}

uint64_t sub_2512EB9F4()
{
  v1 = *v0;
  sub_2512ED9C8();
  sub_2512ED768();

  return sub_2512ED9E8();
}

uint64_t sub_2512EBA68@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2512ED948();

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

void sub_2512EBAC8(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = ".pinnedContent.summary";
  }

  else
  {
    v2 = "shouldRespectOrder";
  }

  *a1 = 0xD000000000000026;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_2512EBB04()
{
  result = qword_27F429500;
  if (!qword_27F429500)
  {
    sub_2512EBB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429500);
  }

  return result;
}

void sub_2512EBB5C()
{
  if (!qword_27F429508)
  {
    v0 = sub_2512ED7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F429508);
    }
  }
}

uint64_t getEnumTagSinglePayload for PinnedContentDomain(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PinnedContentDomain(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id CodablePinnedContentDifference.__allocating_init(difference:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for CodablePinnedContentDifference();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
  *v10 = 0;
  v10[8] = 1;
  swift_beginAccess();
  if (a4)
  {
    *v10 = a3;
    v10[8] = 0;
    v11 = &v9[OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier];
    *v11 = a1;
    *(v11 + 1) = a2;
    v15 = v9;
    v12 = &v15;
  }

  else
  {
    *v10 = 0;
    v10[8] = 1;
    v13 = &v9[OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier];
    *v13 = a1;
    *(v13 + 1) = a2;
    v16.receiver = v9;
    v12 = &v16;
  }

  v12->super_class = v8;
  return [(objc_super *)v12 init];
}

uint64_t sub_2512EBE80()
{
  v1 = (v0 + OBJC_IVAR___HAHDCodablePinnedContentDifference_index);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2512EBECC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___HAHDCodablePinnedContentDifference_index;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2512EBF8C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2512EBFF8()
{
  v1 = (v0 + OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2512EC050(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id CodablePinnedContentDifference.__allocating_init(index:identifier:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
  *v10 = 0;
  v10[8] = 1;
  swift_beginAccess();
  *v10 = a1;
  v10[8] = a2 & 1;
  v11 = &v9[OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id CodablePinnedContentDifference.init(index:identifier:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
  *v9 = 0;
  v9[8] = 1;
  swift_beginAccess();
  *v9 = a1;
  v9[8] = a2 & 1;
  v10 = &v4[OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for CodablePinnedContentDifference();
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_2512EC26C(void *a1)
{
  v3 = (v1 + OBJC_IVAR___HAHDCodablePinnedContentDifference_index);
  swift_beginAccess();
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    v5 = sub_2512ED728();
    [a1 encodeInteger:v4 forKey:v5];
  }

  v6 = (v1 + OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];

  v9 = sub_2512ED728();

  v10 = sub_2512ED728();
  [a1 encodeObject:v9 forKey:v10];
}

id CodablePinnedContentDifference.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___HAHDCodablePinnedContentDifference_index];
  *v4 = 0;
  v4[8] = 1;
  sub_2512E3CD4();
  v5 = sub_2512ED818();
  if (v5)
  {
    v6 = v5;
    v7 = sub_2512ED738();
    v9 = v8;

    v10 = &v2[OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier];
    *v10 = v7;
    v10[1] = v9;
    v11 = sub_2512ED728();
    v12 = [a1 containsValueForKey_];

    if (v12)
    {
      v13 = sub_2512ED728();
      v14 = [a1 decodeIntegerForKey_];
    }

    else
    {
      v14 = 0;
    }

    swift_beginAccess();
    *v4 = v14;
    v4[8] = v12 ^ 1;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for CodablePinnedContentDifference();
    v15 = objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {

    type metadata accessor for CodablePinnedContentDifference();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

id CodablePinnedContentDifference.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CodablePinnedContentDifference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CodablePinnedContentDifference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CodablePinnedContentDifference.toPinnedContentDifference()()
{
  v1 = (v0 + OBJC_IVAR___HAHDCodablePinnedContentDifference_index);
  swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
  }

  v2 = (v0 + OBJC_IVAR___HAHDCodablePinnedContentDifference_identifier);
  swift_beginAccess();
  v5 = *v2;
  v4 = v2[1];

  return v5;
}

uint64_t sub_2512EC760(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a8)
    {
      if (a1 == a5 && a2 == a6)
      {
        return a3 == a7;
      }

      v9 = a3;
      v10 = a7;
      v11 = sub_2512ED968();
      a3 = v9;
      a7 = v10;
      if (v11)
      {
        return a3 == a7;
      }
    }

    return 0;
  }

  if (a8)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return sub_2512ED968();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2512EC824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2512EC86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t static LegacyFavoritesManagerSupport.favoriteIdentifiers(from:)(uint64_t a1)
{
  sub_2512EB32C(a1, v13);
  sub_2512ECD6C();
  if (swift_dynamicCast())
  {
    v1 = v14;
    if (*(v14 + 16) && (v2 = sub_2512ED4A8(0xD000000000000013, 0x80000002512EEA90), (v3 & 1) != 0))
    {
      sub_2512EB32C(*(v1 + 56) + 32 * v2, v13);

      sub_2512ED650(0, &qword_280CF7348, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (swift_dynamicCast())
      {
        return v14;
      }
    }

    else
    {
    }
  }

  if (qword_280CF7420 != -1)
  {
    swift_once();
  }

  v5 = sub_2512ED708();
  __swift_project_value_buffer(v5, qword_280CF7428);
  v6 = sub_2512ED6E8();
  v7 = sub_2512ED808();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2512ECED0(0xD00000000000001DLL, 0x80000002512EE570, v13);
    *(v8 + 12) = 2080;
    v10 = sub_2512ED758();
    v12 = sub_2512ECED0(v10, v11, v13);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2512E1000, v6, v7, "[%s]: Legacy favorites unreadable: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253070A00](v9, -1, -1);
    MEMORY[0x253070A00](v8, -1, -1);
  }

  sub_2512ECDD0();
  swift_allocError();
  return swift_willThrow();
}

void sub_2512ECD6C()
{
  if (!qword_280CF7320)
  {
    v0 = sub_2512ED718();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7320);
    }
  }
}

unint64_t sub_2512ECDD0()
{
  result = qword_27F429580;
  if (!qword_27F429580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429580);
  }

  return result;
}

uint64_t LegacyFavoritesManagerSupport.Failure.hashValue.getter()
{
  sub_2512ED9C8();
  MEMORY[0x253070580](0);
  return sub_2512ED9E8();
}

uint64_t sub_2512ECED0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2512ECF9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2512EB32C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2512ECF9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2512ED0A8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_2512ED8C8();
    a6 = v11;
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

uint64_t sub_2512ED0A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2512ED0F4(a1, a2);
  sub_2512ED224(&unk_286357AA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2512ED0F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2512ED310(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2512ED8C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2512ED788();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2512ED310(v10, 0);
        result = sub_2512ED898();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2512ED224(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2512ED39C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2512ED310(uint64_t a1, uint64_t a2)
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

  sub_2512ED650(0, &unk_27F429590, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2512ED39C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2512ED650(0, &unk_27F429590, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_2512ED4A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2512ED9C8();
  sub_2512ED768();
  v6 = sub_2512ED9E8();

  return sub_2512ED598(a1, a2, v6);
}

unint64_t sub_2512ED524()
{
  result = qword_27F429588;
  if (!qword_27F429588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F429588);
  }

  return result;
}

unint64_t sub_2512ED598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2512ED968())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_2512ED650(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}