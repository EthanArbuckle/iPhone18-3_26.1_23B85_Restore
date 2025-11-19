unint64_t sub_24618B034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9A0, &qword_2461A12A0);
    v3 = sub_24619FB9C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24616595C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24618B148()
{
  result = qword_281391888;
  if (!qword_281391888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F998, &qword_2461A1298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391888);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24618B1E8()
{
  result = qword_281391840;
  if (!qword_281391840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281391840);
  }

  return result;
}

unint64_t sub_24618B234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A0, &qword_2461A0DE8);
    v3 = sub_24619FB9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24616595C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24618B338()
{
  v1 = *(sub_24619F0FC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_24619F3FC() - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2461813EC(v5, v6, v7);
}

uint64_t sub_24618B40C(uint64_t a1)
{
  v4 = *(sub_24619F4DC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24616D024;

  return sub_246180888(a1, v6, v1 + v5, v7);
}

unint64_t sub_24618B528()
{
  result = qword_27EE3F9C0;
  if (!qword_27EE3F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3F9C0);
  }

  return result;
}

uint64_t sub_24618B57C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24616D024;

  return sub_24617E234();
}

unint64_t sub_24618B618()
{
  result = qword_281391820;
  if (!qword_281391820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391820);
  }

  return result;
}

uint64_t sub_24618B66C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24616D024;

  return sub_24617AAD4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24618B740(uint64_t a1)
{
  v4 = *(sub_24619F22C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24616D024;

  return sub_246171F88(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_24618B878()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_246161518;

  return sub_246161488();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24618B9CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24619EF5C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_24619F4DC() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24616D024;

  return sub_246180CC8(a1, v11, v12, v1 + v6, v10, v1 + v9, v14, v15);
}

uint64_t sub_24618BB78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24616D024;

  return sub_24618941C(a1, v5);
}

uint64_t sub_24618BC30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24618BC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24618BD20(void *a1)
{
  v3 = sub_24619F7FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 attributes];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  type metadata accessor for ODIAttributeKey(0);
  v11 = v10;
  v12 = sub_24618C5DC();
  v13 = sub_24619F82C();

  sub_24618C634(v13);

  v14 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v15 = sub_24619F80C();

  v16 = [v14 initWithDictionary:v15 copyItems:1];

  *&v84[0] = 0;
  sub_24619F81C();

  v17 = *&v84[0];
  if (!*&v84[0])
  {
    return 0;
  }

  if (!*(*&v84[0] + 16))
  {

    return 0;
  }

  v67 = v12;
  v68 = v11;
  v71 = a1;
  v72 = v7;
  v75 = v4;
  v73 = v3;
  v18 = sub_24618AF08(MEMORY[0x277D84F90]);
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  while (1)
  {
    v24 = v23;
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v23 = v26 - 1;
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v22)
        {
          v21 = 0;
          v83 = 0;
          v81 = 0u;
          v82 = 0u;
          goto LABEL_17;
        }

        v21 = *(v17 + 64 + 8 * v25);
        ++v24;
        if (v21)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_24619FC1C();
      __break(1u);
      return result;
    }

    v25 = v23;
LABEL_16:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v27 | (v25 << 6);
    v29 = *(*(v17 + 48) + 8 * v28);
    sub_24618C8FC(*(v17 + 56) + 32 * v28, v78);
    *&v81 = v29;
    sub_24618C958(v78, (&v81 + 8));
    v30 = v29;
    v23 = v25;
LABEL_17:
    v84[0] = v81;
    v84[1] = v82;
    v85 = v83;
    v31 = v81;
    if (!v81)
    {
      break;
    }

    sub_24618C958((v84 + 8), v80);
    sub_24618C8FC(v80, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9F8, &qword_2461A1398);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&v81);
      sub_24618C8FC(v80, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8D8, &qword_2461A0E78);
      swift_dynamicCast();
      sub_24616D05C(&v81, v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v18;
      v33 = sub_246165C90(v31);
      v35 = v18;
      v36 = *(v18 + 16);
      v37 = (v34 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_38;
      }

      v40 = v34;
      if (*(v35 + 24) >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = v33;
          sub_24616A3A0();
          v33 = v46;
        }
      }

      else
      {
        sub_246168E9C(v39, isUniquelyReferenced_nonNull_native);
        v33 = sub_246165C90(v31);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_40;
        }
      }

      v42 = v77;
      if (v40)
      {
        v43 = (v77[7] + 40 * v33);
        __swift_destroy_boxed_opaque_existential_1(v43);
        sub_24616D05C(v78, v43);

        __swift_destroy_boxed_opaque_existential_1(v80);
        v18 = v42;
      }

      else
      {
        v77[(v33 >> 6) + 8] |= 1 << v33;
        *(v42[6] + 8 * v33) = v31;
        sub_24616D05C(v78, v42[7] + 40 * v33);
        __swift_destroy_boxed_opaque_existential_1(v80);
        v44 = v42[2];
        v38 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v38)
        {
          goto LABEL_39;
        }

        v18 = v42;
        v42[2] = v45;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v80);
    }
  }

  v47 = v71;
  v76 = v18;
  v48 = v71[3];
  v70 = v71[4];
  v69 = __swift_project_boxed_opaque_existential_1(v71, v48);
  *&v84[0] = 0;
  *(&v84[0] + 1) = 0xE000000000000000;
  sub_24619FAEC();

  *&v84[0] = 0xD00000000000001ALL;
  *(&v84[0] + 1) = 0x80000002461A86A0;
  *&v81 = *(v76 + 16);
  v49 = sub_24619FBBC();
  MEMORY[0x24C19A830](v49);

  v74 = *MEMORY[0x277D00770];
  v50 = v75;
  v51 = *(v75 + 104);
  v52 = v72;
  v53 = v73;
  v51(v72);
  sub_24619F72C();

  v54 = *(v50 + 8);
  v54(v52, v53);
  v70 = v47[3];
  v75 = v47[4];
  v69 = __swift_project_boxed_opaque_existential_1(v47, v70);
  *&v84[0] = 0;
  *(&v84[0] + 1) = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000021, 0x80000002461A86C0);
  *&v81 = *(v76 + 16);
  v55 = sub_24619FBBC();
  MEMORY[0x24C19A830](v55);

  MEMORY[0x24C19A830](0xD000000000000016, 0x80000002461A86F0);
  v66 = v51;
  (v51)(v52, v74, v53);
  v56 = v76;
  sub_24619F6CC();

  v70 = v54;
  v75 = v50 + 8;
  v54(v52, v53);
  if (*(v56 + 16) == *(v17 + 16))
  {
  }

  else
  {
    sub_24615D25C(v17);
    v59 = v58;

    sub_24616B93C(v60, v59);

    v61 = v47[4];
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    *&v84[0] = 0;
    *(&v84[0] + 1) = 0xE000000000000000;
    sub_24619FAEC();

    *&v84[0] = 0xD000000000000013;
    *(&v84[0] + 1) = 0x80000002461A8710;
    v62 = sub_24619FA4C();
    v64 = v63;

    MEMORY[0x24C19A830](v62, v64);

    (v66)(v52, v74, v53);
    sub_24619F6FC();
    v56 = v76;

    v70(v52, v53);
  }

  return v56;
}

unint64_t sub_24618C5DC()
{
  result = qword_281391860;
  if (!qword_281391860)
  {
    type metadata accessor for ODIAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391860);
  }

  return result;
}

uint64_t sub_24618C634(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA00, &unk_2461A13A0);
    v2 = sub_24619FB9C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_24618C8FC(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for ODIAttributeKey(0);
    v15 = v14;
    swift_dynamicCast();
    sub_24618C958((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24618C958(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24618C958(v31, v32);
    v16 = *(v2 + 40);
    result = sub_24619FAAC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_24618C958(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24618C8FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_24618C958(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24618C968()
{
  v237 = sub_24619F67C();
  v240 = *(v237 - 8);
  v0 = *(v240 + 64);
  MEMORY[0x28223BE20](v237);
  v232 = &v198 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24619F28C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA08, &qword_2461A1430);
  v7 = swift_allocObject();
  v259 = v7;
  *(v7 + 16) = xmmword_2461A13B0;
  v239 = 0xD000000000000011;
  *(v7 + 32) = 0xD000000000000011;
  v205 = v7 + 32;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 40) = 0x80000002461A2960;
  *(v7 + 48) = v8;
  v222 = 0xD000000000000016;
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x80000002461A8730;
  v255 = 0xD000000000000019;
  *(v7 + 72) = v8;
  *(v7 + 80) = 0xD000000000000019;
  *(v7 + 88) = 0x80000002461A8750;
  *(v7 + 96) = v8;
  v221 = 0xD00000000000001ELL;
  *(v7 + 104) = 0xD00000000000001ELL;
  *(v7 + 112) = 0x80000002461A8770;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8C8, &qword_2461A0E58);
  v9 = *(sub_24619F1AC() - 8);
  v10 = *(v9 + 72);
  v251 = *(v9 + 80);
  v257 = (v251 + 32) & ~v251;
  v254 = 2 * v10;
  v224 = 12 * v10;
  v11 = swift_allocObject();
  v247 = xmmword_2461A0FB0;
  v245 = v11;
  *(v11 + 16) = xmmword_2461A0FB0;
  v13 = *(v3 + 104);
  v238 = *MEMORY[0x277D00648];
  v12 = v238;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  (v13)(v6, v12, v2);
  sub_24619F15C();
  v229 = *MEMORY[0x277D00640];
  v14 = v229;
  (v13)(v6, v229, v2);
  v230 = "com.apple.amp.all.sp.paidBuyV2";
  v233 = 0xD000000000000010;
  sub_24619F15C();
  (v13)(v6, v14, v2);
  v253 = 3 * v10;
  sub_24619F15C();
  v234 = *MEMORY[0x277D00708];
  v15 = *(v240 + 104);
  v240 += 104;
  v235 = v15;
  (v15)(v232);
  v231 = *MEMORY[0x277D00670];
  v13(v6);
  v250 = 4 * v10;
  sub_24619F16C();
  v249 = 5 * v10;
  v16 = *MEMORY[0x277D00660];
  (v13)(v6, v16, v2);
  sub_24619F15C();
  v246 = 6 * v10;
  v228 = v16;
  (v13)(v6, v16, v2);
  v241 = "parsedFamilyName";
  sub_24619F15C();
  v248 = 7 * v10;
  v242 = 8 * v10;
  (v13)(v6, v16, v2);
  v252 = "deviceCountryCode";
  sub_24619F15C();
  v17 = v238;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v236 = 9 * v10;
  (v13)(v6, v17, v2);
  sub_24619F15C();
  v226 = 2 * v249;
  (v13)(v6, v17, v2);
  sub_24619F15C();
  v256 = v10;
  v225 = 11 * v10;
  LODWORD(v244) = *MEMORY[0x277D00658];
  v13(v6);
  sub_24619F15C();
  v218 = 0xD000000000000015;
  v18 = v259;
  v259[15] = v245;
  v18[16] = 0xD000000000000015;
  v18[17] = 0x80000002461A87F0;
  v19 = swift_allocObject();
  *(v19 + 16) = v247;
  (v13)(v6, v17, v2);
  sub_24619F15C();
  (v13)(v6, v17, v2);
  sub_24619F15C();
  v20 = v229;
  (v13)(v6, v229, v2);
  sub_24619F15C();
  (v13)(v6, v20, v2);
  sub_24619F15C();
  v235(v232, v234, v237);
  v21 = v231;
  (v13)(v6, v231, v2);
  sub_24619F16C();
  v22 = v228;
  (v13)(v6, v228, v2);
  sub_24619F15C();
  (v13)(v6, v22, v2);
  sub_24619F15C();
  (v13)(v6, v22, v2);
  sub_24619F15C();
  (v13)(v6, v17, v2);
  sub_24619F15C();
  (v13)(v6, v17, v2);
  sub_24619F15C();
  (v13)(v6, v17, v2);
  sub_24619F15C();
  (v13)(v6, v244, v2);
  sub_24619F15C();
  v23 = v259;
  v24 = v221;
  v259[18] = v19;
  v23[19] = v24;
  v23[20] = 0x80000002461A8810;
  v23[21] = MEMORY[0x277D84F90];
  v209 = 0xD00000000000001ALL;
  v23[22] = 0xD00000000000001ALL;
  v23[23] = 0x80000002461A8830;
  v25 = swift_allocObject();
  v223 = xmmword_2461A13C0;
  *(v25 + 16) = xmmword_2461A13C0;
  (v13)(v6, v17, v2);
  sub_24619F15C();
  v26 = v234;
  v235(v232, v234, v237);
  (v13)(v6, v21, v2);
  sub_24619F16C();
  v244 = "com.apple.apc.provision.bw";
  v243 = *MEMORY[0x277D00650];
  v27 = v243;
  (v13)(v6, v243, v2);
  *&v247 = 0xD000000000000018;
  sub_24619F15C();
  v245 = "currentLocation.latitude";
  (v13)(v6, v27, v2);
  sub_24619F15C();
  v28 = v228;
  (v13)(v6, v228, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  v219 = 0xD00000000000001CLL;
  v29 = v259;
  v259[24] = v25;
  v29[25] = 0xD00000000000001CLL;
  v29[26] = 0x80000002461A8890;
  v30 = swift_allocObject();
  *(v30 + 16) = v223;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v235(v232, v26, v237);
  (v13)(v6, v231, v2);
  sub_24619F16C();
  v31 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v31, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  v32 = v259;
  v33 = v219;
  v259[27] = v30;
  v32[28] = v33;
  v32[29] = 0x80000002461A88B0;
  v34 = swift_allocObject();
  v227 = xmmword_2461A13D0;
  v220 = v34;
  *(v34 + 16) = xmmword_2461A13D0;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v35 = v232;
  v36 = v237;
  v235(v232, v234, v237);
  (v13)(v6, v231, v2);
  v37 = v35;
  sub_24619F16C();
  v38 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v38, v2);
  sub_24619F15C();
  v39 = v28;
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  (v13)(v6, v28, v2);
  sub_24619F15C();
  v40 = v235;
  v235(v37, *MEMORY[0x277D00700], v36);
  (v13)(v6, v39, v2);
  sub_24619F16C();
  *&v206 = 0xD000000000000020;
  v41 = v259;
  v259[30] = v220;
  v41[31] = 0xD000000000000020;
  v41[32] = 0x80000002461A88F0;
  v41[33] = MEMORY[0x277D84F90];
  v220 = 0xD00000000000001DLL;
  v41[34] = 0xD00000000000001DLL;
  v41[35] = 0x80000002461A8920;
  v42 = swift_allocObject();
  *(v42 + 16) = v223;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v40(v37, v234, v237);
  (v13)(v6, v231, v2);
  sub_24619F16C();
  v43 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v43, v2);
  sub_24619F15C();
  v44 = v228;
  (v13)(v6, v228, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  v45 = v259;
  v46 = v221;
  v259[36] = v42;
  v45[37] = v46;
  v45[38] = 0x80000002461A8940;
  v47 = swift_allocObject();
  *(v47 + 16) = v223;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v235(v37, v234, v237);
  (v13)(v6, v231, v2);
  sub_24619F16C();
  v48 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v48, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  v217 = 0xD00000000000001BLL;
  v49 = v259;
  v259[39] = v47;
  v49[40] = 0xD00000000000001BLL;
  v49[41] = 0x80000002461A8960;
  v49[42] = MEMORY[0x277D84F90];
  v49[43] = v220;
  v49[44] = 0x80000002461A8980;
  v50 = swift_allocObject();
  *(v50 + 16) = v223;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v235(v37, v234, v237);
  (v13)(v6, v231, v2);
  sub_24619F16C();
  v51 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v51, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  v52 = v259;
  v259[45] = v50;
  v52[46] = 0xD000000000000021;
  v52[47] = 0x80000002461A89A0;
  v52[48] = MEMORY[0x277D84F90];
  v52[49] = v217;
  v52[50] = 0x80000002461A89D0;
  v53 = swift_allocObject();
  *(v53 + 16) = v223;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v235(v232, v234, v237);
  v54 = v231;
  (v13)(v6, v231, v2);
  sub_24619F16C();
  v55 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v55, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  v56 = v259;
  v259[51] = v53;
  v56[52] = 0xD00000000000001FLL;
  v56[53] = 0x80000002461A89F0;
  v57 = swift_allocObject();
  *(v57 + 16) = v223;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  v235(v232, v234, v237);
  (v13)(v6, v54, v2);
  sub_24619F16C();
  v58 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v58, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  (v13)(v6, v44, v2);
  sub_24619F15C();
  v59 = v259;
  v60 = v222;
  v259[54] = v57;
  v59[55] = v60;
  v59[56] = 0x80000002461A8A10;
  *&v210 = swift_allocObject();
  *(v210 + 16) = xmmword_2461A13E0;
  v61 = v238;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  v220 = 0xD000000000000012;
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  LODWORD(v211) = *MEMORY[0x277D00678];
  v62 = v211;
  (v13)(v6, v211, v2);
  sub_24619F15C();
  (v13)(v6, v62, v2);
  *&v223 = 0xD000000000000017;
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  v212 = 0xD000000000000013;
  sub_24619F15C();
  v63 = v256;
  v218 = 13 * v256;
  (v13)(v6, v61, v2);
  sub_24619F15C();
  v217 = 16 * v63 - v254;
  (v13)(v6, v61, v2);
  sub_24619F15C();
  v216 = 15 * v63;
  v214 = 16 * v63;
  (v13)(v6, v61, v2);
  sub_24619F15C();
  (v13)(v6, v61, v2);
  sub_24619F15C();
  v215 = 16 * v63 + v256;
  (v13)(v6, v61, v2);
  sub_24619F15C();
  v213 = 2 * v236;
  v64 = v211;
  (v13)(v6, v211, v2);
  sub_24619F15C();
  (v13)(v6, v64, v2);
  sub_24619F15C();
  v65 = v238;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  (v13)(v6, v65, v2);
  sub_24619F15C();
  (v13)(v6, v65, v2);
  sub_24619F15C();
  (v13)(v6, v65, v2);
  sub_24619F15C();
  v66 = v228;
  (v13)(v6, v228, v2);
  sub_24619F15C();
  (v13)(v6, v66, v2);
  sub_24619F15C();
  (v13)(v6, v66, v2);
  sub_24619F15C();
  (v13)(v6, v66, v2);
  sub_24619F15C();
  v67 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v67, v2);
  sub_24619F15C();
  (v13)(v6, v65, v2);
  sub_24619F15C();
  (v13)(v6, v65, v2);
  v204 = "shippingPhoneNumber";
  sub_24619F15C();
  (v13)(v6, v65, v2);
  sub_24619F15C();
  (v13)(v6, v65, v2);
  sub_24619F15C();
  (v13)(v6, v65, v2);
  v208 = "transactionAmount";
  sub_24619F15C();
  v68 = v259;
  v259[57] = v210;
  v68[58] = v219;
  v68[59] = 0x80000002461A8D30;
  v69 = swift_allocObject();
  v207 = xmmword_2461A13F0;
  *&v210 = v69;
  *(v69 + 16) = xmmword_2461A13F0;
  v70 = v228;
  (v13)(v6, v228, v2);
  sub_24619F15C();
  (v13)(v6, v70, v2);
  sub_24619F15C();
  (v13)(v6, v70, v2);
  sub_24619F15C();
  (v13)(v6, v70, v2);
  sub_24619F15C();
  v71 = v243;
  (v13)(v6, v243, v2);
  sub_24619F15C();
  (v13)(v6, v71, v2);
  sub_24619F15C();
  v72 = v238;
  (v13)(v6, v238, v2);
  sub_24619F15C();
  (v13)(v6, v72, v2);
  sub_24619F15C();
  (v13)(v6, v72, v2);
  sub_24619F15C();
  (v13)(v6, v72, v2);
  sub_24619F15C();
  (v13)(v6, v72, v2);
  sub_24619F15C();
  v73 = v259;
  v259[60] = v210;
  v73[61] = 0xD000000000000014;
  v73[62] = 0x80000002461A8D50;
  v74 = swift_allocObject();
  v210 = xmmword_2461A0F80;
  v204 = v74;
  *(v74 + 16) = xmmword_2461A0F80;
  v75 = v2;
  (v13)(v6, v70, v2);
  sub_24619F15C();
  (v13)(v6, v70, v2);
  sub_24619F15C();
  (v13)(v6, v70, v2);
  sub_24619F15C();
  (v13)(v6, v70, v2);
  v199 = v13;
  sub_24619F15C();
  v76 = v232;
  v77 = v234;
  v78 = v237;
  v235(v232, v234, v237);
  v79 = v231;
  (v13)(v6, v231, v75);
  sub_24619F16C();
  v80 = v259;
  v259[63] = v204;
  v80[64] = v223;
  v80[65] = 0x80000002461A8D70;
  v203 = swift_allocObject();
  *(v203 + 1) = xmmword_2461A1400;
  v81 = v199;
  v199(v6, v238, v75);
  sub_24619F15C();
  v235(v76, v77, v78);
  v81(v6, v79, v75);
  v82 = v81;
  sub_24619F16C();
  v83 = v228;
  v84 = v75;
  v81(v6, v228, v75);
  sub_24619F15C();
  v81(v6, v83, v75);
  sub_24619F15C();
  v81(v6, v83, v75);
  sub_24619F15C();
  v85 = v238;
  v81(v6, v238, v75);
  sub_24619F15C();
  v81(v6, v85, v75);
  sub_24619F15C();
  v81(v6, v85, v75);
  sub_24619F15C();
  v81(v6, v85, v75);
  sub_24619F15C();
  v81(v6, v85, v75);
  sub_24619F15C();
  v81(v6, v85, v75);
  sub_24619F15C();
  v81(v6, v85, v75);
  sub_24619F15C();
  v86 = v243;
  v81(v6, v243, v75);
  v87 = v247;
  sub_24619F15C();
  v82(v6, v86, v75);
  sub_24619F15C();
  v88 = v211;
  v82(v6, v211, v75);
  sub_24619F15C();
  v204 = "com.apple.bc.validation";
  v82(v6, v88, v75);
  sub_24619F15C();
  v89 = v228;
  v82(v6, v228, v75);
  sub_24619F15C();
  v90 = v259;
  v259[66] = v203;
  v90[67] = v87;
  v90[68] = 0x80000002461A8DB0;
  v91 = MEMORY[0x277D84F90];
  v90[69] = MEMORY[0x277D84F90];
  v92 = v206;
  v90[70] = v206;
  v90[71] = 0x80000002461A8DD0;
  v90[72] = v91;
  v90[73] = v92;
  v90[74] = 0x80000002461A8E00;
  v93 = swift_allocObject();
  v206 = xmmword_2461A1410;
  v203 = v93;
  *(v93 + 16) = xmmword_2461A1410;
  v94 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v94, v84);
  sub_24619F15C();
  v82(v6, v94, v84);
  sub_24619F15C();
  v82(v6, v94, v84);
  sub_24619F15C();
  v82(v6, v94, v84);
  sub_24619F15C();
  v82(v6, v94, v84);
  sub_24619F15C();
  v82(v6, v94, v84);
  sub_24619F15C();
  v82(v6, v94, v84);
  sub_24619F15C();
  v95 = v235;
  v235(v232, v234, v237);
  v96 = v231;
  v82(v6, v231, v84);
  sub_24619F16C();
  v82(v6, v89, v84);
  sub_24619F15C();
  v82(v6, v89, v84);
  sub_24619F15C();
  v82(v6, v89, v84);
  sub_24619F15C();
  v97 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v97, v84);
  sub_24619F15C();
  v98 = v211;
  v82(v6, v211, v84);
  sub_24619F15C();
  v82(v6, v98, v84);
  sub_24619F15C();
  v99 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v99, v84);
  sub_24619F15C();
  v100 = v259;
  v259[75] = v203;
  v101 = v223;
  *(v100 + 76) = v223;
  *(v100 + 77) = 0x80000002461A8E30;
  v102 = MEMORY[0x277D84F90];
  *(v100 + 78) = MEMORY[0x277D84F90];
  *(v100 + 79) = 0xD00000000000002ALL;
  *(v100 + 80) = 0x80000002461A8E50;
  *(v100 + 81) = v102;
  *(v100 + 82) = 0xD000000000000026;
  *(v100 + 83) = 0x80000002461A8E80;
  *(v100 + 84) = v102;
  *(v100 + 85) = v101;
  *(v100 + 86) = 0x80000002461A8EB0;
  *(v100 + 87) = v102;
  *(v100 + 88) = v221;
  *(v100 + 89) = 0x80000002461A8ED0;
  *(v100 + 90) = v102;
  strcpy(v100 + 728, "com.apple.care");
  v100[743] = -18;
  v103 = swift_allocObject();
  *(v103 + 16) = v210;
  v95(v232, v234, v237);
  v82(v6, v96, v84);
  sub_24619F16C();
  v104 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v105 = v259;
  v259[93] = v103;
  v105[94] = v220;
  v105[95] = 0x80000002461A8EF0;
  v106 = swift_allocObject();
  v211 = xmmword_2461A1420;
  v204 = v106;
  *(v106 + 16) = xmmword_2461A1420;
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v107 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v107, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v108 = v259;
  v259[96] = v204;
  v108[97] = v220;
  v108[98] = 0x80000002461A8F10;
  v109 = swift_allocObject();
  *(v109 + 16) = v211;
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v110 = v104;
  v82(v6, v104, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v82(v6, v104, v84);
  sub_24619F15C();
  v111 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v111, v84);
  sub_24619F15C();
  v82(v6, v110, v84);
  sub_24619F15C();
  v112 = v259;
  v259[99] = v109;
  v112[100] = v220;
  v112[101] = 0x80000002461A8F30;
  *&v211 = swift_allocObject();
  *(v211 + 16) = v206;
  v113 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v113, v84);
  sub_24619F15C();
  v114 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v114, v84);
  sub_24619F15C();
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v82(v6, v113, v84);
  sub_24619F15C();
  v82(v6, v113, v84);
  sub_24619F15C();
  v82(v6, v114, v84);
  v204 = "com.apple.cash.p2p";
  sub_24619F15C();
  v82(v6, v114, v84);
  v203 = "parsedPeerFamilyName";
  sub_24619F15C();
  v82(v6, v113, v84);
  sub_24619F15C();
  v201 = "parsedPeerGivenName";
  v202 = "peerFormattedPhoneNumber";
  v200 = *MEMORY[0x277D00668];
  (v82)(v6);
  sub_24619F15C();
  v82(v6, v113, v84);
  sub_24619F15C();
  v115 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v82(v6, v115, v84);
  sub_24619F15C();
  v82(v6, v115, v84);
  sub_24619F15C();
  v116 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v116, v84);
  sub_24619F15C();
  v82(v6, v115, v84);
  sub_24619F15C();
  v117 = v259;
  v259[102] = v211;
  v117[103] = v219;
  v117[104] = 0x80000002461A8FD0;
  *&v211 = swift_allocObject();
  *(v211 + 16) = v207;
  v82(v6, v113, v84);
  sub_24619F15C();
  v82(v6, v113, v84);
  sub_24619F15C();
  v118 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v118, v84);
  sub_24619F15C();
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v119 = v115;
  v82(v6, v115, v84);
  sub_24619F15C();
  v82(v6, v115, v84);
  sub_24619F15C();
  v82(v6, v115, v84);
  sub_24619F15C();
  v120 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v120, v84);
  v121 = v255;
  sub_24619F15C();
  v82(v6, v119, v84);
  sub_24619F15C();
  v122 = v259;
  v259[105] = v211;
  v122[106] = v121;
  v122[107] = 0x80000002461A8FF0;
  v123 = swift_allocObject();
  v211 = xmmword_2461A0EF0;
  *(v123 + 16) = xmmword_2461A0EF0;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v119, v84);
  sub_24619F15C();
  v82(v6, v119, v84);
  sub_24619F15C();
  v124 = v259;
  v259[108] = v123;
  v124[109] = v222;
  v124[110] = 0x80000002461A9010;
  v222 = swift_allocObject();
  *(v222 + 16) = v206;
  v125 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v125, v84);
  sub_24619F15C();
  v126 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v126, v84);
  sub_24619F15C();
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v82(v6, v125, v84);
  sub_24619F15C();
  v127 = v125;
  v82(v6, v125, v84);
  sub_24619F15C();
  v82(v6, v126, v84);
  sub_24619F15C();
  v82(v6, v126, v84);
  sub_24619F15C();
  v82(v6, v125, v84);
  sub_24619F15C();
  v82(v6, v200, v84);
  sub_24619F15C();
  v82(v6, v125, v84);
  sub_24619F15C();
  v128 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v129 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v129, v84);
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v130 = v259;
  v259[111] = v222;
  v130[112] = 0xD000000000000014;
  v130[113] = 0x80000002461A9030;
  v131 = swift_allocObject();
  *(v131 + 16) = v207;
  v82(v6, v127, v84);
  sub_24619F15C();
  v82(v6, v127, v84);
  sub_24619F15C();
  v132 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v132, v84);
  sub_24619F15C();
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v82(v6, v128, v84);
  v133 = v239;
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v134 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v134, v84);
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v135 = v259;
  v259[114] = v131;
  v135[115] = v133;
  v135[116] = 0x80000002461A9050;
  v136 = swift_allocObject();
  *(v136 + 16) = v227;
  v137 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v137, v84);
  sub_24619F15C();
  v82(v6, v137, v84);
  sub_24619F15C();
  v82(v6, v137, v84);
  sub_24619F15C();
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v82(v6, v128, v84);
  sub_24619F15C();
  v138 = v128;
  v82(v6, v128, v84);
  sub_24619F15C();
  v139 = v259;
  v259[117] = v136;
  v139[118] = 0xD000000000000023;
  v139[119] = 0x80000002461A90B0;
  v140 = swift_allocObject();
  *(v140 + 16) = v211;
  v141 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v141, v84);
  sub_24619F15C();
  v82(v6, v138, v84);
  sub_24619F15C();
  v142 = v259;
  v259[120] = v140;
  v142[121] = 0xD000000000000014;
  v142[122] = 0x80000002461A90E0;
  v226 = swift_allocObject();
  *(v226 + 16) = v227;
  v143 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v143, v84);
  sub_24619F15C();
  v144 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v144, v84);
  sub_24619F15C();
  v82(v6, v143, v84);
  sub_24619F15C();
  v145 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v146 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v146, v84);
  sub_24619F15C();
  v82(v6, v145, v84);
  sub_24619F15C();
  v147 = v259;
  v259[123] = v226;
  v147[124] = v219;
  v147[125] = 0x80000002461A9100;
  v148 = swift_allocObject();
  *(v148 + 16) = v227;
  v82(v6, v143, v84);
  sub_24619F15C();
  v82(v6, v143, v84);
  sub_24619F15C();
  v149 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v149, v84);
  sub_24619F15C();
  v82(v6, v143, v84);
  sub_24619F15C();
  v150 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v151 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v151, v84);
  v152 = v255;
  sub_24619F15C();
  v153 = v150;
  v82(v6, v150, v84);
  sub_24619F15C();
  v154 = v259;
  v259[126] = v148;
  v154[127] = v152;
  v154[128] = 0x80000002461A9120;
  v155 = swift_allocObject();
  *(v155 + 16) = v227;
  v156 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v156, v84);
  sub_24619F15C();
  v157 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v157, v84);
  sub_24619F15C();
  v82(v6, v156, v84);
  sub_24619F15C();
  v82(v6, v153, v84);
  sub_24619F15C();
  v158 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v158, v84);
  v159 = v255;
  sub_24619F15C();
  v82(v6, v153, v84);
  sub_24619F15C();
  v160 = v259;
  v259[129] = v155;
  v160[130] = v159;
  v160[131] = 0x80000002461A9140;
  v161 = swift_allocObject();
  *(v161 + 16) = v227;
  v82(v6, v156, v84);
  sub_24619F15C();
  v82(v6, v156, v84);
  sub_24619F15C();
  v162 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v162, v84);
  sub_24619F15C();
  v82(v6, v156, v84);
  sub_24619F15C();
  v82(v6, v153, v84);
  sub_24619F15C();
  v163 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v163, v84);
  sub_24619F15C();
  v82(v6, v153, v84);
  sub_24619F15C();
  v164 = v259;
  v259[132] = v161;
  v164[133] = v209;
  v164[134] = 0x80000002461A9160;
  v226 = swift_allocObject();
  *(v226 + 16) = v227;
  v165 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v166 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v166, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v167 = v153;
  v82(v6, v153, v84);
  sub_24619F15C();
  v168 = v243;
  v82(v6, v243, v84);
  v169 = v247;
  sub_24619F15C();
  v82(v6, v168, v84);
  sub_24619F15C();
  v170 = v167;
  v82(v6, v167, v84);
  sub_24619F15C();
  v171 = v259;
  v259[135] = v226;
  v171[136] = v169;
  v171[137] = 0x80000002461A9180;
  v172 = swift_allocObject();
  *(v172 + 16) = v227;
  v82(v6, v165, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v173 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v173, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v82(v6, v170, v84);
  sub_24619F15C();
  v82(v6, v168, v84);
  sub_24619F15C();
  v82(v6, v168, v84);
  sub_24619F15C();
  v174 = v170;
  v82(v6, v170, v84);
  sub_24619F15C();
  v175 = v259;
  v259[138] = v172;
  v175[139] = v223;
  v175[140] = 0x80000002461A91A0;
  v176 = swift_allocObject();
  *(v176 + 16) = v227;
  v82(v6, v165, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v177 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v177, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v82(v6, v170, v84);
  sub_24619F15C();
  v178 = v243;
  v82(v6, v243, v84);
  v179 = v247;
  sub_24619F15C();
  v82(v6, v178, v84);
  sub_24619F15C();
  v82(v6, v174, v84);
  sub_24619F15C();
  v180 = v259;
  v259[141] = v176;
  v180[142] = v179;
  v180[143] = 0x80000002461A91C0;
  v181 = swift_allocObject();
  *(v181 + 16) = v227;
  v82(v6, v165, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v182 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v182, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v183 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v184 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v184, v84);
  sub_24619F15C();
  v82(v6, v183, v84);
  sub_24619F15C();
  v185 = v259;
  v259[144] = v181;
  v185[145] = v223;
  v185[146] = 0x80000002461A91E0;
  v186 = swift_allocObject();
  *(v186 + 16) = v227;
  v82(v6, v165, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v187 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v187, v84);
  sub_24619F15C();
  v82(v6, v165, v84);
  sub_24619F15C();
  v188 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v189 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v189, v84);
  sub_24619F15C();
  v82(v6, v188, v84);
  sub_24619F15C();
  v190 = v259;
  v259[147] = v186;
  v190[148] = v223;
  v190[149] = 0x80000002461A9200;
  v236 = swift_allocObject();
  *(v236 + 16) = v227;
  v191 = v238;
  v82(v6, v238, v84);
  sub_24619F15C();
  v82(v6, v191, v84);
  sub_24619F15C();
  v192 = v229;
  v82(v6, v229, v84);
  sub_24619F15C();
  v82(v6, v192, v84);
  sub_24619F15C();
  v82(v6, v191, v84);
  sub_24619F15C();
  v193 = v228;
  v82(v6, v228, v84);
  sub_24619F15C();
  v194 = v243;
  v82(v6, v243, v84);
  sub_24619F15C();
  v82(v6, v194, v84);
  sub_24619F15C();
  v82(v6, v193, v84);
  sub_24619F15C();
  v190[150] = v236;
  v190[151] = v221;
  v190[152] = 0x80000002461A9220;
  v195 = swift_allocObject();
  *(v195 + 16) = v210;
  v82(v6, v193, v84);
  sub_24619F15C();
  v82(v6, v193, v84);
  sub_24619F15C();
  v82(v6, v193, v84);
  sub_24619F15C();
  v82(v6, v193, v84);
  sub_24619F15C();
  v235(v232, v234, v237);
  v82(v6, v231, v84);
  sub_24619F16C();
  v190[153] = v195;
  v196 = sub_2461898B4(v190);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA10, &qword_2461A1438);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27EE3FA68 = v196;
  return result;
}

id ODIPartialAssessmentInitiator.__allocating_init(providerID:)(void *a1)
{
  v3 = sub_24619F64C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID] = a1;
  sub_24619F8BC();
  v9 = a1;
  sub_24619F62C();
  (*(v4 + 32))(&v8[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter], v7, v3);
  v12.receiver = v8;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id ODIPartialAssessmentInitiator.init(providerID:)(void *a1)
{
  v3 = sub_24619F64C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID] = a1;
  sub_24619F8BC();
  v8 = a1;
  sub_24619F62C();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter], v7, v3);
  v9 = type metadata accessor for ODIPartialAssessmentInitiator();
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

uint64_t type metadata accessor for ODIPartialAssessmentInitiator()
{
  result = qword_2813918A0;
  if (!qword_2813918A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_246196AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_24619EFDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24619F60C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  (*(v5 + 104))(v8, *MEMORY[0x277D00520], v4);
  sub_24619F63C();
  (*(v5 + 8))(v8, v4);
  sub_24619F5FC();
  v17 = sub_24619FB1C();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  sub_24619F5EC();
  v18 = *(v10 + 8);
  v18(v14, v9);
  v19 = sub_24619F5FC();
  v18(v16, v9);
  return v19;
}

id ODIPartialAssessmentInitiator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ODIPartialAssessmentInitiator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODIPartialAssessmentInitiator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_246196FA8()
{
  result = sub_24619F64C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2461970D8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_24619F7FC();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for ODIFieldsKey();
  v3[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461971CC, 0, 0);
}

uint64_t sub_2461971CC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v4 = *(*(v0 + 104) + 64);
  *(v0 + 152) = v4;
  v5 = sub_24619F46C();
  *(v0 + 160) = v5;
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = *(v2 + 20);
  v7 = *MEMORY[0x277D00608];
  *(v0 + 224) = v7;
  v8 = sub_24619F22C();
  *(v0 + 168) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 104);
  *(v0 + 176) = v10;
  *(v0 + 184) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v1 + v6, v7, v8);

  return MEMORY[0x2822009F8](sub_2461972E4, v4, 0);
}

uint64_t sub_2461972E4()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24619736C, 0, 0);
}

uint64_t sub_24619736C()
{
  if (*(*(v0 + 192) + 16) && (v1 = sub_2461659D4(*(v0 + 144)), (v2 & 1) != 0))
  {
    v22 = *(v0 + 224);
    v3 = *(v0 + 160);
    v23 = *(v0 + 168);
    v24 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    v21 = *(v0 + 88);
    v25 = *(*(*(v0 + 192) + 56) + 8 * v1);
    v26 = *(v0 + 184);

    sub_24616AF3C(v4);

    v10 = v7[7];
    __swift_project_boxed_opaque_existential_1(v7 + 3, v7[6]);
    sub_24619FAEC();
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD00000000000001FLL, 0x80000002461A9490);
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    (*(v5 + 104))(v6, *MEMORY[0x277D00760], v8);
    sub_24619F6DC();

    (*(v5 + 8))(v6, v8);
    v24(v21, v22, v23);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);

    v15 = *(v0 + 8);

    return v15(v25);
  }

  else
  {
    v17 = *(v0 + 144);

    sub_24616AF3C(v17);
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_2461975E4;
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);

    return sub_246199A70(v19);
  }
}

uint64_t sub_2461975E4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_2461976E4, 0, 0);
}

uint64_t sub_2461976E4()
{
  v1 = v0[26];
  v23 = v0[22];
  v24 = v0[23];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[11];
  v21 = v7;
  v22 = v0[21];
  if (v1)
  {
    v20 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    sub_24619FAEC();
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD00000000000001DLL, 0x80000002461A9470);
    v8 = v0[7];
    v9 = v0[8];
    (*(v3 + 104))(v4, *MEMORY[0x277D00760], v6);
    sub_24619F6DC();

    (*(v3 + 8))(v4, v6);
    v23(v21, *MEMORY[0x277D00600], v22);
    v10 = v0[18];
    v11 = v0[16];

    v12 = v0[1];

    return v12(v1);
  }

  else
  {
    v14 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    sub_24619FAEC();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD000000000000020, 0x80000002461A9440);
    v15 = v0[5];
    v16 = v0[6];
    (*(v3 + 104))(v4, *MEMORY[0x277D00760], v6);
    sub_24619F6DC();

    (*(v3 + 8))(v4, v6);
    v23(v21, *MEMORY[0x277D00610], v22);
    v17 = swift_task_alloc();
    v0[27] = v17;
    *v17 = v0;
    v17[1] = sub_246197A0C;
    v18 = v0[12];
    v19 = v0[13];

    return sub_246199D5C(v18);
  }
}

uint64_t sub_246197A0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v9 = *v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 128);

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_246197B48(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v4 = sub_24619EFDC();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = sub_24619F7FC();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = type metadata accessor for ODIFieldsKey();
  v2[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v12 = swift_task_alloc();
  v2[21] = v12;
  *v12 = v2;
  v12[1] = sub_246197CC8;

  return sub_246199A70(a1);
}

uint64_t sub_246197CC8(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_246197DC8, 0, 0);
}

uint64_t sub_246197DC8()
{
  if (v0[22])
  {

    v1 = v0[20];
    v2 = v0[18];
    v3 = v0[15];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *(v0[12] + 64);
    v0[23] = v6;

    return MEMORY[0x2822009F8](sub_246197E8C, v6, 0);
  }
}

uint64_t sub_246197E8C()
{
  v1 = *(v0 + 184);
  *(v0 + 264) = sub_246199558(*(v0 + 88)) & 1;

  return MEMORY[0x2822009F8](sub_246197F00, 0, 0);
}

uint64_t sub_246197F00()
{
  if (*(v0 + 264) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(*(v0 + 96) + 16);
    v23 = sub_24619F8BC();
    v24 = v3;
    MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    *(v0 + 192) = v23;
    *(v0 + 200) = v24;
    v4 = sub_24619F44C();
    v6 = v5;
    *(v0 + 208) = v5;
    sub_24619EFAC();
    *(v0 + 216) = sub_24619EF8C();
    v7 = *(MEMORY[0x277D004C0] + 4);
    v22 = (*MEMORY[0x277D004C0] + MEMORY[0x277D004C0]);
    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = sub_2461981B0;

    return v22(v4, v6);
  }

  else
  {
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = v13[7];
    __swift_project_boxed_opaque_existential_1(v13 + 3, v13[6]);
    sub_24619FAEC();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000015, 0x80000002461A94B0);
    sub_24619F46C();
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD000000000000015, 0x80000002461A94D0);
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    (*(v11 + 104))(v10, *MEMORY[0x277D00760], v12);
    sub_24619F6CC();

    (*(v11 + 8))(v10, v12);
    v18 = *(v0 + 160);
    v19 = *(v0 + 144);
    v20 = *(v0 + 120);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2461981B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_2461985B0;
  }

  else
  {
    v9 = v4[26];
    v8 = v4[27];
    v10 = v4[25];

    v4[30] = a1;
    v7 = sub_2461982F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2461982F4()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[11];
  v5 = sub_24619F46C();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  v6 = *(v3 + 20);
  v7 = *MEMORY[0x277D00600];
  v8 = sub_24619F22C();
  (*(*(v8 - 8) + 104))(v2 + v6, v7, v8);

  return MEMORY[0x2822009F8](sub_2461983F0, v1, 0);
}

uint64_t sub_2461983F0()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[20];
  swift_beginAccess();

  v4 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_24616A974(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v8;
  swift_endAccess();

  sub_24616AF3C(v3);
  v0[31] = v0[29];
  v6 = v0[23];

  return MEMORY[0x2822009F8](sub_2461984DC, v6, 0);
}

uint64_t sub_2461984DC()
{
  v1 = v0[31];
  v2 = v0[23];
  sub_24619963C(v0[11]);
  v0[32] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2461988AC, 0, 0);
  }

  else
  {
    v3 = v0[20];
    v4 = v0[18];
    v5 = v0[15];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2461985B0()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = sub_24619EE5C();
  v8 = [v7 code];

  (*(v5 + 104))(v4, *MEMORY[0x277D00550], v6);
  v9 = sub_24619EFCC();
  (*(v5 + 8))(v4, v6);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v13 = v0[12];
  v14 = v0[29];
  if (v8 == v9)
  {
    v16 = v0[24];
    v15 = v0[25];
    v23 = v13[7];
    __swift_project_boxed_opaque_existential_1(v13 + 3, v13[6]);
    sub_24619FAEC();

    MEMORY[0x24C19A830](v16, v15);

    MEMORY[0x24C19A830](46, 0xE100000000000000);
    (*(v11 + 104))(v10, *MEMORY[0x277D00760], v12);
    sub_24619F6DC();
  }

  else
  {
    v17 = v0[25];

    v18 = v13[7];
    __swift_project_boxed_opaque_existential_1(v13 + 3, v13[6]);
    sub_24619FAEC();
    MEMORY[0x24C19A830](0xD000000000000034, 0x80000002461A94F0);
    swift_getErrorValue();
    v19 = v0[2];
    v20 = v0[3];
    sub_24619FBEC();
    MEMORY[0x24C19A830](0x69726F6E6769202CLL, 0xEB000000002E676ELL);
    (*(v11 + 104))(v10, *MEMORY[0x277D00760], v12);
    sub_24619F6FC();
  }

  (*(v11 + 8))(v10, v12);
  v0[31] = 0;
  v21 = v0[23];

  return MEMORY[0x2822009F8](sub_2461984DC, v21, 0);
}

uint64_t sub_2461988AC()
{
  v1 = v0[32];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  (*(v3 + 104))(v2, *MEMORY[0x277D00760], v4);
  sub_24619F6EC();

  (*(v3 + 8))(v2, v4);
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[15];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2461989D0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = sub_24619F46C();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v3[19] = *(v6 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for ODIFieldsKey();
  v3[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246198B1C, 0, 0);
}

uint64_t sub_246198B1C()
{
  v1 = v0[14];
  v2 = *(v0[15] + 16);
  v28 = sub_24619F8BC();
  v29 = v3;
  MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  if (*(v1 + 16))
  {
    v4 = v0[14];
    v5 = sub_24616595C(v28, v29);
    v7 = v6;

    if (v7)
    {
      v8 = v0[24];
      v9 = v0[22];
      v10 = v0[17];
      v11 = v0[18];
      v12 = v0[15];
      v13 = v0[13];
      v0[25] = *(*(v0[14] + 56) + 8 * v5);
      v14 = *(v11 + 16);
      v0[26] = v14;
      v0[27] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14(v8, v13, v10);
      v15 = *(v9 + 20);
      v16 = *MEMORY[0x277D00608];
      v17 = sub_24619F22C();
      v0[28] = v17;
      v18 = *(v17 - 8);
      v19 = *(v18 + 104);
      v0[29] = v19;
      v0[30] = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v19(v8 + v15, v16, v17);
      v20 = *(v12 + 64);
      v0[31] = v20;

      return MEMORY[0x2822009F8](sub_246198D14, v20, 0);
    }
  }

  else
  {
  }

  v22 = v0[23];
  v21 = v0[24];
  v24 = v0[20];
  v23 = v0[21];
  v25 = v0[16];

  v26 = v0[1];

  return v26();
}

uint64_t sub_246198D14()
{
  v1 = v0[31];
  v3 = v0[24];
  v2 = v0[25];
  swift_beginAccess();

  v4 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_24616A974(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v7;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_246198DE4, 0, 0);
}

uint64_t sub_246198DE4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  (*(v0 + 208))(*(v0 + 168), *(v0 + 104), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_246198E7C, v1, 0);
}

uint64_t sub_246198E7C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  (*(v0 + 208))(v6, *(v0 + 104), *(v0 + 136));
  v4(v6 + *(v7 + 20), *MEMORY[0x277D00600], v3);
  v8 = *(v1 + 112);
  v9 = *(v0 + 184);
  if (*(v8 + 16))
  {
    v10 = *(v1 + 112);

    v11 = sub_2461659D4(v9);
    v9 = *(v0 + 184);
    if (v12)
    {
      v34 = *(*(v8 + 56) + 8 * v11);

      sub_24616AF3C(v9);

      goto LABEL_6;
    }
  }

  sub_24616AF3C(v9);
  v34 = 0;
LABEL_6:
  v13 = *(v0 + 248);
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  v18 = *(v0 + 144);
  v31 = *(v0 + 152);
  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  v21 = *(v0 + 120);
  v32 = *(v0 + 112);
  v33 = *(v0 + 200);
  v35 = *(v0 + 104);
  v22 = sub_24619F9CC();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_24616CB20(v21 + 24, v0 + 16);
  v14(v16, v17, v20);
  v23 = (*(v18 + 80) + 80) & ~*(v18 + 80);
  v24 = swift_allocObject();
  sub_24616D05C((v0 + 16), (v24 + 16));
  *(v24 + 7) = v34;
  *(v24 + 8) = v33;
  *(v24 + 9) = v32;
  (*(v18 + 32))(&v24[v23], v16, v20);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_2461A15D8;
  v25[5] = v24;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_2461A15E8;
  v26[5] = v25;

  v27 = sub_2461703A8(0, 0, v19, &unk_2461A15F8, v26);
  swift_beginAccess();
  v28 = *(v13 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v13 + 128);
  *(v13 + 128) = 0x8000000000000000;
  sub_24616AF98(v27, v35, isUniquelyReferenced_nonNull_native);
  *(v13 + 128) = v36;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24619916C, 0, 0);
}

uint64_t sub_24619916C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];

  (*(v5 + 8))(v3, v4);
  sub_24616AF3C(v1);
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_246199248(uint64_t a1)
{
  sub_24619FC8C();
  sub_24619F46C();
  sub_24619B410(&qword_27EE3F860, MEMORY[0x277D006C0]);
  sub_24619F86C();
  v2 = *(a1 + 20);
  sub_24619F22C();
  sub_24619B410(&qword_281391F90, MEMORY[0x277D00618]);
  sub_24619F86C();
  return sub_24619FCAC();
}

uint64_t sub_246199334(uint64_t a1, uint64_t a2)
{
  sub_24619F46C();
  sub_24619B410(&qword_27EE3F860, MEMORY[0x277D006C0]);
  sub_24619F86C();
  v3 = *(a2 + 20);
  sub_24619F22C();
  sub_24619B410(&qword_281391F90, MEMORY[0x277D00618]);
  return sub_24619F86C();
}

uint64_t sub_246199408(uint64_t a1, uint64_t a2)
{
  sub_24619FC8C();
  sub_24619F46C();
  sub_24619B410(&qword_27EE3F860, MEMORY[0x277D006C0]);
  sub_24619F86C();
  v3 = *(a2 + 20);
  sub_24619F22C();
  sub_24619B410(&qword_281391F90, MEMORY[0x277D00618]);
  sub_24619F86C();
  return sub_24619FCAC();
}

uint64_t sub_2461994F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_24619F45C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_24619F21C();
}

uint64_t sub_246199558(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 120);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = sub_246165AE8(a1);
  if ((v6 & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = *(*(v4 + 56) + v5);

  if ((v7 & 1) == 0)
  {
LABEL_6:
    swift_beginAccess();
    v9 = *(v2 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    v8 = 1;
    sub_24616AB04(1, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 120) = v12;
    swift_endAccess();
    return v8;
  }

  return 0;
}

uint64_t sub_24619963C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24619EFDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 120);
  if (*(v9 + 16))
  {

    v10 = sub_246165AE8(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + v10);

      if (v12)
      {
        swift_beginAccess();
        v13 = *(v2 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(v2 + 120);
        *(v2 + 120) = 0x8000000000000000;
        sub_24616AB04(0, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + 120) = v17;
        return swift_endAccess();
      }
    }

    else
    {
    }
  }

  (*(v5 + 104))(v8, *MEMORY[0x277D00528], v4);
  sub_24619F7AC();
  (*(v5 + 8))(v8, v4);
  return swift_willThrow();
}

uint64_t sub_246199858(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24616D024;

  return v7();
}

uint64_t sub_246199940(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_246161518;

  return v8();
}

uint64_t sub_246199A28()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_246199A70(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for ODIFieldsKey();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246199B04, 0, 0);
}

uint64_t sub_246199B04()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = *(v0[6] + 64);
  v0[9] = v4;
  v5 = sub_24619F46C();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = *(v2 + 20);
  v7 = *MEMORY[0x277D00600];
  v8 = sub_24619F22C();
  (*(*(v8 - 8) + 104))(v1 + v6, v7, v8);

  return MEMORY[0x2822009F8](sub_246199C04, v4, 0);
}

uint64_t sub_246199C04()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_246199C8C, 0, 0);
}

uint64_t sub_246199C8C()
{
  v1 = v0[8];
  if (*(v0[10] + 16))
  {
    v2 = sub_2461659D4(v0[8]);
    v1 = v0[8];
    if (v3)
    {
      v4 = *(*(v0[10] + 56) + 8 * v2);

      sub_24616AF3C(v1);

      goto LABEL_7;
    }

    v6 = v0[10];
  }

  else
  {
    v5 = v0[10];
  }

  sub_24616AF3C(v1);
  v4 = 0;
LABEL_7:
  v7 = v0[8];

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_246199D5C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_24619F46C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for ODIFieldsKey();
  v2[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246199E4C, 0, 0);
}

uint64_t sub_246199E4C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v8 = *(v1 + 20);
  v9 = *MEMORY[0x277D00610];
  v10 = sub_24619F22C();
  (*(*(v10 - 8) + 104))(v2 + v8, v9, v10);
  v11 = *(v6 + 64);
  v0[17] = v11;

  return MEMORY[0x2822009F8](sub_246199F30, v11, 0);
}

uint64_t sub_246199F30()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 144) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_246199FB8, 0, 0);
}

uint64_t sub_246199FB8()
{
  if (*(v0[18] + 16) && (v1 = sub_2461659D4(v0[14]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[18] + 56) + 8 * v1);

    v4 = v0[12];
    sub_24616AF3C(v0[14]);

    v5 = v0[1];

    return v5(v3);
  }

  else
  {
    v8 = v0[15];
    v7 = v0[16];
    v10 = v0[11];
    v9 = v0[12];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    v14 = *(v12 + 16);
    v8(v9, v13, v11);
    v15 = (*(v10 + 88))(v9, v11);
    if (v15 == *MEMORY[0x277D006B8])
    {
      v16 = sub_24616D0C0(v14);
    }

    else if (v15 == *MEMORY[0x277D006B0])
    {
      v16 = sub_24616D564(v14);
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      v16 = MEMORY[0x277D84F90];
    }

    v0[19] = v16;
    v17 = v0[17];

    return MEMORY[0x2822009F8](sub_24619A16C, v17, 0);
  }
}

uint64_t sub_24619A16C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  swift_beginAccess();

  v4 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_24616A974(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v7;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24619A240, 0, 0);
}

uint64_t sub_24619A240()
{
  v1 = v0[19];
  v2 = v0[12];
  sub_24616AF3C(v0[14]);

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_24619A2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_24619F7FC();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24619A390, 0, 0);
}

uint64_t sub_24619A390()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v53 = *(v0 + 40);
  v55 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = v4[3];
  *(v0 + 88) = v5;
  *(v0 + 96) = v4[4];
  *(v0 + 104) = __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = *MEMORY[0x277D00760];
  *(v0 + 192) = v6;
  v57 = v6;
  v56 = *(v2 + 104);
  *(v0 + 112) = v56;
  *(v0 + 120) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v56(v1, v6, v3);
  sub_24619F6CC();
  v7 = *(v2 + 8);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  sub_24619FAEC();

  *(v0 + 16) = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA28, &unk_2461A1600);
  v8 = sub_24619F8DC();
  MEMORY[0x24C19A830](v8);

  v56(v1, v57, v3);
  sub_24619F6CC();

  v7(v1, v3);
  sub_24619FAEC();

  v9 = sub_24619F1AC();
  v10 = MEMORY[0x24C19A8B0](v53, v9);
  MEMORY[0x24C19A830](v10);

  v56(v1, v57, v3);
  sub_24619F6CC();

  v54 = v7;
  v7(v1, v3);
  if (v55)
  {
    if (sub_24619AD6C(*(v0 + 40), v55))
    {
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      v56(v11, v57, v12);
      sub_24619F6CC();
      v54(v11, v12);
LABEL_17:
      v45 = *(v0 + 128);
      v44 = *(v0 + 136);
      v46 = *(v0 + 120);
      v47 = *(v0 + 96);
      v48 = *(v0 + 104);
      v49 = *(v0 + 80);
      v50 = *(v0 + 64);
      (*(v0 + 112))(v49, *(v0 + 192), v50);
      sub_24619F6CC();
      v45(v49, v50);

      v51 = *(v0 + 8);

      return v51();
    }

    v14 = 0x65736C6166;
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1702195828;
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 64);
  v17 = *(v0 + 48);
  sub_24619FAEC();

  MEMORY[0x24C19A830](v14, v13);

  MEMORY[0x24C19A830](41, 0xE100000000000000);
  v56(v15, v57, v16);
  sub_24619F6CC();

  v54(v15, v16);
  v18 = *(v17 + 32);
  *(v0 + 196) = v18;
  v19 = -1;
  v20 = -1 << v18;
  if (-(-1 << v18) < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v17 + 64);

  if (!v21)
  {
    v24 = 0;
    while (((63 - v20) >> 6) - 1 != v24)
    {
      v22 = v24 + 1;
      v23 = *(v0 + 48);
      v21 = *(v23 + 8 * v24++ + 72);
      if (v21)
      {
        goto LABEL_13;
      }
    }

    v58 = *(v0 + 128);
    v59 = *(v0 + 136);
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);
    v37 = *(v0 + 192);
    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v41 = *(v0 + 80);
    v40 = *(v0 + 88);
    v42 = *(v0 + 64);
    v43 = *(v0 + 48);

    v35(v41, v37, v42);
    sub_24619F6CC();
    v58(v41, v42);
    goto LABEL_17;
  }

  v22 = 0;
  v23 = *(v0 + 48);
LABEL_13:
  *(v0 + 144) = v21;
  *(v0 + 152) = v22;
  v25 = *(v0 + 56);
  v26 = __clz(__rbit64(v21)) | (v22 << 6);
  v27 = (*(v23 + 48) + 16 * v26);
  v28 = *v27;
  v29 = v27[1];
  *(v0 + 160) = *(*(v23 + 56) + 8 * v26);
  sub_24619EFAC();

  *(v0 + 168) = sub_24619EF8C();
  v30 = sub_24619F44C();
  v32 = v31;

  *(v0 + 176) = v30;
  *(v0 + 184) = v32;
  sub_24619B410(qword_281391FB0, MEMORY[0x277D004C8]);
  v34 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24619AA30, v34, v33);
}

uint64_t sub_24619AA30()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  sub_24619EF9C();

  return MEMORY[0x2822009F8](sub_24619AAC4, 0, 0);
}

uint64_t sub_24619AAC4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 152);
  v5 = (*(v3 + 144) - 1) & *(v3 + 144);
  if (v5)
  {
    v6 = *(v3 + 48);
LABEL_7:
    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    v8 = *(v3 + 56);
    v9 = __clz(__rbit64(v5)) | (v4 << 6);
    v10 = (*(v6 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    *(v3 + 160) = *(*(v6 + 56) + 8 * v9);
    sub_24619EFAC();

    *(v3 + 168) = sub_24619EF8C();
    v13 = sub_24619F44C();
    v15 = v14;

    *(v3 + 176) = v13;
    *(v3 + 184) = v15;
    sub_24619B410(qword_281391FB0, MEMORY[0x277D004C8]);
    v16 = sub_24619F99C();
    v18 = v17;
    a1 = sub_24619AA30;
    a2 = v16;
    a3 = v18;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      if (v7 >= (((1 << *(v3 + 196)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v3 + 48);
      v5 = *(v6 + 8 * v7 + 64);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }

    v37 = *(v3 + 128);
    v38 = *(v3 + 136);
    v19 = *(v3 + 112);
    v20 = *(v3 + 120);
    v21 = *(v3 + 192);
    v23 = *(v3 + 96);
    v22 = *(v3 + 104);
    v25 = *(v3 + 80);
    v24 = *(v3 + 88);
    v26 = *(v3 + 64);
    v27 = *(v3 + 48);

    v19(v25, v21, v26);
    sub_24619F6CC();
    v37(v25, v26);
    v29 = *(v3 + 128);
    v28 = *(v3 + 136);
    v30 = *(v3 + 120);
    v31 = *(v3 + 96);
    v32 = *(v3 + 104);
    v33 = *(v3 + 80);
    v34 = *(v3 + 64);
    (*(v3 + 112))(v33, *(v3 + 192), v34);
    sub_24619F6CC();
    v29(v33, v34);

    v35 = *(v3 + 8);

    return v35();
  }
}

uint64_t sub_24619AD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24619F1AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_24619B410(&qword_281391FA0, MEMORY[0x277D005E0]);
    v22 = sub_24619F87C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24619AF80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODIFieldsKey()
{
  result = qword_281391F58;
  if (!qword_281391F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24619B084()
{
  result = sub_24619F46C();
  if (v1 <= 0x3F)
  {
    result = sub_24619F22C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24619B150()
{
  v2 = *(sub_24619F46C() - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_246161518;

  return sub_24619A2C8((v0 + 2), v4, v5, v6, v0 + v3);
}

uint64_t sub_24619B244()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24616D024;

  return sub_246199858(v2, v3, v5);
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24619B344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24616D024;

  return sub_246199940(a1, v4, v5, v7);
}

uint64_t sub_24619B410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24619B458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_24619F7FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24619EEFC();
  v18 = MEMORY[0x277D004B0];
  __swift_allocate_boxed_opaque_existential_1(&v16);
  sub_24619EECC();
  sub_24616D05C(&v16, v3 + 24);
  sub_24616CB20(v3 + 24, &v16);
  __swift_project_boxed_opaque_existential_1(&v16, v17);
  (*(v7 + 104))(v10, *MEMORY[0x277D00770], v6);
  sub_24619F6DC();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(&v16);
  *(v3 + 16) = a3;
  type metadata accessor for ODIFieldsManager.FieldsKeeper();
  v11 = swift_allocObject();
  v12 = a3;
  swift_defaultActor_initialize();
  v13 = MEMORY[0x277D84F90];
  v11[14] = sub_2461899D8(MEMORY[0x277D84F90]);
  v11[15] = sub_246189BBC(v13);
  v11[16] = sub_246189DA4(v13);
  *(v4 + 64) = v11;
  return v4;
}

BOOL sub_24619B648(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v5 = 5;
      return v2 < v5;
    }

LABEL_6:
    v6 = v3 > 1;
    if (v3 ^ 3 | v4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v3 ^ 2 | v4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v3 | v4) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v2 < v5;
  }

  if (*(a2 + 16))
  {
    v2 = 5;
    goto LABEL_6;
  }

  v10 = *(a1 + 8) < v4;
  if (v2 == v3)
  {
    return v10;
  }

  else
  {
    return v3 < v2;
  }
}

BOOL sub_24619B6F0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a2 + 16))
  {
    if (!*(a1 + 16))
    {
      v5 = 5;
      return v4 >= v5;
    }

LABEL_6:
    v6 = v2 > 1;
    if (v2 ^ 3 | v3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v2 ^ 2 | v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v2 | v3) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v4 >= v5;
  }

  if (*(a1 + 16))
  {
    v4 = 5;
    goto LABEL_6;
  }

  v10 = *(a2 + 8) < v3;
  if (v4 == v2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v2 < v4;
  }

  return !v11;
}

BOOL sub_24619B7A0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v5 = 5;
      return v2 >= v5;
    }

LABEL_6:
    v6 = v3 > 1;
    if (v3 ^ 3 | v4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v3 ^ 2 | v4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v3 | v4) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v2 >= v5;
  }

  if (*(a2 + 16))
  {
    v2 = 5;
    goto LABEL_6;
  }

  v10 = *(a1 + 8) < v4;
  if (v2 == v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v3 < v2;
  }

  return !v11;
}

BOOL sub_24619B850(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a2 + 16))
  {
    if (!*(a1 + 16))
    {
      v5 = 5;
      return v4 < v5;
    }

LABEL_6:
    v6 = v2 > 1;
    if (v2 ^ 3 | v3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v2 ^ 2 | v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v2 | v3) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v4 < v5;
  }

  if (*(a1 + 16))
  {
    v4 = 5;
    goto LABEL_6;
  }

  v10 = *(a2 + 8) < v3;
  if (v4 == v2)
  {
    return v10;
  }

  else
  {
    return v2 < v4;
  }
}

uint64_t sub_24619B8F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24619E860(*a1, a1[1], a1[2]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 17) = 0;
  return result;
}

void sub_24619B938(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = 5;
  if (*(v1 + 16))
  {
    v4 = *v1;
    v2 = 0;
    v3 = 0;
  }

  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_24619B990()
{
  v1 = *v0;
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](v1);
  return sub_24619FCAC();
}

uint64_t sub_24619BA04()
{
  v1 = *v0;
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](v1);
  return sub_24619FCAC();
}

uint64_t *sub_24619BA48@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24619BAC4()
{
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](0);
  return sub_24619FCAC();
}

uint64_t sub_24619BB30()
{
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](0);
  return sub_24619FCAC();
}

uint64_t sub_24619BB80()
{
  v1 = v0;
  v2 = sub_24619F7FC();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24619F60C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = sub_24619F11C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v45 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  swift_beginAccess();
  v18 = v17;
  v19 = v1 + v17;
  v20 = v1;
  v21 = *(v7 + 16);
  v21(v12, v19, v6);
  if ((*(v7 + 88))(v12, v6) == *MEMORY[0x277D006F0])
  {
    v43 = v5;
    (*(v7 + 96))(v12, v6);
    v41 = v14;
    v42 = v13;
    v22 = *(v14 + 32);
    v23 = v45;
    v22(v45, v12, v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = v21;
    v26 = v46;
    v44 = v18;
    if (Strong)
    {
      v27 = Strong;
      v25(v46, v20 + v44, v6);
      sub_24619F5FC();
      v40 = v25;
      (*(v7 + 8))(v26, v6);
      v28 = sub_24619F88C();

      sub_24619F10C();
      v29 = sub_24619F88C();

      [v27 didChangeStateWith:v28 assessmentID:v29];

      v25 = v40;
      swift_unknownObjectRelease();
    }

    v30 = *(v20 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24);
    v40 = *(v20 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 32);
    v39 = __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), v30);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_24619FAEC();

    v49 = 0xD000000000000029;
    v50 = 0x80000002461A9930;
    v31 = sub_24619F10C();
    MEMORY[0x24C19A830](v31);

    MEMORY[0x24C19A830](8250, 0xE200000000000000);
    v25(v26, v20 + v44, v6);
    v32 = sub_24619F5FC();
    v34 = v33;
    (*(v7 + 8))(v26, v6);
    MEMORY[0x24C19A830](v32, v34);

    MEMORY[0x24C19A830](93, 0xE100000000000000);
    v36 = v47;
    v35 = v48;
    v37 = v43;
    (*(v47 + 104))(v43, *MEMORY[0x277D00758], v48);
    sub_24619F6DC();

    (*(v36 + 8))(v37, v35);
    result = (*(v41 + 8))(v23, v42);
  }

  else
  {
    result = (*(v7 + 8))(v12, v6);
  }

  if (*(v20 + 136) == 1 && !(*(v20 + 120) ^ 2 | *(v20 + 128)))
  {
    swift_beginAccess();
    sub_24619F2FC();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24619C0B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = sub_24619F7FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 120);
  if (*(v4 + 136))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  if (a3)
  {
    v14 = 5;
LABEL_6:
    v15 = 1;
    if (a1 <= 1)
    {
      if (!(a1 | a2))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (a1 ^ 2 | a2)
      {
        if (a1 ^ 3 | a2)
        {
          if (v14 < 4)
          {
            goto LABEL_20;
          }
        }

        else if (v14 < 3)
        {
          goto LABEL_20;
        }

LABEL_17:
        v16 = *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 32);
        __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24));
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_24619FAEC();
        v29 = v26;
        v30 = v27;
        MEMORY[0x24C19A830](0xD00000000000001FLL, 0x80000002461A98F0);
        v26 = a1;
        v27 = a2;
        v28 = a3 & 1;
        sub_24619FB6C();
        (*(v10 + 104))(v13, *MEMORY[0x277D00758], v9);
        sub_24619F6CC();

        return (*(v10 + 8))(v13, v9);
      }

      v15 = 2;
    }

    if (v14 >= v15)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v14 == a1)
  {
    if (*(v4 + 128) < a2)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v14 <= a1)
  {
    goto LABEL_17;
  }

LABEL_20:
  v18 = *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24);
  v24[1] = *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 32);
  v24[0] = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), v18);
  v26 = 0;
  v27 = 0xE000000000000000;
  v25 = a4;
  v19 = v4;
  sub_24619FAEC();
  v29 = v26;
  v30 = v27;
  MEMORY[0x24C19A830](0xD00000000000001FLL, 0x80000002461A9910);
  v26 = a1;
  v27 = a2;
  v20 = a3 & 1;
  v28 = v20;
  sub_24619FB6C();
  (*(v10 + 104))(v13, *MEMORY[0x277D00758], v9);
  sub_24619F6CC();

  (*(v10 + 8))(v13, v9);
  v21 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  swift_beginAccess();
  v22 = sub_24619F60C();
  v23 = v25;
  (*(*(v22 - 8) + 24))(v19 + v21, v25, v22);
  swift_endAccess();
  *(v19 + 120) = a1;
  *(v19 + 128) = a2;
  *(v19 + 136) = v20;
  sub_24619BB80();
  return sub_24619C48C(v23, a1, a2);
}

uint64_t sub_24619C48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v4 = sub_24619F58C();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24619F06C();
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = sub_24619F11C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24619F60C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D006F0])
  {
    (*(v18 + 96))(v21, v17);
    (*(v13 + 32))(v16, v21, v12);
    sub_24619F10C();
    sub_24619F04C();
    v27 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
    v28 = v47;
    swift_beginAccess();
    v29 = *(v28 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + v27) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_246165784(0, v29[2] + 1, 1, v29);
      *(v28 + v27) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_246165784(v31 > 1, v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    (*(v44 + 32))(v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v32, v11, v46);
    *(v28 + v27) = v29;
    swift_endAccess();
    return (*(v13 + 8))(v16, v12);
  }

  else if (v22 == *MEMORY[0x277D006E8])
  {
    (*(v18 + 96))(v21, v17);
    v24 = v40;
    v23 = v41;
    v25 = v42;
    (*(v41 + 32))(v40, v21, v42);
    sub_24619F57C();
    sub_24619F04C();
    v33 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
    v34 = v47;
    swift_beginAccess();
    v35 = *(v34 + v33);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v33) = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_246165784(0, v35[2] + 1, 1, v35);
      *(v34 + v33) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_246165784(v37 > 1, v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    (*(v44 + 32))(v35 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, v43, v46);
    *(v34 + v33) = v35;
    swift_endAccess();
    return (*(v23 + 8))(v24, v25);
  }

  else
  {
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_24619CC30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_24619EFDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24619F60C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_initiator);
  (*(v5 + 104))(v8, *MEMORY[0x277D00510], v4);
  sub_24619F63C();
  (*(v5 + 8))(v8, v4);
  sub_24619F5FC();
  v18 = sub_24619FB1C();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  sub_24619F5EC();
  v19 = *(v10 + 8);
  v19(v14, v9);
  sub_24619C0B4(1, 0, 1, v16);
  return (v19)(v16, v9);
}

uint64_t sub_24619CF04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_24619EFDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24619F60C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_initiator);
  (*(v5 + 104))(v8, *MEMORY[0x277D00518], v4);
  sub_24619F63C();
  (*(v5 + 8))(v8, v4);
  sub_24619F5FC();
  v18 = sub_24619FB1C();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  sub_24619F5EC();
  v19 = *(v10 + 8);
  v19(v14, v9);
  sub_24619C0B4(2, 0, 1, v16);
  return (v19)(v16, v9);
}

uint64_t sub_24619D1D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v53 = sub_24619F06C();
  v5 = *(v53 - 8);
  v6 = *(v5 + 8);
  v7 = MEMORY[0x28223BE20](v53);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = sub_24619F7FC();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24);
  v50 = *(v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 32);
  v46 = (v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), v18);
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000046, 0x80000002461A97B0);
  v52 = a1;
  MEMORY[0x24C19A830](a1, v51);
  v19 = v14[13];
  v44 = *MEMORY[0x277D00758];
  v45 = v14 + 13;
  v43 = v19;
  v19(v17);
  sub_24619F6DC();

  v20 = v14[1];
  v47 = v17;
  v48 = v14 + 1;
  v42 = v20;
  v20(v17, v13);
  v21 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v41 = v21;
  v22 = *&v21[v2];
  v49 = *(v22 + 16);
  if (!v49)
  {
LABEL_12:
    v29 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_24619FAEC();

    v54 = 0xD000000000000027;
    v55 = 0x80000002461A9800;
    MEMORY[0x24C19A830](v52, v51);
    v30 = v47;
    v43(v47, v44, v13);
    sub_24619F6FC();

    return v42(v30, v13);
  }

  v36 = v13;
  v37 = v2;
  v38 = (v5[80] + 32) & ~v5[80];
  v23 = v22 + v38;
  v50 = v5 + 16;
  v24 = (v5 + 8);

  v25 = 0;
  while (1)
  {
    if (v25 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v3 = *(v5 + 9) * v25;
    v17 = v5;
    v5 = *(v5 + 2);
    v21 = v53;
    (v5)(v12, v23 + v3, v53);
    v26 = sub_24619F03C();
    if (!v27)
    {
      (*v24)(v12, v21);
      goto LABEL_4;
    }

    if (v26 == v52 && v27 == v51)
    {
      break;
    }

    v28 = sub_24619FBFC();

    v21 = *v24;
    (*v24)(v12, v53);
    if (v28)
    {
      goto LABEL_14;
    }

LABEL_4:
    ++v25;
    v5 = v17;
    if (v49 == v25)
    {

      v13 = v36;
      goto LABEL_12;
    }
  }

  v21 = *v24;
  (*v24)(v12, v53);
LABEL_14:

  v22 = v37;
  v12 = v41;
  v32 = *&v41[v37];
  if (v25 >= *(v32 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v39;
  v34 = v53;
  (v5)(v39, v32 + v38 + v3, v53);
  v5 = v40;
  sub_24619F05C();
  (v21)(v33, v34);
  swift_beginAccess();
  v21 = *&v12[v22];
  result = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v22] = v21;
  if (result)
  {
    goto LABEL_16;
  }

LABEL_21:
  result = sub_24619E1E8(v21);
  v21 = result;
  *&v12[v22] = result;
LABEL_16:
  if (v25 >= *(v21 + 2))
  {
    __break(1u);
  }

  else
  {
    v17[5](&v21[v38 + v3], v5, v53);
    *&v12[v22] = v21;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24619D774(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24619F1AC();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return result;
  }

  v13 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized;
  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v16 = (a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
  v36 = *(v14 + 56);
  v37 = v15;
  HIDWORD(v35) = a2 & 1;
  v38 = v14;
  v17 = (v14 - 8);
  v15(v11, v16, v6);
  while (1)
  {
    swift_beginAccess();
    v19 = *(v3 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v3 + v13);
    v21 = v39;
    *(v3 + v13) = 0x8000000000000000;
    v22 = sub_246165BBC(v11);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v21[3] < v27)
    {
      sub_246168ADC(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_246165BBC(v11);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

LABEL_11:
      v30 = v39;
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v34 = v22;
    sub_24616A104();
    v22 = v34;
    v30 = v39;
    if (v28)
    {
LABEL_3:
      *(v30[7] + v22) = BYTE4(v35);
      (*v17)(v11, v6);
      goto LABEL_4;
    }

LABEL_12:
    v30[(v22 >> 6) + 8] |= 1 << v22;
    v31 = v22;
    v37(v30[6] + v22 * v36, v11, v6);
    *(v30[7] + v31) = BYTE4(v35);
    (*v17)(v11, v6);
    v32 = v30[2];
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_18;
    }

    v30[2] = v33;
LABEL_4:
    v18 = *(v3 + v13);
    *(v3 + v13) = v30;

    result = swift_endAccess();
    v16 += v36;
    if (!--v12)
    {
      return result;
    }

    v37(v11, v16, v6);
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_24619FC1C();
  __break(1u);
  return result;
}

uint64_t sub_24619DA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24619E908(a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  v15 = (*(*(v14 - 8) + 48))(v13, 5, v14);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      swift_beginAccess();
      sub_24619F33C();
    }

    else if (v15 == 4)
    {
      swift_beginAccess();
      sub_24619F34C();
    }

    else
    {
      swift_beginAccess();
      sub_24619F31C();
    }

    goto LABEL_12;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      swift_beginAccess();
      sub_24619F32C();
    }

    else
    {
      swift_beginAccess();
      sub_24619F2FC();
    }

LABEL_12:
    swift_endAccess();
    goto LABEL_13;
  }

  sub_24619E96C(v13, v9);
  swift_beginAccess();
  sub_24619F30C();
  swift_endAccess();
  sub_24619E9DC(v9);
LABEL_13:
  v16 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v17 = sub_24619F3FC();
  return (*(*(v17 - 8) + 16))(a2, v3 + v16, v17);
}

uint64_t sub_24619DCC4()
{
  v1 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  v2 = sub_24619F60C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized);

  v4 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  v5 = sub_24619F3FC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger));

  v6 = *(v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker);

  sub_24616CAF8(v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_delegate);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24619DDF4()
{
  result = sub_24619F60C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24619F3FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24619DF80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24619DFA0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceDataOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceDataOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24619E13C()
{
  result = qword_27EE3FA30;
  if (!qword_27EE3FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3FA30);
  }

  return result;
}

unint64_t sub_24619E194()
{
  result = qword_27EE3FA38;
  if (!qword_27EE3FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3FA38);
  }

  return result;
}

uint64_t sub_24619E1FC(unint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (!(a1 ^ 3 | a2))
        {
          return (a6 & 1) != 0 && !(a4 ^ 3 | a5);
        }

        if ((a6 & 1) != 0 && __PAIR128__(a5, a4) >= 4)
        {
          return 1;
        }
      }

      else if ((a6 & 1) != 0 && !(a4 ^ 2 | a5))
      {
        return 1;
      }

      return 0;
    }

    if (!(a1 | a2))
    {
      return (a6 & 1) != 0 && !(a4 | a5);
    }

    return (a6 & 1) != 0 && !(a4 ^ 1 | a5);
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    return a1 == a4 && a2 == a5;
  }
}

uint64_t sub_24619E2C0(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v46 = a3;
  v42 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v37 - v7;
  v8 = sub_24619F60C();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v37 - v12;
  v13 = sub_24619F64C();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24619EFDC();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 1;
  *(v3 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized) = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTriggered) = 0;
  sub_24619F3EC();
  v21 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F850, &unk_2461A18B0);
  v22 = *(sub_24619F06C() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2461A0FC0;
  v41 = "com.apple.tdm.trustedinference";
  v39 = *MEMORY[0x277D00520];
  v38 = v17[13];
  v38(v20);
  sub_24619EFCC();
  v40 = v17[1];
  v40(v20, v16);
  sub_24619F04C();
  *(v3 + v21) = v25;
  swift_unknownObjectWeakInit();
  sub_24616CB20(v52, v3 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger);
  swift_unknownObjectWeakAssign();
  v26 = type metadata accessor for ODIPartialAssessmentInitiator();
  v27 = objc_allocWithZone(v26);
  v28 = v42;
  *&v27[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID] = v42;
  sub_24619F8BC();
  v29 = v28;
  v30 = v43;
  sub_24619F62C();
  (*(v44 + 32))(&v27[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter], v30, v45);
  v53.receiver = v27;
  v53.super_class = v26;
  *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_initiator) = objc_msgSendSuper2(&v53, sel_init);
  (v38)(v20, v39, v16);
  v31 = v47;
  sub_24619F63C();
  v40(v20, v16);
  sub_24619F5FC();
  v32 = sub_24619FB1C();
  (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
  v33 = v48;
  sub_24619F5EC();
  __swift_destroy_boxed_opaque_existential_1(v52);
  v35 = v50;
  v34 = v51;
  (*(v50 + 8))(v31, v51);
  (*(v35 + 32))(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment, v33, v34);
  return v4;
}

uint64_t sub_24619E860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 3;
  if (a2 | a3)
  {
    v3 = 0;
  }

  if (a1 == 5)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 4)
  {
    v4 = 4;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  if (a1 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 2)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24619E908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24619E96C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24619E9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for EmptyAssessmentError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EmptyAssessmentError(_WORD *result, int a2, int a3)
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

uint64_t sub_24619EB54()
{
  sub_24619EBAC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24619EBAC()
{
  if (!qword_281391838)
  {
    sub_24619EBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_281391838);
    }
  }
}

void sub_24619EBF4()
{
  if (!qword_281391830)
  {
    sub_24619FB1C();
    v0 = sub_24619FA6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281391830);
    }
  }
}

unint64_t sub_24619EC50()
{
  result = qword_27EE3FA40;
  if (!qword_27EE3FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3FA40);
  }

  return result;
}