uint64_t sub_18E278BA4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E278BC8, 0, 0);
}

uint64_t sub_18E278BC8()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v3();
  }

  sub_18E1CF444();
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v21 = swift_allocError();
    sub_18E1CBDCC(v21, v22);
    goto LABEL_2;
  }

  v6 = *(v2 + 40);
  v7 = v5;
  sub_18E1C8880();
  v8 = swift_task_alloc();
  sub_18E1C89FC(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  sub_18E1CF8E8(v18);
  sub_18E1D121C(0, &qword_1EABE05F0, 0x1E696AD98);
  sub_18E1E2D00();
  MEMORY[0] = v19;
  MEMORY[8] = sub_18E278D10;
  sub_18E1C4F44();
  v20 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v20);
}

uint64_t sub_18E278D10()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18E278E10(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E278E34, 0, 0);
}

uint64_t sub_18E278E34()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v3();
  }

  sub_18E1CF444();
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v21 = swift_allocError();
    sub_18E1CBDCC(v21, v22);
    goto LABEL_2;
  }

  v6 = *(v2 + 40);
  v7 = v5;
  sub_18E1C8880();
  v8 = swift_task_alloc();
  sub_18E1C89FC(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  sub_18E1CF8E8(v18);
  sub_18E2706EC(&qword_1EABE10A8, &qword_18E49DCF0);
  sub_18E1E2D00();
  MEMORY[0] = v19;
  MEMORY[8] = sub_18E278D10;
  sub_18E1C4F44();
  v20 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v20);
}

uint64_t sub_18E278F78(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E278F9C, 0, 0);
}

uint64_t sub_18E278F9C()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v3();
  }

  sub_18E1CF444();
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v21 = swift_allocError();
    sub_18E1CBDCC(v21, v22);
    goto LABEL_2;
  }

  v6 = *(v2 + 40);
  v7 = v5;
  sub_18E1C8880();
  v8 = swift_task_alloc();
  sub_18E1C89FC(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  sub_18E1CF8E8(v18);
  sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
  sub_18E1E2D00();
  MEMORY[0] = v19;
  MEMORY[8] = sub_18E278D10;
  sub_18E1C4F44();
  v20 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v20);
}

uint64_t sub_18E2790E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E279104, 0, 0);
}

uint64_t sub_18E279104()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v3();
  }

  sub_18E1CF444();
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v21 = swift_allocError();
    sub_18E1CBDCC(v21, v22);
    goto LABEL_2;
  }

  v6 = *(v2 + 40);
  v7 = v5;
  sub_18E1C8880();
  v8 = swift_task_alloc();
  sub_18E1C89FC(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  sub_18E1CF8E8(v18);
  type metadata accessor for AvailableUseCasesWrapper();
  sub_18E1E2D00();
  MEMORY[0] = v19;
  MEMORY[8] = sub_18E27923C;
  sub_18E1C4F44();
  v20 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v20);
}

uint64_t sub_18E27923C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18E27933C()
{
  sub_18E1C52F0();

  v1 = *(v0 + 16);
  sub_18E1C6500();

  return v2();
}

uint64_t sub_18E27939C()
{
  sub_18E1C52F0();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  sub_18E1D008C();

  return v3();
}

uint64_t sub_18E279400()
{
  sub_18E1C52F0();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  sub_18E1D008C();

  return v3();
}

uint64_t sub_18E279464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18E279488, 0, 0);
}

uint64_t sub_18E279488()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v3();
  }

  sub_18E1CF444();
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v22 = swift_allocError();
    sub_18E1CBDCC(v22, v23);
    goto LABEL_2;
  }

  v6 = v2[5];
  v7 = v5;
  sub_18E1C8880();
  v8 = swift_task_alloc();
  sub_18E1C89FC(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  sub_18E2016A8();
  v2[8] = v18;
  *v18 = v19;
  v18[1] = sub_18E2795D0;
  v20 = v2[2];
  sub_18E1C4F44();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DE38](v21);
}

uint64_t sub_18E2795D0()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18E2796D0()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

void sub_18E27972C()
{
  if (*(v0 + 16))
  {
    v2 = *(v0 + 16);

    v4 = sub_18E4441E4(v3);

    if (!v1)
    {
      [v4 BOOLValue];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E2797CC()
{
  v5 = sub_18E1CD710();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = qword_1ED6A8B58;

  if (v6 != -1)
  {
    sub_18E1C593C();
    swift_once();
  }

  v7 = sub_18E44E83C();
  sub_18E1CE8B4(v7, qword_1ED6A9888);
  v8 = sub_18E44E80C();
  sub_18E44EE2C();
  v9 = sub_18E223CA0();
  if (os_log_type_enabled(v9, v10))
  {
    sub_18E1CAE28();
    *swift_slowAlloc() = 0;
    sub_18E1CE8CC(&dword_18E1C1000);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  sub_18E279AE0(v2, v5, v3, v0, &selRef_hasEnoughStorageForGenerativeExperiencesEssentialResourcesWith_);
}

void sub_18E2798D8()
{
  v1 = *(v0[2] + 16);
  v0[3] = v1;
  if (v1)
  {
    sub_18E1C6170();
    sub_18E1C8DC0();
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_18E2799A0;

    v3(sub_18E279AB0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E2799A0()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_18E1C52E0();
  *v10 = v9;
  v5[5] = v0;

  if (!v0)
  {
    v11 = v5[3];

    v5[6] = v3;
  }

  sub_18E1E6BA0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_18E279AE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v9[4] = a1;
  v9[5] = a2;
  sub_18E1CACD0();
  v9[1] = 1107296256;
  v9[2] = sub_18E2891B0;
  v9[3] = v7;
  v8 = _Block_copy(v9);

  [a3 *a5];
  _Block_release(v8);
}

uint64_t sub_18E279B80(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_18E1C62C4();
}

void sub_18E279B94()
{
  v1 = *(v0[7] + 16);
  v0[8] = v1;
  if (v1)
  {
    sub_18E1CF270();
    v7 = v2;
    sub_18E1CAF5C();
    v3 = v0[6];
    sub_18E1CC494();
    v4 = swift_allocObject();
    v0[9] = v4;
    *(v4 + 16) = v3;
    sub_18E1C8DC0();

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_18E279C84;
    sub_18E2218E0();

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E279C84()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 80);
  *v4 = *v1;
  v3[11] = v7;
  v3[12] = v0;

  if (!v0)
  {
    v9 = v3[8];
    v8 = v3[9];
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_18E279D94()
{
  v1 = v0[11];
  type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();
  v2 = sub_18E44E9AC();
  v43 = v0;
  v3 = v0[11];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = v0[11];
    }

    v5 = sub_18E44F11C();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = v5 | 0x8000000000000000;
  }

  else
  {
    v10 = *(v3 + 64);
    v6 = v3 + 64;
    v9 = v10;
    v11 = -1 << *(v6 - 32);
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v8 = v13 & v9;
  }

  v14 = 0;
  v15 = (v7 + 64) >> 6;
  v44 = v6;
  v45 = v15;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v16 = v14;
  v17 = v8;
  v18 = v14;
  if (v8)
  {
LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
    v21 = *(*(v1 + 56) + v20);
    v22 = *(*(v1 + 48) + v20);
    v23 = v21;
    if (!v22)
    {
LABEL_28:
      sub_18E246F7C();
      sub_18E1C6500();

      v42(v2);
      return;
    }

    while (1)
    {
      v46 = v19;
      v27 = v1;
      v28 = v22;
      v29 = *(v22 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier);
      v30 = v23;
      swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_18E26DBE8(v29);
      if (__OFADD__(v2[2], (v32 & 1) == 0))
      {
        break;
      }

      v33 = v31;
      v34 = v32;
      sub_18E2706EC(&qword_1EABE0E78, &qword_18E49D220);
      if (sub_18E44F0EC())
      {
        v35 = sub_18E26DBE8(v29);
        if ((v34 & 1) != (v36 & 1))
        {

          sub_18E44F41C();
          return;
        }

        v33 = v35;
      }

      if (v34)
      {
        v37 = v2[7];
        v38 = *(v37 + 8 * v33);
        *(v37 + 8 * v33) = v30;
      }

      else
      {
        sub_18E1D7F8C(&v2[v33 >> 6]);
        *(v2[6] + v33) = v29;
        *(v2[7] + 8 * v33) = v30;

        v39 = v2[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_36;
        }

        v2[2] = v41;
      }

      v14 = v18;
      v15 = v45;
      v8 = v46;
      v1 = v27;
      v6 = v44;
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v24 = sub_18E44F13C();
      if (v24)
      {
        v26 = v25;
        v43[3] = v24;
        type metadata accessor for UseCaseIdentifierWrapper();
        swift_dynamicCast();
        v22 = v43[2];
        v43[5] = v26;
        swift_dynamicCast();
        v23 = v43[4];
        v18 = v14;
        v19 = v8;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  else
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_28;
      }

      v17 = *(v6 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_18E27A10C()
{
  sub_18E1C52F0();
  v2 = v0[8];
  v1 = v0[9];

  sub_18E1D008C();
  v4 = v0[12];

  return v3();
}

uint64_t sub_18E27A170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = qword_1ED6A8B58;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_18E44E83C();
  sub_18E1C95EC(v10, qword_1ED6A9888);

  v11 = sub_18E44E80C();
  v12 = sub_18E44EE2C();

  if (os_log_type_enabled(v11, v12))
  {
    v40 = v8;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    v43 = v14;
    *v13 = 136315138;
    v16 = *(a4 + 16);
    if (v16)
    {
      v37 = v14;
      v38 = v13;
      v39 = a1;
      v41 = MEMORY[0x1E69E7CC0];
      sub_18E26F1E0(0, v16, 0);
      v17 = (a4 + 32);
      do
      {
        v18 = *v17++;
        v19 = sub_18E1C6DAC(v18);
        v21 = v20;
        v23 = *(v41 + 16);
        v22 = *(v41 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_18E26F1E0(v22 > 1, v23 + 1, 1);
        }

        *(v41 + 16) = v23 + 1;
        v24 = v41 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        --v16;
      }

      while (v16);
      a1 = v39;
      v15 = v37;
      v13 = v38;
    }

    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1CDB50();
    v25 = sub_18E44EA0C();
    v27 = v26;

    v28 = sub_18E1C9624(v25, v27, &v43);

    *(v13 + 4) = v28;
    _os_log_impl(&dword_18E1C1000, v11, v12, "calling useCaseResourceAvailability() with use case identifiers: %s", v13, 0xCu);
    sub_18E1C9934(v15);
    MEMORY[0x193ACD400](v15, -1, -1);
    MEMORY[0x193ACD400](v13, -1, -1);

    v8 = v40;
  }

  else
  {
  }

  v29 = *(a4 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_18E44F0AC();
    v31 = (a4 + 32);
    v32 = type metadata accessor for UseCaseIdentifierWrapper();
    do
    {
      v33 = *v31++;
      v34 = objc_allocWithZone(v32);
      v34[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = v33;
      v42.receiver = v34;
      v42.super_class = v32;
      objc_msgSendSuper2(&v42, sel_init);
      sub_18E44F08C();
      v35 = *(v43 + 16);
      sub_18E44F0BC();
      sub_18E44F0CC();
      sub_18E44F09C();
      --v29;
    }

    while (v29);
    v30 = v43;
  }

  sub_18E27A4D4(v30, sub_18E1E0F7C, v8, a1);
}

void sub_18E27A4D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for UseCaseIdentifierWrapper();
  v7 = sub_18E44EC8C();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18E27A5BC;
  v9[3] = &unk_1F0140458;
  v8 = _Block_copy(v9);

  [a4 useCaseResourceAvailabilityBy:v7 with:v8];
  _Block_release(v8);
}

uint64_t sub_18E27A5BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for UseCaseIdentifierWrapper();
    type metadata accessor for UseCaseAvailabilityInfo();
    sub_18E288D58(&qword_1EABDF950, type metadata accessor for UseCaseIdentifierWrapper);
    v4 = sub_18E44E98C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_18E27A704(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18E2891B0;
  v5[3] = &unk_1F0140318;
  v4 = _Block_copy(v5);

  [a3 siriResourceAvailabilityWith_];
  _Block_release(v4);
}

uint64_t sub_18E27A7BC()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  sub_18E1C52E0();
  *v10 = v9;
  v5[7] = v0;

  if (v0)
  {
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v15 = v5[4];
    v14 = v5[5];

    sub_18E1C6500();

    return v16(v3);
  }
}

uint64_t sub_18E27A8F8()
{
  sub_18E1C52F0();
  v3 = v2;
  *(v1 + 16) = v0;
  v4 = sub_18E44E54C();
  *(v1 + 24) = v4;
  sub_18E1CF260(v4);
  *(v1 + 32) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = *v3;
  *(v1 + 64) = *(v3 + 16);
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_18E27A9BC()
{
  v1 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 64);
  ResourceBundleQuery.toURI()();
  v2 = *(v0 + 40);
  type metadata accessor for CatalogIndex();
  static CatalogIndex.resolveResourceBundleQueryURI(uri:)();
  v5 = *(*(v0 + 16) + 16);
  *(v0 + 72) = v5;
  if (v5)
  {
    v6 = v3;
    v7 = v4;
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = swift_allocObject();
    *(v0 + 80) = v11;
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = v8;
    v11[5] = v6;
    v11[6] = v7;
    sub_18E1FF278(&dword_18E49DCD8);

    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_18E27AB8C;

    v13(sub_18E288C40, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27AB8C()
{
  sub_18E1CAF5C();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v8 = v7[11];
  v9 = v7[10];
  v10 = v7[9];
  v11 = *v1;
  sub_18E1C52E0();
  *v12 = v11;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_18E1E6BA0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18E27ACD4()
{
  sub_18E1C52F0();
  (*(v0[4] + 8))(v0[5], v0[3]);

  sub_18E1C6500();
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_18E27AD50()
{
  sub_18E1C52F0();
  v1 = v0[12];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v2 = v0[5];

  sub_18E1D008C();

  return v3();
}

uint64_t sub_18E27ADC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = qword_1ED6A8B58;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_18E44E83C();
  sub_18E1C95EC(v17, qword_1ED6A9888);

  v18 = sub_18E44E80C();
  v19 = sub_18E44EE2C();

  if (os_log_type_enabled(v18, v19))
  {
    v27 = a8;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_18E1C9624(a4, a5, &v28);
    *(v20 + 12) = 2080;

    sub_18E2706EC(&qword_1EABE0DA8, &unk_18E49CE10);
    v22 = sub_18E44EB0C();
    v24 = sub_18E1C9624(v22, v23, &v28);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_18E1C1000, v18, v19, "calling supportedArguments for resourceBundleQuery %s and %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v21, -1, -1);
    v25 = v20;
    a8 = v27;
    MEMORY[0x193ACD400](v25, -1, -1);
  }

  sub_18E27B000(a7, a8, sub_18E1E0F7C, v15, a1);
}

void sub_18E27B000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_18E44EA8C();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E27B0D4;
  v10[3] = &unk_1F0140188;
  v9 = _Block_copy(v10);

  [a5 supportedArgumentsFor:v8 with:v9];
  _Block_release(v9);
}

uint64_t sub_18E27B0D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    v4 = sub_18E44EC9C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_18E27B174()
{
  sub_18E1C62A0();
  v2 = v1;
  v71 = v3;
  v4 = type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion();
  v5 = sub_18E1CF260(v4);
  v73 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v11 = v10 - v9;
  v12 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  v13 = sub_18E1C5B08(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C86C0();
  v70 = v16 - v17;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v18);
  v72 = *(v2 + 16);
  if (v72)
  {
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v2 + 32;
    v68 = v11;
    v69 = v0;
    v66 = v2 + 32;
    v67 = &v65 - v19;
    while (1)
    {
      v75 = v21;
      v23 = *(v22 + 8 * v20);
      v74 = v20 + 1;
      v24 = v23 + 64;
      v25 = 1 << *(v23 + 32);
      v26 = v25 < 64 ? ~(-1 << v25) : -1;
      v27 = v26 & *(v23 + 64);
      v28 = (v25 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v29 = 0;
      v79 = v23;
      v76 = v28;
      if (v27)
      {
        break;
      }

      while (1)
      {
LABEL_7:
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          return;
        }

        if (v30 >= v28)
        {
          break;
        }

        v27 = *(v24 + 8 * v30);
        ++v29;
        if (v27)
        {
          v29 = v30;
          goto LABEL_11;
        }
      }

      sub_18E1D0174();
      v45 = v44;

      if (v45)
      {
        v46 = v70;
        sub_18E1C5BFC();
        sub_18E44E70C();
        v47 = sub_18E44E6FC();
        sub_18E201DC8(v46, 0, 1, v47);
        v48 = v67;
        sub_18E288B30();
      }

      else
      {
        sub_18E44E6FC();
        v48 = v67;
        sub_18E1E1480();
        sub_18E201DC8(v49, v50, v51, v52);
      }

      v20 = v74;
      v21 = v75;
      v22 = v66;
      sub_18E1CF9A0();
      sub_18E288AE0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v21 + 16);
        sub_18E1C6868();
        sub_18E3EFC60();
        v21 = v56;
      }

      v54 = *(v21 + 16);
      v53 = *(v21 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_18E216828(v53);
        sub_18E3EFC60();
        v21 = v57;
      }

      sub_18E1CC340(v48, &qword_1EABE11B0, &qword_18E49EF20);
      *(v21 + 16) = v54 + 1;
      sub_18E1E2FF4();
      sub_18E288BE8();
      if (v20 == v72)
      {
        goto LABEL_34;
      }
    }

LABEL_11:
    v31 = (*(v23 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
    v33 = *v31;
    v32 = v31[1];
    v34 = qword_1ED6A8340;

    if (v34 != -1)
    {
      sub_18E1C663C();
      swift_once();
    }

    v35 = qword_1ED6A9848;
    if (*(qword_1ED6A9848 + 16))
    {
      v27 &= v27 - 1;
      v36 = *(qword_1ED6A9848 + 40);
      sub_18E44F48C();
      sub_18E44EB4C();
      v37 = sub_18E44F4CC();
      v38 = ~(-1 << *(v35 + 32));
      while (1)
      {
        v39 = v37 & v38;
        sub_18E1E2EEC();
        if ((v40 & 1) == 0)
        {
          break;
        }

        v41 = (*(v35 + 48) + 16 * v39);
        if (*v41 != v33 || v41[1] != v32)
        {
          v43 = sub_18E44F3CC();
          v37 = v39 + 1;
          if ((v43 & 1) == 0)
          {
            continue;
          }
        }

        v23 = v79;
        v28 = v76;
        if (v27)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    type metadata accessor for CatalogErrors.QueryError(0);
    sub_18E1E6618();
    sub_18E288D58(v58, v59);
    sub_18E1D0098();
    swift_allocError();
    v61 = v60;
    sub_18E1D43E0();

    sub_18E2005C4("not a supported argument: ");
    v62 = sub_18E44EDBC();
    MEMORY[0x193ACC300](v62);

    v63 = v77;
    v64 = v78;
    *v61 = v33;
    v61[1] = v32;
    v61[2] = v63;
    v61[3] = v64;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *v71 = v21;
  }

  sub_18E1C6650();
}

uint64_t sub_18E27B668()
{
  sub_18E1C52F0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  v4 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v4;
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v1;
  sub_18E1C5950(v5);

  return sub_18E27A8F8();
}

uint64_t sub_18E27B708()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  v4 = *(v2 + 56);
  v10 = *v1;
  *(v3 + 64) = v5;
  *(v3 + 72) = v0;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18E27B810()
{
  sub_18E1C6170();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  sub_18E27B174();
  v4 = v0[8];

  sub_18E1D008C();

  return v5();
}

uint64_t sub_18E27B88C()
{
  v1 = *(v0 + 72);
  sub_18E1D008C();
  return v2();
}

uint64_t sub_18E27B8B0(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return sub_18E1C62C4();
}

void sub_18E27B8C8()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 32) = v1;
  if (v1)
  {
    sub_18E1CF270();
    v8 = v2;
    sub_18E1CAF5C();
    v3 = *(v0 + 72);
    v4 = *(v0 + 16);
    v5 = swift_allocObject();
    *(v0 + 40) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    sub_18E1C8DC0();

    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_18E27B9C4;
    sub_18E2218E0();

    v7();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27B9C4()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  sub_18E1C52E0();
  *v10 = v9;
  v5[7] = v0;

  if (!v0)
  {
    v12 = v5[4];
    v11 = v5[5];

    v5[8] = v3;
  }

  sub_18E1E6BA0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18E27BADC()
{
  sub_18E1CF270();
  v9 = v1;
  sub_18E1CAF5C();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *&v3[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases];

  v6 = sub_18E275578(v5);

  sub_18E1C6500();

  return v7(v6);
}

uint64_t sub_18E27BB70()
{
  sub_18E1C52F0();
  v2 = v0[4];
  v1 = v0[5];

  sub_18E1D008C();
  v4 = v0[7];

  return v3();
}

uint64_t sub_18E27BBD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = qword_1ED6A8B58;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_18E44E83C();
  sub_18E1C95EC(v12, qword_1ED6A9888);
  v13 = sub_18E44E80C();
  v14 = sub_18E44EE2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_18E1C1000, v13, v14, "calling availableUseCases", v15, 2u);
    MEMORY[0x193ACD400](v15, -1, -1);
  }

  sub_18E27BD30(a4, a5 & 1, sub_18E1E0F7C, v10, a1);
}

void sub_18E27BD30(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_18E44EC8C();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18E2891B0;
  v11[3] = &unk_1F0140020;
  v10 = _Block_copy(v11);

  [a5 availableUseCasesWithUseCaseIdentifiers:v9 includeAssetsInformation:a2 & 1 with:v10];
  _Block_release(v10);
}

void sub_18E27BE14()
{
  sub_18E1C62A0();
  v3 = v2;
  v78 = v4;
  v5 = type metadata accessor for AvailableUseCases.AvailableUseCase();
  v6 = sub_18E1C4EAC(v5);
  v80 = v7;
  v81 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  v10 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  v11 = sub_18E1C5B08(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C86C0();
  v77 = v14 - v15;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v16);
  v79 = *(v3 + 16);
  if (v79)
  {
    v18 = 0;
    v19 = v3 + 32;
    v20 = MEMORY[0x1E69E7CC0];
    v76 = v0;
    v75 = v1;
    v74 = &v72 - v17;
    v73 = v3 + 32;
    while (1)
    {
      v87 = v20;
      v21 = (v19 + 40 * v18);
      v22 = *v21;
      v24 = *(v21 + 1);
      v23 = *(v21 + 2);
      v25 = *(v21 + 3);
      v82 = v21[32];
      v83 = v22;
      v84 = v18 + 1;
      v26 = v24 + 64;
      v27 = 1 << *(v24 + 32);
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v29 = v28 & *(v24 + 64);
      v30 = (v27 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v86 = v23;

      v85 = v25;

      v31 = 0;
      v88 = v30;
      v91 = v24;
      if (v29)
      {
        break;
      }

      while (1)
      {
LABEL_7:
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          return;
        }

        if (v32 >= v30)
        {
          break;
        }

        v29 = *(v26 + 8 * v32);
        ++v31;
        if (v29)
        {
          v31 = v32;
          goto LABEL_11;
        }
      }

      sub_18E1D0174();
      v47 = v46;

      if (v47)
      {
        v48 = v77;
        sub_18E44E70C();
        v49 = sub_18E44E6FC();
        sub_18E201DC8(v48, 0, 1, v49);
        v50 = v74;
        sub_18E288B30();
      }

      else
      {
        sub_18E44E6FC();
        v50 = v74;
        sub_18E1E1480();
        sub_18E201DC8(v52, v53, v54, v55);
      }

      v51 = v75;
      v56 = v81;
      v57 = v81[5];
      sub_18E288AE0();
      *v51 = v83;
      v58 = v85;
      *&v51[v56[6]] = v86;
      *&v51[v56[7]] = v58;
      v51[v56[8]] = v82;
      v59 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = *(v59 + 16);
        sub_18E1C6868();
        sub_18E3EFD28();
        v59 = v63;
      }

      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      v20 = v59;
      if (v61 >= v60 >> 1)
      {
        sub_18E216828(v60);
        sub_18E3EFD28();
        v20 = v64;
      }

      sub_18E1CC340(v50, &qword_1EABE11B0, &qword_18E49EF20);
      *(v20 + 16) = v61 + 1;
      sub_18E1E2FF4();
      sub_18E288BE8();
      v18 = v84;
      v19 = v73;
      if (v84 == v79)
      {
        goto LABEL_34;
      }
    }

LABEL_11:
    v33 = (*(v24 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v29)))));
    v35 = *v33;
    v34 = v33[1];
    v36 = qword_1ED6A8340;

    if (v36 != -1)
    {
      sub_18E1C663C();
      swift_once();
    }

    v37 = qword_1ED6A9848;
    if (*(qword_1ED6A9848 + 16))
    {
      v29 &= v29 - 1;
      v38 = *(qword_1ED6A9848 + 40);
      sub_18E44F48C();
      sub_18E44EB4C();
      v39 = sub_18E44F4CC();
      v40 = ~(-1 << *(v37 + 32));
      while (1)
      {
        v41 = v39 & v40;
        sub_18E1E2EEC();
        if ((v42 & 1) == 0)
        {
          break;
        }

        v43 = (*(v37 + 48) + 16 * v41);
        if (*v43 != v35 || v43[1] != v34)
        {
          v45 = sub_18E44F3CC();
          v39 = v41 + 1;
          if ((v45 & 1) == 0)
          {
            continue;
          }
        }

        v24 = v91;
        v30 = v88;
        if (v29)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    type metadata accessor for CatalogErrors.QueryError(0);
    sub_18E1E6618();
    sub_18E288D58(v65, v66);
    sub_18E1D0098();
    swift_allocError();
    v68 = v67;
    sub_18E1D43E0();

    sub_18E2005C4("not a supported argument: ");
    v69 = sub_18E44EDBC();
    MEMORY[0x193ACC300](v69);

    v70 = v89;
    v71 = v90;
    *v68 = v35;
    v68[1] = v34;
    v68[2] = v70;
    v68[3] = v71;
    sub_18E1E11B4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *v78 = v20;
  }

  sub_18E1C6650();
}

uint64_t sub_18E27C3A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_18E1C62C4();
}

uint64_t sub_18E27C3BC()
{
  sub_18E1C52F0();
  if (qword_1EABE0990 != -1)
  {
    swift_once();
  }

  v1 = qword_1EABE0858;
  swift_task_alloc();
  sub_18E2016A8();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_18E27C488;
  v4 = v0[2];
  v5 = v0[3];

  return sub_18E27C568(v4, v1, 0);
}

uint64_t sub_18E27C488()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_18E1C52E0();
  *v4 = v3;

  sub_18E1D008C();

  return v5();
}

uint64_t sub_18E27C568(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_18E1C62C4();
}

uint64_t sub_18E27C584()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v2, 0);
    v3 = v16;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v6 = sub_18E1C6DAC(v5);
      v8 = v7;
      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_18E26F1E0(v9 > 1, v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v2;
    }

    while (v2);
  }

  *(v0 + 40) = v3;
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_18E27C6D0;
  v13 = *(v0 + 32);
  v14 = *(v0 + 72);

  return sub_18E27B8B0(v3, v14);
}

uint64_t sub_18E27C6D0()
{
  sub_18E1CAF5C();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *(v7 + 40);
  v10 = *v1;
  sub_18E1C52E0();
  *v11 = v10;
  *(v5 + 56) = v0;

  if (v0)
  {
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    *(v5 + 64) = v3;
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_18E27C82C()
{
  sub_18E1C6170();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];
  sub_18E27BE14();

  sub_18E1D008C();

  return v4();
}

uint64_t sub_18E27C8AC(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return sub_18E1C62C4();
}

void sub_18E27C978(void *a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CD8AC();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = qword_1ED6A8B58;

  if (v7 != -1)
  {
    sub_18E1C593C();
    swift_once();
  }

  v8 = sub_18E44E83C();
  sub_18E1CE8B4(v8, qword_1ED6A9888);
  v9 = sub_18E44E80C();
  sub_18E44EE2C();
  v10 = sub_18E223CA0();
  if (os_log_type_enabled(v10, v11))
  {
    sub_18E1CAE28();
    *swift_slowAlloc() = 0;
    sub_18E224DE8();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  sub_18E1D121C(0, &qword_1EABE05F0, 0x1E696AD98);
  v18 = sub_18E44EEDC();
  sub_18E27CACC(v18, sub_18E288AA8, v6, a1);
}

void sub_18E27CACC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18E2891B0;
  v7[3] = &unk_1F013FEB8;
  v6 = _Block_copy(v7);

  [a4 debugInformationWithOptions:a1 with:v6];
  _Block_release(v6);
}

void sub_18E27CB94(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  v10 = a2;
  v8 = a3;
  v9 = sub_18E1E1F80();
  v7(v9, a3);
}

uint64_t sub_18E27CC1C()
{
  v1 = sub_18E2706EC(&qword_1EABE1028, &unk_18E4E2B80);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  (*(v5 + 104))(v0, *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t sub_18E27CD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_18E44ED4C();
  sub_18E201DC8(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_18E3FE1D0();
}

uint64_t sub_18E27CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_18E2706EC(&qword_1EABE1078, &qword_18E49DCB8);
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v5[26] = *(v10 + 64);
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E27D010, 0, 0);
}

uint64_t sub_18E27D010()
{
  v37 = v0;
  v1 = 0;
  *(v0 + 136) = MEMORY[0x1E69E7CD0];
  v2 = *(v0 + 152);
  do
  {
    v3 = byte_1F01393D0[v1 + 32];
    sub_18E1C6DAC(v3);
    v4 = *(v2 + 64);
    if (!*(v4 + 16))
    {
      goto LABEL_8;
    }

    v5 = *(v2 + 64);

    v6 = sub_18E1CBD4C();
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(*(v4 + 56) + 8 * v6);

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v35 = sub_18E1C6DAC(v3);
        v36 = v14;

        MEMORY[0x193ACC300](95, 0xE100000000000000);

        MEMORY[0x193ACC300](v12, v13);

        sub_18E207D3C(&v35, v35, v36);

        v11 += 2;
        --v10;
      }

      while (v10);

      v2 = v32;
    }

    else
    {
LABEL_8:
    }

    ++v1;
  }

  while (v1 != 3);
  v15 = v31[27];
  v33 = v31[26];
  v16 = v31[24];
  v17 = v31[25];
  v18 = v31[19];
  v19 = v31[20];
  sub_18E2706EC(&qword_1EABE1080, &qword_18E49DCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49DA90;
  strcpy((inited + 32), "model-catalog");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_18E292FCC(v31[17]);
  *(inited + 56) = 0xD000000000000021;
  *(inited + 64) = 0x800000018E463C10;
  *(inited + 72) = &unk_1F01393F8;
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v21 = sub_18E44E9AC();
  v31[28] = v21;
  sub_18E1E4398(v18 + 24, (v31 + 12));
  v22 = v31[15];
  v23 = v31[16];
  sub_18E1E15F4(v31 + 12, v22);
  (*(v17 + 16))(v15, v19, v16);
  v24 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v25 = swift_allocObject();
  v31[29] = v25;
  (*(v17 + 32))(v25 + v24, v15, v16);
  sub_18E1CD500(v23);
  v34 = (v26 + *v26);
  v28 = *(v27 + 4);
  v29 = swift_task_alloc();
  v31[30] = v29;
  *v29 = v31;
  v29[1] = sub_18E27D3FC;

  return v34(v21, sub_18E288A08, v25, v22, v23);
}

uint64_t sub_18E27D3FC()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = v1[30];
  v3 = v1[29];
  v4 = v1[28];
  v5 = *v0;
  sub_18E1C52E0();
  *v6 = v5;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E27D51C()
{
  sub_18E1CAF5C();
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  sub_18E1C9934(v0 + 12);
  v0[18] = 0x3FF0000000000000;
  sub_18E44ED6C();
  (*(v5 + 8))(v3, v4);
  sub_18E44ED7C();

  sub_18E1D008C();

  return v7();
}

uint64_t sub_18E27D5DC(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE1078, &qword_18E49DCB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 / *(a1 + 16);
  }

  else
  {
    v10 = 0.0;
  }

  sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  sub_18E44ED6C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_18E27D6F8(uint64_t *a1)
{
  v3 = sub_18E2706EC(&qword_1EABE1030, &qword_18E49DB18);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  v11 = *a1;
  v12 = v1;
  (*(v8 + 104))(&v10[-v7], *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t sub_18E27D7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = sub_18E44ED4C();
  sub_18E201DC8(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v7 + 32))(&v17[v16], v10, v6);

  sub_18E3FE1D0();
}

uint64_t sub_18E27D9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v6[12] = *(v8 + 64);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E27DAA8, 0, 0);
}

void sub_18E27DAA8()
{
  v65 = v0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_18E26F2F8(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v64 = *(v3 - 1);

        static AssetManagerShared.usageAliasSubscription(useCaseIdentifier:arguments:)(&v64, v4, v63);
        v5 = v63[2];
        v6 = v63[3];

        MEMORY[0x193ACC300](95, 0xE100000000000000);

        MEMORY[0x193ACC300](v5, v6);

        v8 = v63[0];
        v7 = v63[1];
        v9 = 0x61632D6C65646F6DLL;
        v10 = 0xED0000676F6C6174;
      }

      else
      {

        v7 = 0xE800000000000000;
        v9 = 0xD000000000000021;
        v10 = 0x800000018E463C10;
        v8 = 0x65676175676E616CLL;
      }

      v12 = *(v62 + 16);
      v11 = *(v62 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_18E26F2F8((v11 > 1), v12 + 1, 1);
      }

      *(v62 + 16) = v12 + 1;
      v13 = (v62 + 32 * v12);
      v13[4] = v9;
      v13[5] = v10;
      v13[6] = v8;
      v13[7] = v7;
      v3 += 2;
      --v2;
    }

    while (v2);
    v14 = v62;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v15 = sub_18E44E9AC();
  v16 = 0;
  v57 = *(v14 + 16);
  v58 = v14;
  for (i = (v14 + 56); ; i += 4)
  {
    v60[14] = v15;
    if (v57 == v16)
    {
      break;
    }

    if (v16 >= *(v58 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v61 = v16;
    v19 = *(i - 3);
    v18 = *(i - 2);
    v20 = *(i - 1);
    v21 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v15;
    v22 = sub_18E1CBD4C();
    if (__OFADD__(v15[2], (v23 & 1) == 0))
    {
      goto LABEL_34;
    }

    v24 = v22;
    v25 = v23;
    sub_18E2706EC(&qword_1EABE0E18, &unk_18E49D1C0);
    v26 = sub_18E44F0EC();
    v15 = v63[0];
    if (v26)
    {
      v27 = sub_18E1CBD4C();
      if ((v25 & 1) != (v28 & 1))
      {

        sub_18E44F41C();
        return;
      }

      v24 = v27;
    }

    if (v25)
    {
    }

    else
    {
      sub_18E1D7F8C(&v15[v24 >> 6]);
      v29 = (v15[6] + 16 * v24);
      *v29 = v19;
      v29[1] = v18;
      *(v15[7] + 8 * v24) = MEMORY[0x1E69E7CC0];
      v30 = v15[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_35;
      }

      v15[2] = v32;
    }

    v33 = v15[7];
    v34 = *(v33 + 8 * v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 8 * v24) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = *(v34 + 16);
      sub_18E1C6868();
      sub_18E264698();
      v34 = v40;
      *(v33 + 8 * v24) = v40;
    }

    v36 = *(v34 + 16);
    if (v36 >= *(v34 + 24) >> 1)
    {
      sub_18E264698();
      *(v33 + 8 * v24) = v41;
    }

    v37 = *(v33 + 8 * v24);
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    *(v38 + 32) = v20;
    *(v38 + 40) = v21;
    v16 = v61 + 1;
  }

  v42 = v60[12];
  v43 = v60[13];
  v44 = v60[10];
  v45 = v60[11];
  v46 = v60[8];
  v47 = v60[9];

  sub_18E1E4398(v46 + 24, (v60 + 2));
  v48 = v60[6];
  sub_18E1E15F4(v60 + 2, v60[5]);
  sub_18E2244D0();
  v49(v43, v47, v44);
  v50 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v51 = swift_allocObject();
  v60[15] = v51;
  (*(v45 + 32))(v51 + v50, v43, v44);
  sub_18E1CD500(v48);
  v59 = (v52 + *v52);
  v54 = *(v53 + 4);
  v55 = swift_task_alloc();
  v60[16] = v55;
  *v55 = v60;
  v55[1] = sub_18E27E03C;
  v56 = sub_18E1E1F80();

  v59(v56);
}

uint64_t sub_18E27E03C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = v1[16];
  v3 = v1[15];
  v4 = v1[14];
  v5 = *v0;
  sub_18E1C52E0();
  *v6 = v5;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E27E15C()
{
  sub_18E1C6170();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  sub_18E1C9934(v0 + 2);
  sub_18E44ED7C();

  sub_18E1D008C();

  return v4();
}

uint64_t sub_18E27E1D4(uint64_t *a1)
{
  v2 = sub_18E2706EC(&qword_1EABE1068, &qword_18E49DCA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = 0x807030502010004uLL >> (8 * *(a1 + 24));
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = v7;
  sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  sub_18E44ED6C();
  return (*(v3 + 8))(v6, v2);
}

void sub_18E27E2FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_18E44EC9C();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_18E27E38C(_BYTE *a1, int a2)
{
  *(v3 + 16) = v2;
  *(v3 + 56) = a2;
  *(v3 + 60) = *a1;
  return sub_18E1C62C4();
}

void sub_18E27E3AC()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  if (v1)
  {
    sub_18E1CF270();
    v8 = v2;
    sub_18E1CAF5C();
    v3 = *(v0 + 60);
    v4 = *(v0 + 56);
    sub_18E1CC494();
    v5 = swift_allocObject();
    *(v0 + 32) = v5;
    *(v5 + 16) = v3;
    *(v5 + 20) = v4;
    sub_18E1C8DC0();
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_18E27E4A0;

    v7(sub_18E28724C, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27E4A0()
{
  sub_18E1C6170();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v14 = v3 + 24;
    v12 = *(v3 + 24);
    v13 = *(v14 + 8);

    sub_18E1D008C();

    return v15();
  }
}

uint64_t sub_18E27E5E4()
{
  sub_18E1C52F0();
  v2 = v0[3];
  v1 = v0[4];

  sub_18E1D008C();
  v4 = v0[6];

  return v3();
}

void sub_18E27E648(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v10 = type metadata accessor for SafetyFailure(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = qword_1ED6A8B58;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_18E44E83C();
  sub_18E1C95EC(v16, qword_1ED6A9888);
  v17 = sub_18E44E80C();
  v18 = sub_18E44EE2C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_18E1C1000, v17, v18, "calling donateSafetyFailure", v19, 2u);
    MEMORY[0x193ACD400](v19, -1, -1);
  }

  v20 = &v13[*(v10 + 24)];
  sub_18E44E69C();
  *v13 = a4;
  *(v13 + 1) = a5;
  v21 = type metadata accessor for SafetyFailureWrapper(0);
  v22 = objc_allocWithZone(v21);
  sub_18E287284();
  v24.receiver = v22;
  v24.super_class = v21;
  v23 = objc_msgSendSuper2(&v24, sel_init);
  sub_18E2886E4(v13, type metadata accessor for SafetyFailure);
  sub_18E25AC64(v23, sub_18E25D6A4, v14, a1, &unk_1F013FD50, &selRef_donateSafetyFailureWithSafetyFailure_with_);
}

uint64_t sub_18E27E88C()
{
  sub_18E1C52F0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SafetyFailure(0);
  sub_18E1CF260(v3);
  v1[4] = v4;
  v1[5] = *(v5 + 64);
  v1[6] = swift_task_alloc();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_18E27E940()
{
  v1 = *(v0[3] + 16);
  v0[7] = v1;
  if (v1)
  {
    sub_18E1CF270();
    v10 = v2;
    sub_18E1CAF5C();
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = v0[2];
    sub_18E287284();
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v0[8] = swift_allocObject();
    sub_18E288BE8();
    sub_18E1C8DC0();
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_18E27EA78;
    sub_18E2218E0();

    v9();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27EA78()
{
  sub_18E1C6170();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    sub_18E1D008C();

    return v15();
  }
}

uint64_t sub_18E27EBC8()
{
  sub_18E1C52F0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_18E1D008C();
  v5 = v0[10];

  return v4();
}

void sub_18E27EC38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SafetyFailure(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = qword_1ED6A8B58;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_18E44E83C();
  sub_18E1C95EC(v12, qword_1ED6A9888);
  v13 = sub_18E44E80C();
  v14 = sub_18E44EE2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_18E1C1000, v13, v14, "calling donateSafetyFailure", v15, 2u);
    MEMORY[0x193ACD400](v15, -1, -1);
  }

  sub_18E287284();
  v16 = type metadata accessor for SafetyFailureWrapper(0);
  v17 = objc_allocWithZone(v16);
  sub_18E287284();
  v19.receiver = v17;
  v19.super_class = v16;
  v18 = objc_msgSendSuper2(&v19, sel_init);
  sub_18E2886E4(v9, type metadata accessor for SafetyFailure);
  sub_18E25AC64(v18, sub_18E25D6A4, v10, a1, &unk_1F013FC10, &selRef_donateSafetyFailureWithSafetyFailure_with_);
}

uint64_t sub_18E27EE68()
{
  sub_18E1C52F0();
  sub_18E1CA578();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27EED0()
{
  sub_18E1C52F0();
  sub_18E1CA578();

  sub_18E1D008C();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_18E27EF38(int a1)
{
  *(v2 + 32) = v1;
  *(v2 + 72) = a1;
  return sub_18E1C62C4();
}

void sub_18E27EF50()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 40) = v1;
  if (v1)
  {
    sub_18E1C6170();
    v2 = *(v0 + 72);
    v3 = swift_allocObject();
    *(v0 + 48) = v3;
    *(v3 + 16) = v2;
    sub_18E1FF278(&dword_18E49DB48);

    swift_task_alloc();
    sub_18E2016A8();
    *(v0 + 56) = v4;
    *v4 = v5;
    v4[1] = sub_18E27F04C;

    v6(v0 + 16, sub_18E287378, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27F04C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  v3[8] = v0;

  if (!v0)
  {
    v10 = v3[5];
    v9 = v3[6];
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E27F170()
{
  sub_18E1C52F0();
  v2 = v0[5];
  v1 = v0[6];

  sub_18E1D008C();
  v4 = v0[8];

  return v3();
}

uint64_t sub_18E27F1D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = qword_1ED6A8B58;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_18E44E83C();
  sub_18E1C95EC(v10, qword_1ED6A9888);
  v11 = sub_18E44E80C();
  v12 = sub_18E44EE2C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_18E1C1000, v11, v12, "calling safetyFailures", v13, 2u);
    MEMORY[0x193ACD400](v13, -1, -1);
  }

  sub_18E27F320(a4, sub_18E25D6D0, v8, a1);
}

void sub_18E27F320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18E27F3E8;
  v7[3] = &unk_1F013FB70;
  v6 = _Block_copy(v7);

  [a4 safetyFailuresWithUserIdentifier:a1 with:v6];
  _Block_release(v6);
}

uint64_t sub_18E27F3E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_18E44E61C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_18E2886D0(v4, v9);
}

uint64_t sub_18E27F5F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E27F684;

  return sub_18E278790();
}

uint64_t sub_18E27F684()
{
  sub_18E1C52F0();
  v3 = v2;
  sub_18E1C64F4();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_18E1C52E0();
  *v7 = v6;

  sub_18E1C6500();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_18E27F778()
{
  v1 = *v0;
  sub_18E27972C();
  return v2 & 1;
}

uint64_t sub_18E27F7A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E2891D0;

  return sub_18E2798C4();
}

uint64_t sub_18E27F830(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E2891D4;

  return sub_18E279B80(a1);
}

uint64_t sub_18E27F8EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E27F984;

  return sub_18E25E7A8(a1);
}

uint64_t sub_18E27F984()
{
  sub_18E1C52F0();
  v3 = v2;
  sub_18E1C64F4();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_18E1C52E0();
  *v7 = v6;

  sub_18E1C6500();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_18E27FA70()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E25E61C;

  return sub_18E27B668();
}

uint64_t sub_18E27FB1C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E25E674;

  return sub_18E27C3A8(a1);
}

uint64_t sub_18E27FC00()
{
  v2 = *v0;
  v3 = sub_18E253814();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_18E27FC7C(_BYTE *a1, int a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18E25E61C;

  return sub_18E27E38C(a1, a2);
}

uint64_t sub_18E27FD24()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E25E61C;

  return sub_18E27E88C();
}

uint64_t sub_18E27FDBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E25E61C;

  return sub_18E259E40();
}

uint64_t sub_18E27FE54()
{
  v1 = sub_18E44E83C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6A9020 != -1)
  {
    swift_once();
  }

  v6 = sub_18E1C95EC(v1, qword_1ED6A9028);
  swift_beginAccess();
  (*(v2 + 16))(v5, v6, v1);
  v7 = sub_18E44E80C();
  v8 = sub_18E44EE0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16[1] = v0;
    v10 = v9;
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = qword_1EABE9328;
    v13 = off_1EABE9330;

    v14 = sub_18E1C9624(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_18E1C1000, v7, v8, "%s: Connection to XPC Server interrupted.", v10, 0xCu);
    sub_18E1C9934(v11);
    MEMORY[0x193ACD400](v11, -1, -1);
    MEMORY[0x193ACD400](v10, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_18E280094(id *a1)
{
  v2 = sub_18E44E83C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (qword_1ED6A9020 != -1)
  {
    swift_once();
  }

  v7 = sub_18E1C95EC(v2, qword_1ED6A9028);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_18E44E80C();
  v9 = sub_18E44EE2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v13 = qword_1EABE9328;
    v14 = off_1EABE9330;

    v15 = sub_18E1C9624(v13, v14, &v20);
    v18 = v2;
    v16 = v15;

    *(v11 + 4) = v16;
    _os_log_impl(&dword_18E1C1000, v8, v9, "%s: Connection to XPC Server invalidated.", v11, 0xCu);
    sub_18E1C9934(v12);
    MEMORY[0x193ACD400](v12, -1, -1);
    MEMORY[0x193ACD400](v11, -1, -1);

    result = (*(v19 + 8))(v6, v18);
  }

  else
  {

    result = (*(v3 + 8))(v6, v2);
  }

  *a1 = 0;
  return result;
}

BOOL sub_18E280314(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1D121C(0, &qword_1EABE08A0, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v4 = [v15 domain];
  v5 = sub_18E44EAAC();
  v7 = v6;

  v8 = *MEMORY[0x1E696A250];
  if (v5 == sub_18E44EAAC() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_18E44F3CC();

    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  v12 = [v15 code];

  return v12 == 4097 && a2 < 2;
}

uint64_t sub_18E280470(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE10B8, &qword_18E49DD00);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288DAC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F0140548;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288DD4, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E28079C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE10B0, &qword_18E49DCF8);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288D08;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F0140368;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288D30, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E280AC8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE1098, &qword_18E49DCE0);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288C5C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F0140098;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288C84, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E280DF4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE1088, &qword_18E49DCD0);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288B98;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F013FF30;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288BC0, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E281120(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288650;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F013FA08;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288678, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E28144C(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v86 = a7;
  v88 = a5;
  v84 = a4;
  v11 = sub_18E2706EC(&qword_1EABE10B8, &qword_18E49DD00);
  v85 = *(v11 - 8);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  swift_beginAccess();
  v22 = a3[2];
  v83 = a2;
  if (sub_18E280314(a1, v22))
  {
    v81 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v23 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v21, v23, v14);
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    v27 = os_log_type_enabled(v25, v26);
    v80 = v13;
    if (v27)
    {
      LODWORD(v78) = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v28 = 136315650;
      v79 = v14;
      swift_beginAccess();
      v30 = v11;
      v32 = qword_1EABE9328;
      v31 = off_1EABE9330;

      v33 = sub_18E1C9624(v32, v31, aBlock);

      *(v28 + 4) = v33;
      v11 = v30;
      *(v28 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v36 = a3[2];

      *(v28 + 24) = v36;

      _os_log_impl(&dword_18E1C1000, v25, v78, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E1CC340(v29, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v29, -1, -1);
      v37 = v77;
      sub_18E1C9934(v77);
      MEMORY[0x193ACD400](v37, -1, -1);
      MEMORY[0x193ACD400](v28, -1, -1);

      (*(v15 + 8))(v21, v79);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    result = swift_beginAccess();
    v54 = a3[2];
    v55 = __CFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v56;
      v57 = v85;
      v58 = *(v85 + 16);
      v78 = v85 + 16;
      v79 = v58;
      v59 = v80;
      v82 = v11;
      v58(v80, v88, v11);
      v60 = *(v57 + 80);
      v61 = (v60 + 40) & ~v60;
      v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 2) = v83;
      *(v63 + 3) = a3;
      v77 = a3;
      v64 = v84;
      *(v63 + 4) = v84;
      v65 = *(v57 + 32);
      v65(&v63[v61], v59, v11);
      v66 = &v63[v62];
      v67 = v86;
      *v66 = v81;
      v66[1] = v67;
      aBlock[4] = sub_18E2891AC;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F01405C0;
      v68 = _Block_copy(aBlock);
      v69 = v77;

      v70 = v64;

      v71 = [v70 remoteObjectProxyWithErrorHandler_];
      _Block_release(v68);
      v72 = v80;
      v73 = v82;
      v79(v80, v88, v82);
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      v65((v74 + ((v60 + 24) & ~v60)), v72, v73);

      v75 = swift_unknownObjectRetain();
      v81(v75, sub_18E2891CC, v74);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v38 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v19, v38, v14);
    swift_retain_n();
    v39 = a1;
    v40 = sub_18E44E80C();
    v41 = sub_18E44EE0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = v14;
      v43 = v42;
      v44 = swift_slowAlloc();
      v82 = v11;
      v45 = v44;
      v87 = swift_slowAlloc();
      v89 = v87;
      *v43 = 136315650;
      swift_beginAccess();
      v46 = qword_1EABE9328;
      v47 = off_1EABE9330;

      v48 = sub_18E1C9624(v46, v47, &v89);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      v49 = a1;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v50;
      *v45 = v50;
      *(v43 + 22) = 2048;
      swift_beginAccess();
      v51 = a3[2];

      *(v43 + 24) = v51;

      _os_log_impl(&dword_18E1C1000, v40, v41, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v43, 0x20u);
      sub_18E1CC340(v45, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v45, -1, -1);
      v52 = v87;
      sub_18E1C9934(v87);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v43, -1, -1);

      (*(v15 + 8))(v19, v79);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v89 = a1;
    v76 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E281DA4(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v86 = a7;
  v88 = a5;
  v84 = a4;
  v11 = sub_18E2706EC(&qword_1EABE10B0, &qword_18E49DCF8);
  v85 = *(v11 - 8);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  swift_beginAccess();
  v22 = a3[2];
  v83 = a2;
  if (sub_18E280314(a1, v22))
  {
    v81 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v23 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v21, v23, v14);
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    v27 = os_log_type_enabled(v25, v26);
    v80 = v13;
    if (v27)
    {
      LODWORD(v78) = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v28 = 136315650;
      v79 = v14;
      swift_beginAccess();
      v30 = v11;
      v32 = qword_1EABE9328;
      v31 = off_1EABE9330;

      v33 = sub_18E1C9624(v32, v31, aBlock);

      *(v28 + 4) = v33;
      v11 = v30;
      *(v28 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v36 = a3[2];

      *(v28 + 24) = v36;

      _os_log_impl(&dword_18E1C1000, v25, v78, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E1CC340(v29, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v29, -1, -1);
      v37 = v77;
      sub_18E1C9934(v77);
      MEMORY[0x193ACD400](v37, -1, -1);
      MEMORY[0x193ACD400](v28, -1, -1);

      (*(v15 + 8))(v21, v79);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    result = swift_beginAccess();
    v54 = a3[2];
    v55 = __CFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v56;
      v57 = v85;
      v58 = *(v85 + 16);
      v78 = v85 + 16;
      v79 = v58;
      v59 = v80;
      v82 = v11;
      v58(v80, v88, v11);
      v60 = *(v57 + 80);
      v61 = (v60 + 40) & ~v60;
      v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 2) = v83;
      *(v63 + 3) = a3;
      v77 = a3;
      v64 = v84;
      *(v63 + 4) = v84;
      v65 = *(v57 + 32);
      v65(&v63[v61], v59, v11);
      v66 = &v63[v62];
      v67 = v86;
      *v66 = v81;
      v66[1] = v67;
      aBlock[4] = sub_18E2891A8;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F01403E0;
      v68 = _Block_copy(aBlock);
      v69 = v77;

      v70 = v64;

      v71 = [v70 remoteObjectProxyWithErrorHandler_];
      _Block_release(v68);
      v72 = v80;
      v73 = v82;
      v79(v80, v88, v82);
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      v65((v74 + ((v60 + 24) & ~v60)), v72, v73);

      v75 = swift_unknownObjectRetain();
      v81(v75, sub_18E2891C8, v74);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v38 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v19, v38, v14);
    swift_retain_n();
    v39 = a1;
    v40 = sub_18E44E80C();
    v41 = sub_18E44EE0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = v14;
      v43 = v42;
      v44 = swift_slowAlloc();
      v82 = v11;
      v45 = v44;
      v87 = swift_slowAlloc();
      v89 = v87;
      *v43 = 136315650;
      swift_beginAccess();
      v46 = qword_1EABE9328;
      v47 = off_1EABE9330;

      v48 = sub_18E1C9624(v46, v47, &v89);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      v49 = a1;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v50;
      *v45 = v50;
      *(v43 + 22) = 2048;
      swift_beginAccess();
      v51 = a3[2];

      *(v43 + 24) = v51;

      _os_log_impl(&dword_18E1C1000, v40, v41, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v43, 0x20u);
      sub_18E1CC340(v45, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v45, -1, -1);
      v52 = v87;
      sub_18E1C9934(v87);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v43, -1, -1);

      (*(v15 + 8))(v19, v79);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v89 = a1;
    v76 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E2826FC(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v86 = a7;
  v88 = a5;
  v84 = a4;
  v11 = sub_18E2706EC(&qword_1EABE10A0, &qword_18E49DCE8);
  v85 = *(v11 - 8);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  swift_beginAccess();
  v22 = a3[2];
  v83 = a2;
  if (sub_18E280314(a1, v22))
  {
    v81 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v23 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v21, v23, v14);
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    v27 = os_log_type_enabled(v25, v26);
    v80 = v13;
    if (v27)
    {
      LODWORD(v78) = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v28 = 136315650;
      v79 = v14;
      swift_beginAccess();
      v30 = v11;
      v32 = qword_1EABE9328;
      v31 = off_1EABE9330;

      v33 = sub_18E1C9624(v32, v31, aBlock);

      *(v28 + 4) = v33;
      v11 = v30;
      *(v28 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v36 = a3[2];

      *(v28 + 24) = v36;

      _os_log_impl(&dword_18E1C1000, v25, v78, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E1CC340(v29, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v29, -1, -1);
      v37 = v77;
      sub_18E1C9934(v77);
      MEMORY[0x193ACD400](v37, -1, -1);
      MEMORY[0x193ACD400](v28, -1, -1);

      (*(v15 + 8))(v21, v79);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    result = swift_beginAccess();
    v54 = a3[2];
    v55 = __CFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v56;
      v57 = v85;
      v58 = *(v85 + 16);
      v78 = v85 + 16;
      v79 = v58;
      v59 = v80;
      v82 = v11;
      v58(v80, v88, v11);
      v60 = *(v57 + 80);
      v61 = (v60 + 40) & ~v60;
      v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 2) = v83;
      *(v63 + 3) = a3;
      v77 = a3;
      v64 = v84;
      *(v63 + 4) = v84;
      v65 = *(v57 + 32);
      v65(&v63[v61], v59, v11);
      v66 = &v63[v62];
      v67 = v86;
      *v66 = v81;
      v66[1] = v67;
      aBlock[4] = sub_18E2891A4;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F0140250;
      v68 = _Block_copy(aBlock);
      v69 = v77;

      v70 = v64;

      v71 = [v70 remoteObjectProxyWithErrorHandler_];
      _Block_release(v68);
      v72 = v80;
      v73 = v82;
      v79(v80, v88, v82);
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      v65((v74 + ((v60 + 24) & ~v60)), v72, v73);

      v75 = swift_unknownObjectRetain();
      v81(v75, sub_18E2891C4, v74);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v38 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v19, v38, v14);
    swift_retain_n();
    v39 = a1;
    v40 = sub_18E44E80C();
    v41 = sub_18E44EE0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = v14;
      v43 = v42;
      v44 = swift_slowAlloc();
      v82 = v11;
      v45 = v44;
      v87 = swift_slowAlloc();
      v89 = v87;
      *v43 = 136315650;
      swift_beginAccess();
      v46 = qword_1EABE9328;
      v47 = off_1EABE9330;

      v48 = sub_18E1C9624(v46, v47, &v89);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      v49 = a1;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v50;
      *v45 = v50;
      *(v43 + 22) = 2048;
      swift_beginAccess();
      v51 = a3[2];

      *(v43 + 24) = v51;

      _os_log_impl(&dword_18E1C1000, v40, v41, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v43, 0x20u);
      sub_18E1CC340(v45, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v45, -1, -1);
      v52 = v87;
      sub_18E1C9934(v87);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v43, -1, -1);

      (*(v15 + 8))(v19, v79);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v89 = a1;
    v76 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E283054(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v86 = a7;
  v88 = a5;
  v84 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1098, &qword_18E49DCE0);
  v85 = *(v11 - 8);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  swift_beginAccess();
  v22 = a3[2];
  v83 = a2;
  if (sub_18E280314(a1, v22))
  {
    v81 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v23 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v21, v23, v14);
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    v27 = os_log_type_enabled(v25, v26);
    v80 = v13;
    if (v27)
    {
      LODWORD(v78) = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v28 = 136315650;
      v79 = v14;
      swift_beginAccess();
      v30 = v11;
      v32 = qword_1EABE9328;
      v31 = off_1EABE9330;

      v33 = sub_18E1C9624(v32, v31, aBlock);

      *(v28 + 4) = v33;
      v11 = v30;
      *(v28 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v36 = a3[2];

      *(v28 + 24) = v36;

      _os_log_impl(&dword_18E1C1000, v25, v78, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E1CC340(v29, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v29, -1, -1);
      v37 = v77;
      sub_18E1C9934(v77);
      MEMORY[0x193ACD400](v37, -1, -1);
      MEMORY[0x193ACD400](v28, -1, -1);

      (*(v15 + 8))(v21, v79);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    result = swift_beginAccess();
    v54 = a3[2];
    v55 = __CFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v56;
      v57 = v85;
      v58 = *(v85 + 16);
      v78 = v85 + 16;
      v79 = v58;
      v59 = v80;
      v82 = v11;
      v58(v80, v88, v11);
      v60 = *(v57 + 80);
      v61 = (v60 + 40) & ~v60;
      v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 2) = v83;
      *(v63 + 3) = a3;
      v77 = a3;
      v64 = v84;
      *(v63 + 4) = v84;
      v65 = *(v57 + 32);
      v65(&v63[v61], v59, v11);
      v66 = &v63[v62];
      v67 = v86;
      *v66 = v81;
      v66[1] = v67;
      aBlock[4] = sub_18E2891A0;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F0140110;
      v68 = _Block_copy(aBlock);
      v69 = v77;

      v70 = v64;

      v71 = [v70 remoteObjectProxyWithErrorHandler_];
      _Block_release(v68);
      v72 = v80;
      v73 = v82;
      v79(v80, v88, v82);
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      v65((v74 + ((v60 + 24) & ~v60)), v72, v73);

      v75 = swift_unknownObjectRetain();
      v81(v75, sub_18E2891C0, v74);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v38 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v19, v38, v14);
    swift_retain_n();
    v39 = a1;
    v40 = sub_18E44E80C();
    v41 = sub_18E44EE0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = v14;
      v43 = v42;
      v44 = swift_slowAlloc();
      v82 = v11;
      v45 = v44;
      v87 = swift_slowAlloc();
      v89 = v87;
      *v43 = 136315650;
      swift_beginAccess();
      v46 = qword_1EABE9328;
      v47 = off_1EABE9330;

      v48 = sub_18E1C9624(v46, v47, &v89);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      v49 = a1;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v50;
      *v45 = v50;
      *(v43 + 22) = 2048;
      swift_beginAccess();
      v51 = a3[2];

      *(v43 + 24) = v51;

      _os_log_impl(&dword_18E1C1000, v40, v41, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v43, 0x20u);
      sub_18E1CC340(v45, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v45, -1, -1);
      v52 = v87;
      sub_18E1C9934(v87);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v43, -1, -1);

      (*(v15 + 8))(v19, v79);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v89 = a1;
    v76 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E2839AC(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v86 = a7;
  v88 = a5;
  v84 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1088, &qword_18E49DCD0);
  v85 = *(v11 - 8);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  swift_beginAccess();
  v22 = a3[2];
  v83 = a2;
  if (sub_18E280314(a1, v22))
  {
    v81 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v23 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v21, v23, v14);
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    v27 = os_log_type_enabled(v25, v26);
    v80 = v13;
    if (v27)
    {
      LODWORD(v78) = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v28 = 136315650;
      v79 = v14;
      swift_beginAccess();
      v30 = v11;
      v32 = qword_1EABE9328;
      v31 = off_1EABE9330;

      v33 = sub_18E1C9624(v32, v31, aBlock);

      *(v28 + 4) = v33;
      v11 = v30;
      *(v28 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v36 = a3[2];

      *(v28 + 24) = v36;

      _os_log_impl(&dword_18E1C1000, v25, v78, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E1CC340(v29, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v29, -1, -1);
      v37 = v77;
      sub_18E1C9934(v77);
      MEMORY[0x193ACD400](v37, -1, -1);
      MEMORY[0x193ACD400](v28, -1, -1);

      (*(v15 + 8))(v21, v79);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    result = swift_beginAccess();
    v54 = a3[2];
    v55 = __CFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v56;
      v57 = v85;
      v58 = *(v85 + 16);
      v78 = v85 + 16;
      v79 = v58;
      v59 = v80;
      v82 = v11;
      v58(v80, v88, v11);
      v60 = *(v57 + 80);
      v61 = (v60 + 40) & ~v60;
      v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 2) = v83;
      *(v63 + 3) = a3;
      v77 = a3;
      v64 = v84;
      *(v63 + 4) = v84;
      v65 = *(v57 + 32);
      v65(&v63[v61], v59, v11);
      v66 = &v63[v62];
      v67 = v86;
      *v66 = v81;
      v66[1] = v67;
      aBlock[4] = sub_18E28919C;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F013FFA8;
      v68 = _Block_copy(aBlock);
      v69 = v77;

      v70 = v64;

      v71 = [v70 remoteObjectProxyWithErrorHandler_];
      _Block_release(v68);
      v72 = v80;
      v73 = v82;
      v79(v80, v88, v82);
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      v65((v74 + ((v60 + 24) & ~v60)), v72, v73);

      v75 = swift_unknownObjectRetain();
      v81(v75, sub_18E2891BC, v74);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v38 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v19, v38, v14);
    swift_retain_n();
    v39 = a1;
    v40 = sub_18E44E80C();
    v41 = sub_18E44EE0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = v14;
      v43 = v42;
      v44 = swift_slowAlloc();
      v82 = v11;
      v45 = v44;
      v87 = swift_slowAlloc();
      v89 = v87;
      *v43 = 136315650;
      swift_beginAccess();
      v46 = qword_1EABE9328;
      v47 = off_1EABE9330;

      v48 = sub_18E1C9624(v46, v47, &v89);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      v49 = a1;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v50;
      *v45 = v50;
      *(v43 + 22) = 2048;
      swift_beginAccess();
      v51 = a3[2];

      *(v43 + 24) = v51;

      _os_log_impl(&dword_18E1C1000, v40, v41, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v43, 0x20u);
      sub_18E1CC340(v45, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v45, -1, -1);
      v52 = v87;
      sub_18E1C9934(v87);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v43, -1, -1);

      (*(v15 + 8))(v19, v79);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v89 = a1;
    v76 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E284304(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v86 = a7;
  v88 = a5;
  v84 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1050, &qword_18E49DC80);
  v85 = *(v11 - 8);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  swift_beginAccess();
  v22 = a3[2];
  v83 = a2;
  if (sub_18E280314(a1, v22))
  {
    v81 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v23 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v21, v23, v14);
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    v27 = os_log_type_enabled(v25, v26);
    v80 = v13;
    if (v27)
    {
      LODWORD(v78) = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v28 = 136315650;
      v79 = v14;
      swift_beginAccess();
      v30 = v11;
      v32 = qword_1EABE9328;
      v31 = off_1EABE9330;

      v33 = sub_18E1C9624(v32, v31, aBlock);

      *(v28 + 4) = v33;
      v11 = v30;
      *(v28 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v36 = a3[2];

      *(v28 + 24) = v36;

      _os_log_impl(&dword_18E1C1000, v25, v78, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E1CC340(v29, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v29, -1, -1);
      v37 = v77;
      sub_18E1C9934(v77);
      MEMORY[0x193ACD400](v37, -1, -1);
      MEMORY[0x193ACD400](v28, -1, -1);

      (*(v15 + 8))(v21, v79);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    result = swift_beginAccess();
    v54 = a3[2];
    v55 = __CFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v56;
      v57 = v85;
      v58 = *(v85 + 16);
      v78 = v85 + 16;
      v79 = v58;
      v59 = v80;
      v82 = v11;
      v58(v80, v88, v11);
      v60 = *(v57 + 80);
      v61 = (v60 + 40) & ~v60;
      v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 2) = v83;
      *(v63 + 3) = a3;
      v77 = a3;
      v64 = v84;
      *(v63 + 4) = v84;
      v65 = *(v57 + 32);
      v65(&v63[v61], v59, v11);
      v66 = &v63[v62];
      v67 = v86;
      *v66 = v81;
      v66[1] = v67;
      aBlock[4] = sub_18E289198;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F013FCD8;
      v68 = _Block_copy(aBlock);
      v69 = v77;

      v70 = v64;

      v71 = [v70 remoteObjectProxyWithErrorHandler_];
      _Block_release(v68);
      v72 = v80;
      v73 = v82;
      v79(v80, v88, v82);
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      v65((v74 + ((v60 + 24) & ~v60)), v72, v73);

      v75 = swift_unknownObjectRetain();
      v81(v75, sub_18E2891B8, v74);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v38 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v19, v38, v14);
    swift_retain_n();
    v39 = a1;
    v40 = sub_18E44E80C();
    v41 = sub_18E44EE0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = v14;
      v43 = v42;
      v44 = swift_slowAlloc();
      v82 = v11;
      v45 = v44;
      v87 = swift_slowAlloc();
      v89 = v87;
      *v43 = 136315650;
      swift_beginAccess();
      v46 = qword_1EABE9328;
      v47 = off_1EABE9330;

      v48 = sub_18E1C9624(v46, v47, &v89);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      v49 = a1;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v50;
      *v45 = v50;
      *(v43 + 22) = 2048;
      swift_beginAccess();
      v51 = a3[2];

      *(v43 + 24) = v51;

      _os_log_impl(&dword_18E1C1000, v40, v41, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v43, 0x20u);
      sub_18E1CC340(v45, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v45, -1, -1);
      v52 = v87;
      sub_18E1C9934(v87);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v43, -1, -1);

      (*(v15 + 8))(v19, v79);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v89 = a1;
    v76 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E284C5C(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v86 = a7;
  v88 = a5;
  v84 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
  v85 = *(v11 - 8);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  swift_beginAccess();
  v22 = a3[2];
  v83 = a2;
  if (sub_18E280314(a1, v22))
  {
    v81 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v23 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v21, v23, v14);
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    v27 = os_log_type_enabled(v25, v26);
    v80 = v13;
    if (v27)
    {
      LODWORD(v78) = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v28 = 136315650;
      v79 = v14;
      swift_beginAccess();
      v30 = v11;
      v32 = qword_1EABE9328;
      v31 = off_1EABE9330;

      v33 = sub_18E1C9624(v32, v31, aBlock);

      *(v28 + 4) = v33;
      v11 = v30;
      *(v28 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v36 = a3[2];

      *(v28 + 24) = v36;

      _os_log_impl(&dword_18E1C1000, v25, v78, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E1CC340(v29, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v29, -1, -1);
      v37 = v77;
      sub_18E1C9934(v77);
      MEMORY[0x193ACD400](v37, -1, -1);
      MEMORY[0x193ACD400](v28, -1, -1);

      (*(v15 + 8))(v21, v79);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    result = swift_beginAccess();
    v54 = a3[2];
    v55 = __CFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v56;
      v57 = v85;
      v58 = *(v85 + 16);
      v78 = v85 + 16;
      v79 = v58;
      v59 = v80;
      v82 = v11;
      v58(v80, v88, v11);
      v60 = *(v57 + 80);
      v61 = (v60 + 40) & ~v60;
      v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 2) = v83;
      *(v63 + 3) = a3;
      v77 = a3;
      v64 = v84;
      *(v63 + 4) = v84;
      v65 = *(v57 + 32);
      v65(&v63[v61], v59, v11);
      v66 = &v63[v62];
      v67 = v86;
      *v66 = v81;
      v66[1] = v67;
      aBlock[4] = sub_18E289194;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F013FA80;
      v68 = _Block_copy(aBlock);
      v69 = v77;

      v70 = v64;

      v71 = [v70 remoteObjectProxyWithErrorHandler_];
      _Block_release(v68);
      v72 = v80;
      v73 = v82;
      v79(v80, v88, v82);
      v74 = swift_allocObject();
      *(v74 + 16) = v69;
      v65((v74 + ((v60 + 24) & ~v60)), v72, v73);

      v75 = swift_unknownObjectRetain();
      v81(v75, sub_18E2891B4, v74);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v38 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v19, v38, v14);
    swift_retain_n();
    v39 = a1;
    v40 = sub_18E44E80C();
    v41 = sub_18E44EE0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = v14;
      v43 = v42;
      v44 = swift_slowAlloc();
      v82 = v11;
      v45 = v44;
      v87 = swift_slowAlloc();
      v89 = v87;
      *v43 = 136315650;
      swift_beginAccess();
      v46 = qword_1EABE9328;
      v47 = off_1EABE9330;

      v48 = sub_18E1C9624(v46, v47, &v89);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      v49 = a1;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v50;
      *v45 = v50;
      *(v43 + 22) = 2048;
      swift_beginAccess();
      v51 = a3[2];

      *(v43 + 24) = v51;

      _os_log_impl(&dword_18E1C1000, v40, v41, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v43, 0x20u);
      sub_18E1CC340(v45, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v45, -1, -1);
      v52 = v87;
      sub_18E1C9934(v87);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v43, -1, -1);

      (*(v15 + 8))(v19, v79);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v89 = a1;
    v76 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E2855B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_18E207FCC(a1, a2, a3, a4, a5, a6);
  v14 = sub_18E1C4EAC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C86C0();
  sub_18E1DD308();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1D7DC0();
  if (v10)
  {
    v22 = v10;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v22 = swift_once();
    }

    sub_18E1D6004(v22, qword_1ED6A9028);
    sub_18E2244D0();
    sub_18E1D44B4();
    v23();

    v24 = v10;

    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    if (os_log_type_enabled(v25, v26))
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      v27 = sub_18E2239F0();
      sub_18E1CA69C();
      v72 = swift_slowAlloc();
      *v16 = 136315650;
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v28 = sub_18E1CF9A0();
      sub_18E1C9624(v28, v29, v30);
      sub_18E1D4D08();

      sub_18E1E3770();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v31;
      *v27 = v31;
      *(v16 + 22) = 2048;
      sub_18E1D4CFC();
      swift_beginAccess();
      v32 = *(v6 + 16);

      *(v16 + 24) = v32;

      sub_18E1E16C0(&dword_18E1C1000, v33, v34, "%s async: method error during call: %@, num connection attempts: %lu");
      sub_18E1CC340(v27, &unk_1EABE9120, &qword_18E4E3A90);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C9934(v72);
      v35 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v35);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E200E40();
      v36(v7);
    }

    else
    {

      (*(v16 + 8))(v7, v13);
    }

LABEL_12:
    sub_18E223308();
    sub_18E1CE998();
    return sub_18E44ED0C();
  }

  if (!v11)
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v21 = swift_once();
    }

    sub_18E1D6004(v21, qword_1ED6A9028);
    v52 = v16;
    sub_18E2244D0();
    sub_18E1D44B4();
    v53();
    v54 = v6;

    v55 = sub_18E44E80C();
    sub_18E44EE0C();
    v56 = sub_18E223CA0();
    if (os_log_type_enabled(v56, v57))
    {
      sub_18E1C9700();
      v58 = swift_slowAlloc();
      sub_18E1CA69C();
      v59 = swift_slowAlloc();
      sub_18E1CFC60(v59);
      sub_18E221814(4.8151e-34);
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v60 = sub_18E1CF9A0();
      sub_18E1C9624(v60, v61, v62);
      sub_18E1D4D08();

      *(v58 + 4) = v8;
      sub_18E1D4268();
      sub_18E1D4CFC();
      swift_beginAccess();
      *(v58 + 14) = *(v54 + 16);

      sub_18E1C94FC(&dword_18E1C1000, v63, v64, "%s async: throwing neither result or error returned, num connection attempts: %lu");
      sub_18E1C9934(0);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v65 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v65);

      (*(v52 + 8))(v9, v13);
    }

    else
    {

      v67 = *(v52 + 8);
      v68 = sub_18E1E11B4();
      v70(v68, v69);
    }

    sub_18E2885F0();
    sub_18E1D0098();
    swift_allocError();
    *v71 = 2;
    goto LABEL_12;
  }

  v37 = v6;
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6A1C();
    v21 = swift_once();
  }

  sub_18E1D6004(v21, qword_1ED6A9028);
  sub_18E2244D0();
  sub_18E1D44B4();
  v38();

  v39 = sub_18E44E80C();
  sub_18E44EDFC();
  v40 = sub_18E223CA0();
  if (os_log_type_enabled(v40, v41))
  {
    sub_18E1C9700();
    v42 = swift_slowAlloc();
    sub_18E1CA69C();
    v43 = swift_slowAlloc();
    sub_18E1CFC60(v43);
    sub_18E221814(4.8151e-34);
    sub_18E1C8F88();
    sub_18E1D5E2C();
    v44 = sub_18E1CF9A0();
    sub_18E1C9624(v44, v45, v46);
    sub_18E1D4D08();

    *(v42 + 4) = v8;
    sub_18E1D4268();
    sub_18E1D4CFC();
    swift_beginAccess();
    *(v42 + 14) = *(v37 + 16);

    sub_18E1C94FC(&dword_18E1C1000, v47, v48, "%s async: method returned non-nil result, num connection attempts: %lu");
    sub_18E1C9934(0);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v49 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v49);

    sub_18E200E40();
    v50(v12);
  }

  else
  {

    (*(v16 + 8))(v12, v13);
  }

  v66 = v11;
  sub_18E223308();
  sub_18E1CE998();
  return sub_18E44ED1C();
}

uint64_t sub_18E285B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_18E207FCC(a1, a2, a3, a4, a5, a6);
  v14 = sub_18E1C4EAC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C86C0();
  sub_18E1DD308();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1D7DC0();
  if (v10)
  {
    v22 = v10;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v22 = swift_once();
    }

    sub_18E1D6004(v22, qword_1ED6A9028);
    sub_18E2244D0();
    sub_18E1D44B4();
    v23();

    v24 = v10;

    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    if (os_log_type_enabled(v25, v26))
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      v27 = sub_18E2239F0();
      sub_18E1CA69C();
      v71 = swift_slowAlloc();
      *v16 = 136315650;
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v28 = sub_18E1CF9A0();
      sub_18E1C9624(v28, v29, v30);
      sub_18E1D4D08();

      sub_18E1E3770();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v31;
      *v27 = v31;
      *(v16 + 22) = 2048;
      sub_18E1D4CFC();
      swift_beginAccess();
      v32 = *(v6 + 16);

      *(v16 + 24) = v32;

      sub_18E1E16C0(&dword_18E1C1000, v33, v34, "%s async: method error during call: %@, num connection attempts: %lu");
      sub_18E1CC340(v27, &unk_1EABE9120, &qword_18E4E3A90);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C9934(v71);
      v35 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v35);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E200E40();
      v36(v7);
    }

    else
    {

      (*(v16 + 8))(v7, v13);
    }

LABEL_12:
    sub_18E223308();
    sub_18E1CE998();
    return sub_18E44ED0C();
  }

  if (!v11)
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v21 = swift_once();
    }

    sub_18E1D6004(v21, qword_1ED6A9028);
    v52 = v16;
    sub_18E2244D0();
    sub_18E1D44B4();
    v53();
    v54 = v6;

    v55 = sub_18E44E80C();
    sub_18E44EE0C();
    v56 = sub_18E223CA0();
    if (os_log_type_enabled(v56, v57))
    {
      sub_18E1C9700();
      v58 = swift_slowAlloc();
      sub_18E1CA69C();
      v59 = swift_slowAlloc();
      sub_18E1CFC60(v59);
      sub_18E221814(4.8151e-34);
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v60 = sub_18E1CF9A0();
      sub_18E1C9624(v60, v61, v62);
      sub_18E1D4D08();

      *(v58 + 4) = v8;
      sub_18E1D4268();
      sub_18E1D4CFC();
      swift_beginAccess();
      *(v58 + 14) = *(v54 + 16);

      sub_18E1C94FC(&dword_18E1C1000, v63, v64, "%s async: throwing neither result or error returned, num connection attempts: %lu");
      sub_18E1C9934(0);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v65 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v65);

      (*(v52 + 8))(v9, v13);
    }

    else
    {

      v66 = *(v52 + 8);
      v67 = sub_18E1E11B4();
      v69(v67, v68);
    }

    sub_18E2885F0();
    sub_18E1D0098();
    swift_allocError();
    *v70 = 2;
    goto LABEL_12;
  }

  v37 = v6;
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6A1C();
    v21 = swift_once();
  }

  sub_18E1D6004(v21, qword_1ED6A9028);
  sub_18E2244D0();
  sub_18E1D44B4();
  v38();

  v39 = sub_18E44E80C();
  sub_18E44EDFC();
  v40 = sub_18E223CA0();
  if (os_log_type_enabled(v40, v41))
  {
    sub_18E1C9700();
    v42 = swift_slowAlloc();
    sub_18E1CA69C();
    v43 = swift_slowAlloc();
    sub_18E1CFC60(v43);
    sub_18E221814(4.8151e-34);
    sub_18E1C8F88();
    sub_18E1D5E2C();
    v44 = sub_18E1CF9A0();
    sub_18E1C9624(v44, v45, v46);
    sub_18E1D4D08();

    *(v42 + 4) = v8;
    sub_18E1D4268();
    sub_18E1D4CFC();
    swift_beginAccess();
    *(v42 + 14) = *(v37 + 16);

    sub_18E1C94FC(&dword_18E1C1000, v47, v48, "%s async: method returned non-nil result, num connection attempts: %lu");
    sub_18E1C9934(0);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v49 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v49);

    sub_18E200E40();
    v50(v12);
  }

  else
  {

    (*(v16 + 8))(v12, v13);
  }

  sub_18E223308();
  sub_18E1CE998();
  return sub_18E44ED1C();
}

uint64_t sub_18E286150(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18E44E83C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  if (a3)
  {
    v21 = a3;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v10, qword_1ED6A9028);
    swift_beginAccess();
    (*(v11 + 16))(v20, v22, v10);

    v23 = a3;

    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = a5;
      v28 = v27;
      v29 = swift_slowAlloc();
      v61[0] = v29;
      *v26 = 136315650;
      v58 = v11;
      swift_beginAccess();
      v60 = v10;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, v61);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2112;
      v33 = a3;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v34;
      *v28 = v34;
      *(v26 + 22) = 2048;
      swift_beginAccess();
      v35 = *(a4 + 16);

      *(v26 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v25, "%s async: method error during call: %@, num connection attempts: %lu", v26, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      sub_18E1C9934(v29);
      MEMORY[0x193ACD400](v29, -1, -1);
      MEMORY[0x193ACD400](v26, -1, -1);

      (*(v58 + 8))(v20, v60);
    }

    else
    {

      (*(v11 + 8))(v20, v10);
    }

    v61[0] = a3;
LABEL_19:
    sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
    return sub_18E44ED0C();
  }

  if (a2 >> 60 == 15)
  {
    v36 = v11;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v10, qword_1ED6A9028);
    swift_beginAccess();
    (*(v36 + 16))(v15, v37, v10);

    v38 = sub_18E44E80C();
    v39 = sub_18E44EE0C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61[0] = v41;
      *v40 = 136315394;
      swift_beginAccess();
      v60 = v10;
      v43 = qword_1EABE9328;
      v42 = off_1EABE9330;

      v44 = sub_18E1C9624(v43, v42, v61);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2048;
      swift_beginAccess();
      *(v40 + 14) = *(a4 + 16);

      _os_log_impl(&dword_18E1C1000, v38, v39, "%s async: throwing neither result or error returned, num connection attempts: %lu", v40, 0x16u);
      sub_18E1C9934(v41);
      MEMORY[0x193ACD400](v41, -1, -1);
      MEMORY[0x193ACD400](v40, -1, -1);

      (*(v36 + 8))(v15, v60);
    }

    else
    {

      (*(v36 + 8))(v15, v10);
    }

    sub_18E2885F0();
    v55 = swift_allocError();
    *v56 = 2;
    v61[0] = v55;
    goto LABEL_19;
  }

  v45 = v11;
  if (qword_1ED6A9020 != -1)
  {
    swift_once();
  }

  v46 = sub_18E1C95EC(v10, qword_1ED6A9028);
  swift_beginAccess();
  (*(v45 + 16))(v18, v46, v10);

  v47 = sub_18E44E80C();
  v48 = sub_18E44EDFC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = a5;
    v51 = v50;
    v61[0] = v50;
    *v49 = 136315394;
    LODWORD(v58) = v48;
    swift_beginAccess();
    v60 = v10;
    v53 = qword_1EABE9328;
    v52 = off_1EABE9330;

    v54 = sub_18E1C9624(v53, v52, v61);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2048;
    swift_beginAccess();
    *(v49 + 14) = *(a4 + 16);

    _os_log_impl(&dword_18E1C1000, v47, v58, "%s async: method returned non-nil result, num connection attempts: %lu", v49, 0x16u);
    sub_18E1C9934(v51);
    MEMORY[0x193ACD400](v51, -1, -1);
    MEMORY[0x193ACD400](v49, -1, -1);

    (*(v45 + 8))(v18, v60);
  }

  else
  {

    (*(v45 + 8))(v18, v10);
  }

  v61[0] = a1;
  v61[1] = a2;
  sub_18E2523A0(a1, a2);
  sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
  return sub_18E44ED1C();
}

uint64_t sub_18E286914(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_18E44EF8C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_18E2869C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_18E2706EC(&qword_1EABE10C0, &qword_18E49DD50);
  v39 = a2;
  result = sub_18E44F16C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_18E3F1C90(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_18E44F48C();
    sub_18E44EB4C();
    result = sub_18E44F4CC();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_18E286C7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_18E286CC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  sub_18E286FC8(a1, a2, a3, v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v45 = v50[5];
  v46 = v50[0];
  v9 = (v50[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v49[0] = v14;
      v49[1] = v15;
      v49[2] = v17;
      v49[3] = v18;

      v45(v48, v49);

      v19 = v48[0];
      v20 = v48[1];
      v21 = v48[2];
      v22 = v48[3];
      v23 = *v51;
      v25 = sub_18E1CBD4C();
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
          sub_18E44F0FC();
        }
      }

      else
      {
        v30 = v51;
        sub_18E2869C8(v28, v47 & 1);
        v31 = *v30;
        v32 = sub_18E1CBD4C();
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v51;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_18E246F7C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t sub_18E286F84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E286C7C(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_18E286FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_18E2870F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_18E1E1774(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_18E1C551C(&v12, v10 + 40 * a1 + 32);
}

uint64_t *sub_18E287190(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x193ACD400);
  }

  return result;
}

unint64_t sub_18E2871E8()
{
  result = qword_1EABE0510;
  if (!qword_1EABE0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0510);
  }

  return result;
}

uint64_t sub_18E287284()
{
  sub_18E228770();
  v2 = v1(0);
  sub_18E1C4EEC(v2);
  v4 = *(v3 + 16);
  v5 = sub_18E1C5BFC();
  v6(v5);
  return v0;
}

uint64_t sub_18E2872DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a4(0);
  sub_18E1C5B08(v9);
  v11 = v5 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a5(a1, a2, a3, v11);
}

uint64_t dispatch thunk of CatalogClient.generativeExperiencesEssentialResourcesReady()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v6 = (*(v0 + 400) + **(v0 + 400));
  v1 = *(*(v0 + 400) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  sub_18E1C5950(v3);

  return v6();
}

uint64_t sub_18E287814()
{
  sub_18E1C52F0();
  v2 = v1;
  sub_18E1C64F4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_18E1C52E0();
  *v6 = v5;

  sub_18E1C6500();

  return v7(v2);
}

uint64_t dispatch thunk of CatalogClient.enoughStorageForGenerativeExperiencesEssentialResources()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v6 = (*(v0 + 416) + **(v0 + 416));
  v1 = *(*(v0 + 416) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  sub_18E1C5950(v3);

  return v6();
}

uint64_t dispatch thunk of CatalogClient.useCaseResourceAvailability(by:)()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v8 = *(v0 + 424) + **(v0 + 424);
  v1 = *(*(v0 + 424) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  v5 = sub_18E1CFB58(v3);

  return v6(v5);
}

uint64_t dispatch thunk of CatalogClient.acquireCoherenceToken(identifiers:)()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v8 = *(v0 + 440) + **(v0 + 440);
  v1 = *(*(v0 + 440) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  v5 = sub_18E1CFB58(v3);

  return v6(v5);
}

{
  sub_18E1C6A30();
  return (*(v0 + 448))();
}

uint64_t dispatch thunk of CatalogClient.supportedLanguagesAndRegions(resourceBundleQuery:)()
{
  sub_18E1CAF5C();
  sub_18E1CD8B8();
  sub_18E1C6A30();
  v8 = *(v0 + 472) + **(v0 + 472);
  v1 = *(*(v0 + 472) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C2960(v2);
  *v3 = v4;
  v5 = sub_18E1E83FC(v3);

  return v6(v5);
}

uint64_t dispatch thunk of CatalogClient.availableUseCases()()
{
  sub_18E1C6170();
  v1 = v0;
  sub_18E1C6A30();
  v8 = (*(v2 + 496) + **(v2 + 496));
  v3 = *(*(v2 + 496) + 4);
  v4 = swift_task_alloc();
  v5 = sub_18E1C2960(v4);
  *v5 = v6;
  v5[1] = sub_18E25E61C;

  return v8(v1);
}

uint64_t dispatch thunk of CatalogClient.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)()
{
  sub_18E1CF270();
  v14 = v0;
  sub_18E1CAF5C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_18E1C6A30();
  v13 = (*(v7 + 504) + **(v7 + 504));
  v8 = *(*(v7 + 504) + 4);
  v9 = swift_task_alloc();
  v10 = sub_18E1C2960(v9);
  *v10 = v11;
  v10[1] = sub_18E25E61C;

  return v13(v6, v4, v2);
}

uint64_t dispatch thunk of CatalogClient.debugInformation(options:)()
{
  sub_18E1CAF5C();
  sub_18E1CD8B8();
  sub_18E1C6A30();
  v8 = *(v0 + 512) + **(v0 + 512);
  v1 = *(*(v0 + 512) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C2960(v2);
  *v3 = v4;
  v5 = sub_18E1E83FC(v3);

  return v6(v5);
}

uint64_t dispatch thunk of CatalogClient.donateSafetyFailure(useCaseIdentifier:userIdentifier:)()
{
  sub_18E1CAF5C();
  v1 = v0;
  v3 = v2;
  sub_18E1C6A30();
  v10 = (*(v4 + 544) + **(v4 + 544));
  v5 = *(*(v4 + 544) + 4);
  v6 = swift_task_alloc();
  v7 = sub_18E1C5EA8(v6);
  *v7 = v8;
  sub_18E1C5950(v7);

  return v10(v3, v1);
}

uint64_t dispatch thunk of CatalogClient.donateSafetyFailure(safetyFailure:)()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v8 = *(v0 + 552) + **(v0 + 552);
  v1 = *(*(v0 + 552) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  v5 = sub_18E1CFB58(v3);

  return v6(v5);
}

uint64_t dispatch thunk of CatalogClient.safetyFailures(userIdentifier:)()
{
  sub_18E1C6170();
  v1 = v0;
  sub_18E1C6A30();
  v8 = (*(v2 + 568) + **(v2 + 568));
  v3 = *(*(v2 + 568) + 4);
  v4 = swift_task_alloc();
  v5 = sub_18E1C5EA8(v4);
  *v5 = v6;
  sub_18E1C5950(v5);

  return v8(v1);
}

uint64_t sub_18E2884F8()
{
  sub_18E1C6170();
  sub_18E1CD8B8();
  sub_18E1C64F4();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_18E1C52E0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v1, v0);
}

unint64_t sub_18E2885F0()
{
  result = qword_1EABE1038;
  if (!qword_1EABE1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1038);
  }

  return result;
}

uint64_t sub_18E2886D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18E1FDFE0(a1, a2);
  }

  return a1;
}

uint64_t sub_18E2886E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_18E1C4EEC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_18E288764()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_18E28878C()
{
  v1 = sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  sub_18E1C5B08(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  v9 = sub_18E1C2960(v8);
  *v9 = v10;
  v9[1] = sub_18E25E61C;
  v11 = sub_18E211FD0();

  return sub_18E27D9D0(v11, v12, v13, v14, v7, v15);
}

uint64_t sub_18E2888A8()
{
  sub_18E1CAF5C();
  v1 = sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  sub_18E1C5B08(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_18E1C2960(v7);
  *v8 = v9;
  v8[1] = sub_18E25E674;
  v10 = sub_18E211FD0();

  return sub_18E27CED4(v10, v11, v12, v13, v14);
}

uint64_t sub_18E28898C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_18E2706EC(a1, a2);
  sub_18E1C4EEC(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_18E288A30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_18E1D5BCC(a1, a2, a3);
  sub_18E1C5B08(v6);
  v8 = v5 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(v4, v8);
}

uint64_t sub_18E288AA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_18E288AE0()
{
  sub_18E228770();
  v5 = sub_18E1E1A4C(v1, v2, v3, v4);
  sub_18E1C4EEC(v5);
  v7 = *(v6 + 16);
  v8 = sub_18E1C5BFC();
  v9(v8);
  return v0;
}

uint64_t sub_18E288B30()
{
  sub_18E228770();
  v5 = sub_18E1E1A4C(v1, v2, v3, v4);
  sub_18E1C4EEC(v5);
  v7 = *(v6 + 32);
  v8 = sub_18E1C5BFC();
  v9(v8);
  return v0;
}

uint64_t sub_18E288BE8()
{
  sub_18E228770();
  v2 = v1(0);
  sub_18E1C4EEC(v2);
  v4 = *(v3 + 32);
  v5 = sub_18E1C5BFC();
  v6(v5);
  return v0;
}

uint64_t sub_18E288D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E288DFC(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_18E2706EC(a1, a2);
  sub_18E1C4EAC(v3);
  v5 = *(v4 + 80);
  v7 = (*(v6 + 64) + ((v5 + 40) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);

  v9 = *(v2 + 24);

  v10 = sub_18E1CA27C();
  v11(v10);
  v12 = *(v2 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

uint64_t sub_18E288ED0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v6 = sub_18E1D5BCC(a1, a2, a3);
  sub_18E1CF260(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = *(v5 + 2);
  v13 = *(v5 + 3);
  v14 = *(v5 + 4);
  v15 = &v5[(*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8];
  v16 = *v15;
  v17 = *(v15 + 1);

  return a4(v4, v12, v13, v14, &v5[v11], v16, v17);
}

uint64_t sub_18E288F7C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_18E2706EC(a1, a2);
  sub_18E1C4EAC(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v2 + 16);

  v9 = sub_18E1CA27C();
  v10(v9);
  v11 = sub_18E1DD52C();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_18E289020()
{
  sub_18E1CD8B8();
  v4 = sub_18E1E1A4C(v0, v1, v2, v3);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 80);
  v7 = sub_18E1CF658();

  return v8(v7);
}

uint64_t static AcquireCoherenceTokenResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE10D0 = a1;
  return result;
}

uint64_t sub_18E289294@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE10D0;
  return result;
}

uint64_t sub_18E2892E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE10D0 = v1;
  return result;
}

uint64_t sub_18E289374(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_18E44EF8C())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CC8];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_18E2706EC(&qword_1EABE10C0, &qword_18E49DD50);
  v3 = sub_18E44F17C();
  if (v2)
  {
LABEL_4:
    v4 = sub_18E44F11C();
    v19 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v4 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v8 = -1 << *(a1 + 32);
  v5 = ~v8;
  v19 = a1 + 64;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v6 = v10 & *(a1 + 64);
  v7 = a1;
LABEL_11:
  v11 = (v5 + 64) >> 6;

  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_18E44F13C())
    {
      goto LABEL_22;
    }

    sub_18E1D121C(0, &unk_1ED6A87A0, 0x1E696AEC0);
    swift_dynamicCast();
    swift_dynamicCast();
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = v6;
    v14 = 0;
    if (!v6)
    {
      v15 = 0;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_22;
        }

        v13 = *(v19 + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_24;
    }

LABEL_17:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v7 + 56) + v16);
    v18 = *(*(v7 + 48) + v16);
    v17;
    if (!v18)
    {
LABEL_22:
      sub_18E246F7C();

      return v3;
    }
  }

  result = sub_18E44EA9C();
LABEL_24:
  __break(1u);
  __break(1u);
  return result;
}

id AcquireCoherenceTokenResponse.__allocating_init(tokens:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AcquireCoherenceTokenResponse.init(tokens:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AcquireCoherenceTokenResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AcquireCoherenceTokenResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static TestCatalog.Resource.LLM.Model.TestAsset1()()
{
  sub_18E1C52FC();
  static TestCatalog.Resource.LLM.Model.TestAsset1(variant:)();
  if (v0)
  {
    sub_18E1C5EB4();
    sub_18E1C8A14();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1C62EC();
    __break(1u);
  }
}

void static TestCatalog.Resource.LLM.Model.TestAsset1(variant:)()
{
  sub_18E1C6878();
  sub_18E1C595C();
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(swift_allocObject() + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  v1 = qword_1ED6A8958;

  if (v1 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E1C7EA4(&qword_1ED6A8960);
  sub_18E1C5588();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = swift_allocObject();
  sub_18E1C6A44(v2, xmmword_18E49D9C0);
  sub_18E1C8194();
  sub_18E1C4F68();
  v0[3] = &type metadata for AssetBackedLLMModelBase;
  v0[4] = sub_18E1E3358();
  sub_18E1C86E0();
  v3 = swift_allocObject();
  sub_18E1D603C(v3);

  sub_18E1C6694();
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1CA12C();
}

void static TestCatalog.Resource.LLM.Model.TestAsset2()()
{
  sub_18E1C52FC();
  static TestCatalog.Resource.LLM.Model.TestAsset2(variant:)();
  if (v0)
  {
    sub_18E1C5EB4();
    sub_18E1C8A14();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1C62EC();
    __break(1u);
  }
}

void static TestCatalog.Resource.LLM.Model.TestAsset2(variant:)()
{
  sub_18E1C6878();
  sub_18E1C595C();
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(swift_allocObject() + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  v1 = qword_1ED6A8958;

  if (v1 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E1C7EA4(&qword_1ED6A8960);
  sub_18E1C5588();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = swift_allocObject();
  sub_18E1C6A44(v2, xmmword_18E49D9C0);
  sub_18E1C8194();
  sub_18E1C4F68();
  v0[3] = &type metadata for AssetBackedLLMModelBase;
  v0[4] = sub_18E1E3358();
  sub_18E1C86E0();
  v3 = swift_allocObject();
  sub_18E1D603C(v3);

  sub_18E1C6694();
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1CA12C();
}

void static TestCatalog.Resource.LLM.Model.TestAsset3()()
{
  sub_18E1C52FC();
  static TestCatalog.Resource.LLM.Model.TestAsset3(variant:)();
  if (v0)
  {
    sub_18E1C5EB4();
    sub_18E1C8A14();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1C62EC();
    __break(1u);
  }
}

void static TestCatalog.Resource.LLM.Model.TestAsset3(variant:)()
{
  sub_18E1C6878();
  sub_18E1C595C();
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(swift_allocObject() + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  v1 = qword_1ED6A8958;

  if (v1 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E1C7EA4(&qword_1ED6A8960);
  sub_18E1C5588();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = swift_allocObject();
  sub_18E1C6A44(v2, xmmword_18E49D9C0);
  sub_18E1C8194();
  sub_18E1C4F68();
  v0[3] = &type metadata for AssetBackedLLMModelBase;
  v0[4] = sub_18E1E3358();
  sub_18E1C86E0();
  v3 = swift_allocObject();
  sub_18E1D603C(v3);

  sub_18E1C6694();
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1CA12C();
}

uint64_t static TestCatalog.Resource.fetchAllResources()()
{
  sub_18E2706EC(&qword_1EABE0E98, &unk_18E4E2640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49D9C0;
  static TestCatalog.Resource.LLM.Model.TestAsset1(variant:)();
  v1 = v21;
  v2 = v22;
  v3 = sub_18E1E15F4(v20, v21);
  *(v0 + 56) = v1;
  *(v0 + 64) = *(*(v2 + 8) + 8);
  v4 = sub_18E1E1774((v0 + 32));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  static TestCatalog.Resource.LLM.Model.TestAsset2(variant:)();
  v5 = v18;
  v6 = v19;
  v7 = sub_18E1E15F4(v17, v18);
  *(v0 + 96) = v5;
  *(v0 + 104) = *(*(v6 + 8) + 8);
  v8 = sub_18E1E1774((v0 + 72));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  static TestCatalog.Resource.LLM.Model.TestAsset3(variant:)();
  v9 = v15;
  v10 = v16;
  v11 = sub_18E1E15F4(v14, v15);
  *(v0 + 136) = v9;
  *(v0 + 144) = *(*(v10 + 8) + 8);
  v12 = sub_18E1E1774((v0 + 112));
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  sub_18E1C9934(v14);
  sub_18E1C9934(v17);
  sub_18E1C9934(v20);
  return v0;
}

uint64_t sub_18E28A110()
{
  result = sub_18E207C7C(&unk_1F0139578);
  qword_1EABE10F0 = result;
  return result;
}

uint64_t sub_18E28A15C()
{
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  result = sub_18E44E9AC();
  qword_1EABE10F8 = result;
  return result;
}

uint64_t sub_18E28A1D0()
{
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  result = sub_18E44E9AC();
  qword_1EABE1100 = result;
  return result;
}

uint64_t sub_18E28A244()
{
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  result = sub_18E44E9AC();
  qword_1EABE1108 = result;
  return result;
}

uint64_t sub_18E28A2B8()
{
  result = sub_18E28A2D8();
  qword_1EABE1110 = result;
  return result;
}

uint64_t sub_18E28A2D8()
{
  sub_18E2706EC(&qword_1EABE1120, &qword_18E49DD70);
  v0 = sub_18E44E9AC();
  sub_18E2706EC(&qword_1EABE1128, &qword_18E49DD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  *(inited + 32) = 0x636972656E6567;
  *(inited + 40) = 0xE700000000000000;
  sub_18E2706EC(&qword_1EABE1130, &qword_18E49DD80);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_18E49D9B0;
  *(v2 + 32) = 0x65676175676E616CLL;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = sub_18E26C2F8;
  *(v2 + 72) = 0;
  *(v2 + 80) = &unk_1F0139780;
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E28A708();
  *(inited + 48) = sub_18E44E9AC();
  sub_18E2706EC(&qword_1EABE1138, &qword_18E49DD88);
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FB04();
  v3 = v0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_18E49D9B0;
  *(v4 + 32) = 0x636972656E6567;
  *(v4 + 40) = 0xE700000000000000;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_18E49D9B0;
  *(v5 + 32) = 0x65676175676E616CLL;
  *(v5 + 40) = 0xE800000000000000;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = sub_18E26C2F8;
  *(v5 + 72) = 0;
  *(v5 + 80) = &unk_1F0139830;
  *(v4 + 48) = sub_18E44E9AC();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FB04();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_18E49D9B0;
  *(v6 + 32) = 0x636972656E6567;
  *(v6 + 40) = 0xE700000000000000;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_18E49D9B0;
  *(v7 + 32) = 0x65676175676E616CLL;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = sub_18E26C2F8;
  *(v7 + 72) = 0;
  *(v7 + 80) = &unk_1F01398E0;
  *(v6 + 48) = sub_18E44E9AC();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FB04();
  return v3;
}

uint64_t sub_18E28A6A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = *(*(type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria() - 8) + 80);
  return a1;
}

unint64_t sub_18E28A708()
{
  result = qword_1ED6A8100;
  if (!qword_1ED6A8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8100);
  }

  return result;
}

uint64_t sub_18E28A75C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v45 = MEMORY[0x1E69E7CC0];
  sub_18E26F318(0, v4, 0);
  v8 = v45;
  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;
    v12 = *a3;
    v13 = *(*a3 + 16);

    if (v13)
    {
      v14 = sub_18E1CBD4C();
      if (v15)
      {
        v43 = *(*(v12 + 56) + 8 * v14);
        goto LABEL_21;
      }

      v40 = v8;
      v41 = v4;
      v16 = *a3;
    }

    else
    {
      v40 = v8;
      v41 = v4;
    }

    v17 = a4;
    v43 = *(*a4 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = a3;
    v19 = *a3;
    v44 = *a3;
    v42 = v11;
    v20 = sub_18E1CBD4C();
    if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
    {
      break;
    }

    v22 = v20;
    v23 = v21;
    sub_18E2706EC(&qword_1EABE11F0, &qword_18E49E148);
    if (sub_18E44F0EC())
    {
      v24 = sub_18E1CBD4C();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_29;
      }

      v22 = v24;
    }

    if (v23)
    {
      *(v44[7] + 8 * v22) = v43;
    }

    else
    {
      v44[(v22 >> 6) + 8] |= 1 << v22;
      v26 = (v44[6] + 16 * v22);
      *v26 = v11;
      v26[1] = v10;
      *(v44[7] + 8 * v22) = v43;
      v27 = v44[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_28;
      }

      v44[2] = v29;
    }

    a3 = v18;
    *v18 = v44;
    a4 = v17;
    v30 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = *(v30 + 16);
      sub_18E264698();
      v30 = v37;
      *v17 = v37;
    }

    v8 = v40;
    v4 = v41;
    v32 = *(v30 + 16);
    if (v32 >= *(v30 + 24) >> 1)
    {
      sub_18E264698();
      v30 = v38;
    }

    *(v30 + 16) = v32 + 1;
    v33 = v30 + 16 * v32;
    *(v33 + 32) = v42;
    *(v33 + 40) = v10;
    *a4 = v30;
LABEL_21:

    v35 = *(v8 + 16);
    v34 = *(v8 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_18E26F318((v34 > 1), v35 + 1, 1);
    }

    *(v8 + 16) = v35 + 1;
    *(v8 + 8 * v35 + 32) = v43;
    if (!--v4)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

_BYTE *RawAvailableUseCases.RawAvailableUseCase.init(useCaseIdentifier:arguments:presentAssets:missingAssets:assetsReady:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static RawAvailableUseCases.RawAvailableUseCase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v18 = *(a1 + 32);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *a2;
  v10 = sub_18E1C6DAC(*a1);
  v12 = v11;
  if (v10 == sub_18E1C6DAC(v9) && v12 == v13)
  {
  }

  else
  {
    v15 = sub_18E44F3CC();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  sub_18E26D86C(v3, v6);
  if (v16)
  {
    if (v2)
    {
      if (!v5 || (sub_18E290008(v2, v5) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }

    if (v4)
    {
      if (!v7 || (sub_18E290008(v4, v7) & 1) == 0)
      {
        return 0;
      }

      return v18 ^ v8 ^ 1u;
    }

    if (!v7)
    {
      return v18 ^ v8 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_18E28ABB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000018E464040 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x41746E6573657270 && a2 == 0xED00007374657373;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x41676E697373696DLL && a2 == 0xED00007374657373;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6552737465737361 && a2 == 0xEB00000000796461)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E44F3CC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18E28AD84(char a1)
{
  result = 0x746E656D75677261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x41746E6573657270;
      break;
    case 3:
      result = 0x41676E697373696DLL;
      break;
    case 4:
      result = 0x6552737465737361;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_18E28AE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E28ABB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E28AE80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E28AD7C();
  *a1 = result;
  return result;
}

uint64_t sub_18E28AEA8(uint64_t a1)
{
  v2 = sub_18E290094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E28AEE4(uint64_t a1)
{
  v2 = sub_18E290094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.encode(to:)(void *a1)
{
  v5 = sub_18E2706EC(&qword_1EABE1148, &unk_18E49DD90);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C57AC();
  v11 = *v1;
  v20 = *(v1 + 2);
  v21 = *(v1 + 1);
  v19 = *(v1 + 3);
  v12 = v1[32];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  sub_18E1E15F4(v15, v13);
  sub_18E290094();
  sub_18E44F4EC();
  sub_18E233620();
  sub_18E1E2D10();
  sub_18E1CFB6C();
  sub_18E44F35C();
  if (!v2)
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E291C98(&qword_1ED6A7948);
    sub_18E1E2D10();
    sub_18E1CFB6C();
    sub_18E44F35C();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1D5C80(&unk_1EABE0088);
    sub_18E1E2D10();
    sub_18E1CFB6C();
    sub_18E44F2FC();
    sub_18E1E2D10();
    sub_18E1CFB6C();
    sub_18E44F2FC();
    sub_18E1CFB6C();
    sub_18E44F32C();
  }

  return (*(v7 + 8))(v3, v17);
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.hash(into:)(const void *a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  sub_18E1C6DAC(*v1);
  sub_18E44EB4C();

  sub_18E2704B4(a1, v4);
  if (!v3)
  {
    sub_18E44F4AC();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_18E44F4AC();
    return sub_18E44F4AC();
  }

  sub_18E44F4AC();
  sub_18E2917A4(a1, v3);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_18E44F4AC();
  sub_18E2917A4(a1, v5);
  return sub_18E44F4AC();
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.hashValue.getter()
{
  sub_18E1C630C();
  sub_18E44F48C();
  RawAvailableUseCases.RawAvailableUseCase.hash(into:)(&v1);
  return sub_18E44F4CC();
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18E2706EC(&unk_1EABE1170, &qword_18E49DDA8);
  sub_18E1C4EAC(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E290094();
  sub_18E44F4DC();
  if (v2)
  {
    return sub_18E1C9934(a1);
  }

  sub_18E200894();
  sub_18E1C8C54();
  sub_18E44F26C();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E291C98(&qword_1ED6A7940);
  sub_18E1C8C54();
  sub_18E44F26C();
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1D5C80(&unk_1ED6A8378);
  sub_18E1C650C();
  sub_18E1C8C54();
  sub_18E44F20C();
  sub_18E1C650C();
  sub_18E1C8C54();
  sub_18E44F20C();
  sub_18E1C8C54();
  v11 = sub_18E44F23C();
  v12 = sub_18E1C5C60();
  v13(v12);
  *a2 = v14;
  *(a2 + 8) = v14;
  *(a2 + 16) = v14;
  *(a2 + 24) = v14;
  *(a2 + 32) = v11 & 1;

  sub_18E1C9934(a1);
}

uint64_t sub_18E28B66C()
{
  sub_18E1C630C();
  sub_18E44F48C();
  RawAvailableUseCases.RawAvailableUseCase.hash(into:)(&v1);
  return sub_18E44F4CC();
}

void sub_18E28B6F4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v53 = a2 + 56;
    if (v7)
    {
LABEL_7:
      v43 = v8;
      v44 = v4;
      v9 = __clz(__rbit64(v7));
      v42 = (v7 - 1) & v7;
LABEL_13:
      v45 = a1;
      v12 = *(a1 + 48) + 40 * (v9 | (v3 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      LODWORD(v12) = *(v12 + 32);
      v17 = *(a2 + 40);
      v52 = v13;
      v54[72] = v13;
      v55 = v14;
      v56 = v15;
      v57 = v16;
      v47 = v12;
      v58 = v12;
      sub_18E44F48C();
      v48 = v16;

      v50 = v14;

      v49 = v15;

      RawAvailableUseCases.RawAvailableUseCase.hash(into:)(v54);
      v18 = sub_18E44F4CC();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v53 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v51 = ~v19;
        v46 = (v16 + 40);
        do
        {
          v21 = *(a2 + 48) + 40 * v20;
          v23 = *(v21 + 8);
          v22 = *(v21 + 16);
          v24 = *(v21 + 24);
          v25 = *(v21 + 32);
          v26 = sub_18E1C6DAC(*v21);
          v28 = v27;
          if (v26 == sub_18E1C6DAC(v52) && v28 == v29)
          {
          }

          else
          {
            v31 = sub_18E44F3CC();

            if ((v31 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          sub_18E26D86C(v23, v50);
          if ((v32 & 1) == 0)
          {
            goto LABEL_54;
          }

          if (v22)
          {
            if (!v49)
            {
              goto LABEL_54;
            }

            v33 = *(v22 + 16);
            if (v33 != *(v49 + 16))
            {
              goto LABEL_54;
            }

            if (v33)
            {
              v34 = v22 == v49;
            }

            else
            {
              v34 = 1;
            }

            if (!v34)
            {
              v35 = (v22 + 40);
              v36 = (v49 + 40);
              while (v33)
              {
                v37 = *(v35 - 1) == *(v36 - 1) && *v35 == *v36;
                if (!v37 && (sub_18E44F3CC() & 1) == 0)
                {
                  goto LABEL_54;
                }

                v35 += 2;
                v36 += 2;
                if (!--v33)
                {
                  goto LABEL_40;
                }
              }

              __break(1u);
              goto LABEL_67;
            }
          }

          else if (v49)
          {
            goto LABEL_54;
          }

LABEL_40:
          if (v24)
          {
            if (!v48)
            {
              goto LABEL_54;
            }

            v38 = *(v24 + 16);
            if (v38 != *(v48 + 16))
            {
              goto LABEL_54;
            }

            if (v38 && v24 != v48)
            {
              v39 = (v24 + 40);
              v40 = v46;
              while (1)
              {
                v41 = *(v39 - 1) == *(v40 - 1) && *v39 == *v40;
                if (!v41 && (sub_18E44F3CC() & 1) == 0)
                {
                  break;
                }

                v39 += 2;
                v40 += 2;
                if (!--v38)
                {
                  goto LABEL_52;
                }
              }

LABEL_54:

              goto LABEL_55;
            }

LABEL_52:

            if (v47 == v25)
            {
              goto LABEL_61;
            }
          }

          else
          {

            if (!v48 && ((v47 ^ v25) & 1) == 0)
            {
LABEL_61:

              v4 = v44;
              a1 = v45;
              v7 = v42;
              v8 = v43;
              if (v42)
              {
                goto LABEL_7;
              }

              goto LABEL_8;
            }
          }

LABEL_55:
          v20 = (v20 + 1) & v51;
        }

        while (((*(v53 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
      }
    }

    else
    {
LABEL_8:
      v10 = v3;
      while (1)
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v3 >= v8)
        {
          return;
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
        if (v11)
        {
          v43 = v8;
          v44 = v4;
          v9 = __clz(__rbit64(v11));
          v42 = (v11 - 1) & v11;
          goto LABEL_13;
        }
      }

LABEL_67:
      __break(1u);
      __break(1u);
    }
  }
}

uint64_t sub_18E28BB7C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v27 = result + 56;
  v28 = result;
  v26 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v2 + 40);
    sub_18E44F48C();

    sub_18E44EB4C();
    if (v16 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    v18 = sub_18E44F4CC();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_32:

      return 0;
    }

    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v23 = v22 + 24 * v20;
      v24 = *(v23 + 16);
      v25 = *v23 == v15 && *(v23 + 8) == v14;
      if (!v25 && (sub_18E44F3CC() & 1) == 0)
      {
        goto LABEL_27;
      }

      if (v24 != 2)
      {
        break;
      }

      if (v16 == 2)
      {
        goto LABEL_29;
      }

LABEL_27:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (v16 == 2 || ((v24 ^ v16) & 1) != 0)
    {
      goto LABEL_27;
    }

LABEL_29:

    v7 = v29;
    v2 = a2;
    v4 = v27;
    result = v28;
    v8 = v26;
  }

  while (v29);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_18E28BDB0()
{
  sub_18E1C575C();
  if (v0 == v1)
  {
    goto LABEL_61;
  }

  v2 = v1;
  v3 = v0;
  if (*(v0 + 16) != *(v1 + 16))
  {
    goto LABEL_61;
  }

  v4 = 0;
  v5 = v0 + 56;
  v6 = 1 << *(v0 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v0 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v1 + 56;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = (*(v3 + 48) + ((v11 | (v4 << 6)) << 6));
    v17 = v15[1];
    v16 = v15[2];
    v18 = *v15;
    *(v123 + 10) = *(v15 + 42);
    v122 = v17;
    v123[0] = v16;
    v121 = v18;
    v19 = *(v2 + 40);
    v118 = *v15;
    v119 = v15[1];
    v120[0] = v15[2];
    *(v120 + 10) = *(v15 + 42);
    sub_18E44F48C();
    sub_18E27418C(&v121, &v107);
    ExecutionContext.hash(into:)();
    v20 = sub_18E44F4CC();
    v27 = -1 << *(v2 + 32);
    v28 = v20 & ~v27;
    if (((*(v10 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_60:
      sub_18E2741E8(&v121);
LABEL_61:
      sub_18E1C5544();
      return;
    }

    v70 = v12;
    v72 = v9;
    v74 = v5;
    v76 = v3;
    v29 = ~v27;
    HIDWORD(v78) = BYTE9(v123[1]);
    v30 = v121;
    v31 = v122;
    v80 = *(&v122 + 1);
    v82 = ~v27;
    v84 = v10;
    v86 = *&v123[0];
    v68 = *&v123[1];
    HIDWORD(v66) = BYTE8(v123[1]);
    v106 = *(&v123[0] + 1);
    v64 = *(&v123[0] + 1) + 40;
    while (1)
    {
      v32 = (*(v2 + 48) + (v28 << 6));
      v34 = v32[1];
      v33 = v32[2];
      v35 = *(v32 + 42);
      v115 = *v32;
      v116 = v34;
      *&v117[10] = v35;
      *v117 = v33;
      v37 = *(&v115 + 1);
      v36 = v115;
      v38 = v34;
      if (v115 != v30 || *(&v115 + 1) != *(&v30 + 1))
      {
        v36 = sub_18E44F3CC();
        if ((v36 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      if (v38 == 2)
      {
        if (v31 != 2)
        {
          goto LABEL_55;
        }
      }

      else if (v31 == 2 || ((v38 ^ v31) & 1) != 0)
      {
        goto LABEL_55;
      }

      v40 = *&v117[8];
      if (!*&v117[8])
      {
        break;
      }

      v41 = *(&v116 + 1);
      if (!v106)
      {
        LOBYTE(v111) = v117[24];
        sub_18E211288(v36, v37, v21, v22, v23, v24, v25, v26, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v92, v96, v100, v103, v104, 0, *(&v116 + 1), *v117, *&v117[8], *&v117[16], v111, v112, v113, v114, v115);
        swift_bridgeObjectRetain_n();
        sub_18E292124(&v107);
        v29 = v82;
        v10 = v84;
        goto LABEL_52;
      }

      HIDWORD(v103) = v117[24];
      v105 = *&v117[16];
      v97 = *v117 >> 24;
      v101 = HIDWORD(*v117);
      v89 = *v117 >> 8;
      v93 = *v117 >> 16;
      if (*(&v116 + 1) != v80)
      {
        goto LABEL_46;
      }

      if ((*v117 ^ v86))
      {
        goto LABEL_46;
      }

      if (((v86 >> 8) & 1 ^ (*v117 >> 8)))
      {
        goto LABEL_46;
      }

      if (((v86 >> 16) & 1 ^ HIWORD(*v117)))
      {
        goto LABEL_46;
      }

      if (((v86 >> 24) & 1 ^ HIBYTE(*v117)))
      {
        goto LABEL_46;
      }

      if ((BYTE4(v86) & 1 ^ *&v117[4]))
      {
        goto LABEL_46;
      }

      v42 = *(*&v117[8] + 16);
      if (v42 != *(v106 + 16))
      {
        goto LABEL_46;
      }

      if (v42 && *&v117[8] != v106)
      {
        v43 = (*&v117[8] + 40);
        v44 = v64;
        while (1)
        {
          v36 = *(v43 - 1);
          v37 = *v43;
          v21 = *(v44 - 1);
          v22 = *v44;
          if (v36 != v21 || v37 != v22)
          {
            v60 = v43;
            v62 = v42;
            v58 = v44;
            v36 = sub_18E44F3CC();
            v44 = v58;
            v43 = v60;
            v42 = v62;
            if ((v36 & 1) == 0)
            {
              break;
            }
          }

          v43 += 2;
          v44 += 2;
          if (!--v42)
          {
            goto LABEL_43;
          }
        }

LABEL_46:
        sub_18E211288(v36, v37, v21, v22, v23, v24, v25, v26, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v89, v93, v97, v101, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
        v46 = swift_bridgeObjectRetain_n();
        goto LABEL_47;
      }

LABEL_43:
      sub_18E211288(v36, v37, v21, v22, v23, v24, v25, v26, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v89, v93, v97, v101, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
      v46 = swift_bridgeObjectRetain_n();
      if (v104 == v69)
      {
        v54 = BYTE4(v103) ^ BYTE4(v67);
        *&v118 = v81;
        sub_18E1C66B4(v46, v47, v48, v49, v50, v51, v52, v53, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v90, v91, v94, v95, v98, v99, v102);
        *&v119 = v40;
        *(&v119 + 1) = v68;
        LOBYTE(v120[0]) = v55;
        sub_18E292124(&v118);

        if ((v54 & 1) == 0)
        {
          v29 = v82;
          v10 = v84;
          goto LABEL_54;
        }

        goto LABEL_48;
      }

LABEL_47:
      *&v118 = v41;
      sub_18E1C66B4(v46, v47, v48, v49, v50, v51, v52, v53, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v90, v91, v94, v95, v98, v99, v102);
      *&v119 = v40;
      *(&v119 + 1) = v56;
      LOBYTE(v120[0]) = BYTE4(v103);
      sub_18E292124(&v118);

LABEL_48:
      sub_18E2741E8(&v115);
      v29 = v82;
      v10 = v84;
LABEL_55:
      v28 = (v28 + 1) & v29;
      if (((*(v10 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    if (v106)
    {
      sub_18E211288(v36, v37, v21, v22, v23, v24, v25, v26, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v92, v96, v100, v103, v104, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);

LABEL_52:

      sub_18E2741E8(&v115);
      goto LABEL_55;
    }

    sub_18E211288(v36, v37, v21, v22, v23, v24, v25, v26, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v92, v96, v100, v103, v104, 0, v107, v108, v109, v110, v111, v112, v113, v114, v115);

LABEL_54:
    v57 = v117[25];
    sub_18E2741E8(&v115);
    if (v57 != HIDWORD(v78))
    {
      goto LABEL_55;
    }

    sub_18E2741E8(&v121);
    v5 = v74;
    v3 = v76;
    v8 = v70;
    v9 = v72;
  }

  while (v70);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_61;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
}

uint64_t RawAvailableUseCases.hashValue.getter()
{
  v1 = *v0;
  sub_18E44F48C();
  sub_18E291068(__src, v1);
  return sub_18E44F4CC();
}

uint64_t sub_18E28C2C4()
{
  v1 = *v0;
  sub_18E44F48C();
  sub_18E291068(__src, v1);
  return sub_18E44F4CC();
}

void RawAvailableUseCases.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  sub_18E1E4398(a1, &v45);
  v5 = sub_18E28D9C8(&v45);
  if (v2)
  {
    sub_18E1C9934(v3);
    return;
  }

  v9 = v5;
  v10 = v6;
  v11 = v8;
  v43 = v7;
  v51 = MEMORY[0x1E69E7CD0];
  v40 = *(v8 + 16);
  if (!v40)
  {

LABEL_35:

    sub_18E1C9934(v3);
    *a2 = v51;
    return;
  }

  v35 = v3;
  v36 = a2;
  v38 = v5 + 32;
  v39 = v8 + 32;
  v37 = v6 + 32;
  v12 = v7 + 32;

  v13 = 0;
  while (v13 < *(v11 + 16))
  {
    v14 = (v39 + 40 * v13);
    v15 = *v14;
    if ((*v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    if (v15 >= *(v9 + 16))
    {
      goto LABEL_42;
    }

    v16 = v14[1];
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if (v16 >= *(v10 + 16))
    {
      goto LABEL_44;
    }

    v17 = v14[2];
    LOBYTE(v18) = *(v14 + 32);
    v42 = *(v38 + v15);
    v44 = v14[3];
    v41 = *(v37 + 8 * v16);
    if (v17)
    {
      v19 = *(v17 + 16);
      if (v19)
      {
        v45 = MEMORY[0x1E69E7CC0];

        v20 = v17;
        sub_18E1E2B44();
        v21 = v43;
        v22 = v45;
        v18 = v20 + 32;
        while (1)
        {
          v24 = *v18;
          v18 += 8;
          v23 = v24;
          if ((v24 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v23 >= *(v21 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v12 + 16 * v23);
          v11 = *v25;
          v9 = v25[1];
          v45 = v22;
          v13 = *(v22 + 16);
          v26 = *(v22 + 24);
          v10 = v13 + 1;

          if (v13 >= v26 >> 1)
          {
            sub_18E1E1CB4();
            v21 = v43;
            v22 = v45;
          }

          *(v22 + 16) = v10;
          v27 = v22 + 16 * v13;
          *(v27 + 32) = v11;
          *(v27 + 40) = v9;
          if (!--v19)
          {
            sub_18E1E6630();
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v22 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v28 = v44;
      if (!v44)
      {
LABEL_20:

        v29 = 0;
        goto LABEL_32;
      }
    }

    else
    {

      v28 = v44;
      v22 = 0;
      if (!v44)
      {
        goto LABEL_20;
      }
    }

    v30 = *(v28 + 16);
    if (v30)
    {
      v45 = MEMORY[0x1E69E7CC0];
      sub_18E1E2B44();
      v29 = v45;
      v18 = 32;
      while (1)
      {
        v31 = *(v44 + v18);
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v31 >= *(v43 + 16))
        {
          goto LABEL_39;
        }

        v32 = (v12 + 16 * v31);
        v11 = *v32;
        v9 = v32[1];
        v45 = v29;
        v13 = *(v29 + 16);
        v33 = *(v29 + 24);
        v10 = v13 + 1;

        if (v13 >= v33 >> 1)
        {
          sub_18E1E1CB4();
          v29 = v45;
        }

        *(v29 + 16) = v10;
        v34 = v29 + 16 * v13;
        *(v34 + 32) = v11;
        *(v34 + 40) = v9;
        v18 += 8;
        if (!--v30)
        {

          sub_18E1E6630();
          goto LABEL_32;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      break;
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_32:
    ++v13;
    v46[0] = v42;
    v47 = v41;
    v48 = v22;
    v49 = v29;
    v50 = v18;
    sub_18E274878(&v45, v46);

    if (v13 == v40)
    {
      swift_bridgeObjectRelease_n();
      v3 = v35;
      a2 = v36;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t RawAvailableUseCases.encode(to:)(void *a1)
{
  v2 = *v1;
  sub_18E2871E8();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_18E44E9AC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E291CFC();
  v79 = sub_18E44E9AC();
  v87 = sub_18E44E9AC();
  v86 = v3;
  v6 = v2 + 56;
  v5 = *(v2 + 56);
  v7 = *(v2 + 32);
  sub_18E1C7734();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v81 = v2;

  v13 = 0;
  v14 = v3;
  v15 = v3;
  v73 = v12;
  v74 = v2 + 56;
  if (!v10)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v17 = *(v81 + 48) + 40 * (__clz(__rbit64(v10)) | (v13 << 6));
    v18 = *v17;
    v20 = *(v17 + 8);
    v19 = *(v17 + 16);
    v78 = *(v17 + 32);
    v21 = *(v4 + 16);
    v77 = *(v17 + 24);

    v76 = v19;

    v82 = v18;
    if (v21 && (v22 = sub_18E26DBE8(v18), (v23 & 1) != 0))
    {
      v80 = *(*(v4 + 56) + 8 * v22);
    }

    else
    {
      v80 = *(v3 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v85 = v4;
      v24 = sub_18E26DBE8(v18);
      if (__OFADD__(*(v4 + 16), (v25 & 1) == 0))
      {
        goto LABEL_50;
      }

      v26 = v24;
      v27 = v25;
      sub_18E2706EC(&qword_1EABE1180, &qword_18E49DDB0);
      if (sub_18E44F0EC())
      {
        v28 = sub_18E26DBE8(v18);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_54;
        }

        v26 = v28;
      }

      if (v27)
      {
        *(*(v85 + 56) + 8 * v26) = v80;
        v4 = v85;
      }

      else
      {
        sub_18E1CF284(v85 + 8 * (v26 >> 6));
        *(v30[6] + v26) = v31;
        *(v30[7] + 8 * v26) = v80;
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_52;
        }

        v4 = v30;
        v30[2] = v34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = *(v3 + 16);
        v60 = sub_18E1C6868();
        sub_18E3EFDF0(v60, v61, v62, v3);
        v3 = v63;
      }

      v36 = *(v3 + 16);
      v35 = *(v3 + 24);
      if (v36 >= v35 >> 1)
      {
        v64 = sub_18E1C84F8(v35);
        sub_18E3EFDF0(v64, v65, v66, v3);
        v3 = v67;
      }

      *(v3 + 16) = v36 + 1;
      *(v3 + v36 + 32) = v82;
    }

    v84 = v3;
    if (v79[2] && (v37 = sub_18E26DC70(v20), (v38 & 1) != 0))
    {
      v39 = v37;

      v83 = *(v79[7] + 8 * v39);
    }

    else
    {
      v83 = *(v14 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v75 = v20;
      v40 = sub_18E26DC70(v20);
      if (__OFADD__(v79[2], (v41 & 1) == 0))
      {
        goto LABEL_51;
      }

      v42 = v40;
      v43 = v41;
      sub_18E2706EC(&qword_1EABE1188, &qword_18E49DDB8);
      if (sub_18E44F0EC())
      {
        v44 = sub_18E26DC70(v75);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_54;
        }

        v42 = v44;
      }

      if (v43)
      {
        *(v79[7] + 8 * v42) = v83;
        v46 = v75;
      }

      else
      {
        sub_18E1CF284(&v79[v42 >> 6]);
        v46 = v75;
        *(v79[6] + 8 * v42) = v75;
        *(v79[7] + 8 * v42) = v83;
        v47 = v79[2];
        v33 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v33)
        {
          goto LABEL_53;
        }

        v79[2] = v48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = *(v14 + 16);
        sub_18E1C6868();
        sub_18E3EFEC8();
        v14 = v69;
      }

      v50 = *(v14 + 16);
      v49 = *(v14 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_18E1C84F8(v49);
        sub_18E3EFEC8();
        v14 = v70;
      }

      *(v14 + 16) = v50 + 1;
      *(v14 + 8 * v50 + 32) = v46;
    }

    v51 = v76;
    if (v76)
    {

      v51 = sub_18E28A75C(v76, v81, &v87, &v86);
    }

    v52 = v77;
    if (v77)
    {

      v52 = sub_18E28A75C(v77, v81, &v87, &v86);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = *(v15 + 16);
      sub_18E1C6868();
      sub_18E3EFE18();
      v15 = v57;
    }

    v54 = *(v15 + 16);
    v53 = *(v15 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_18E1C84F8(v53);
      sub_18E3EFE18();
      v15 = v58;
    }

    v10 &= v10 - 1;
    *(v15 + 16) = v54 + 1;
    v55 = v15 + 40 * v54;
    *(v55 + 32) = v80;
    *(v55 + 40) = v83;
    *(v55 + 48) = v51;
    *(v55 + 56) = v52;
    *(v55 + 64) = v78;
    v3 = v84;
    v12 = v73;
    v6 = v74;
  }

  while (v10);
LABEL_2:
  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      sub_18E28D6DC(a1, v3, v14, v86, v15);
    }

    v10 = *(v6 + 8 * v16);
    ++v13;
    if (v10)
    {
      v13 = v16;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t sub_18E28CD50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x800000018E464080 == a2;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xEE007865646E4973;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000018E4640A0 == a2;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000018E4640C0 == a2;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6552737465737361 && a2 == 0xEB00000000796461)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E44F3CC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18E28CF08(char a1)
{
  result = 0x746E656D75677261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6552737465737361;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_18E28CFC0(void *a1)
{
  v3 = v1;
  v5 = sub_18E2706EC(&unk_1EABE1208, &qword_18E49E390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E292890();
  sub_18E44F4EC();
  v11 = *v3;
  LOBYTE(v16) = 0;
  sub_18E44F34C();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v16) = 1;
    sub_18E44F34C();
    v16 = v3[2];
    HIBYTE(v15) = 2;
    sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
    sub_18E2928E4();
    sub_18E44F2FC();
    v16 = v3[3];
    HIBYTE(v15) = 3;
    sub_18E44F2FC();
    v13 = *(v3 + 32);
    LOBYTE(v16) = 4;
    sub_18E44F32C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18E28D1DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18E2706EC(&unk_1EABE1228, &qword_18E49E3A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E292890();
  sub_18E44F4DC();
  if (v2)
  {
    return sub_18E1C9934(a1);
  }

  LOBYTE(v23) = 0;
  v11 = sub_18E44F25C();
  LOBYTE(v23) = 1;
  v12 = sub_18E44F25C();
  v20 = a2;
  sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
  v22 = 2;
  v21 = sub_18E292960();
  sub_18E44F20C();
  v19 = v12;
  v13 = v23;
  v22 = 3;
  sub_18E44F20C();
  v14 = v23;
  LOBYTE(v23) = 4;
  v15 = sub_18E44F23C();
  (*(v6 + 8))(v9, v5);
  result = sub_18E1C9934(a1);
  v17 = v19;
  v18 = v20;
  *v20 = v11;
  v18[1] = v17;
  v18[2] = v13;
  v18[3] = v14;
  *(v18 + 32) = v15 & 1;
  return result;
}

uint64_t sub_18E28D4A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000018E464060 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7365736143657375 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18E28D60C(unsigned __int8 a1)
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](a1);
  return sub_18E44F4CC();
}

unint64_t sub_18E28D654(char a1)
{
  result = 0x746E656D75677261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x737465737361;
      break;
    case 3:
      result = 0x7365736143657375;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_18E28D6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v9 = sub_18E2706EC(&unk_1EABE11C8, &qword_18E49E128);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E292230();
  sub_18E44F4EC();
  v21 = a2;
  v20 = 0;
  sub_18E2706EC(&unk_1EABE11D8, &unk_18E49E130);
  sub_18E292380(&unk_1EABDF730);
  sub_18E44F35C();
  if (!v5)
  {
    v15 = v19;
    v21 = v18;
    v20 = 1;
    sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
    sub_18E292284();
    sub_18E44F35C();
    v21 = a4;
    v20 = 2;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1D5C80(&unk_1EABE0088);
    sub_18E44F35C();
    v21 = v15;
    v20 = 3;
    sub_18E2706EC(&qword_1EABE11E8, &qword_18E49E140);
    sub_18E292494(&unk_1EABDF710);
    sub_18E44F35C();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_18E28D9C8(uint64_t *a1)
{
  v3 = sub_18E2706EC(&qword_1EABE11F8, qword_18E49E150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_18E1E15F4(a1, v8);
  sub_18E292230();
  sub_18E44F4DC();
  if (!v1)
  {
    sub_18E2706EC(&unk_1EABE11D8, &unk_18E49E130);
    v11 = 0;
    sub_18E292380(&unk_1EABDF720);
    sub_18E44F26C();
    v8 = v12;
    sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
    v11 = 1;
    sub_18E2923EC();
    sub_18E44F26C();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v11 = 2;
    sub_18E1D5C80(&unk_1ED6A8378);
    v10 = 0;
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE11E8, &qword_18E49E140);
    v11 = 3;
    sub_18E292494(&unk_1EABDF700);
    sub_18E44F26C();
    (*(v4 + 8))(v7, v3);
  }

  sub_18E1C9934(a1);
  return v8;
}

uint64_t sub_18E28DD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E28CD50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E28DDC4(uint64_t a1)
{
  v2 = sub_18E292890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E28DE00(uint64_t a1)
{
  v2 = sub_18E292890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18E28DE3C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E28D1DC(a1, v6);
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

uint64_t sub_18E28DE84(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_18E28CFC0(a1);
}

uint64_t sub_18E28DEC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E28DF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E28D4A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E28DF3C(uint64_t a1)
{
  v2 = sub_18E292230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E28DF78(uint64_t a1)
{
  v2 = sub_18E292230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E28DFB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E28D9C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

id AvailableUseCasesWrapper.__allocating_init(rawAvailableUseCases:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AvailableUseCasesWrapper.init(rawAvailableUseCases:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static AvailableUseCasesWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE1140 = a1;
  return result;
}

uint64_t sub_18E28E1C8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE1140;
  return result;
}

uint64_t sub_18E28E214(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE1140 = v1;
  return result;
}

Swift::Void __swiftcall AvailableUseCasesWrapper.encode(with:)(NSCoder with)
{
  v3 = sub_18E44E27C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_18E44E26C();
  v11 = *(v1 + OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases);
  sub_18E291D78();

  v6 = sub_18E44E25C();
  v8 = v7;

  sub_18E25BD94();
  sub_18E2523A0(v6, v8);
  v9 = sub_18E25BDDC(v6, v8);
  v10 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  sub_18E1FDFE0(v6, v8);
}

id AvailableUseCasesWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E25BD94();
  v3 = sub_18E44EEBC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E44E24C();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_18E44E23C();
    v8 = MEMORY[0x193ACBD40](v4);
    v10 = v9;
    sub_18E291DCC();
    sub_18E44E22C();
    sub_18E1FDFE0(v8, v10);

    v11 = objc_allocWithZone(ObjectType);
    *&v11[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = v15;
    v14.receiver = v11;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, sel_init);

    swift_getObjectType();
    sub_18E1D4C00();
  }

  else
  {

    swift_getObjectType();
    sub_18E1D4C00();
    return 0;
  }

  return v12;
}

id AvailableUseCasesWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases);
  v5 = objc_allocWithZone(ObjectType);
  *&v5[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;

  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t AvailableUseCasesWrapper.description.getter()
{
  sub_18E44EFFC();
  MEMORY[0x193ACC300](0xD000000000000018, 0x800000018E463FC0);
  v2 = *(v0 + OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases);
  sub_18E44F0DC();
  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return 0;
}

uint64_t AvailableUseCasesWrapper.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases);
  sub_18E44F48C();
  sub_18E291068(__src, v1);
  return sub_18E44F4CC();
}

id AvailableUseCasesWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AvailableUseCasesWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E28E92C()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EA30()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EAE0()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EBB8()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EC1C()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EC5C()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28ED24()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28ED78()
{
  sub_18E1CACF0();
  switch(v0)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      sub_18E1C6AB4();
      break;
    default:
      break;
  }

  sub_18E44EB4C();
}

uint64_t sub_18E28EE80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_18E1C88A0();
}

uint64_t sub_18E28EED0()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EF54()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EFF0()
{
  sub_18E1C57A0();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      sub_18E1C57A0();
      break;
    default:
      break;
  }

  sub_18E44EB4C();
}

uint64_t sub_18E28F0CC()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28F16C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_18E1C88A0();
}

uint64_t sub_18E28F1B0()
{
  sub_18E44EB4C();
}

uint64_t sub_18E28F254()
{
  sub_18E1CC3A4();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE300000000000000;
      v5 = 7565161;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = 0x736F63616DLL;
      break;
    case 3:
      v5 = sub_18E223CAC();
      break;
    case 4:
      v2 = 0xE400000000000000;
      v5 = 1936684660;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v5 = sub_18E1D00A4();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE300000000000000;
      v1 = 7565161;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v1 = 0x736F63616DLL;
      break;
    case 3:
      sub_18E234598();
      break;
    case 4:
      v6 = 0xE400000000000000;
      v1 = 1936684660;
      break;
    case 5:
      v6 = 0xE800000000000000;
      sub_18E221C24();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90();
  }

  return v8 & 1;
}

uint64_t sub_18E28F3A0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB000000006E656CLL;
  v3 = 0x5F747865746E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v4 == 1)
    {
      v6 = 0x800000018E45B220;
    }

    else
    {
      v6 = 0x800000018E45B240;
    }
  }

  else
  {
    v5 = 0x5F747865746E6F63;
    v6 = 0xEB000000006E656CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }

    if (a2 == 1)
    {
      v2 = 0x800000018E45B220;
    }

    else
    {
      v2 = 0x800000018E45B240;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C6188();
  }

  return v8 & 1;
}

uint64_t sub_18E28F494(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x617A696C61636F6CLL;
  }

  else
  {
    v3 = 0x666E6F635F6D6C6DLL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006769;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v5 = 0x617A696C61636F6CLL;
  }

  else
  {
    v5 = 0x666E6F635F6D6C6DLL;
  }

  if (a2)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xEA00000000006769;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90();
  }

  return v8 & 1;
}

uint64_t sub_18E28F594(char a1, char a2)
{
  v2 = "t_for_input_token_text";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000027;
  }

  else
  {
    v4 = 0xD000000000000026;
  }

  if (v3)
  {
    v5 = "token_count";
  }

  else
  {
    v5 = "t_for_input_token_text";
  }

  if (a2)
  {
    v6 = 0xD000000000000027;
  }

  else
  {
    v6 = 0xD000000000000026;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "token_count";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90();
  }

  return v8 & 1;
}

uint64_t sub_18E28F628(char a1, char a2)
{
  if (a1)
  {
    v2 = 13942;
  }

  else
  {
    v2 = 13686;
  }

  if (a2)
  {
    v3 = 13942;
  }

  else
  {
    v3 = 13686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18E44F3CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_18E28F690(unsigned __int8 a1, char a2)
{
  v2 = 1701869940;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701869940;
  switch(v4)
  {
    case 1:
      v5 = 0x5F72657470616461;
      v3 = 0xEC00000065707974;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v6 = 1601729635;
      goto LABEL_5;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 1601267059;
LABEL_5:
      v5 = v6 | 0x6E656C00000000;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x5F72657470616461;
      v7 = 0xEC00000065707974;
      break;
    case 2:
      v7 = 0xE700000000000000;
      v8 = 1601729635;
      goto LABEL_10;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 1601267059;
LABEL_10:
      v2 = v8 | 0x6E656C00000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_18E1C4F90();
  }

  return v10 & 1;
}

uint64_t sub_18E28F7E4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 8 == a2 << 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_18E44F3CC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_18E28F850()
{
  sub_18E1CACF0();
  v2 = 0x642E737961776C61;
  v4 = v3;
  v5 = 0x642E737961776C61;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0x800000018E45A8B0;
      v5 = 0xD000000000000019;
      break;
    case 2:
      v6 = 0x800000018E45A8D0;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      v6 = 0x800000018E45A8F0;
      v5 = 0xD00000000000001ALL;
      break;
    case 4:
      v6 = 0x800000018E45A910;
      v5 = 0xD000000000000021;
      break;
    case 5:
      v6 = 0x800000018E45A940;
      v5 = 0xD000000000000033;
      break;
    case 6:
      v6 = 0x800000018E45A980;
      v5 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000018E45A8B0;
      v2 = 0xD000000000000019;
      break;
    case 2:
      v0 = 0x800000018E45A8D0;
      v2 = 0xD00000000000001DLL;
      break;
    case 3:
      v0 = 0x800000018E45A8F0;
      v2 = 0xD00000000000001ALL;
      break;
    case 4:
      v0 = 0x800000018E45A910;
      v2 = 0xD000000000000021;
      break;
    case 5:
      v0 = 0x800000018E45A940;
      v2 = 0xD000000000000033;
      break;
    case 6:
      v0 = 0x800000018E45A980;
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C6188();
  }

  return v8 & 1;
}

uint64_t sub_18E28FA18(unsigned __int8 a1, char a2)
{
  v2 = 0xD00000000000002CLL;
  v3 = "sid-inference-provider";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000025;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = "encesOperatingSystemEligible";
    }

    else
    {
      v6 = "encesHardwareEligible";
    }
  }

  else
  {
    v5 = 0xD00000000000002CLL;
    v6 = "sid-inference-provider";
  }

  if (a2)
  {
    v3 = "encesOperatingSystemEligible";
    v2 = a2 == 1 ? 0xD000000000000025 : 0xD000000000000013;
    if (a2 != 1)
    {
      v3 = "encesHardwareEligible";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90();
  }

  return v8 & 1;
}

uint64_t sub_18E28FAE8(char a1, char a2)
{
  v2 = 1701869940;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x6E656C5F787463;
    }

    else
    {
      v3 = 0x6E656C5F716573;
    }

    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701869940;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E656C5F787463;
    }

    else
    {
      v2 = 0x6E656C5F716573;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_18E1C4F90();
  }

  return v7 & 1;
}