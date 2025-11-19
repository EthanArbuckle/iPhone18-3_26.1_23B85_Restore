uint64_t sub_1AB0991E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void JSValue.array.getter()
{
  v1 = v0;
  v2 = sub_1AB460514();
  v3 = [v0 valueForProperty_];

  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = [v3 toUInt32];

  if (v4)
  {
    sub_1AB461754();
    v5 = 0;
    while ([v1 valueAtIndex_])
    {
      ++v5;
      sub_1AB461724();
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      if (v4 == v5)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_1AB099354(void *a1)
{
  if (![a1 isString] || (v2 = objc_msgSend(a1, sel_toString)) == 0)
  {

    return 0;
  }

  v3 = v2;
  v4 = sub_1AB460544();
  v6 = v5;

  v7 = v4 == 0x676E69727473 && v6 == 0xE600000000000000;
  if (v7 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  v9 = v4 == 0x7961727261 && v6 == 0xE500000000000000;
  if (v9 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  if (v4 == 0x6E61656C6F6F62 && v6 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  if (v4 == 0x616E6F6974636964 && v6 == 0xEA00000000007972 || (sub_1AB461DA4() & 1) != 0)
  {

    return 6;
  }

  if (v4 == 0x7265626D756ELL && v6 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  if (v4 != 7107189 || v6 != 0xE300000000000000)
  {
    v10 = sub_1AB461DA4();

    if (v10)
    {
      return 5;
    }

    return 0;
  }

  return 5;
}

uint64_t sub_1AB099748()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB099790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB09BE94(a1, v4, v5, v6);
}

uint64_t sub_1AB09985C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AB027460;

  return sub_1AB099908(v2, v3);
}

uint64_t sub_1AB099908(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AB099B20;

  return sub_1AB09AB84();
}

id sub_1AB0999B0()
{
  v1 = OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag____lazy_storage___amsBag;
  v2 = *(v0 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag____lazy_storage___amsBag);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag____lazy_storage___amsBag);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_processInfo);
    v5 = sub_1AB460514();
    v6 = sub_1AB460514();
    v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6 processInfo:v4];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1AB099AAC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB099B20(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1AB45F584();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1AB099CC8(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    *(a3 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag) = a1;
    v3 = a1;
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    v5 = a2;
    if (qword_1EB433A58 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB46C108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v16 = MEMORY[0x1E69E6158];
    v15[0] = 0xD00000000000002DLL;
    v15[1] = 0x80000001AB50D5D0;
    *(v8 + 48) = 0u;
    *(v8 + 32) = 0u;
    sub_1AB0169C4(v15, v8 + 32);
    *(v8 + 64) = 0;
    *(v7 + 32) = v8;
    swift_getErrorValue();
    v16 = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v13, v14);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    sub_1AB01522C(v15, v12);
    *(v10 + 48) = 0u;
    *(v10 + 32) = 0u;
    sub_1AB0169C4(v12, v10 + 32);
    *(v10 + 64) = 0;
    *(v7 + 40) = v10;
    sub_1AB014AC0(v15, &unk_1EB437E60);
    v15[0] = v6;
    v12[0] = 0;
    OSLogger.log(contentsOf:withLevel:)(v7, v12);
  }

  return sub_1AB461264();
}

uint64_t JSRequest.addingOption(_:withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  v14 = *(v4 + 40);
  v15 = v4[6];
  *a4 = v10;
  *(a4 + 8) = v9;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = v14;
  *(a4 + 48) = v15;

  if (sub_1AB460784())
  {
    sub_1AB42852C("JetEngine/JSRequest.swift", 25, 2, 82);
  }

  sub_1AB01522C(a1, v17);

  return sub_1AB01AD48(v17, a2, a3);
}

uint64_t sub_1AB099FE0()
{
  *(v1 + 168) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AB09B0EC, 0, 0);
}

void *sub_1AB09A134(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AB09A284(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  sub_1AB014A58(a1 + 32, &v43, &qword_1EB436B78);
  v40 = v43;
  v41 = v44;
  v42 = v45;
  sub_1AB014B78(v46, v39);
  v7 = *a3;
  v8 = sub_1AB02B1D8(&v40);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (v7[3] < v13)
  {
    sub_1AB0C03C8(v13, v6 & 1);
    v8 = sub_1AB02B1D8(&v40);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = sub_1AB461FC4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v8;
  sub_1AB1D76C0();
  v8 = v18;
  if (v14)
  {
LABEL_8:
    v16 = swift_allocError();
    swift_willThrow();
    v47 = v16;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      sub_1AB02B2E4(&v40);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v20 = v19[6] + 40 * v8;
  v21 = v40;
  v22 = v41;
  *(v20 + 32) = v42;
  *v20 = v21;
  *(v20 + 16) = v22;
  sub_1AB014B78(v39, (v19[7] + 32 * v8));
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v12)
  {
    v19[2] = v24;
    if (v4 != 1)
    {
      v6 = a1 + 104;
      v14 = 1;
      while (v14 < *(a1 + 16))
      {
        sub_1AB014A58(v6, &v43, &qword_1EB436B78);
        v40 = v43;
        v41 = v44;
        v42 = v45;
        sub_1AB014B78(v46, v39);
        v25 = *a3;
        v26 = sub_1AB02B1D8(&v40);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v12 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v12)
        {
          goto LABEL_22;
        }

        v31 = v27;
        if (v25[3] < v30)
        {
          sub_1AB0C03C8(v30, 1);
          v26 = sub_1AB02B1D8(&v40);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v31)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v34 = v33[6] + 40 * v26;
        v35 = v40;
        v36 = v41;
        *(v34 + 32) = v42;
        *v34 = v35;
        *(v34 + 16) = v36;
        sub_1AB014B78(v39, (v33[7] + 32 * v26));
        v37 = v33[2];
        v12 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v14;
        v33[2] = v38;
        v6 += 72;
        if (v4 == v14)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB4FFF50);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](39, 0xE100000000000000);
  sub_1AB461884();
  __break(1u);
}

uint64_t sub_1AB09A670(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1AB09AA94(0, v1, 0);
    v2 = v34;
    v4 = a1 + 64;
    v5 = sub_1AB4614F4();
    v6 = 0;
    v27 = *(a1 + 36);
    v26 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v9 = *(*(a1 + 48) + v5);
      sub_1AB0165C4(*(a1 + 56) + 32 * v5, v30);
      v28[0] = v9;
      sub_1AB014B78(v30, v29);
      sub_1AB461564();
      sub_1AB0165C4(v29, v32 + 8);
      sub_1AB014AC0(v28, &qword_1EB437528);
      v34 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AB09AA94((v10 > 1), v11 + 1, 1);
        v2 = v34;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 72 * v11;
      *(v12 + 32) = v31[0];
      v13 = v31[1];
      v14 = v32[0];
      v15 = v32[1];
      *(v12 + 96) = v33;
      *(v12 + 64) = v14;
      *(v12 + 80) = v15;
      *(v12 + 48) = v13;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_27;
      }

      v4 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v8);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v27 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (a1 + 72 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1AB031480(v5, v27, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_1AB031480(v5, v27, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436968);
      v23 = sub_1AB461924();
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC8];
    }

    *&v31[0] = v23;

    sub_1AB09A284(v24, 1, v31);

    return *&v31[0];
  }

  return result;
}

void *sub_1AB09AA94(void *a1, int64_t a2, char a3)
{
  result = sub_1AB09A134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AB09AB84()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC90);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB09AC50, 0, 0);
}

uint64_t sub_1AB09AC50()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = sub_1AB0999B0();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1AB09C124;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_1AB290B64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  sub_1AB460AF4();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AB0944A4;
  v0[13] = &block_descriptor_18;
  [v4 createSnapshotWithCompletion_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

double sub_1AB09AE18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1AB014DB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB0676CC();
      v10 = v12;
    }

    sub_1AB014B78((*(v10 + 56) + 32 * v8), a3);
    sub_1AB18F158(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t dispatch thunk of MetricsIDService.queryID(forTopic:withType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB0AFC48;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1AB09B010(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 65) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB09C320, 0, 0);
}

uint64_t sub_1AB09B03C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 80) = a3;
  v8 = swift_task_alloc();
  *(v4 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_1AB0AF8B4;

  return sub_1AB09C538(a1, a2, a4);
}

uint64_t sub_1AB09B0EC()
{
  v1 = v0[21];
  MEMORY[0x1AC59BA20](0x696669746E656469, 0xEB00000000737265);
  v2 = sub_1AB460514();

  v3 = [v1 dictionaryForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
  v4 = swift_allocObject();
  v0[22] = v4;
  v4[2] = v3;
  v4[3] = sub_1AB098790;
  v4[4] = 0;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1AB09EA48;

  return sub_1AB09F204(v4);
}

uint64_t sub_1AB09B278(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (a2)
  {
    a2(*a1);
  }

  **(*(a4 + 64) + 40) = v5;
  v6 = v5;

  return swift_continuation_throwingResume();
}

uint64_t sub_1AB09B2EC()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[22];

  return v4(v5);
}

uint64_t sub_1AB09B380(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AB09B4CC, 0, 0);
  }
}

uint64_t sub_1AB09B4D0()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB160B80, 0, 0);
  }

  else
  {
    v9 = (*(v2[5] + 32) + **(v2[5] + 32));
    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_1AB0B256C;
    v4 = v2[12];
    v5 = v2[9];
    v7 = v2[5];
    v6 = v2[6];

    return v9(v5, v4, v6, v7);
  }
}

void sub_1AB09B6D4(uint64_t a1)
{
  v3 = [objc_opt_self() currentContext];
  if (v3)
  {
    v4 = v3;
    sub_1AB09B86C(v3, a1, v1);
    v6 = v5;
  }

  else
  {
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB09B86C(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E698CA40]) init];
  JSValue.array.getter();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_22:
    v6 = sub_1AB4618F4();
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v43 = v5 & 0xFFFFFFFFFFFFFF8;
      v44 = v5 & 0xC000000000000001;
      v42 = v5;
      while (1)
      {
        if (v44)
        {
          v9 = MEMORY[0x1AC59C990](v7, v5);
        }

        else
        {
          if (v7 >= *(v43 + 16))
          {
            goto LABEL_21;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v12 = v3;
        v13 = sub_1AB460514();
        v14 = [v10 valueForProperty_];

        if (!v14)
        {
          break;
        }

        if (![v14 isString] || (v15 = objc_msgSend(v14, sel_toString)) == 0)
        {

          sub_1AB0C3EF0();
          swift_allocError();
          LOBYTE(aBlock[0]) = 1;
          LOBYTE(v46) = 1;
          *v24 = 0xD000000000000029;
          *(v24 + 8) = 0x80000001AB50D570;
          *(v24 + 16) = 0;
          *(v24 + 24) = 1;
          *(v24 + 32) = 0;
          *(v24 + 40) = 1;
          *(v24 + 48) = 0u;
          *(v24 + 64) = 0u;
          *(v24 + 80) = 0u;
          *(v24 + 96) = 0;
LABEL_19:
          swift_willThrow();

          return;
        }

        v16 = v15;
        v17 = v6;
        sub_1AB460544();

        v18 = sub_1AB460514();
        v19 = [v10 valueForProperty_];

        if (!v19)
        {
          goto LABEL_26;
        }

        v20 = sub_1AB099354(v19);
        v3 = v12;
        if (v21)
        {

          sub_1AB0C3EF0();
          swift_allocError();
          LOBYTE(aBlock[0]) = 1;
          LOBYTE(v46) = 1;
          *v25 = 0xD000000000000024;
          *(v25 + 8) = 0x80000001AB50D5A0;
          *(v25 + 16) = 0;
          *(v25 + 24) = 1;
          *(v25 + 25) = aBlock[0];
          *(v25 + 28) = *(aBlock + 3);
          *(v25 + 32) = 0;
          *(v25 + 40) = 1;
          *(v25 + 41) = v46;
          *(v25 + 44) = *(&v46 + 3);
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0;
          goto LABEL_19;
        }

        v22 = v20;
        v23 = sub_1AB460514();

        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          [v12 mutableCopyWithZone_];
          sub_1AB461494();
          swift_unknownObjectRelease();
          sub_1AB1FC3B4();
          swift_dynamicCast();

          v3 = v46;
        }

        [v3 addBagKey:v23 valueType:v22];

        ++v7;
        v6 = v17;
        v8 = v11 == v17;
        v5 = v42;
        if (v8)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

LABEL_23:

  v26 = OBJC_IVAR____TtC9JetEngine11JSBagObject_bag;
  v27 = *&a3[OBJC_IVAR____TtC9JetEngine11JSBagObject_bag];
  v28 = [swift_unknownObjectRetain() profile];
  sub_1AB460544();

  v29 = [v27 profileVersion];
  sub_1AB460544();
  swift_unknownObjectRelease();

  v30 = objc_opt_self();
  v31 = v3;
  v32 = sub_1AB460514();
  v33 = sub_1AB460514();
  [v30 registerBagKeySet:v31 forProfile:v32 profileVersion:v33];

  v34 = dispatch_semaphore_create(0);
  v35 = *&a3[v26];
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  *(v36 + 24) = v34;
  aBlock[4] = sub_1AB099CC0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB09C234;
  aBlock[3] = &block_descriptor_47;
  v37 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v38 = a3;
  v39 = v34;

  [v35 createSnapshotWithCompletion_];
  _Block_release(v37);
  swift_unknownObjectRelease();
  sub_1AB461254();
  if ([objc_opt_self() valueWithUndefinedInContext_])
  {

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1AB09BE54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB09BE94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1AB027460;

  return v7();
}

uint64_t sub_1AB09BF7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AB027554;

  return sub_1AB09C03C(v2, v3, v4);
}

uint64_t sub_1AB09C03C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1AB027554;

  return v6();
}

uint64_t sub_1AB09C124()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1AB2900C4;
  }

  else
  {
    v2 = sub_1AB099AAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB09C234(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1AB09C2C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v1, v2);
  return v4;
}

uint64_t sub_1AB09C320()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 40);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *(v0 + 64) = v1;
  v10 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1AB0AFAF8;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v6, v0 + 64, v7, v3, v4);
}

uint64_t sub_1AB09C468(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB0C245C;

  return sub_1AB09B03C(a1, a2, v8, a4);
}

uint64_t sub_1AB09C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB09C55C, 0, 0);
}

uint64_t sub_1AB09C55C()
{
  v1 = *(v0[6] + 48);
  v0[7] = v1;
  v0[2] = v1;
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1AB38A764;

  return sub_1AB099FE0();
}

uint64_t sub_1AB09C67C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB3962CC;
  }

  else
  {
    *(v1 + 176) = *(v1 + 80);
    v3 = sub_1AB09B2EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB09C7A0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = (v2 + *(type metadata accessor for NetRequest() + 36));
  v6 = *v4;
  v5 = v4[1];
  LOBYTE(v4) = *(v4 + 16);
  *v3 = v1;
  *(v3 + 8) = v6;
  *(v3 + 16) = v5;
  *(v3 + 24) = v4;
  v8 = v0[1];

  return v8();
}

uint64_t sub_1AB09C83C(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AB0B20F4;

  return AppleServicesFetcherInstrumented.fetch(contentsOf:)(a2);
}

uint64_t AppleServicesFetcherInstrumented.fetch(contentsOf:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 192) = v1;
  *(v2 + 200) = v3;
  *(v2 + 208) = *(a1 + 1);
  *(v2 + 153) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1AB09C908, 0, 0);
}

uint64_t sub_1AB09C908()
{
  v14 = v0;
  v1 = *(v0 + 153);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = v1;
  v2 = sub_1AB09CB58(&v11);
  *(v0 + 224) = v2;
  if (v2)
  {

    sub_1AB460144();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43C308);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 160);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    v10 = xmmword_1AB4D4720;
    *(v6 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    *(v0 + 184) = MEMORY[0x1E69E6158];
    *(v0 + 160) = 0xD00000000000002DLL;
    *(v0 + 168) = 0x80000001AB50D180;
    *(v7 + 48) = 0u;
    *(v7 + 32) = 0u;
    sub_1AB0169C4(v0 + 160, v7 + 32);
    *(v7 + 64) = 0;
    *(v6 + 32) = v7;
    Logger.warning(_:)(v6, v5, v4);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    v3 = 0;
  }

  *(v0 + 232) = v3;
  v8 = [*(*(v0 + 192) + 40) dataTaskPromiseWithRequest:*(v0 + 200) activity:v10];
  *(v0 + 240) = v8;
  *(v0 + 248) = sub_1AB09CC94(v8);

  return MEMORY[0x1EEE6DFA0](sub_1AB09CE44, 0, 0);
}

uint64_t sub_1AB09CB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(a1 + 8) & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  if (qword_1EB434B88 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_1EB46C200;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 10);
  sub_1AB3C71A4(&v5);
  os_unfair_lock_unlock(v3 + 10);
  return v5;
}

uint64_t sub_1AB09CC94(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AC8);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB0B2280;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058080;
  v11 = &block_descriptor_33;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB225A6C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_36;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1AB09CE44()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB0B2440;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB09CF00(v2);
  sub_1AB09D0D8(v2);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB09CF00(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA48C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA48C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436A0C(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB439880);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB09D0B4(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB09D0B4((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB09D0D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB09D174@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BE68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB09E200();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v46) = 0;
  v10 = sub_1AB461A84();
  v59 = v11;
  LOBYTE(v41) = 1;
  sub_1AB09E1AC();
  sub_1AB461AC4();
  v40 = v10;
  v39 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  LOBYTE(v41) = 2;
  sub_1AB09E038(&qword_1EB433A30);
  sub_1AB461AC4();
  v38 = v46;
  LOBYTE(v41) = 4;
  sub_1AB461A54();
  v37 = v46;
  LOBYTE(v46) = 5;
  v12 = sub_1AB461A14();
  v14 = v13;
  v15 = v12;
  LOBYTE(v46) = 3;
  v16 = sub_1AB461A34();
  v34 = v17;
  v35 = v16;
  v36 = v15;
  v18 = qword_1EB433B40;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_1EB433B50;
  v33 = qword_1EB433B48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AB4D47F0;
  *(v20 + 32) = v33;
  *(v20 + 40) = v19;
  v21 = v59;
  *(v20 + 48) = v40;
  *(v20 + 56) = v21;
  v46 = v20;
  v47 = sub_1AB027C78;
  v48 = 0;

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v32 = sub_1AB460484();
  v33 = v22;

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  v32 = sub_1AB09D7EC(v32, v33);
  v24 = v23;

  (*(v6 + 8))(v8, v5);
  v25 = v24 & v34 & 1;
  v57 = v25;
  v26 = v32;
  if (v24)
  {
    v26 = v35;
  }

  v35 = v26;
  *&v41 = v40;
  *(&v41 + 1) = v59;
  v27 = v39;
  LOBYTE(v42) = v39;
  *(&v42 + 1) = v58[0];
  DWORD1(v42) = *(v58 + 3);
  v28 = v38;
  *(&v42 + 1) = v38;
  *&v43 = v26;
  BYTE8(v43) = v24 & v34 & 1;
  *(&v43 + 9) = *v56;
  HIDWORD(v43) = *&v56[3];
  v29 = v37;
  *&v44 = v37;
  *(&v44 + 1) = v36;
  v45 = v14;
  *(a2 + 64) = v14;
  v30 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v30;
  v31 = v42;
  *a2 = v41;
  *(a2 + 16) = v31;
  sub_1AB09DF1C(&v41, &v46);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v46 = v40;
  v47 = v59;
  LOBYTE(v48) = v27;
  *(&v48 + 1) = v58[0];
  HIDWORD(v48) = *(v58 + 3);
  v49 = v28;
  v50 = v35;
  v51 = v25;
  *v52 = *v56;
  *&v52[3] = *&v56[3];
  v53 = v29;
  v54 = v36;
  v55 = v14;
  return sub_1AB09DEB0(&v46);
}

uint64_t sub_1AB09D7EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437000);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1AB014B78(&v46, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    sub_1AB0165C4(v51, &v48);
    v8 = MEMORY[0x1E69E63B0];
    if (swift_dynamicCast())
    {
      BYTE8(v46) = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v46;
    }

    if (qword_1EB435D40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    v45 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001AB500010;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437008);
    *&v46 = v8;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1AB461094();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v37 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1AB0223E4;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v40 = sub_1AB460484();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1AB016854();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1AB45FF14();
    }

    v10 = v51;
  }

  else
  {
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return 0;
}

uint64_t sub_1AB09DFD8@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

uint64_t sub_1AB09E038(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4366C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONTimeUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1AB09E134(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BE40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB09E1AC()
{
  result = qword_1EB433C58;
  if (!qword_1EB433C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C58);
  }

  return result;
}

unint64_t sub_1AB09E200()
{
  result = qword_1EB433B68;
  if (!qword_1EB433B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B68);
  }

  return result;
}

unint64_t sub_1AB09E254()
{
  result = qword_1EB433C60;
  if (!qword_1EB433C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C60);
  }

  return result;
}

uint64_t sub_1AB09E2A8()
{
  v1 = *v0;
  v2 = 0x63617073656D616ELL;
  v3 = 0x6E6170736566696CLL;
  v4 = 0x74616C6572726F63;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461746F72;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x736369706F74;
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

uint64_t sub_1AB09E364()
{
  v28 = v0;
  if (v0[145])
  {
    v1 = v0[155];
    v2 = v0[154];
    v3 = v0[153];
    v4 = v0[143];
    v0[138] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43B110);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D47F0;
    *(v5 + 32) = 5;
    *(v5 + 64) = MEMORY[0x1E69E6530];
    *(v5 + 40) = 0;
    *(v5 + 72) = 6;
    v6 = sub_1AB460AD4();
    *(v5 + 104) = sub_1AB016760(0, &qword_1ED4D1940);
    *(v5 + 80) = v6;
    v7 = sub_1AB1DAAF0(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438068);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v0[137] = v7;
    sub_1AB19C16C(v4, v3);
    v8 = *(v1 + 48);
    v0[158] = v8;
    v0[159] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v8(v3, 1, v2) == 1)
    {
      sub_1AB014AC0(v0[153], &qword_1EB4395E0);
    }

    else
    {
      v14 = v0[157];
      v15 = v0[155];
      v16 = v0[154];
      (*(v15 + 32))(v14, v0[153], v16);
      v0[94] = v16;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 91);
      (*(v15 + 16))(boxed_opaque_existential_0, v14, v16);
      sub_1AB1CE520((v0 + 91), 0);
      (*(v15 + 8))(v14, v16);
      v7 = v0[137];
    }

    v0[160] = v7;
    v18 = sub_1AB38A6A8(v0 + 138, v0[142]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437538);
    v19 = swift_allocObject();
    v0[161] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = MEMORY[0x1E69E7CC0];
    *(v19 + 16) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = 0;
    v22 = v18[2];
    v23 = sub_1AB460514();
    sub_1AB09A670(v7);
    v24 = sub_1AB4602D4();

    v25 = [v22 idFieldsForTopic:v23 options:v24];

    v0[69] = sub_1AB18B110;
    v0[70] = v19;
    v0[65] = MEMORY[0x1E69E9820];
    v0[66] = 1107296256;
    v0[67] = sub_1AB09C234;
    v0[68] = &block_descriptor_68_0;
    v26 = _Block_copy(v0 + 65);

    [v25 addFinishBlock_];
    _Block_release(v26);

    return MEMORY[0x1EEE6DFA0](sub_1AB38A1A0, 0, 0);
  }

  else
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v0[102] = MEMORY[0x1E69E6158];
    v0[99] = 0xD000000000000038;
    v0[100] = 0x80000001AB50A2C0;
    *(v10 + 48) = 0u;
    *(v10 + 32) = 0u;
    sub_1AB0169C4((v0 + 99), v10 + 32);
    *(v10 + 64) = 0;
    *(v9 + 32) = v10;
    v27 = 0;
    OSLogger.log(contentsOf:withLevel:)(v9, &v27);

    v11 = sub_1AB0BA124(MEMORY[0x1E69E7CC0]);

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_1AB09E8F8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB253D98, 0, 0);
  }

  else
  {

    v4 = *(v1 + 160);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_1AB09EA48(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AB09EB94, 0, 0);
}

uint64_t sub_1AB09EB94()
{
  v28 = v0;
  v27 = *MEMORY[0x1E69E9840];
  if (*(v0 + 192))
  {
    sub_1AB45F0D4();
    swift_allocObject();
    sub_1AB45F0C4();
    v1 = objc_opt_self();
    v2 = sub_1AB4602D4();

    *(v0 + 152) = 0;
    v3 = [v1 dataWithJSONObject:v2 options:0 error:v0 + 152];

    v4 = *(v0 + 152);
    if (v3)
    {
      v5 = sub_1AB45F854();
      v7 = v6;

      sub_1AB09EF64();
      sub_1AB45F0B4();

      sub_1AB017254(v5, v7);
      v8 = *(v0 + 144);
      goto LABEL_12;
    }

    v9 = v4;

    v10 = sub_1AB45F594();

    swift_willThrow();
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v25 = sub_1AB0168A8(0, 47, 0, MEMORY[0x1E69E7CC0]);
    v12._object = 0x80000001AB505CB0;
    v12._countAndFlagsBits = 0xD00000000000002ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    swift_getErrorValue();
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    *(v0 + 80) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v13, v14);
    sub_1AB014A58(v0 + 56, v0 + 88, &unk_1EB437E60);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1AB0169C4(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v16 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = *(v0 + 16);
    v21 = *(v0 + 32);
    v19[64] = *(v0 + 48);
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    sub_1AB014AC0(v0 + 56, &unk_1EB437E60);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v11 + 32) = v16;
    v26 = 0;
    OSLogger.log(contentsOf:withLevel:)(v11, &v26);
  }

  v8 = 0;
LABEL_12:
  v23 = *(v0 + 8);

  return v23(v8);
}

unint64_t sub_1AB09EF64()
{
  result = qword_1EB433B08;
  if (!qword_1EB433B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B08);
  }

  return result;
}

void *sub_1AB09EFB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BE38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB09F198();
  sub_1AB462224();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BE40);
    sub_1AB09E134(&qword_1EB433A38, sub_1AB3AEFBC);
    sub_1AB461AC4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

void *sub_1AB09F16C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AB09EFB8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1AB09F198()
{
  result = qword_1EB433B20;
  if (!qword_1EB433B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B20);
  }

  return result;
}

uint64_t sub_1AB09F224()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1AB09F2B0, 0, 0);
}

uint64_t sub_1AB09F2B0()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB09E8F8;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB09F37C(v2);
  sub_1AB014AC0(v2, &unk_1EB439A90);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB09F37C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA30C(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA30C(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB0D2798(v4);
    v15 = MEMORY[0x1E69E7CF8];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB439A90);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB09F580(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB09F580((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

double AppleServicesLocalizer.Configuration.init(dataSource:languageSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 184) = 0u;
  v6 = a3 + 184;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0u;
  sub_1AB01494C(a1, a3);
  sub_1AB01494C(a2, a3 + 40);
  *(a3 + 104) = &type metadata for DefaultLocalizerFormattingStringsDataSource;
  *(a3 + 112) = &off_1F1FF9890;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4DE160;
  *(inited + 32) = [objc_opt_self() mainBundle];
  *(a3 + 144) = &type metadata for LocalizedStringsTableCollection;
  *(a3 + 152) = &protocol witness table for LocalizedStringsTableCollection;
  LocalizedStringsTableCollection.init(bundles:)(inited);
  if (qword_1ED4CFF00 != -1)
  {
    swift_once();
  }

  v9 = xmmword_1ED4CFF08;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(a3 + 160) = v9;
  *(a3 + 176) = 3;
  sub_1AB014AC0(v6, &qword_1EB438880);
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  return result;
}

uint64_t sub_1AB09F72C(void *a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
    v5 = a1;
    *(v2 + 32) = [v4 init];
    sub_1AB460544();
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1AB460514();

    v8 = [v6 initWithSuiteName_];

    *(v2 + 40) = v8;
    *(v2 + 48) = [objc_allocWithZone(type metadata accessor for LocalPreferences.UserDefaultsObserver()) init];
    v9 = sub_1AB0A63C4(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436988);
    v10 = swift_allocObject();
    *(v10 + 24) = 0;

    *(v10 + 16) = v9;

    v11 = *(v2 + 48);
    *(v2 + 56) = v10;
    if (v11)
    {
      swift_weakAssign();
    }
  }

  else
  {
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
  }

  return v2;
}

unint64_t sub_1AB09F910(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  result = sub_1AB0A695C(1, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v7;
  return result;
}

uint64_t InMemoryJetPackResourceBundle.contentsOfDirectory(atPath:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v24 = (v2 + 40);
  v23 = MEMORY[0x1E69E7CC0];
  v25 = v3;
  v26 = v2;
LABEL_5:
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v27 = *(*(v3 + 48) + ((v10 << 9) | (8 * v12)));
    v13 = *(v27 + 16);
    v14 = *(v2 + 16);
    v15 = v13 - v14;
    if (v13 >= v14)
    {
      if (v13)
      {
        v16 = (v27 + 40);
        v17 = v24;
        while (v14)
        {
          result = *(v16 - 1);
          if (result != *(v17 - 1) || *v16 != *v17)
          {
            result = sub_1AB461DA4();
            if ((result & 1) == 0)
            {
              v3 = v25;
              v2 = v26;
              goto LABEL_5;
            }
          }

          --v14;
          v16 += 2;
          v17 += 2;
          if (!--v13)
          {
            break;
          }
        }
      }

      v3 = v25;
      v2 = v26;
      if (v15 == 1)
      {

        v19 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AB0A7258(0, *(v23 + 16) + 1, 1);
          v19 = v23;
        }

        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          result = sub_1AB0A7258((v20 > 1), v21 + 1, 1);
          v22 = v21 + 1;
          v19 = v23;
        }

        *(v19 + 16) = v22;
        v23 = v19;
        v2 = v26;
        *(v19 + 8 * v21 + 32) = v27;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v23;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB09FB94()
{
  v74 = v0;
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v1 = off_1EB435A00;
  *(v0 + 512) = off_1EB435A00;
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_17:
    v22 = *(v0 + 480);
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v70 = (*(v24 + 8) + **(v24 + 8));
    v25 = swift_task_alloc();
    *(v0 + 520) = v25;
    *v25 = v0;
    v25[1] = sub_1AB20C45C;

    return v70(v23, v24);
  }

  v3 = *(v0 + 504);
  ObjectType = swift_getObjectType();
  v72 = 0x65676175676E616CLL;
  v73 = 0xE800000000000000;
  v5 = MEMORY[0x1E69E6158];
  Preferences.subscript.getter(&v72, ObjectType, MEMORY[0x1E69E6158], v3, v0 + 464);

  v6 = *(v0 + 472);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *(v0 + 464);
  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB4347E8;
  v9 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  v72 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v11._countAndFlagsBits = 0xD000000000000022;
  v11._object = 0x80000001AB503F00;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 424) = v5;
  *(v0 + 400) = v7;
  *(v0 + 408) = v6;
  sub_1AB014A58(v0 + 400, v0 + 432, &unk_1EB437E60);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;

  sub_1AB0169C4(v0 + 432, v0 + 136);
  *(v0 + 168) = 0;
  v12 = v72;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    v72 = v12;
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = *(v0 + 136);
  v17 = *(v0 + 152);
  v15[64] = *(v0 + 168);
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  v72 = v12;
  sub_1AB014AC0(v0 + 400, &unk_1EB437E60);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v10 + 32) = v72;
  Logger.debug(_:)(v10, v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AB4D4720;
  *(v19 + 32) = v7;
  *(v19 + 40) = v6;
  v20 = *(v0 + 512);
  os_unfair_lock_lock((v20 + 20));
  v21 = *(v20 + 16);
  os_unfair_lock_unlock((v20 + 20));
  if (v21 == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  v27 = *(v0 + 504);
  v28 = swift_getObjectType();
  v72 = 0xD000000000000018;
  v73 = 0x80000001AB503EB0;
  Preferences.subscript.getter(&v72, v28, MEMORY[0x1E69E6370], v27, v0 + 49);

  v29 = *(v0 + 49);
  if (v29 != 2 && (v29 & 1) != 0)
  {
    if (qword_1ED4CFEF8 != -1)
    {
      swift_once();
    }

    v30 = qword_1EB4347E8;
    v31 = unk_1EB4347F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AB4D4720;
    *(v0 + 392) = MEMORY[0x1E69E6158];
    *(v0 + 368) = 0xD000000000000025;
    *(v0 + 376) = 0x80000001AB503ED0;
    *(v33 + 48) = 0u;
    *(v33 + 32) = 0u;
    sub_1AB0169C4(v0 + 368, v33 + 32);
    *(v33 + 64) = 0;
    *(v32 + 32) = v33;
    Logger.debug(_:)(v32, v30, v31);

    goto LABEL_41;
  }

LABEL_26:
  v34 = objc_opt_self();
  v35 = sub_1AB460934();
  v36 = sub_1AB460934();
  v37 = [v34 preferredLocalizationsFromArray:v35 forPreferences:v36];

  v38 = sub_1AB460954();
  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v39 = qword_1EB4347E8;
  v71 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1AB4D4190;
  v72 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v41._countAndFlagsBits = 0xD00000000000001DLL;
  v41._object = 0x80000001AB503E60;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  *(v0 + 200) = v42;
  *(v0 + 176) = v19;
  sub_1AB014A58(v0 + 176, v0 + 208, &unk_1EB437E60);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1AB0169C4(v0 + 208, v0 + 16);
  *(v0 + 48) = 0;
  v43 = v72;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1AB0168A8(0, *(v43 + 2) + 1, 1, v43);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  v46 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    v69 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v43);
    v46 = v45 + 1;
    v43 = v69;
  }

  v47 = *(v0 + 488);
  *(v43 + 2) = v46;
  v48 = &v43[40 * v45];
  v49 = *(v0 + 16);
  v50 = *(v0 + 32);
  v48[64] = *(v0 + 48);
  *(v48 + 2) = v49;
  *(v48 + 3) = v50;
  v72 = v43;
  sub_1AB014AC0(v0 + 176, &unk_1EB437E60);
  v51._countAndFlagsBits = 44;
  v51._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v51);
  *(v40 + 32) = v72;
  v72 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
  v52._countAndFlagsBits = 0xD00000000000002ELL;
  v52._object = 0x80000001AB503E80;
  LogMessage.StringInterpolation.appendLiteral(_:)(v52);
  *(v0 + 264) = v42;
  *(v0 + 240) = v47;
  sub_1AB014A58(v0 + 240, v0 + 272, &unk_1EB437E60);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1AB0169C4(v0 + 272, v0 + 56);
  *(v0 + 88) = 0;
  v53 = v72;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = sub_1AB0168A8(0, *(v53 + 2) + 1, 1, v53);
  }

  v55 = *(v53 + 2);
  v54 = *(v53 + 3);
  if (v55 >= v54 >> 1)
  {
    v53 = sub_1AB0168A8((v54 > 1), v55 + 1, 1, v53);
  }

  *(v53 + 2) = v55 + 1;
  v56 = &v53[40 * v55];
  v57 = *(v0 + 56);
  v58 = *(v0 + 72);
  v56[64] = *(v0 + 88);
  *(v56 + 2) = v57;
  *(v56 + 3) = v58;
  v72 = v53;
  sub_1AB014AC0(v0 + 240, &unk_1EB437E60);
  v59._countAndFlagsBits = 44;
  v59._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v59);
  *(v40 + 40) = v72;
  v72 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v60._countAndFlagsBits = 0x203A746C75736572;
  v60._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v60);
  *(v0 + 328) = v42;
  *(v0 + 304) = v38;
  sub_1AB014A58(v0 + 304, v0 + 336, &unk_1EB437E60);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1AB0169C4(v0 + 336, v0 + 96);
  *(v0 + 128) = 0;
  v61 = v72;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = sub_1AB0168A8(0, *(v61 + 2) + 1, 1, v61);
  }

  v63 = *(v61 + 2);
  v62 = *(v61 + 3);
  if (v63 >= v62 >> 1)
  {
    v61 = sub_1AB0168A8((v62 > 1), v63 + 1, 1, v61);
  }

  *(v61 + 2) = v63 + 1;
  v64 = &v61[40 * v63];
  v65 = *(v0 + 96);
  v66 = *(v0 + 112);
  v64[64] = *(v0 + 128);
  *(v64 + 2) = v65;
  *(v64 + 3) = v66;
  v72 = v61;
  sub_1AB014AC0(v0 + 304, &unk_1EB437E60);
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v67);
  *(v40 + 48) = v72;
  Logger.debug(_:)(v40, v39, v71);

  v19 = v38;
LABEL_41:
  v68 = *(v0 + 8);

  return v68(v19);
}

uint64_t BagLanguageSource.fetchLanguages()()
{
  *(v1 + 1672) = v0;
  v2 = sub_1AB45FAA4();
  *(v1 + 1720) = v2;
  *(v1 + 1768) = *(v2 - 8);
  *(v1 + 1816) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 1400) = *v0;
  *(v1 + 1416) = v3;
  *(v1 + 1432) = *(v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1AB0A74B8, 0, 0);
}

uint64_t sub_1AB0A0734()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1AB4425D0;

  return sub_1AB0A78B0(v0 + 16);
}

uint64_t sub_1AB0A07C8()
{
  v1 = *(v0 + 80);
  v2 = v1[4];
  v3 = *(v1 + 1);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = *v1;
  *(v0 + 56) = v4;
  *(v0 + 64) = v4;
  sub_1AB0A08EC(v0 + 56, v0 + 72);
  if (qword_1ED4CFF30 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = qword_1ED4CFF38;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1AB4419D4;

  return sub_1AB0A790C((v0 + 64), v6, v7, v8);
}

uint64_t sub_1AB0A0948()
{
  v1 = *(v0 + 153);
  v2 = [*(v0 + 216) stringForKey_];
  v3 = [v2 valuePromise];

  if ((v1 & 1) == 0)
  {
    v4 = [v3 promiseWithTimeout_];

    v3 = v4;
  }

  *(v0 + 224) = v3;
  *(v0 + 232) = sub_1AB0A0A2C(v3);

  return MEMORY[0x1EEE6DFA0](sub_1AB0A0BDC, 0, 0);
}

uint64_t sub_1AB0A0A2C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AA0);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB0A795C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058080;
  v11 = &block_descriptor_11;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB225A34;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_6_0;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1AB0A0BDC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_1AB441B34;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB0A0CA8(v2);
  sub_1AB014AC0(v2, &unk_1EB43D200);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB0A0CA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA2AC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA2AC(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436320(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB43D200);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB0A7938(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB0A7938((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB0A0EB4(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB4344C8 = result;
  return result;
}

uint64_t sub_1AB0A0FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AB0A8D54, 0, 0);
}

uint64_t sub_1AB0A1064(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

JetEngine::LocalizedStringsTableCollection __swiftcall LocalizedStringsTableCollection.init(bundles:)(Swift::OpaquePointer bundles)
{
  v3 = v1;
  if (!(bundles._rawValue >> 62))
  {
    v4 = *((bundles._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *v3 = v6;
    return result;
  }

  v4 = sub_1AB4618F4();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = MEMORY[0x1E69E7CC0];
  result.bundles._rawValue = sub_1AB0A61DC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v20;
    if ((bundles._rawValue & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x1AC59C990](v7, bundles._rawValue);
        v10 = *(v20 + 16);
        v9 = *(v20 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_1AB0A61DC((v9 > 1), v10 + 1, 1);
          v8 = v12;
        }

        ++v7;
        *(v20 + 16) = v10 + 1;
        v11 = v20 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = 0;
      }

      while (v4 != v7);
    }

    else
    {
      v13 = 32;
      do
      {
        v14 = *(v20 + 16);
        v15 = *(v20 + 24);
        v16 = *(bundles._rawValue + v13);
        if (v14 >= v15 >> 1)
        {
          v18 = v15 > 1;
          v19 = v16;
          sub_1AB0A61DC(v18, v14 + 1, 1);
          v16 = v19;
        }

        *(v20 + 16) = v14 + 1;
        v17 = v20 + 16 * v14;
        *(v17 + 32) = v16;
        *(v17 + 40) = 0;
        v13 += 8;
        --v4;
      }

      while (v4);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB0A12CC()
{
  if (qword_1EB4344D8 != -1)
  {
    swift_once();
  }

  return sub_1AB4622E4();
}

void *PageRenderMetricsPresenter.init(eventID:topic:pipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v82 = a5;
  v69 = a3;
  v70 = a4;
  v9 = sub_1AB4601B4();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1AB4601F4();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v65 - v13;
  v72 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AB461174();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PageRenderEvent();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[2] = 0x3FF0000000000000;

  v81 = v21;
  v22 = sub_1AB0708BC(a1, a2, v21);
  if (qword_1EB434B88 != -1)
  {
    v22 = swift_once();
  }

  v23 = qword_1EB46C200;
  MEMORY[0x1EEE9AC00](v22);
  *(&v65 - 6) = a1;
  *(&v65 - 5) = a2;
  *(&v65 - 4) = 0;
  *(&v65 - 3) = 0;
  *(&v65 - 16) = 1;
  os_unfair_lock_lock(v23 + 10);
  sub_1AB07140C(&v23[4]);
  os_unfair_lock_unlock(v23 + 10);

  v6[3] = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384A8);
  swift_allocObject();
  v6[5] = sub_1AB03356C();
  sub_1AB016760(0, &qword_1ED4CFE60);
  sub_1AB016760(0, &qword_1ED4D2060);
  v24 = sub_1AB461124();
  v96 = MEMORY[0x1E69E7CC0];
  sub_1AB0727E8(&unk_1ED4CFE70, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384B8);
  v80 = v6;
  sub_1AB01561C(&unk_1ED4CFE80, &unk_1EB4384B8);
  sub_1AB4614E4();
  v68 = sub_1AB461184();

  (*(v16 + 8))(v18, v15);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8);
  v26 = v73;
  v27 = v73 + v25[12];
  v66 = (v73 + v25[16]);
  v67 = v25[20];
  sub_1AB072850(v81, v73, type metadata accessor for PageRenderEvent);
  sub_1AB0560F8(v82, &v96);
  v28 = v70;
  *v27 = v69;
  *(v27 + 8) = v28;
  sub_1AB0560F8(&v96, v27 + 16);
  *(v27 + 209) = 2;
  *(v27 + 240) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v27 + 216) = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  sub_1AB0560F8(&v96, &v83);
  v30 = swift_allocObject();
  v31 = v94;
  *(v30 + 176) = v93;
  *(v30 + 192) = v31;
  *(v30 + 208) = v95;
  v32 = v90;
  *(v30 + 112) = v89;
  *(v30 + 128) = v32;
  v33 = v92;
  *(v30 + 144) = v91;
  *(v30 + 160) = v33;
  v34 = v86;
  *(v30 + 48) = v85;
  *(v30 + 64) = v34;
  v35 = v88;
  *(v30 + 80) = v87;
  *(v30 + 96) = v35;
  v36 = v84;
  *(v30 + 16) = v83;
  *(v30 + 32) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384D0);
  v37 = swift_allocObject();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v37 + 16) = v38;
  *(v37 + 24) = v29;
  v39 = sub_1AB460BE4();
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 57) = 0u;
  v40 = *(*(v39 - 8) + 56);
  v41 = v71;
  v40(v71, 1, 1, v39);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = &unk_1AB4DCB60;
  v42[5] = v30;
  v42[6] = v37;

  sub_1AB39BBA8(0, 0, v41, &unk_1AB4DCB78, v42);

  *(v27 + 224) = v37;
  sub_1AB0560F8(&v96, &v83);
  v43 = swift_allocObject();
  v44 = v94;
  *(v43 + 176) = v93;
  *(v43 + 192) = v44;
  *(v43 + 208) = v95;
  v45 = v90;
  *(v43 + 112) = v89;
  *(v43 + 128) = v45;
  v46 = v92;
  *(v43 + 144) = v91;
  *(v43 + 160) = v46;
  v47 = v86;
  *(v43 + 48) = v85;
  *(v43 + 64) = v47;
  v48 = v88;
  *(v43 + 80) = v87;
  *(v43 + 96) = v48;
  v49 = v84;
  *(v43 + 16) = v83;
  *(v43 + 32) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384E0);
  v50 = swift_allocObject();
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v50 + 16) = v51;
  *(v50 + 24) = MEMORY[0x1E69E7CC0];
  *(v50 + 32) = 0;
  v40(v41, 1, 1, v39);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = &unk_1AB4DCB88;
  v52[5] = v43;
  v52[6] = v50;

  sub_1AB39BBA8(0, 0, v41, &unk_1AB4DCB98, v52);

  sub_1AB056154(&v96);
  *(v27 + 232) = v50;
  v53 = v80;
  v54 = v66;
  *v66 = 0;
  v54[2] = 0;
  v54[3] = 0;
  v54[1] = 0;
  *(v26 + v67) = v68;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384E8);
  v55 = swift_allocObject();
  *(v55 + ((*(*v55 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1AB072850(v26, v55 + *(*v55 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for PageRenderMetricsPresenter.State);
  v53[4] = v55;
  v56 = qword_1EB434678;
  swift_unknownObjectRetain();
  v57 = v26;
  if (v56 != -1)
  {
    swift_once();
  }

  v58 = *(*(qword_1EB46C1F8 + OBJC_IVAR____TtC9JetEngine24ScenePhaseChangeObserver_multicastDelegate) + 16);

  os_unfair_lock_lock((v58 + 24));
  v59 = *(v58 + 16);
  v96 = v53;
  v97 = &off_1F1FFC190;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4384F0);
  [v59 addObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v58 + 24));

  swift_getObjectType();
  v60 = swift_allocObject();
  swift_weakInit();
  v100 = sub_1AB1EEC5C;
  v101 = v60;
  v96 = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1AB01D528;
  v99 = &block_descriptor_9;
  v61 = _Block_copy(&v96);

  v62 = v74;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v63 = v76;
  sub_1AB073BA0();
  sub_1AB4611D4();
  _Block_release(v61);
  (*(v78 + 8))(v63, v79);
  (*(v75 + 8))(v62, v77);

  sub_1AB4611F4();
  swift_unknownObjectRelease();
  sub_1AB056154(v82);
  sub_1AB073CB0(v57, type metadata accessor for PageRenderMetricsPresenter.State);
  sub_1AB073CB0(v81, type metadata accessor for PageRenderEvent);
  return v53;
}

uint64_t sub_1AB0A1E9C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0A1EDC()
{
  sub_1AB4318F8(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB0A1F68()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB254048, 0, 0);
  }

  else
  {

    v4 = *(v1 + 160);
    v5 = *(v1 + 168);
    v6 = *(v2 + 8);

    return v6(v4, v5);
  }
}

uint64_t sub_1AB0A20BC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB2542FC, 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);
    v5 = *(v1 + 160);

    return v4(v5);
  }
}

uint64_t sub_1AB0A220C()
{
  if (*(v0 + 200))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v1 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v1[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v1 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v3 = *(v0 + 152);
    if (os_unfair_lock_opaque_low)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.01;
    }

    if (!v3)
    {
      if (qword_1ED4D01B0 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 136);
      v6 = qword_1ED4D3E40;
      v7 = *algn_1ED4D3E48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1AB4D47F0;
      *(v8 + 32) = v6;
      *(v8 + 40) = v7;
      *(v8 + 48) = 0x6E65725F65676170;
      *(v8 + 56) = 0xEB00000000726564;
      *(v0 + 16) = v8;
      *(v0 + 24) = sub_1AB027C78;
      *(v0 + 32) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
      sub_1AB027E20();
      v9 = sub_1AB460484();
      v11 = v10;

      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1AB4D47F0;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = 0x646563726F467369;
      *(v12 + 56) = 0xE800000000000000;
      *(v0 + 40) = v12;
      *(v0 + 48) = sub_1AB027C78;
      *(v0 + 56) = 0;

      v13 = sub_1AB460484();
      v15 = v14;

      *v5 = v13;
      *(v5 + 8) = v15;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AB4D47F0;
      *(v16 + 32) = v9;
      *(v16 + 40) = v11;
      *(v16 + 48) = 0xD000000000000011;
      *(v16 + 56) = 0x80000001AB4FFFF0;
      *(v0 + 64) = v16;
      *(v0 + 72) = sub_1AB027C78;
      *(v0 + 80) = 0;
      v17 = sub_1AB460484();
      v19 = v18;

      *(v5 + 16) = v17;
      *(v5 + 24) = v19;
      *(v5 + 32) = v4;
      *(v5 + 40) = 0x404E000000000000;
      v20 = *(v0 + 8);

      return v20();
    }
  }

  else
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 152);
  }

  *(v0 + 176) = v4;
  if (qword_1ED4CFE48 != -1)
  {
    v26 = v3;
    swift_once();
    v3 = v26;
  }

  v22 = [v3 doubleForKey_];
  v23 = swift_allocObject();
  *(v23 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
  v24 = swift_allocObject();
  *(v0 + 184) = v24;
  v24[2] = v22;
  v24[3] = sub_1AB1EEBE8;
  v24[4] = v23;
  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_1AB1E6854;

  return sub_1AB073108(v24);
}

uint64_t sub_1AB0A2670()
{
  result = sub_1AB460514();
  qword_1ED4D3D18 = result;
  return result;
}

uint64_t sub_1AB0A26A8(char a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AB0A1F40, 0, 0);
}

uint64_t sub_1AB0A27C8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1AB399694;
  }

  else
  {
    v2 = sub_1AB0A1EDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0A28DC(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 104) = a2;
  *(v3 + 88) = v2;
  *(v3 + 96) = a1;
  *(v3 + 200) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1AB0A220C, 0, 0);
}

id sub_1AB0A2A74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag);
  swift_unknownObjectRetain();
  result = [a3 toString];
  if (result)
  {
    v7 = result;
    v8 = [v5 BOOLForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438580);
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1AB07D3BC;
    v9[4] = 0;
    swift_unknownObjectRelease();
    LOBYTE(result) = sub_1AB0A2BD4(v9);
    if (result == 2)
    {
      result = [objc_opt_self() valueWithUndefinedInContext_];
      if (result)
      {
LABEL_6:
        v10 = result;

        return v10;
      }

      __break(1u);
    }

    result = [objc_opt_self() valueWithBool:result & 1 inContext:a1];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1AB0A2EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag);
  swift_unknownObjectRetain();
  result = [a3 toString];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v8 = [v5 dictionaryForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_1AB098790;
  v9[4] = 0;
  swift_unknownObjectRelease();
  if (sub_1AB0A332C(v9))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);
    v10 = sub_1AB461F94();
    v11 = [objc_opt_self() valueWithObject:v10 inContext:a1];
    result = swift_unknownObjectRelease();
    if (v11)
    {

      return v11;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1AB0A33A8(id a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag);
  swift_unknownObjectRetain();
  result = [a3 toString];
  if (result)
  {
    v15 = result;
    v16 = [v13 URLForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D0);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1AB098298;
    v17[4] = 0;
    swift_unknownObjectRelease();
    sub_1AB0A367C(v17);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1AB014AC0(v8, &unk_1EB4395B0);
      a1 = [objc_opt_self() valueWithUndefinedInContext_];
      if (a1)
      {
LABEL_7:

        return a1;
      }

      __break(1u);
    }

    (*(v10 + 32))(v12, v8, v9);
    v20[0] = sub_1AB45F614();
    v20[1] = v18;
    v19 = sub_1AB461F94();
    a1 = [objc_opt_self() valueWithObject:v19 inContext:a1];
    result = swift_unknownObjectRelease();
    if (a1)
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AB0A395C()
{
  sub_1AB0A3A80();
  if (v0 <= 0x3F)
  {
    sub_1AB018E60();
    if (v1 <= 0x3F)
    {
      sub_1AB0A3ADC(319, &qword_1EB4359F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AB0A3ADC(319, &qword_1EB435630, &type metadata for JSNetworkPerformanceMetrics, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB0A3A80()
{
  if (!qword_1EB434440[0])
  {
    v0 = sub_1AB4603C4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB434440);
    }
  }
}

void sub_1AB0A3ADC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AB0A3B2C()
{
  sub_1AB45F764();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CachePolicy(319);
    if (v1 <= 0x3F)
    {
      sub_1AB0A3C94(319, qword_1EB434440);
      if (v2 <= 0x3F)
      {
        sub_1AB0559D8(319, &qword_1EB434598);
        if (v3 <= 0x3F)
        {
          sub_1AB0559D8(319, &qword_1EB4359F0);
          if (v4 <= 0x3F)
          {
            sub_1AB0A3C94(319, &qword_1EB434438);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1AB0A3C94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AB4603C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AB0A3D04()
{
  sub_1AB018E60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void *sub_1AB0A3D94@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void *MetricsFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  result = (*(a4 + 24))(&v10, a3, a4);
  if (v10 == 1)
  {
    v9 = v7;
    return (*(a4 + 32))(a1, &v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AB0A3E70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB3DFFE8;
  }

  else
  {

    *(v1 + 312) = *(v1 + 160);
    v3 = sub_1AB0A3F9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB0A3F9C()
{
  v1 = *(v0 + 312);
  if (!v1)
  {
    v1 = sub_1AB0BA124(MEMORY[0x1E69E7CC0]);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB0A4008(uint64_t a1)
{
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AB0A4128, 0, 0);
}

uint64_t sub_1AB0A4128()
{
  result = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, *(v0 + 328));
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = *(v0 + 344);
    sub_1AB4615D4();

    MEMORY[0x1AC59BA20](v3, v4);

    MEMORY[0x1AC59BA20](0x7363697274656D2FLL, 0xEC00000065736142);
    v6 = sub_1AB460514();

    v7 = [v5 dictionaryForKey_];

    v8 = swift_allocObject();
    *(v0 + 384) = v8;
    v8[2] = v7;
    v8[3] = sub_1AB098790;
    v8[4] = 0;
    v9 = swift_task_alloc();
    *(v0 + 392) = v9;
    *v9 = v0;
    v9[1] = sub_1AB0D290C;

    return sub_1AB09F204(v8);
  }

  else
  {
    v10 = 0;
    v11 = *(v0 + 376);
    v14 = *(v11 + 64);
    v13 = v11 + 64;
    v12 = v14;
    v37 = *(v0 + 376);
    v15 = -1;
    v16 = -1 << *(v37 + 32);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & v12;
    v18 = (63 - v16) >> 6;
    v19 = MEMORY[0x1E69E69B8];
    v36 = v13;
    if ((v15 & v12) == 0)
    {
      goto LABEL_11;
    }

    do
    {
      while (1)
      {
        v20 = v10;
LABEL_18:
        v23 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v24 = v23 | (v20 << 6);
        sub_1AB02B4BC(*(v37 + 48) + 40 * v24, v0 + 160);
        sub_1AB0165C4(*(v37 + 56) + 32 * v24, v0 + 240);
        v25 = *(v0 + 176);
        *(v0 + 88) = *(v0 + 160);
        *(v0 + 104) = v25;
        *(v0 + 120) = *(v0 + 192);
        sub_1AB014B78((v0 + 240), (v0 + 128));
        v22 = v20;
LABEL_19:
        *(v0 + 80) = *(v0 + 152);
        v26 = *(v0 + 136);
        *(v0 + 48) = *(v0 + 120);
        *(v0 + 64) = v26;
        v27 = *(v0 + 104);
        *(v0 + 16) = *(v0 + 88);
        *(v0 + 32) = v27;
        if (!*(v0 + 40))
        {

          v35 = *(v0 + 8);

          return v35();
        }

        sub_1AB014B78((v0 + 56), (v0 + 272));
        v28 = *(v0 + 32);
        *(v0 + 200) = *(v0 + 16);
        *(v0 + 216) = v28;
        *(v0 + 232) = *(v0 + 48);
        if (swift_dynamicCast())
        {
          break;
        }

        result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
        v10 = v22;
        if (!v17)
        {
          goto LABEL_11;
        }
      }

      v29 = v19;
      v31 = *(v0 + 312);
      v30 = *(v0 + 320);
      v32 = *(v0 + 304);
      v33 = *(v30 + 24);
      v34 = *(v30 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v30, v33);
      (*(v34 + 16))(v0 + 272, v32, v31, v33, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);

      v10 = v22;
      v19 = v29;
      v13 = v36;
    }

    while (v17);
LABEL_11:
    if (v18 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v17 = 0;
        *(v0 + 152) = 0;
        *(v0 + 136) = 0u;
        *(v0 + 120) = 0u;
        *(v0 + 104) = 0u;
        *(v0 + 88) = 0u;
        goto LABEL_19;
      }

      v17 = *(v13 + 8 * v20);
      ++v10;
      if (v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t InMemoryJetPackResourceBundle.fileData(atPath:)(uint64_t *a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1AB059C08(*a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 56) + 16 * v3;
  v6 = *v5;
  sub_1AB017200(*v5, *(v5 + 8));
  return v6;
}

uint64_t JSSource.init(code:sourceURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for JSSource() + 20);
  v9 = sub_1AB45F764();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  *(a4 + 1) = a2;

  return sub_1AB04F3C8(a3, &a4[v8]);
}

size_t sub_1AB0A46C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t LocalizedStringsBundle.init(resourceBundle:indexPath:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  sub_1AB01494C(a1, v30);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  v29[0] = v6;
  v9 = (*(v8 + 16))(v29, v7, v8);
  if (!v3)
  {
    v11 = v10;
    if (v10 >> 60 == 15)
    {
      if (*(v6 + 16))
      {
        v29[0] = v6;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
        sub_1AB04E498();
        v12 = sub_1AB460484();
        v14 = v13;
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v14 = 0xE100000000000000;
        v12 = 46;
      }

      sub_1AB17DB30();
      swift_allocError();
      *v19 = v12;
      *(v19 + 8) = v14;
      *(v19 + 16) = 2;
      swift_willThrow();
      goto LABEL_18;
    }

    v15 = v9;

    sub_1AB017200(v15, v11);
    if (qword_1EB4356D0 != -1)
    {
      swift_once();
    }

    if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, v15, v11))
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      v17 = qword_1ED4D1BA0;
    }

    else
    {
      if (qword_1EB4356D8 != -1)
      {
        swift_once();
      }

      if ((sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, v15, v11) & 1) == 0)
      {
        v20 = objc_opt_self();
        v21 = sub_1AB45F834();
        v25 = 0;
        v22 = [v20 JSONObjectWithData:v21 options:4 error:&v25];

        v23 = v25;
        if (!v22)
        {
          v24 = v23;
          sub_1AB45F594();

          swift_willThrow();
          sub_1AB03BD58(v15, v11);
          sub_1AB03BD58(v15, v11);
          goto LABEL_18;
        }

        sub_1AB461494();
        swift_unknownObjectRelease();
LABEL_15:
        sub_1AB014B78(&v27, v26);
        sub_1AB0165C4(v26, &v27);
        v29[3] = &type metadata for FoundationValue;
        v29[4] = &off_1F1FFB5A8;
        v29[0] = swift_allocObject();
        sub_1AB014B78(&v27, (v29[0] + 16));
        sub_1AB03BD58(v15, v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        sub_1AB0A4CFC(a1, v29, v26);
        sub_1AB066D84(v29);
        sub_1AB03BD58(v15, v11);
        sub_1AB0149B0(v26, v31);
        sub_1AB17E668(v30, a3);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return sub_1AB17E6A0(v30);
      }

      v16 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
      v17 = &qword_1ED4D0BE0;
    }

    v28 = sub_1AB016760(0, v17);
    *&v27 = v16;
    goto LABEL_15;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t sub_1AB0A4CC4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0A4CFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v114 = *MEMORY[0x1E69E9840];
  v7 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45F764();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v96 - v15;
  result = sub_1AB0A596C();
  if (!v3)
  {
    v19 = v18;
    v102 = a3;
    v20 = result;
    v104 = a2;
    v100 = v14;
    v97 = v11;
    v99 = v10;
    v105 = 0;
    if (qword_1ED4CFED8 != -1)
    {
      swift_once();
    }

    v103 = qword_1ED4CFEE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AB4D4720;
    v106 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v22._countAndFlagsBits = 0xD000000000000025;
    v22._object = 0x80000001AB500080;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v108 = MEMORY[0x1E69E6158];
    *&v107 = v20;
    *(&v107 + 1) = v19;
    sub_1AB014A58(&v107, &v112, &unk_1EB437E60);
    v109 = 0u;
    v110 = 0u;

    sub_1AB0169C4(&v112, &v109);
    LOBYTE(v111) = 0;
    v23 = v106;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v16;
    v101 = a1;
    v96 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
      v106 = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    v27 = &v23[40 * v26];
    v28 = v109;
    v29 = v110;
    v27[64] = v111;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    v106 = v23;
    sub_1AB014AC0(&v107, &unk_1EB437E60);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v21 + 32) = v106;
    *&v109 = v103;
    LOBYTE(v107) = 3;
    OSLogger.log(contentsOf:withLevel:)(v21, &v107);

    if (v20 == 0x6C6E692F6E6F736ALL && v19 == 0xEB00000000656E69 || (sub_1AB461DA4() & 1) != 0)
    {

      v31 = v102;
      v32 = v105;
      result = sub_1AB0A5B80(&v109);
      if (!v32)
      {
        v31[3] = &type metadata for LocalizedStringsContainerJSONObject;
        v31[4] = &off_1F2019500;
        v33 = swift_allocObject();
        *v31 = v33;
        return sub_1AB42D728(&v109, v33 + 16);
      }

      return result;
    }

    if (v20 == 0x6C756D2F6E6F736ALL && v19 == 0xEF656C69662D6974)
    {

      v34 = v101;
      goto LABEL_18;
    }

    v35 = sub_1AB461DA4();
    v34 = v101;
    if (v35)
    {

LABEL_18:
      sub_1AB01494C(v34, &v109);
      v36 = v105;
      v37 = sub_1AB0A5E30();
      if (v36)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(&v109);
      }

      v39 = v37;
      v40 = v38;
      v41 = type metadata accessor for LocalizedStringsContainerJSONFiles();
      v42 = swift_allocObject();
      sub_1AB01494C(&v109, (v42 + 2));
      v42[7] = v39;
      v42[8] = v40;
      v43 = sub_1AB0A5F98(MEMORY[0x1E69E7CC0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437020);
      v44 = swift_allocObject();
      *(v44 + 24) = 0;

      __swift_destroy_boxed_opaque_existential_1Tm(&v109);
      *(v44 + 16) = v43;

      v42[9] = v44;
      v45 = v102;
      v102[3] = v41;
      v45[4] = &off_1F200A690;
      *v45 = v42;
      return result;
    }

    if (v20 == 0xD000000000000010 && 0x80000001AB5000B0 == v19 || (sub_1AB461DA4() & 1) != 0)
    {

      v46 = v105;
      result = sub_1AB0A5E30();
      if (v46)
      {
        return result;
      }

      v62 = sub_1AB17E6F0(v34, result, v47);
      v64 = v63;

      if (qword_1EB4356D0 != -1)
      {
        swift_once();
      }

      if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, v62, v64))
      {
        v65 = objc_allocWithZone(MEMORY[0x1E695DF20]);
        v66 = [v65 init];
        v67 = qword_1ED4D1BA0;
      }

      else
      {
        if (qword_1EB4356D8 != -1)
        {
          swift_once();
        }

        if ((sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, v62, v64) & 1) == 0)
        {
          v75 = objc_opt_self();
          v76 = sub_1AB45F834();
          v106 = 0;
          v77 = [v75 JSONObjectWithData:v76 options:4 error:{&v106, v96}];

          v78 = v106;
          if (!v77)
          {
            v87 = v78;
            sub_1AB45F594();

            swift_willThrow();
            return sub_1AB017254(v62, v64);
          }

          sub_1AB461494();
          swift_unknownObjectRelease();
LABEL_47:
          sub_1AB014B78(&v112, &v107);
          sub_1AB0165C4(&v107, &v112);
          *(&v110 + 1) = &type metadata for FoundationValue;
          v111 = &off_1F1FFB5A8;
          *&v109 = swift_allocObject();
          sub_1AB014B78(&v112, (v109 + 16));
          sub_1AB017254(v62, v64);
          __swift_destroy_boxed_opaque_existential_1Tm(&v107);
          sub_1AB0B9254(&v109, &v107);
          v71 = v102;
          v102[3] = &type metadata for LocalizedStringsContainerJSONObject;
          v71[4] = &off_1F2019500;
          v72 = swift_allocObject();
          *v71 = v72;
          sub_1AB42D728(&v107, v72 + 16);
          return sub_1AB066D84(&v109);
        }

        v70 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
        v66 = [v70 init];
        v67 = &qword_1ED4D0BE0;
      }

      v113 = sub_1AB016760(0, v67);
      *&v112 = v66;
      goto LABEL_47;
    }

    if (v20 == 0x656C626174636F6CLL && v19 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
    {

      v48 = v105;
      result = sub_1AB0A5E30();
      v49 = v100;
      if (!v48)
      {
        v50 = v98;
        v105 = 0;
        sub_1AB45F634();

        sub_1AB45F664();
        v51 = sub_1AB45F5E4();
        v53 = v52;
        v54 = *(v97 + 8);
        v55 = v99;
        v54(v49, v99);
        sub_1AB45F664();
        v56 = v55;
        v104 = sub_1AB45F5E4();
        v58 = v57;
        v54(v49, v56);
        v59 = v105;
        v60 = sub_1AB17E6F0(v34, v51, v53);
        if (v59)
        {
          v54(v50, v56);
        }

        else
        {
          v73 = v60;
          v74 = v61;

          v80 = sub_1AB17E6F0(v34, v104, v58);
          v82 = v81;

          v83 = sub_1AB371EFC(v73, v74, v80, v82);
          v84 = v98;
          v85 = v102;
          v102[3] = &type metadata for LocalizedStringsContainerLoctable;
          v85[4] = &off_1F2010420;
          *v85 = v83;
          v85[1] = v86;
          return (v54)(v84, v99);
        }
      }
    }

    else if (v20 == 29546 && v19 == 0xE200000000000000 || (sub_1AB461DA4() & 1) != 0)
    {

      v68 = v105;
      result = sub_1AB0A5E30();
      if (!v68)
      {
        v88 = sub_1AB17E6F0(v34, result, v69);
        v90 = v89;

        sub_1AB460594();
        v91 = sub_1AB460564();
        v93 = v92;
        sub_1AB017254(v88, v90);
        if (v93)
        {
          result = sub_1AB2AE514(v91, v93);
          v94 = v102;
          v102[3] = &type metadata for LocalizedStringsContainerJSCode;
          v94[4] = &off_1F2006630;
          *v94 = result;
        }

        else
        {
          sub_1AB17DB30();
          swift_allocError();
          *v95 = xmmword_1AB4D6DD0;
          *(v95 + 16) = 4;
          return swift_willThrow();
        }
      }
    }

    else
    {
      sub_1AB17DB30();
      swift_allocError();
      *v79 = v20;
      *(v79 + 8) = v19;
      *(v79 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1AB0A5934()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0A596C()
{
  sub_1AB0A5B80(v15);
  if (!v1)
  {
    JSONObject.subscript.getter(0x74616D726F66, 0xE600000000000000, v14);
    sub_1AB014A58(v14, v11, &qword_1EB436BA0);
    v2 = v12;
    if (v12)
    {
      v3 = v13;
      __swift_project_boxed_opaque_existential_1Tm(v11, v12);
      v4 = (*(v3 + 128))(v2, v3);
      sub_1AB066D84(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      if ((v4 & 1) == 0)
      {
        v0 = v15;
        JSONObject.subscript.getter(0x74616D726F66, 0xE600000000000000, v14);
        sub_1AB014A58(v14, v11, &qword_1EB436BA0);
        v5 = v12;
        if (v12)
        {
          v6 = v13;
          __swift_project_boxed_opaque_existential_1Tm(v11, v12);
          v0 = (*(v6 + 24))(v5, v6);
          v8 = v7;
          sub_1AB066D84(v14);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          if (v8)
          {
            sub_1AB066D84(v15);
            return v0;
          }
        }

        else
        {
          sub_1AB066D84(v14);
          sub_1AB014AC0(v11, &qword_1EB436BA0);
        }

        sub_1AB17DB30();
        swift_allocError();
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        swift_willThrow();
        sub_1AB066D84(v15);
        return v0;
      }
    }

    else
    {
      sub_1AB066D84(v14);
      sub_1AB014AC0(v11, &qword_1EB436BA0);
    }

    sub_1AB066D84(v15);
    return 0x6C6E692F6E6F736ALL;
  }

  return v0;
}

uint64_t sub_1AB0A5B80@<X0>(uint64_t a1@<X8>)
{
  JSONObject.subscript.getter(0x69747265706F7270, 0xEA00000000007365, v7);
  JSONObject.subscript.getter(0x617A696C61636F6CLL, 0xED0000736E6F6974, a1);
  sub_1AB066D84(v7);
  sub_1AB014A58(a1, v7, &qword_1EB436BA0);
  v2 = v8;
  if (!v8)
  {
    sub_1AB014AC0(v7, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v3 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  v4 = (*(v3 + 128))(v2, v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  if (v4)
  {
LABEL_5:
    sub_1AB17DB30();
    swift_allocError();
    *v6 = xmmword_1AB4CE300;
    *(v6 + 16) = 4;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  return result;
}

id sub_1AB0A5CDC()
{
  if (qword_1ED4CFE90 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4CFE98;
  qword_1ED4CFEE0 = qword_1ED4CFE98;

  return v1;
}

void sub_1AB0A5D40(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ED4CFE98 = v2;
}

uint64_t sub_1AB0A5E30()
{
  sub_1AB0A5B80(v12);
  if (!v1)
  {
    JSONObject.subscript.getter(1752457584, 0xE400000000000000, v11);
    sub_1AB014A58(v11, v8, &qword_1EB436BA0);
    v2 = v9;
    if (v9)
    {
      v3 = v10;
      __swift_project_boxed_opaque_existential_1Tm(v8, v9);
      v0 = (*(v3 + 24))(v2, v3);
      v5 = v4;
      sub_1AB066D84(v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      if (v5)
      {
        sub_1AB066D84(v12);
        return v0;
      }
    }

    else
    {
      sub_1AB066D84(v11);
      sub_1AB014AC0(v8, &qword_1EB436BA0);
    }

    sub_1AB17DB30();
    v0 = swift_allocError();
    *v6 = xmmword_1AB4D6DE0;
    *(v6 + 16) = 4;
    swift_willThrow();
    sub_1AB066D84(v12);
  }

  return v0;
}

unint64_t sub_1AB0A5F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438080);
    v3 = sub_1AB461924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AB014A58(v4, &v16, &qword_1EB4381E8);
      v5 = v16;
      v6 = v17;
      result = sub_1AB014DB4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

char *sub_1AB0A60D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E80);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB0A61DC(char *a1, int64_t a2, char a3)
{
  result = sub_1AB0A60D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AB0A61FC()
{
  v0 = sub_1AB02648C();
  type metadata accessor for LocalPreferences();
  swift_allocObject();
  v1 = sub_1AB09F72C(v0, 1);
  if (qword_1ED4D19D8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED4D19E0;
  v2 = *algn_1ED4D19E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D47F0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0xD000000000000011;
  *(v4 + 56) = 0x80000001AB503F30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v5 = sub_1AB460484();
  v7 = v6;

  type metadata accessor for NestedPreferences();
  result = swift_allocObject();
  result[2] = v5;
  result[3] = v7;
  result[4] = v1;
  result[5] = &protocol witness table for LocalPreferences;
  return result;
}

void *sub_1AB0A637C()
{
  result = sub_1AB0A61FC();
  *&xmmword_1ED4CFF08 = result;
  *(&xmmword_1ED4CFF08 + 1) = v1;
  return result;
}

unint64_t sub_1AB0A63C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438210);
    v3 = sub_1AB461924();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AB014DB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t *AppleServicesLocalizer.Configuration.withNativeStringsDataSource(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB09F8D8(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 120), a1);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine20LocalizerPreferences_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB0A6528()
{
  result = sub_1AB45FAA4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1AB0A6608()
{
  v15 = v0;
  v1 = *(v0 + 1376);
  sub_1AB01494C(v1, v0 + 96);
  sub_1AB01494C(v1 + 40, v0 + 136);
  sub_1AB01494C(v1 + 80, v0 + 176);
  sub_1AB01494C(v1 + 120, v0 + 216);
  v2 = *(v1 + 160);
  *(v0 + 1424) = v2;
  v3 = *(v1 + 168);
  *(v0 + 1432) = v3;
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v4 = off_1EB435A00;
  *(v0 + 1440) = off_1EB435A00;
  os_unfair_lock_lock(v4 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v4[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v4 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_12;
  }

  ObjectType = swift_getObjectType();
  v14[0] = 0xD000000000000011;
  v14[1] = 0x80000001AB5037F0;
  Preferences.subscript.getter(v14, ObjectType, MEMORY[0x1E69E6370], v3, v0 + 690);

  v7 = *(v0 + 690);
  if (v7 == 2 || (v7 & 1) == 0)
  {
LABEL_12:
    *(v0 + 1536) = 0;
    *(v0 + 1520) = 0u;
    *(v0 + 1504) = 0u;
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v10);
    v13 = (*(v11 + 8) + **(v11 + 8));
    v12 = swift_task_alloc();
    *(v0 + 1544) = v12;
    *v12 = v0;
    v12[1] = sub_1AB0A7278;

    return v13(v10, v11);
  }

  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 1448) = v8;
  *v8 = v0;
  v8[1] = sub_1AB200A48;

  return sub_1AB2C3838(v0 + 56, v2, v3);
}

unint64_t sub_1AB0A68EC@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1AB014DB4(*(v3 + 16), *(v3 + 24));
    if (v6)
    {
      v7 = *(*(v5 + 56) + result) ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  *a2 = v7 & 1;
  return result;
}

unint64_t sub_1AB0A695C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AB014DB4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1AB0A6AC8(v16, a4 & 1);
      result = sub_1AB014DB4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1AB1D7864();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1AB0A6AC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438210);
  v34 = a2;
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AB0A6D68()
{
  v1 = *(v0 + 16);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = *(v0 + 8);

  return v5(v4);
}

char *sub_1AB0A6E18()
{
  v2 = v1;
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v6 = v0[7];
  v5 = v0[8];

  v7._countAndFlagsBits = v6;
  v7._object = v5;
  JetPackPath.init(_:)(v7);
  v8 = (*(v4 + 24))(&v28, v3, v4);

  if (!v2)
  {
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      do
      {
        v12 = v11;
        while (1)
        {
          if (v12 >= *(v8 + 16))
          {
            __break(1u);
            return result;
          }

          if (*(*(v8 + 32 + 8 * v12) + 16))
          {
            v28 = *(v8 + 32 + 8 * v12);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
            sub_1AB04E498();
            v13 = sub_1AB460484();
            v15 = v14;
          }

          else
          {

            v15 = 0xE100000000000000;
            v13 = 46;
          }

          v28 = v13;
          v29 = v15;
          sub_1AB0273A8();
          v16 = sub_1AB461404();

          v17 = *(v16 + 16);
          if (v17)
          {
            break;
          }

          ++v12;

          if (v10 == v12)
          {
            goto LABEL_20;
          }
        }

        v18 = v16 + 16 * v17;
        v19 = *(v18 + 24);
        v27 = *(v18 + 16);

        v28 = v27;
        v29 = v19;
        v20 = sub_1AB461434();
        v22 = v21;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          result = v30;
        }

        else
        {
          result = sub_1AB020904(0, *(v30 + 2) + 1, 1, v30);
        }

        v24 = *(result + 2);
        v23 = *(result + 3);
        v30 = result;
        if (v24 >= v23 >> 1)
        {
          result = sub_1AB020904((v23 > 1), v24 + 1, 1, v30);
          v30 = result;
        }

        v11 = v12 + 1;
        v25 = v30;
        *(v30 + 2) = v24 + 1;
        v26 = &v25[16 * v24];
        *(v26 + 4) = v20;
        *(v26 + 5) = v22;
      }

      while (v10 - 1 != v12);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

LABEL_20:

    return v30;
  }

  return result;
}

char *sub_1AB0A714C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB0A7258(char *a1, int64_t a2, char a3)
{
  result = sub_1AB0A714C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AB0A7278(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[194] = a1;
  v4[195] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB200F30, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[196] = v6;
    *v6 = v5;
    v6[1] = sub_1AB0A8048;
    v7 = v4[179];
    v8 = v4[178];

    return sub_1AB0A7408((v4 + 17), a1, v8, v7);
  }
}

uint64_t sub_1AB0A7408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[60] = a1;
  v4[61] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB09FB94, 0, 0);
}

uint64_t sub_1AB0A742C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB200878;

  return BagLanguageSource.fetchLanguages()();
}

uint64_t sub_1AB0A74B8()
{
  v1 = *(v0 + 1672);
  v2 = swift_allocObject();
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  v5 = swift_allocObject();
  *(v0 + 1864) = v5;
  *(v5 + 16) = &unk_1AB4FB550;
  *(v5 + 24) = v2;
  sub_1AB0A76D4(v0 + 1400, v0 + 1480);
  *(v0 + 1872) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v7 = *(v0 + 1416);
  *(v6 + 16) = *(v0 + 1400);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 1432);
  v8 = swift_allocObject();
  *(v0 + 1880) = v8;
  *(v8 + 16) = &unk_1AB4FB578;
  *(v8 + 24) = v6;
  sub_1AB0A76D4(v0 + 1400, v0 + 1560);
  swift_asyncLet_begin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AB8);
  inited = swift_initStackObject();
  *(v0 + 1888) = inited;
  *(inited + 24) = 4;

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1640, sub_1AB4412D8, v0 + 1296);
}

uint64_t sub_1AB0A7694()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0A770C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB0A77C4(a1, v4);
}

uint64_t sub_1AB0A77C4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AB441DD4;

  return v5();
}

uint64_t sub_1AB0A78D0()
{
  result = sub_1AB460514();
  qword_1ED4CFF38 = result;
  return result;
}

uint64_t sub_1AB0A790C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 153) = a4;
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 216) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0A0948, 0, 0);
}

uint64_t sub_1AB0A7964()
{
  v48 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v3 & 1) == 0)
  {
LABEL_10:
    v11 = objc_opt_self();
    v12 = sub_1AB460934();
    v13 = sub_1AB460934();
    v14 = [v11 preferredLocalizationsFromArray:v12 forPreferences:v13];

    v15 = sub_1AB460954();
    if (qword_1ED4CFEF8 != -1)
    {
      swift_once();
    }

    v16 = qword_1EB4347E8;
    v46 = unk_1EB4347F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AB4D4190;
    v47[0] = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    v18._object = 0x80000001AB503E60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    *(v0 + 200) = v19;
    *(v0 + 176) = v1;
    sub_1AB014A58(v0 + 176, v0 + 208, &unk_1EB437E60);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1AB0169C4(v0 + 208, v0 + 16);
    *(v0 + 48) = 0;
    v20 = v47[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
    }

    v23 = *(v0 + 488);
    *(v20 + 2) = v22 + 1;
    v24 = &v20[40 * v22];
    v25 = *(v0 + 16);
    v26 = *(v0 + 32);
    v24[64] = *(v0 + 48);
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v47[0] = v20;
    sub_1AB014AC0(v0 + 176, &unk_1EB437E60);
    v27._countAndFlagsBits = 44;
    v27._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v17 + 32) = v47[0];
    v47[0] = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
    v28._countAndFlagsBits = 0xD00000000000002ELL;
    v28._object = 0x80000001AB503E80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v0 + 264) = v19;
    *(v0 + 240) = v23;
    sub_1AB014A58(v0 + 240, v0 + 272, &unk_1EB437E60);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;

    sub_1AB0169C4(v0 + 272, v0 + 56);
    *(v0 + 88) = 0;
    v29 = v47[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = *(v0 + 56);
    v34 = *(v0 + 72);
    v32[64] = *(v0 + 88);
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v47[0] = v29;
    sub_1AB014AC0(v0 + 240, &unk_1EB437E60);
    v35._countAndFlagsBits = 44;
    v35._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v17 + 40) = v47[0];
    v47[0] = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
    v36._countAndFlagsBits = 0x203A746C75736572;
    v36._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v0 + 328) = v19;
    *(v0 + 304) = v15;
    sub_1AB014A58(v0 + 304, v0 + 336, &unk_1EB437E60);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;

    sub_1AB0169C4(v0 + 336, v0 + 96);
    *(v0 + 128) = 0;
    v37 = v47[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[40 * v39];
    v41 = *(v0 + 96);
    v42 = *(v0 + 112);
    v40[64] = *(v0 + 128);
    *(v40 + 2) = v41;
    *(v40 + 3) = v42;
    v47[0] = v37;
    sub_1AB014AC0(v0 + 304, &unk_1EB437E60);
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    *(v17 + 48) = v47[0];
    Logger.debug(_:)(v17, v16, v46);

    v1 = v15;
    goto LABEL_25;
  }

  v4 = *(v0 + 504);
  ObjectType = swift_getObjectType();
  v47[0] = 0xD000000000000018;
  v47[1] = 0x80000001AB503EB0;
  Preferences.subscript.getter(v47, ObjectType, MEMORY[0x1E69E6370], v4, v0 + 49);

  v6 = *(v0 + 49);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB4347E8;
  v7 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  *(v0 + 392) = MEMORY[0x1E69E6158];
  *(v0 + 368) = 0xD000000000000025;
  *(v0 + 376) = 0x80000001AB503ED0;
  *(v10 + 48) = 0u;
  *(v10 + 32) = 0u;
  sub_1AB0169C4(v0 + 368, v10 + 32);
  *(v10 + 64) = 0;
  *(v9 + 32) = v10;
  Logger.debug(_:)(v9, v8, v7);

LABEL_25:
  v44 = *(v0 + 8);

  return v44(v1);
}

uint64_t sub_1AB0A8048(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1576) = a1;
  *(v3 + 1584) = v1;

  if (v1)
  {
    v4 = sub_1AB200E7C;
  }

  else
  {
    v4 = sub_1AB0A8188;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB0A8188()
{
  v1 = (v0 + 776);
  if (qword_1ED4CFEF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1576);
  v3 = qword_1EB4347E8;
  v4 = unk_1EB4347F0;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  *(v0 + 1592) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v18 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB503760;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  *(v0 + 1600) = v7;
  *(v0 + 1176) = v7;
  *(v0 + 1152) = v2;
  sub_1AB014A58(v0 + 1152, v0 + 1120, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 792) = 0u;

  sub_1AB0169C4(v0 + 1120, v0 + 776);
  *(v0 + 808) = 0;
  v8 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = *v1;
  v13 = *(v0 + 792);
  v11[64] = *(v0 + 808);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1AB014AC0(v0 + 1152, &unk_1EB437E60);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v8;
  Logger.debug(_:)(v5, v3, v4);

  v15 = swift_task_alloc();
  *(v0 + 1608) = v15;
  *v15 = v0;
  v15[1] = sub_1AB0A9CB4;
  v16 = *(v0 + 1576);

  return sub_1AB0A8430(v0 + 376, v0 + 216, v16);
}

uint64_t sub_1AB0A8430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[108] = a3;
  v3[107] = a2;
  v3[106] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0A8458, 0, 0);
}

uint64_t sub_1AB0A8458()
{
  v1 = *(v0 + 864);
  v2 = v1[2];
  *(v0 + 872) = v2;
  if (v2)
  {
    *(v0 + 880) = 0;
    v3 = v1[4];
    *(v0 + 888) = v3;
    v4 = v1[5];
    *(v0 + 896) = v4;
    v5 = qword_1ED4CFEF8;

    if (v5 != -1)
    {
      swift_once();
    }

    v59 = unk_1EB4347F0;
    v60 = qword_1EB4347E8;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D47F0;
    *(v0 + 840) = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v7._countAndFlagsBits = 0xD000000000000025;
    v7._object = 0x80000001AB503D90;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    *(v0 + 736) = MEMORY[0x1E69E6158];
    *(v0 + 712) = v3;
    *(v0 + 720) = v4;
    sub_1AB014A58(v0 + 712, v0 + 616, &unk_1EB437E60);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;

    sub_1AB0169C4(v0 + 616, v0 + 96);
    *(v0 + 128) = 0;
    v8 = *(v0 + 840);
    v62 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
      *(v0 + 840) = v8;
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = *(v0 + 856);
    *(v8 + 2) = v10 + 1;
    v12 = &v8[40 * v10];
    v13 = *(v0 + 96);
    v14 = *(v0 + 112);
    v12[64] = *(v0 + 128);
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    *(v0 + 840) = v8;
    sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v6 + 32) = *(v0 + 840);
    *(v0 + 832) = sub_1AB0168A8(0, 19, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001AB5037D0;
    v16._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v17 = v11[3];
    v18 = __swift_project_boxed_opaque_existential_1Tm(v11, v17);
    *(v0 + 480) = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 456));
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
    sub_1AB014A58(v0 + 456, v0 + 360, &unk_1EB437E60);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_1AB0169C4(v0 + 360, v0 + 256);
    *(v0 + 288) = 0;
    v20 = *(v0 + 832);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
      *(v0 + 832) = v20;
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
    }

    v23 = *(v0 + 856);
    *(v20 + 2) = v22 + 1;
    v24 = &v20[40 * v22];
    v25 = *(v0 + 256);
    v26 = *(v0 + 272);
    v24[64] = *(v0 + 288);
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    *(v0 + 832) = v20;
    sub_1AB014AC0(v0 + 456, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v6 + 40) = *(v0 + 832);
    Logger.debug(_:)(v6, v60, v59);

    v28 = v23[3];
    v29 = v23[4];
    __swift_project_boxed_opaque_existential_1Tm(v23, v28);
    v61 = (*(v29 + 16) + **(v29 + 16));
    v30 = swift_task_alloc();
    *(v0 + 912) = v30;
    *v30 = v0;
    v30[1] = sub_1AB0A9B78;
    v31 = *(v0 + 848);

    return v61(v31, v62, v4, v28, v29);
  }

  else
  {
    if (qword_1ED4CFEF8 != -1)
    {
      swift_once();
      v1 = *(v0 + 864);
    }

    v33 = qword_1EB4347E8;
    v34 = unk_1EB4347F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1AB4D4190;
    v63 = sub_1AB0168A8(0, 57, 0, MEMORY[0x1E69E7CC0]);
    v36._countAndFlagsBits = 0xD000000000000038;
    v36._object = 0x80000001AB503DF0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v0 + 608) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    *(v0 + 584) = v1;
    sub_1AB014A58(v0 + 584, v0 + 648, &unk_1EB437E60);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;

    sub_1AB0169C4(v0 + 648, v0 + 136);
    *(v0 + 168) = 0;
    v37 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1AB0168A8(0, *(v63 + 2) + 1, 1, v63);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
    }

    v40 = *(v0 + 856);
    *(v37 + 2) = v39 + 1;
    v41 = &v37[40 * v39];
    v42 = *(v0 + 136);
    v43 = *(v0 + 152);
    v41[64] = *(v0 + 168);
    *(v41 + 2) = v42;
    *(v41 + 3) = v43;
    sub_1AB014AC0(v0 + 584, &unk_1EB437E60);
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    *(v35 + 32) = v37;
    v64 = sub_1AB0168A8(0, 19, 0, MEMORY[0x1E69E7CC0]);
    v45._object = 0x80000001AB5037D0;
    v45._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v45);
    v46 = v40[3];
    v47 = __swift_project_boxed_opaque_existential_1Tm(v40, v46);
    *(v0 + 704) = v46;
    v48 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
    (*(*(v46 - 8) + 16))(v48, v47, v46);
    sub_1AB014A58(v0 + 680, v0 + 744, &unk_1EB437E60);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1AB0169C4(v0 + 744, v0 + 56);
    *(v0 + 88) = 0;
    v49 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1AB0168A8(0, *(v64 + 2) + 1, 1, v64);
    }

    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_1AB0168A8((v50 > 1), v51 + 1, 1, v49);
    }

    v52 = *(v0 + 848);
    *(v49 + 2) = v51 + 1;
    v53 = &v49[40 * v51];
    v54 = *(v0 + 56);
    v55 = *(v0 + 72);
    v53[64] = *(v0 + 88);
    *(v53 + 2) = v54;
    *(v53 + 3) = v55;
    sub_1AB014AC0(v0 + 680, &unk_1EB437E60);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
    *(v35 + 40) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1AB4D4720;
    *(v0 + 320) = MEMORY[0x1E69E6158];
    *(v0 + 296) = 0xD00000000000002BLL;
    *(v0 + 304) = 0x80000001AB503E30;
    *(v57 + 48) = 0u;
    *(v57 + 32) = 0u;
    sub_1AB0169C4(v0 + 296, v57 + 32);
    *(v57 + 64) = 0;
    *(v35 + 48) = v57;
    Logger.debug(_:)(v35, v33, v34);

    *(v52 + 24) = &type metadata for EmptyLocalizedStrings;
    *(v52 + 32) = &off_1F1FF80C0;
    v58 = *(v0 + 8);

    return v58();
  }
}

uint64_t sub_1AB0A8D54()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1AB0A8E04(v2, v3, v1);
  v6 = v5;

  v4[3] = &type metadata for LocalizedStringsTableCollection.Container;
  v4[4] = &off_1F2008B08;
  *v4 = v6;
  v7 = v0[1];

  return v7();
}

void sub_1AB0A8E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v82 = a3;
  v77 = sub_1AB45FAA4();
  v4 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringTable();
  v84 = *(v6 - 1);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v67 - v12;
  v13 = MEMORY[0x1E69E7CC0];
  v72 = *(a1 + 16);
  if (!v72)
  {
    return;
  }

  v14 = 0;
  v71 = a1 + 32;
  v75 = (v4 + 8);
  v83 = xmmword_1AB4D4720;
  v68 = v9;
  while (1)
  {
    v15 = v71 + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v73 = v13;
        v74 = v14;
        v86 = MEMORY[0x1E69E7CC0];
        v80 = v16;

        sub_1AB1779BC(0, v18, 0);
        v19 = v86;
        v70 = v17;
        v20 = (v17 + 40);
        v21 = v69;
        do
        {
          v85 = v19;
          v23 = *(v20 - 1);
          v22 = *v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
          v24 = swift_allocObject();
          *(v24 + 16) = v83;
          v25 = v82;
          *(v24 + 32) = v81;
          *(v24 + 40) = v25;
          v26 = v80;
          *(v21 + v6[5]) = v80;
          v27 = (v21 + v6[6]);
          *v27 = v23;
          v27[1] = v22;

          v28 = v26;
          v29 = NSBundle.preferredLocalization(fromLanguageCodes:)(v24);

          v79 = v28;
          v30 = [v28 localizations];
          v31 = sub_1AB460954();

          v87 = v29;
          MEMORY[0x1EEE9AC00](v32);
          *(&v67 - 2) = &v87;
          LOBYTE(v30) = sub_1AB0A1064(sub_1AB29A030, (&v67 - 4), v31);

          if (v30)
          {
            *(v21 + v6[7]) = v29;

            sub_1AB45F9F4();
          }

          else
          {

            v33 = v76;
            sub_1AB45FA54();
            v34 = sub_1AB45FA04();
            v36 = v35;
            (*v75)(v33, v77);
            v37 = (v21 + v6[7]);
            *v37 = v34;
            v37[1] = v36;
            sub_1AB45FA54();
          }

          type metadata accessor for LocalizedStringsCache();
          v38 = swift_allocObject();
          *(v38 + 16) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
          *(v21 + v6[8]) = v38;
          v39 = v78;
          sub_1AB0A9AEC(v21, v78);
          v19 = v85;
          v86 = v85;
          v41 = *(v85 + 16);
          v40 = *(v85 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1AB1779BC(v40 > 1, v41 + 1, 1);
            v39 = v78;
            v19 = v86;
          }

          *(v19 + 16) = v41 + 1;
          sub_1AB0A9AEC(v39, v19 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v41);
          v20 += 2;
          --v18;
        }

        while (v18);

        v9 = v68;
        v13 = v73;
        v14 = v74;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v73 = v13;
      v74 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439DD0);
      v42 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
      v43 = swift_allocObject();
      *(v43 + 16) = v83;
      v44 = v82;
      *(v43 + 32) = v81;
      *(v43 + 40) = v44;
      *&v9[v6[5]] = v16;
      v45 = &v9[v6[6]];
      *v45 = 0;
      *(v45 + 1) = 0;
      v46 = v16;

      v47 = v46;
      v48 = NSBundle.preferredLocalization(fromLanguageCodes:)(v43);

      v49 = [v47 localizations];
      v50 = sub_1AB460954();

      v87 = v48;
      MEMORY[0x1EEE9AC00](v51);
      *(&v67 - 2) = &v87;
      LOBYTE(v49) = sub_1AB0A1064(sub_1AB021538, (&v67 - 4), v50);

      if (v49)
      {
        *&v9[v6[7]] = v48;

        sub_1AB45F9F4();
      }

      else
      {

        v52 = v76;
        sub_1AB45FA54();
        v53 = sub_1AB45FA04();
        v55 = v54;
        (*v75)(v52, v77);
        v56 = &v9[v6[7]];
        *v56 = v53;
        v56[1] = v55;
        sub_1AB45FA54();
      }

      v13 = v73;
      type metadata accessor for LocalizedStringsCache();
      v57 = swift_allocObject();
      *(v57 + 16) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
      *&v9[v6[8]] = v57;
      v58 = v85 + v42;
      v19 = v85;
      sub_1AB0A9AEC(v9, v58);

      v14 = v74;
    }

    v59 = *(v19 + 16);
    v60 = v13[2];
    v61 = v60 + v59;
    if (__OFADD__(v60, v59))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v61 <= v13[3] >> 1)
    {
      if (*(v19 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v60 <= v61)
      {
        v63 = v60 + v59;
      }

      else
      {
        v63 = v60;
      }

      v13 = sub_1AB0A9B50(isUniquelyReferenced_nonNull_native, v63, 1, v13);
      if (*(v19 + 16))
      {
LABEL_29:
        if ((v13[3] >> 1) - v13[2] < v59)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v59)
        {
          v64 = v13[2];
          v65 = __OFADD__(v64, v59);
          v66 = v64 + v59;
          if (v65)
          {
            goto LABEL_37;
          }

          v13[2] = v66;
        }

        goto LABEL_4;
      }
    }

    if (v59)
    {
      goto LABEL_35;
    }

LABEL_4:
    if (++v14 == v72)
    {
      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t type metadata accessor for LocalizedStringTable()
{
  result = qword_1ED4D0500;
  if (!qword_1ED4D0500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB0A9630()
{
  sub_1AB45FAA4();
  if (v0 <= 0x3F)
  {
    sub_1AB0A96EC();
    if (v1 <= 0x3F)
    {
      sub_1AB0556A4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for LocalizedStringsCache();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1AB0A96EC()
{
  result = qword_1EB435728;
  if (!qword_1EB435728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB435728);
  }

  return result;
}

Swift::String __swiftcall NSBundle.preferredLocalization(fromLanguageCodes:)(Swift::OpaquePointer fromLanguageCodes)
{
  v3 = sub_1AB45FAA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [v1 localizations];
  if (!v7)
  {
    sub_1AB460954();
    v7 = sub_1AB460934();
  }

  v8 = objc_opt_self();
  v9 = sub_1AB460934();
  v10 = [v8 preferredLocalizationsFromArray:v7 forPreferences:v9];

  v11 = sub_1AB460954();
  if (v11[2])
  {
    v12 = v11[4];
    v13 = v11[5];
  }

  else
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v14 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D4720;
    v33 = sub_1AB0168A8(0, 65, 0, MEMORY[0x1E69E7CC0]);
    v16._countAndFlagsBits = 0xD00000000000002BLL;
    v16._object = 0x80000001AB508980;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    v32[0] = fromLanguageCodes._rawValue;
    sub_1AB01522C(v32, v28);
    v29 = 0u;
    v30 = 0u;

    sub_1AB0169C4(v28, &v29);
    v31 = 0;
    v17 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v29;
    v22 = v30;
    v20[64] = v31;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v33 = v17;
    sub_1AB0167A8(v32);
    v23._object = 0x80000001AB5089B0;
    v23._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v33;
    *&v29 = v14;
    LOBYTE(v32[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v15, v32);

    sub_1AB45FA54();
    v12 = sub_1AB45FA04();
    v13 = v24;
    (*(v4 + 8))(v6, v3);
  }

  v25 = v12;
  v26 = v13;
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_1AB0A9AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringTable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB0A9B78()
{
  v2 = *v1;
  *(v2 + 920) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB202B38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB0A9CB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1AB0A9DB0, 0, 0);
}

uint64_t sub_1AB0A9DB0()
{
  v5 = *(v1 + 1576);
  v6 = v5[2];
  *(v1 + 1616) = v6;
  if (v6)
  {
    *(v1 + 1624) = 0;
    if (v5[2])
    {
      v0 = (v1 + 1360);
      v7 = v5[4];
      *(v1 + 1632) = v7;
      v5 = v5[5];
      *(v1 + 1640) = v5;
      v4 = qword_1EB4347E8;
      v43 = unk_1EB4347F0;
      __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1AB4D4720;

      *(v1 + 1360) = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v8._object = 0x80000001AB503780;
      v8._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v8);
      *(v1 + 1112) = MEMORY[0x1E69E6158];
      *(v1 + 1088) = v7;
      *(v1 + 1096) = v5;
      sub_1AB014A58(v1 + 1088, v1 + 896, &unk_1EB437E60);
      *(v1 + 816) = 0u;
      *(v1 + 832) = 0u;

      sub_1AB0169C4(v1 + 896, v1 + 816);
      *(v1 + 848) = 0;
      v2 = *(v1 + 1360);
      v46 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_4:
        v10 = *(v2 + 2);
        v9 = *(v2 + 3);
        if (v10 >= v9 >> 1)
        {
          v2 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v2);
        }

        v11 = *(v1 + 1416);
        v12 = *(v1 + 1400);
        v41 = *(v1 + 1392);
        v42 = *(v1 + 1408);
        *(v2 + 2) = v10 + 1;
        v13 = &v2[40 * v10];
        v14 = *(v1 + 816);
        v15 = *(v1 + 832);
        v13[64] = *(v1 + 848);
        *(v13 + 2) = v14;
        *(v13 + 3) = v15;
        *(v1 + 1360) = v2;
        sub_1AB014AC0(v1 + 1088, &unk_1EB437E60);
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v16);
        *(v3 + 32) = *(v1 + 1360);
        Logger.debug(_:)(v3, v4, v43);

        v17 = *(v1 + 160);
        v18 = *(v1 + 168);
        __swift_project_boxed_opaque_existential_1Tm((v1 + 136), v17);
        (*(v18 + 16))(v46, v5, v17, v18);
        v19 = *(v12 + 16);
        *(v1 + 1648) = v19;
        *(v1 + 1656) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v19(v42, v11, v41);
        v20 = *(v1 + 120);
        v21 = *(v1 + 128);
        __swift_project_boxed_opaque_existential_1Tm((v1 + 96), v20);
        v44 = (*(v21 + 16) + **(v21 + 16));
        v22 = swift_task_alloc();
        *(v1 + 1664) = v22;
        *v22 = v1;
        v22[1] = sub_1AB0AABEC;

        return v44(v1 + 576, v46, v5, v20, v21);
      }
    }

    else
    {
      __break(1u);
    }

    v2 = sub_1AB0168A8(0, *(v2 + 2) + 1, 1, v2);
    *v0 = v2;
    goto LABEL_4;
  }

  v24 = *(v1 + 1600);
  v45 = unk_1EB4347F0;
  v47 = qword_1EB4347E8;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AB4D4720;
  v48 = sub_1AB0168A8(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v26._countAndFlagsBits = 0xD000000000000031;
  v26._object = 0x80000001AB503810;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v1 + 1208) = v24;
  *(v1 + 1184) = v5;
  sub_1AB014A58(v1 + 1184, v1 + 1248, &unk_1EB437E60);
  *(v1 + 736) = 0u;
  *(v1 + 752) = 0u;
  sub_1AB0169C4(v1 + 1248, v1 + 736);
  *(v1 + 768) = 0;
  v27 = v48;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1AB0168A8(0, *(v48 + 2) + 1, 1, v48);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
  }

  v30 = *(v1 + 1536);
  v31 = *(v1 + 1528);
  v32 = *(v1 + 1520);
  v33 = *(v1 + 1512);
  v34 = *(v1 + 1504);
  *(v27 + 2) = v29 + 1;
  v35 = &v27[40 * v29];
  v36 = *(v1 + 736);
  v37 = *(v1 + 752);
  v35[64] = *(v1 + 768);
  *(v35 + 2) = v36;
  *(v35 + 3) = v37;
  sub_1AB014AC0(v1 + 1184, &unk_1EB437E60);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  *(v25 + 32) = v27;
  Logger.error(_:)(v25, v47, v45);

  sub_1AB17DB30();
  swift_allocError();
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 4;
  swift_willThrow();
  sub_1AB0AB5EC(v34, v33, v32, v31, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 376);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 96);

  v40 = *(v1 + 8);

  return v40();
}

uint64_t sub_1AB0AA3A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AB45FAA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;

  sub_1AB45F9F4();
  sub_1AB0AA4E0();
  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_1AB0AA6C8(v8, a1);
  return (v9)(v8, v2);
}

uint64_t sub_1AB0AA4E0()
{
  v0 = sub_1AB45FAB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB45FB14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45FAF4();
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  v8 = sub_1AB45FA04();
  MEMORY[0x1AC59BA20](v8);

  MEMORY[0x1AC59BA20](0x61646E656C616340, 0xEA00000000003D72);
  sub_1AB45FAC4();
  sub_1AB461824();
  (*(v1 + 8))(v3, v0);
  sub_1AB45F9F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AB0AA6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1AB45FAA4();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB45FA74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D400);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v39 = a1;
  sub_1AB45FA94();
  sub_1AB45FA64();
  v17 = *(v6 + 8);
  v38 = v5;
  v17(v10, v5);
  v18 = sub_1AB45FA24();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) != 1)
  {
    v21 = sub_1AB45FA14();
    v23 = v22;
    v24 = v16;
    v25 = *(v19 + 8);
    v25(v24, v18);
    if (v21 == 29281 && v23 == 0xE200000000000000)
    {
    }

    else
    {
      v27 = sub_1AB461DA4();

      if ((v27 & 1) == 0)
      {
        return (*(v41 + 16))(v40, v39, v42);
      }
    }

    v28 = v37;
    sub_1AB45FA54();
    v29 = v36;
    sub_1AB45FA94();
    (*(v41 + 8))(v28, v42);
    sub_1AB45FA64();
    v17(v29, v38);
    if (v20(v14, 1, v18) != 1)
    {
      v31 = sub_1AB45FA14();
      v33 = v32;
      v25(v14, v18);
      if (v31 == 29281 && v33 == 0xE200000000000000)
      {
      }

      else
      {
        v34 = sub_1AB461DA4();

        if ((v34 & 1) == 0)
        {
          return (*(v41 + 16))(v40, v39, v42);
        }
      }

      return sub_1AB45FA54();
    }

    v16 = v14;
  }

  sub_1AB014AC0(v16, &qword_1EB43D400);
  return (*(v41 + 16))(v40, v39, v42);
}

uint64_t sub_1AB0AAAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0AAAE4, 0, 0);
}

uint64_t sub_1AB0AAAE8()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v4[3] = &type metadata for LanguageStringsContainerWrapper;
  v4[4] = &off_1F1FF70F0;
  v5 = swift_allocObject();
  *v4 = v5;
  sub_1AB01494C(v2 + 40, v5 + 16);
  *(v5 + 56) = v3;
  *(v5 + 64) = v1;
  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB0AABAC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0AABEC()
{
  v2 = *v1;
  *(*v1 + 1672) = v0;

  if (v0)
  {
    v3 = v2[176];
    v4 = v2[175];
    v5 = v2[174];
    v6 = *(v4 + 8);
    v2[210] = v6;
    v2[211] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    swift_bridgeObjectRetain_n();
    v6(v3, v5);
    v7 = sub_1AB200FE4;
  }

  else
  {

    v7 = sub_1AB0AAD5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AB0AAD5C()
{
  v64 = v0;
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1376);
  sub_1AB01494C(v0 + 176, v0 + 616);
  sub_1AB01494C(v0 + 376, v0 + 536);
  v59 = *(v2 + 176);
  sub_1AB014A58(v2 + 184, v0 + 496, &qword_1EB438880);
  if (v1)
  {
    v3 = *(v0 + 1536);
    v4 = *(v0 + 1528);
    v5 = *(v0 + 1520);
    v6 = *(v0 + 1512);
    v7 = *(v0 + 1504);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v6;
    v8[4] = v5;
    v8[5] = v4;
    v48 = v4;
    v51 = v3;
    v8[6] = v3;
    v9 = &off_1F20072F0;
    v10 = &type metadata for AppleServicesLocalizationLiveUpdateService;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
    *(v0 + 464) = 0;
    *(v0 + 472) = 0;
    v51 = *(v0 + 1536);
    v48 = *(v0 + 1528);
    v5 = *(v0 + 1520);
    v6 = *(v0 + 1512);
    v7 = *(v0 + 1504);
  }

  v54 = *(v0 + 1648);
  v49 = *(v0 + 1632);
  v50 = *(v0 + 1640);
  v57 = *(v0 + 1440);
  v52 = *(v0 + 1392);
  v53 = *(v0 + 1408);
  *(v0 + 456) = v8;
  *(v0 + 480) = v10;
  *(v0 + 488) = v9;
  v11 = type metadata accessor for LibICUPluralCategoryProvider();
  v12 = swift_allocObject();
  *(v0 + 440) = &type metadata for SystemDateProvider;
  *(v0 + 448) = &protocol witness table for SystemDateProvider;
  *(v0 + 360) = v11;
  *(v0 + 368) = &off_1F20080F8;
  *(v0 + 336) = v12;
  v13 = swift_allocObject();
  v61 = *(v0 + 1424);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 336, v11);
  v15 = *(v11 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v11);
  v17 = *v16;
  *(v0 + 320) = v11;
  *(v0 + 328) = &off_1F20080F8;
  *(v0 + 296) = v17;
  v18 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
  sub_1AB0AB590(v7, v6, v5, v48, v51);
  *(v13 + 344) = [v18 init];
  *(v13 + 352) = sub_1AB200338;
  *(v13 + 360) = 0;
  *(v13 + 368) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v13 + 376) = sub_1AB20036C;
  *(v13 + 384) = 0;
  *(v13 + 392) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v13 + 400) = sub_1AB2004B4;
  *(v13 + 408) = 0;
  *(v13 + 416) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v13 + 424) = sub_1AB200650;
  *(v13 + 432) = 0;
  *(v13 + 16) = v49;
  *(v13 + 24) = v50;
  v54(v13 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale, v53, v52);
  sub_1AB01494C(v0 + 576, v13 + 32);
  sub_1AB01494C(v0 + 616, v13 + 72);
  sub_1AB01494C(v0 + 536, v13 + 112);
  sub_1AB01494C(v0 + 416, v13 + 152);
  *(v13 + 200) = v61;
  *(v13 + 216) = v59;
  sub_1AB014A58(v0 + 496, v13 + 224, &qword_1EB438880);
  sub_1AB014A58(v0 + 456, v13 + 264, &qword_1EB438888);
  sub_1AB01494C(v0 + 296, v13 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v13 + 192) = v19;
  swift_unknownObjectRetain();

  os_unfair_lock_lock((v57 + 20));
  v20 = *(v57 + 16);
  os_unfair_lock_unlock((v57 + 20));
  if (v20 == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((v20 & 1) == 0)
  {
LABEL_12:
    v36 = *(v0 + 1416);
    v37 = *(v0 + 1408);
    v38 = *(v0 + 1400);
    v39 = *(v0 + 1392);
    sub_1AB0AB5EC(*(v0 + 1504), *(v0 + 1512), *(v0 + 1520), *(v0 + 1528), *(v0 + 1536));

    sub_1AB014AC0(v0 + 496, &qword_1EB438880);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
    v40 = *(v38 + 8);
    v40(v37, v39);
    v40(v36, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
    sub_1AB014AC0(v0 + 456, &qword_1EB438888);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
    v35 = v0 + 296;
    goto LABEL_13;
  }

  v21 = *(v0 + 1432);
  ObjectType = swift_getObjectType();
  v63[0] = 0xD000000000000011;
  v63[1] = 0x80000001AB5037F0;
  Preferences.subscript.getter(v63, ObjectType, MEMORY[0x1E69E6370], v21, v0 + 689);

  v23 = *(v0 + 689);
  if (v23 == 2 || (v23 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1AB014A58(v0 + 456, v0 + 256, &qword_1EB438888);
  v24 = *(v0 + 280);
  v25 = *(v0 + 1640);
  if (v24)
  {
    v26 = *(v0 + 1632);
    v55 = *(v0 + 1528);
    v56 = *(v0 + 1536);
    v27 = *(v0 + 1520);
    v28 = *(v0 + 1512);
    v29 = *(v0 + 1504);
    v60 = *(v0 + 1408);
    v62 = *(v0 + 1416);
    v30 = *(v0 + 1400);
    v58 = *(v0 + 1392);
    v31 = __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v24);
    v32 = v31[4];
    v33 = *(v31 + 1);
    *(v0 + 16) = *v31;
    *(v0 + 32) = v33;
    *(v0 + 48) = v32;
    sub_1AB2BFC4C((v0 + 576), v26, v25);
    sub_1AB0AB5EC(v29, v28, v27, v55, v56);

    sub_1AB014AC0(v0 + 496, &qword_1EB438880);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
    v34 = *(v30 + 8);
    v34(v60, v58);
    v34(v62, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
    sub_1AB014AC0(v0 + 456, &qword_1EB438888);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
    v35 = v0 + 256;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    goto LABEL_14;
  }

  v43 = *(v0 + 1416);
  v44 = *(v0 + 1408);
  v45 = *(v0 + 1400);
  v46 = *(v0 + 1392);
  sub_1AB0AB5EC(*(v0 + 1504), *(v0 + 1512), *(v0 + 1520), *(v0 + 1528), *(v0 + 1536));

  sub_1AB014AC0(v0 + 496, &qword_1EB438880);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  v47 = *(v45 + 8);
  v47(v44, v46);
  v47(v43, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  sub_1AB014AC0(v0 + 456, &qword_1EB438888);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  sub_1AB014AC0(v0 + 256, &qword_1EB438888);
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  v41 = *(v0 + 8);

  return v41(v13);
}

uint64_t sub_1AB0AB540()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1AB0AB590(id result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (result)
  {
    swift_unknownObjectRetain();
    v6 = a3;

    return a5;
  }

  return result;
}

void sub_1AB0AB5EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AB0AB648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[7] = AssociatedTypeWitness;
  v8 = sub_1AB461354();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0AB78C, 0, 0);
}

uint64_t sub_1AB0AB78C()
{
  if (sub_1AB01D3AC(v0[7], v0[7]))
  {
    v0[2] = v0[4];
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1AB0AB8F0;
    v2 = v0[10];
    v3 = v0[7];

    return sub_1AB0612E0(v2, v3, v3);
  }

  else
  {
    v5 = v0[3];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v5, 1, 1, AssociatedTypeWitness);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1AB0AB8F0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1AB293FCC;
  }

  else
  {
    v2 = sub_1AB0ABA04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0ABA04()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[3];
    (*(v0[9] + 8))(v1, v0[8]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v4, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v6 = v0[12];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    (*(v2 + 32))(v6, v1, v3);
    (*(v7 + 24))(v6, v8, v7);
    (*(v2 + 8))(v6, v3);
    v10 = swift_getAssociatedTypeWitness();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1AB0ABBF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id AppleServicesEncoder.Configuration.init(bag:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v3 = [objc_opt_self() ams_sharedAccountStore];
  *(a2 + 32) = sub_1AB2C99F8();
  *(a2 + 40) = &protocol witness table for ACAccountStore;
  *(a2 + 8) = v3;
  result = [objc_opt_self() currentProcess];
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t *AppleServicesEncoder.Configuration.withAccountProvider(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB095A68(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 8), a1);
}

uint64_t AppleServicesEncoder.Configuration.withAnonymityEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1AB095A68(v2, a2);
  *(a2 + 65) = a1;
  return result;
}

void AppleServicesEncoder.Configuration.withProcess(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB095A68(v2, a2);

  objc_storeStrong((a2 + 48), a1);
}

uint64_t AppleServicesEncoder.Configuration.withProtocolHandlingEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1AB095A68(v2, a2);
  *(a2 + 64) = a1;
  return result;
}

uint64_t AppleServicesEncoder.Configuration.withMediaTokenService(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB095A68(v2, a2);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 56) = a1;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t Net.init<A, B>(encoder:fetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v27 = a1;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20);
  (*(v13 + 16))(v16, a2, a4);
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  a7[3] = type metadata accessor for _NetGuts();
  a7[4] = &off_1F1FF5A70;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7);
  sub_1AB0AC224(v20, v16, a3, a4, boxed_opaque_existential_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BED8);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = 1;
  (*(v13 + 8))(a2, a4);
  result = (*(v18 + 8))(v27, a3);
  a7[5] = v22;
  return result;
}

uint64_t sub_1AB0AC198()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB0AC224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for _NetGuts();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

id JSStack.Configuration.init(appScript:dependencies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 96) = MEMORY[0x1E69E7CD0];
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  sub_1AB01494C(a1, a3);
  *(a3 + 72) = a2;
  *(a3 + 80) = sub_1AB0AC3E0(MEMORY[0x1E69E7CC0]);
  result = [objc_allocWithZone(MEMORY[0x1E696EB60]) init];
  if (result)
  {
    *(a3 + 88) = result;
    *(a3 + 104) = 0;
    *(a3 + 240) = 0x747865746E6F63;
    *(a3 + 248) = 0xE700000000000000;
    v7 = type metadata accessor for NoOpIntentCache();
    v8 = swift_allocObject();
    *(a3 + 64) = v7;
    *(a3 + 40) = v8;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB0AC3E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438148);
    v3 = sub_1AB461924();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1AB014DB4(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AB0AC520(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MTMetricsIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB4376F0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MTMetricsIdentifier);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for MTMetricsIdentifier);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MTMetricsIdentifier);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for MTMetricsIdentifier);
    v15 = *(v12 + 8);

    v15(sub_1AB0C1C40, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB0AC73C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v43 = a1;
  v3 = sub_1AB4601B4();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1AB4601F4();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB461114();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB015664();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8098], v9);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  v37 = v8;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = sub_1AB461154();
  v15 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B590);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439788);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  v18[2] = v43;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AB0BF6B8;
  *(v19 + 24) = v18;
  v49 = sub_1AB0ACE50;
  v50 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1AB0C2388;
  v48 = &block_descriptor_43;
  v20 = _Block_copy(&aBlock);

  v21 = v15;

  v22 = v14;

  dispatch_sync(v22, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B598);
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v24 + 16) = v25;
    v26 = MEMORY[0x1E69E7CC0];
    *(v24 + 24) = MEMORY[0x1E69E7CC0];
    *(v24 + 32) = 0;
    v27 = swift_allocObject();
    v28 = v35;
    v27[2] = v24;
    v27[3] = v28;
    v43 = v22;
    v27[4] = v36;
    v27[5] = v16;
    v27[6] = v17;
    v49 = sub_1AB0ADB74;
    v50 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1AB01D528;
    v48 = &block_descriptor_49;
    v29 = _Block_copy(&aBlock);

    v36 = v16;
    v30 = v21;
    v31 = v37;
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v44 = v26;
    sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
    v32 = v40;
    v33 = v42;
    sub_1AB4614E4();
    v34 = v43;
    sub_1AB4610C4();
    _Block_release(v29);

    (*(v41 + 8))(v32, v33);
    (*(v38 + 8))(v31, v39);

    return v24;
  }

  return result;
}

unint64_t sub_1AB0ACE7C(unint64_t result, NSObject *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = result;
  if (result >> 62)
  {
    result = sub_1AB4618F4();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v17 = v9 & 0xC000000000000001;
    v12 = v9;
    do
    {
      if (v17)
      {
        MEMORY[0x1AC59C990](v11, v9);
      }

      else
      {
      }

      ++v11;
      dispatch_group_enter(a2);
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a2;
      v14 = swift_allocObject();
      *(v14 + 16) = a4;
      *(v14 + 24) = a2;
      v20[3] = sub_1AB015664();
      v20[4] = &protocol witness table for OS_dispatch_queue;
      v20[0] = a5;
      v18[0] = sub_1AB35A0A0;
      v18[1] = v13;
      v18[2] = sub_1AB2AB3D0;
      v18[3] = v14;
      sub_1AB01494C(v20, v19);
      v19[40] = 0;
      v15 = a2;

      v16 = a5;

      sub_1AB1946AC(v18);

      sub_1AB014AC0(v18, &unk_1EB4378E0);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v9 = v12;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t sub_1AB0AD08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MTMetricsIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB0AD118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MTMetricsIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_64Tm()
{
  v1 = (type metadata accessor for MTMetricsIdentifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1AB45F9B4();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[9], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB0AD298(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 16));

  return a2(v2, 32, 7);
}

uint64_t sub_1AB0AD2F4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v43 = a1;
  v3 = sub_1AB4601B4();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1AB4601F4();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB461114();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB015664();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8098], v9);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  v37 = v8;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = sub_1AB461154();
  v15 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B5B8);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439788);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  v18[2] = v43;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AB35A070;
  *(v19 + 24) = v18;
  v49 = sub_1AB0ACE50;
  v50 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1AB0C2388;
  v48 = &block_descriptor_94;
  v20 = _Block_copy(&aBlock);

  v21 = v15;

  v22 = v14;

  dispatch_sync(v22, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v24 + 16) = v25;
    v26 = MEMORY[0x1E69E7CC0];
    *(v24 + 24) = MEMORY[0x1E69E7CC0];
    *(v24 + 32) = 0;
    v27 = swift_allocObject();
    v28 = v35;
    v27[2] = v24;
    v27[3] = v28;
    v43 = v22;
    v27[4] = v36;
    v27[5] = v16;
    v27[6] = v17;
    v49 = sub_1AB35A088;
    v50 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1AB01D528;
    v48 = &block_descriptor_100;
    v29 = _Block_copy(&aBlock);

    v36 = v16;
    v30 = v21;
    v31 = v37;
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v44 = v26;
    sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
    v32 = v40;
    v33 = v42;
    sub_1AB4614E4();
    v34 = v43;
    sub_1AB4610C4();
    _Block_release(v29);

    (*(v41 + 8))(v32, v33);
    (*(v38 + 8))(v31, v39);

    return v24;
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0ADA78()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 136;
  v0[3] = sub_1AB0AE898;
  v0[18] = swift_continuation_init();
  v2 = (v0 + 18);
  *(v2 + 72) = 1;
  sub_1AB0BFCD0(v2);
  sub_1AB014AC0(v2, &unk_1EB4376B0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB0ADB8C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock((a4 + 24));
  v8 = *(a4 + 16);

  os_unfair_lock_unlock((a4 + 24));
  os_unfair_lock_lock((a5 + 24));
  v9 = *(a5 + 16);

  os_unfair_lock_unlock((a5 + 24));
  a2(&v11, v8, v9);

  sub_1AB0AE7F4(v11);
}

void sub_1AB0ADCA4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E20);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v22 = v2;
    v23 = a2;
    v25 = MEMORY[0x1E69E7CC0];
    v24 = v8;
    sub_1AB0AE100(0, v11, 0);
    v13 = v24;
    v12 = v25;
    v14 = *(type metadata accessor for MTMetricsIdentifier() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    do
    {
      v17 = *(v13 + 48);
      sub_1AB0AD08C(v15, &v10[v17]);
      *v10 = v10[v17];
      v25 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AB0AE100(v18 > 1, v19 + 1, 1);
        v13 = v24;
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      sub_1AB017FB8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, &qword_1EB436E20);
      v15 += v16;
      --v11;
    }

    while (v11);
    v3 = v22;
    a2 = v23;
  }

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437558);
    v20 = sub_1AB461924();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v25 = v20;
  sub_1AB0AE120(v12, 1, &v25);
  if (v3)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *a2 = v25;
  }
}

size_t sub_1AB0ADF10(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E18);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1AB0AE100(size_t a1, int64_t a2, char a3)
{
  result = sub_1AB0ADF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AB0AE120(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for MTMetricsIdentifier();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E20);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - v14;
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_23;
  }

  v52 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v54 = *(v13 + 72);
  v56 = a1;
  v51 = v17;
  sub_1AB014A58(a1 + v17, &v50 - v14, &qword_1EB436E20);
  v60 = *v15;
  v18 = v60;
  v53 = v16;
  sub_1AB0AD118(&v15[v16], v10);
  v19 = *a3;
  v21 = sub_1AB0AE60C(v18);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1AB1D7CF4();
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1AB1D242C(v24, a2 & 1);
  v26 = sub_1AB0AE60C(v18);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_13:
      v30 = *a3;
      *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      *(v30[6] + v21) = v18;
      v31 = *(v8 + 72);
      sub_1AB0AD118(v10, v30[7] + v31 * v21);
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (!v33)
      {
        v30[2] = v34;
        v35 = v56;
        if (v55 != 1)
        {
          v36 = v56 + v54 + v51;
          v37 = 1;
          while (v37 < *(v35 + 16))
          {
            sub_1AB014A58(v36, v15, &qword_1EB436E20);
            v60 = *v15;
            v38 = v60;
            sub_1AB0AD118(&v15[v53], v10);
            v39 = *a3;
            v40 = sub_1AB0AE60C(v38);
            v42 = v39[2];
            v43 = (v41 & 1) == 0;
            v33 = __OFADD__(v42, v43);
            v44 = v42 + v43;
            if (v33)
            {
              goto LABEL_24;
            }

            v45 = v41;
            if (v39[3] < v44)
            {
              sub_1AB1D242C(v44, 1);
              v40 = sub_1AB0AE60C(v38);
              if ((v45 & 1) != (v46 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v45)
            {
              goto LABEL_10;
            }

            v47 = *a3;
            *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            *(v47[6] + v40) = v60;
            sub_1AB0AD118(v10, v47[7] + v31 * v40);
            v48 = v47[2];
            v33 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v33)
            {
              goto LABEL_25;
            }

            ++v37;
            v47[2] = v49;
            v36 += v54;
            v35 = v56;
            if (v55 == v37)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v28 = swift_allocError();
    swift_willThrow();

    v59 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1AB0AECAC(v10);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_1AB461FC4();
  __break(1u);
LABEL_28:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB4FFF50);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](39, 0xE100000000000000);
  sub_1AB461884();
  __break(1u);
}

unint64_t sub_1AB0AE60C(char a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  v2 = sub_1AB462104();

  return sub_1AB0AE6B0(a1 & 1, v2);
}

unint64_t sub_1AB0AE6B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6469746E65696C63;
    }

    else
    {
      v6 = 0x646972657375;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6469746E65696C63 : 0x646972657375;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1AB461DA4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0AE898()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  if (v2)
  {
    swift_willThrow();

    v3 = sub_1AB38A490;
  }

  else
  {

    *(v1 + 1360) = *(v1 + 1088);
    v3 = sub_1AB0AE9D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB0AE9D4()
{
  if ((*(v0 + 218) & 1) == 0)
  {
    if (*(*(v0 + 1360) + 16))
    {
      v1 = sub_1AB0AE60C(0);
      if (v2)
      {
        v3 = *(v0 + 1208);
        v4 = *(v0 + 1200);
        v5 = *(v0 + 1168);
        sub_1AB0AD08C(*(*(v0 + 1360) + 56) + *(*(v0 + 1176) + 72) * v1, v4);
        sub_1AB0AD118(v4, v3);
        v6 = *(v3 + *(v5 + 32));
        if (v6 != 2 && (v6 & 1) != 0)
        {
          v7 = *(v0 + 1336);
          v8 = *(v0 + 1320);
          v9 = sub_1AB460514();
          v10 = sub_1AB45F914();
          [v8 _setIdentifier_withStartedDate_forKey_];
        }

        sub_1AB0AECAC(*(v0 + 1208));
      }
    }
  }

  if (*(v0 + 219) == 1)
  {
    v11 = *(v0 + 1336);
    v12 = *(v0 + 1328);
    v13 = *(v0 + 1312);
  }

  else
  {
    if (*(*(v0 + 1360) + 16))
    {
      v14 = sub_1AB0AE60C(1);
      if (v15)
      {
        v16 = *(v0 + 1336);
        v17 = *(v0 + 1328);
        v18 = *(v0 + 1320);
        v19 = *(v0 + 1312);
        v20 = *(v0 + 1192);
        v21 = *(v0 + 1184);
        sub_1AB0AD08C(*(*(v0 + 1360) + 56) + *(*(v0 + 1176) + 72) * v14, v21);

        sub_1AB0AD118(v21, v20);
        v22 = sub_1AB460514();
        v23 = sub_1AB45F914();
        [v18 _setIdentifier_withStartedDate_forKey_];

        sub_1AB0AECAC(v20);
        goto LABEL_15;
      }
    }

    v24 = *(v0 + 1336);
    v25 = *(v0 + 1328);
    v13 = *(v0 + 1312);
  }

LABEL_15:
  v26 = *(v0 + 1304);

  v27 = *(v0 + 8);

  return v27(v26);
}

uint64_t sub_1AB0AECAC(uint64_t a1)
{
  v2 = type metadata accessor for MTMetricsIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB0AED14()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB0AED5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AB0AEEC8, 0, 0);
  }
}

uint64_t sub_1AB0AEEC8()
{
  v1 = sub_1AB0AEF40(*(v0 + 88));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB0AEF40(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_1AB02B4BC(*(a1 + 48) + 40 * v10, v27);
    sub_1AB0165C4(*(a1 + 56) + 32 * v10, v28);
    sub_1AB02B4BC(v27, &v21);
    sub_1AB0165C4(v28, &v23 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
    }

    v5 &= v5 - 1;
    sub_1AB014AC0(v27, &qword_1EB438C58);
    if (*(&v24 + 1))
    {
      v21 = v24;
      v22 = v25;
      v23 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AB0AF208(0, v8[2] + 1, 1, v8);
      }

      v12 = v8[2];
      v11 = v8[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v17 = sub_1AB0AF208((v11 > 1), v12 + 1, 1, v8);
        v13 = v12 + 1;
        v8 = v17;
      }

      v8[2] = v13;
      v14 = &v8[6 * v12];
      v15 = v21;
      v16 = v23;
      v14[3] = v22;
      v14[4] = v16;
      v14[2] = v15;
    }

    else
    {
      sub_1AB014AC0(&v24, qword_1EB439240);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0);
    v18 = sub_1AB461924();
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
  }

  v27[0] = v18;

  sub_1AB0AF350(v19, 1, v27);

  return v27[0];
}

void *sub_1AB0AF208(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AB0AF350(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_1AB014A58(a1 + 32, &v44, &qword_1EB439AA0);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_1AB014B78(v46, v41);
  v9 = *a3;
  v10 = sub_1AB014DB4(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1AB01AF68(v15, a2 & 1);
    v10 = sub_1AB014DB4(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1AB461FC4();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1AB0676CC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_1AB014B78(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_1AB014A58(v25, &v44, &qword_1EB439AA0);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_1AB014B78(v46, v41);
      v29 = *a3;
      v30 = sub_1AB014DB4(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_1AB01AF68(v34, 1);
        v30 = sub_1AB014DB4(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_1AB014B78(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB4FFF50);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](39, 0xE100000000000000);
  sub_1AB461884();
  __break(1u);
}

uint64_t sub_1AB0AF72C()
{
  if (*(v0 + 80))
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  if (!*(*(v0 + 72) + 16))
  {

LABEL_14:

    goto LABEL_15;
  }

  if (*(v0 + 80))
  {
    v2 = 0x6449746E65696C63;
  }

  else
  {
    v2 = 0x644972657375;
  }

  v3 = sub_1AB014DB4(v2, v1);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1AB0165C4(*(*(v0 + 72) + 56) + 32 * v3, v0 + 16);

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 8);

    return v8(v6, v7);
  }

LABEL_15:
  sub_1AB255CA8();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1AB0AF8B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB0AF8B0, 0, 0);
  }
}

uint64_t sub_1AB0AF9E8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1AB0AFAF8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 56) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB398730, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1AB0AFC48(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1AB0AFD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v44 - v8;
  v10 = sub_1AB45F9B4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v44 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v44 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v44 - v21;
  strcpy(v53, "idString");
  BYTE1(v53[1]) = 0;
  WORD1(v53[1]) = 0;
  HIDWORD(v53[1]) = -402653184;
  sub_1AB461564();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v23 = sub_1AB02B1D8(v54);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1AB0165C4(*(a1 + 56) + 32 * v23, v55);
  sub_1AB02B2E4(v54);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v51 = v53[0];
  v52 = v53[1];
  v53[0] = 0x657079546469;
  v53[1] = 0xE600000000000000;
  sub_1AB461564();
  if (!*(a1 + 16) || (v25 = sub_1AB02B1D8(v54), (v26 & 1) == 0))
  {

LABEL_10:

    sub_1AB02B2E4(v54);
LABEL_11:
    v28 = type metadata accessor for MTMetricsIdentifier();
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }

  sub_1AB0165C4(*(a1 + 56) + 32 * v25, v55);
  sub_1AB02B2E4(v54);
  sub_1AB083ACC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  v50 = v53[0];
  v27 = [v53[0] integerValue];
  if (v27 == 1)
  {
    v49 = 1;
  }

  else
  {
    if (v27 != 2)
    {

      goto LABEL_11;
    }

    v49 = 0;
  }

  strcpy(v53, "effectiveDate");
  HIWORD(v53[1]) = -4864;
  sub_1AB461564();
  if (!*(a1 + 16) || (v30 = sub_1AB02B1D8(v54), (v31 & 1) == 0))
  {

    sub_1AB02B2E4(v54);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_22;
  }

  sub_1AB0165C4(*(a1 + 56) + 32 * v30, v55);
  sub_1AB02B2E4(v54);
  v32 = swift_dynamicCast();
  v47 = *(v11 + 56);
  v48 = v11 + 56;
  v47(v9, v32 ^ 1u, 1, v10);
  v45 = *(v11 + 48);
  v46 = v11 + 48;
  if (v45(v9, 1, v10) == 1)
  {

LABEL_22:
    sub_1AB014AC0(v9, &qword_1EB4395E0);
    goto LABEL_11;
  }

  v44[0] = *(v11 + 32);
  v44[1] = v11 + 32;
  (v44[0])(v22, v9, v10);
  strcpy(v53, "expirationDate");
  HIBYTE(v53[1]) = -18;
  sub_1AB461564();
  if (!*(a1 + 16) || (v33 = sub_1AB02B1D8(v54), (v34 & 1) == 0))
  {

    sub_1AB02B2E4(v54);
    (*(v11 + 8))(v22, v10);
    v47(v7, 1, 1, v10);
    goto LABEL_29;
  }

  sub_1AB0165C4(*(a1 + 56) + 32 * v33, v55);
  sub_1AB02B2E4(v54);
  v35 = swift_dynamicCast();
  v47(v7, v35 ^ 1u, 1, v10);
  if (v45(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v22, v10);

LABEL_29:
    sub_1AB014AC0(v7, &qword_1EB4395E0);
    goto LABEL_11;
  }

  (v44[0])(v20, v7, v10);
  strcpy(v55, "isSynchronized");
  v55[15] = -18;
  sub_1AB461564();
  if (*(a1 + 16) && (v36 = sub_1AB02B1D8(v54), (v37 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v36, v55);

    sub_1AB02B2E4(v54);

    if (swift_dynamicCast())
    {
      v38 = LOBYTE(v53[0]);
    }

    else
    {
      v38 = 2;
    }
  }

  else
  {

    sub_1AB02B2E4(v54);
    v38 = 2;
  }

  LODWORD(v50) = v38;
  v40 = v51;
  v39 = v52;
  v41 = v49;
  v42 = v44[0];
  (v44[0])(v17, v22, v10);
  v42(v14, v20, v10);
  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39;
  v43 = type metadata accessor for MTMetricsIdentifier();
  v42((a2 + v43[6]), v17, v10);
  v42((a2 + v43[7]), v14, v10);
  *(a2 + v43[8]) = v50;
  return (*(*(v43 - 1) + 56))(a2, 0, 1, v43);
}

void sub_1AB0B0578(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437560);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for MTMetricsIdentifier();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_1AB0AFD54(v11, v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_1AB0AD118(v6, v10);
      sub_1AB0BFED4(v10);
      sub_1AB0AECAC(v10);
      return;
    }

    sub_1AB014AC0(v6, &qword_1EB437560);
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    sub_1AB18AED4();
    v12 = swift_allocError();
    *v13 = 1;
  }

  v14 = a2;
  sub_1AB2A205C(v12);
}

uint64_t sub_1AB0B0750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1AB45F9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0B0808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1AB45F9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0B08B4()
{
  v90 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1112);
  LOBYTE(v85[0]) = 1;
  sub_1AB3ACFF8(v2, v1, v85, v3, v0 + 376);
  v4 = *(v0 + 392);
  *(v0 + 304) = *(v0 + 376);
  *(v0 + 320) = v4;
  v5 = *(v0 + 424);
  *(v0 + 336) = *(v0 + 408);
  *(v0 + 352) = v5;
  *(v0 + 368) = *(v0 + 440);
  v6 = *(v0 + 312);
  if (!v6 || (v7 = *(v0 + 1112), v85[0] = *(v0 + 304), v85[1] = v6, v8 = *(v0 + 408), v86 = *(v0 + 392), v87 = v8, v88 = *(v0 + 424), v89 = *(v0 + 440), sub_1AB3AD338(v85, v7, v83), sub_1AB014AC0(v0 + 304, &qword_1EB439238), *(v0 + 512) = v84, v9 = v83[3], *(v0 + 480) = v83[2], *(v0 + 496) = v9, v10 = v83[1], *(v0 + 448) = v83[0], *(v0 + 464) = v10, !*(v0 + 456)))
  {

LABEL_12:

LABEL_13:
    v23 = *(v0 + 1304);

    v24 = *(v0 + 8);

    return v24(v23);
  }

  v11 = *(v0 + 480);
  v12 = *(v0 + 488);
  v14 = *(v0 + 504);
  v13 = *(v0 + 512);
  v15 = *(v0 + 1120);
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  (*(v17 + 8))(v85, v16, v17);
  v18 = v85[0];
  *(v0 + 1312) = v85[0];
  if (!v18)
  {

    sub_1AB014AC0(v0 + 448, &qword_1EB439238);

    goto LABEL_13;
  }

  v81 = v14;
  v19 = *(v0 + 217);
  v20 = *(v0 + 1128);
  v21 = [objc_allocWithZone(MEMORY[0x1E698CA20]) init];
  *(v0 + 1320) = v21;
  [v21 setAccount_];
  [v21 setClientInfo_];
  v22 = sub_1AB460514();
  [v21 setDomain_];

  [v21 setIsActiveITunesAccountRequired_];
  if ((v12 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v13)
  {
    if (v81 == 0x796C696164 && v13 == 0xE500000000000000)
    {
      v11 = 86400.0;
LABEL_9:
      sub_1AB014AC0(v0 + 448, &qword_1EB439238);
LABEL_10:
      [v21 setResetInterval_];
      goto LABEL_20;
    }

    v26 = sub_1AB461DA4();
    sub_1AB014AC0(v0 + 448, &qword_1EB439238);
    if (v26)
    {
      v11 = 86400.0;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1AB014AC0(v0 + 448, &qword_1EB439238);
  }

LABEL_20:
  v82 = v21;
  v27 = sub_1AB460514();
  v28 = objc_opt_self();
  v29 = [v28 keyWithName:v27 crossDeviceSync:0];
  *(v0 + 1328) = v29;

  v30 = sub_1AB460514();
  v31 = [v28 keyWithName:v30 crossDeviceSync:1];
  *(v0 + 1336) = v31;

  v32 = [objc_opt_self() standardUserDefaults];
  v33 = sub_1AB460514();
  v34 = [v32 BOOLForKey_];

  if (v34)
  {

    [v21 reset];

    goto LABEL_12;
  }

  v80 = v18;
  v35 = *(v0 + 1264);
  v36 = *(v0 + 1232);
  v37 = *(v0 + 1216);
  v38 = *(v0 + 1144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1AB4D7EA0;
  *(v39 + 32) = v29;
  *(v39 + 40) = v31;
  sub_1AB016760(0, &qword_1EB433470);
  v79 = v29;
  v78 = v31;
  v40 = sub_1AB460934();

  sub_1AB19C16C(v38, v37);
  v41 = v35(v37, 1, v36);
  v42 = *(v0 + 1232);
  v43 = *(v0 + 1216);
  if (v41 == 1)
  {
    v44 = *(v0 + 1264);
    sub_1AB45F994();
    if (v44(v43, 1, v42) != 1)
    {
      sub_1AB014AC0(*(v0 + 1216), &qword_1EB4395E0);
    }
  }

  else
  {
    (*(*(v0 + 1240) + 32))(*(v0 + 1248), *(v0 + 1216), *(v0 + 1232));
  }

  v45 = *(v0 + 1248);
  v46 = *(v0 + 1240);
  v47 = *(v0 + 1232);
  v48 = sub_1AB45F914();
  (*(v46 + 8))(v45, v47);
  v49 = [v82 generateEventFieldsForKeys:v40 date:v48];

  v50 = sub_1AB4602F4();
  *(v0 + 952) = 0x644972657375;
  *(v0 + 960) = 0xE600000000000000;
  sub_1AB461564();
  if (*(v50 + 16) && (v51 = sub_1AB02B1D8(v0 + 688), (v52 & 1) != 0))
  {
    sub_1AB0165C4(*(v50 + 56) + 32 * v51, v0 + 856);
    sub_1AB02B2E4(v0 + 688);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = *(v0 + 1048);
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = *(v0 + 1056);
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    sub_1AB02B2E4(v0 + 688);
    v54 = 0;
    v55 = 0;
  }

  v56 = *(v0 + 1304);
  *(v0 + 1064) = 0x644972657375;
  *(v0 + 1072) = 0xE600000000000000;
  sub_1AB461564();
  if (*(v56 + 16))
  {
    v57 = sub_1AB02B1D8(v0 + 568);
    if (v58)
    {
      sub_1AB0165C4(*(*(v0 + 1304) + 56) + 32 * v57, v0 + 760);
      sub_1AB02B2E4(v0 + 568);
      v59 = swift_dynamicCast();
      if (v59)
      {
        v60 = *(v0 + 1032);
      }

      else
      {
        v60 = 0;
      }

      if (v59)
      {
        v61 = *(v0 + 1040);
      }

      else
      {
        v61 = 0;
      }

      if (v55)
      {
        if (v61)
        {
          if (v54 == v60 && v55 == v61)
          {

            v62 = 1;
          }

          else
          {
            v62 = sub_1AB461DA4();
          }

          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (v61)
      {
        v62 = 0;
        goto LABEL_50;
      }

LABEL_53:
      v62 = 1;
      goto LABEL_54;
    }
  }

  sub_1AB02B2E4(v0 + 568);
  if (!v55)
  {
    goto LABEL_53;
  }

LABEL_49:
  v62 = 0;
LABEL_50:

LABEL_54:
  *(v0 + 218) = v62 & 1;
  *(v0 + 968) = 0x6449746E65696C63;
  *(v0 + 976) = 0xE800000000000000;
  sub_1AB461564();
  if (*(v50 + 16) && (v63 = sub_1AB02B1D8(v0 + 648), (v64 & 1) != 0))
  {
    sub_1AB0165C4(*(v50 + 56) + 32 * v63, v0 + 824);
    sub_1AB02B2E4(v0 + 648);

    v65 = swift_dynamicCast();
    if (v65)
    {
      v66 = *(v0 + 1016);
    }

    else
    {
      v66 = 0;
    }

    if (v65)
    {
      v67 = *(v0 + 1024);
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {

    sub_1AB02B2E4(v0 + 648);
    v66 = 0;
    v67 = 0;
  }

  *(v0 + 984) = 0x6449746E65696C63;
  *(v0 + 992) = 0xE800000000000000;
  sub_1AB461564();
  if (!*(v56 + 16) || (v68 = sub_1AB02B1D8(v0 + 608), (v69 & 1) == 0))
  {
    sub_1AB02B2E4(v0 + 608);
    if (v67)
    {
      goto LABEL_78;
    }

LABEL_80:
    if ((v62 & 1) == 0)
    {
LABEL_82:
      v73 = 1;
      goto LABEL_83;
    }

LABEL_81:

    goto LABEL_12;
  }

  sub_1AB0165C4(*(*(v0 + 1304) + 56) + 32 * v68, v0 + 888);
  sub_1AB02B2E4(v0 + 608);
  v70 = swift_dynamicCast();
  if (v70)
  {
    v71 = *(v0 + 1000);
  }

  else
  {
    v71 = 0;
  }

  if (v70)
  {
    v72 = *(v0 + 1008);
  }

  else
  {
    v72 = 0;
  }

  if (!v67)
  {
    if (v72)
    {
      goto LABEL_78;
    }

    goto LABEL_80;
  }

  if (v72)
  {
    if (v66 == v71 && v67 == v72)
    {

      if ((v62 & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v77 = sub_1AB461DA4();

      if ((v62 & v77 & 1) == 0)
      {
        v73 = (v62 ^ 1) & v77;
        goto LABEL_83;
      }
    }

    goto LABEL_81;
  }

LABEL_78:

  v73 = 0;
LABEL_83:
  *(v0 + 219) = v73 & 1;
  v74 = *(v0 + 1280);
  v75 = *(v0 + 1160);
  v76 = *(v0 + 1152);
  *(v0 + 1344) = *(v0 + 1104);

  *(v0 + 1352) = sub_1AB0BF6D0(v76, v75, v74);

  return MEMORY[0x1EEE6DFA0](sub_1AB0ADA78, 0, 0);
}