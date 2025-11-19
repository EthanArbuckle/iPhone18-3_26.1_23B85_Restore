uint64_t sub_24EFB61EC()
{
  sub_24EFB622C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void sub_24EFB622C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }

  if (a5 == 3)
  {
  }
}

uint64_t sub_24EFB632C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_24EFB63B4()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EFB6460(unint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24EFA7110(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_24EFB6518()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB6558()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB65BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24EFB6604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EFB665C()
{
  result = qword_27F2358C8;
  if (!qword_27F2358C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2358C8);
  }

  return result;
}

uint64_t SearchChartsAndCategoriesPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD000000000000023;
  *(a2 + 1) = 0x800000024F9B8980;
  v4 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent() + 20);
  v5 = sub_24F91F4A8();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t type metadata accessor for SearchChartsAndCategoriesPageIntent()
{
  result = qword_27F2358E0;
  if (!qword_27F2358E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchChartsAndCategoriesPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchChartsAndCategoriesPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall SearchChartsAndCategoriesPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    type metadata accessor for SearchChartsAndCategoriesPageIntent();
    v7 = sub_24F91F398();
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB6A80(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EFB6AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EFB6BA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

char *sub_24EFB6C44(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_24F92AC68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v11 = MEMORY[0x25304F260]();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 2) = v12;
    *(v13 + 3) = a2;
    *(v13 + 4) = a3;
    v14 = a1;

    v15 = a2;
    sub_24F92AC48();
    if (v3)
    {
    }

    else
    {
      v13 = sub_24F92AC58();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v13 = "ctive JS worker thread";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_24EFB6E38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19[1] = a4;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v13);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a5;
  *(v15 + 3) = a6;
  *(v15 + 4) = a1;
  (*(v11 + 32))(&v15[v14], v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = a5;
  v17 = a1;
  sub_24F9298E8();
}

uint64_t sub_24EFB6FA8(uint64_t a1, int64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v6 = sub_24F92B098();
  v7 = [v5 arrayForKey_];

  if (a2 < 1)
  {
    if (v7 && (v12 = sub_24F92B5A8(), v7, v13 = sub_24E9E2454(v12), , v13))
    {
      v11 = v13;
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (v7 && (v8 = sub_24F92B5A8(), v7, v9 = sub_24E9E2454(v8), , v9))
    {
      v10 = v9;
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    v11 = sub_24EFB8828(a2, v10);
  }

  sub_24EF1C574(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229B08);
  v14 = sub_24F92CF68();
  v15 = [objc_opt_self() valueWithObject:v14 inContext:a3];
  swift_unknownObjectRelease();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235918);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  *(v16 + 64) = sub_24E6360E0();
  *(v16 + 32) = v15;
  v17 = v15;
  v18 = sub_24F928198();

  return sub_24EFB8EF8(v20);
}

char *sub_24EFB73A8(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v30 = a1;
  v6 = sub_24F9285B8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    v16 = " JS worker thread";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return v16;
  }

  v16 = a2;
  sub_24F92C2D8();
  if (v4)
  {

    return v16;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_24F9285A8();
  SearchHistoryItem.init(deserializing:using:)(v12, v8, v28);
  v18 = v28[0];
  v19 = v28[1];
  v20 = v29;
  v21 = swift_allocObject();
  v23 = v26;
  v22 = v27;
  *(v21 + 16) = v27;
  *(v21 + 24) = v18;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  *(v21 + 48) = v23;
  v24 = v22;

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v16 = result;
    (*(v10 + 8))(v15, v9);

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB76A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 < 1)
  {
    v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
    v14 = sub_24F92B098();
    [v13 removeObjectForKey_];

    return sub_24F92AD88();
  }

  v5 = *(a1 + 16);
  v7 = *a1;
  v6 = *(a1 + 8);

  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v7, v6, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v8;
  if (v5 <= 1)
  {
    v16 = v5 == 0;
    if (v5)
    {
      v12 = 0x79726F7473;
    }

    else
    {
      v12 = 0x65706F6C65766564;
    }

    if (v16)
    {
      v11 = 0xE900000000000072;
    }

    else
    {
      v11 = 0xE500000000000000;
    }
  }

  else if (v5 == 2)
  {
    v11 = 0xE600000000000000;
    v12 = 0x656461637261;
  }

  else
  {
    if (v5 != 3)
    {
      goto LABEL_15;
    }

    v11 = 0xE500000000000000;
    v12 = 0x6863746177;
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v12, v11, 0x797469746E65, 0xE600000000000000, v17);
LABEL_15:
  v18 = *(v3 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  if (a2 >= 0x1E)
  {
    v19 = 30;
  }

  else
  {
    v19 = a2;
  }

  v20 = sub_24F92B098();
  v21 = [v18 arrayForKey_];

  if (v21 && (v22 = sub_24F92B5A8(), v21, v23 = sub_24E9E2454(v22), , v23))
  {
    v24 = v23;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v44 = v18;
  v45 = v19;
  v25 = sub_24EFB8828(v19, v24);
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = v25 + 32;
    v29 = v27 - 1;
    v30 = MEMORY[0x277D84F90];
    v31 = 0;
    while (v31 < *(v26 + 16))
    {
      v32 = *(v28 + 8 * v31);
      v33 = v31 + 1;

      if (sub_24EBACE54(v10, v32))
      {

        ++v31;
        if (v27 == v33)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v43 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F458D04(0, v30[2] + 1, 1);
        }

        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          sub_24F458D04((v34 > 1), v35 + 1, 1);
        }

        v30[2] = v35 + 1;
        v30[v35 + 4] = v32;
        v29 = v43;
        if (v43 == v31)
        {
          goto LABEL_35;
        }

        ++v31;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
LABEL_35:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_36;
    }
  }

  v30 = sub_24E6189A0(0, v30[2] + 1, 1, v30);
LABEL_36:
  v37 = v30[2];
  v36 = v30[3];
  if (v37 >= v36 >> 1)
  {
    v30 = sub_24E6189A0((v36 > 1), v37 + 1, 1, v30);
  }

  v30[2] = v37 + 1;
  v30[v37 + 4] = v10;
  sub_24EFB8828(v45, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  v38 = sub_24F92B588();

  v39 = sub_24F92B098();
  [v44 setObject:v38 forKey:v39];

  v40 = sub_24F92B098();
  v41 = [v44 arrayForKey_];

  if (v41)
  {
    v42 = sub_24F92B5A8();

    sub_24E9E2454(v42);
  }

  sub_24F92AD88();
}

id sub_24EFB7C10(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return a1;
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_24EFB7DA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24EFB7E14();
  }
}

uint64_t sub_24EFB7E14()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v2 = sub_24F92B098();
  v3 = [v1 arrayForKey_];

  if (v3 && (v4 = sub_24F92B5A8(), v3, v5 = sub_24E9E2454(v4), result = , v5))
  {
    v7 = *(v5 + 16);
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v9 = MEMORY[0x277D84F90];
      v24 = v1;
      while (1)
      {
        v10 = v8;
        while (1)
        {
          if (v10 >= *(v5 + 16))
          {
            __break(1u);
            return result;
          }

          v11 = *(v5 + 32 + 8 * v10);
          if (*(v11 + 16))
          {
            break;
          }

LABEL_7:
          if (v7 == ++v10)
          {
            v1 = v24;
            goto LABEL_22;
          }
        }

        sub_24E76D644(1836213620, 0xE400000000000000);
        if ((v12 & 1) == 0)
        {
          break;
        }

        sub_24E600AEC();
        if (!sub_24F92C598())
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v9;
        if ((result & 1) == 0)
        {
          result = sub_24F458D04(0, *(v9 + 16) + 1, 1);
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v17 = v14 + 1;
          v23 = v14;
          result = sub_24F458D04((v13 > 1), v14 + 1, 1);
          v15 = v17;
          v14 = v23;
          v9 = v25;
        }

        v8 = v10 + 1;
        *(v9 + 16) = v15;
        *(v9 + 8 * v14 + 32) = v11;
        v16 = v7 - 1 == v10;
        v1 = v24;
        if (v16)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_7;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
    v7 = *(MEMORY[0x277D84F90] + 16);
    if (v7)
    {
      goto LABEL_4;
    }
  }

LABEL_22:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  v18 = sub_24F92B588();

  v19 = sub_24F92B098();
  [v1 setObject:v18 forKey:v19];

  v20 = sub_24F92B098();
  v21 = [v1 arrayForKey_];

  if (v21)
  {
    v22 = sub_24F92B5A8();

    sub_24E9E2454(v22);
  }

  sub_24F92AD88();
}

id sub_24EFB81F4(id a1)
{
  sub_24F9298F8();
  if (!MEMORY[0x25304F260]())
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return a1;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24F9298E8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_24EFB834C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
    v2 = Strong;
    v3 = sub_24F92B098();
    [v1 removeObjectForKey_];

    sub_24F92AD88();
  }
}

Swift::Void __swiftcall OnDeviceSearchHistoryManager.clearData()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v2 = sub_24F92B098();
  [v1 removeObjectForKey_];

  sub_24F92AD88();
}

uint64_t OnDeviceSearchHistoryManager.fetchRecents(limit:)(int64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults);
  v4 = sub_24F92B098();
  v5 = [v3 arrayForKey_];

  if (a1 < 1)
  {
    if (v5 && (v10 = sub_24F92B5A8(), v5, v11 = sub_24E9E2454(v10), , v11))
    {
      v9 = v11;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (v5 && (v6 = sub_24F92B5A8(), v5, v7 = sub_24E9E2454(v6), , v7))
    {
      v8 = v7;
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    v9 = sub_24EFB8828(a1, v8);
  }

  result = sub_24EF1C574(v9);
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v17 = v14 - 1;
    while (1)
    {
      v18 = v15;
      while (1)
      {
        if (v18 >= *(v13 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v13 + 32 + 8 * v18);
        if (*(v19 + 16))
        {
          break;
        }

LABEL_14:
        if (v14 == ++v18)
        {
          goto LABEL_32;
        }
      }

      sub_24E76D644(1836213620, 0xE400000000000000);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v31 = v17;
      v21 = *(v19 + 16);

      if (v21 && (sub_24E76D644(0x797469746E65, 0xE600000000000000), (v22 & 1) != 0))
      {
        swift_bridgeObjectRetain_n();

        v23 = sub_24F92CB88();
        swift_bridgeObjectRelease_n();
        if (v23 >= 4)
        {
          v24 = 4;
        }

        else
        {
          v24 = v23;
        }
      }

      else
      {

        v24 = 4;
      }

      sub_24E600AEC();
      v25 = sub_24F92C518();
      v27 = v26;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E619928(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_24E619928((v28 > 1), v29 + 1, 1, v16);
        v16 = result;
      }

      v15 = v18 + 1;
      *(v16 + 16) = v29 + 1;
      v30 = v16 + 24 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      *(v30 + 48) = v24;
      v17 = v31;
      if (v31 == v18)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_14;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_32:

  return v16;
}

unint64_t sub_24EFB8828(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_24F458D04(0, v4, 0);
  v5 = v19;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v17 = 0;
  do
  {
    while (1)
    {
      if (v7 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v8 = *(a2 + 32 + 8 * v7);
      v9 = v7 + 1;
      v10 = v19[2];
      if (v10 >= v3)
      {
        break;
      }

      v11 = v19[3];

      if (v10 >= v11 >> 1)
      {
        result = sub_24F458D04((v11 > 1), v10 + 1, 1);
      }

      v19[2] = v10 + 1;
      v19[v10 + 4] = v8;
      v7 = v9;
      if (v6 == v9)
      {
        goto LABEL_20;
      }
    }

    if (v17 >= v10)
    {
      goto LABEL_31;
    }

    v19[v17 + 4] = v8;

    if ((v17 + 1) < v3)
    {
      v12 = v17 + 1;
    }

    else
    {
      v12 = 0;
    }

    v17 = v12;
  }

  while (v6 - 1 != v7++);
LABEL_20:

  if (!v17)
  {
    return v5;
  }

  v14 = v19[2];
  v18 = MEMORY[0x277D84F90];
  result = sub_24F458D04(0, v14, 0);
  if (v14 >= v17)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v15 = v19[2];
    if (v15 >= v17 && v15 >= v14)
    {

      sub_24EFB8F60(v16, (v19 + 4), v17, (2 * v14) | 1);

      sub_24EFB8F60(v19, (v19 + 4), 0, (2 * v17) | 1);

      return v18;
    }

    goto LABEL_34;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id OnDeviceSearchHistoryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OnDeviceSearchHistoryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EFB8BF4()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EFB8C54()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB8CC0()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB8D00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 24);
  v5[1] = v1;
  v6 = v2;
  return sub_24EFB76A8(v5, v3);
}

uint64_t sub_24EFB8D64()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB8DC4()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFB8E90()
{
  sub_24F9281B8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_24EFB6FA8(v1, v2, v3);
}

uint64_t sub_24EFB8EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24EFB8F60(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_24F458D04(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB9094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v3[34] = a1;
  v3[37] = type metadata accessor for GSKShelf();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EFB9214, 0, 0);
}

uint64_t sub_24EFB9214()
{
  v36 = v0;
  v1 = *(v0 + 280);
  if (*(*(v1 + 40) + 16))
  {
    v33 = *(v0 + 368);
    v34 = *(v0 + 360);
    v2 = *(v0 + 344);
    v3 = *(v0 + 352);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    v32 = *(v0 + 320);
    v6 = *(v0 + 288);

    v8 = sub_24F45D9C4(v7);

    sub_24EF6DC6C(v1, v0 + 16);
    v9 = swift_allocObject();
    v10 = *(v0 + 32);
    *(v9 + 16) = *(v0 + 16);
    *(v9 + 32) = v10;
    *(v9 + 48) = *(v0 + 48);
    *(v9 + 64) = v6;
    v11 = swift_task_alloc();
    *(v11 + 16) = v8;
    *(v11 + 24) = &unk_24F9B8B60;
    *(v11 + 32) = v9;
    *(v11 + 40) = 257;
    (*(v4 + 104))(v5, *MEMORY[0x277D85778], v32);

    sub_24F92B928();

    (*(v3 + 16))(v34, v33, v2);
    sub_24E613678();
    sub_24F9280F8();
    (*(v3 + 8))(v33, v2);
    v12 = *(v0 + 272);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
      v1 = *(v0 + 280);
    }

    v16 = sub_24F9220D8();
    __swift_project_value_buffer(v16, qword_27F39E7F0);
    sub_24EF6DC6C(v1, v0 + 64);
    v17 = sub_24F9220B8();
    v18 = sub_24F92BDB8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 136315138;
      sub_24EFB9DF4(v0 + 64, v0 + 232);
      sub_24E612C80((v0 + 232), v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v21 = sub_24F9284D8();
      v23 = v22;
      sub_24EF6DCA4(v0 + 64);
      __swift_destroy_boxed_opaque_existential_1(v0 + 192);
      v24 = sub_24E7620D4(v21, v23, &v35);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_24E5DD000, v17, v18, "Got an UpdateListenerShelfIntent (wrapping intentKind '%s') with an empty dataTypes array, not hooking into UpdateListener", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2530542D0](v20, -1, -1);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    else
    {

      sub_24EF6DCA4(v0 + 64);
    }

    sub_24EFB9DF4(*(v0 + 280), v0 + 152);
    sub_24E612C80((v0 + 152), v0 + 112);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = __swift_project_boxed_opaque_existential_1((v0 + 112), v26);
    v28 = swift_task_alloc();
    *(v0 + 376) = v28;
    v29 = sub_24EFB9E64();
    *v28 = v0;
    v28[1] = sub_24EFB96D0;
    v30 = *(v0 + 312);
    v31 = *(v0 + 288);

    return sub_24F513090(v30, v27, v31, &type metadata for UpdateListenerShelfIntentImplementation, v26, v29, v25);
  }
}

uint64_t sub_24EFB96D0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24EFB990C;
  }

  else
  {
    v2 = sub_24EFB97E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EFB97E4()
{
  v1 = v0[38];
  v2 = v0[39];
  __swift_destroy_boxed_opaque_existential_1((v0 + 14));
  sub_24E614E60(v2, v1);
  sub_24F928138();
  sub_24E614EC4(v2);
  v3 = v0[34];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EFB990C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EFB99B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  return MEMORY[0x2822009F8](sub_24EFB99D8, 0, 0);
}

uint64_t sub_24EFB99D8()
{
  sub_24EFB9DF4(*(v0 + 104), v0 + 56);
  sub_24E612C80((v0 + 56), v0 + 16);
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  v5 = sub_24EFB9E64();
  *v4 = v0;
  v4[1] = sub_24EFB9AC0;
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);

  return sub_24F513090(v7, v3, v6, &type metadata for UpdateListenerShelfIntentImplementation, v2, v5, v1);
}

uint64_t sub_24EFB9AC0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24EFB9BD4;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EFB9BD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EFB9C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24EFB9094(a1, a2, a3);
}

uint64_t sub_24EFB9CE8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EFB9D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 64);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E614970;

  return sub_24EFB99B4(a1, a2, a3, v3 + 16, v8);
}

uint64_t sub_24EFB9DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EFB9E64()
{
  result = qword_27F235920;
  if (!qword_27F235920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235920);
  }

  return result;
}

double CGSize.minDimension.getter(double result, double a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

double CGSize.rounded(_:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v24 = a2;
  v14 = *(v7 + 16);
  v14(&v21 - v12, a1, v6, v11);
  v15 = *(v7 + 88);
  v16 = v15(v13, v6);
  v17 = *MEMORY[0x277D84678];
  if (v16 == *MEMORY[0x277D84678])
  {
    v18 = round(a2);
    v24 = v18;
  }

  else if (v16 == *MEMORY[0x277D84670])
  {
    v18 = rint(a2);
    v24 = v18;
  }

  else
  {
    if (v16 == *MEMORY[0x277D84680])
    {
      goto LABEL_6;
    }

    if (v16 == *MEMORY[0x277D84688])
    {
      goto LABEL_8;
    }

    if (v16 == *MEMORY[0x277D84660])
    {
      v18 = trunc(a2);
      v24 = v18;
      goto LABEL_15;
    }

    if (v16 != *MEMORY[0x277D84668])
    {
      v22 = a1;
      sub_24F92BA48();
      a1 = v22;
      (*(v7 + 8))(v13, v6);
      v18 = v24;
      goto LABEL_15;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v18 = floor(a2);
      v24 = v18;
    }

    else
    {
LABEL_6:
      v18 = ceil(a2);
      v24 = v18;
    }
  }

LABEL_15:
  v23 = a3;
  (v14)(v9, a1, v6);
  v19 = v15(v9, v6);
  if (v19 != v17 && v19 != *MEMORY[0x277D84670] && v19 != *MEMORY[0x277D84680] && v19 != *MEMORY[0x277D84688] && v19 != *MEMORY[0x277D84660] && v19 != *MEMORY[0x277D84668])
  {
    sub_24F92BA48();
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

double CGSize.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  [a2 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [a2 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);
  return v10;
}

{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [v7 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);

  return v10;
}

CGSize __swiftcall CGSize.clamped(atLeast:)(CGSize atLeast)
{
  if (v1 > atLeast.width)
  {
    atLeast.width = v1;
  }

  if (v2 > atLeast.height)
  {
    atLeast.height = v2;
  }

  return atLeast;
}

CGSize __swiftcall CGSize.clamped(atMost:)(CGSize atMost)
{
  if (atMost.width >= v1)
  {
    atMost.width = v1;
  }

  if (atMost.height >= v2)
  {
    atMost.height = v2;
  }

  return atMost;
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:displayStyle:facetsPresenter:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a3;
  v64 = a6;
  v61 = a5;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = swift_allocObject();
  LODWORD(v65) = *a4;
  v17 = swift_allocObject();
  swift_weakInit();
  v57 = a2;
  sub_24E60169C(a2, v15, &qword_27F228530);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = v18 + v12;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_24E911D90(v15, v20 + v18);
  *(v20 + v19) = v65;
  v21 = v66;
  *(v20 + (v19 & 0xFFFFFFFFFFFFFFF8) + 8) = v66;
  *(v20 + (((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v22 = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = a7;
  sub_24E60169C(a2, v67, &qword_27F228530);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_24EFBB710;
  *(v24 + 24) = v21;
  v62 = v24;
  *(v16 + qword_27F22F198) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v16 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v26 = qword_27F39C780;
  v65 = a7;
  swift_retain_n();
  swift_retain_n();
  v27 = v22;

  *(v16 + v26) = sub_24E60986C(v25);
  v28 = (v16 + qword_27F22F1A8);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v16 + qword_27F22F1B0);
  *v29 = 0;
  v29[1] = 0;
  v60 = v29;
  v30 = (v16 + qword_27F22F1B8);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v16 + qword_27F22F1C0);
  *v31 = 0;
  v31[1] = 0;
  v59 = v31;
  v32 = (v16 + qword_27F22F1C8);
  *v32 = 0;
  v32[1] = 0;
  v58 = v32;
  v33 = (v16 + qword_27F39C788);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  *(v16 + qword_27F39C790) = 0;
  *(v16 + qword_27F22F1D0) = 0;
  *(v16 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v16 + qword_27F39C798) = 0;
  v34 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20);
  swift_allocObject();
  *(v16 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v16 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40);
  swift_allocObject();
  *(v16 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B8;
  swift_allocObject();
  *(v16 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v16 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v40 = sub_24F92ADA8();

  v41 = v23;

  v42 = v66;

  sub_24E601704(v57, &qword_27F228530);
  *(v16 + v39) = v40;
  v43 = qword_27F22F1E0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v45 = *(*(v44 - 8) + 56);
  v45(v16 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v63;
  v45(v16 + qword_27F22F1E8, 1, 1, v46);
  *(v16 + 16) = v42;
  sub_24E911D90(v67, v16 + qword_27F39C7D0);
  *v28 = sub_24EFBB4B8;
  v28[1] = v27;
  *v30 = 0;
  v30[1] = 0;
  if (v47)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = sub_24E965688;
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  v50 = v59;
  v51 = v60;
  *v60 = v49;
  v51[1] = v48;
  *v50 = sub_24EFBB5AC;
  v50[1] = v41;
  v52 = v58;
  v53 = v62;
  *v58 = sub_24ECF3DB0;
  v52[1] = v53;
  v54 = v65;
  *(v16 + qword_27F22F1F0) = v64;
  *(v16 + qword_27F39C7D8) = v54;
  return v16;
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:displayStyle:facetsPresenter:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v66 = a3;
  v67 = a6;
  v65 = a5;
  v69 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  LODWORD(v68) = *a4;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = a2;
  v61 = a2;
  sub_24E60169C(a2, v17, &qword_27F228530);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = v20 + v14;
  v22 = (v20 + v14) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_24E911D90(v17, v23 + v20);
  *(v23 + v21) = v68;
  v24 = v69;
  *(v23 + v22 + 8) = v69;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a7;
  sub_24E60169C(v19, v70, &qword_27F228530);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_24EFBBB70;
  *(v26 + 24) = v24;
  v64 = v26;
  *(v8 + qword_27F22F198) = 0;
  v27 = MEMORY[0x277D84F90];
  *(v8 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v28 = qword_27F39C780;
  v68 = a7;
  swift_retain_n();
  swift_retain_n();

  *(v8 + v28) = sub_24E60986C(v27);
  v29 = (v8 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v8 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v8 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v8 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v62 = v32;
  v33 = (v8 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v63 = v33;
  v34 = (v8 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v8 + qword_27F39C790) = 0;
  *(v8 + qword_27F22F1D0) = 0;
  *(v8 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v8 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20);
  swift_allocObject();
  *(v8 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v8 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40);
  swift_allocObject();
  *(v8 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v8 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v8 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v41 = sub_24F92ADA8();

  v65 = v25;

  v42 = v69;

  sub_24E601704(v61, &qword_27F228530);
  *(v8 + v40) = v41;
  v43 = qword_27F22F1E0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v45 = *(*(v44 - 8) + 56);
  v45(v8 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v66;
  v45(v8 + qword_27F22F1E8, 1, 1, v46);
  *(v8 + 16) = v42;
  sub_24E911D90(v70, v8 + qword_27F39C7D0);
  v48 = *v29;
  *v29 = sub_24EFBBB6C;
  v29[1] = v23;
  sub_24E824448(v48);
  v49 = *v31;
  *v31 = 0;
  v31[1] = 0;
  sub_24E824448(v49);
  if (v47)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    v51 = sub_24EC02BCC;
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  v52 = *v30;
  *v30 = v51;
  v30[1] = v50;
  sub_24E824448(v52);
  v53 = v62;
  v54 = *v62;
  v55 = v65;
  *v62 = sub_24EFBBB98;
  v53[1] = v55;
  sub_24E824448(v54);
  v57 = v63;
  v56 = v64;
  v58 = *v63;
  *v63 = sub_24ECF4148;
  v57[1] = v56;
  sub_24E824448(v58);
  v59 = v68;
  *(v8 + qword_27F22F1F0) = v67;
  *(v8 + qword_27F39C7D8) = v59;
  return v8;
}

uint64_t sub_24EFBB0B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EFBB0EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  sub_24E60169C(a3, v11, &qword_27F228530);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_24E601704(v11, &qword_27F228530);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235938);
    sub_24EFBBAF8();
    swift_allocError();
    *v16 = 0;
    return sub_24F92A978();
  }

  v25 = a6;
  (*(v13 + 32))(v15, v11, v12);
  v18 = sub_24F91F398();
  v20 = v19;
  if (a4)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_24F92CE08();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658);
  sub_24F92BF18();
  v22 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v26);

  *&v26 = 0xD00000000000001BLL;
  *(&v26 + 1) = 0x800000024FA5A900;
  v27 = v18;
  v28 = v20;
  v29 = v21 & 1;
  v30 = v22;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v23 = sub_24F929C08();

  v24 = sub_24EB479C0(&v26, v23, "GameStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 64, 2);

  sub_24ED08798(&v26);

  (*(v13 + 8))(v15, v12);
  return v24;
}

uint64_t sub_24EFBB4BC(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v2 = sub_24F929C18();

  v3 = sub_24EB46264(a1, v2, "GameStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 64, 2);

  return v3;
}

uint64_t sub_24EFBB5B4(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0);
  if (v7[1])
  {
    sub_24E612B0C(&v6, v8);
    sub_24E643A9C(v8, v7);
    *&v6 = 0xD00000000000001FLL;
    *(&v6 + 1) = 0x800000024FA5A960;
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    v3 = sub_24EB47E18(&v6, a2, "GameStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 64, 2);

    sub_24ED08844(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235938);
    sub_24EFBBAF8();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24EFBB7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24EFBB808()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24EFBB988(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFBB0EC(a1, v6, v1 + v4, v7, v8, v9);
}

uint64_t sub_24EFBBA48()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageContentPresenter()
{
  result = qword_27F235928;
  if (!qword_27F235928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EFBBAF8()
{
  result = qword_27F235940;
  if (!qword_27F235940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235940);
  }

  return result;
}

uint64_t Artwork.Crop.preferredContentMode.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 25186 && v2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {
    return 1;
  }

  if (v1 == 24934 && v2 == 0xE200000000000000)
  {
    return 0;
  }

  v5 = sub_24F92CE08();
  result = 0;
  v7 = v1 == 24948 && v2 == 0xE200000000000000;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_24F92CE08() & 1) != 0 || v1 == 0x7070412E45474D44 && v2 == 0xEC00000031305453 || (sub_24F92CE08())
    {
      return 0;
    }

    if (v1 == 0x435370412E424353 && v2 == 0xEC00000031304C42)
    {
      return 8;
    }

    v8 = sub_24F92CE08();
    v10 = v1 == 0x435370412E424353 && v2 == 0xEC00000032305342;
    result = 8;
    if ((v8 & 1) == 0 && !v10)
    {
      if (sub_24F92CE08())
      {
        return 8;
      }

      if (v1 == 0x435370412E424353 && v2 == 0xEC00000032304C42)
      {
        return 7;
      }

      else
      {
        v11 = sub_24F92CE08();
        v13 = v1 == 0x435370412E424353 && v2 == 0xEC00000031305342;
        result = 7;
        if ((v11 & 1) == 0 && !v13)
        {
          if (sub_24F92CE08())
          {
            return 7;
          }

          else
          {
            return 2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Artwork.Crop.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static Artwork.Crop.condensedSearchStory.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "DMGE.AppST01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryTile.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBL01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryTileRTL.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBL02");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryPill.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBS01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryPillRTL.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBS02");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t Artwork.Crop.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_24EFBBFE0()
{
  result = qword_27F235948;
  if (!qword_27F235948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235948);
  }

  return result;
}

uint64_t sub_24EFBC05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EFBC130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsSingleColumnView()
{
  result = qword_27F235950;
  if (!qword_27F235950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EFBC254@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235968);
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x28223BE20](v3);
  v102 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235970);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235978);
  MEMORY[0x28223BE20](v110);
  v101 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - v12;
  MEMORY[0x28223BE20](v14);
  v121 = &v95 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C468);
  v16 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v95 - v19;
  sub_24EC5F4E8();
  v115 = v20;
  sub_24F921D38();
  v21 = type metadata accessor for AchievementDetails();
  v22 = (a1 + v21[13]);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[3];
  v26 = v22[4];
  v27 = v22[5];
  if (v24)
  {
    v113 = v22[2];
    v114 = v23;
    v111 = v26;
    v112 = v25;
    v120 = v27;
  }

  else
  {
    v113 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
    v120 = 0;
  }

  v116 = v24;
  sub_24E68FE2C(v23, v24);
  v28 = v121;
  sub_24F9271E8();
  v29 = sub_24F9251C8();
  v30 = sub_24F925808();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C450);
  v32 = v28 + *(v31 + 36);
  *v32 = v29;
  *(v32 + 4) = v30;
  LOBYTE(v29) = sub_24F925868();
  v104 = (a1 + *(type metadata accessor for AchievementDetailsSingleColumnView() + 20));
  sub_24F923318();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235980);
  v42 = v28 + *(v41 + 36);
  *v42 = v29;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v44 = v28 + *(v110 + 36);
  *v44 = KeyPath;
  *(v44 + 8) = 0;
  v45 = *(a1 + v21[7]);
  v106 = v9;
  v107 = v16;
  if (v45 && *(v45 + 16))
  {
    v46 = v13;
    v95 = v21;
    v47 = (a1 + v21[8]);
    v48 = *v47;
    v49 = v47[1];
    v98 = a1;
    v99 = v48;
    v50 = qword_27F210E90;

    v100 = v49;

    if (v50 != -1)
    {
      swift_once();
    }

    memcpy(v123, &xmmword_27F237800, sizeof(v123));
    memcpy(v122, &xmmword_27F237800, sizeof(v122));
    LOBYTE(v124[0]) = 0;
    sub_24E76A93C(v123, &v125);
    sub_24F926F28();
    v97 = v125;
    v51 = v126;
    v96 = v126;
    v52 = v46;
    sub_24F9271E8();
    v53 = sub_24F9251C8();
    v54 = sub_24F925808();
    v55 = v46 + *(v31 + 36);
    *v55 = v53;
    *(v55 + 4) = v54;
    v56 = sub_24F925868();
    sub_24F923318();
    v57 = v46 + *(v41 + 36);
    *v57 = v56;
    *(v57 + 8) = v58;
    *(v57 + 16) = v59;
    *(v57 + 24) = v60;
    *(v57 + 32) = v61;
    *(v57 + 40) = 0;
    v62 = swift_getKeyPath();
    v63 = v46 + *(v110 + 36);
    *v63 = v62;
    *(v63 + 8) = 0;
    v64 = v101;
    sub_24E60169C(v46, v101, &qword_27F235978);
    v124[0] = v45;
    v65 = v99;
    v66 = v100;
    v124[1] = v99;
    v124[2] = v100;
    memcpy(&v124[3], v122, 0x178uLL);
    v67 = v97;
    LOBYTE(v124[50]) = v97;
    v124[51] = v51;
    v68 = v102;
    memcpy(v102, v124, 0x1A0uLL);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235990);
    sub_24E60169C(v64, v68 + *(v69 + 48), &qword_27F235978);
    sub_24E645724(v124, &v125);
    sub_24E601704(v52, &qword_27F235978);
    sub_24E601704(v64, &qword_27F235978);
    v125 = v45;
    v126 = v65;
    v127 = v66;
    memcpy(v128, v122, 0x178uLL);
    LOBYTE(v128[47]) = v67;
    v13 = v52;
    v129 = v96;
    sub_24EC5F494(&v125);
    v70 = v106;
    sub_24EFBCC6C(v68, v106);
    (*(v108 + 56))(v70, 0, 1, v109);
    v16 = v107;
    a1 = v98;
    v21 = v95;
  }

  else
  {
    (*(v108 + 56))(v9, 1, 1, v109);
    v70 = v9;
  }

  v71 = (a1 + v21[6]);
  v72 = v71[1];
  v101 = *v71;
  v73 = v101;
  v74 = (a1 + v21[9]);
  v76 = *v74;
  v75 = v74[1];
  v110 = v76;
  v108 = v72;
  v109 = v75;
  memcpy(v123, v104, sizeof(v123));
  memcpy(v122, v104, sizeof(v122));
  v104 = 0x800000024FA58410;
  v102 = *MEMORY[0x277CDA710];
  v77 = *(v16 + 16);
  v78 = v117;
  v79 = v118;
  v77(v117, v115, v118);
  sub_24E60169C(v121, v13, &qword_27F235978);
  v103 = v13;
  v80 = v119;
  sub_24E60169C(v70, v119, &qword_27F235970);
  v81 = v105;
  v77(v105, v78, v79);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235988);
  v83 = &v81[v82[12]];
  v84 = v116;
  *v83 = v114;
  *(v83 + 1) = v84;
  v85 = v112;
  *(v83 + 2) = v113;
  *(v83 + 3) = v85;
  v86 = v120;
  *(v83 + 4) = v111;
  *(v83 + 5) = v86;
  v120 = v86;
  sub_24E60169C(v13, &v81[v82[16]], &qword_27F235978);
  sub_24E60169C(v80, &v81[v82[20]], &qword_27F235970);
  v87 = v82[24];
  v124[0] = v73;
  v124[1] = v108;
  v124[2] = v110;
  v124[3] = v109;
  memcpy(&v124[4], v122, 0x178uLL);
  v124[51] = 0xD000000000000013;
  v88 = v104;
  v124[52] = v104;
  v89 = v102;
  v124[53] = v102;
  LOBYTE(v124[54]) = 1;
  v124[55] = 0x3FF0000000000000;
  memcpy(&v81[v87], v124, 0x1C0uLL);

  sub_24E76A93C(v123, &v125);
  v105 = v89;
  v90 = v114;
  v91 = v116;
  sub_24E68FE2C(v114, v116);
  sub_24E845D18(v124, &v125);
  sub_24E601704(v106, &qword_27F235970);
  sub_24E601704(v121, &qword_27F235978);
  v92 = *(v107 + 8);
  v93 = v118;
  v92(v115, v118);
  v125 = v101;
  v126 = v108;
  v127 = v110;
  v128[0] = v109;
  memcpy(&v128[1], v122, 0x178uLL);
  v129 = 0xD000000000000013;
  v130 = v88;
  v131 = v105;
  v132 = 1;
  v133 = 0x3FF0000000000000;
  sub_24EC5F438(&v125);
  sub_24E601704(v119, &qword_27F235970);
  sub_24E601704(v103, &qword_27F235978);
  sub_24E687F7C(v90, v91);
  return (v92)(v117, v93);
}

uint64_t sub_24EFBCC14@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235960);
  return sub_24EFBC254(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_24EFBCC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EFBCCE0()
{
  result = qword_27F235998;
  if (!qword_27F235998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235998);
  }

  return result;
}

uint64_t sub_24EFBCD54()
{
  if (qword_27F210D28 != -1)
  {
    result = swift_once();
  }

  byte_27F39D1B0 = byte_27F39D1B1;
  return result;
}

uint64_t sub_24EFBCDAC()
{
  if (qword_27F210D20 != -1)
  {
    swift_once();
  }

  return byte_27F39D1B0;
}

void sub_24EFBCE00()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_24F92B0D8();
    v4 = v3;

    if (v2 == 0xD000000000000017 && 0x800000024FA44AC0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_24F92CE08();
    }
  }

  byte_27F39D1B1 = v1 & 1;
}

uint64_t sub_24EFBCEEC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_24EFBD084(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

void sub_24EFBD228()
{
  sub_24EFBD3AC(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24EFBD3AC(319, &qword_27F2359B8, &type metadata for Bullet, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24E6CAE80();
      if (v2 <= 0x3F)
      {
        sub_24F928FD8();
        if (v3 <= 0x3F)
        {
          sub_24F928818();
          if (v4 <= 0x3F)
          {
            sub_24E684120();
            if (v5 <= 0x3F)
            {
              sub_24E6CAF48();
              if (v6 <= 0x3F)
              {
                sub_24EFBD3AC(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EFBD3AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_24EFBD428()
{
  v0 = sub_24F927618();
  xmmword_27F39D1C0 = xmmword_24F947C50;
  *algn_27F39D1D0 = xmmword_24F9B8DC0;
  *&xmmword_27F39D1E0 = v0;
  *(&xmmword_27F39D1E0 + 1) = v1;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39D1F0 = result;
  xmmword_27F39D200 = xmmword_24F98D270;
  qword_27F39D210 = 0x4036000000000000;
  return result;
}

__n128 sub_24EFBD478()
{
  v0 = sub_24F927618();
  xmmword_27F39D220 = xmmword_24F947C70;
  *algn_27F39D230 = xmmword_24F9B8DC0;
  *&xmmword_27F39D240 = v0;
  *(&xmmword_27F39D240 + 1) = v1;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39D250 = result;
  xmmword_27F39D260 = xmmword_24F98D270;
  qword_27F39D270 = 0x4030000000000000;
  return result;
}

double sub_24EFBD4C8@<D0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v62 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v63 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v61 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v51[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v51[-v22];
  v58 = type metadata accessor for GamesOnboardingWelcomeView(0);
  v60 = v1;
  sub_24F769764(v23);
  v24 = v3[13];
  v57 = *MEMORY[0x277CE0560];
  v56 = v24;
  v24(v20);
  v55 = v3[7];
  v55(v20, 0, 1, v2);
  v59 = v5;
  v25 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598);
  sub_24E60169C(v20, &v9[v25], &qword_27F215598);
  v66 = v3;
  v26 = v3[6];
  if (v26(v9, 1, v2) != 1)
  {
    v27 = v65;
    sub_24E60169C(v9, v65, &qword_27F215598);
    if (v26(&v9[v25], 1, v2) != 1)
    {
      v64 = v26;
      v29 = &v9[v25];
      v30 = v54;
      (v66[4])(v54, v29, v2);
      sub_24EFBF0A0(&qword_27F215650, MEMORY[0x277CE0570]);
      v52 = sub_24F92AFF8();
      v31 = v66[1];
      v31(v30, v2);
      sub_24E601704(v20, &qword_27F215598);
      sub_24E601704(v23, &qword_27F215598);
      v31(v65, v2);
      sub_24E601704(v9, &qword_27F215598);
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598);
    sub_24E601704(v23, &qword_27F215598);
    (v66[1])(v27, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20);
    goto LABEL_15;
  }

  v64 = v26;
  sub_24E601704(v20, &qword_27F215598);
  sub_24E601704(v23, &qword_27F215598);
  if (v64(&v9[v25], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  v32 = v61;
  sub_24F769764(v61);
  v33 = v63;
  v56(v63, v57, v2);
  v55(v33, 0, 1, v2);
  v34 = *(v59 + 48);
  v35 = v62;
  sub_24E60169C(v32, v62, &qword_27F215598);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598);
  v36 = v64;
  if (v64(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598);
LABEL_20:
      if (qword_27F210D38 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39D220;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v53;
  sub_24E60169C(v35, v53, &qword_27F215598);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v63, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    (v66[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v45 = v32;
  v46 = v66;
  v47 = &v35[v34];
  v48 = v54;
  (v66[4])(v54, v47, v2);
  sub_24EFBF0A0(&qword_27F215650, MEMORY[0x277CE0570]);
  v49 = sub_24F92AFF8();
  v50 = v46[1];
  v50(v48, v2);
  sub_24E601704(v63, &qword_27F215598);
  sub_24E601704(v45, &qword_27F215598);
  v50(v37, v2);
  sub_24E601704(v35, &qword_27F215598);
  if (v49)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210D30 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39D1C0;
LABEL_18:
  v39 = v38[3];
  v70 = v38[2];
  v71 = v39;
  v72 = v38[4];
  v73 = *(v38 + 10);
  v40 = v38[1];
  v68 = *v38;
  v69 = v40;
  v41 = v71;
  v42 = v67;
  *(v67 + 32) = v70;
  *(v42 + 48) = v41;
  *(v42 + 64) = v72;
  *(v42 + 80) = v73;
  result = *&v68;
  v44 = v69;
  *v42 = v68;
  *(v42 + 16) = v44;
  return result;
}

uint64_t sub_24EFBDD90@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v51 - v3;
  v61 = sub_24F929158();
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v51 - v6;
  v7 = type metadata accessor for GamesOnboardingWelcomeView(0);
  v54 = *(v7 - 8);
  v53 = *(v54 + 64);
  v8 = v7 - 8;
  v58 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359C0);
  MEMORY[0x28223BE20](v55);
  v12 = &v51 - v11;
  v13 = *(v1 + 72);
  v56 = *(v1 + 80);
  v57 = v13;
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  sub_24E615E00(v1 + 32, v14 + 32);
  v15 = v1 + *(v8 + 64);
  v16 = *v15;
  v51 = *(v15 + 8);
  LOBYTE(v68) = v16;
  v69 = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  v18 = v65;
  v17 = v66;
  LOBYTE(v8) = v67;
  *(v12 + 6) = type metadata accessor for ProgressPerformAction();
  *(v12 + 7) = sub_24EFBF0A0(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 3);
  sub_24F928A98();
  *boxed_opaque_existential_1 = v14;
  boxed_opaque_existential_1[1] = v18;
  boxed_opaque_existential_1[2] = v17;
  *(boxed_opaque_existential_1 + 24) = v8;
  boxed_opaque_existential_1[5] = 0;
  boxed_opaque_existential_1[6] = 0;
  boxed_opaque_existential_1[4] = 0;
  *(v12 + 15) = 0;
  *(v12 + 104) = 0u;
  *(v12 + 88) = 0u;
  LOBYTE(v65) = v16;
  v66 = v51;
  sub_24F926F38();
  LOBYTE(v17) = v68;
  v20 = v52;
  v21 = *(v52 + 88);
  sub_24EFBEB48(v52, v10);
  v22 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v23 = swift_allocObject();
  sub_24EFBEBB0(v10, v23 + v22);
  sub_24EFBEB48(v20, v10);
  v24 = swift_allocObject();
  sub_24EFBEBB0(v10, v24 + v22);
  sub_24EFBEB48(v20, v10);
  v25 = swift_allocObject();
  sub_24EFBEBB0(v10, v25 + v22);
  v26 = v55;
  v27 = *(v55 + 136);
  v28 = type metadata accessor for HeaderPresentation(0);
  (*(*(v28 - 8) + 56))(&v12[v27], 1, 1, v28);
  v29 = &v12[v26[37]];
  LOBYTE(v68) = 0;

  sub_24F926F28();
  v30 = v66;
  *v29 = v65;
  *(v29 + 1) = v30;
  v31 = &v12[v26[38]];
  LOBYTE(v68) = 0;
  sub_24F926F28();
  v32 = v66;
  *v31 = v65;
  *(v31 + 1) = v32;
  v33 = &v12[v26[39]];
  v68 = 0;
  sub_24F926F28();
  v34 = v66;
  *v33 = v65;
  *(v33 + 1) = v34;
  v35 = v26[40];
  *&v12[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v36 = v26[41];
  *&v12[v36] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v37 = v26[42];
  *&v12[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v38 = &v12[v26[43]];
  *v38 = sub_24F923398() & 1;
  *(v38 + 1) = v39;
  v38[16] = v40 & 1;
  v41 = v56;
  *v12 = v57;
  *(v12 + 1) = v41;
  *(v12 + 2) = 0;
  v12[128] = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0;
  *(v12 + 8) = 0;
  v12[129] = v17;
  *(v12 + 17) = v21;
  *(v12 + 9) = xmmword_24F9B8DD0;
  *(v12 + 20) = sub_24EFBEC14;
  *(v12 + 21) = v23;
  *(v12 + 22) = sub_24EFBEFA8;
  *(v12 + 23) = v24;
  *(v12 + 24) = sub_24EFBF018;
  *(v12 + 25) = v25;
  *(v12 + 26) = sub_24E603210;
  *(v12 + 27) = 0;
  v12[v26[35]] = 7;
  v12[v26[36]] = 0;
  v42 = *(v58 + 48);
  v43 = sub_24F928818();
  v44 = *(v43 - 8);
  v45 = v59;
  (*(v44 + 16))(v59, v20 + v42, v43);
  (*(v44 + 56))(v45, 0, 1, v43);
  v47 = v60;
  v46 = v61;
  sub_24F928F28();
  v48 = sub_24F921B48();
  v49 = v62;
  (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
  sub_24E602068(&qword_27F2359C8, &qword_27F2359C0);
  sub_24F925E58();
  sub_24E601704(v49, &qword_27F2157E8);
  (*(v63 + 8))(v47, v46);
  sub_24E601704(v45, &qword_27F2157F0);
  return sub_24E601704(v12, &qword_27F2359C0);
}

void *sub_24EFBE56C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24EFBE61C(a1, __src);
  memcpy(__dst, __src, 0x151uLL);
  memcpy(v8, __src, 0x151uLL);
  sub_24E60169C(__dst, &v5, &qword_27F2359D0);
  sub_24E601704(v8, &qword_27F2359D0);
  return memcpy((a2 + 24), __dst, 0x151uLL);
}

uint64_t sub_24EFBE61C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v30 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v30 = 0;
    v4 = 0;
  }

  sub_24EFBD4C8(&v40);
  KeyPath = swift_getKeyPath();
  v46 = 0;
  v5 = sub_24F925818();
  sub_24EFBD4C8(v92);
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v46;
  v29 = v46;
  v91 = 0;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];

  sub_24EFBD4C8(&v34);
  v28 = sub_24F925818();
  sub_24EFBD4C8(v93);
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *&v47 = KeyPath;
  BYTE8(v47) = v14;
  *&v48 = v30;
  *(&v48 + 1) = v4;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  *&v54 = v45;
  v49 = v40;
  v50 = v41;
  BYTE8(v54) = v5;
  *&v55 = v7;
  *(&v55 + 1) = v9;
  *&v56 = v11;
  *(&v56 + 1) = v13;
  *__src = v47;
  *&__src[16] = v48;
  *&__src[64] = v42;
  *&__src[80] = v43;
  *&__src[32] = v40;
  *&__src[48] = v41;
  *&__src[128] = v55;
  *&__src[144] = v56;
  *&__src[96] = v44;
  *&__src[112] = v54;
  *&v58 = v15;
  *(&v58 + 1) = v16;
  *&v59[40] = v36;
  *&v59[56] = v37;
  *&v59[72] = v38;
  *v59 = v17;
  *&v59[88] = v39;
  *&v59[8] = v34;
  *&v59[24] = v35;
  LOBYTE(v60) = v28;
  *(&v60 + 1) = v18;
  *v61 = v20;
  *&v61[8] = v22;
  *&v61[16] = v24;
  v61[24] = 0;
  *&__src[280] = v60;
  *&__src[296] = *v61;
  *&__src[264] = *&v59[80];
  *&__src[305] = *&v61[9];
  *&__src[200] = *&v59[16];
  *&__src[216] = *&v59[32];
  *&__src[232] = *&v59[48];
  *&__src[248] = *&v59[64];
  *&__src[168] = v58;
  LOBYTE(v75) = 0;
  v57 = 0;
  __src[160] = 0;
  *&__src[184] = *v59;
  memcpy(a2, __src, 0x148uLL);
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v26 = v35;
  v63 = v34;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v62[0] = v15;
  v62[1] = v16;
  v62[2] = v17;
  v68 = v39;
  v64 = v26;
  v69 = v28;
  v70 = v19;
  v71 = v21;
  v72 = v23;
  v73 = v25;
  v74 = 0;
  sub_24E60169C(&v47, &v75, &qword_27F2359D8);
  sub_24E60169C(&v58, &v75, &qword_27F2359E0);
  sub_24E601704(v62, &qword_27F2359E0);
  v75 = KeyPath;
  v76 = v29;
  v77 = v30;
  v78 = v4;
  v81 = v42;
  v82 = v43;
  v83 = v44;
  v84 = v45;
  v79 = v40;
  v80 = v41;
  v85 = v5;
  v86 = v7;
  v87 = v9;
  v88 = v11;
  v89 = v13;
  v90 = 0;
  return sub_24E601704(&v75, &qword_27F2359D8);
}

double sub_24EFBEA14@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_24EFBD4C8(v9);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  v6 = v9[3];
  *(a2 + 64) = v9[2];
  *(a2 + 80) = v6;
  *(a2 + 96) = v9[4];
  *(a2 + 112) = v10;
  result = *v9;
  v8 = v9[1];
  *(a2 + 32) = v9[0];
  *(a2 + 48) = v8;
  return result;
}

double sub_24EFBEAB0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = a1[3];

  sub_24EFBD4C8(v9);
  v6 = v9[3];
  *(a2 + 56) = v9[2];
  *(a2 + 72) = v6;
  *(a2 + 88) = v9[4];
  result = *v9;
  v8 = v9[1];
  *(a2 + 24) = v9[0];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 104) = v10;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_24EFBEB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesOnboardingWelcomeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFBEBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesOnboardingWelcomeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24EFBEC14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesOnboardingWelcomeView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EFBE56C(v4, a1);
}

uint64_t objectdestroyTm_46()
{
  v1 = type metadata accessor for GamesOnboardingWelcomeView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 32);

  v3 = v1[10];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923E98();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24EFBEFA8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesOnboardingWelcomeView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EFBEA14(v4, a1);
}

double sub_24EFBF018@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesOnboardingWelcomeView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EFBEAB0(v4, a1);
}

uint64_t sub_24EFBF0A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EFBF100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EFBF15C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24EFBF1DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EFBF238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_24EFBF2B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359C0);
  sub_24E602068(&qword_27F2359C8, &qword_27F2359C0);
  return swift_getOpaqueTypeConformance2();
}

double sub_24EFBF368@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v4 = *(v1 + 5);
  v27[0] = *(v1 + 3);
  v27[1] = v4;
  v28 = *(v1 + 7);
  v5 = v1[9];
  v6 = *(v1 + 6);
  v30 = *(v1 + 5);
  v31 = v6;
  v24 = 0;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v25[0] = v27[0];
  v25[1] = v4;
  v25[2] = v28;
  *v26 = v5;
  *&v26[8] = v30;
  *&v26[24] = v6;
  *&v26[40] = v9;
  v20 = v28;
  v21 = *v26;
  v22 = *&v26[16];
  v23 = *&v26[32];
  v18 = v27[0];
  v19 = v4;
  v29 = v5;
  v32 = v9;
  swift_bridgeObjectRetain_n();

  sub_24EC2037C(v25, v17);
  sub_24EC20440(v27);

  LOBYTE(v9) = v24;
  sub_24F927628();
  sub_24F9242E8();
  *(a1 + 8) = v5;
  v10 = v21;
  *(a1 + 72) = v20;
  *(a1 + 88) = v10;
  v11 = v23;
  *(a1 + 104) = v22;
  *(a1 + 120) = v11;
  v12 = v19;
  *(a1 + 40) = v18;
  *(a1 + 56) = v12;
  v13 = v17[2];
  *(a1 + 184) = v17[3];
  v14 = v17[5];
  *(a1 + 200) = v17[4];
  *(a1 + 216) = v14;
  *(a1 + 232) = v17[6];
  result = *v17;
  v16 = v17[1];
  *(a1 + 136) = v17[0];
  *(a1 + 152) = v16;
  *a1 = v3;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 168) = v13;
  return result;
}

uint64_t sub_24EFBF544@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F926E08();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359E8);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F0);
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - v14;
  v15 = sub_24F924848();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 24);
  if (!v20)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v45 = *(v1 + 24);
  v46 = v6;
  v44 = *(v1 + 16);
  static SystemAppIcon.from(iconName:)(v44, v20, &v73);
  v21 = v73;
  if (v73 == 4)
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v42 = v4;
  v43 = v3;
  v78 = *(v1 + 8);
  v22 = *v1;
  v77 = *v1;
  if (v78 == 1)
  {
    v23 = v22;
  }

  else
  {

    sub_24F92BDC8();
    v41 = a1;
    v24 = sub_24F9257A8();
    a1 = v41;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v77, &qword_27F218208);
    (*(v16 + 8))(v19, v15);
    v23 = *v68;
  }

  v25 = *(v1 + 48);
  LOBYTE(v68[0]) = v21;
  if (!sub_24EFFE798(v68, 0, v25, v25, v23))
  {
    return (*(v53 + 56))(a1, 1, 1, v54, v17);
  }

  v41 = sub_24F926DE8();
  v27 = v47;
  v26 = v48;
  (*(v47 + 104))(v9, *MEMORY[0x277CE0FE0], v48);
  v28 = sub_24F926E88();
  (*(v27 + 8))(v9, v26);
  sub_24F927618();
  sub_24F9238C8();
  v71 = 1;
  *&v70[6] = v74;
  *&v70[22] = v75;
  *&v70[38] = v76;
  sub_24F9242E8();
  v29 = sub_24F925838();
  sub_24F923318();
  *(v57 + 2) = *v70;
  *(&v57[1] + 2) = *&v70[16];
  *(&v57[2] + 2) = *&v70[32];
  *(&v57[6] + 8) = v64;
  *(&v57[7] + 8) = v65;
  *(&v57[8] + 8) = v66;
  *(&v57[9] + 8) = v67;
  *(&v57[3] + 8) = v61;
  *(&v57[4] + 8) = v62;
  v72 = 0;
  v56 = v28;
  LOWORD(v57[0]) = 1;
  *&v57[3] = *&v70[46];
  *(&v57[5] + 8) = v63;
  BYTE8(v57[10]) = v29;
  *&v58 = v30;
  *(&v58 + 1) = v31;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2359F8);
  sub_24EFC15FC();
  v34 = v49;
  sub_24F9265E8();
  v68[12] = v58;
  v68[13] = v59;
  v69 = v60;
  v68[8] = v57[7];
  v68[9] = v57[8];
  v68[10] = v57[9];
  v68[11] = v57[10];
  v68[4] = v57[3];
  v68[5] = v57[4];
  v68[6] = v57[5];
  v68[7] = v57[6];
  v68[0] = v56;
  v68[1] = v57[0];
  v68[2] = v57[1];
  v68[3] = v57[2];
  sub_24E601704(v68, &qword_27F2359F8);
  v35 = v51;
  sub_24F923FE8();
  sub_24E601704(v34, &qword_27F2359E8);
  v56 = 0u;
  v57[0] = 0u;
  memset(v55, 0, sizeof(v55));
  v36 = v46;
  sub_24F9297A8();
  sub_24E601704(v55, &qword_27F2129B0);
  sub_24E601704(&v56, &qword_27F2129B0);
  sub_24EFC17A0();
  v37 = v50;
  sub_24F925EE8();

  (*(v42 + 8))(v36, v43);
  sub_24E601704(v35, &qword_27F2359E8);
  v39 = v53;
  v38 = v54;
  (*(v53 + 32))(a1, v37, v54);
  return (*(v39 + 56))(a1, 0, 1, v38);
}

uint64_t sub_24EFBFCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = sub_24F929888();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B78);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925988();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v8, v10, v12 & 1);

  *&v31 = v13;
  *(&v31 + 1) = v15;
  LOBYTE(v32) = v17 & 1;
  *(&v32 + 1) = v19;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17 & 1);

  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B80) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v21 = v26;
  v22 = &v7[*(v25 + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_24F9297A8();
  sub_24E601704(v30, &qword_27F2129B0);
  sub_24E601704(&v31, &qword_27F2129B0);
  sub_24EFC2198();
  sub_24F925EE8();
  (*(v27 + 8))(v21, v29);
  return sub_24E601704(v7, &qword_27F235B78);
}

uint64_t sub_24EFBFF94@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A30);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25[-v6 - 8];
  v8 = *(v1 + 88);
  if (v8)
  {
    v24 = v4;
    v9 = sub_24F924C98();
    v10 = *(v1 + 56);
    *v7 = v9;
    *(v7 + 1) = v10;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A38);
    v26 = sub_24F40715C(v8);
    swift_getKeyPath();
    v11 = swift_allocObject();
    v12 = *(v1 + 48);
    v11[3] = *(v1 + 32);
    v11[4] = v12;
    v13 = *(v1 + 80);
    v11[5] = *(v1 + 64);
    v11[6] = v13;
    v14 = *(v1 + 16);
    v11[1] = *v1;
    v11[2] = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_24EFC1894;
    *(v15 + 24) = v11;
    sub_24EC2037C(v1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A40);
    type metadata accessor for BulletsView.BulletView(0);
    sub_24E602068(&qword_27F235A48, &qword_27F235A40);
    sub_24EFBF0A0(&qword_27F235A50, type metadata accessor for BulletsView.BulletView);
    sub_24F927228();
    v16 = sub_24F925838();
    sub_24F923318();
    v17 = &v7[*(v3 + 36)];
    *v17 = v16;
    *(v17 + 1) = v18;
    *(v17 + 2) = v19;
    *(v17 + 3) = v20;
    *(v17 + 4) = v21;
    v17[40] = 0;
    sub_24EFC18F4(v7, a1);
    return (*(v24 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v23 = *(v4 + 56);

    return v23(a1, 1, 1, v3, v5);
  }
}

uint64_t sub_24EFC0298@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for BulletsView.BulletView(0);
  v12 = (a3 + v11[5]);
  *v12 = v6;
  v12[1] = v5;
  v13 = (a3 + v11[6]);
  *v13 = v8;
  v13[1] = v7;
  v14 = (a3 + v11[7]);
  *v14 = v10;
  v14[1] = v9;
  v15 = a3 + v11[8];
  v16 = *(a2 + 48);
  *(v15 + 2) = *(a2 + 32);
  *(v15 + 3) = v16;
  *(v15 + 4) = *(a2 + 64);
  *(v15 + 10) = *(a2 + 80);
  v17 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 1) = v17;
}

uint64_t sub_24EFC038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235AF8);
  MEMORY[0x28223BE20](v25[0]);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B00);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235AE8);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F769788(v14);
  v15 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = sub_24F924C98();
    v17 = *(a1 + *(type metadata accessor for BulletsView.BulletView(0) + 32) + 80);
    *v4 = v16;
    *(v4 + 1) = v17;
    v4[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B10);
    sub_24EFC0778(&v4[*(v18 + 44)]);
    v19 = &qword_27F235AF8;
    sub_24E60169C(v4, v7, &qword_27F235AF8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235AE0, &qword_27F235AE8);
    sub_24E602068(&qword_27F235AF0, &qword_27F235AF8);
    sub_24F924E28();
    v20 = v4;
  }

  else
  {
    v21 = sub_24F924988();
    v22 = *(a1 + *(type metadata accessor for BulletsView.BulletView(0) + 32) + 80);
    *v10 = v21;
    *(v10 + 1) = v22;
    v10[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B08);
    sub_24EFC0778(&v10[*(v23 + 44)]);
    v19 = &qword_27F235AE8;
    sub_24E60169C(v10, v7, &qword_27F235AE8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235AE0, &qword_27F235AE8);
    sub_24E602068(&qword_27F235AF0, &qword_27F235AF8);
    sub_24F924E28();
    v20 = v10;
  }

  return sub_24E601704(v20, v19);
}

uint64_t sub_24EFC0778@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B18);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B20);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  *v18 = sub_24F924C88();
  *(v18 + 1) = 0;
  v18[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B28);
  sub_24EFC0AB4(v2, v11);
  sub_24F923D58();
  sub_24EFC2010();
  sub_24F9265E8();
  sub_24E601704(v11, &qword_27F235B18);
  type metadata accessor for BulletsView.BulletView(0);
  sub_24F927618();
  sub_24F9238C8();
  v19 = &v18[*(v13 + 44)];
  v20 = v28;
  *v19 = v27;
  *(v19 + 1) = v20;
  *(v19 + 2) = v29;
  *v8 = sub_24F924C98();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B10);
  sub_24EFC104C(v2, &v8[*(v21 + 44)]);
  sub_24E60169C(v18, v15, &qword_27F235B20);
  sub_24E60169C(v8, v5, &qword_27F220B08);
  v22 = v26;
  sub_24E60169C(v15, v26, &qword_27F235B20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B68);
  sub_24E60169C(v5, v22 + *(v23 + 48), &qword_27F220B08);
  sub_24E601704(v8, &qword_27F220B08);
  sub_24E601704(v18, &qword_27F235B20);
  sub_24E601704(v5, &qword_27F220B08);
  return sub_24E601704(v15, &qword_27F235B20);
}

uint64_t sub_24EFC0AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223948);
  MEMORY[0x28223BE20](v31[0]);
  v10 = (v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235B70);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = sub_24F926E08();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (a1 + *(type metadata accessor for BulletsView.BulletView(0) + 20));
  if (*v18 == 0x732E322E7473696CLL && v18[1] == 0xEB00000000726174 || (sub_24F92CE08() & 1) != 0)
  {
    sub_24F926E98();
    (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
    v19 = sub_24F926E88();

    (*(v15 + 8))(v17, v14);
    *v13 = v19;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    sub_24E6E97A8();
    sub_24E99EB08();
    return sub_24F924E28();
  }

  else
  {

    sub_24F926E48();
    sub_24F924CF8();
    v21 = sub_24F924D08();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
    v22 = sub_24F926E58();

    sub_24E601704(v8, &qword_27F214410);
    v23 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20) + 36));
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v25 = *MEMORY[0x277CE1050];
    v26 = sub_24F926E78();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    *v10 = v22;
    v27 = sub_24F925908();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = sub_24F925968();
    sub_24E601704(v5, &qword_27F214698);
    KeyPath = swift_getKeyPath();
    v30 = (v10 + *(v31[0] + 36));
    *v30 = KeyPath;
    v30[1] = v28;
    sub_24E60169C(v10, v13, &qword_27F223948);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    sub_24E6E97A8();
    sub_24E99EB08();
    sub_24F924E28();
    return sub_24E601704(v10, &qword_27F223948);
  }
}

uint64_t sub_24EFC104C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v47 = a1;
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v45 - v6;
  v46 = type metadata accessor for BulletsView.BulletView(0);
  v7 = (v2 + *(v46 + 24));
  v8 = v7[1];
  v53 = *v7;
  v54 = v8;
  v45[1] = sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  sub_24F9258D8();
  v14 = sub_24F925C98();
  v16 = v15;
  LOBYTE(v2) = v17;
  v19 = v18;

  sub_24E600B40(v9, v11, v13 & 1);

  v53 = v14;
  v54 = v16;
  LOBYTE(v2) = v2 & 1;
  v55 = v2;
  v56 = v19;
  sub_24F9268B8();
  sub_24E600B40(v14, v16, v2);

  v20 = (v47 + *(v46 + 28));
  v21 = v20[1];
  v53 = *v20;
  v54 = v21;

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  sub_24F9258D8();
  v27 = sub_24F925C98();
  v29 = v28;
  LOBYTE(v11) = v30;

  sub_24E600B40(v22, v24, v26 & 1);

  LODWORD(v53) = sub_24F9251C8();
  v31 = sub_24F925C58();
  v33 = v32;
  LOBYTE(v22) = v34;
  v47 = v35;
  sub_24E600B40(v27, v29, v11 & 1);

  v36 = v49;
  v37 = v50;
  v38 = *(v50 + 16);
  v39 = v48;
  v40 = v51;
  v38(v49, v48, v51);
  v41 = v52;
  v38(v52, v36, v40);
  v42 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B50) + 48)];
  *v42 = v31;
  *(v42 + 1) = v33;
  LOBYTE(v22) = v22 & 1;
  v42[16] = v22;
  *(v42 + 3) = v47;
  sub_24E5FD138(v31, v33, v22);
  v43 = *(v37 + 8);

  v43(v39, v40);
  sub_24E600B40(v31, v33, v22);

  return (v43)(v36, v40);
}

uint64_t sub_24EFC13E8()
{
  v1 = sub_24F925508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235AC0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24EFC038C(v0, &v9 - v6);
  sub_24F9254E8();
  sub_24EFC1EB0(&qword_27F235AC8, &qword_27F235AC0, &unk_24F9B92A0, sub_24EFC1F2C);
  sub_24F926678();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F235AC0);
}

unint64_t sub_24EFC15FC()
{
  result = qword_27F235A00;
  if (!qword_27F235A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359F8);
    sub_24EFC1688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A00);
  }

  return result;
}

unint64_t sub_24EFC1688()
{
  result = qword_27F235A08;
  if (!qword_27F235A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A10);
    sub_24EFC1714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A08);
  }

  return result;
}

unint64_t sub_24EFC1714()
{
  result = qword_27F235A18;
  if (!qword_27F235A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A20);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A18);
  }

  return result;
}

unint64_t sub_24EFC17A0()
{
  result = qword_27F235A28;
  if (!qword_27F235A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359E8);
    sub_24EFC15FC();
    sub_24EFBF0A0(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A28);
  }

  return result;
}

uint64_t sub_24EFC185C()
{

  return swift_deallocObject();
}

uint64_t sub_24EFC189C()
{

  return swift_deallocObject();
}

uint64_t sub_24EFC18F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFC1988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EFC1A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EFC1B30()
{
  sub_24E6CAF48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24EFC1BBC()
{
  result = qword_27F235A68;
  if (!qword_27F235A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A70);
    sub_24E602068(&qword_27F235A78, &qword_27F235A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A68);
  }

  return result;
}

unint64_t sub_24EFC1C78()
{
  result = qword_27F235A88;
  if (!qword_27F235A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2359E8);
    sub_24EFC17A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A88);
  }

  return result;
}

unint64_t sub_24EFC1D3C()
{
  result = qword_27F235A98;
  if (!qword_27F235A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235AA0);
    sub_24EFC1DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235A98);
  }

  return result;
}

unint64_t sub_24EFC1DC0()
{
  result = qword_27F235AA8;
  if (!qword_27F235AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235A30);
    sub_24E602068(&qword_27F235AB0, &qword_27F235AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235AA8);
  }

  return result;
}

uint64_t sub_24EFC1EB0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EFC1F2C()
{
  result = qword_27F235AD0;
  if (!qword_27F235AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235AD8);
    sub_24E602068(&qword_27F235AE0, &qword_27F235AE8);
    sub_24E602068(&qword_27F235AF0, &qword_27F235AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235AD0);
  }

  return result;
}

unint64_t sub_24EFC2010()
{
  result = qword_27F235B30;
  if (!qword_27F235B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B18);
    sub_24EFC1EB0(&qword_27F235B38, &qword_27F235B40, &unk_24F9B92F8, sub_24EFC20F4);
    sub_24E602068(&qword_27F235B58, &qword_27F235B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B30);
  }

  return result;
}

unint64_t sub_24EFC20F4()
{
  result = qword_27F235B48;
  if (!qword_27F235B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B50);
    sub_24E6E97A8();
    sub_24E99EB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B48);
  }

  return result;
}

unint64_t sub_24EFC2198()
{
  result = qword_27F235B88;
  if (!qword_27F235B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B78);
    sub_24EFC2250();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B88);
  }

  return result;
}

unint64_t sub_24EFC2250()
{
  result = qword_27F235B90;
  if (!qword_27F235B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B80);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235B90);
  }

  return result;
}

uint64_t sub_24EFC230C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235AC0);
  sub_24EFC1EB0(&qword_27F235AC8, &qword_27F235AC0, &unk_24F9B92A0, sub_24EFC1F2C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EFC23A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235B78);
  sub_24EFC2198();
  return swift_getOpaqueTypeConformance2();
}

GameStoreKit::MixedMediaLockup::LockupPosition_optional __swiftcall MixedMediaLockup.LockupPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MixedMediaLockup.LockupPosition.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_24EFC24FC@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

uint64_t MixedMediaLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v73 = sub_24F9285B8();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - v13;
  MEMORY[0x28223BE20](v14);
  v62 = &v60 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = sub_24F92AC28();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v60 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v72 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v65 = v10;
  v28 = *(v10 + 8);
  v68 = v10 + 8;
  v69 = v9;
  v67 = v28;
  v28(v21, v9);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_24E601704(v8, &qword_27F2213B0);
    type metadata accessor for Trailers();
    sub_24F928398();
    v75 = *(v71 + 16);
    v76 = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = v61;
    v30 = v73;
    v75(v61, v74);
    sub_24EFC3180(&qword_27F235B98, type metadata accessor for Trailers);
    sub_24F929548();
    v31 = v77;
    if (v77)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24F941C80;
      *(v32 + 32) = v31;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    v33 = v74;
  }

  else
  {
    (*(v23 + 32))(v27, v8, v22);
    (*(v23 + 16))(v60, v27, v22);
    v75 = *(v71 + 16);
    v76 = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = v61;
    v30 = v73;
    v33 = v74;
    (v75)(v61, v74, v73);
    type metadata accessor for Trailers();
    sub_24EFC3180(&qword_27F235B98, type metadata accessor for Trailers);
    v34 = sub_24F92B6A8();
    v35 = v27;
    v32 = v34;
    (*(v23 + 8))(v35, v22);
  }

  *(v70 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers) = v32;
  type metadata accessor for Artwork();
  sub_24F928398();
  v36 = v75;
  (v75)(v29, v33, v30);
  v37 = v33;
  sub_24EFC3180(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v38 = v70;
  *(v70 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionArtwork) = v77;
  type metadata accessor for Video();
  sub_24F928398();
  v36(v29, v37, v30);
  v75 = v36;
  sub_24EFC3180(&qword_27F221590, type metadata accessor for Video);
  sub_24F929548();
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionVideo) = v77;
  sub_24F928398();
  v39 = v74;
  v36(v29, v74, v30);
  type metadata accessor for Screenshots();
  sub_24EFC3180(&qword_27F2273E0, type metadata accessor for Screenshots);
  v40 = v38;
  *(v38 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots) = sub_24F92B698();
  sub_24F928398();
  sub_24EFC3024();
  sub_24F928248();
  v41 = v69;
  v42 = v67;
  v67(v18, v69);
  *(v40 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_overrideLockupPosition) = v77;
  sub_24F928398();
  sub_24EFC3078();
  sub_24F928208();
  v42(v18, v41);
  *(v40 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v77;
  v43 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235BB0);
  sub_24F928398();
  v44 = v73;
  v45 = v75;
  (v75)(v29, v39, v73);
  v61 = sub_24EFC30CC();
  sub_24F929548();
  *(v43 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_metadataRibbonItems) = v77;
  sub_24F928398();
  v45(v29, v39, v44);
  v46 = v69;
  v47 = v72;
  sub_24F929548();
  v48 = v43;
  v49 = v67;
  *(v48 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_searchTagRibbonItems) = v77;
  v50 = v62;
  sub_24F928398();
  v51 = sub_24F928278();
  v49(v50, v46);
  *(v48 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = (v51 == 2) | v51 & 1;
  v52 = v63;
  sub_24F928398();
  v53 = sub_24F928278();
  v49(v52, v46);
  *(v48 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v53 & 1;
  v54 = v64;
  (*(v65 + 16))(v64, v47, v46);
  v55 = v66;
  v57 = v73;
  v56 = v74;
  (v75)(v66, v74, v73);
  v58 = Lockup.init(deserializing:using:)(v54, v55);
  (*(v71 + 8))(v56, v57);
  v49(v47, v46);
  return v58;
}

unint64_t sub_24EFC3024()
{
  result = qword_27F235BA0;
  if (!qword_27F235BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BA0);
  }

  return result;
}

unint64_t sub_24EFC3078()
{
  result = qword_27F235BA8;
  if (!qword_27F235BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BA8);
  }

  return result;
}

unint64_t sub_24EFC30CC()
{
  result = qword_27F235BB8;
  if (!qword_27F235BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235BB0);
    sub_24EFC3180(&qword_27F235BC0, type metadata accessor for MetadataRibbonItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BB8);
  }

  return result;
}

uint64_t sub_24EFC3180(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MixedMediaLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 a38)
{
  v93 = a8;
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v87 = a4;
  v85 = a3;
  v83 = a2;
  v74 = a28;
  v100 = a25;
  v101 = a26;
  v99 = a24;
  v97 = a27;
  v98 = a23;
  v96 = a22;
  v94 = a21;
  v79 = a20;
  v78 = a19;
  v95 = a18;
  v88 = a17;
  v86 = a16;
  v84 = a15;
  v82 = a14;
  v92 = a13;
  v81 = a12;
  v80 = a11;
  v77 = a10;
  v76 = a9;
  v73 = a38;
  v72 = a37;
  v71 = a36;
  v70 = a35;
  v69 = sub_24F91F6B8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v40 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v68 - v42;
  v44 = swift_allocObject();
  v45 = *a1;
  v46 = a1[1];
  v75 = v45;
  LOBYTE(v45) = *a29;
  v47 = *a34;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionArtwork) = a30;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionVideo) = a31;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers) = a32;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots) = a33;
  v48 = v74;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_overrideLockupPosition) = v45;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v47;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_metadataRibbonItems) = v70;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_searchTagRibbonItems) = v71;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = v72;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v73;
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  sub_24E60169C(v48, v43, &qword_27F213E68);
  *(v44 + 424) = 4;
  sub_24E60169C(v107, &v104, &qword_27F235830);
  if (*(&v105 + 1))
  {
    v49 = v105;
    *(v44 + 448) = v104;
    *(v44 + 464) = v49;
    *(v44 + 480) = v106;
  }

  else
  {

    sub_24F91F6A8();
    v50 = v46;
    v51 = sub_24F91F668();
    v53 = v52;
    (*(v68 + 8))(v40, v69);
    v102 = v51;
    v103 = v53;
    v46 = v50;
    sub_24F92C7F8();
    sub_24E601704(&v104, &qword_27F235830);
  }

  sub_24E60169C(v43, v44 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);

  *(v44 + 16) = v75;
  *(v44 + 24) = v46;
  v54 = v85;
  *(v44 + 32) = v83;
  *(v44 + 40) = v54;
  *(v44 + 48) = v87;
  *(v44 + 56) = 0;
  v55 = v79;
  *(v44 + 64) = v78;
  *(v44 + 72) = v55;
  v56 = v90;
  *(v44 + 80) = v89;
  *(v44 + 88) = v56;
  v57 = v93;
  *(v44 + 96) = v91;
  *(v44 + 104) = v57;
  v58 = v77;
  *(v44 + 112) = v76;
  *(v44 + 120) = v58;
  *(v44 + 128) = 0;
  *(v44 + 136) = 2;
  v59 = v81;
  *(v44 + 144) = v80;
  *(v44 + 152) = v59;
  v60 = v84;
  *(v44 + 192) = v82;
  *(v44 + 200) = v60;
  v61 = v88;
  *(v44 + 208) = v86;
  *(v44 + 216) = v61;
  *(v44 + 376) = 0u;
  *(v44 + 392) = 0u;
  *(v44 + 408) = 0x8000;
  *(v44 + 360) = v97;
  *(v44 + 416) = 0;
  *(v44 + 432) = MEMORY[0x277D84FA0];
  v62 = v96;
  *(v44 + 160) = v94;
  *(v44 + 168) = v62;
  v63 = v92;
  *(v44 + 176) = v98;
  *(v44 + 184) = v63;
  v65 = v99;
  v64 = v100;
  *(v44 + 224) = v95;
  *(v44 + 232) = v65;
  *(v44 + 240) = v64;
  *(v44 + 248) = 0;
  v66 = v101;
  *(v44 + 256) = 0;
  *(v44 + 264) = v66;
  *(v44 + 272) = 0u;
  *(v44 + 288) = 0u;
  *(v44 + 304) = 0u;
  *(v44 + 320) = 0u;
  *(v44 + 336) = 0;
  sub_24E601704(v48, &qword_27F213E68);
  sub_24E601704(v43, &qword_27F213E68);
  sub_24E601704(v107, &qword_27F235830);
  *(v44 + 344) = MEMORY[0x277D84F90];
  *(v44 + 352) = 0;
  *(v44 + 440) = 0;
  *(v44 + 368) = 0;
  return v44;
}

uint64_t MixedMediaLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 a38)
{
  v39 = v38;
  v93 = a8;
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v87 = a4;
  v85 = a3;
  v83 = a2;
  v71 = a28;
  v97 = a27;
  v100 = a25;
  v101 = a26;
  v99 = a24;
  v98 = a23;
  v96 = a22;
  v94 = a21;
  v79 = a20;
  v78 = a19;
  v95 = a18;
  v88 = a17;
  v86 = a16;
  v84 = a15;
  v82 = a14;
  v92 = a13;
  v81 = a12;
  v80 = a11;
  v77 = a10;
  v76 = a9;
  v74 = a38;
  v73 = a37;
  v72 = a36;
  v70 = a35;
  v69 = sub_24F91F6B8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v42 = &v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v68 - v44;
  v46 = *a1;
  v47 = a1[1];
  v75 = v46;
  LOBYTE(v46) = *a29;
  v48 = v71;
  v49 = *a34;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionArtwork) = a30;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_alignedRegionVideo) = a31;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers) = a32;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots) = a33;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_overrideLockupPosition) = v46;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v49;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_metadataRibbonItems) = v70;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_searchTagRibbonItems) = v72;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = v73;
  *(v39 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v74;
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  sub_24E60169C(v48, v45, &qword_27F213E68);
  *(v39 + 424) = 4;
  sub_24E60169C(v110, &v104, &qword_27F235830);
  if (*(&v105 + 1))
  {
    v107 = v104;
    v108 = v105;
    v109 = v106;
  }

  else
  {

    sub_24F91F6A8();
    v50 = sub_24F91F668();
    v52 = v51;
    (*(v68 + 8))(v42, v69);
    v102 = v50;
    v103 = v52;
    sub_24F92C7F8();
    sub_24E601704(&v104, &qword_27F235830);
  }

  v53 = v108;
  *(v39 + 448) = v107;
  *(v39 + 464) = v53;
  *(v39 + 480) = v109;
  sub_24E60169C(v45, v39 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  *(v39 + 16) = v75;
  *(v39 + 24) = v47;
  v54 = v85;
  *(v39 + 32) = v83;
  *(v39 + 40) = v54;
  *(v39 + 48) = v87;
  *(v39 + 56) = 0;
  v55 = v79;
  *(v39 + 64) = v78;
  *(v39 + 72) = v55;
  v56 = v90;
  *(v39 + 80) = v89;
  *(v39 + 88) = v56;
  v57 = v93;
  *(v39 + 96) = v91;
  *(v39 + 104) = v57;
  v58 = v77;
  *(v39 + 112) = v76;
  *(v39 + 120) = v58;
  *(v39 + 128) = 0;
  *(v39 + 136) = 2;
  v59 = v81;
  *(v39 + 144) = v80;
  *(v39 + 152) = v59;
  v60 = v84;
  *(v39 + 192) = v82;
  *(v39 + 200) = v60;
  v61 = v88;
  *(v39 + 208) = v86;
  *(v39 + 216) = v61;
  *(v39 + 376) = 0u;
  *(v39 + 392) = 0u;
  *(v39 + 408) = 0x8000;
  *(v39 + 360) = v97;
  *(v39 + 416) = 0;
  *(v39 + 432) = MEMORY[0x277D84FA0];
  v62 = v96;
  *(v39 + 160) = v94;
  *(v39 + 168) = v62;
  v63 = v92;
  *(v39 + 176) = v98;
  *(v39 + 184) = v63;
  v65 = v99;
  v64 = v100;
  *(v39 + 224) = v95;
  *(v39 + 232) = v65;
  *(v39 + 240) = v64;
  *(v39 + 248) = 0;
  v66 = v101;
  *(v39 + 256) = 0;
  *(v39 + 264) = v66;
  *(v39 + 272) = 0u;
  *(v39 + 288) = 0u;
  *(v39 + 304) = 0u;
  *(v39 + 320) = 0u;
  *(v39 + 336) = 0;

  sub_24E601704(v48, &qword_27F213E68);
  sub_24E601704(v45, &qword_27F213E68);
  sub_24E601704(v110, &qword_27F235830);
  *(v39 + 344) = MEMORY[0x277D84F90];
  *(v39 + 352) = 0;
  *(v39 + 440) = 0;
  *(v39 + 368) = 0;
  return v39;
}

uint64_t sub_24EFC3E78()
{
}

uint64_t MixedMediaLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t MixedMediaLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EFC405C()
{
  result = qword_27F235BC8;
  if (!qword_27F235BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235BC8);
  }

  return result;
}

uint64_t type metadata accessor for MixedMediaLockup()
{
  result = qword_27F235BD0;
  if (!qword_27F235BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchAction.searchRequest(facetsPresenter:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F6B8();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8))
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
    v39 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
    v40 = v5;
  }

  else
  {
    v39 = 0xE000000000000000;
    v40 = 0;
  }

  v38 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  v36 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source + 8);
  v37 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658);
  sub_24F92BF18();
  v35 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v43);

  v34 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity);
  v33 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled);
  v28 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm + 8);
  v32 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  v27 = v7;
  v29 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens);
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData);
  v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8);
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16);
  v10 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24);
  v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32);
  v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm + 8);
  v30 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v14 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 40);

  sub_24EA145F0(v9, v8, v11, v10, v12, v14);

  v15 = v31;
  sub_24F91F6A8();
  v16 = sub_24F91F668();
  v17 = v15;
  v19 = v18;
  result = (*(v41 + 8))(v17, v42);
  *a1 = v16;
  *(a1 + 8) = v19;
  v21 = v39;
  *(a1 + 16) = v40;
  *(a1 + 24) = v21;
  *(a1 + 32) = v38;
  v22 = v36;
  *(a1 + 40) = v37;
  *(a1 + 48) = v22;
  *(a1 + 56) = v35;
  LOBYTE(v22) = v33;
  *(a1 + 64) = v34;
  *(a1 + 65) = 0;
  *(a1 + 66) = v22;
  v23 = v32;
  *(a1 + 72) = v28;
  *(a1 + 80) = v23;
  v25 = v29;
  v24 = v30;
  *(a1 + 88) = v27;
  *(a1 + 96) = v25;
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  *(a1 + 120) = v11;
  *(a1 + 128) = v10;
  *(a1 + 136) = v12;
  *(a1 + 144) = v14;
  *(a1 + 152) = v24;
  *(a1 + 160) = v13;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_24EFC45FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EFC4670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EFC46E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__availableProfiles;
  v36 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C20);
  sub_24F923058();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__selectedProfile;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C30);
  sub_24F923058();
  (*(v3 + 32))(v1 + v11, v5, v2);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_availableProfilesObservation) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_selectedProfileObservation) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller) = 0;
  v13 = [objc_opt_self() current];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 extendedGamepad];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *(v1 + v12);
  *(v1 + v12) = v14;

  v18 = [objc_allocWithZone(MEMORY[0x277CCB098]) init];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) = v18;
  [v18 setController_];
  v19 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings;
  v20 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) availableProfiles];
  sub_24E69A5C4(0, &qword_27F235C50);
  v21 = sub_24F92B5A8();

  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v21;

  sub_24F9230A8();
  v22 = [*(v1 + v19) selectedProfile];
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v22;

  sub_24F9230A8();
  v36 = *(v1 + v19);
  v23 = v36;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();

  v24 = v23;
  v25 = sub_24F91F318();

  v26 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_availableProfilesObservation);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_availableProfilesObservation) = v25;

  v36 = *(v1 + v19);
  v27 = v36;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v28 = v27;

  v29 = sub_24F91F318();

  v30 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_selectedProfileObservation);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_selectedProfileObservation) = v29;

  v31 = objc_opt_self();
  v32 = [v31 defaultCenter];
  [v32 addObserver:v1 selector:sel_handleControllerDidBecomeCurrent_ name:*MEMORY[0x277CCAF48] object:0];

  v33 = [v31 defaultCenter];
  [v33 addObserver:v1 selector:sel_handleControllerDidStopBeingCurrent_ name:*MEMORY[0x277CCAF50] object:0];

  return v1;
}

void sub_24EFC4C50(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 availableProfiles];
  sub_24E69A5C4(0, &qword_27F235C50);
  v4 = sub_24F92B5A8();

  *a2 = v4;
}

uint64_t sub_24EFC4CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_24F927D88();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C60);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_24E69A5C4(0, &qword_27F222300);
  v14 = sub_24F92BEF8();
  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_24EFCBDF8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_49_1;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EFCC2E8(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  return (*(v20 + 8))(v9, v21);
}

uint64_t sub_24EFC5090()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C60);
    sub_24F91F2E8();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

uint64_t sub_24EFC514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_24F927D88();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_24E69A5C4(0, &qword_27F222300);
  v14 = sub_24F92BEF8();
  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_24EFCBCE4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_98;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EFCC2E8(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  return (*(v20 + 8))(v9, v21);
}

uint64_t sub_24EFC5518()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C58);
    sub_24F91F2E8();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

void sub_24EFC55CC()
{
  v1 = v0;
  sub_24F91EB38();
  if (v6)
  {
    sub_24E69A5C4(0, &qword_27F235C38);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller);
      *(v0 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller) = v4;
      v3 = v4;

      [*(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) setController_];
    }
  }

  else
  {
    sub_24E601704(v5, &qword_27F2129B0);
  }
}

void sub_24EFC56C8()
{
  v1 = v0;
  sub_24F91EB38();
  if (v10)
  {
    sub_24E69A5C4(0, &qword_27F235C38);
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller;
      v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_controller);
      if (v3)
      {
        v4 = v8;
        v5 = v3;
        v6 = sub_24F92C408();

        if (v6)
        {
          v7 = *(v1 + v2);
          *(v1 + v2) = 0;

          [*(v1 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) setController_];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_24E601704(v9, &qword_27F2129B0);
  }
}

uint64_t sub_24EFC57FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_24F91EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EFC58F4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__availableProfiles;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver__selectedProfile;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_24EFC5A50()
{
  sub_24EFCC1F0(319, &qword_27F235C18, &qword_27F235C20, &unk_24F9B95A0, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_24EFCC1F0(319, &qword_27F235C28, &qword_27F235C30, &unk_24F9B95A8, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EFC5B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923418();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24EFC5D8C()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for OverlayGameControllerControls(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_24EFC5EE4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for OverlayGameControllerControls(0) + 24);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_24EFC6058@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GCOverlaySettingsObserver(0);
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24EFC6098()
{
  type metadata accessor for GCOverlaySettingsObserver(0);
  v0 = swift_allocObject();
  sub_24EFC46E4();
  return v0;
}

id sub_24EFC60D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24E601704(v2, &qword_27F228530);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_24F91F3B8();
    [v8 openSensitiveURL:v9 withOptions:0];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24EFC62B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24E601704(v2, &qword_27F228530);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_24F91F3B8();
    [v8 openSensitiveURL:v9 withOptions:0];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EFC649C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = sub_24F924988();
  v21 = 1;
  sub_24EFC6778(a1, &v32);
  v24 = *&v33[16];
  v25 = *&v33[32];
  v26 = *&v33[48];
  v27 = *&v33[64];
  v22 = v32;
  v23 = *v33;
  v29 = *&v33[64];
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[0] = v32;
  v28[1] = *v33;
  sub_24E60169C(&v22, v30, &qword_27F235DC8);
  sub_24E601704(v28, &qword_27F235DC8);
  *(&v20[2] + 7) = v24;
  *(&v20[3] + 7) = v25;
  *(&v20[4] + 7) = v26;
  *(&v20[5] + 7) = v27;
  *(v20 + 7) = v22;
  *(&v20[1] + 7) = v23;
  LOBYTE(a1) = v21;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DD0);
  sub_24EFC6A04(v19, &v9[*(v11 + 44)]);
  sub_24E60169C(v9, v6, &qword_27F235DC0);
  v30[0] = v10;
  v30[1] = 0;
  LOBYTE(v31[0]) = a1;
  *(v31 + 1) = v20[0];
  *(&v31[1] + 1) = v20[1];
  *(&v31[4] + 1) = v20[4];
  *(&v31[3] + 1) = v20[3];
  *(&v31[2] + 1) = v20[2];
  v31[5] = *(&v20[4] + 15);
  v12 = v31[0];
  *a2 = v10;
  a2[1] = v12;
  v13 = v31[1];
  v14 = v31[2];
  v15 = v31[5];
  a2[5] = v31[4];
  a2[6] = v15;
  v16 = v31[3];
  a2[3] = v14;
  a2[4] = v16;
  a2[2] = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DD8);
  sub_24E60169C(v6, a2 + *(v17 + 48), &qword_27F235DC0);
  sub_24E60169C(v30, &v32, &qword_27F235DE0);
  sub_24E601704(v9, &qword_27F235DC0);
  sub_24E601704(v6, &qword_27F235DC0);
  *&v33[33] = v20[2];
  *&v33[49] = v20[3];
  *&v33[65] = v20[4];
  *&v33[80] = *(&v20[4] + 15);
  *&v33[1] = v20[0];
  v32 = v10;
  v33[0] = a1;
  *&v33[17] = v20[1];
  return sub_24E601704(&v32, &qword_27F235DE0);
}

uint64_t sub_24EFC6778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92B088();
  v6 = [a1 vendorName];
  if (v6)
  {
    v7 = v6;
    sub_24F92B0D8();
  }

  else
  {
    sub_24F92B018();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v8 = qword_27F24F280;
    sub_24F91F778();
    sub_24F92B148();
  }

  sub_24E600AEC();
  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  KeyPath = swift_getKeyPath();
  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v17 = qword_27F39D2D8;
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v18;
  *(a2 + 64) = v17;
  *(a2 + 72) = v19;
  *(a2 + 80) = 0x3FE999999999999ALL;
}

uint64_t sub_24EFC6A04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v134 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DE8) - 8;
  MEMORY[0x28223BE20](v133);
  v124 = &v101 - v3;
  v4 = sub_24F9241F8();
  v5 = *(v4 - 8);
  v129 = v4;
  v130 = v5;
  MEMORY[0x28223BE20](v4);
  v125 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_24F923DF8();
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24F923418();
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v104 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OverlayGameControllerControls(0);
  v107 = *(v9 - 8);
  v135 = *(v107 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DF0);
  MEMORY[0x28223BE20](v106);
  v13 = &v101 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DF8);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v136 = &v101 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E00);
  v118 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v111 = &v101 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E08);
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v112 = &v101 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E10);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v101 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E18);
  MEMORY[0x28223BE20](v127);
  v109 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E20);
  v131 = *(v19 - 8);
  v132 = v19;
  MEMORY[0x28223BE20](v19);
  v128 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v126 = &v101 - v22;
  v138 = a1;
  v137 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E30);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E38);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E40);
  v26 = sub_24EFCCB44();
  v140 = v25;
  v141 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_24EFCC404();
  v140 = v23;
  v141 = v24;
  v142 = OpaqueTypeConformance2;
  v143 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F235E80, &qword_27F235E30);
  v102 = v13;
  sub_24F925AB8();
  sub_24EFCC4A4(a1, v11);
  v29 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v30 = swift_allocObject();
  v31 = v11;
  sub_24EFCC508(v11, v30 + v29);
  v32 = v106;
  v33 = &v13[*(v106 + 36)];
  *v33 = sub_24EFCCF38;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  v34 = v104;
  v103 = a1;
  sub_24EFC5B8C(v104);
  sub_24EFCC4A4(a1, v31);
  v35 = swift_allocObject();
  sub_24EFCC508(v31, v35 + v29);
  v36 = sub_24EFCD018();
  v37 = sub_24EFCC2E8(&qword_27F235EA0, MEMORY[0x277CDD6C8]);
  v38 = v34;
  v39 = v32;
  v40 = v113;
  v41 = v102;
  sub_24F926AB8();

  (*(v114 + 8))(v38, v40);
  sub_24E601704(v41, &qword_27F235DF0);
  v42 = v103;
  v139 = sub_24EFC5D8C() & 1;
  sub_24EFCC4A4(v42, v31);
  v43 = v105;
  v44 = swift_allocObject();
  sub_24EFCC508(v31, v44 + v29);
  v140 = v39;
  v141 = v40;
  v142 = v36;
  v143 = v37;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = MEMORY[0x277D839B0];
  v47 = MEMORY[0x277D839C8];
  v48 = v111;
  v49 = v115;
  v50 = v136;
  sub_24F926AB8();

  (*(v116 + 8))(v50, v49);
  v51 = v121;
  sub_24F923DE8();
  v140 = v49;
  v141 = v46;
  v52 = v124;
  v142 = v45;
  v143 = v47;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_24EFCC2E8(&qword_27F230BA8, MEMORY[0x277CDD9E0]);
  v55 = v112;
  v56 = v117;
  v57 = v122;
  v58 = v48;
  v59 = v109;
  sub_24F926BB8();
  v60 = v51;
  v61 = v57;
  (*(v123 + 8))(v60, v57);
  (*(v118 + 8))(v58, v56);
  v62 = v125;
  sub_24F9241E8();
  v140 = v56;
  v141 = v61;
  v142 = v53;
  v143 = v54;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC2E8(&qword_27F212838, MEMORY[0x277CDDB18]);
  v63 = v119;
  v64 = v129;
  sub_24F926178();
  (*(v130 + 8))(v62, v64);
  (*(v120 + 8))(v55, v63);
  v65 = *(sub_24F924258() + 20);
  v66 = *MEMORY[0x277CE0118];
  v67 = sub_24F924B38();
  (*(*(v67 - 8) + 104))(&v52[v65], v66, v67);
  __asm { FMOV            V0.2D, #5.0 }

  *v52 = _Q0;
  *&v52[*(sub_24F924248() + 20)] = 0xC010000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v73 = sub_24F926D08();

  *&v52[*(v133 + 60)] = v73;
  sub_24E60169C(v52, v59, &qword_27F235DE8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EA8);
  v75 = v108;
  v76 = v110;
  (*(v108 + 16))(v59 + v74[9], v43);
  v77 = v59 + v74[10];
  *v77 = sub_24F923398() & 1;
  *(v77 + 8) = v78;
  *(v77 + 16) = v79 & 1;
  v80 = v59 + v74[11];
  *v80 = swift_getKeyPath();
  *(v80 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v81 = qword_27F24E488;
  v82 = sub_24F923398();
  v84 = v83;
  v86 = v85;
  v87 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EB0) + 36);
  *v87 = v81;
  *(v87 + 8) = v82 & 1;
  *(v87 + 16) = v84;
  *(v87 + 24) = v86 & 1;
  LOBYTE(v81) = sub_24F923398();
  v89 = v88;
  LOBYTE(v84) = v90;
  sub_24E601704(v52, &qword_27F235DE8);
  (*(v75 + 8))(v43, v76);
  v91 = v59 + *(v127 + 36);
  *v91 = v81 & 1;
  *(v91 + 8) = v89;
  *(v91 + 16) = v84 & 1;
  sub_24EFCC920(&qword_27F235EB8, &qword_27F235E18, &unk_24F9B99F8, sub_24EFCD150);
  v92 = v126;
  sub_24F926888();
  sub_24E601704(v59, &qword_27F235E18);
  v94 = v131;
  v93 = v132;
  v95 = *(v131 + 16);
  v96 = v128;
  v95(v128, v92, v132);
  v97 = v134;
  v95(v134, v96, v93);
  v98 = &v97[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED0) + 48)];
  *v98 = 0;
  v98[8] = 1;
  v99 = *(v94 + 8);
  v99(v92, v93);
  return (v99)(v96, v93);
}

uint64_t sub_24EFC794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08);
  v76 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EE0);
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = &v62 - v11;
  v68 = sub_24F9271F8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v62 - v14;
  v15 = type metadata accessor for OverlayGameControllerControls(0);
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = v16;
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EE8);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v79 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EF0);
  MEMORY[0x28223BE20](v21 - 8);
  v71 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v62 - v24;
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v86)
  {

    sub_24F923628();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    swift_getKeyPath();
    v63 = a1;
    v62 = v17;
    sub_24EFCC4A4(a1, v17);
    v25 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v26 = swift_allocObject();
    sub_24EFCC508(v17, v26 + v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C20);
    sub_24E602068(&qword_27F235F00, &qword_27F235C20);
    sub_24EFCD310();
    sub_24E602068(&qword_27F222D00, &qword_27F222D08);
    v27 = v78;
    sub_24F927228();
    v28 = v80;
    sub_24F9271E8();
    v29 = v64;
    v30 = *(v64 + 16);
    v31 = v79;
    v32 = v27;
    v33 = v65;
    v30(v79, v32, v65);
    v34 = v67;
    v35 = *(v67 + 16);
    v36 = v66;
    v37 = v28;
    v38 = v68;
    v35(v66, v37, v68);
    v30(v81, v31, v33);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F10);
    v40 = v81;
    v35(&v81[*(v39 + 48)], v36, v38);
    v41 = *(v34 + 8);
    v41(v80, v38);
    v42 = *(v29 + 8);
    v42(v78, v33);
    v41(v36, v38);
    v42(v79, v33);
    v43 = v85;
    sub_24EFCD378(v40, v85);
    v44 = 0;
    v45 = v63;
    v46 = v62;
  }

  else
  {
    v44 = 1;
    v45 = a1;
    v43 = v85;
    v46 = v17;
  }

  v47 = v83;
  (*(v69 + 56))(v43, v44, 1, v70);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v48 = qword_27F24F280;
  sub_24F91F778();
  v86 = sub_24F92B148();
  v87 = v49;
  sub_24EFCC4A4(v45, v46);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = swift_allocObject();
  sub_24EFCC508(v46, v51 + v50);
  sub_24E600AEC();
  v52 = v74;
  sub_24F926FB8();
  v53 = v71;
  sub_24E60169C(v43, v71, &qword_27F235EF0);
  v55 = v75;
  v54 = v76;
  v56 = *(v76 + 16);
  v57 = v84;
  v56(v75, v52, v84);
  v58 = v77;
  sub_24E60169C(v53, v77, &qword_27F235EF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EF8);
  v56((v58 + *(v59 + 48)), v55, v57);
  v60 = *(v54 + 8);
  v60(v52, v57);
  sub_24E601704(v85, &qword_27F235EF0);
  v60(v55, v57);
  return sub_24E601704(v53, &qword_27F235EF0);
}

uint64_t sub_24EFC8390(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayGameControllerControls(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v8 = *a1;
  v9 = [v8 name];
  v10 = sub_24F92B0D8();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_24EFCC4A4(a2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_24EFCC508(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  sub_24E600AEC();
  v15 = v8;
  return sub_24F926FB8();
}

uint64_t sub_24EFC850C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OverlayGameControllerControls(0);
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver);
  [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) setSelectedProfile_];
}

uint64_t sub_24EFC85E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v27 = sub_24F9248C8();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E40);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E38);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v26 - v9;
  v11 = sub_24F9249A8();
  LOBYTE(v36) = 0;
  v28 = a1;
  sub_24EFC8AB4(v40);
  *&v39[7] = v40[0];
  *&v39[23] = v40[1];
  *&v39[39] = v40[2];
  *&v39[55] = v40[3];
  v12 = v36;
  if (qword_27F210D58 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  v14 = __swift_project_value_buffer(v13, qword_27F39D2E8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E68);
  sub_24E60169C(v14, &v8[*(v15 + 36)], &qword_27F213F10);
  v16 = *v39;
  *(v8 + 33) = *&v39[16];
  *(v8 + 49) = *&v39[32];
  *(v8 + 65) = *&v39[48];
  *v8 = v11;
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = v12;
  *(v8 + 10) = *&v39[63];
  *(v8 + 17) = v16;
  if (qword_27F210D50 != -1)
  {
    swift_once();
  }

  v17 = qword_27F39D2E0;
  KeyPath = swift_getKeyPath();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235E58) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v8[*(v6 + 36)] = 0;

  sub_24F9248B8();
  v20 = sub_24EFCCB44();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v27);
  sub_24E601704(v8, &qword_27F235E40);
  v21 = v28 + *(type metadata accessor for OverlayGameControllerControls(0) + 36);
  v22 = *(v21 + 32);
  v23 = *(v21 + 16);
  v36 = *v21;
  v37 = v23;
  v38 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8);
  sub_24F923348();
  v36 = v34;
  v37 = v35;
  v34 = xmmword_24F9B9570;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v32 = v6;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  v24 = v30;
  sub_24F9269B8();

  return (*(v29 + 8))(v10, v24);
}

uint64_t sub_24EFC8AB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  type metadata accessor for OverlayGameControllerControls(0);
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v16)
  {
    v4 = [v16 name];

    sub_24F92B0D8();
  }

  else
  {
    sub_24F92B018();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v5 = qword_27F24F280;
    sub_24F91F778();
    sub_24F92B148();
  }

  sub_24E600AEC();
  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v14 = sub_24F926DF8();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v14;
  sub_24E5FD138(v6, v8, v10 & 1);

  sub_24E600B40(v6, v8, v10 & 1);
}

void sub_24EFC8DF8()
{
  type metadata accessor for OverlayGameControllerControls(0);
  type metadata accessor for GCOverlaySettingsObserver(0);
  sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver);
  [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) refresh];

  v0 = sub_24F923628();
  sub_24EFC5EE4();
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings);
  if (v2)
  {
    v3 = sub_24F92B098();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v1 setGameBundleIdentifier_];
}

uint64_t sub_24EFC8F4C()
{
  v0 = sub_24F923418();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CDD6B8], v0, v2);
  v5 = sub_24F923408();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    type metadata accessor for OverlayGameControllerControls(0);
    type metadata accessor for GCOverlaySettingsObserver(0);
    sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver);
    [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) refresh];
  }

  return result;
}

void sub_24EFC90E4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for OverlayGameControllerControls(0);
    type metadata accessor for GCOverlaySettingsObserver(0);
    sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver);
    [*(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit25GCOverlaySettingsObserver_settings) refresh];
  }
}

uint64_t sub_24EFC91BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v6 = qword_27F24F280;
  v7 = qword_27F24F280;
  sub_24F91F778();
  v8 = v7;
  v51[2] = v6;
  v61 = sub_24F92B148();
  v62 = v9;
  v51[1] = sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24E72FF4C();
  v15 = sub_24F925C58();
  v17 = v16;
  v51[0] = v4;
  v19 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v20 = sub_24F925C98();
  v54 = v21;
  v55 = v20;
  v52 = v22;
  v56 = v23;
  sub_24E600B40(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  sub_24F92B018();
  sub_24F91F778();
  v61 = sub_24F92B148();
  v62 = v24;
  v25 = sub_24F925E18();
  v27 = v26;
  v29 = v28;
  if (qword_27F210D58 != -1)
  {
    swift_once();
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  __swift_project_value_buffer(v30, qword_27F39D2E8);
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v31 = sub_24F925C58();
  v33 = v32;
  v35 = v34;
  sub_24E600B40(v25, v27, v29 & 1);

  if (qword_27F210D50 != -1)
  {
    swift_once();
  }

  v36 = sub_24F925C98();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24E600B40(v31, v33, v35 & 1);

  v43 = swift_getKeyPath();
  v44 = v52 & 1;
  LOBYTE(v61) = v52 & 1;
  v60 = v52 & 1;
  v59 = 0;
  v45 = v40 & 1;
  v58 = v40 & 1;
  v57 = 0;
  v46 = v40 & 1;
  v48 = v54;
  v47 = v55;
  *a1 = v55;
  *(a1 + 8) = v48;
  *(a1 + 16) = v44;
  v49 = KeyPath;
  *(a1 + 24) = v56;
  *(a1 + 32) = v49;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v36;
  *(a1 + 64) = v38;
  *(a1 + 72) = v46;
  *(a1 + 80) = v42;
  *(a1 + 88) = v43;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  sub_24E5FD138(v47, v48, v44);

  sub_24E5FD138(v36, v38, v45);

  sub_24E600B40(v36, v38, v45);

  sub_24E600B40(v47, v48, v61);
}

unint64_t sub_24EFC971C(uint64_t a1, float a2)
{
  result = 0xD000000000000011;
  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  if (a2 >= 0.0 && a2 < 0.02 || a2 >= 0.03 && a2 < 0.15)
  {
    return 0xD000000000000010;
  }

  if ((a2 < 0.15 || a2 >= 0.4) && (a2 < 0.4 || a2 >= 0.6) && (a2 < 0.6 || a2 >= 0.85))
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_24EFC9878@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DA8);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DB0);
  MEMORY[0x28223BE20](v33);
  v7 = (&v33 - v6);
  v8 = (v1 + *(type metadata accessor for OverlayGameControllerControls(0) + 32));
  v9 = *v8;
  v10 = v8[1];
  v42 = *v8;
  v43 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0);
  sub_24F926F38();
  v11 = v40;
  swift_getKeyPath();
  v42 = v11;
  sub_24EFCC2E8(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  swift_beginAccess();
  v13 = *&v11[v12];

  if (v13 == -1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24EFCCA7C();
    return sub_24F924E28();
  }

  else
  {
    v40 = v9;
    v41 = v10;
    sub_24F926F38();
    v14 = v37;
    swift_getKeyPath();
    v40 = v14;
    sub_24F91FD88();

    v15 = &v14[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel];
    swift_beginAccess();
    v16 = *v15;

    v37 = v9;
    v38 = v10;
    sub_24F926F38();
    v17 = v39;
    swift_getKeyPath();
    v37 = v17;
    sub_24F91FD88();

    v18 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
    swift_beginAccess();
    v19 = *&v17[v18];

    sub_24EFC971C(v19, v16);
    v20 = sub_24F926DF8();
    v21 = sub_24F925908();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_24F925968();
    sub_24E601704(v5, &qword_27F214698);
    sub_24F925938();
    v22 = sub_24F9259A8();

    KeyPath = swift_getKeyPath();
    v24 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50) + 36));
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v26 = *MEMORY[0x277CE1048];
    v27 = sub_24F926E78();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    *v7 = v20;
    v7[1] = KeyPath;
    v7[2] = v22;
    LODWORD(v20) = sub_24F9251C8();
    v28 = v7 + *(v33 + 36);
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v30 = *MEMORY[0x277CE13B8];
    v31 = sub_24F927748();
    (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
    *v28 = v20;
    sub_24E60169C(v7, v35, &qword_27F235DB0);
    swift_storeEnumTagMultiPayload();
    sub_24EFCCA7C();
    sub_24F924E28();
    return sub_24E601704(v7, &qword_27F235DB0);
  }
}

uint64_t sub_24EFC9DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CB0);
  MEMORY[0x28223BE20](v81);
  v4 = (&v67 - v3);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CB8);
  MEMORY[0x28223BE20](v79);
  v6 = &v67 - v5;
  v7 = sub_24F924B38();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9241F8();
  v72 = *(v9 - 8);
  *&v73 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OverlayGameControllerControls(0);
  v12 = v11 - 8;
  v68 = *(v11 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CC0);
  MEMORY[0x28223BE20](v69);
  v15 = &v67 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CC8);
  MEMORY[0x28223BE20](v70);
  v75 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD0);
  MEMORY[0x28223BE20](v17);
  v74 = &v67 - v18;
  v19 = (a1 + *(v12 + 40));
  v21 = *v19;
  v20 = v19[1];
  v82[0] = v21;
  v82[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0);
  sub_24F926F38();
  v22 = v82[5];
  swift_getKeyPath();
  v82[0] = v22;
  sub_24EFCC2E8(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v23 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v24 = *&v22[v23];
  v25 = v24;

  if (v24)
  {
    *v4 = 1024;
    v26 = v4 + *(v81 + 40);
    *v26 = sub_24F9249A8();
    *(v26 + 1) = 0x4020000000000000;
    v26[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D78);
    sub_24EFCA7CC(v25, &v26[*(v27 + 44)]);
    sub_24E60169C(v4, v6, &qword_27F235CB0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235D58, &qword_27F235CB0);
    sub_24EFCC920(&qword_27F235D60, &qword_27F235CD0, &unk_24F9B97E8, sub_24EFCC9A4);
    sub_24F924E28();

    v28 = v4;
    v29 = &qword_27F235CB0;
  }

  else
  {
    sub_24EFCC4A4(a1, &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v31 = swift_allocObject();
    v32 = sub_24EFCC508(&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    MEMORY[0x28223BE20](v32);
    *(&v67 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CE0);
    sub_24EFCC58C();
    sub_24F926F88();
    v33 = v71;
    sub_24F9241E8();
    sub_24EFCC834();
    sub_24EFCC2E8(&qword_27F212838, MEMORY[0x277CDDB18]);
    v34 = v75;
    v35 = v73;
    sub_24F926178();
    (*(v72 + 8))(v33, v35);
    sub_24E601704(v15, &qword_27F235CC0);
    v36 = (v34 + *(v70 + 36));
    v37 = sub_24F924258();
    v38 = *MEMORY[0x277CE0118];
    v39 = v77;
    v40 = v78;
    v41 = *(v77 + 104);
    v41(&v36[*(v37 + 20)], v38, v78);
    __asm { FMOV            V0.2D, #24.0 }

    v73 = _Q0;
    *v36 = _Q0;
    v47 = v76;
    v41(v76, v38, v40);
    v82[3] = v37;
    v82[4] = sub_24EFCC2E8(&qword_27F212868, MEMORY[0x277CDFC08]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
    (*(v39 + 16))(boxed_opaque_existential_1 + *(v37 + 20), v47, v40);
    *boxed_opaque_existential_1 = v73;
    (*(v39 + 8))(v47, v40);
    v49 = v74;
    sub_24E60169C(v82, v74, &qword_27F235D40);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D48);
    sub_24E60169C(v34, v49 + v50[9], &qword_27F235CC8);
    v51 = v49 + v50[10];
    *v51 = sub_24F923398() & 1;
    *(v51 + 8) = v52;
    *(v51 + 16) = v53 & 1;
    v54 = v49 + v50[11];
    *v54 = swift_getKeyPath();
    *(v54 + 8) = 0;
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v55 = qword_27F24E488;
    v56 = sub_24F923398();
    v58 = v57;
    v60 = v59;
    v61 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D50) + 36);
    *v61 = v55;
    *(v61 + 8) = v56 & 1;
    *(v61 + 16) = v58;
    *(v61 + 24) = v60 & 1;
    LOBYTE(v55) = sub_24F923398();
    v63 = v62;
    LOBYTE(v58) = v64;
    sub_24E601704(v34, &qword_27F235CC8);
    sub_24E601704(v82, &qword_27F235D40);
    v65 = v49 + *(v17 + 36);
    *v65 = v55 & 1;
    *(v65 + 8) = v63;
    *(v65 + 16) = v58 & 1;
    sub_24E60169C(v49, v6, &qword_27F235CD0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235D58, &qword_27F235CB0);
    sub_24EFCC920(&qword_27F235D60, &qword_27F235CD0, &unk_24F9B97E8, sub_24EFCC9A4);
    sub_24F924E28();
    v28 = v49;
    v29 = &qword_27F235CD0;
  }

  return sub_24E601704(v28, v29);
}

uint64_t sub_24EFCA7CC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D80);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D90);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v35 - v20;
  v39 = sub_24F926DF8();
  v22 = sub_24F925908();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_24F925968();
  sub_24E601704(v21, &qword_27F214698);
  sub_24F925958();
  v38 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0x4008000000000000;
  v9[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D98);
  sub_24EFC649C(v40, &v9[*(v23 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v9, v15, &qword_27F235D88);
  v24 = &v15[*(v11 + 44)];
  v25 = v49;
  *(v24 + 4) = v48;
  *(v24 + 5) = v25;
  *(v24 + 6) = v50;
  v26 = v45;
  *v24 = v44;
  *(v24 + 1) = v26;
  v27 = v47;
  *(v24 + 2) = v46;
  *(v24 + 3) = v27;
  v36 = v18;
  sub_24E6009C8(v15, v18, &qword_27F235D90);
  v28 = v43;
  sub_24EFC9878(v43);
  v29 = v41;
  sub_24E60169C(v18, v41, &qword_27F235D90);
  v30 = v42;
  sub_24E60169C(v28, v42, &qword_27F235D80);
  v31 = v38;
  *a2 = v39;
  a2[1] = KeyPath;
  a2[2] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235DA0);
  sub_24E60169C(v29, a2 + v32[12], &qword_27F235D90);
  v33 = a2 + v32[16];
  *v33 = 0;
  v33[8] = 0;
  sub_24E60169C(v30, a2 + v32[20], &qword_27F235D80);

  sub_24E601704(v43, &qword_27F235D80);
  sub_24E601704(v36, &qword_27F235D90);
  sub_24E601704(v30, &qword_27F235D80);
  sub_24E601704(v29, &qword_27F235D90);
}

uint64_t sub_24EFCACB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D10);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F18);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D08);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v35 = &v35 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CF8);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - v13;
  v14 = sub_24F927618();
  v16 = v15;
  sub_24EFCB234(a1, v51);
  memcpy(v49, v51, 0x1F1uLL);
  memcpy(v50, v51, 0x1F1uLL);
  sub_24E60169C(v49, v45, &qword_27F235F20);
  sub_24E601704(v50, &qword_27F235F20);
  memcpy(&v45[16], v49, 0x1F1uLL);
  *v45 = v14;
  *&v45[8] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235D18);
  v18 = sub_24E602068(&qword_27F235D20, &qword_27F235D18);
  sub_24F926B78();
  memcpy(v51, v45, 0x201uLL);
  sub_24E601704(v51, &qword_27F235D18);
  v19 = a1 + *(type metadata accessor for OverlayGameControllerControls(0) + 36);
  v20 = *(v19 + 32);
  v21 = *(v19 + 16);
  *v45 = *v19;
  *&v45[16] = v21;
  *&v45[32] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235ED8);
  sub_24F923348();
  *v45 = v46;
  *&v45[16] = v47;
  *&v46 = 0xD000000000000012;
  *(&v46 + 1) = 0x800000024FA67190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v43 = v17;
  v44 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24EFCC404();
  v22 = v36;
  sub_24F9269B8();

  v23 = v6;
  v24 = v35;
  (*(v37 + 8))(v23, v22);
  sub_24F927618();
  sub_24F9242E8();
  (*(v39 + 32))(v24, v9, v40);
  v25 = (v24 + *(v11 + 44));
  v26 = *&v45[80];
  v25[4] = *&v45[64];
  v25[5] = v26;
  v25[6] = *&v45[96];
  v27 = *&v45[16];
  *v25 = *v45;
  v25[1] = v27;
  v28 = *&v45[48];
  v25[2] = *&v45[32];
  v25[3] = v28;
  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v29 = v38;
  sub_24E6009C8(v24, v38, &qword_27F235D08);
  v30 = (v29 + *(v41 + 36));
  v31 = v47;
  *v30 = v46;
  v30[1] = v31;
  v30[2] = v48;
  v32 = v29;
  v33 = v42;
  sub_24E6009C8(v32, v42, &qword_27F235CF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CE0);
  *(v33 + *(result + 36)) = 0;
  return result;
}

double sub_24EFCB234@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9249A8();
  v50 = 0;
  sub_24EFCB4D0(a1, __src);
  memcpy(__dst, __src, 0x119uLL);
  memcpy(v54, __src, 0x119uLL);
  sub_24E60169C(__dst, v47, &qword_27F235F28);
  sub_24E601704(v54, &qword_27F235F28);
  memcpy(&v49[7], __dst, 0x119uLL);
  v5 = v50;
  v6 = sub_24F925838();
  v7 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v6)
  {
    v7 = sub_24F925848();
  }

  sub_24F923318();
  v45 = v9;
  v46 = v8;
  v43 = v11;
  v44 = v10;
  v51 = 0;
  v12 = sub_24F925858();
  v13 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v12)
  {
    v13 = sub_24F925848();
  }

  sub_24F923318();
  v41 = v15;
  v42 = v14;
  v39 = v17;
  v40 = v16;
  v52 = 0;
  v18 = sub_24F925818();
  v19 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v18)
  {
    v19 = sub_24F925848();
  }

  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v47[0] = 0;
  v28 = sub_24F925828();
  v29 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v28)
  {
    v29 = sub_24F925848();
  }

  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  *a2 = v4;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v49, 0x120uLL);
  *(a2 + 312) = v7;
  *(a2 + 320) = v46;
  *(a2 + 328) = v45;
  *(a2 + 336) = v44;
  *(a2 + 344) = v43;
  *(a2 + 352) = 0;
  *(a2 + 360) = v13;
  *(a2 + 368) = v42;
  *(a2 + 376) = v41;
  result = v39;
  *(a2 + 384) = v40;
  *(a2 + 392) = v39;
  *(a2 + 400) = 0;
  *(a2 + 408) = v19;
  *(a2 + 416) = v21;
  *(a2 + 424) = v23;
  *(a2 + 432) = v25;
  *(a2 + 440) = v27;
  *(a2 + 448) = 0;
  *(a2 + 456) = v29;
  *(a2 + 464) = v31;
  *(a2 + 472) = v33;
  *(a2 + 480) = v35;
  *(a2 + 488) = v37;
  *(a2 + 496) = 0;
  return result;
}

uint64_t sub_24EFCB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v35 = sub_24F926DF8();
  v6 = sub_24F925908();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_24F925968();
  sub_24E601704(v5, &qword_27F214698);
  sub_24F925958();
  v34 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  v8 = sub_24F924C98();
  v36[0] = 0;
  sub_24EFC91BC(&v39);
  v49 = *&v40[48];
  v50[0] = *&v40[64];
  *(v50 + 9) = *&v40[73];
  v45 = v39;
  v46 = *v40;
  v47 = *&v40[16];
  v48 = *&v40[32];
  v51[0] = v39;
  v51[1] = *v40;
  v51[2] = *&v40[16];
  v51[3] = *&v40[32];
  v51[4] = *&v40[48];
  *v52 = *&v40[64];
  *&v52[9] = *&v40[73];
  sub_24E60169C(&v45, &v37, &qword_27F235F30);
  sub_24E601704(v51, &qword_27F235F30);
  *(&v42[3] + 7) = v48;
  *(&v42[4] + 7) = v49;
  *(&v42[5] + 7) = v50[0];
  v42[6] = *(v50 + 9);
  *(v42 + 7) = v45;
  *(&v42[1] + 7) = v46;
  *(&v42[2] + 7) = v47;
  v9 = v36[0];
  sub_24F927628();
  sub_24F9242E8();
  *(&v43[6] + 7) = *&v43[21];
  *(&v43[8] + 7) = *&v43[23];
  *(&v43[10] + 7) = *&v43[25];
  *(&v43[12] + 7) = v44;
  *(v43 + 7) = *&v43[15];
  *(&v43[2] + 7) = *&v43[17];
  *(&v43[4] + 7) = *&v43[19];
  *&v37 = v8;
  *(&v37 + 1) = 0x4008000000000000;
  v38[0] = v9;
  v10 = v42[2];
  *&v38[33] = v42[2];
  v11 = v42[1];
  *&v38[17] = v42[1];
  v12 = v42[0];
  *&v38[1] = v42[0];
  v13 = v42[6];
  *&v38[97] = v42[6];
  v14 = v42[5];
  *&v38[81] = v42[5];
  v15 = v42[4];
  *&v38[65] = v42[4];
  v16 = v42[3];
  *&v38[49] = v42[3];
  v17 = *&v43[6];
  *&v38[161] = *&v43[6];
  v18 = *&v43[4];
  *&v38[145] = *&v43[4];
  v19 = *&v43[2];
  *&v38[129] = *&v43[2];
  v20 = *v43;
  *&v38[113] = *v43;
  *&v38[224] = *(&v44 + 1);
  v21 = *&v43[12];
  *&v38[209] = *&v43[12];
  v22 = *&v43[10];
  *&v38[193] = *&v43[10];
  v23 = *&v43[8];
  *&v38[177] = *&v43[8];
  v24 = *&v38[16];
  *(a2 + 72) = *&v38[32];
  *(a2 + 56) = v24;
  v25 = v37;
  *(a2 + 40) = *v38;
  *(a2 + 24) = v25;
  v26 = *&v38[80];
  *(a2 + 136) = *&v38[96];
  *(a2 + 120) = v26;
  v27 = *&v38[48];
  *(a2 + 104) = *&v38[64];
  *(a2 + 88) = v27;
  v28 = *&v38[144];
  *(a2 + 200) = *&v38[160];
  *(a2 + 184) = v28;
  v29 = *&v38[112];
  *(a2 + 168) = *&v38[128];
  *(a2 + 152) = v29;
  *(a2 + 248) = *&v38[208];
  v30 = *&v38[176];
  *(a2 + 232) = *&v38[192];
  *(a2 + 216) = v30;
  *&v40[49] = v16;
  *&v40[65] = v15;
  *&v40[81] = v14;
  *&v40[97] = v13;
  *&v40[1] = v12;
  *&v40[17] = v11;
  *&v40[33] = v10;
  *&v40[177] = v23;
  *&v40[193] = v22;
  *v41 = v21;
  v36[248] = 0;
  v31 = v34;
  *a2 = v35;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v31;
  *(a2 + 264) = *&v38[224];
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *&v39 = v8;
  *(&v39 + 1) = 0x4008000000000000;
  v40[0] = v9;
  *&v41[15] = *(&v43[13] + 7);
  *&v40[113] = v20;
  *&v40[129] = v19;
  *&v40[145] = v18;
  *&v40[161] = v17;

  sub_24E60169C(&v37, v36, &qword_27F235F38);
  sub_24E601704(&v39, &qword_27F235F38);
}

uint64_t sub_24EFCBA18@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24EFCBA98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24EFCBB14@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24EFCBB98(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_24F9230A8();
}

uint64_t sub_24EFCBC2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_24EFCBC78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedProfile];
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_42Tm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_24EFCBE20(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_24EFCBEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EFCBF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_24EFCC068()
{
  sub_24EFCC330(319, &qword_27F235C80, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24EB999AC();
    if (v1 <= 0x3F)
    {
      sub_24EFCC1F0(319, &qword_27F21B368, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EFCC254();
        if (v3 <= 0x3F)
        {
          sub_24EFCC330(319, &qword_27F235C98, type metadata accessor for GameControllerObserver, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24EFCC394();
            if (v5 <= 0x3F)
            {
              sub_24E65E73C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EFCC1F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24EFCC254()
{
  if (!qword_27F235C88)
  {
    type metadata accessor for GCOverlaySettingsObserver(255);
    sub_24EFCC2E8(&qword_27F235C90, type metadata accessor for GCOverlaySettingsObserver);
    v0 = sub_24F923648();
    if (!v1)
    {
      atomic_store(v0, &qword_27F235C88);
    }
  }
}

uint64_t sub_24EFCC2E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24EFCC330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EFCC394()
{
  if (!qword_27F235CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    sub_24EFCC404();
    v0 = sub_24F9233B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F235CA0);
    }
  }
}

unint64_t sub_24EFCC404()
{
  result = qword_27F235CA8;
  if (!qword_27F235CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235CA8);
  }

  return result;
}

uint64_t sub_24EFCC4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayGameControllerControls(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFCC508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayGameControllerControls(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EFCC58C()
{
  result = qword_27F235CE8;
  if (!qword_27F235CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235CE0);
    sub_24EFCC644();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235CE8);
  }

  return result;
}

unint64_t sub_24EFCC644()
{
  result = qword_27F235CF0;
  if (!qword_27F235CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235CF8);
    sub_24EFCC6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235CF0);
  }

  return result;
}

unint64_t sub_24EFCC6D0()
{
  result = qword_27F235D00;
  if (!qword_27F235D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D18);
    sub_24E602068(&qword_27F235D20, &qword_27F235D18);
    swift_getOpaqueTypeConformance2();
    sub_24EFCC404();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235D00);
  }

  return result;
}

unint64_t sub_24EFCC834()
{
  result = qword_27F235D28;
  if (!qword_27F235D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235CC0);
    sub_24E602068(&qword_27F235D30, &qword_27F235D38);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235D28);
  }

  return result;
}

uint64_t sub_24EFCC920(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EFCC9A4()
{
  result = qword_27F235D68;
  if (!qword_27F235D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235D50);
    sub_24E602068(&qword_27F235D70, &qword_27F235D48);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235D68);
  }

  return result;
}

unint64_t sub_24EFCCA7C()
{
  result = qword_27F235DB8;
  if (!qword_27F235DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235DB0);
    sub_24EE08B20();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235DB8);
  }

  return result;
}

unint64_t sub_24EFCCB44()
{
  result = qword_27F235E48;
  if (!qword_27F235E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E40);
    sub_24EFCCBFC();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E48);
  }

  return result;
}

unint64_t sub_24EFCCBFC()
{
  result = qword_27F235E50;
  if (!qword_27F235E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E58);
    sub_24EFCCCB4();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E50);
  }

  return result;
}

unint64_t sub_24EFCCCB4()
{
  result = qword_27F235E60;
  if (!qword_27F235E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235E68);
    sub_24E602068(&qword_27F235E70, &qword_27F235E78);
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E60);
  }

  return result;
}

uint64_t objectdestroy_56Tm_0()
{
  v1 = type metadata accessor for OverlayGameControllerControls(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923418();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_24E74C370(*(v3 + v1[6]), *(v3 + v1[6] + 8), *(v3 + v1[6] + 16));
  sub_24E683950();

  return swift_deallocObject();
}

void sub_24EFCCF38()
{
  type metadata accessor for OverlayGameControllerControls(0);

  sub_24EFC8DF8();
}

uint64_t sub_24EFCCF98()
{
  type metadata accessor for OverlayGameControllerControls(0);

  return sub_24EFC8F4C();
}

unint64_t sub_24EFCD018()
{
  result = qword_27F235E88;
  if (!qword_27F235E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235DF0);
    sub_24E602068(&qword_27F235E90, &qword_27F235E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235E88);
  }

  return result;
}

void sub_24EFCD0D0(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for OverlayGameControllerControls(0);

  sub_24EFC90E4(a1, a2);
}

unint64_t sub_24EFCD150()
{
  result = qword_27F235EC0;
  if (!qword_27F235EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235EB0);
    sub_24E602068(&qword_27F235EC8, &qword_27F235EA8);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235EC0);
  }

  return result;
}

uint64_t sub_24EFCD290(void **a1)
{
  v3 = *(type metadata accessor for OverlayGameControllerControls(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EFC8390(a1, v4);
}

unint64_t sub_24EFCD310()
{
  result = qword_27F235F08;
  if (!qword_27F235F08)
  {
    sub_24E69A5C4(255, &qword_27F235C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235F08);
  }

  return result;
}

uint64_t sub_24EFCD378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFCD3E8()
{
  v1 = type metadata accessor for OverlayGameControllerControls(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923418();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  sub_24E62A5EC(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  sub_24E74C370(*(v4 + v1[6]), *(v4 + v1[6] + 8), *(v4 + v1[6] + 16));
  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24EFCD594()
{
  v1 = *(type metadata accessor for OverlayGameControllerControls(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFC850C(v0 + v2, v3);
}

unint64_t sub_24EFCD62C()
{
  result = qword_27F235F40;
  if (!qword_27F235F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235F48);
    sub_24EFCD6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235F40);
  }

  return result;
}

unint64_t sub_24EFCD6B0()
{
  result = qword_27F235F50;
  if (!qword_27F235F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235F58);
    sub_24E602068(&qword_27F235D58, &qword_27F235CB0);
    sub_24EFCC920(&qword_27F235D60, &qword_27F235CD0, &unk_24F9B97E8, sub_24EFCC9A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235F50);
  }

  return result;
}

uint64_t sub_24EFCD7B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EFCD80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24EFCD89C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818);
  sub_24F926F38();
  if (v4 == 0x69562F6F69647541 && v5 == 0xEB000000006F6564)
  {
LABEL_8:

    goto LABEL_9;
  }

  v1 = sub_24F92CE08();

  if ((v1 & 1) == 0)
  {
    sub_24F926F38();
    if (v4 != 0x6C6143656E6F6850 || v5 != 0xE90000000000006CLL)
    {
      v2 = sub_24F92CE08();

      return v2 & 1;
    }

    goto LABEL_8;
  }

LABEL_9:
  v2 = 1;
  return v2 & 1;
}

uint64_t sub_24EFCD9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v48[2] = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360F8);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v48 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236150);
  MEMORY[0x28223BE20](v49);
  v9 = v48 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236158);
  MEMORY[0x28223BE20](v51);
  v52 = v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236160);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v53 = v48 - v12;
  v13 = *(v1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_24F93FC20;
  v16 = 0x800000024FA400F0;
  v17 = 0xD000000000000012;
  if (v13)
  {
    v17 = 0x2E72656B61657073;
    v16 = 0xEC0000006C6C6966;
  }

  *(v14 + 32) = v17;
  *(v14 + 40) = v16;
  *(v14 + 48) = 0xD000000000000013;
  *(v14 + 56) = 0x800000024FA67390;
  *(v14 + 64) = 0xD000000000000013;
  *(v14 + 72) = 0x800000024FA673B0;
  *(v14 + 80) = 0xD000000000000013;
  *(v14 + 88) = 0x800000024FA40110;
  v18 = sub_24F926C38();
  v68 = *(v1 + 24);
  v63 = *(v1 + 24);
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F58();
  v19 = v57;
  v20 = v58;
  v57 = *v1;
  LOBYTE(v58) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
  sub_24F923378();
  LOBYTE(v57) = v13;
  *(&v57 + 1) = v15;
  *&v58 = v18;
  BYTE8(v58) = 1;
  *&v59 = CGSizeMake;
  *(&v59 + 1) = 0;
  v60 = v19;
  *&v61[0] = v20;
  *(v61 + 8) = v63;
  BYTE8(v61[1]) = v64;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v21 = qword_27F24F280;
  sub_24F91F778();
  *&v62 = sub_24F92B148();
  *(&v62 + 1) = v22;
  sub_24EFD2C14();
  sub_24E600AEC();
  v23 = v50;
  sub_24F926538();

  v65 = v59;
  v66 = v60;
  v67[0] = v61[0];
  *(v67 + 9) = *(v61 + 9);
  v63 = v57;
  v64 = v58;
  sub_24EFD2C68(&v63);
  v24 = swift_allocObject();
  v25 = v2[5];
  *(v24 + 5) = v2[4];
  *(v24 + 6) = v25;
  v26 = v2[7];
  *(v24 + 7) = v2[6];
  *(v24 + 8) = v26;
  v27 = v2[1];
  *(v24 + 1) = *v2;
  *(v24 + 2) = v27;
  v28 = v2[3];
  *(v24 + 3) = v2[2];
  *(v24 + 4) = v28;
  sub_24E6009C8(v23, v9, &qword_27F2360F8);
  v29 = &v9[*(v49 + 36)];
  *v29 = sub_24EFD2ED0;
  v29[1] = v24;
  v29[2] = 0;
  v29[3] = 0;
  v30 = swift_allocObject();
  v31 = v2[5];
  *(v30 + 80) = v2[4];
  *(v30 + 96) = v31;
  v32 = v2[7];
  *(v30 + 112) = v2[6];
  *(v30 + 128) = v32;
  v33 = v2[1];
  *(v30 + 16) = *v2;
  *(v30 + 32) = v33;
  v34 = v2[3];
  *(v30 + 48) = v2[2];
  *(v30 + 64) = v34;
  v35 = v52;
  sub_24E6009C8(v9, v52, &qword_27F236150);
  v36 = (v35 + *(v51 + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_24EFD2ED8;
  v36[3] = v30;
  v62 = v68;
  sub_24EFD2484(v2, &v57);
  sub_24EFD2484(v2, &v57);
  sub_24F926F38();
  v37 = swift_allocObject();
  v38 = v2[5];
  v37[5] = v2[4];
  v37[6] = v38;
  v39 = v2[7];
  v37[7] = v2[6];
  v37[8] = v39;
  v40 = v2[1];
  v37[1] = *v2;
  v37[2] = v40;
  v41 = v2[3];
  v37[3] = v2[2];
  v37[4] = v41;
  sub_24EFD2484(v2, &v57);
  sub_24EFD2EE8();
  v42 = v53;
  sub_24F926AB8();

  sub_24E601704(v35, &qword_27F236158);
  LOBYTE(v30) = sub_24EFCD89C();
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = (v30 & 1) == 0;
  v45 = v56;
  (*(v54 + 32))(v56, v42, v55);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236178);
  v47 = (v45 + *(result + 36));
  *v47 = KeyPath;
  v47[1] = sub_24E602370;
  v47[2] = v44;
  return result;
}

uint64_t sub_24EFCE130(_OWORD *a1)
{
  v8[0] = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180);
  sub_24F926F38();
  v2 = swift_allocObject();
  v3 = a1[5];
  v2[5] = a1[4];
  v2[6] = v3;
  v4 = a1[7];
  v2[7] = a1[6];
  v2[8] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  v6 = a1[3];
  v2[3] = a1[2];
  v2[4] = v6;
  sub_24EFD2484(a1, v8);
  sub_24EFDE684(sub_24EFD3080, v2);

  v9 = 0;
  sub_24F923688();
  v8[0] = a1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  sub_24F9240D8();
}

uint64_t sub_24EFCE280(char a1, uint64_t a2, unint64_t a3, _OWORD *a4, float a5)
{
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v10 = sub_24F9220D8();
  __swift_project_value_buffer(v10, qword_27F39E7D8);

  v11 = sub_24F9220B8();
  v12 = sub_24F92BDD8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v19 = v14;
    *v13 = 134218498;
    v15 = a5;
    *(v13 + 4) = a5;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    *(v13 + 18) = 2080;
    *(v13 + 20) = sub_24E7620D4(a2, a3, &v19);
    _os_log_impl(&dword_24E5DD000, v11, v12, "Callback %f, %{BOOL}d, %s", v13, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {

    v15 = a5;
  }

  v19 = *(a4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  if (vabdd_f64(v15, v18) >= 0.0001 || (v19 = *(a4 + 40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220), result = sub_24F926F38(), LOBYTE(v18) != (a1 & 1)))
  {
    v19 = a4[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F48();
    v19 = a4[6];
    sub_24F926F38();
    v17 = sub_24F923688();
    MEMORY[0x28223BE20](v17);
    sub_24F9240D8();
  }

  return result;
}

uint64_t sub_24EFCE554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F48();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818);
  return sub_24F926F48();
}

uint64_t sub_24EFCE65C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180);
  sub_24F926F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F48();
  sub_24F926F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818);
  return sub_24F926F48();
}

uint64_t sub_24EFCE7A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180);
  sub_24F926F38();
  sub_24EFDEC48();
}

uint64_t sub_24EFCE7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a3 + 96);
  v10 = *(a3 + 96);
  v14 = *(&v13 + 1);
  sub_24E60169C(&v14, &v9, &qword_27F215140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if ((v9 & 1) == 0)
  {
    v10 = *(a3 + 56);
    v11 = *(a3 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220818);
    sub_24F926F38();
    if (v9 == __PAIR128__(0xE000000000000000, 0))
    {
    }

    else
    {
      v4 = sub_24F92CE08();

      if ((v4 & 1) == 0)
      {
        v10 = v13;
        LOBYTE(v9) = 1;
        sub_24F926F48();
        v5 = &v13;
        return sub_24E601704(v5, &qword_27F236220);
      }
    }
  }

  sub_24E601704(&v13, &qword_27F236220);
  v9 = *(a3 + 112);
  v10 = v9;
  v12 = *(&v9 + 1);
  sub_24E60169C(&v12, &v8, &qword_27F215140);
  sub_24F926F38();
  if ((LOBYTE(v8) & 1) == 0)
  {
    sub_24E601704(&v10, &qword_27F236220);
    v9 = *(a3 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236180);
    sub_24F926F38();
    v9 = *(a3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
    sub_24F926F38();
    v6 = v8;
    sub_24EFDE3E4(v6);
  }

  v9 = v10;
  LOBYTE(v8) = 0;
  sub_24F926F48();
  v5 = &v10;
  return sub_24E601704(v5, &qword_27F236220);
}

uint64_t sub_24EFCEAA0(char a1)
{
  v2 = a1 & 1;
  v5 = *(v1 + 32);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_24E60169C(&v7, &v4, &qword_27F215140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (LOBYTE(v4) == v2)
  {
    return sub_24E601704(&v6, &qword_27F236220);
  }

  v5 = v6;
  LOBYTE(v4) = v2;
  sub_24F926F48();
  sub_24E601704(&v6, &qword_27F236220);
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  return sub_24EFCEBB8(v4);
}

uint64_t sub_24EFCEBB8(double a1)
{
  v7 = v1[3];
  v8 = v7;
  v9 = *(&v7 + 1);
  sub_24E60169C(&v9, &v6, &qword_27F215140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v6)
  {
    v7 = v8;
    LOBYTE(v6) = 0;
    sub_24F926F48();
    return sub_24E601704(&v8, &qword_27F236220);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F236220);
    v7 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128);
    sub_24F926F38();
    v4 = v6;
    if (*(v6 + 24) == a1)
    {
      *(v6 + 24) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v7 = v4;
      sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
      sub_24F91FD78();
    }

    v7 = *v1;
    sub_24F926F38();
    v7 = v1[2];
    sub_24F926F38();
    sub_24EFE57EC((v6 & 1) == 0);
  }
}

uint64_t sub_24EFCEE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360F8);
  MEMORY[0x28223BE20](v62);
  v60 = v58 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236100);
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = v58 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236108);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v64 = v58 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236110);
  MEMORY[0x28223BE20](v61);
  v68 = v58 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236118);
  MEMORY[0x28223BE20](v65);
  v71 = v58 - v10;
  v11 = *(v1 + 81);
  if (v11)
  {
    v12 = &unk_2861C0F90;
  }

  else
  {
    v12 = &unk_2861C0FD0;
  }

  v13 = sub_24F926CF8();
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  v16 = *(v1 + 64);
  v17 = *(v1 + 16);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = v16;
  v18 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v18;
  v85 = v18;
  *(v14 + 96) = *(v1 + 80);
  v74 = v17;
  sub_24EFD261C(v1, &v79);
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F58();
  v19 = v79;
  v20 = v80;
  v79 = *(v1 + 64);
  LOBYTE(v80) = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
  sub_24F923378();
  v21 = v74;
  v22 = v75;
  LOBYTE(v74) = v11;
  *(&v74 + 1) = v12;
  *&v75 = v13;
  BYTE8(v75) = 0;
  *&v76 = sub_24EFD2BF0;
  *(&v76 + 1) = v14;
  v77 = v19;
  *&v78[0] = v20;
  *(v78 + 8) = v21;
  BYTE8(v78[1]) = v22;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v23 = qword_27F24F280;
  sub_24F91F778();
  *&v84 = sub_24F92B148();
  *(&v84 + 1) = v24;
  sub_24EFD2C14();
  sub_24E600AEC();
  v25 = v60;
  sub_24F926538();

  v81 = v76;
  v82 = v77;
  v83[0] = v78[0];
  *(v83 + 9) = *(v78 + 9);
  v79 = v74;
  v80 = v75;
  sub_24EFD2C68(&v79);
  v84 = *v1;
  v74 = *v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128);
  sub_24F926F38();
  v26 = v73;
  swift_getKeyPath();
  *&v74 = v26;
  v58[0] = sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  v27 = *(v26 + 24);

  *&v73 = v27;
  v28 = swift_allocObject();
  v29 = *(v1 + 48);
  *(v28 + 48) = *(v1 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(v1 + 64);
  *(v28 + 96) = *(v1 + 80);
  v30 = *(v1 + 16);
  *(v28 + 16) = *v1;
  *(v28 + 32) = v30;
  sub_24EFD261C(v1, &v74);
  v31 = sub_24EFD2CCC();
  v32 = MEMORY[0x277D839F8];
  v33 = MEMORY[0x277D83A28];
  v34 = v62;
  v35 = v63;
  sub_24F926AB8();

  sub_24E601704(v25, &qword_27F2360F8);
  v74 = v85;
  sub_24F926F38();
  v36 = swift_allocObject();
  v37 = *(v1 + 48);
  *(v36 + 48) = *(v1 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(v1 + 64);
  *(v36 + 96) = *(v1 + 80);
  v38 = *(v1 + 16);
  *(v36 + 16) = *v1;
  *(v36 + 32) = v38;
  sub_24EFD261C(v1, &v74);
  *&v74 = v34;
  *(&v74 + 1) = v32;
  *&v75 = v31;
  *(&v75 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v39 = v64;
  v40 = v69;
  sub_24F926AB8();

  (*(v66 + 8))(v35, v40);
  v41 = swift_allocObject();
  v42 = *(v2 + 48);
  *(v41 + 48) = *(v2 + 32);
  *(v41 + 64) = v42;
  *(v41 + 80) = *(v2 + 64);
  *(v41 + 96) = *(v2 + 80);
  v43 = *(v2 + 16);
  *(v41 + 16) = *v2;
  *(v41 + 32) = v43;
  v44 = v68;
  (*(v67 + 32))(v68, v39, v70);
  v45 = (v44 + *(v61 + 36));
  *v45 = sub_24EFD2DF8;
  v45[1] = v41;
  v45[2] = 0;
  v45[3] = 0;
  v46 = swift_allocObject();
  v47 = *(v2 + 48);
  *(v46 + 48) = *(v2 + 32);
  *(v46 + 64) = v47;
  *(v46 + 80) = *(v2 + 64);
  *(v46 + 96) = *(v2 + 80);
  v48 = *(v2 + 16);
  *(v46 + 16) = *v2;
  *(v46 + 32) = v48;
  v49 = v71;
  sub_24E6009C8(v44, v71, &qword_27F236110);
  v50 = (v49 + *(v65 + 36));
  *v50 = 0;
  v50[1] = 0;
  v50[2] = sub_24EFD2E68;
  v50[3] = v46;
  v73 = v84;
  sub_24EFD261C(v2, &v74);
  sub_24EFD261C(v2, &v74);
  sub_24F926F38();
  v51 = v74;
  swift_getKeyPath();
  *&v74 = v51;
  sub_24F91FD88();

  v52 = *(v51 + 32);

  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = (v52 & 1) == 0;
  v55 = v72;
  sub_24E6009C8(v49, v72, &qword_27F236118);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236140);
  v57 = (v55 + *(result + 36));
  *v57 = KeyPath;
  v57[1] = sub_24E600A48;
  v57[2] = v54;
  return result;
}

uint64_t sub_24EFCF778(uint64_t a1, double *a2, __int128 *a3)
{
  v4 = *a2;
  v9 = a3[1];
  v10 = v9;
  v11 = *(&v9 + 1);
  sub_24E60169C(&v11, &v8, &qword_27F236148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  if (vabdd_f64(v4, v8) >= 0.0001)
  {
    v9 = a3[3];
    LOBYTE(v8) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F48();
    v9 = *a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128);
    sub_24F926F38();
    v5 = v8;
    swift_getKeyPath();
    *&v9 = v5;
    sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
    sub_24F91FD88();

    v6 = *(*&v5 + 24);

    v9 = v10;
    v8 = v6;
    sub_24F926F48();
  }

  return sub_24E601704(&v10, &qword_27F21A6F0);
}

uint64_t sub_24EFCF92C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128);
  sub_24F926F38();
  sub_24EFE5B20();

  sub_24F923688();
  sub_24F9240D8();
}

uint64_t sub_24EFCF9E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128);
  sub_24F926F38();
  sub_24EFE5400();

  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  return sub_24F926F48();
}

uint64_t sub_24EFCFB60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236128);
  sub_24F926F38();
  sub_24EFE6188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  sub_24F926F38();
  sub_24EFE5400();

  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFD2D88(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel);
  sub_24F91FD88();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  return sub_24F926F48();
}

uint64_t sub_24EFCFD40(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F60);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F68);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F70);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  if (*a1)
  {
    if (qword_27F210D60 != -1)
    {
      swift_once();
    }

    v11 = qword_27F39D300;
    *v10 = sub_24F924C88();
    *(v10 + 1) = v11;
    v10[16] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F90);
    sub_24EFD00C0(a1, &v10[*(v12 + 44)]);
    sub_24E60169C(v10, v7, &qword_27F235F70);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235F80, &qword_27F235F70);
    sub_24E602068(&qword_27F235F88, &qword_27F235F60);
    sub_24F924E28();
    v13 = v10;
    v14 = &qword_27F235F70;
  }

  else
  {
    if (qword_27F210D60 != -1)
    {
      swift_once();
    }

    v15 = qword_27F39D300;
    *v4 = sub_24F9249A8();
    *(v4 + 1) = v15;
    v4[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F78);
    sub_24EFD1060(a1, &v4[*(v16 + 44)]);
    sub_24E60169C(v4, v7, &qword_27F235F60);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F235F80, &qword_27F235F70);
    sub_24E602068(&qword_27F235F88, &qword_27F235F60);
    sub_24F924E28();
    v13 = v4;
    v14 = &qword_27F235F60;
  }

  return sub_24E601704(v13, v14);
}

uint64_t sub_24EFD00C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235F98);
  MEMORY[0x28223BE20](v41);
  v36 = (v35 - v3);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FA0) - 8;
  MEMORY[0x28223BE20](v39);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - v6;
  v37 = sub_24F925508();
  v43 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FA8);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FB0);
  MEMORY[0x28223BE20](v13);
  v38 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v35 - v16;
  v47 = *(a1 + 8);
  v48 = *(a1 + 24);
  v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  v18 = v44;
  v19 = v45;
  v20 = v46;
  *v17 = 512;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  v17[24] = v20;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FB8);
  sub_24EFD05E0(a1, &v12[*(v21 + 44)]);
  sub_24F9254E8();
  v35[1] = MEMORY[0x277CE1198];
  sub_24E602068(&qword_27F235FC0, &qword_27F235FA8);
  sub_24F926678();
  v22 = *(v43 + 8);
  v43 += 8;
  v23 = v37;
  v22(v9, v37);
  sub_24E601704(v12, &qword_27F235FA8);
  v47 = *(a1 + 32);
  v48 = *(a1 + 48);
  sub_24F923348();
  v24 = v44;
  v25 = v45;
  v26 = v46;
  *v7 = 512;
  *(v7 + 1) = v24;
  *(v7 + 2) = v25;
  v7[24] = v26;
  v27 = sub_24F924C98();
  v28 = v36;
  *v36 = v27;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FC8);
  sub_24EFD0B54(a1, (v28 + *(v29 + 44)));
  sub_24F9254E8();
  sub_24E602068(&qword_27F235FD0, &qword_27F235F98);
  sub_24F926678();
  v22(v9, v23);
  sub_24E601704(v28, &qword_27F235F98);
  v30 = v38;
  sub_24E60169C(v17, v38, &qword_27F235FB0);
  v31 = v40;
  sub_24E60169C(v7, v40, &qword_27F235FA0);
  v32 = v42;
  sub_24E60169C(v30, v42, &qword_27F235FB0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FD8);
  sub_24E60169C(v31, v32 + *(v33 + 48), &qword_27F235FA0);
  sub_24E601704(v7, &qword_27F235FA0);
  sub_24E601704(v17, &qword_27F235FB0);
  sub_24E601704(v31, &qword_27F235FA0);
  return sub_24E601704(v30, &qword_27F235FB0);
}

uint64_t sub_24EFD05E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a1;
  v53 = a2;
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v49 - v7;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F91F778();
  *&v68 = sub_24F92B148();
  *(&v68 + 1) = v9;
  sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  *&v68 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v15, v17, v19 & 1);

  v27 = sub_24F925838();
  v28 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v27)
  {
    v28 = sub_24F925848();
  }

  sub_24F923318();
  v74 = v24 & 1;
  v73 = 0;
  *&v68 = v20;
  *(&v68 + 1) = v22;
  LOBYTE(v69) = v24 & 1;
  *(&v69 + 1) = v26;
  LOBYTE(v70) = v28;
  *(&v70 + 1) = v29;
  *v71 = v30;
  *&v71[8] = v31;
  *&v71[16] = v32;
  v71[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790);
  sub_24E6AF8AC();
  v33 = v51;
  sub_24F9265E8();
  v61[0] = *v71;
  *(v61 + 9) = *&v71[9];
  v60[1] = v69;
  v60[2] = v70;
  v60[0] = v68;
  sub_24E601704(v60, &qword_27F217790);
  v34 = v50;
  v68 = *(v50 + 8);
  LOBYTE(v69) = *(v50 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  v35 = v62;
  v36 = v63;
  v37 = *v34;
  if (qword_27F210DA0 != -1)
  {
    swift_once();
  }

  sub_24EFD24EC(v35, *(&v35 + 1), v36, v37, &v54);
  v38 = v52;
  sub_24E60169C(v33, v52, &qword_27F235FE0);
  v39 = v53;
  *v53 = 0;
  *(v39 + 8) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FF0);
  sub_24E60169C(v38, v39 + v40[12], &qword_27F235FE0);
  v41 = v39 + v40[16];
  v42 = v59;
  v67 = v59;
  v43 = v58;
  v44 = v56;
  v65 = v57;
  v66 = v58;
  v45 = v54;
  v46 = v55;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  *(v41 + 3) = v57;
  *(v41 + 4) = v43;
  *(v41 + 1) = v46;
  *(v41 + 2) = v44;
  *(v41 + 40) = v42;
  *v41 = v45;
  v47 = v39 + v40[20];
  *v47 = 0;
  v47[8] = 0;
  sub_24EFD261C(&v62, &v68);
  sub_24E601704(v33, &qword_27F235FE0);
  v70 = v56;
  *v71 = v57;
  *&v71[16] = v58;
  v72 = v59;
  v68 = v54;
  v69 = v55;
  sub_24EFD2654(&v68);
  return sub_24E601704(v38, &qword_27F235FE0);
}

uint64_t sub_24EFD0B54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v7;
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F91F778();
  *&v70 = sub_24F92B148();
  *(&v70 + 1) = v9;
  sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  *&v70 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  if (qword_27F210D48 != -1)
  {
    swift_once();
  }

  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v15, v17, v19 & 1);

  v27 = sub_24F925838();
  v28 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v27)
  {
    v28 = sub_24F925848();
  }

  sub_24F923318();
  v78 = v24 & 1;
  v77 = 0;
  *&v70 = v20;
  *(&v70 + 1) = v22;
  LOBYTE(v71) = v24 & 1;
  *(&v71 + 1) = v26;
  LOBYTE(v72) = v28;
  *(&v72 + 1) = v29;
  *v73 = v30;
  *&v73[8] = v31;
  *&v73[16] = v32;
  v73[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790);
  sub_24E6AF8AC();
  v33 = v49;
  sub_24F9265E8();
  v60[2] = v72;
  v61[0] = *v73;
  *(v61 + 9) = *&v73[9];
  v60[0] = v70;
  v60[1] = v71;
  sub_24E601704(v60, &qword_27F217790);
  v34 = v48;
  v70 = *(v48 + 32);
  LOBYTE(v71) = *(v48 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  sub_24EFD2284(v62, *(&v62 + 1), v63, *v34, &v52);
  v35 = v50;
  sub_24E60169C(v33, v50, &qword_27F235FE0);
  v36 = v51;
  *v51 = 0;
  *(v36 + 8) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FE8);
  sub_24E60169C(v35, v36 + v37[12], &qword_27F235FE0);
  v38 = (v36 + v37[16]);
  v39 = v56;
  v40 = v57;
  v66 = v56;
  v67 = v57;
  v41 = v58;
  v42 = v59;
  v68 = v58;
  v69 = v59;
  v43 = v52;
  v44 = v53;
  v62 = v52;
  v63 = v53;
  v45 = v55;
  v64 = v54;
  v65 = v55;
  v38[2] = v54;
  v38[3] = v45;
  *v38 = v43;
  v38[1] = v44;
  v38[6] = v41;
  v38[7] = v42;
  v38[4] = v39;
  v38[5] = v40;
  v46 = v36 + v37[20];
  *v46 = 0;
  v46[8] = 0;
  sub_24EFD2484(&v62, &v70);
  sub_24E601704(v33, &qword_27F235FE0);
  *&v73[16] = v56;
  v74 = v57;
  v75 = v58;
  v76 = v59;
  v70 = v52;
  v71 = v53;
  v72 = v54;
  *v73 = v55;
  sub_24EFD24BC(&v70);
  return sub_24E601704(v35, &qword_27F235FE0);
}

uint64_t sub_24EFD1060@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v160 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235FF8);
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v128 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236000);
  v156 = *(v4 - 8);
  v157 = v4;
  MEMORY[0x28223BE20](v4);
  v152 = &v128 - v5;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236008);
  MEMORY[0x28223BE20](v150);
  v155 = &v128 - v6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236010);
  MEMORY[0x28223BE20](v154);
  v153 = &v128 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236018);
  MEMORY[0x28223BE20](v151);
  v159 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = &v128 - v10;
  MEMORY[0x28223BE20](v11);
  v158 = &v128 - v12;
  v13 = sub_24F924258();
  MEMORY[0x28223BE20](v13);
  v15 = (&v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236020);
  v134 = *(v16 - 8);
  v135 = v16;
  MEMORY[0x28223BE20](v16);
  v133 = &v128 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236028);
  v143 = *(v18 - 8);
  v144 = v18;
  MEMORY[0x28223BE20](v18);
  v140 = &v128 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236030);
  MEMORY[0x28223BE20](v138);
  v21 = &v128 - v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236038);
  MEMORY[0x28223BE20](v141);
  v142 = &v128 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236040);
  MEMORY[0x28223BE20](v139);
  v147 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v137 = &v128 - v25;
  MEMORY[0x28223BE20](v26);
  v164 = &v128 - v27;
  v166[0] = *(a1 + 8);
  LOBYTE(v166[1]) = a1[24];
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  v28 = v165[0];
  v29 = v165[1];
  v163 = a1;
  v30 = *a1;
  if (qword_27F210DA0 != -1)
  {
    swift_once();
  }

  v162 = v13;

  v136 = v30;
  sub_24EFD24EC(v28, *(&v28 + 1), v29, v30, &v171);
  sub_24F927618();
  sub_24F9242E8();
  if (qword_27F210D90 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v193 = v180;
  v194 = v181;
  v195 = v182;
  v189 = v176;
  v190 = v177;
  v191 = v178;
  v192 = v179;
  v185 = v172;
  v186 = v173;
  v187 = v174;
  *&v196 = v183;
  v188 = v175;
  v184 = v171;
  v166[12] = v196;
  v166[13] = v197;
  v166[14] = v198;
  *&v166[15] = v199;
  v166[8] = v179;
  v166[9] = v180;
  v166[10] = v181;
  v166[11] = v182;
  v166[4] = v175;
  v166[5] = v176;
  v166[6] = v177;
  v166[7] = v178;
  v166[0] = v171;
  v166[1] = v172;
  v166[2] = v173;
  v166[3] = v174;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236048);
  v32 = sub_24EFD2684();
  v33 = v133;
  sub_24F926B78();
  v169[12] = v166[12];
  v169[13] = v166[13];
  v169[14] = v166[14];
  v170 = *&v166[15];
  v169[8] = v166[8];
  v169[9] = v166[9];
  v169[10] = v166[10];
  v169[11] = v166[11];
  v169[4] = v166[4];
  v169[5] = v166[5];
  v169[6] = v166[6];
  v169[7] = v166[7];
  v169[0] = v166[0];
  v169[1] = v166[1];
  v169[2] = v166[2];
  v169[3] = v166[3];
  sub_24E601704(v169, &qword_27F236048);
  v166[0] = *(v163 + 8);
  LOBYTE(v166[1]) = v163[24];
  sub_24F923348();
  *&v166[0] = v31;
  *(&v166[0] + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v140;
  v35 = v135;
  sub_24F9269C8();

  (*(v134 + 8))(v33, v35);
  if (qword_27F210D98 != -1)
  {
    swift_once();
  }

  v36 = qword_27F39D330;
  v37 = *(v162 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_24F924B38();
  v40 = *(v39 - 8);
  v41 = *(v40 + 104);
  LODWORD(v135) = v38;
  v133 = v41;
  v134 = v39;
  v131 = v40 + 104;
  (v41)(v15 + v37, v38);
  *v15 = v36;
  v15[1] = v36;
  v42 = sub_24F924248();
  *(&v166[1] + 1) = v42;
  v130 = sub_24EFD2D88(&qword_27F236070, MEMORY[0x277CDFBC8]);
  *&v166[2] = v130;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v166);
  sub_24E6EB910(v15, boxed_opaque_existential_1);
  v132 = v42;
  *(boxed_opaque_existential_1 + *(v42 + 20)) = 0xC010000000000000;
  sub_24E6EB974(v15);
  sub_24E60169C(v166, v21, &qword_27F236078);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236080);
  v46 = v143;
  v45 = v144;
  (*(v143 + 16))(&v21[v44[9]], v34, v144);
  v47 = v34;
  v48 = &v21[v44[10]];
  *v48 = sub_24F923398() & 1;
  *(v48 + 1) = v49;
  v48[16] = v50 & 1;
  v51 = &v21[v44[11]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v128 = v15;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v52 = qword_27F24E488;
  v129 = v52;
  v53 = sub_24F923398();
  v55 = v54;
  v57 = v56;
  v58 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236088) + 36)];
  *v58 = v52;
  v58[8] = v53 & 1;
  *(v58 + 2) = v55;
  v58[24] = v57 & 1;
  v59 = sub_24F923398();
  v61 = v60;
  v63 = v62;
  sub_24E601704(v166, &qword_27F236078);
  (*(v46 + 8))(v47, v45);
  v64 = &v21[*(v138 + 36)];
  *v64 = v59 & 1;
  *(v64 + 1) = v61;
  v64[16] = v63 & 1;
  v65 = sub_24F925828();
  sub_24F923318();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v142;
  sub_24E6009C8(v21, v142, &qword_27F236030);
  v75 = v74 + *(v141 + 36);
  *v75 = v65;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  v76 = v137;
  sub_24E6009C8(v74, v137, &qword_27F236038);
  v77 = (v76 + *(v139 + 36));
  *v77 = CGSizeMake;
  v77[1] = 0;
  v77[2] = &unk_2861C1010;
  sub_24E6009C8(v76, v164, &qword_27F236040);
  v78 = v163;
  v166[0] = *(v163 + 2);
  LOBYTE(v166[1]) = v163[48];
  sub_24F923348();
  sub_24EFD2284(*&v165[0], *(&v165[0] + 1), v165[1], v136, v167);
  sub_24F927618();
  sub_24F9242E8();
  sub_24F927618();
  sub_24F9238C8();
  v168[12] = v167[12];
  v168[13] = v167[13];
  v168[14] = v167[14];
  v168[8] = v167[8];
  v168[9] = v167[9];
  v168[10] = v167[10];
  v168[11] = v167[11];
  v168[4] = v167[4];
  v168[5] = v167[5];
  v168[6] = v167[6];
  v168[7] = v167[7];
  v168[0] = v167[0];
  v168[1] = v167[1];
  v168[2] = v167[2];
  v168[3] = v167[3];
  memcpy(v165, v168, sizeof(v165));
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236090);
  v80 = sub_24EFD27F8();
  v81 = v145;
  sub_24F926B78();
  memcpy(v166, v165, sizeof(v166));
  sub_24E601704(v166, &qword_27F236090);
  v165[0] = *(v78 + 2);
  LOBYTE(v165[1]) = v78[48];
  sub_24F923348();
  *&v165[0] = v79;
  *(&v165[0] + 1) = v80;
  swift_getOpaqueTypeConformance2();
  v82 = v152;
  v83 = v148;
  sub_24F9269C8();

  (*(v146 + 8))(v81, v83);
  v84 = qword_27F39D330;
  v85 = v128;
  (v133)(v128 + *(v162 + 20), v135, v134);
  *v85 = v84;
  v85[1] = v84;
  v86 = v132;
  *(&v165[1] + 1) = v132;
  *&v165[2] = v130;
  v87 = __swift_allocate_boxed_opaque_existential_1(v165);
  sub_24E6EB910(v85, v87);
  *(v87 + *(v86 + 20)) = 0xC010000000000000;
  sub_24E6EB974(v85);
  v88 = v155;
  sub_24E60169C(v165, v155, &qword_27F2360B8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360C0);
  v91 = v156;
  v90 = v157;
  (*(v156 + 16))(v88 + v89[9], v82, v157);
  v92 = v88 + v89[10];
  *v92 = sub_24F923398() & 1;
  *(v92 + 8) = v93;
  *(v92 + 16) = v94 & 1;
  v95 = v88 + v89[11];
  *v95 = swift_getKeyPath();
  *(v95 + 8) = 0;
  LOBYTE(v95) = sub_24F923398();
  v97 = v96;
  v99 = v98;
  v100 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360C8) + 36);
  *v100 = v129;
  *(v100 + 8) = v95 & 1;
  *(v100 + 16) = v97;
  *(v100 + 24) = v99 & 1;
  LOBYTE(v95) = sub_24F923398();
  v102 = v101;
  v104 = v103;
  sub_24E601704(v165, &qword_27F2360B8);
  (*(v91 + 8))(v82, v90);
  v105 = v88 + *(v150 + 36);
  *v105 = v95 & 1;
  *(v105 + 8) = v102;
  *(v105 + 16) = v104 & 1;
  LOBYTE(v87) = sub_24F925828();
  sub_24F923318();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v153;
  sub_24E6009C8(v88, v153, &qword_27F236008);
  v115 = v114 + *(v154 + 36);
  *v115 = v87;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v114;
  v117 = v149;
  sub_24E6009C8(v116, v149, &qword_27F236010);
  v118 = (v117 + *(v151 + 36));
  *v118 = CGSizeMake;
  v118[1] = 0;
  v118[2] = &unk_2861C1040;
  v119 = v158;
  sub_24E6009C8(v117, v158, &qword_27F236018);
  v120 = v164;
  v121 = v147;
  sub_24E60169C(v164, v147, &qword_27F236040);
  v122 = v159;
  sub_24E60169C(v119, v159, &qword_27F236018);
  v123 = v160;
  *v160 = 0;
  *(v123 + 8) = 0;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2360D0);
  sub_24E60169C(v121, v123 + v124[12], &qword_27F236040);
  v125 = v123 + v124[16];
  *v125 = 0;
  v125[8] = 0;
  sub_24E60169C(v122, v123 + v124[20], &qword_27F236018);
  v126 = v123 + v124[24];
  *v126 = 0;
  v126[8] = 0;
  sub_24E601704(v119, &qword_27F236018);
  sub_24E601704(v120, &qword_27F236040);
  sub_24E601704(v122, &qword_27F236018);
  return sub_24E601704(v121, &qword_27F236040);
}

uint64_t sub_24EFD2248()
{
  v1 = *(v0 + 16);
  v3[0] = *v0;
  v3[1] = v1;
  v3[2] = *(v0 + 32);
  v4 = *(v0 + 48);
  return sub_24EFCFD40(v3);
}

uint64_t sub_24EFD2284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24F926F28();
  sub_24F926F28();
  sub_24F926F28();
  if (qword_27F210D40 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39D2D0;
  type metadata accessor for OverlayControlsVolumeViewModel();

  sub_24F926F28();
  sub_24F926F28();
  LOBYTE(v11) = 0;
  result = sub_24F926F28();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4 & 1;
  *(a5 + 18) = v16;
  *(a5 + 22) = v17;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  *(a5 + 40) = v12;
  *(a5 + 41) = v12;
  *(a5 + 44) = *(&v12 + 3);
  *(a5 + 48) = v13;
  *(a5 + 56) = v12;
  *(a5 + 64) = v13;
  *(a5 + 72) = v14;
  *(a5 + 80) = v12;
  *(a5 + 88) = v13;
  *(a5 + 96) = v12;
  *(a5 + 100) = *(&v11 + 3);
  *(a5 + 97) = v11;
  *(a5 + 104) = v13;
  *(a5 + 112) = v12;
  *(a5 + 113) = *v15;
  *(a5 + 116) = *&v15[3];
  *(a5 + 120) = v13;
  return result;
}

uint64_t sub_24EFD24EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X8>)
{
  type metadata accessor for OverlayControlsBrightnessViewModel();
  sub_24F926F28();
  sub_24F926F28();
  sub_24F926F28();
  result = sub_24F926F28();
  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  *(a5 + 24) = v12;
  *(a5 + 32) = v11;
  *(a5 + 33) = v11;
  *(a5 + 36) = *(&v11 + 3);
  *(a5 + 40) = v12;
  *(a5 + 48) = v11;
  *(a5 + 49) = 0;
  *(a5 + 52) = -805306368;
  *(a5 + 56) = v12;
  *(a5 + 64) = a1;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 81) = a4;
  return result;
}

unint64_t sub_24EFD2684()
{
  result = qword_27F236050;
  if (!qword_27F236050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236048);
    sub_24EFD2710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236050);
  }

  return result;
}

unint64_t sub_24EFD2710()
{
  result = qword_27F236058;
  if (!qword_27F236058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236060);
    sub_24EFD279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236058);
  }

  return result;
}

unint64_t sub_24EFD279C()
{
  result = qword_27F236068;
  if (!qword_27F236068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236068);
  }

  return result;
}

unint64_t sub_24EFD27F8()
{
  result = qword_27F236098;
  if (!qword_27F236098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236090);
    sub_24EFD2884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236098);
  }

  return result;
}

unint64_t sub_24EFD2884()
{
  result = qword_27F2360A0;
  if (!qword_27F2360A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360A8);
    sub_24EFD2910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360A0);
  }

  return result;
}

unint64_t sub_24EFD2910()
{
  result = qword_27F2360B0;
  if (!qword_27F2360B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360B0);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24EFD2998(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EFD29E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EFD2A4C()
{
  result = qword_27F2360D8;
  if (!qword_27F2360D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360E0);
    sub_24EFD2AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360D8);
  }

  return result;
}

unint64_t sub_24EFD2AD0()
{
  result = qword_27F2360E8;
  if (!qword_27F2360E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360F0);
    sub_24E602068(&qword_27F235F80, &qword_27F235F70);
    sub_24E602068(&qword_27F235F88, &qword_27F235F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2360E8);
  }

  return result;
}

unint64_t sub_24EFD2C14()
{
  result = qword_27F236120;
  if (!qword_27F236120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236120);
  }

  return result;
}

unint64_t sub_24EFD2CCC()
{
  result = qword_27F236138;
  if (!qword_27F236138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360F8);
    sub_24EFD2C14();
    sub_24EFD2D88(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236138);
  }

  return result;
}

uint64_t sub_24EFD2D88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_47()
{

  return swift_deallocObject();
}

unint64_t sub_24EFD2EE8()
{
  result = qword_27F236168;
  if (!qword_27F236168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236158);
    sub_24EFD2F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236168);
  }

  return result;
}

unint64_t sub_24EFD2F74()
{
  result = qword_27F236170;
  if (!qword_27F236170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236150);
    sub_24EFD2CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236170);
  }

  return result;
}

uint64_t objectdestroy_45Tm()
{

  return swift_deallocObject();
}

unint64_t sub_24EFD30D0()
{
  result = qword_27F236188;
  if (!qword_27F236188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236140);
    sub_24EFD3188();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236188);
  }

  return result;
}

unint64_t sub_24EFD3188()
{
  result = qword_27F236190;
  if (!qword_27F236190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236118);
    sub_24EFD3214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236190);
  }

  return result;
}

unint64_t sub_24EFD3214()
{
  result = qword_27F236198;
  if (!qword_27F236198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2360F8);
    sub_24EFD2CCC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236198);
  }

  return result;
}

unint64_t sub_24EFD3338()
{
  result = qword_27F2361A0;
  if (!qword_27F2361A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236158);
    sub_24EFD2EE8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2361A0);
  }

  return result;
}

uint64_t sub_24EFD3460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232348);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363A0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EFDB7FC(&qword_27F220F48, type metadata accessor for GameControllerObserver);
  sub_24F91FD88();

  v1 = &v10[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis];
  swift_beginAccess();
  v2 = *v1;

  *(v0 + 32) = v2;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v3 = &v8[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis];
  swift_beginAccess();
  v4 = *v3;

  *(v0 + 36) = v4;
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F91FD88();

  v5 = &v9[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis];
  swift_beginAccess();
  v6 = *v5;

  *(v0 + 40) = v6;
  return v0;
}