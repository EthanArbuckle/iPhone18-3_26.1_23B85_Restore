uint64_t sub_228A1011C(uint64_t result, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_228A0FE98(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_228A10278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228A102DC()
{
  result = qword_27D863A78;
  if (!qword_27D863A78)
  {
    sub_228A14AE8(255, &qword_27D863A70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863A78);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228A10390()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_228A103E8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_22911C78C();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2289E7890(v2, 0);

    v1 = sub_2289E84B8(&v5, (v3 + 32), v2, v1);
    sub_2289C8624();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_228A10498(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_228A13964(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_228A10528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2289B3574();
  result = sub_22911CA7C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = *(v9 + 40);
    v21 = v18;
    v32 = v19;
    result = sub_22911C6AC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      v4 = v17;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v21;
    *(*(v9 + 56) + 8 * v25) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_228A1074C(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_22911C00C();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v39 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v31 = &v29 - v16;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v27)
  {
    v18 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v34 = (v32 + 32);
    v35 = (v32 + 48);
    v19 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v40 = v15;
    v36 = i;
    v33 = a1;
    while (1)
    {
      if (v38)
      {
        v15 = MEMORY[0x22AAC6410](v18, a1);
      }

      else
      {
        if (v18 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a1 + 8 * v18 + 32);
      }

      v21 = v15;
      a1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v41 = v15;
      sub_228A0E320(&v41, a3, v10);
      if (v3)
      {

        return v19;
      }

      v22 = v40;
      if ((*v35)(v10, 1, v40) == 1)
      {
        v15 = sub_228A14028(v10, &qword_27D863AC0, MEMORY[0x277CCB510], MEMORY[0x277D83D88], sub_228A10278);
      }

      else
      {
        v23 = *v34;
        v24 = v31;
        (*v34)(v31, v10, v22);
        v23(v39, v24, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_228A0FE98(0, v19[2] + 1, 1, v19, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          v19 = sub_228A0FE98(v25 > 1, v26 + 1, 1, v19, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
        }

        v19[2] = v26 + 1;
        v15 = (v23)(v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v39, v40);
        a2 = v29;
        a3 = v30;
      }

      ++v18;
      v20 = a1 == v36;
      a1 = v33;
      if (v20)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v15;
    i = sub_22911C78C();
  }

  return MEMORY[0x277D84F90];
}

size_t sub_228A10B6C(unint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v6 = sub_22911BF0C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v42 - v11;
  v12 = sub_22911C07C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22911C00C();
  v55 = *(v50 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v50);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v19 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v19;
    }

    v60 = MEMORY[0x277D84F90];
    result = sub_2289FD738(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v19 = v60;
    v49 = a1 & 0xC000000000000001;
    sub_2289B3D00(0, &qword_27D863B48, off_27860E150);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = a1;
    v23 = 0;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v44 = v55 + 32;
    v45 = ObjCClassFromMetadata;
    v47 = v17;
    v48 = a1;
    v46 = i;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v49)
      {
        v25 = MEMORY[0x22AAC6410](v23, v22);
      }

      else
      {
        if (v23 >= *(v43 + 16))
        {
          goto LABEL_19;
        }

        v25 = *(v22 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v45 recordType];
      sub_22911C35C();
      v57 = v28;

      v29 = [v26 orderedSequenceRecords];
      sub_2289B3D00(0, &qword_27D862EC8, off_27860DFC8);
      v30 = sub_22911C45C();

      v31 = v52;
      v56 = sub_228A1074C(v30, v31, v53);
      v58 = v4;

      v32 = [v26 recordID];
      v33 = [v32 recordName];

      sub_22911C35C();
      sub_22911C06C();
      v17 = [v26 schemaVersion];
      v34 = [v26 record];
      v35 = [v34 modificationDate];

      if (v35)
      {
        v36 = v54;
        sub_22911B86C();

        v37 = 0;
      }

      else
      {
        v37 = 1;
        v36 = v54;
      }

      v38 = sub_22911B88C();
      (*(*(v38 - 8) + 56))(v36, v37, 1, v38);
      sub_2289B47F0();
      v39 = v47;
      sub_22911BFFC();

      v60 = v19;
      v41 = *(v19 + 16);
      v40 = *(v19 + 24);
      a1 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_2289FD738(v40 > 1, v41 + 1, 1);
        v19 = v60;
      }

      *(v19 + 16) = a1;
      (*(v55 + 32))(v19 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v41, v39, v50);
      ++v23;
      v4 = v58;
      v22 = v48;
      if (v24 == v46)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_228A110A0(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v57 = a2;
  v71 = *MEMORY[0x277D85DE8];
  v5 = sub_22911BF0C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v47 - v10;
  v12 = sub_22911C07C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22911C00C();
  v58 = *(v55 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v18 = sub_22911C78C();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v65 = MEMORY[0x277D84F90];
    sub_2289FD738(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
    }

    v47[1] = v3;
    v19 = v65;
    v54 = a1 & 0xC000000000000001;
    sub_2289B3D00(0, &qword_27D863B38, off_27860DC98);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = a1;
    v53 = ObjCClassFromMetadata;
    v3 = 0;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = v58 + 32;
    v52 = a1;
    v51 = v17;
    v50 = v18;
    while (1)
    {
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v54)
      {
        v22 = MEMORY[0x22AAC6410](v3, v21);
      }

      else
      {
        if (v3 >= *(v48 + 16))
        {
          goto LABEL_27;
        }

        v22 = *(v21 + 8 * v3 + 32);
      }

      v23 = v22;
      v24 = [v53 recordType];
      sub_22911C35C();

      v68[0] = 0;
      v25 = [v23 deviceContextWithError_];
      if (!v25)
      {
        v44 = v68[0];

        sub_22911B7FC();

        swift_willThrow();

        goto LABEL_25;
      }

      v26 = v25;
      v62 = v19;
      v27 = v68[0];
      v28 = [v26 syncIdentity];

      v29 = *v57;
      v30 = *(*v57 + 16);
      v61 = v3 + 1;
      if (!v30)
      {
        goto LABEL_15;
      }

      v31 = sub_2289AD7C4(v28);
      if (v32)
      {
        v60 = *(*(v29 + 56) + 8 * v31);
      }

      else
      {
LABEL_15:

        v60 = 0;
      }

      v33 = [v23 recordID];
      v34 = [v33 recordName];

      sub_22911C35C();
      sub_22911C06C();
      v59 = [v23 schemaVersion];
      v35 = [v23 record];
      v36 = [v35 modificationDate];

      if (v36)
      {
        sub_22911B86C();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = sub_22911B88C();
      (*(*(v38 - 8) + 56))(v11, v37, 1, v38);
      v64 = v23;
      sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
      sub_2289B4AE8();
      v39 = v23;
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_2289B4C00(v66, v68);
      v41 = v69;
      v40 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      (*(v40 + 8))(v41, v40);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v42 = v51;
      sub_22911BFFC();

      v19 = v62;
      v65 = v62;
      v17 = *(v62 + 16);
      v43 = *(v62 + 24);
      a1 = v17 + 1;
      if (v17 >= v43 >> 1)
      {
        sub_2289FD738(v43 > 1, v17 + 1, 1);
        v19 = v65;
      }

      *(v19 + 16) = a1;
      (*(v58 + 32))(v19 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v17, v42, v55);
      ++v3;
      v21 = v52;
      if (v61 == v50)
      {
        goto LABEL_25;
      }
    }

    v67 = 0;
    memset(v66, 0, sizeof(v66));
    sub_228A14028(v66, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
    result = sub_22911CA2C();
    __break(1u);
  }

  else
  {
LABEL_25:
    v45 = *MEMORY[0x277D85DE8];
    return v19;
  }

  return result;
}

void sub_228A117E0(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25 = sub_22911C00C();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = v21)
  {
    v12 = v8;
    v29 = MEMORY[0x277D84F90];
    sub_2289FD738(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v13 = 0;
    v14 = v29;
    v15 = v12;
    v23 = v12;
    v24 = v12 & 0xC000000000000001;
    v22[0] = v12 & 0xFFFFFFFFFFFFFF8;
    v22[1] = v6 + 32;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v24)
      {
        v17 = MEMORY[0x22AAC6410](v13, v15);
      }

      else
      {
        if (v13 >= *(v22[0] + 16))
        {
          goto LABEL_17;
        }

        v17 = *(v15 + 8 * v13 + 32);
      }

      v12 = v17;
      v28 = v17;
      sub_228A0E988(&v28, v27, v10);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2289FD738(v18 > 1, v19 + 1, 1);
        v14 = v29;
      }

      *(v14 + 16) = v19 + 1;
      (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v10, v25);
      ++v13;
      v15 = v23;
      if (v16 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v20 = v8;
    v21 = sub_22911C78C();
    v8 = v20;
  }
}

size_t sub_228A11A2C(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_22911BF0C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - v10;
  v12 = sub_22911C07C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22911C00C();
  v51 = *(v48 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v19 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v19;
    }

    v56 = MEMORY[0x277D84F90];
    result = sub_2289FD738(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v19 = v56;
    v47 = a1 & 0xC000000000000001;
    sub_2289B3D00(0, &qword_27D863AE8, off_27860E0D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = a1;
    v23 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = v51 + 32;
    v42 = ObjCClassFromMetadata;
    v45 = a1;
    v46 = v11;
    v43 = i;
    v44 = v17;
    while (1)
    {
      v17 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v47)
      {
        v24 = MEMORY[0x22AAC6410](v23, v22);
      }

      else
      {
        if (v23 >= *(v40 + 16))
        {
          goto LABEL_19;
        }

        v24 = *(v22 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v42 recordType];
      v27 = sub_22911C35C();
      v52 = v28;
      v53 = v27;

      v29 = [v25 summaryIdentifiers];
      sub_22911B8DC();
      v30 = sub_22911C45C();

      sub_228A07198(v30, v50);
      v54 = v3;

      v31 = [v25 recordID];
      v32 = [v31 recordName];

      sub_22911C35C();
      sub_22911C06C();
      [v25 schemaVersion];
      v33 = [v25 record];
      v34 = [v33 modificationDate];

      if (v34)
      {
        v35 = v46;
        sub_22911B86C();

        v36 = 0;
      }

      else
      {
        v36 = 1;
        v35 = v46;
      }

      v37 = sub_22911B88C();
      (*(*(v37 - 8) + 56))(v35, v36, 1, v37);
      sub_2289B47F0();
      v38 = v44;
      sub_22911BFFC();

      v56 = v19;
      v11 = *(v19 + 16);
      v39 = *(v19 + 24);
      a1 = v11 + 1;
      if (v11 >= v39 >> 1)
      {
        sub_2289FD738(v39 > 1, v11 + 1, 1);
        v19 = v56;
      }

      *(v19 + 16) = a1;
      (*(v51 + 32))(v19 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v11, v38, v48);
      ++v23;
      v3 = v54;
      v22 = v45;
      if (v17 == v43)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_228A11F30(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_22911BF0C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v47 - v10;
  v12 = sub_22911C07C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22911C00C();
  v57 = *(v54 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
    return v19;
  }

  v70 = MEMORY[0x277D84F90];
  sub_2289FD738(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v47[1] = v3;
    v19 = v70;
    v53 = a1 & 0xC000000000000001;
    sub_2289B3D00(0, &qword_27D863B18, off_27860DAF0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = 0;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = v57 + 32;
    v51 = v18;
    v52 = v17;
    while (1)
    {
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v18 = sub_22911C78C();
        goto LABEL_3;
      }

      v62 = v19;
      if (v53)
      {
        v21 = MEMORY[0x22AAC6410](v20, a1);
      }

      else
      {
        if (v20 >= *(v48 + 16))
        {
          goto LABEL_25;
        }

        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [ObjCClassFromMetadata recordType];
      v24 = sub_22911C35C();
      v59 = v25;
      v60 = v24;

      v26 = [v22 attachmentIdentifier];
      v27 = sub_22911C35C();
      v29 = v28;

      v30 = *v56;
      if (*(*v56 + 16))
      {
        v31 = sub_2289AD318(v27, v29);
        v33 = v32;

        if (v33)
        {
          v58 = *(*(v30 + 56) + 8 * v31);

          goto LABEL_16;
        }
      }

      else
      {
      }

      v58 = 0;
LABEL_16:
      v34 = [v22 recordID];
      v35 = [v34 recordName];

      sub_22911C35C();
      sub_22911C06C();
      [v22 schemaVersion];
      v36 = [v22 record];
      v37 = [v36 modificationDate];

      v61 = v20 + 1;
      if (v37)
      {
        sub_22911B86C();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = a1;
      v40 = sub_22911B88C();
      (*(*(v40 - 8) + 56))(v11, v38, 1, v40);
      v66 = v22;
      sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
      sub_2289B4AE8();
      v41 = v22;
      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      sub_2289B4C00(v64, v67);
      v43 = v68;
      v42 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      (*(v42 + 8))(v43, v42);
      __swift_destroy_boxed_opaque_existential_0(v67);
      v17 = v52;
      sub_22911BFFC();

      v19 = v62;
      v70 = v62;
      v45 = *(v62 + 16);
      v44 = *(v62 + 24);
      v3 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_2289FD738(v44 > 1, v45 + 1, 1);
        v19 = v70;
      }

      *(v19 + 16) = v3;
      (*(v57 + 32))(v19 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45, v17, v54);
      ++v20;
      a1 = v39;
      if (v61 == v51)
      {
        return v19;
      }
    }
  }

  __break(1u);
LABEL_28:
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  sub_228A14028(v64, &qword_27D862B38, sub_2289B4AE8, MEMORY[0x277D83D88], sub_228A10278);
  result = sub_22911CA2C();
  __break(1u);
  return result;
}

void sub_228A125E0(id *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_22911BF0C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  v10 = sub_22911C07C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v5);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v26 - v14;
  v16 = *a1;
  v27 = [*a1 sequenceRecordID];
  sub_2289B3D00(0, &qword_27D862EA8, off_27860DB30);
  v17 = [swift_getObjCClassFromMetadata() recordType];
  sub_22911C35C();
  v26[1] = v18;

  v19 = [v16 recordID];
  v20 = [v19 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v16 schemaVersion];
  v21 = [v16 record];
  v22 = [v21 modificationDate];

  if (v22)
  {
    sub_22911B86C();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_22911B88C();
  (*(*(v24 - 8) + 56))(v9, v23, 1, v24);
  sub_2289B47F0();
  sub_22911BFFC();
  v25 = sub_22911C00C();
  (*(*(v25 - 8) + 56))(v15, 0, 1, v25);
  sub_228A04DF4(v15, v27);
}

void sub_228A12974(id *a1, uint64_t *a2)
{
  v5 = sub_22911BF0C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v41 - v9;
  v11 = sub_22911C07C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22911C00C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v46 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 syncIdentity];
  if (v18)
  {
    v19 = *a2;
    v20 = *(*a2 + 16);
    v44 = a2;
    v45 = v2;
    v42 = v18;
    v43 = v13;
    if (v20 && (v21 = sub_2289AD7C4(v18), (v22 & 1) != 0))
    {
      v23 = *(*(v19 + 56) + 8 * v21);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    sub_2289B3D00(0, &qword_27D863B40, off_27860DCA0);
    v24 = [swift_getObjCClassFromMetadata() recordType];
    v25 = sub_22911C35C();
    v41[1] = v26;
    v41[2] = v25;

    v27 = [v17 recordID];
    v28 = [v27 recordName];

    sub_22911C35C();
    sub_22911C06C();
    [v17 schemaVersion];
    v29 = [v17 record];
    v30 = [v29 modificationDate];

    if (v30)
    {
      sub_22911B86C();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = v46;
    v33 = sub_22911B88C();
    (*(*(v33 - 8) + 56))(v10, v31, 1, v33);
    sub_2289B47F0();
    sub_22911BFFC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_228A0FE98(0, v23[2] + 1, 1, v23, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    }

    v37 = v23[2];
    v36 = v23[3];
    if (v37 >= v36 >> 1)
    {
      v23 = sub_228A0FE98(v36 > 1, v37 + 1, 1, v23, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
    }

    v23[2] = v37 + 1;
    (*(v14 + 32))(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v37, v32, v43);
    v38 = *v35;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v35;
    *v35 = 0x8000000000000000;
    v40 = v42;
    sub_2289B040C(v23, v42, v39);

    *v35 = v47;
  }
}

void sub_228A12E44(unint64_t a1, uint64_t a2, void (*a3)(id *, uint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22911C78C())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAC6410](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      a3(&v12, a2);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_228A12F48(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22911C78C())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAC6410](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_228A1304C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_228A1304C(void **a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v37[3] = a2;
  v7 = sub_22911BF0C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = MEMORY[0x277D83D88];
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v37 - v12;
  v14 = sub_22911C07C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_228A10278(0, &qword_27D863AC0, MEMORY[0x277CCB510], v9);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v37 - v18;
  v20 = sub_22911B8DC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = [v24 UUID];
  sub_22911B8CC();

  sub_2289B3D00(0, a3, a4);
  v26 = [swift_getObjCClassFromMetadata() recordType];
  v27 = sub_22911C35C();
  v37[1] = v28;
  v37[2] = v27;

  v29 = [v24 recordID];
  v30 = [v29 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v24 schemaVersion];
  v31 = [v24 record];
  v32 = [v31 modificationDate];

  if (v32)
  {
    sub_22911B86C();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_22911B88C();
  (*(*(v34 - 8) + 56))(v13, v33, 1, v34);
  sub_2289B47F0();
  sub_22911BFFC();
  v35 = sub_22911C00C();
  (*(*(v35 - 8) + 56))(v19, 0, 1, v35);
  return sub_228A05020(v19, v23);
}

uint64_t sub_228A1342C(id *a1, uint64_t *a2)
{
  v4 = sub_22911BF0C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45[2] = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228A10278(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v45 - v9;
  v11 = sub_22911C07C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22911C00C();
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 attachmentIdentifier];
  v19 = sub_22911C35C();
  v21 = v20;

  v48 = a2;
  v22 = *a2;
  if (*(*a2 + 16))
  {
    v23 = sub_2289AD318(v19, v21);
    v25 = v24;

    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v23);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v26 = MEMORY[0x277D84F90];
LABEL_6:
  sub_2289B3D00(0, &qword_27D863B20, off_27860DAF8);
  v27 = [swift_getObjCClassFromMetadata() recordType];
  v45[1] = sub_22911C35C();

  v28 = [v17 recordID];
  v29 = [v28 recordName];

  sub_22911C35C();
  sub_22911C06C();
  [v17 schemaVersion];
  v30 = [v17 record];
  v31 = [v30 modificationDate];

  if (v31)
  {
    sub_22911B86C();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v46;
  v34 = sub_22911B88C();
  (*(*(v34 - 8) + 56))(v10, v32, 1, v34);
  sub_2289B47F0();
  sub_22911BFFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_228A0FE98(0, v26[2] + 1, 1, v26, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
  }

  v36 = v26[2];
  v35 = v26[3];
  if (v36 >= v35 >> 1)
  {
    v26 = sub_228A0FE98(v35 > 1, v36 + 1, 1, v26, &qword_27D863940, MEMORY[0x277CCB510], MEMORY[0x277CCB510]);
  }

  v26[2] = v36 + 1;
  (*(v14 + 32))(v26 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36, v33, v47);
  v37 = [v17 attachmentIdentifier];
  v38 = sub_22911C35C();
  v40 = v39;

  v41 = v48;
  v42 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v41;
  *v41 = 0x8000000000000000;
  sub_2289B096C(v26, v38, v40, isUniquelyReferenced_nonNull_native);

  *v41 = v50;
  return result;
}

void sub_228A13964(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);
    v16 = v14;
    LOBYTE(v14) = a4(v15, v16);

    if (v14)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_228A10528(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_228A13AC8(uint64_t a1, uint64_t (*a2)(id, id))
{
  v4 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_228A10498(v10, v6, v4, a2);
      MEMORY[0x22AAC9830](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_228A13964(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_228A13C48(uint64_t a1, uint64_t (*a2)(id, id))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v25 = MEMORY[0x277D84F98];
    sub_22911C96C();
    v4 = sub_22911C9FC();
    if (v4)
    {
      v5 = v4;
      sub_2289B3D00(0, &qword_27D862A40, off_27860E1E8);
      v6 = v5;
      do
      {
        v23 = v6;
        swift_dynamicCast();
        sub_2289B3D00(0, &qword_27D862A50, off_27860DB28);
        swift_dynamicCast();
        if (!v24)
        {
          break;
        }

        v7 = v24;
        v8 = v23;
        v9 = a2(v7, v8);

        if (v9)
        {
          v10 = *(v3 + 16);
          if (*(v3 + 24) <= v10)
          {
            sub_2289AEE3C(v10 + 1, 1);
          }

          v3 = v25;
          v11 = *(v25 + 40);
          result = sub_22911C6AC();
          v13 = v25 + 64;
          v14 = -1 << *(v25 + 32);
          v15 = result & ~v14;
          v16 = v15 >> 6;
          if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
          {
            v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v14) >> 6;
            do
            {
              if (++v16 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v20 = v16 == v19;
              if (v16 == v19)
              {
                v16 = 0;
              }

              v18 |= v20;
              v21 = *(v13 + 8 * v16);
            }

            while (v21 == -1);
            v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          }

          *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(*(v25 + 48) + 8 * v17) = v7;
          *(*(v25 + 56) + 8 * v17) = v8;
          ++*(v25 + 16);
        }

        else
        {
        }

        v6 = sub_22911C9FC();
      }

      while (v6);
    }

    sub_2289C8624();
  }

  else
  {
    sub_228A13AC8(a1, a2);
    v3 = v22;
  }

  return v3;
}

uint64_t sub_228A13EF0(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [a1 zoneShareWithError_];
  v2 = v1;
  if (v6[0])
  {
    v6[0];

    result = swift_willThrow();
  }

  else if (v1)
  {
    v6[0] = v1;
    sub_228A0F8B8(v6, &v5);

    result = v5;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_228A13FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_228A14028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_228A14088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228A140E8()
{
  if (!qword_27D863B68)
  {
    sub_228A14190();
    sub_228A1490C(&qword_27D863C18, sub_228A14190);
    sub_228A14954();
    v0 = sub_22911C91C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863B68);
    }
  }
}

void sub_228A14190()
{
  if (!qword_27D863B70)
  {
    sub_228A1426C();
    sub_228A10278(255, &qword_27D8629F8, MEMORY[0x277CCB510], MEMORY[0x277D83940]);
    sub_228A1490C(&qword_27D863C10, sub_228A1426C);
    v0 = sub_22911C93C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863B70);
    }
  }
}

void sub_228A1426C()
{
  if (!qword_27D863B78)
  {
    sub_228A14314();
    sub_228A1490C(&qword_27D863C00, sub_228A14314);
    sub_228A14884();
    v0 = sub_22911C92C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863B78);
    }
  }
}

void sub_228A14314()
{
  if (!qword_27D863B80)
  {
    sub_228A143F0();
    sub_228A10278(255, &qword_27D863BF0, MEMORY[0x277CCB508], MEMORY[0x277D83940]);
    sub_228A1490C(&qword_27D863BF8, sub_228A143F0);
    v0 = sub_22911C93C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863B80);
    }
  }
}

void sub_228A143F0()
{
  if (!qword_27D863B88)
  {
    sub_228A14498();
    sub_228A1490C(&qword_27D863BE0, sub_228A14498);
    sub_228A147FC();
    v0 = sub_22911C92C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863B88);
    }
  }
}

void sub_228A14498()
{
  if (!qword_27D863B90)
  {
    sub_228A14574();
    sub_228A10278(255, &qword_27D863BD0, MEMORY[0x277CCB518], MEMORY[0x277D83940]);
    sub_228A1490C(&qword_27D863BD8, sub_228A14574);
    v0 = sub_22911C93C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863B90);
    }
  }
}

void sub_228A14574()
{
  if (!qword_27D863B98)
  {
    sub_228A1461C();
    sub_228A1490C(&qword_27D863BC0, sub_228A1461C);
    sub_228A14774();
    v0 = sub_22911C92C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863B98);
    }
  }
}

void sub_228A1461C()
{
  if (!qword_27D863BA0)
  {
    v0 = MEMORY[0x277D83940];
    sub_228A10278(255, &qword_27D863BA8, MEMORY[0x277CCB448], MEMORY[0x277D83940]);
    sub_228A10278(255, &qword_27D863BB0, MEMORY[0x277CCB520], v0);
    sub_228A146EC();
    v1 = sub_22911C93C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D863BA0);
    }
  }
}

unint64_t sub_228A146EC()
{
  result = qword_27D863BB8;
  if (!qword_27D863BB8)
  {
    sub_228A10278(255, &qword_27D863BA8, MEMORY[0x277CCB448], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863BB8);
  }

  return result;
}

unint64_t sub_228A14774()
{
  result = qword_27D863BC8;
  if (!qword_27D863BC8)
  {
    sub_228A10278(255, &qword_27D863BB0, MEMORY[0x277CCB520], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863BC8);
  }

  return result;
}

unint64_t sub_228A147FC()
{
  result = qword_27D863BE8;
  if (!qword_27D863BE8)
  {
    sub_228A10278(255, &qword_27D863BD0, MEMORY[0x277CCB518], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863BE8);
  }

  return result;
}

unint64_t sub_228A14884()
{
  result = qword_27D863C08;
  if (!qword_27D863C08)
  {
    sub_228A10278(255, &qword_27D863BF0, MEMORY[0x277CCB508], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863C08);
  }

  return result;
}

uint64_t sub_228A1490C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_228A14954()
{
  result = qword_27D863C20;
  if (!qword_27D863C20)
  {
    sub_228A10278(255, &qword_27D8629F8, MEMORY[0x277CCB510], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863C20);
  }

  return result;
}

uint64_t sub_228A149DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228A10278(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_228A14A5C(uint64_t a1, uint64_t a2)
{
  sub_228A14AE8(0, &qword_280D67A78, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_228A14AE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_228A14B48()
{
  result = sub_22911C34C();
  qword_27D863C38 = result;
  return result;
}

void *sub_228A14BCC()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_228A14C78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id HDWorkoutBackgroundActivityController.__allocating_init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_publisher;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x277D6B910]) init];
  *&v9[OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution] = 0;
  v11 = &v9[OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_auditToken];
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *(v11 + 3) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id HDWorkoutBackgroundActivityController.init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_publisher;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D6B910]) init];
  *&v4[OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution] = 0;
  v10 = &v4[OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_auditToken];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HDWorkoutBackgroundActivityController();
  return objc_msgSendSuper2(&v12, sel_init);
}

id HDWorkoutBackgroundActivityController.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = qword_27D862780;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_22911B95C();
  __swift_project_value_buffer(v6, qword_27D86A948);
  v7 = sub_22911B94C();
  v8 = sub_22911C5FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    v11 = sub_22911CBAC();
    v13 = sub_2289B9170(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_228986000, v7, v8, "%{public}s Deinitialized without removing background activity pill", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC9830](v10, -1, -1);
    MEMORY[0x22AAC9830](v9, -1, -1);
  }

  v14 = *&v1[OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_publisher];
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  v16 = swift_allocObject();
  v17 = sub_228A151E4;
  *(v16 + 16) = sub_228A151E4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_228A151F4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228A1521C;
  aBlock[3] = &block_descriptor_12;
  v18 = _Block_copy(aBlock);
  v19 = v5;
  v20 = v14;

  [v20 updateVolatileData:v18 completion:0];

  _Block_release(v18);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
LABEL_8:
    [*&v1[OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_publisher] invalidate];
    v17 = 0;
  }

  sub_2289ACBE4(v17);
  v21 = type metadata accessor for HDWorkoutBackgroundActivityController();
  v24.receiver = v1;
  v24.super_class = v21;
  return objc_msgSendSuper2(&v24, sel_dealloc);
}

uint64_t sub_228A151F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_228A1521C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228A15314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v6 = sub_22911B95C();
  __swift_project_value_buffer(v6, qword_27D86A948);
  v7 = sub_22911B94C();
  v8 = sub_22911C5FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v17[0] = v10;
    *v9 = 136446210;
    v11 = sub_22911CBAC();
    v13 = sub_2289B9170(v11, v12, v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_228986000, v7, v8, "%{public}s Showing Background activity pill", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC9830](v10, -1, -1);
    MEMORY[0x22AAC9830](v9, -1, -1);
  }

  v14 = *(v3 + OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_auditToken + 16);
  v17[0] = *(v3 + OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_auditToken);
  v17[1] = v14;
  v15 = [objc_allocWithZone(MEMORY[0x277D6B8E8]) initWithAuditToken_];
  if (qword_27D862798 != -1)
  {
    swift_once();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D6B900]) initWithBackgroundActivityIdentifier:qword_27D863C38 activityAttribution:v15 showsWhenForeground:1];
  sub_228A15824(v16, a1, a2);
}

uint64_t sub_228A155E4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v4 = sub_22911B95C();
  __swift_project_value_buffer(v4, qword_27D86A948);
  v5 = sub_22911B94C();
  v6 = sub_22911C5FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = sub_22911CBAC();
    v11 = sub_2289B9170(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_228986000, v5, v6, "%{public}s Hiding Background activity pill", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAC9830](v8, -1, -1);
    MEMORY[0x22AAC9830](v7, -1, -1);
  }

  return sub_228A15824(0, a1, a2);
}

uint64_t sub_228A15824(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *(v3 + OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_publisher);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_228A15D6C;
  *(v8 + 24) = v7;
  v22 = sub_228A15D88;
  v23 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_228A1521C;
  v21 = &block_descriptor_26;
  v9 = _Block_copy(&aBlock);
  v10 = a1;

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v22 = sub_228A15D74;
  v23 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2289CBBB0;
  v21 = &block_descriptor_33;
  v13 = _Block_copy(&aBlock);
  v14 = v10;
  sub_2289CAE1C(a2);

  [v17 updateVolatileData:v9 completion:v13];
  _Block_release(v13);
  _Block_release(v9);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

void sub_228A15A90(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
    swift_beginAccess();
    if (*&v8[v9])
    {
      [a1 removeAttribution_];
    }

    if (a4)
    {
      [a1 addAttribution_];
    }

    [a2 setUserInitiated_];
  }
}

void sub_228A15B5C(uint64_t a1, void *a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
    swift_beginAccess();
    v8 = *&v6[v7];
    *&v6[v7] = a2;
    v9 = a2;

    if (a3)
    {
      a3();
    }
  }
}

id HDWorkoutBackgroundActivityController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDRecordClassesForDecoding()
{
  if (_recordClasses)
  {
    return _recordClasses;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

__CFString *HDCloudSyncContextPurposeToString(unint64_t a1)
{
  if (a1 >= 0x14)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%zd)", a1];
  }

  else
  {
    v2 = off_278613238[a1];
  }

  return v2;
}

__CFString *HDCloudSyncOperationResultToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Success";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%zd)", a1];
    }
  }

  else
  {
    v2 = @"Error";
  }

  return v2;
}

__CFString *HDCloudSyncRebaseReasonToString(uint64_t a1)
{
  if ((a1 + 1) >= 0xC)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%zd)", a1];
  }

  else
  {
    v2 = off_2786132D8[a1 + 1];
  }

  return v2;
}

__CFString *HDCloudSyncRebaseTriggerToString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"third party deleted samples";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%zd)", a1];
  }

  else
  {
    v2 = @"health deleted samples";
  }

  return v2;
}

__CFString *HDCloudSyncRestorePhaseToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Restore Phase Ingest Complete";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%zd)", a1];
    }
  }

  else
  {
    v2 = @"Restore Phase Sync Complete";
  }

  return v2;
}

void HDCloudSyncUpdateProgressOnQueueForObjectAndLog(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __HDCloudSyncUpdateProgressOnQueueForObjectAndLog_block_invoke;
  v13[3] = &unk_2786131A8;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(v11, v13);
}

void HDCloudSyncUpdateProgressAssertQueueForObjectAndLog(void *a1, NSObject *a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  dispatch_assert_queue_V2(a2);
  [v7 setCompletedUnitCount:a4];
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v11 = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = a4;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: Update progress.completedUnitCount = (%lld): %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void HDCloudSyncUpdateProgressOnQueueByAmountForObjectAndLog(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __HDCloudSyncUpdateProgressOnQueueByAmountForObjectAndLog_block_invoke;
  v13[3] = &unk_2786131A8;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(v11, v13);
}

void __HDCloudSyncUpdateProgressOnQueueByAmountForObjectAndLog_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completedUnitCount];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56) + v2;
  v6 = *(a1 + 32);

  HDCloudSyncUpdateProgressAssertQueueForObjectAndLog(v6, v3, v4, v5);
}

HDKeyValueDomain *HDCloudSyncKeyValueDomainWithProfile(void *a1)
{
  v1 = a1;
  v2 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"CloudSync" profile:v1];

  return v2;
}

HDKeyValueDomain *HDCloudSyncProtectedAndSyncedKeyValueDomainWithProfile(void *a1)
{
  v1 = a1;
  v2 = [[HDKeyValueDomain alloc] initWithCategory:105 domainName:@"CloudSync" profile:v1];

  return v2;
}

HDKeyValueDomain *HDCloudSyncUnprotectedAndSyncedKeyValueDomainWithProfile(void *a1)
{
  v1 = a1;
  v2 = [[HDKeyValueDomain alloc] initWithCategory:5 domainName:@"CloudSync" profile:v1];

  return v2;
}

id HDMostRecentSuccessfulPullDateForProfile(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = HDCloudSyncKeyValueDomainWithProfile(v3);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  obj = 0;
  v5 = [v4 allValuesWithError:&obj];
  objc_storeStrong(&v29, obj);
  if (v5 || !v25[5])
  {
    v6 = [v5 allKeys];
    v7 = [v6 hk_map:&__block_literal_global];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __HDMostRecentSuccessfulPullDateForProfile_block_invoke_2;
    v19 = &unk_2786131F0;
    v21 = &v24;
    v20 = v4;
    p_buf = &buf;
    [v7 enumerateObjectsUsingBlock:&v16];
    v8 = v25[5];
    v9 = v8;
    if (v8)
    {
      if (a2)
      {
        v10 = v8;
        *a2 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v13 = [*(*(&buf + 1) + 40) copy];
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v25[5];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Could not get keys/values out of cloud sync domain: %{public}@", &buf, 0xCu);
    }

    v13 = 0;
  }

  _Block_object_dispose(&v24, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_228A18E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __HDMostRecentSuccessfulPullDateForProfile_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"LastSuccessfulPull-"])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __HDMostRecentSuccessfulPullDateForProfile_block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = a1[4];
  v10 = *(a1[5] + 8);
  obj = *(v10 + 40);
  v11 = [v9 dateForKey:v6 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (!v11)
  {
    if (*(*(a1[5] + 8) + 40))
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1[5] + 8) + 40);
        *buf = 138543618;
        v22 = v6;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Could not get date for key: %{public}@ from the cloud sync domain: %{public}@", buf, 0x16u);
      }
    }

    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    *a4 = 1;
  }

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = [v17 laterDate:v11];

  if (v18 == v11)
  {
    v16 = *(a1[6] + 8);
LABEL_9:
    objc_storeStrong((v16 + 40), v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id HDOldestSampleStartDate(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = HDCloudSyncProtectedAndSyncedKeyValueDomainWithProfile(v1);
  v11 = 0;
  v3 = [v2 dateForKey:@"OldestSampleStartDate" error:&v11];
  v4 = v11;
  v5 = v4;
  v6 = MEMORY[0x277CCC328];
  if (!v3)
  {
    if (v4)
    {
      _HKInitializeLogging();
      v7 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v5;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to get persisted oldest sample start date from key value store, Error %{public}@", buf, 0xCu);
      }
    }
  }

  _HKInitializeLogging();
  v8 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v1;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Retrieving oldest sample start date %{public}@ on key-value store for profile: %{public}@", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

void HDSetOldestSampleStartDate(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Setting oldest sample start date %{public}@ on key-value store for profile: %{public}@", buf, 0x16u);
  }

  v7 = HDCloudSyncProtectedAndSyncedKeyValueDomainWithProfile(v4);
  v12 = 0;
  v8 = [v7 setDate:v3 forKey:@"OldestSampleStartDate" error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v3;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to persist oldest sample start date %{public}@ to key value store, Error %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

id HDCloudSyncRestorePhaseSyncCompleteStartDate(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v8 = 0;
  v2 = [v1 dateForKey:@"CloudSyncRestoreSyncStartDate" error:&v8];
  v3 = v8;
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve cloud sync restore phase sync complete start date from key value store, Error: %{public}@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

void HDSetCloudSyncRestorePhaseSyncCompleteStartDate(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Setting cloud sync restore phase sync complete start date %{public}@ on key-value store for profile: %{public}@", buf, 0x16u);
  }

  v7 = HDCloudSyncKeyValueDomainWithProfile(v4);
  v12 = 0;
  v8 = [v7 setDate:v3 forKey:@"CloudSyncRestoreSyncStartDate" error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v3;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to persist cloud sync restore phase sync complete end date %{public}@ to key value store, Error: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

id HDCloudSyncRestorePhaseSyncCompleteEndDate(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v8 = 0;
  v2 = [v1 dateForKey:@"CloudSyncRestoreSyncEndDate" error:&v8];
  v3 = v8;
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve cloud sync restore phase sync complete end date from key value store, Error: %{public}@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

void HDSetCloudSyncRestorPhaseSyncCompleteEndDate(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Setting cloud sync restore phase sync complete end date %{public}@ on key-value store for profile: %{public}@", buf, 0x16u);
  }

  v7 = HDCloudSyncKeyValueDomainWithProfile(v4);
  v12 = 0;
  v8 = [v7 setDate:v3 forKey:@"CloudSyncRestoreSyncEndDate" error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v3;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to persist cloud sync restore phase sync complete end date %{public}@ to key value store, Error: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

id HDCloudSyncRestorePhaseMergeCompleteEndDate(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v8 = 0;
  v2 = [v1 dateForKey:@"CloudSyncRestoreMergeEndDate" error:&v8];
  v3 = v8;
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve cloud sync restore merge complete end date from key value store, Error: %{public}@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

void HDSetCloudSyncRestorPhaseMergeCompleteEndDate(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Setting cloud sync restore phase merge complete end date %{public}@ on key-value store for profile: %{public}@", buf, 0x16u);
  }

  v7 = HDCloudSyncKeyValueDomainWithProfile(v4);
  v12 = 0;
  v8 = [v7 setDate:v3 forKey:@"CloudSyncRestoreMergeEndDate" error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v3;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to persist cloud sync restore phase merge complete end date %{public}@ to key value store, Error: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void HDUpdateOldestSampleStartDateForProfile(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 daemon];
  v3 = [v2 behavior];
  v4 = [v3 tinkerModeEnabled];

  if (v4)
  {
    v5 = HDOldestSampleStartDate(v1);
    v12 = 0;
    v6 = [HDSampleEntity minimumSampleStartDateForProfile:v1 error:&v12];
    v7 = v12;
    if (v6)
    {
      if (v5 && ![v6 hk_isBeforeDate:v5])
      {
        goto LABEL_13;
      }

      v8 = v6;
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      v10 = *MEMORY[0x277CCC328];
      if (v7)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v7;
          _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Error fetching oldest sample date %{public}@", buf, 0xCu);
        }

        goto LABEL_13;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Setting oldest sample date to nil.", buf, 2u);
      }

      v8 = 0;
    }

    HDSetOldestSampleStartDate(v8, v1);
LABEL_13:
  }

  v11 = *MEMORY[0x277D85DE8];
}

id HDCloudSyncLastPulledUpdateDate(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v8 = 0;
  v2 = [v1 dateForKey:@"HDCloudSyncLastPulledUpdateDate" error:&v8];
  v3 = v8;
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve most recent tinker update date from key value store, Error: %{public}@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

void HDCloudSyncDidPullUpdateWithDate(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 database];
  v15 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __HDCloudSyncDidPullUpdateWithDate_block_invoke;
  v12[3] = &unk_278613218;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  v14 = v7;
  v8 = [(HDHealthEntity *)HDUnprotectedKeyValueEntity performWriteTransactionWithHealthDatabase:v5 error:&v15 block:v12];
  v9 = v15;

  if (!v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to update most recent tinker update date from key value store, Error: %{public}@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __HDCloudSyncDidPullUpdateWithDate_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = HDCloudSyncKeyValueDomainWithProfile(*(a1 + 32));
  v13 = 0;
  v6 = [v5 dateForKey:@"HDCloudSyncLastPulledUpdateDate" error:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    if (v6 && ![v6 hk_isBeforeDate:*(a1 + 40)])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v5 setDate:*(a1 + 40) forKey:@"HDCloudSyncLastPulledUpdateDate" error:a3];
    }
  }

  else if (a3)
  {
    v11 = v7;
    v10 = 0;
    *a3 = v8;
  }

  else
  {
    _HKLogDroppedError();
    v10 = 0;
  }

  return v10;
}

id HDCloudSyncLastSuccessfulPushDateForCoordinatedSync(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = HDCloudSyncUnprotectedAndSyncedKeyValueDomainWithProfile(a1);
  v8 = 0;
  v2 = [v1 dateForKey:@"LastSuccessfulPushForCoordinatedSync" error:&v8];
  v3 = v8;
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve last successful push date for coordinated sync from key value store, Error: %{public}@", buf, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

void HDSetCloudSyncLastSuccessfulPushDateForCoordinatedSync(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 daemon];
  v6 = [v5 behavior];
  v7 = [v6 supportsCoordinatedCloudSync];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = MEMORY[0x277CCC328];
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v17 = v3;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Recording successful push for coordinated sync, date %{public}@ on key-value store for profile: %{public}@", buf, 0x16u);
    }

    v10 = HDCloudSyncUnprotectedAndSyncedKeyValueDomainWithProfile(v4);
    v15 = 0;
    v11 = [v10 setDate:v3 forKey:@"LastSuccessfulPushForCoordinatedSync" error:&v15];
    v12 = v15;
    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = v3;
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to persist successful push for coordinated sync, date %{public}@ to key value store, Error: %{public}@", buf, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

id HDCloudSyncAttachmentManagementUUID(void *a1, uint64_t a2)
{
  v3 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v4 = [v3 stringForKey:@"CloudSyncAttachmentManagement" error:a2];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];

  return v5;
}

uint64_t HDSetCloudSyncAttachmentManagementUUID(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = HDCloudSyncKeyValueDomainWithProfile(a2);
  v7 = [v5 UUIDString];

  v8 = [v6 setString:v7 forKey:@"CloudSyncAttachmentManagement" error:a3];
  return v8;
}

uint64_t HDCloudSyncAttachmentReferenceEpoch(void *a1, uint64_t a2)
{
  v3 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v4 = [v3 numberForKey:@"CloudSyncAttachmentReferenceEpoch" error:a2];
  v5 = [v4 longLongValue];

  return v5;
}

uint64_t HDSetCloudSyncAttachmentReferenceEpoch(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = HDCloudSyncKeyValueDomainWithProfile(a2);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v7 = [v5 setNumber:v6 forKey:@"CloudSyncAttachmentReferenceEpoch" error:a3];

  return v7;
}

uint64_t HDCloudSyncAttachmentReferenceTombstoneEpoch(void *a1, uint64_t a2)
{
  v3 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v4 = [v3 numberForKey:@"CloudSyncAttachmentReferenceTombstoneEpoch" error:a2];
  v5 = [v4 longLongValue];

  return v5;
}

uint64_t HDSetCloudSyncAttachmentReferenceTombstoneEpoch(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = HDCloudSyncKeyValueDomainWithProfile(a2);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v7 = [v5 setNumber:v6 forKey:@"CloudSyncAttachmentReferenceTombstoneEpoch" error:a3];

  return v7;
}

uint64_t HDUpgradedToSyncIdentity(void *a1, uint64_t a2)
{
  v3 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v4 = [v3 numberForKey:@"CloudSyncUpgradedToSyncIdentity" error:a2];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = _HDIsUnitTesting != 0;
  }

  return v6;
}

uint64_t HDSetUpgradedToSyncIdentity(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = HDCloudSyncKeyValueDomainWithProfile(a2);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v7 = [v5 setNumber:v6 forKey:@"CloudSyncUpgradedToSyncIdentity" error:a3];

  return v7;
}

uint64_t HDCompletedTransitionToSyncIdentity(void *a1, uint64_t a2)
{
  v3 = HDCloudSyncKeyValueDomainWithProfile(a1);
  v4 = [v3 numberForKey:@"CloudSyncCompletedTransitionToSyncIdentity" error:a2];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t HDSetCompletedTransitionToSyncIdentity(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = HDCloudSyncKeyValueDomainWithProfile(a2);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v7 = [v5 setNumber:v6 forKey:@"CloudSyncCompletedTransitionToSyncIdentity" error:a3];

  return v7;
}

__CFString *HDCKAcceptanceStatusToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown status(%ld)", a1];
  }

  else
  {
    v2 = off_278613338[a1];
  }

  return v2;
}

__CFString *HDCKPermissionToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown permission (%ld)", a1];
  }

  else
  {
    v2 = off_278613358[a1];
  }

  return v2;
}

__CFString *HDCKRoleToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_278613378[a1];
  }
}

uint64_t HDOptionsForRequest(void *a1)
{
  v1 = [a1 changesSyncRequest];
  v2 = v1;
  if (v1)
  {
    if ([v1 push])
    {
      if ([v2 lite])
      {
        v3 = 128;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    if ([v2 pull] && objc_msgSend(v2, "lite"))
    {
      v3 |= 0x1000uLL;
    }

    if (![v2 push])
    {
      v3 |= 4uLL;
    }

    if (![v2 pull])
    {
      v3 |= 2uLL;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_228A1B5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A1BBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A1BDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _allEventCollectorClasses()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v0 addObject:objc_opt_class()];
  [v0 addObject:objc_opt_class()];
  v1 = _os_feature_enabled_impl();
  v2 = &off_27860FA58;
  if (!v1)
  {
    v2 = off_27860F598;
  }

  v3 = *v2;
  [v0 addObject:objc_opt_class()];

  return v0;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A1E798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228A1F79C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HDWorkoutDataDestinationStateToString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_278613800[a1];
  }

  return v2;
}

uint64_t HDCodableMedicalIDAllergyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A25FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HDCloudSyncRecordClassForRecord(void *a1, void *a2)
{
  v3 = a1;
  if ([HDCloudSyncSubscriptionRecord isSubscriptionRecord:v3]|| [HDCloudSyncRegistryRecord isRegistryRecord:v3]|| [HDCloudSyncMasterRecord isMasterRecord:v3]|| [HDCloudSyncStoreRecord isStoreRecord:v3]|| [HDCloudSyncSequenceRecord isSequenceRecord:v3]|| [HDCloudSyncChangeRecord isChangeRecord:v3]|| [HDCloudSyncMedicalIDRecord isMedicalIDRecord:v3]|| [HDCloudSyncSharedSummaryParticipantRecord isParticipantRecord:v3]|| [HDCloudSyncSharedSummaryAuthorizationRecord isAuthorizationRecord:v3]|| [HDCloudSyncSharedSummaryTransactionRecord isTransactionRecord:v3]|| [HDCloudSyncSharedSummaryRecord isSummaryRecord:v3]|| [HDCloudSyncStateRecord isStateRecord:v3]|| [HDCloudSyncDeviceContextRecord isDeviceContextRecord:v3]|| [HDCloudSyncDeviceKeyValueRecord isDeviceKeyValueRecord:v3]|| [HDCloudSyncAttachmentManagementRecord isAttachmentManagementRecord:v3]|| [HDCloudSyncAttachmentRecord isAttachmentRecord:v3]|| [HDCloudSyncAttachmentReferenceRecord isAttachmentReferenceRecord:v3]|| [HDCloudSyncAttachmentReferenceTombstoneRecord isAttachmentReferenceTombstoneRecord:v3])
  {
    v4 = objc_opt_class();
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:713 format:{@"Record %@ does not appear to be of any known class", v3}];
    if (v6)
    {
      if (a2)
      {
        v7 = v6;
        *a2 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v4 = 0;
  }

  return v4;
}

uint64_t HDCodableOntologyLocalizedEducationContentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34[0] & 0x7F) << v14;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_51:
          *(a1 + 16) = v20;
          goto LABEL_56;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_56;
      }

      v28 = objc_alloc_init(HDCodableOntologyLocalizedEducationContentSection);
      [a1 addSections:v28];
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableOntologyLocalizedEducationContentSectionReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_56:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      *(a1 + 36) |= 1u;
      v34[0] = 0;
      v29 = [a2 position] + 8;
      if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
      {
        v31 = [a2 data];
        [v31 getBytes:v34 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v34[0];
      goto LABEL_56;
    }

    if (v13 == 4)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v34[0] & 0x7F) << v21;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_53;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_53:
      *(a1 + 32) = v27;
      goto LABEL_56;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDStatisticsCumulative::addSample(uint64_t this, const HDRawQuantitySample *a2, int a3)
{
  *this = a2->var0 + *this;
  if (a3)
  {
    ++*(this + 8);
  }

  return this;
}

__n128 HDStatisticsCumulative::updateMostRecentSample(__n128 *this, const HDRawQuantitySample *a2)
{
  if (!this[3].n128_u8[0] || (result.n128_u64[0] = this[1].n128_u64[1], result.n128_f64[0] <= a2->var1))
  {
    result = *&a2->var0;
    v3 = *&a2->var2;
    this[3].n128_u16[0] = *&a2->var4;
    this[1] = result;
    this[2] = v3;
  }

  return result;
}

double HDStatisticsCumulative::unarchive@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  result = *(a1 + 152);
  *a2 = result;
  *(a2 + 8) = *(a1 + 24);
  v3 = *(a1 + 112);
  if (v3)
  {
    result = *(v3 + 8);
    v4 = *(v3 + 16);
    *(a2 + 16) = vextq_s8(*(v3 + 24), *(v3 + 24), 8uLL);
    *(a2 + 32) = result;
    *(a2 + 40) = v4;
    *(a2 + 48) = 1;
  }

  return result;
}

void HDStatisticsCumulative::archive(int8x16_t *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 112) = 0;
  v4 = (a2 + 112);
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = this->i64[0];
  v5 = this->i64[1];
  *(a2 + 204) = 1025;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  statistics::Statistics::makeMostRecentDatum(a2);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(this[1], this[1], 8uLL);
  v6[1] = this[2].i64[0];
  v6[2] = this[2].i64[1];
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

__CFString *NSStringForRapportSchemaIdentifier(uint64_t a1)
{
  if (a1 != 1)
  {
    return @"HKMirroredWorkoutSession";
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot use HDRapportSchemaIdentifierCount", v1, v2}];
  return 0;
}

void __watchOSSortedBuildStrings_block_invoke()
{
  v0 = qword_280D67AA0;
  qword_280D67AA0 = &unk_283CAE5A8;
}

void sub_228A2B418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A301BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDPredicateForDatabaseIDAndRecordZone(uint64_t a1, void *a2, void *a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B18];
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 numberWithLongLong:a1];
  v10 = [v5 predicateWithProperty:@"database_id" equalToValue:v9];

  v11 = MEMORY[0x277D10B18];
  v12 = _HDSQLiteValueForString();

  v13 = [v11 predicateWithProperty:@"zone_name" equalToValue:v12];

  v14 = MEMORY[0x277D10B18];
  v15 = _HDSQLiteValueForString();

  v16 = [v14 predicateWithProperty:@"owner_name" equalToValue:v15];

  v17 = MEMORY[0x277D10B20];
  v22[0] = v10;
  v22[1] = v13;
  v22[2] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [v17 predicateMatchingAllPredicates:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void sub_228A32884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDPredicateForDatabaseID(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"database_id" equalToValue:v2];

  return v3;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableLocationDatumReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v55) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            *(a1 + 92) |= 0x100u;
            v55 = 0;
            v27 = [a2 position] + 8;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v43 = v55;
            v44 = 72;
          }

          else
          {
            if (v13 != 2)
            {
LABEL_70:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_97;
            }

            *(a1 + 92) |= 0x10u;
            v55 = 0;
            v25 = [a2 position] + 8;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v43 = v55;
            v44 = 40;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              *(a1 + 92) |= 0x20u;
              v55 = 0;
              v35 = [a2 position] + 8;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v43 = v55;
              v44 = 48;
              break;
            case 4:
              *(a1 + 92) |= 1u;
              v55 = 0;
              v29 = [a2 position] + 8;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v43 = v55;
              v44 = 8;
              break;
            case 5:
              *(a1 + 92) |= 0x40u;
              v55 = 0;
              v16 = [a2 position] + 8;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v43 = v55;
              v44 = 56;
              break;
            default:
              goto LABEL_70;
          }
        }

        goto LABEL_96;
      }

      if (v13 <= 8)
      {
        switch(v13)
        {
          case 6:
            *(a1 + 92) |= 2u;
            v55 = 0;
            v37 = [a2 position] + 8;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v43 = v55;
            v44 = 16;
            break;
          case 7:
            *(a1 + 92) |= 8u;
            v55 = 0;
            v31 = [a2 position] + 8;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v43 = v55;
            v44 = 32;
            break;
          case 8:
            *(a1 + 92) |= 0x200u;
            v55 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v43 = v55;
            v44 = 80;
            break;
          default:
            goto LABEL_70;
        }

        goto LABEL_96;
      }

      if (v13 == 9)
      {
        break;
      }

      if (v13 == 10)
      {
        *(a1 + 92) |= 4u;
        v55 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v55;
        v44 = 24;
LABEL_96:
        *(a1 + v44) = v43;
        goto LABEL_97;
      }

      if (v13 != 11)
      {
        goto LABEL_70;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      *(a1 + 92) |= 0x400u;
      while (1)
      {
        LOBYTE(v55) = 0;
        v21 = [a2 position] + 1;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v20 |= (v55 & 0x7F) << v18;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v11 = v19++ >= 9;
        if (v11)
        {
          v24 = 0;
          goto LABEL_75;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v20;
      }

LABEL_75:
      *(a1 + 88) = v24;
LABEL_97:
      v54 = [a2 position];
      if (v54 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 92) |= 0x80u;
    v55 = 0;
    v39 = [a2 position] + 8;
    if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
    {
      v53 = [a2 data];
      [v53 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v43 = v55;
    v44 = 64;
    goto LABEL_96;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCloudSyncCodableDeviceKeyValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_41;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_41:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_51;
        }

LABEL_38:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v23 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 40), v23);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v14 = PBReaderReadData();
        v15 = 48;
        goto LABEL_41;
      case 5:
        *(a1 + 56) |= 1u;
        v30[0] = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v30[0];
        goto LABEL_51;
      case 6:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v30[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v30[0] & 0x7F) << v16;
          if ((v30[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_48:
        *(a1 + 16) = v22;
        goto LABEL_51;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableRoutineLocationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41[0] & 0x7F) << v5;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v28 = PBReaderReadString();
          v29 = 56;
LABEL_54:
          v32 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_70;
        }

        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            LOBYTE(v41[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v41[0] & 0x7F) << v16;
            if ((v41[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_60:
          *(a1 + 48) = v22;
          goto LABEL_70;
        }

        goto LABEL_55;
      }

      if (v13 == 7)
      {
        v28 = PBReaderReadData();
        v29 = 40;
        goto LABEL_54;
      }

      if (v13 != 8)
      {
        goto LABEL_55;
      }

      v25 = objc_alloc_init(HDCodableRoutineLocationVisit);
      [a1 addVisits:v25];
      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableRoutineLocationVisitReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_70:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        *(a1 + 72) |= 8u;
        v41[0] = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v34 = v41[0];
        v35 = 32;
        goto LABEL_69;
      }

      if (v13 == 4)
      {
        *(a1 + 72) |= 1u;
        v41[0] = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v34 = v41[0];
        v35 = 8;
        goto LABEL_69;
      }
    }

    else
    {
      if (v13 == 1)
      {
        *(a1 + 72) |= 2u;
        v41[0] = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v34 = v41[0];
        v35 = 16;
        goto LABEL_69;
      }

      if (v13 == 2)
      {
        *(a1 + 72) |= 4u;
        v41[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v37 = [a2 data];
          [v37 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v34 = v41[0];
        v35 = 24;
LABEL_69:
        *(a1 + v35) = v34;
        goto LABEL_70;
      }
    }

LABEL_55:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_70;
  }

  return [a2 hasError] ^ 1;
}

void sub_228A3D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 168), 8);
  _Block_object_dispose((v11 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableStateOfMindReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v56) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v56 & 0x7F) << v5;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 88) |= 1u;
          while (1)
          {
            LOBYTE(v56) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v56 & 0x7F) << v28;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_76:
          *(a1 + 56) = v34;
          goto LABEL_99;
        }

        if (v14 == 3)
        {
          *(a1 + 88) |= 2u;
          v56 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 64) = v56;
          goto LABEL_99;
        }

LABEL_46:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_99;
      }

      v19 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 80), v19);
      v56 = 0;
      v57 = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v19, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_99:
      v55 = [a2 position];
      if (v55 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v14)
    {
      case 4:
        if (v13 != 2)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          while (1)
          {
            LOBYTE(v56) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v56 & 0x7F) << v42;
            if ((v56 & 0x80) == 0)
            {
              goto LABEL_95;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              goto LABEL_96;
            }
          }
        }

        v56 = 0;
        v57 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v21 = [a2 position];
          if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_72;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v58 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v58 & 0x7F) << v22;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              goto LABEL_45;
            }
          }

          [a2 hasError];
LABEL_45:
          PBRepeatedInt64Add();
        }

      case 5:
        if (v13 != 2)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          while (1)
          {
            LOBYTE(v56) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v56 & 0x7F) << v48;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              goto LABEL_96;
            }
          }

LABEL_95:
          [a2 hasError];
LABEL_96:
          PBRepeatedInt64Add();
          goto LABEL_99;
        }

        v56 = 0;
        v57 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v35 = [a2 position];
          if (v35 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v58 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v58 & 0x7F) << v36;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              goto LABEL_71;
            }
          }

          [a2 hasError];
LABEL_71:
          PBRepeatedInt64Add();
        }

LABEL_72:
        PBReaderRecallMark();
        goto LABEL_99;
      case 7:
        v17 = PBReaderReadString();
        v18 = *(a1 + 72);
        *(a1 + 72) = v17;

        goto LABEL_99;
    }

    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

void sub_228A417C8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableUserDomainConceptTypeIdentifierReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableDeletedSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDBinnedAnalyticsValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    return a3;
  }

  if (a1 <= a2)
  {
    return (a3 * (a1 / a3));
  }

  a3 = a4;
  if (a1 < a5)
  {
    return (a3 * (a1 / a3));
  }

  return a5;
}

uint64_t HDBucketedDatabaseSizeInMB(uint64_t a1)
{
  if (a1 > 99)
  {
    if (a1 == 100)
    {
      return 100;
    }

    else
    {
      if (a1 < 0x3E9)
      {
        v2 = 100;
      }

      else
      {
        if (a1 >> 3 > 0x270)
        {
          return 5000;
        }

        v2 = 1000;
      }

      return (v2 * (a1 / v2));
    }
  }

  else if (a1)
  {
    v1 = 10;
    if (a1 >= 11)
    {
      return 10 * (a1 / 0xAu);
    }
  }

  else
  {
    return 0;
  }

  return v1;
}

uint64_t HDDatabaseSizeInMB(void *a1)
{
  v1 = [a1 database];
  v2 = [v1 databaseSizeInBytes];

  if (v2)
  {
    v3 = [v2 longLongValue] / 0x100000;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t HDDatabaseBucketedSizeInMBForDatabaseType(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 database];
  v6 = [v5 databaseSizeInBytesForTypeUnprotected:a2 WAL:a3];

  v7 = HDBucketedDatabaseSizeInMB([v6 integerValue] / 0x100000);
  return v7;
}

id HDAnalyticsBucketedNumberOfStandAndIdleHours(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCD0C0];
  v6 = *MEMORY[0x277CCB8E0];
  v7 = a2;
  v8 = a1;
  v9 = [v5 categoryTypeForIdentifier:v6];
  v10 = HDSampleEntityPredicateForDateInterval(v7, v9);

  v17 = 0;
  v11 = [HDSampleEntity countOfSamplesWithType:v9 profile:v8 matchingPredicate:v10 withError:&v17];

  v12 = v17;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  if (v13)
  {
    if (v11)
    {
      if (v11 >= 4)
      {
        if ((v11 - 4) >= 3)
        {
          if ((v11 - 7) >= 3)
          {
            if ((v11 - 10) >= 3)
            {
              if ((v11 - 13) >= 4)
              {
                if ((v11 - 17) >= 4)
                {
                  if (v11 <= 20)
                  {
                    v14 = *MEMORY[0x277CCB7A0];
                  }

                  else
                  {
                    v14 = &unk_283CB0510;
                  }
                }

                else
                {
                  v14 = &unk_283CB04F8;
                }
              }

              else
              {
                v14 = &unk_283CB04E0;
              }
            }

            else
            {
              v14 = &unk_283CB04C8;
            }
          }

          else
          {
            v14 = &unk_283CB04B0;
          }
        }

        else
        {
          v14 = &unk_283CB0498;
        }
      }

      else
      {
        v14 = &unk_283CB0480;
      }
    }

    else
    {
      v14 = &unk_283CB0468;
    }
  }

  else if (a3)
  {
    v15 = v12;
    v14 = 0;
    *a3 = v12;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

  return v14;
}

id HDAnalyticsCountOfSamples(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = HDSampleEntityPredicateForDateInterval(a3, v10);
  v13 = v12;
  if (v11)
  {
    v14 = MEMORY[0x277D10B20];
    v26[0] = v12;
    v26[1] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v16 = [v14 predicateMatchingAllPredicates:v15];

    v13 = v16;
  }

  v25 = 0;
  v17 = [HDSampleEntity countOfSamplesWithType:v10 profile:v9 matchingPredicate:v13 withError:&v25];
  v18 = v25;
  v19 = v18;
  if (v17)
  {
    v20 = 1;
  }

  else
  {
    v20 = v18 == 0;
  }

  if (v20)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
  }

  else if (a5)
  {
    v22 = v18;
    v21 = 0;
    *a5 = v19;
  }

  else
  {
    _HKLogDroppedError();
    v21 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

id HDAnalyticsCountOfIntervalsForQuantityType(void *a1, void *a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v9 = HDAnalyticsStatisticsCollectionOfIntervalsForQuantityType(a1, a2, a3, a5, a6, &v27);
  v10 = v27;
  v11 = v10;
  if (v9)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v9 statistics];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v12);
          }

          if ([*(*(&v23 + 1) + 8 * i) dataCount] >= a4)
          {
            ++v15;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  }

  else
  {
    v18 = v10;
    if (v18)
    {
      if (a7)
      {
        v19 = v18;
        *a7 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id HDAnalyticsStatisticsCollectionOfIntervalsForQuantityType(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x277CCDD78];
  v15 = a1;
  v16 = [v14 alloc];
  v17 = [v12 startDate];
  v18 = [v16 initWithAnchorDate:v17 intervalComponents:v10];

  v39 = v18;
  v19 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v11 intervalCollection:v18 options:_HKStatisticsOptionPresence() mergeStrategy:1];
  v20 = HDSampleEntityPredicateForDateInterval(v12, v11);
  v21 = v20;
  if (v13)
  {
    v22 = MEMORY[0x277D10B20];
    v43[0] = v20;
    v43[1] = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v24 = [v22 predicateMatchingAllPredicates:v23];

    v21 = v24;
  }

  v25 = [[HDStatisticsCollectionCalculatorDefaultDataSource alloc] initForProfile:v15 quantityType:v11 predicate:v21 restrictedSourceEntities:0];

  [v19 setDataSource:v25];
  v26 = objc_alloc(MEMORY[0x277CCDA58]);
  v27 = [v12 startDate];
  v28 = [v26 initWithAnchorDate:v27 statisticsInterval:v10];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __HDAnalyticsStatisticsCollectionOfIntervalsForQuantityType_block_invoke;
  v41[3] = &unk_278614AE0;
  v29 = v28;
  v42 = v29;
  [v19 setStatisticsHandler:v41];
  v40 = 0;
  LOBYTE(v28) = [v19 queryForInitialStatisticsWithError:&v40];
  v30 = v40;
  v31 = v30;
  if (v28)
  {
    v32 = v29;
  }

  else
  {
    v33 = v30;
    v34 = v33;
    if (v33)
    {
      if (a6)
      {
        v35 = v33;
        *a6 = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v32 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v32;
}

id HDAnalyticsCountOfSleepDaysWithStandHoursPriorToDate(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = MEMORY[0x277CCD0C0];
  v10 = *MEMORY[0x277CCB8E0];
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = [v9 categoryTypeForIdentifier:v10];
  v15 = [v12 hk_sleepDayStartWithCalendar:v11];

  v16 = [v11 dateByAddingUnit:16 value:-a4 toDate:v15 options:0];
  v17 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v17 setCalendar:v11];

  [v17 setDay:1];
  v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v15];
  v19 = HDAnalyticsCountOfIntervalsForCategoryType(v13, v17, v14, v18, a5);

  return v19;
}

id HDAnalyticsCountOfIntervalsForCategoryType(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v62[6] = *MEMORY[0x277D85DE8];
  v52 = a1;
  v53 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc(MEMORY[0x277CCDD78]);
  v11 = [v9 startDate];
  v12 = [v10 initWithAnchorDate:v11 intervalComponents:v53];

  v48 = v8;
  v50 = v12;
  v49 = [HDStatisticsCollectionCalculator calculatorForCategoryType:v8 intervalCollection:v12 options:_HKStatisticsOptionPresence() mergeStrategy:1];
  v13 = MEMORY[0x277D10B20];
  v51 = HDSampleEntityPredicateForDataType(v8);
  v62[0] = v51;
  v46 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
  v62[1] = v46;
  v45 = [v9 startDate];
  v14 = HDSampleEntityPredicateForStartDate(6);
  v62[2] = v14;
  v15 = [v9 endDate];
  v16 = HDSampleEntityPredicateForStartDate(3);
  v62[3] = v16;
  v17 = [v9 endDate];
  v18 = HDSampleEntityPredicateForEndDate(4);
  v62[4] = v18;
  v19 = [v9 startDate];
  v20 = HDSampleEntityPredicateForEndDate(6);
  v62[5] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:6];
  v22 = [v13 predicateMatchingAllPredicates:v21];

  v23 = [HDStatisticsCollectionCalculatorDefaultDataSource initForProfile:"initForProfile:categoryType:predicate:restrictedSourceEntities:" categoryType:v52 predicate:? restrictedSourceEntities:?];
  [v49 setDataSource:v23];
  v24 = objc_alloc(MEMORY[0x277CCDA58]);
  v25 = [v9 startDate];
  v26 = [v24 initWithAnchorDate:v25 statisticsInterval:v53];

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __HDAnalyticsCountOfIntervalsForCategoryType_block_invoke;
  v59[3] = &unk_278614AE0;
  v27 = v26;
  v60 = v27;
  [v49 setStatisticsHandler:v59];
  v58 = 0;
  LOBYTE(v26) = [v49 queryForInitialStatisticsWithError:&v58];
  v28 = v58;
  v29 = v28;
  if (v26)
  {
    v47 = v22;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v30 = [v27 statistics];
    v31 = [v30 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v55;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v55 != v34)
          {
            objc_enumerationMutation(v30);
          }

          if ([*(*(&v54 + 1) + 8 * i) dataCount])
          {
            ++v33;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    v41 = [MEMORY[0x277CCABB0] numberWithInteger:v33];
    v39 = v50;
    v38 = v9;
    v22 = v47;
  }

  else
  {
    v36 = v28;
    v37 = v36;
    v39 = v50;
    v38 = v9;
    if (v36)
    {
      if (a5)
      {
        v40 = v36;
        *a5 = v37;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v41 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCloudSyncCodableSharedSummaryTransactionRecordReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [a1 addSummaryIdentifiers:v16];
          }

          goto LABEL_28;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 8;
          goto LABEL_27;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_27:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_28:

          goto LABEL_29;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_27;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228A4EEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose((v52 - 192), 8);
  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A4F268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCloudSyncCodableLogReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = PBReaderReadString();
        v16 = *(a1 + 16);
        *(a1 + 16) = v15;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableRoutinePredictedLocationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41[0] & 0x7F) << v5;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          *(a1 + 48) |= 1u;
          v41[0] = 0;
          v26 = [a2 position] + 8;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v41[0];
          v37 = 8;
          goto LABEL_67;
        }

        if (v13 == 3)
        {
          *(a1 + 48) |= 2u;
          v41[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v41[0];
          v37 = 16;
LABEL_67:
          *(a1 + v37) = v36;
          goto LABEL_68;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_68;
      }

      v18 = objc_alloc_init(HDCodableRoutineLocation);
      objc_storeStrong((a1 + 32), v18);
      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableRoutineLocationReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_68:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v41[0] & 0x7F) << v19;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_57:
        v34 = 40;
        goto LABEL_62;
      case 5:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          LOBYTE(v41[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v41[0] & 0x7F) << v28;
          if ((v41[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v30;
        }

LABEL_61:
        v34 = 44;
LABEL_62:
        *(a1 + v34) = v25;
        goto LABEL_68;
      case 6:
        v16 = PBReaderReadData();
        v17 = *(a1 + 24);
        *(a1 + 24) = v16;

        goto LABEL_68;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

void sub_228A52280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A53498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_228A53B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

id HDSharedSummaryMergeAuthorizationIdentifiers(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a3;
  v7 = a2;
  v8 = [v5 setWithArray:a1];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v7];

  [v8 unionSet:v9];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v6];

  [v8 minusSet:v10];
  v11 = [v8 allObjects];

  return v11;
}

id HDCNContactForCodableEntry(void *a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  _HKInitializeLogging();
  v5 = HKLogSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 primaryContactIdentifier];
    v7 = [v3 uuid];
    *buf = 138478083;
    v78 = v6;
    v79 = 2114;
    v80 = v7;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[summary-sharing] Updating name for entry with identifier %{private}@ and UUID %{public}@", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = v3;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [v9 primaryContactIdentifier];
  v12 = [v11 _appearsToBePhoneNumber];

  if (v12)
  {
    v13 = [v9 primaryContactIdentifier];
    [v10 addObject:v13];
  }

  v14 = [v10 copy];

  v15 = v9;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [v15 primaryContactIdentifier];
  v18 = [v17 _appearsToBeEmail];

  if (v18)
  {
    v19 = [v15 primaryContactIdentifier];
    [v16 addObject:v19];
  }

  v60 = [v16 copy];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v20 = v14;
  v21 = [v20 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v67;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v67 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = _HDContactsForContactIdentifier(*(*(&v66 + 1) + 8 * i), v4);
        if (v25)
        {
          [v8 addObjectsFromArray:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v22);
  }

  v26 = [v8 count];
  _HKInitializeLogging();
  v27 = HKLogSharing();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  v59 = v15;
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_34;
    }

    v29 = [v8 count];
    v30 = [v15 primaryContactIdentifier];
    v31 = [v15 uuid];
    *buf = 134218499;
    v78 = v29;
    v79 = 2113;
    v80 = v30;
    v81 = 2114;
    v82 = v31;
    goto LABEL_33;
  }

  if (v28)
  {
    v32 = [v15 primaryContactIdentifier];
    v33 = [v15 uuid];
    *buf = 138478083;
    v78 = v32;
    v79 = 2114;
    v80 = v33;
    _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[summary-sharing] Looking for email address contacts for identifiers %{private}@ and UUID %{public}@", buf, 0x16u);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v34 = v60;
  v35 = [v34 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v63;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v63 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = _HDContactsForContactIdentifier(*(*(&v62 + 1) + 8 * j), v4);
        if (v39)
        {
          [v8 addObjectsFromArray:v39];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v36);
  }

  if ([v8 count])
  {
    _HKInitializeLogging();
    v27 = HKLogSharing();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v40 = [v8 count];
    v30 = [v59 primaryContactIdentifier];
    v31 = [v59 uuid];
    *buf = 134218499;
    v78 = v40;
    v79 = 2113;
    v80 = v30;
    v81 = 2114;
    v82 = v31;
LABEL_33:
    _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[summary-sharing] Found %lu contacts. Finding best match for %{private}@ and UUID %{public}@", buf, 0x20u);

LABEL_34:
    v41 = v8;
    if ([v41 count])
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v42 = v41;
      v43 = [v42 countByEnumeratingWithState:&v71 objects:buf count:16];
      if (v43)
      {
        v44 = v43;
        v58 = v41;
        v45 = 0;
        v46 = *v72;
        obj = v42;
        while (2)
        {
          for (k = 0; k != v44; ++k)
          {
            if (*v72 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v71 + 1) + 8 * k);
            v49 = [v48 givenName];
            if (v49)
            {
              v50 = v49;
              v51 = [v48 familyName];

              if (v51)
              {
                v54 = v48;

                v45 = v54;
                v41 = v58;
                goto LABEL_54;
              }
            }

            v52 = [v48 givenName];

            if (v52)
            {
              v53 = v48;

              v45 = v53;
            }
          }

          v42 = obj;
          v44 = [obj countByEnumeratingWithState:&v71 objects:buf count:16];
          if (v44)
          {
            continue;
          }

          break;
        }

        v41 = v58;
        if (v45)
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

      _HKInitializeLogging();
      v55 = HKLogSharing();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *v70 = 0;
        _os_log_impl(&dword_228986000, v55, OS_LOG_TYPE_DEFAULT, "[summary-sharing] No first name found for any requested contacts.", v70, 2u);
      }

      v45 = [v42 anyObject];
    }

    else
    {
      v45 = 0;
    }

LABEL_54:

    goto LABEL_55;
  }

  v45 = 0;
LABEL_55:

  v56 = *MEMORY[0x277D85DE8];

  return v45;
}

id _HDContactsForContactIdentifier(void *a1, void *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v6 = *MEMORY[0x277CBCFF8];
  v28[0] = *MEMORY[0x277CBD000];
  v28[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v8 = [v5 initWithKeysToFetch:v7];

  if ([v3 _appearsToBeEmail])
  {
    v9 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v3];
    [v8 setPredicate:v9];
  }

  else
  {
    if (![v3 _appearsToBePhoneNumber])
    {
      v16 = 0;
      goto LABEL_12;
    }

    v10 = MEMORY[0x277CBDA58];
    v9 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v3];
    v11 = [v10 predicateForContactsMatchingPhoneNumber:v9];
    [v8 setPredicate:v11];
  }

  [v8 setUnifyResults:0];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = ___HDContactsForContactIdentifier_block_invoke;
  v23 = &unk_278615430;
  v13 = v12;
  v24 = v13;
  v14 = [v4 enumerateContactsWithFetchRequest:v8 error:&v25 usingBlock:&v20];
  v15 = v25;
  if (v14)
  {
    v16 = [v13 copy];
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogSharing();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[summary-sharing] Contacts error occured %{public}@", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t HDMergedSharingStatus(uint64_t result, unint64_t a2)
{
  if (result <= 1)
  {
    if (!result)
    {
      return a2;
    }

    if (result == 1 && a2 < 5)
    {
      v2 = &unk_229165AE0;
      return v2[a2];
    }
  }

  else
  {
    if (result == 2)
    {
      return result;
    }

    if (result == 3)
    {
      if (a2 >= 5)
      {
        return result;
      }

      v2 = &unk_229165B30;
      return v2[a2];
    }

    if (result == 4 && a2 < 5)
    {
      v2 = &unk_229165B08;
      return v2[a2];
    }
  }

  return result;
}

uint64_t HDCodableBloodPressureJournalScheduleTimeIntervalReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(HDCodableDateComponents);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableDateComponentsReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSyncAnchorRangeMapReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSyncAnchorRange);
        [a1 addAnchorRanges:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSyncAnchorRangeReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t statistics::Statistics::Statistics(uint64_t this)
{
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 64) = 0;
  *(this + 160) = 0;
  *(this + 204) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_283BE6208;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 112) = 0;
  return this;
}

{
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 64) = 0;
  *(this + 160) = 0;
  *(this + 204) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_283BE6208;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 112) = 0;
  return this;
}

void statistics::Statistics::~Statistics(statistics::Statistics *this)
{
  *this = &unk_283BE6208;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v8 = (this + 64);
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PB::Base::~Base(this);
}

{
  statistics::Statistics::~Statistics(this);

  JUMPOUT(0x22AAC8590);
}

uint64_t statistics::Statistics::Statistics(uint64_t this, const statistics::Statistics *a2)
{
  *(this + 8) = 0;
  *(this + 64) = 0;
  *this = &unk_283BE6208;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 112) = 0;
  *(this + 160) = 0;
  *(this + 204) = 0;
  *(this + 16) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  if (*(a2 + 14))
  {
    operator new();
  }

  v2 = *(a2 + 51);
  if (v2)
  {
    v11 = *(a2 + 3);
    *(this + 204) |= 1u;
    *(this + 24) = v11;
    v2 = *(a2 + 51);
    if ((v2 & 0x400) == 0)
    {
LABEL_5:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_5;
  }

  v12 = *(a2 + 19);
  *(this + 204) |= 0x400u;
  *(this + 152) = v12;
  v2 = *(a2 + 51);
  if ((v2 & 0x40) == 0)
  {
LABEL_6:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = *(a2 + 12);
  *(this + 204) |= 0x40u;
  *(this + 96) = v13;
  v2 = *(a2 + 51);
  if ((v2 & 0x80) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 13);
  *(this + 204) |= 0x80u;
  *(this + 104) = v14;
  v2 = *(a2 + 51);
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 11);
  *(this + 204) |= 0x20u;
  *(this + 88) = v15;
  v2 = *(a2 + 51);
  if ((v2 & 0x2000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(a2 + 23);
  *(this + 204) |= 0x2000u;
  *(this + 184) = v16;
  v2 = *(a2 + 51);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(a2 + 24);
  *(this + 204) |= 0x4000u;
  *(this + 192) = v17;
  v2 = *(a2 + 51);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 7);
  *(this + 204) |= 0x10u;
  *(this + 56) = v18;
  v2 = *(a2 + 51);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 6);
  *(this + 204) |= 8u;
  *(this + 48) = v19;
  v2 = *(a2 + 51);
  if ((v2 & 4) == 0)
  {
LABEL_13:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 5);
  *(this + 204) |= 4u;
  *(this + 40) = v20;
  v2 = *(a2 + 51);
  if ((v2 & 0x800) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_42:
  v21 = *(a2 + 21);
  *(this + 204) |= 0x800u;
  *(this + 168) = v21;
  if ((*(a2 + 51) & 0x1000) != 0)
  {
LABEL_15:
    v3 = *(a2 + 22);
    *(this + 204) |= 0x1000u;
    *(this + 176) = v3;
  }

LABEL_16:
  v4 = *(a2 + 8);
  if (v4 != *(a2 + 9))
  {
    v5 = *v4;
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval const&>();
  }

  if (*(a2 + 20))
  {
    operator new();
  }

  v6 = *(a2 + 51);
  if ((v6 & 0x100) != 0)
  {
    v22 = *(a2 + 17);
    *(this + 204) |= 0x100u;
    *(this + 136) = v22;
    v6 = *(a2 + 51);
    if ((v6 & 2) == 0)
    {
LABEL_22:
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_22;
  }

  v23 = *(a2 + 4);
  *(this + 204) |= 2u;
  *(this + 32) = v23;
  if ((*(a2 + 51) & 0x10000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 201);
    *(this + 204) |= 0x10000u;
    *(this + 201) = v7;
  }

LABEL_24:
  if (*(a2 + 15))
  {
    operator new();
  }

  v8 = *(a2 + 51);
  if ((v8 & 0x8000) != 0)
  {
    v9 = *(a2 + 200);
    *(this + 204) |= 0x8000u;
    *(this + 200) = v9;
    v8 = *(a2 + 51);
  }

  if ((v8 & 0x200) != 0)
  {
    v10 = *(a2 + 18);
    *(this + 204) |= 0x200u;
    *(this + 144) = v10;
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

statistics *statistics::Statistics::operator=(statistics *a1, const statistics::Statistics *a2)
{
  if (a1 != a2)
  {
    statistics::Statistics::Statistics(v5, a2);
    statistics::swap(a1, v5, v3);
    statistics::Statistics::~Statistics(v5);
  }

  return a1;
}

double statistics::swap(statistics *this, statistics::Statistics *a2, statistics::Statistics *a3)
{
  v3 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v3;
  v4 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v8;
  v9 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v9;
  v11 = *(this + 2);
  v10 = *(this + 3);
  v12 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v12;
  *(a2 + 3) = v10;
  v13 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v13;
  v14 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v14;
  *(a2 + 2) = v11;
  v16 = *(this + 16);
  v15 = *(this + 17);
  v17 = *(a2 + 17);
  *(this + 16) = *(a2 + 16);
  *(this + 17) = v17;
  *(a2 + 17) = v15;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  LOBYTE(v18) = *(this + 201);
  *(this + 201) = *(a2 + 201);
  *(a2 + 201) = v18;
  LOBYTE(v18) = *(this + 200);
  *(this + 200) = *(a2 + 200);
  *(a2 + 200) = v18;
  v19 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  v20 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v20;
  v21 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v21;
  v22 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v22;
  v23 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v23;
  v24 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v24;
  v25 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v25;
  v26 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v26;
  v27 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v27;
  result = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = result;
  *(a2 + 18) = v19;
  *(a2 + 16) = v16;
  v29 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v29;
  return result;
}

uint64_t statistics::Statistics::Statistics(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_283BE6208;
  *(a1 + 64) = 0;
  v5 = (a1 + 64);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 160) = 0;
  *(a1 + 16) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 204) = *(a2 + 204);
  *(a2 + 204) = 0;
  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  v7 = *(a1 + 112);
  *(a1 + 112) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  std::vector<std::unique_ptr<statistics::Interval>>::__vdeallocate(v5);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v8 = *(a2 + 160);
  *(a2 + 160) = 0;
  v9 = *(a1 + 160);
  *(a1 + 160) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 201) = *(a2 + 201);
  v10 = *(a2 + 120);
  *(a2 + 120) = 0;
  v11 = *(a1 + 120);
  *(a1 + 120) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 144) = *(a2 + 144);
  v12 = *(a2 + 16);
  *(a2 + 16) = 0;
  v13 = *(a1 + 16);
  *(a1 + 16) = v12;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v13);
  }

  v14 = *(a2 + 128);
  *(a2 + 128) = 0;
  v15 = *(a1 + 128);
  *(a1 + 128) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a2 + 8);
  *(a2 + 8) = 0;
  v17 = *v4;
  *v4 = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return a1;
}

statistics *statistics::Statistics::operator=(statistics *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    statistics::Statistics::Statistics(v5, a2);
    statistics::swap(a1, v5, v3);
    statistics::Statistics::~Statistics(v5);
  }

  return a1;
}

uint64_t statistics::Statistics::formatText(statistics::Statistics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "auxiliaryStatistics");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 51);
  if (v6)
  {
    v17 = *(this + 3);
    PB::TextFormatter::format(a2, "count");
    v6 = *(this + 51);
    if ((v6 & 2) == 0)
    {
LABEL_7:
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_7;
  }

  v18 = *(this + 4);
  PB::TextFormatter::format(a2, "effectiveCount");
  v6 = *(this + 51);
  if ((v6 & 0x8000) == 0)
  {
LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = *(this + 200);
  PB::TextFormatter::format(a2, "enableOverlapProcessing");
  v6 = *(this + 51);
  if ((v6 & 4) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "freezeTimestamp", *(this + 5));
  v6 = *(this + 51);
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_43:
  v20 = *(this + 6);
  PB::TextFormatter::format(a2, "frozenBucketCount");
  if ((*(this + 51) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "frozenMean", *(this + 7));
  }

LABEL_12:
  v7 = *(this + 8);
  v8 = *(this + 9);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "intervals");
  }

  v10 = *(this + 51);
  if ((v10 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "max", *(this + 11));
    v10 = *(this + 51);
    if ((v10 & 0x40) == 0)
    {
LABEL_16:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_16;
  }

  PB::TextFormatter::format(a2, "mean", *(this + 12));
  if ((*(this + 51) & 0x80) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(a2, "min", *(this + 13));
  }

LABEL_18:
  v11 = *(this + 14);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "mostRecentDatum");
  }

  v12 = *(this + 15);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "overlapProcessorState");
  }

  v13 = *(this + 16);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "primaryStatistics");
  }

  v14 = *(this + 51);
  if ((v14 & 0x100) != 0)
  {
    v21 = *(this + 17);
    PB::TextFormatter::format(a2, "relativeValueState");
    v14 = *(this + 51);
    if ((v14 & 0x10000) == 0)
    {
LABEL_26:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_50;
    }
  }

  else if ((v14 & 0x10000) == 0)
  {
    goto LABEL_26;
  }

  v22 = *(this + 201);
  PB::TextFormatter::format(a2, "setAnchorTime");
  v14 = *(this + 51);
  if ((v14 & 0x200) == 0)
  {
LABEL_27:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_50:
  v23 = *(this + 18);
  PB::TextFormatter::format(a2, "sourceID");
  if ((*(this + 51) & 0x400) != 0)
  {
LABEL_28:
    PB::TextFormatter::format(a2, "sum", *(this + 19));
  }

LABEL_29:
  v15 = *(this + 20);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "unfinishedDatum");
  }

  v16 = *(this + 51);
  if ((v16 & 0x800) != 0)
  {
    v24 = *(this + 21);
    PB::TextFormatter::format(a2, "unfrozenCount");
    v16 = *(this + 51);
    if ((v16 & 0x1000) == 0)
    {
LABEL_33:
      if ((v16 & 0x2000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_54;
    }
  }

  else if ((v16 & 0x1000) == 0)
  {
    goto LABEL_33;
  }

  PB::TextFormatter::format(a2, "unfrozenMean", *(this + 22));
  v16 = *(this + 51);
  if ((v16 & 0x2000) == 0)
  {
LABEL_34:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "weightTotal", *(this + 23));
  if ((*(this + 51) & 0x4000) != 0)
  {
LABEL_35:
    PB::TextFormatter::format(a2, "weightedMean", *(this + 24));
  }

LABEL_36:

  return MEMORY[0x2821A4560](a2);
}

uint64_t statistics::Statistics::readFrom(statistics::Statistics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 99)
    {
      if (v22 > 999)
      {
        if (v22 == 1000)
        {
          operator new();
        }

        if (v22 == 1001)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 100)
        {
          *(this + 51) |= 0x200u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v100 = 0;
            v101 = 0;
            v37 = 0;
            v102 = (v34 + v33);
            v18 = v32 >= v33;
            v103 = v32 - v33;
            if (!v18)
            {
              v103 = 0;
            }

            v104 = v33 + 1;
            while (1)
            {
              if (!v103)
              {
                v37 = 0;
                *(a2 + 24) = 1;
                goto LABEL_172;
              }

              v105 = *v102;
              *(a2 + 1) = v104;
              v37 |= (v105 & 0x7F) << v100;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              ++v102;
              --v103;
              ++v104;
              v14 = v101++ > 8;
              if (v14)
              {
LABEL_122:
                v37 = 0;
                goto LABEL_172;
              }
            }

            if (*(a2 + 24))
            {
              v37 = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                goto LABEL_122;
              }
            }
          }

LABEL_172:
          *(this + 18) = v37;
          goto LABEL_185;
        }

        if (v22 == 101)
        {
          operator new();
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v131 = 0;
        return v131 & 1;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          *(this + 51) |= 1u;
          v74 = *(a2 + 1);
          v73 = *(a2 + 2);
          v75 = *a2;
          if (v74 <= 0xFFFFFFFFFFFFFFF5 && v74 + 10 <= v73)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = (v75 + v74);
            v80 = v74 + 1;
            do
            {
              *(a2 + 1) = v80;
              v81 = *v79++;
              v78 |= (v81 & 0x7F) << v76;
              if ((v81 & 0x80) == 0)
              {
                goto LABEL_184;
              }

              v76 += 7;
              ++v80;
              v14 = v77++ > 8;
            }

            while (!v14);
LABEL_154:
            v78 = 0;
            goto LABEL_184;
          }

          v124 = 0;
          v125 = 0;
          v78 = 0;
          v126 = (v75 + v74);
          v18 = v73 >= v74;
          v127 = v73 - v74;
          if (!v18)
          {
            v127 = 0;
          }

          v128 = v74 + 1;
          while (2)
          {
            if (v127)
            {
              v129 = *v126;
              *(a2 + 1) = v128;
              v78 |= (v129 & 0x7F) << v124;
              if (v129 < 0)
              {
                v124 += 7;
                ++v126;
                --v127;
                ++v128;
                v14 = v125++ > 8;
                if (v14)
                {
                  goto LABEL_154;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v78 = 0;
              }
            }

            else
            {
              v78 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_184:
          *(this + 3) = v78;
          goto LABEL_185;
        case 3:
          *(this + 51) |= 0x400u;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 19) = *(*a2 + v61);
          goto LABEL_160;
        case 4:
          *(this + 51) |= 0x40u;
          v71 = *(a2 + 1);
          if (v71 > 0xFFFFFFFFFFFFFFF7 || v71 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 12) = *(*a2 + v71);
          goto LABEL_160;
        case 5:
          *(this + 51) |= 0x80u;
          v50 = *(a2 + 1);
          if (v50 > 0xFFFFFFFFFFFFFFF7 || v50 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 13) = *(*a2 + v50);
          goto LABEL_160;
        case 6:
          *(this + 51) |= 0x20u;
          v86 = *(a2 + 1);
          if (v86 > 0xFFFFFFFFFFFFFFF7 || v86 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 11) = *(*a2 + v86);
          goto LABEL_160;
        case 7:
          *(this + 51) |= 0x2000u;
          v87 = *(a2 + 1);
          if (v87 > 0xFFFFFFFFFFFFFFF7 || v87 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 23) = *(*a2 + v87);
          goto LABEL_160;
        case 8:
          *(this + 51) |= 0x4000u;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 24) = *(*a2 + v72);
          goto LABEL_160;
        case 9:
          *(this + 51) |= 0x10u;
          v89 = *(a2 + 1);
          if (v89 > 0xFFFFFFFFFFFFFFF7 || v89 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 7) = *(*a2 + v89);
          goto LABEL_160;
        case 10:
          *(this + 51) |= 8u;
          v53 = *(a2 + 1);
          v52 = *(a2 + 2);
          v54 = *a2;
          if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = (v54 + v53);
            v59 = v53 + 1;
            do
            {
              *(a2 + 1) = v59;
              v60 = *v58++;
              v57 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_178;
              }

              v55 += 7;
              ++v59;
              v14 = v56++ > 8;
            }

            while (!v14);
LABEL_138:
            v57 = 0;
            goto LABEL_178;
          }

          v112 = 0;
          v113 = 0;
          v57 = 0;
          v114 = (v54 + v53);
          v18 = v52 >= v53;
          v115 = v52 - v53;
          if (!v18)
          {
            v115 = 0;
          }

          v116 = v53 + 1;
          while (2)
          {
            if (v115)
            {
              v117 = *v114;
              *(a2 + 1) = v116;
              v57 |= (v117 & 0x7F) << v112;
              if (v117 < 0)
              {
                v112 += 7;
                ++v114;
                --v115;
                ++v116;
                v14 = v113++ > 8;
                if (v14)
                {
                  goto LABEL_138;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v57 = 0;
              }
            }

            else
            {
              v57 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_178:
          *(this + 6) = v57;
          goto LABEL_185;
        case 11:
          *(this + 51) |= 4u;
          v88 = *(a2 + 1);
          if (v88 > 0xFFFFFFFFFFFFFFF7 || v88 + 8 > *(a2 + 2))
          {
            goto LABEL_104;
          }

          *(this + 5) = *(*a2 + v88);
          goto LABEL_160;
        case 12:
          *(this + 51) |= 0x800u;
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          v43 = *a2;
          if (v42 <= 0xFFFFFFFFFFFFFFF5 && v42 + 10 <= v41)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            do
            {
              *(a2 + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                goto LABEL_175;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
            }

            while (!v14);
LABEL_130:
            v46 = 0;
            goto LABEL_175;
          }

          v106 = 0;
          v107 = 0;
          v46 = 0;
          v108 = (v43 + v42);
          v18 = v41 >= v42;
          v109 = v41 - v42;
          if (!v18)
          {
            v109 = 0;
          }

          v110 = v42 + 1;
          while (2)
          {
            if (v109)
            {
              v111 = *v108;
              *(a2 + 1) = v110;
              v46 |= (v111 & 0x7F) << v106;
              if (v111 < 0)
              {
                v106 += 7;
                ++v108;
                --v109;
                ++v110;
                v14 = v107++ > 8;
                if (v14)
                {
                  goto LABEL_130;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v46 = 0;
              }
            }

            else
            {
              v46 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_175:
          *(this + 21) = v46;
          goto LABEL_185;
        case 13:
          *(this + 51) |= 0x1000u;
          v51 = *(a2 + 1);
          if (v51 > 0xFFFFFFFFFFFFFFF7 || v51 + 8 > *(a2 + 2))
          {
LABEL_104:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 22) = *(*a2 + v51);
LABEL_160:
            *(a2 + 1) += 8;
          }

          goto LABEL_185;
        case 14:
          PB::PtrVector<statistics::Interval>::emplace_back<>();
        case 15:
          operator new();
        case 16:
          *(this + 51) |= 0x100u;
          v63 = *(a2 + 1);
          v62 = *(a2 + 2);
          v64 = *a2;
          if (v63 <= 0xFFFFFFFFFFFFFFF5 && v63 + 10 <= v62)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = (v64 + v63);
            v69 = v63 + 1;
            do
            {
              *(a2 + 1) = v69;
              v70 = *v68++;
              v67 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                goto LABEL_181;
              }

              v65 += 7;
              ++v69;
              v14 = v66++ > 8;
            }

            while (!v14);
LABEL_146:
            v67 = 0;
            goto LABEL_181;
          }

          v118 = 0;
          v119 = 0;
          v67 = 0;
          v120 = (v64 + v63);
          v18 = v62 >= v63;
          v121 = v62 - v63;
          if (!v18)
          {
            v121 = 0;
          }

          v122 = v63 + 1;
          while (2)
          {
            if (v121)
            {
              v123 = *v120;
              *(a2 + 1) = v122;
              v67 |= (v123 & 0x7F) << v118;
              if (v123 < 0)
              {
                v118 += 7;
                ++v120;
                --v121;
                ++v122;
                v14 = v119++ > 8;
                if (v14)
                {
                  goto LABEL_146;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v67 = 0;
              }
            }

            else
            {
              v67 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_181:
          *(this + 17) = v67;
          goto LABEL_185;
        case 17:
          *(this + 51) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_169;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_114:
            v28 = 0;
            goto LABEL_169;
          }

          v94 = 0;
          v95 = 0;
          v28 = 0;
          v96 = (v25 + v24);
          v18 = v23 >= v24;
          v97 = v23 - v24;
          if (!v18)
          {
            v97 = 0;
          }

          v98 = v24 + 1;
          break;
        case 18:
          *(this + 51) |= 0x10000u;
          v82 = *(a2 + 1);
          if (v82 >= *(a2 + 2))
          {
            v85 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v83 = v82 + 1;
            v84 = *(*a2 + v82);
            *(a2 + 1) = v83;
            v85 = v84 != 0;
          }

          *(this + 201) = v85;
          goto LABEL_185;
        case 19:
          operator new();
        case 20:
          *(this + 51) |= 0x8000u;
          v90 = *(a2 + 1);
          if (v90 >= *(a2 + 2))
          {
            v93 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v91 = v90 + 1;
            v92 = *(*a2 + v90);
            *(a2 + 1) = v91;
            v93 = v92 != 0;
          }

          *(this + 200) = v93;
          goto LABEL_185;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v97)
        {
          v28 = 0;
          *(a2 + 24) = 1;
          goto LABEL_169;
        }

        v99 = *v96;
        *(a2 + 1) = v98;
        v28 |= (v99 & 0x7F) << v94;
        if ((v99 & 0x80) == 0)
        {
          break;
        }

        v94 += 7;
        ++v96;
        --v97;
        ++v98;
        v14 = v95++ > 8;
        if (v14)
        {
          goto LABEL_114;
        }
      }

      if (*(a2 + 24))
      {
        v28 = 0;
      }

LABEL_169:
      *(this + 4) = v28;
    }

LABEL_185:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v131 = v4 ^ 1;
  return v131 & 1;
}

uint64_t statistics::Statistics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 112);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 204);
  if (v5)
  {
    v18 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    v5 = *(v3 + 204);
    if ((v5 & 0x400) == 0)
    {
LABEL_5:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_5;
  }

  this = PB::Writer::write(a2, *(v3 + 152));
  v5 = *(v3 + 204);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 96));
  v5 = *(v3 + 204);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 104));
  v5 = *(v3 + 204);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 88));
  v5 = *(v3 + 204);
  if ((v5 & 0x2000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 184));
  v5 = *(v3 + 204);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 192));
  v5 = *(v3 + 204);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 56));
  v5 = *(v3 + 204);
  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v5 = *(v3 + 204);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

LABEL_49:
    v20 = *(v3 + 168);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 204) & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 40));
  v5 = *(v3 + 204);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_49;
  }

LABEL_14:
  if ((v5 & 0x1000) != 0)
  {
LABEL_15:
    this = PB::Writer::write(a2, *(v3 + 176));
  }

LABEL_16:
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 160);
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 204);
  if ((v10 & 0x100) != 0)
  {
    v21 = *(v3 + 136);
    this = PB::Writer::writeVarInt(a2);
    v10 = *(v3 + 204);
    if ((v10 & 2) == 0)
    {
LABEL_23:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_23;
  }

  v22 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 204) & 0x10000) != 0)
  {
LABEL_24:
    v11 = *(v3 + 201);
    this = PB::Writer::write(a2);
  }

LABEL_25:
  v12 = *(v3 + 120);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(v3 + 204);
  if ((v13 & 0x8000) != 0)
  {
    v14 = *(v3 + 200);
    this = PB::Writer::write(a2);
    v13 = *(v3 + 204);
  }

  if ((v13 & 0x200) != 0)
  {
    v15 = *(v3 + 144);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  v16 = *(v3 + 128);
  if (v16)
  {
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  v17 = *(v3 + 8);
  if (v17)
  {

    return PB::Writer::writeSubmessage(a2, v17);
  }

  return this;
}

uint64_t statistics::Statistics::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = *(a2 + 112);
  if (v4)
  {
    if (!v5 || !statistics::RawQuantitySample::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 204);
  v7 = *(a2 + 204);
  if (v6)
  {
    if ((v7 & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v6 & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    return 0;
  }

  if ((v6 & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    return 0;
  }

  if ((v6 & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    return 0;
  }

  if ((v6 & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    return 0;
  }

  if ((v6 & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v6 & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v6 & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    return 0;
  }

  if ((v6 & 8) != 0)
  {
    if ((v7 & 8) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v7 & 8) != 0)
  {
    return 0;
  }

  if ((v6 & 4) != 0)
  {
    if ((v7 & 4) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v7 & 4) != 0)
  {
    return 0;
  }

  if ((v6 & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    return 0;
  }

  if ((v6 & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    return 0;
  }

  result = PB::PtrVector<statistics::Interval>::operator==((a1 + 64), a2 + 64);
  if (!result)
  {
    return result;
  }

  v9 = *(a1 + 160);
  v10 = *(a2 + 160);
  if (v9)
  {
    if (!v10 || !statistics::RawQuantitySample::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 204);
  v12 = *(a2 + 204);
  if ((v11 & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    return 0;
  }

  if ((v11 & 2) != 0)
  {
    if ((v12 & 2) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v12 & 2) != 0)
  {
    return 0;
  }

  if ((v11 & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || *(a1 + 201) != *(a2 + 201))
    {
      return 0;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    return 0;
  }

  v13 = *(a1 + 120);
  v14 = *(a2 + 120);
  if (v13)
  {
    if (!v14 || !statistics::QuantityOverlapProcessorState::operator==(v13, v14) && *(a1 + 120) | *(a2 + 120))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 204);
  v16 = *(a2 + 204);
  if ((v15 & 0x8000) != 0)
  {
    if ((v16 & 0x8000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v16 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v15 & 0x200) != 0)
  {
    if ((v16 & 0x200) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v16 & 0x200) != 0)
  {
    return 0;
  }

  v17 = *(a1 + 16);
  v18 = *(a2 + 16);
  if (v17)
  {
    if (!v18 || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, v18))
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a2 + 128);
  if (*(a1 + 128))
  {
    if (!v19 || (statistics::Statistics::operator==() & 1) == 0 && *(a1 + 128) | *(a2 + 128))
    {
      return 0;
    }

LABEL_114:
    if (!*(a1 + 8))
    {
      return *(a2 + 8) == 0;
    }

    if (*(a2 + 8))
    {
      if (statistics::Statistics::operator==())
      {
        return 1;
      }

      if (!*(a1 + 8))
      {
        return *(a2 + 8) == 0;
      }
    }

    return 0;
  }

  if (!v19)
  {
    goto LABEL_114;
  }

  return 0;
}

BOOL PB::PtrVector<statistics::Interval>::operator==(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = statistics::Interval::operator==(v5, v7);
  }

  while (result && v3 != v2);
  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}