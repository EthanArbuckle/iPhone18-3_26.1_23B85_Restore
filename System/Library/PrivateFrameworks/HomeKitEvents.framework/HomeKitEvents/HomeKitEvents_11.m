uint64_t static EventManager.ensureDigests(homeIdentifier:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25424D948();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_25424DAA8();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25421FA20, 0, 0);
}

uint64_t sub_25421FA20()
{
  v31 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_25421B1A8(v0[12]);
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_25424DA88();
  v7 = sub_25424E448();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  v14 = v0[3];
  v13 = v0[4];
  if (v8)
  {
    v29 = v0[8];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v16 = sub_25424EA58();
    v27 = v9;
    v18 = v17;
    v26 = v7;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_2542203C4(v16, v18, &v30);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_254124000, v6, v26, "Ensuring digests for home %{mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x259C07330](v28, -1, -1);
    MEMORY[0x259C07330](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v27, v29);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[15] = v21;
  v0[16] = v19;
  v22 = v0[2];
  v23 = swift_task_alloc();
  v0[17] = v23;
  *(v23 + 16) = v22;
  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = sub_25421FCF0;

  return sub_2542199F4(sub_2542199F4, sub_254224E50, v23);
}

uint64_t sub_25421FCF0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_25422009C;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_25421FE0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25421FE0C()
{
  v35 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  sub_25421B1A8(v0[11]);
  v2(v3, v5, v4);
  v6 = sub_25424DA88();
  v7 = sub_25424E448();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v33 = v0[16];
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[6];
  v15 = v0[3];
  v14 = v0[4];
  if (v8)
  {
    v32 = v0[11];
    v16 = swift_slowAlloc();
    v31 = v11;
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v30 = v9;
    v18 = sub_25424EA58();
    v20 = v19;
    v33(v13, v15);
    v21 = sub_2542203C4(v18, v20, &v34);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_254124000, v6, v7, "Successfully ensured digests for home %{mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x259C07330](v17, -1, -1);
    MEMORY[0x259C07330](v16, -1, -1);

    v30(v32, v31);
  }

  else
  {

    v33(v13, v15);
    v9(v10, v11);
  }

  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];
  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_25422009C()
{
  v49 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  sub_25421B1A8(v5);
  v4(v6, v8, v7);
  v9 = v1;
  v10 = sub_25424DA88();
  v11 = sub_25424E428();

  if (os_log_type_enabled(v10, v11))
  {
    v42 = v0[16];
    v43 = v0[19];
    v46 = v0[10];
    v47 = v0[15];
    v44 = v0[9];
    v45 = v0[8];
    v12 = v0[5];
    v41 = v0[4];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v14 = 141558530;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v17 = sub_25424EA58();
    v19 = v18;
    v42(v12, v13);
    v20 = sub_2542203C4(v17, v19, &v48);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2112;
    v21 = v43;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&dword_254124000, v10, v11, "Failed to ensure digests for home %{mask.hash}s: %@", v14, 0x20u);
    sub_254132E5C(v15, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x259C07330](v16, -1, -1);
    MEMORY[0x259C07330](v14, -1, -1);

    v47(v46, v45);
  }

  else
  {
    v24 = v0[15];
    v23 = v0[16];
    v26 = v0[9];
    v25 = v0[10];
    v27 = v0[8];
    v29 = v0[4];
    v28 = v0[5];
    v30 = v0[3];

    v23(v28, v30);
    v24(v25, v27);
  }

  v31 = v0[19];
  v32 = v0[11];
  v33 = v0[12];
  v34 = v0[10];
  v36 = v0[6];
  v35 = v0[7];
  v37 = v0[5];
  swift_willThrow();

  v38 = v0[1];
  v39 = v0[19];

  return v38();
}

uint64_t sub_2542203C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254220490(v11, 0, 0, 1, a1, a2);
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
    sub_25414076C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_254220490(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25422059C(a5, a6);
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
    result = sub_25424E708();
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

uint64_t sub_25422059C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2542205E8(a1, a2);
  sub_254220718(&unk_286632E48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2542205E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2541826A4(v5, 0);
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

  result = sub_25424E708();
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
        v10 = sub_25424DDF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2541826A4(v10, 0);
        result = sub_25424E658();
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

uint64_t sub_254220718(uint64_t result)
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

  result = sub_254220804(result, v12, 1, v3);
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

char *sub_254220804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
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

unint64_t sub_2542208F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25424E848();
  v5 = sub_25424DC18();

  return sub_254220A6C(a1, v5);
}

unint64_t sub_25422095C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25424EBD8();
  sub_25424DD88();
  v6 = sub_25424EC28();

  return sub_254220C04(a1, a2, v6);
}

unint64_t sub_2542209D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25424D948();
  sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  v5 = sub_25424DC18();

  return sub_254220CBC(a1, v5);
}

unint64_t sub_254220A6C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_25424E848();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_25424DC98();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_254220C04(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25424EAB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_254220CBC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2542250B0(&qword_27F5B9090, MEMORY[0x277CC95F0]);
      v16 = sub_25424DC98();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_254220E7C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25424E848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC058, &qword_254261C00);
  v43 = a2;
  result = sub_25424E888();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_25412DCA8((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_25414076C(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_25424DC18();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_25412DCA8(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25422121C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC060, &qword_254261C08);
  v40 = a2;
  result = sub_25424E888();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2542214DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF8, &qword_254261B98);
  v43 = a2;
  result = sub_25424E888();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      result = sub_25424DC18();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2542218B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
  v36 = a2;
  result = sub_25424E888();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_25412DC4C(v25, v37);
      }

      else
      {
        sub_254140708(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25412DC4C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_254221B7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC038, &qword_254261BE8);
  v36 = a2;
  result = sub_25424E888();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25412DCA8(v25, v37);
      }

      else
      {
        sub_25414076C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25412DCA8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_254221E34(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC020, &qword_254261BC0);
  v48 = a2;
  result = sub_25424E888();
  v13 = result;
  if (*(v10 + 16))
  {
    v53 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = v2;
    v45 = (v7 + 16);
    v46 = v10;
    v47 = v7;
    v50 = (v7 + 32);
    v20 = result + 64;
    v21 = v49;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v47 + 72) * v28;
      v30 = 16 * v28;
      v51 = *(v47 + 72);
      v52 = v25;
      if (v48)
      {
        (*v50)(v21, v29, v53);
        v31 = *(v10 + 56) + v30;
        v32 = *v31;
        v33 = *(v31 + 8);
      }

      else
      {
        (*v45)(v21, v29, v53);
        v34 = *(v10 + 56) + v30;
        v32 = *v34;
        v33 = *(v34 + 8);
        sub_2541A1CE0(*v34, v33);
      }

      v35 = *(v13 + 40);
      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      result = sub_25424DC18();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v49;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v49;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v50)(*(v13 + 48) + v51 * v22, v21, v53);
      v23 = *(v13 + 56) + 16 * v22;
      *v23 = v32;
      *(v23 + 8) = v33;
      ++*(v13 + 16);
      v10 = v46;
      v18 = v52;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_25422222C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC008, &qword_254261BA8);
  v51 = a2;
  result = sub_25424E888();
  v14 = result;
  if (*(v11 + 16))
  {
    v54 = v10;
    v55 = v6;
    v47 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v48 = (v7 + 16);
    v49 = v7;
    v52 = (v7 + 32);
    v21 = result + 64;
    v50 = v11;
    while (v19)
    {
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v30 = v27 | (v15 << 6);
      v31 = *(v11 + 48);
      v53 = *(v7 + 72);
      v32 = v31 + v53 * v30;
      if (v51)
      {
        (*v52)(v54, v32, v55);
        v33 = (*(v11 + 56) + (v30 << 6));
        v35 = *v33;
        v34 = v33[1];
        v36 = v33[3];
        v58 = v33[2];
        v59 = v36;
        v56 = v35;
        v57 = v34;
      }

      else
      {
        (*v48)(v54, v32, v55);
        sub_254132DF4(*(v11 + 56) + (v30 << 6), &v56, &qword_27F5BC010, &qword_254261BB0);
      }

      v37 = *(v14 + 40);
      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      result = sub_25424DC18();
      v38 = -1 << *(v14 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v7 = v49;
        v11 = v50;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v21 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v7 = v49;
      v11 = v50;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v52)(*(v14 + 48) + v53 * v22, v54, v55);
      v23 = (*(v14 + 56) + (v22 << 6));
      v25 = v58;
      v24 = v59;
      v26 = v57;
      *v23 = v56;
      v23[1] = v26;
      v23[2] = v25;
      v23[3] = v24;
      ++*(v14 + 16);
    }

    v28 = v15;
    while (1)
    {
      v15 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v29 = v16[v15];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v19 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v11 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v45;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_254222624(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF0, &qword_254261B90);
  v39 = a2;
  result = sub_25424E888();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_2542228C8()
{
  v1 = v0;
  v27 = sub_25424E848();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC058, &qword_254261C00);
  v4 = *v0;
  v5 = sub_25424E878();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_25414076C(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_25412DCA8(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_254222B4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC060, &qword_254261C08);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_254222CC4()
{
  v1 = v0;
  v32 = sub_25424D948();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF8, &qword_254261B98);
  v4 = *v0;
  v5 = sub_25424E878();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_254222F38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_254140708(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25412DC4C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2542230E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC038, &qword_254261BE8);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25414076C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25412DCA8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_254223284()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC020, &qword_254261BC0);
  v6 = *v0;
  v7 = sub_25424E878();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = v26 + 16 * v21;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = *(v31 + 56) + v27;
        v6 = v37;
        *v32 = v29;
        *(v32 + 8) = v30;
        result = sub_2541A1CE0(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_254223518()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC008, &qword_254261BA8);
  v6 = *v0;
  v7 = sub_25424E878();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31[0] = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31[1] = v34 + 32;
    v31[2] = v34 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v23 = v33;
        v22 = v34;
        v24 = *(v34 + 72) * v21;
        v25 = v32;
        (*(v34 + 16))(v32, *(v6 + 48) + v24, v33);
        v21 <<= 6;
        sub_254132DF4(*(v6 + 56) + v21, v37, &qword_27F5BC010, &qword_254261BB0);
        v26 = v35;
        result = (*(v22 + 32))(*(v35 + 48) + v24, v25, v23);
        v27 = (*(v26 + 56) + v21);
        v29 = v37[2];
        v28 = v37[3];
        v30 = v37[1];
        *v27 = v37[0];
        v27[1] = v30;
        v27[2] = v29;
        v27[3] = v28;
        v16 = v36;
      }

      while (v36);
    }

    v19 = v12;
    v8 = v35;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31[0];
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v36 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_2542237AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF0, &qword_254261B90);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_254223918(uint64_t a1, unint64_t a2)
{
  sub_254140660(a1, a2);
  v4 = *(sub_25420BFC8(a1, a2) + 16);
  v5 = sub_25424DD68();

  return v5;
}

uint64_t sub_254223984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25424DD68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2542239C0(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_25424D268();
  if (a1)
  {
    a1 = sub_25424D298();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_25424D268() || !__OFSUB__(v5, sub_25424D298()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_25424D288();
LABEL_16:
  result = sub_25424DD68();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254223B6C(uint64_t a1, id *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8858, &qword_254252D30);
  return sub_25424E078();
}

uint64_t sub_254223BC0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 24) = a1;
  v4 = sub_25424DAA8();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 112) = *a2;

  return MEMORY[0x2822009F8](sub_254223CA4, 0, 0);
}

void sub_254223CA4()
{
  v32 = v0;
  v1 = *(*(v0 + 24) + 16);
  if (v1)
  {
    sub_25421B1A8(*(v0 + 64));

    v2 = sub_25424DA88();
    v3 = sub_25424E448();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 112);
      v28 = *(v0 + 64);
      v6 = *(v0 + 32);
      v5 = *(v0 + 40);
      v7 = *(v0 + 24);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v8 = 134218242;
      *(v8 + 4) = v1;

      *(v8 + 12) = 2080;
      if (v4)
      {
        v10 = 0x646572616873;
      }

      else
      {
        v10 = 0x64656E776FLL;
      }

      if (v4)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      v12 = sub_2542203C4(v10, v11, v31);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_254124000, v2, v3, "Writing %ld event(s) for %s scope", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x259C07330](v9, -1, -1);
      MEMORY[0x259C07330](v8, -1, -1);

      v13 = *(v5 + 8);
      v13(v28, v6);
    }

    else
    {
      v14 = *(v0 + 64);
      v15 = *(v0 + 32);
      v16 = *(v0 + 40);
      v17 = *(v0 + 24);

      v13 = *(v16 + 8);
      v13(v14, v15);
    }

    *(v0 + 72) = v13;
    v18 = *(v0 + 24);
    v30 = MEMORY[0x277D84F90];
    sub_254148258(0, v1, 0);
    v19 = *(type metadata accessor for SomeEvent() - 8);
    v20 = v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);
    do
    {
      sub_25421D3E0(v20, (v0 + 16), v31);
      v22 = *v31;
      v24 = *(v30 + 16);
      v23 = *(v30 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = *v31;
        sub_254148258((v23 > 1), v24 + 1, 1);
        v22 = v29;
      }

      *(v0 + 80) = v30;
      *(v30 + 16) = v24 + 1;
      *(v30 + 16 * v24 + 32) = v22;
      v20 += v21;
      --v1;
    }

    while (v1);
    v25 = *(v0 + 112);
    v26 = swift_task_alloc();
    *(v0 + 88) = v26;
    *(v26 + 16) = v30;
    *(v26 + 24) = v25;
    v27 = swift_task_alloc();
    *(v0 + 96) = v27;
    *v27 = v0;
    v27[1] = sub_254224084;

    sub_2542199F4(sub_2542199F4, sub_254224FE4, v26);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_254224084()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2542242D0;
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    v4 = sub_2542241A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2542241A8()
{
  sub_25421B1A8(v0[7]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_254124000, v1, v2, "Successfully wrote event(s)", v3, 2u);
    MEMORY[0x259C07330](v3, -1, -1);
  }

  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  v5(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2542242D0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];

  sub_25421B1A8(v4);
  v5 = v1;
  v6 = sub_25424DA88();
  v7 = sub_25424E428();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_254124000, v6, v7, "Failed to write event(s): %{public}@", v9, 0xCu);
    sub_254132E5C(v10, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v10, -1, -1);
    MEMORY[0x259C07330](v9, -1, -1);
  }

  v13 = v0[13];
  v14 = v0[9];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];

  v14(v15, v17);
  swift_willThrow();
  v18 = v0[13];
  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];

  v22 = v0[1];

  return v22();
}

uint64_t sub_254224488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25424DAA8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254224564, 0, 0);
}

void sub_254224564()
{
  if (*(v0 + 32) < 1)
  {
    __break(1u);
  }

  else
  {
    sub_25421B1A8(*(v0 + 72));
    v2 = sub_25424DA88();
    v3 = sub_25424E448();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 32);
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&dword_254124000, v2, v3, "Writing %ld fake event(s)", v5, 0xCu);
      MEMORY[0x259C07330](v5, -1, -1);
    }

    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);
    v13 = *(v0 + 16);

    v10 = *(v8 + 8);
    *(v0 + 80) = v10;
    *(v0 + 88) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *(v11 + 16) = v13;
    *(v11 + 32) = v9;
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_254224718;

    sub_2542199F4(sub_2542199F4, sub_254224FD8, v11);
  }
}

uint64_t sub_254224718()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_254224964;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_254224834;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254224834()
{
  sub_25421B1A8(v0[8]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_254124000, v1, v2, "Successfully wrote %ld fake events", v4, 0xCu);
    MEMORY[0x259C07330](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
  v10 = v0[5];

  v6(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_254224964()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[7];

  sub_25421B1A8(v3);
  v4 = v1;
  v5 = sub_25424DA88();
  v6 = sub_25424E428();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_254124000, v5, v6, "Failed to write fake event(s): %{public}@", v8, 0xCu);
    sub_254132E5C(v9, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v9, -1, -1);
    MEMORY[0x259C07330](v8, -1, -1);
  }

  v12 = v0[14];
  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[7];
  v18 = v0[5];

  v14(v17, v18);
  swift_willThrow();

  v19 = v0[1];
  v20 = v0[14];

  return v19();
}

unint64_t sub_254224B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
    v3 = sub_25424E898();
    v4 = a1 + 32;

    while (1)
    {
      sub_254132DF4(v4, &v13, &qword_27F5BAF48, &qword_25425CEA0);
      v5 = v13;
      v6 = v14;
      result = sub_25422095C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25412DC4C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_254224C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC018, &qword_254261BB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC020, &qword_254261BC0);
    v8 = sub_25424E898();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_254132DF4(v10, v6, &qword_27F5BC018, &qword_254261BB8);
      result = sub_2542209D4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25424D948();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 16 * v14;
      v18 = v9[8];
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_254224FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SomeEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254225054(uint64_t a1)
{
  v2 = type metadata accessor for SomeEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2542250B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2542250FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006CLL;
  v3 = 0x6C756E2F7665642FLL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73746E657645;
    }

    else
    {
      v5 = 0x6C756E2F7665642FLL;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE90000000000006CLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1684893549;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000032;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v4 == 3)
    {
      v6 = 0x800000025424FC90;
    }

    else
    {
      v6 = 0x800000025424FCD0;
    }
  }

  if (a2 <= 1u)
  {
    v8 = 0xE600000000000000;
    v7 = 0x73746E657645;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v3;
    }

    else
    {
      v10 = v7;
    }

    if (v9)
    {
      v11 = v2;
    }

    else
    {
      v11 = v8;
    }

    if (v5 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0x800000025424FC90;
    v3 = 0xD000000000000032;
    v7 = 0xD00000000000001BLL;
    v8 = 0x800000025424FCD0;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE400000000000000;
  if (v5 != 1684893549)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v6 != v11)
  {
LABEL_30:
    v12 = sub_25424EAB8();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_25422527C(char a1, char a2)
{
  if (*&aD_2[8 * a1] == *&aD_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2542252E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7472617473;
    }

    else
    {
      v3 = 1701670760;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 6581861;
  }

  else if (a1 == 3)
  {
    v3 = 0x69726F6765746163;
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x746E756F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7472617473;
    }

    else
    {
      v9 = 1701670760;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x69726F6765746163;
    v6 = 0xEA00000000007365;
    if (a2 != 3)
    {
      v5 = 0x746E756F63;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 6581861;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_25424EAB8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_254225450(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7472617473;
  v6 = 0xE300000000000000;
  v7 = 6581861;
  if (a1 != 4)
  {
    v7 = 1936154996;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x617461646174656DLL;
  if (a1 != 1)
  {
    v9 = 1701869940;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x73746E657665;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7472617473)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6581861)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936154996)
      {
LABEL_34:
        v13 = sub_25424EAB8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x617461646174656DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x73746E657665)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2542255F8(char a1, char a2)
{
  if (*&aData_4[8 * a1] == *&aData_4[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_254225660(char a1, char a2)
{
  if (*&aD_1[8 * a1] == *&aD_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2542256C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x74706D75736E6F63;
  v5 = 0xEB000000006E6F69;
  if (a1 != 5)
  {
    v4 = 0x69746375646F7270;
    v5 = 0xEA00000000006E6FLL;
  }

  v6 = 0xE800000000000000;
  v7 = 0x65636E6164697567;
  if (a1 != 3)
  {
    v7 = 0x6E6F6973736573;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6574617473;
  if (a1 != 1)
  {
    v8 = 0x6C6576656CLL;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE500000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x6574617473)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6C6576656CLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1701869940)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xEB000000006E6F69;
      if (v9 != 0x74706D75736E6F63)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEA00000000006E6FLL;
      if (v9 != 0x69746375646F7270)
      {
LABEL_39:
        v12 = sub_25424EAB8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x65636E6164697567)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E6F6973736573)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_2542258F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6710895;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000064;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x656767756C706E75;
    }

    else
    {
      v6 = 0x64656767756C70;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE200000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 28271;
    }

    else
    {
      v6 = 6710895;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE300000000000000;
  v9 = 0x656767756C706E75;
  v10 = 0xE900000000000064;
  if (a2 != 2)
  {
    v9 = 0x64656767756C70;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 28271;
    v8 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25424EAB8();
  }

  return v13 & 1;
}

uint64_t sub_254225A1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x6E6F697461727564;
    if (a1 != 1)
    {
      v10 = 0x7942666669726174;
      v9 = 0xEE00796772656E45;
    }

    if (a1)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0x796772656E65;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0x800000025424FC20;
    v4 = 0xD000000000000015;
    if (a1 != 5)
    {
      v4 = 0x65636E6164697567;
      v3 = 0xE800000000000000;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000025424FBE0;
    if (a1 != 3)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000025424FC00;
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
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE800000000000000;
        if (v7 != 0x6E6F697461727564)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v11 = 0xEE00796772656E45;
        if (v7 != 0x7942666669726174)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v7 != 0x796772656E65)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0x800000025424FC20;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v7 != 0x65636E6164697567)
      {
LABEL_41:
        v12 = sub_25424EAB8();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0x800000025424FBE0;
    if (v7 != 0xD000000000000010)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v11 = 0x800000025424FC00;
    if (v7 != 0xD000000000000013)
    {
      goto LABEL_41;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_41;
  }

  v12 = 1;
LABEL_42:

  return v12 & 1;
}

uint64_t sub_254225C88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472617473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74706D75736E6F63;
    }

    else
    {
      v4 = 0x69746375646F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701869940;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x74706D75736E6F63;
  v8 = 0xEB000000006E6F69;
  if (a2 != 2)
  {
    v7 = 0x69746375646F7270;
    v8 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 1701869940;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

uint64_t sub_254225DD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E6F6973736573;
    }

    else
    {
      v3 = 0x7472617473;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1701869940;
  }

  else if (a1 == 3)
  {
    v3 = 0x74706D75736E6F63;
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v3 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E6F6973736573;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x74706D75736E6F63;
    v6 = 0xEB000000006E6F69;
    if (a2 != 3)
    {
      v5 = 0x69746375646F7270;
      v6 = 0xEA00000000006E6FLL;
    }

    if (a2 == 2)
    {
      v7 = 1701869940;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_25424EAB8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_254225F60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74657366666FLL;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE800000000000000;
    v13 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v13 = 0x7942666669726174;
      v12 = 0xEE00796772656E45;
    }

    v14 = 0x796772656E65;
    if (!a1)
    {
      v14 = 0x74657366666FLL;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x800000025424FC20;
    v5 = 0xD000000000000015;
    v6 = 0xE500000000000000;
    v7 = 0x6C6576656CLL;
    if (a1 != 7)
    {
      v7 = 0x65636E6164697567;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xD000000000000010;
    v9 = 0x800000025424FBE0;
    if (a1 != 4)
    {
      v8 = 0xD000000000000013;
      v9 = 0x800000025424FC00;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v10 != 0x6E6F697461727564)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xEE00796772656E45;
        if (v10 != 0x7942666669726174)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v15 = 0xE600000000000000;
    if (a2)
    {
      if (v10 != 0x796772656E65)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0x800000025424FBE0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0x800000025424FC00;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v15 = 0x800000025424FC20;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v15 = 0xE500000000000000;
      if (v10 != 0x6C6576656CLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v15 = 0xE800000000000000;
    v2 = 0x65636E6164697567;
  }

  if (v10 != v2)
  {
LABEL_49:
    v16 = sub_25424EAB8();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_254226238()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254226374()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254226494()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254226574(uint64_t a1, char a2)
{
  sub_25424EBD8();
  v3 = *&aD_2[8 * a2];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2542265D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      return 1;
    }
  }

  else if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254226694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 1) != 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 1) != 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v7 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (*(a2 + 88))
    {
      return 1;
    }
  }

  else if ((*(a2 + 88) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return 0;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.tariffByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 73) = *(v1 + 89);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.tariffByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *(a1 + 32) = *(v1 + 144);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 176);
  *(a1 + 73) = *(v1 + 185);
  result = *(v1 + 112);
  v4 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.cleanlinessByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 240);
  result = *(v1 + 249);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.cleanlinessByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = *(v1 + 272);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 304);
  result = *(v1 + 313);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.init(energy:duration:tariffByEnergy:tariffByDuration:cleanlinessByEnergy:cleanlinessByDuration:didFollowGuidance:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  *&v16[39] = a4[2];
  *&v16[55] = a4[3];
  *&v16[71] = a4[4];
  *&v16[80] = *(a4 + 73);
  *&v16[7] = *a4;
  *&v16[23] = a4[1];
  *&v15[48] = *(a5 + 41);
  *&v15[39] = a5[2];
  *&v15[23] = a5[1];
  *&v15[7] = *a5;
  *&v14[48] = *(a6 + 41);
  *&v14[39] = a6[2];
  *&v14[23] = a6[1];
  *&v14[7] = *a6;
  *a8 = *a1;
  *(a8 + 8) = v8;
  v9 = a3[1];
  *(a8 + 16) = *a3;
  *(a8 + 32) = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  *(a8 + 89) = *(a3 + 73);
  *(a8 + 64) = v11;
  *(a8 + 80) = v12;
  *(a8 + 48) = v10;
  *(a8 + 121) = *&v16[16];
  *(a8 + 105) = *v16;
  *(a8 + 185) = *&v16[80];
  *(a8 + 169) = *&v16[64];
  *(a8 + 153) = *&v16[48];
  *(a8 + 137) = *&v16[32];
  *(a8 + 249) = *&v15[48];
  *(a8 + 233) = *&v15[32];
  *(a8 + 217) = *&v15[16];
  *(a8 + 201) = *v15;
  result = *v14;
  *(a8 + 297) = *&v14[32];
  *(a8 + 313) = *&v14[48];
  *(a8 + 265) = *v14;
  *(a8 + 281) = *&v14[16];
  *(a8 + 329) = a7;
  return result;
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v19 = *(v1 + 48);
  v20 = *(v1 + 64);
  *v21 = *(v1 + 80);
  *&v21[9] = *(v1 + 89);
  v17 = *(v1 + 16);
  v18 = *(v1 + 32);
  v12 = *(v1 + 112);
  v13 = *(v1 + 128);
  *&v16[9] = *(v1 + 185);
  v15 = *(v1 + 160);
  *v16 = *(v1 + 176);
  v14 = *(v1 + 144);
  *&v11[9] = *(v1 + 249);
  v10 = *(v1 + 224);
  *v11 = *(v1 + 240);
  v9 = *(v1 + 208);
  *&v8[9] = *(v1 + 313);
  v7 = *(v1 + 288);
  *v8 = *(v1 + 304);
  v6 = *(v1 + 272);
  v4 = *(v1 + 329);
  MEMORY[0x259C06AA0](*v1);
  MEMORY[0x259C06AA0](v3);
  sub_254205DD4(a1);
  sub_254205DD4(a1);
  sub_254205DD0(a1);
  sub_254205DD0(a1);
  return sub_25424EBF8();
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v24[4] = *(v0 + 3);
  v24[5] = v3;
  v25[0] = *(v0 + 5);
  *(v25 + 9) = *(v0 + 89);
  v4 = *(v0 + 2);
  v24[2] = *(v0 + 1);
  v24[3] = v4;
  v5 = *(v0 + 8);
  v23[2] = *(v0 + 7);
  v23[3] = v5;
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  *(v24 + 9) = *(v0 + 185);
  v23[5] = v7;
  v24[0] = v8;
  v23[4] = v6;
  v9 = *(v0 + 13);
  v10 = *(v0 + 14);
  v11 = *(v0 + 15);
  *(v23 + 9) = *(v0 + 249);
  v22 = v10;
  v23[0] = v11;
  v21 = v9;
  v12 = *(v0 + 17);
  v13 = *(v0 + 18);
  v14 = *(v0 + 19);
  *&v20[9] = *(v0 + 313);
  v19 = v13;
  *v20 = v14;
  v18 = v12;
  v15 = *(v0 + 329);
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v1);
  sub_254205DD4(v17);
  sub_254205DD4(v17);
  sub_254205DD0(v17);
  sub_254205DD0(v17);
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t sub_254226B6C(uint64_t a1)
{
  v3 = *(v1 + 8);
  v19 = *(v1 + 48);
  v20 = *(v1 + 64);
  *v21 = *(v1 + 80);
  *&v21[9] = *(v1 + 89);
  v17 = *(v1 + 16);
  v18 = *(v1 + 32);
  v12 = *(v1 + 112);
  v13 = *(v1 + 128);
  *&v16[9] = *(v1 + 185);
  v15 = *(v1 + 160);
  *v16 = *(v1 + 176);
  v14 = *(v1 + 144);
  *&v11[9] = *(v1 + 249);
  v10 = *(v1 + 224);
  *v11 = *(v1 + 240);
  v9 = *(v1 + 208);
  *&v8[9] = *(v1 + 313);
  v7 = *(v1 + 288);
  *v8 = *(v1 + 304);
  v6 = *(v1 + 272);
  v4 = *(v1 + 329);
  MEMORY[0x259C06AA0](*v1);
  MEMORY[0x259C06AA0](v3);
  sub_254205DD4(a1);
  sub_254205DD4(a1);
  sub_254205DD0(a1);
  sub_254205DD0(a1);
  return sub_25424EBF8();
}

uint64_t sub_254226C70()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v24[4] = *(v0 + 3);
  v24[5] = v3;
  v25[0] = *(v0 + 5);
  *(v25 + 9) = *(v0 + 89);
  v4 = *(v0 + 2);
  v24[2] = *(v0 + 1);
  v24[3] = v4;
  v5 = *(v0 + 8);
  v23[2] = *(v0 + 7);
  v23[3] = v5;
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  *(v24 + 9) = *(v0 + 185);
  v23[5] = v7;
  v24[0] = v8;
  v23[4] = v6;
  v9 = *(v0 + 13);
  v10 = *(v0 + 14);
  v11 = *(v0 + 15);
  *(v23 + 9) = *(v0 + 249);
  v22 = v10;
  v23[0] = v11;
  v21 = v9;
  v12 = *(v0 + 17);
  v13 = *(v0 + 18);
  v14 = *(v0 + 19);
  *&v20[9] = *(v0 + 313);
  v19 = v13;
  *v20 = v14;
  v18 = v12;
  v15 = *(v0 + 329);
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v1);
  sub_254205DD4(v17);
  sub_254205DD4(v17);
  sub_254205DD0(v17);
  sub_254205DD0(v17);
  sub_25424EBF8();
  return sub_25424EC28();
}

void *EnergyKit.LoadDailyDigestEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:loadType:consumption:production:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11)
{
  v34 = *a8;
  sub_25424D1D8();
  v15 = type metadata accessor for EventBase(0);
  v16 = v15[5];
  v17 = sub_25424D948();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(a9 + v16, a2, v17);
  v20 = type metadata accessor for EnergyKit.EventBase();
  v19(a9 + v20[5], a3, v17);
  *(a9 + v15[6]) = 5;
  v21 = (a9 + v15[7]);
  v21[1] = 0;
  v21[2] = 0;
  *v21 = 15;
  v22 = (a9 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v20[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = a9 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  sub_25424D1F8();
  v25 = *(v18 + 8);
  v25(a3, v17);
  v25(a2, v17);
  v26 = sub_25424D218();
  (*(*(v26 - 8) + 8))(a1, v26);
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  *(v24 + DailyDigestEventV5StateVMa[5]) = v34;
  memcpy((v24 + DailyDigestEventV5StateVMa[6]), a10, 0x14AuLL);
  v28 = (v24 + DailyDigestEventV5StateVMa[7]);

  return memcpy(v28, a11, 0x14AuLL);
}

uint64_t EnergyKit.LoadDailyDigestEvent.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  v4 = *(*(DailyDigestEventV5StateVMa - 8) + 64);
  MEMORY[0x28223BE20](DailyDigestEventV5StateVMa - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  sub_254229BBC(v1 + *(DailyDigestEvent + 20), v6);
  v8 = sub_25424D8B8();
  return (*(*(v8 - 8) + 32))(a1, v6, v8);
}

uint64_t EnergyKit.LoadDailyDigestEvent.loadType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  result = _s20LoadDailyDigestEventV5StateVMa(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

void *EnergyKit.LoadDailyDigestEvent.consumption.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  v4 = (v3 + *(_s20LoadDailyDigestEventV5StateVMa(0) + 24));

  return memcpy(a1, v4, 0x14AuLL);
}

void *EnergyKit.LoadDailyDigestEvent.production.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  v4 = (v3 + *(_s20LoadDailyDigestEventV5StateVMa(0) + 28));

  return memcpy(a1, v4, 0x14AuLL);
}

uint64_t EnergyKit.LoadDailyDigestEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  v6 = *(*(DailyDigestEventV5StateVMa - 8) + 64);
  v7 = MEMORY[0x28223BE20](DailyDigestEventV5StateVMa - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for EnergyKit.EventBase();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  sub_254137EE4(v16, v9, a1);
  if (!v2)
  {
    sub_254229C20(v16, v18, type metadata accessor for EnergyKit.EventBase);
    sub_254229C20(v9, v11, _s20LoadDailyDigestEventV5StateVMa);
    v19 = *(type metadata accessor for EventBase(0) + 24);
    if (v18[v19] == 5)
    {
      sub_254229C20(v18, a2, type metadata accessor for EnergyKit.EventBase);
      DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
      sub_254229C20(v11, a2 + *(DailyDigestEvent + 20), _s20LoadDailyDigestEventV5StateVMa);
    }

    else
    {
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
      MEMORY[0x259C05CA0](0xD000000000000014, 0x8000000254261BF0);
      MEMORY[0x259C05CA0](0xD000000000000020, 0x80000002542503C0);
      v25 = v18[v19];
      sub_25424E7D8();
      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v22);

      swift_willThrow();
      sub_254229C88(v11, _s20LoadDailyDigestEventV5StateVMa);
      sub_254229C88(v18, type metadata accessor for EnergyKit.EventBase);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnergyKit.LoadDailyDigestEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v24 = *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  v8 = sub_25424D8B8();
  (*(*(v8 - 8) + 16))(v7, v1, v8);
  v9 = type metadata accessor for EventBase(0);
  v10 = *(v9 + 20);
  v11 = v4[13];
  v12 = sub_25424D948();
  v13 = *(*(v12 - 8) + 16);
  v13(&v7[v11], v2 + v10, v12);
  LOBYTE(v11) = *(v2 + *(v9 + 24));
  v14 = type metadata accessor for EnergyKit.EventBase();
  v13(&v7[v4[15]], v2 + v14[5], v12);
  v15 = v14[7];
  v16 = (v2 + v14[6]);
  v17 = *v16;
  v18 = v16[1];
  v20 = *(v2 + v15);
  v19 = *(v2 + v15 + 8);
  sub_254229BBC(v2 + v24, &v7[v4[18]]);
  v7[v4[14]] = v11;
  v21 = &v7[v4[16]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v7[v4[17]];
  *v22 = v20;
  *(v22 + 1) = v19;

  sub_25413C688(v25);
  return sub_254229CE8(v7);
}

uint64_t sub_25422767C(void *a1, uint64_t a2)
{
  v4 = v2;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v26 = *(a2 + 20);
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 16))(v9, v2, v10);
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  v13 = v6[13];
  v14 = sub_25424D948();
  v15 = *(*(v14 - 8) + 16);
  v15(&v9[v13], v4 + v12, v14);
  LOBYTE(v13) = *(v4 + *(v11 + 24));
  v16 = type metadata accessor for EnergyKit.EventBase();
  v15(&v9[v6[15]], v4 + v16[5], v14);
  v17 = v16[7];
  v18 = (v4 + v16[6]);
  v19 = *v18;
  v20 = v18[1];
  v22 = *(v4 + v17);
  v21 = *(v4 + v17 + 8);
  sub_254229BBC(v4 + v26, &v9[v6[18]]);
  v9[v6[14]] = v13;
  v23 = &v9[v6[16]];
  *v23 = v19;
  *(v23 + 1) = v20;
  v24 = &v9[v6[17]];
  *v24 = v22;
  *(v24 + 1) = v21;

  sub_25413C688(v27);
  return sub_254229CE8(v9);
}

uint64_t EnergyKit.LoadDailyDigestEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t EnergyKit.LoadDailyDigestEvent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_25424D8B8();
  sub_25422A050(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v4 = type metadata accessor for EventBase(0);
  v5 = *(v4 + 20);
  sub_25424D948();
  sub_25422A050(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254262248[*(v2 + *(v4 + 24))]);
  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = v2 + v6[5];
  sub_25424DC28();
  v8 = (v2 + v6[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_25424DD88();
  v11 = (v2 + v6[7]);
  v12 = *v11;
  v13 = v11[1];
  sub_25424DD88();
  v14 = v2 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  sub_25424DC28();
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  *(v14 + *(DailyDigestEventV5StateVMa + 20));
  v16 = DailyDigestEventV5StateVMa;
  sub_25424DD88();

  v17 = v14 + *(v16 + 24);
  v18 = *(v17 + 8);
  v53 = *(v17 + 48);
  v54 = *(v17 + 64);
  *v55 = *(v17 + 80);
  *&v55[9] = *(v17 + 89);
  v51 = *(v17 + 16);
  v52 = *(v17 + 32);
  v46 = *(v17 + 112);
  v47 = *(v17 + 128);
  *&v50[9] = *(v17 + 185);
  v49 = *(v17 + 160);
  *v50 = *(v17 + 176);
  v48 = *(v17 + 144);
  *&v45[9] = *(v17 + 249);
  v44 = *(v17 + 224);
  *v45 = *(v17 + 240);
  v43 = *(v17 + 208);
  *&v42[9] = *(v17 + 313);
  v41 = *(v17 + 288);
  *v42 = *(v17 + 304);
  v40 = *(v17 + 272);
  v19 = *(v17 + 329);
  MEMORY[0x259C06AA0](*v17);
  MEMORY[0x259C06AA0](v18);
  sub_254205DD4(a1);
  sub_254205DD4(a1);
  sub_254205DD0(a1);
  sub_254205DD0(a1);
  sub_25424EBF8();
  v20 = v14 + *(v16 + 28);
  v21 = *(v20 + 8);
  v37 = *(v20 + 48);
  v38 = *(v20 + 64);
  *v39 = *(v20 + 80);
  *&v39[9] = *(v20 + 89);
  v35 = *(v20 + 16);
  v36 = *(v20 + 32);
  v30 = *(v20 + 112);
  v31 = *(v20 + 128);
  *&v34[9] = *(v20 + 185);
  v33 = *(v20 + 160);
  *v34 = *(v20 + 176);
  v32 = *(v20 + 144);
  *&v29[9] = *(v20 + 249);
  v28 = *(v20 + 224);
  *v29 = *(v20 + 240);
  v27 = *(v20 + 208);
  *&v26[9] = *(v20 + 313);
  v25 = *(v20 + 288);
  *v26 = *(v20 + 304);
  v24 = *(v20 + 272);
  v22 = *(v20 + 329);
  MEMORY[0x259C06AA0](*v20);
  MEMORY[0x259C06AA0](v21);
  sub_254205DD4(a1);
  sub_254205DD4(a1);
  sub_254205DD0(a1);
  sub_254205DD0(a1);
  return sub_25424EBF8();
}

uint64_t EnergyKit.LoadDailyDigestEvent.hashValue.getter()
{
  sub_25424EBD8();
  EnergyKit.LoadDailyDigestEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t EnergyKit.LoadDailyDigestEvent.sourceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EnergyKit.LoadDailyDigestEvent.deviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for EnergyKit.EventBase() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_254227D78(uint64_t a1)
{
  sub_25424D8B8();
  sub_25422A050(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  if (*(v1 + DailyDigestEventV5StateVMa[5]))
  {
    v4 = *(v1 + DailyDigestEventV5StateVMa[5]) == 1;
  }

  sub_25424DD88();

  v5 = v1 + DailyDigestEventV5StateVMa[6];
  v6 = *(v5 + 8);
  v41 = *(v5 + 48);
  v42 = *(v5 + 64);
  *v43 = *(v5 + 80);
  *&v43[9] = *(v5 + 89);
  v39 = *(v5 + 16);
  v40 = *(v5 + 32);
  v34 = *(v5 + 112);
  v35 = *(v5 + 128);
  *&v38[9] = *(v5 + 185);
  v37 = *(v5 + 160);
  *v38 = *(v5 + 176);
  v36 = *(v5 + 144);
  *&v33[9] = *(v5 + 249);
  v32 = *(v5 + 224);
  *v33 = *(v5 + 240);
  v31 = *(v5 + 208);
  *&v30[9] = *(v5 + 313);
  v29 = *(v5 + 288);
  *v30 = *(v5 + 304);
  v28 = *(v5 + 272);
  v7 = *(v5 + 329);
  MEMORY[0x259C06AA0](*v5);
  MEMORY[0x259C06AA0](v6);
  sub_254205DD4(a1);
  sub_254205DD4(a1);
  sub_254205DD0(a1);
  sub_254205DD0(a1);
  sub_25424EBF8();
  v8 = v1 + DailyDigestEventV5StateVMa[7];
  v9 = *(v8 + 8);
  v25 = *(v8 + 48);
  v26 = *(v8 + 64);
  *v27 = *(v8 + 80);
  *&v27[9] = *(v8 + 89);
  v23 = *(v8 + 16);
  v24 = *(v8 + 32);
  v18 = *(v8 + 112);
  v19 = *(v8 + 128);
  *&v22[9] = *(v8 + 185);
  v21 = *(v8 + 160);
  *v22 = *(v8 + 176);
  v20 = *(v8 + 144);
  *&v17[9] = *(v8 + 249);
  v16 = *(v8 + 224);
  *v17 = *(v8 + 240);
  v15 = *(v8 + 208);
  *&v14[9] = *(v8 + 313);
  v13 = *(v8 + 288);
  *v14 = *(v8 + 304);
  v12 = *(v8 + 272);
  v10 = *(v8 + 329);
  MEMORY[0x259C06AA0](*v8);
  MEMORY[0x259C06AA0](v9);
  sub_254205DD4(a1);
  sub_254205DD4(a1);
  sub_254205DD0(a1);
  sub_254205DD0(a1);
  return sub_25424EBF8();
}

uint64_t sub_254228028(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC108, &qword_254262070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25422A710();
  sub_25424EC78();
  v15[0] = 0;
  sub_25424D8B8();
  sub_25422A050(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  if (!v2)
  {
    DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
    v15[359] = *(v3 + DailyDigestEventV5StateVMa[5]);
    v15[358] = 1;
    sub_25413EF3C();
    sub_25424EA18();
    memcpy(v15, (v3 + DailyDigestEventV5StateVMa[6]), 0x14AuLL);
    v15[357] = 2;
    sub_25422A7B8();
    sub_25424EA18();
    memcpy(v14, (v3 + DailyDigestEventV5StateVMa[7]), sizeof(v14));
    v15[356] = 3;
    sub_25424EA18();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2542282A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_25424D8B8();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC0F0, &qword_254262068);
  v25 = *(v27 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  v10 = *(*(DailyDigestEventV5StateVMa - 1) + 64);
  MEMORY[0x28223BE20](DailyDigestEventV5StateVMa);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25422A710();
  v29 = v8;
  v14 = v30;
  sub_25424EC68();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v25;
  v16 = v26;
  v30 = a1;
  v17 = v12;
  v32[0] = 0;
  sub_25422A050(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  v18 = v27;
  sub_25424E978();
  v19 = *(v16 + 32);
  v23 = v17;
  v19(v17, v28, v3);
  v31[0] = 1;
  sub_25413F0F8();
  sub_25424E978();
  *(v23 + DailyDigestEventV5StateVMa[5]) = v32[0];
  v32[359] = 2;
  sub_25422A764();
  sub_25424E978();
  memcpy((v23 + DailyDigestEventV5StateVMa[6]), v32, 0x14AuLL);
  v32[358] = 3;
  sub_25424E978();
  (*(v15 + 8))(v29, v18);
  v20 = v23;
  memcpy((v23 + DailyDigestEventV5StateVMa[7]), v31, 0x14AuLL);
  sub_254229BBC(v20, v24);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_254229C88(v20, _s20LoadDailyDigestEventV5StateVMa);
}

uint64_t sub_254228700(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_254228764(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

uint64_t sub_2542287B8()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_25422887C()
{
  *v0;
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_25422892C()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2542289EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25422A678();
  *a2 = result;
  return result;
}

void sub_254228A1C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472617473;
  v4 = 0xEB000000006E6F69;
  v5 = 0x74706D75736E6F63;
  if (*v1 != 2)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 1701869940;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_254228A9C()
{
  v1 = 0x7472617473;
  v2 = 0x74706D75736E6F63;
  if (*v0 != 2)
  {
    v2 = 0x69746375646F7270;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_254228B18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25422A678();
  *a1 = result;
  return result;
}

uint64_t sub_254228B40(uint64_t a1)
{
  v2 = sub_25422A710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254228B7C(uint64_t a1)
{
  v2 = sub_25422A710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254228C00()
{
  *v0;
  sub_25424DD88();
}

uint64_t sub_254228D30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25422A6C4();
  *a2 = result;
  return result;
}

void sub_254228D60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE600000000000000;
    v9 = 0xE800000000000000;
    v10 = 0x6E6F697461727564;
    if (v2 != 1)
    {
      v10 = 0x7942666669726174;
      v9 = 0xEE00796772656E45;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x796772656E65;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000025424FC20;
    v4 = 0xD000000000000015;
    if (v2 != 5)
    {
      v4 = 0x65636E6164697567;
      v3 = 0xE800000000000000;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000025424FBE0;
    if (v2 != 3)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000025424FC00;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_254228E5C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E6F697461727564;
    if (v1 != 1)
    {
      v5 = 0x7942666669726174;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x796772656E65;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0x65636E6164697567;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_254228F50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25422A6C4();
  *a1 = result;
  return result;
}

uint64_t sub_254228F78(uint64_t a1)
{
  v2 = sub_25422A098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254228FB4(uint64_t a1)
{
  v2 = sub_25422A098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC068, &qword_254261C30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *v3;
  v20 = v3[1];
  v25 = *(v3 + 329);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25422A098();
  sub_25424EC78();
  *&v21 = v10;
  v26 = 0;
  sub_25413ECF0();
  sub_25424EA18();
  if (!v2)
  {
    *&v21 = v20;
    v26 = 1;
    sub_2541F7C5C();
    sub_25424EA18();
    v12 = *(v3 + 4);
    *v23 = *(v3 + 3);
    *&v23[16] = v12;
    v24[0] = *(v3 + 5);
    *(v24 + 9) = *(v3 + 89);
    v13 = *(v3 + 2);
    v21 = *(v3 + 1);
    v22 = v13;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    sub_25414081C(&qword_27F5BBA38, &qword_27F5BBA30, &qword_254260088);
    sub_25424EA18();
    v14 = *(v3 + 10);
    *v23 = *(v3 + 9);
    *&v23[16] = v14;
    v24[0] = *(v3 + 11);
    *(v24 + 9) = *(v3 + 185);
    v15 = *(v3 + 8);
    v21 = *(v3 + 7);
    v22 = v15;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    sub_25414081C(&qword_27F5BBA48, &qword_27F5BBA40, &qword_254260090);
    sub_25424EA18();
    v16 = *(v3 + 14);
    v21 = *(v3 + 13);
    v22 = v16;
    *v23 = *(v3 + 15);
    *&v23[9] = *(v3 + 249);
    v26 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    sub_25414081C(&qword_27F5BBA58, &qword_27F5BBA50, &qword_254260098);
    sub_25424EA18();
    v17 = *(v3 + 18);
    v21 = *(v3 + 17);
    v22 = v17;
    *v23 = *(v3 + 19);
    *&v23[9] = *(v3 + 313);
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    sub_25414081C(&qword_27F5BBA68, &qword_27F5BBA60, &qword_2542600A0);
    sub_25424EA18();
    LOBYTE(v21) = 6;
    sub_25424E9E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC078, &qword_254261C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_25422A098();
  sub_25424EC68();
  if (!v2)
  {
    v30 = a2;
    LOBYTE(v41) = 0;
    sub_25413EE40();
    sub_25424E978();
    v12 = v47;
    LOBYTE(v41) = 1;
    sub_2541F7C08();
    sub_25424E978();
    v28 = v47;
    v29 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    v46 = 2;
    sub_25414081C(&qword_27F5BBA80, &qword_27F5BBA30, &qword_254260088);
    sub_25424E978();
    v57 = v49;
    v58 = v50;
    v59[0] = v51[0];
    *(v59 + 9) = *(v51 + 9);
    v55 = v47;
    v56 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    v40 = 3;
    sub_25414081C(&qword_27F5BBA88, &qword_27F5BBA40, &qword_254260090);
    sub_25424E978();
    *(&v54[2] + 7) = v43;
    *(&v54[3] + 7) = v44;
    *(&v54[4] + 7) = *v45;
    v54[5] = *&v45[9];
    *(v54 + 7) = v41;
    *(&v54[1] + 7) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    v36 = 4;
    sub_25414081C(&qword_27F5BBA90, &qword_27F5BBA50, &qword_254260098);
    sub_25424E978();
    *(v53 + 7) = v37;
    *(&v53[1] + 7) = v38;
    *(&v53[2] + 7) = *v39;
    v53[3] = *&v39[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    v32 = 5;
    sub_25414081C(&qword_27F5BBA98, &qword_27F5BBA60, &qword_2542600A0);
    sub_25424E978();
    *(v52 + 7) = v33;
    *(&v52[1] + 7) = v34;
    *(&v52[2] + 7) = *v35;
    v52[3] = *&v35[9];
    v31 = 6;
    v14 = sub_25424E948();
    (*(v6 + 8))(v9, v5);
    v15 = v30;
    v16 = v28;
    *v30 = v29;
    v15[1] = v16;
    v17 = v58;
    *(v15 + 3) = v57;
    *(v15 + 4) = v17;
    *(v15 + 5) = v59[0];
    *(v15 + 89) = *(v59 + 9);
    v18 = v56;
    *(v15 + 1) = v55;
    *(v15 + 2) = v18;
    v19 = v54[1];
    *(v15 + 105) = v54[0];
    *(v15 + 121) = v19;
    v20 = v54[2];
    v21 = v54[3];
    v22 = v54[4];
    *(v15 + 185) = v54[5];
    *(v15 + 169) = v22;
    *(v15 + 153) = v21;
    *(v15 + 137) = v20;
    v23 = v53[2];
    *(v15 + 249) = v53[3];
    v24 = v53[1];
    *(v15 + 201) = v53[0];
    *(v15 + 217) = v24;
    *(v15 + 233) = v23;
    v25 = v52[0];
    v26 = v52[1];
    v27 = v52[3];
    *(v15 + 297) = v52[2];
    *(v15 + 313) = v27;
    *(v15 + 265) = v25;
    *(v15 + 281) = v26;
    *(v15 + 329) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t _s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 4);
  v47[2] = *(a1 + 3);
  v47[3] = v6;
  v48[0] = *(a1 + 5);
  *(v48 + 9) = *(a1 + 89);
  v7 = *(a1 + 2);
  v47[0] = *(a1 + 1);
  v47[1] = v7;
  v8 = *(a1 + 8);
  v43[0] = *(a1 + 7);
  v43[1] = v8;
  v9 = *(a1 + 9);
  v10 = *(a1 + 10);
  v11 = *(a1 + 11);
  *(v44 + 9) = *(a1 + 185);
  v43[3] = v10;
  v44[0] = v11;
  v43[2] = v9;
  v12 = *(a1 + 13);
  v13 = *(a1 + 14);
  v14 = *(a1 + 15);
  *(v40 + 9) = *(a1 + 249);
  v39[1] = v13;
  v40[0] = v14;
  v39[0] = v12;
  v15 = *(a1 + 17);
  v16 = *(a1 + 18);
  v17 = *(a1 + 19);
  *&v36[9] = *(a1 + 313);
  v35[1] = v16;
  *v36 = v17;
  v35[0] = v15;
  v18 = *(a1 + 329);
  *(v46 + 9) = *(a2 + 185);
  v20 = *a2;
  v19 = a2[1];
  v21 = *(a2 + 2);
  v49[0] = *(a2 + 1);
  v49[1] = v21;
  v22 = *(a2 + 3);
  v23 = *(a2 + 4);
  v24 = *(a2 + 5);
  *&v50[9] = *(a2 + 89);
  v49[3] = v23;
  *v50 = v24;
  v49[2] = v22;
  v25 = *(a2 + 8);
  v45[0] = *(a2 + 7);
  v45[1] = v25;
  v26 = *(a2 + 9);
  v27 = *(a2 + 11);
  v45[3] = *(a2 + 10);
  v46[0] = v27;
  v45[2] = v26;
  v28 = *(a2 + 13);
  v29 = *(a2 + 14);
  v30 = *(a2 + 15);
  *(v42 + 9) = *(a2 + 249);
  v41[1] = v29;
  v42[0] = v30;
  v41[0] = v28;
  v31 = *(a2 + 17);
  v32 = *(a2 + 18);
  v33 = *(a2 + 19);
  *&v38[9] = *(a2 + 313);
  v37[1] = v32;
  *v38 = v33;
  v37[0] = v31;
  if (v5 == v20 && v4 == v19)
  {
    v34 = *(a2 + 329);
    if (sub_254226694(v47, v49) & 1) != 0 && (sub_254226694(v43, v45) & 1) != 0 && (sub_2542265D0(v39, v41) & 1) != 0 && (sub_2542265D0(v35, v37))
    {
      return v18 ^ v34 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254229BBC(uint64_t a1, uint64_t a2)
{
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  (*(*(DailyDigestEventV5StateVMa - 8) + 16))(a2, a1, DailyDigestEventV5StateVMa);
  return a2;
}

uint64_t sub_254229C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254229C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254229CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254229D50(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    goto LABEL_19;
  }

  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  v5 = DailyDigestEventV5StateVMa[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0xE400000000000000;
      v9 = 1667331688;
      if (v7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = 0xE500000000000000;
      if (v9 != 0x726568746FLL)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v9 = 0x6369727463656C65;
    v8 = 0xEF656C6369686556;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0xE500000000000000;
    v9 = 0x726568746FLL;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (v7 == 1)
  {
    v10 = 0xE400000000000000;
    if (v9 != 1667331688)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0xEF656C6369686556;
    if (v9 != 0x6369727463656C65)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  if (v8 == v10)
  {

    goto LABEL_17;
  }

LABEL_16:
  v11 = sub_25424EAB8();

  if ((v11 & 1) == 0)
  {
LABEL_19:
    DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 = 0;
    return DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 & 1;
  }

LABEL_17:
  memcpy(__dst, (a1 + DailyDigestEventV5StateVMa[6]), 0x14AuLL);
  memcpy(v14, (a2 + DailyDigestEventV5StateVMa[6]), 0x14AuLL);
  if ((_s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0(__dst, v14) & 1) == 0)
  {
    goto LABEL_19;
  }

  memcpy(__dst, (a1 + DailyDigestEventV5StateVMa[7]), 0x14AuLL);
  memcpy(v14, (a2 + DailyDigestEventV5StateVMa[7]), 0x14AuLL);
  DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 = _s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0(__dst, v14);
  return DailyDigestEventV5ValueV2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t _s13HomeKitEvents06EnergyB0O20LoadDailyDigestEventV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EventBase(0);
  v5 = *(v4 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254262248[*(a1 + *(v4 + 24))] != qword_254262248[*(a2 + *(v4 + 24))])
  {
    return 0;
  }

  v6 = type metadata accessor for EnergyKit.EventBase();
  v7 = v6[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[6];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v13 = v6[7];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);

  return sub_254229D50(a1 + v18, a2 + v18);
}

uint64_t sub_25422A050(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25422A098()
{
  result = qword_27F5BC070;
  if (!qword_27F5BC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC070);
  }

  return result;
}

unint64_t sub_25422A0F0()
{
  result = qword_27F5BC080;
  if (!qword_27F5BC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC080);
  }

  return result;
}

uint64_t sub_25422A144(void *a1)
{
  a1[1] = sub_25422A050(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
  a1[2] = sub_25422A050(&qword_27F5BA318, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
  result = sub_25422A050(&qword_27F5BC088, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25422A238(uint64_t a1)
{
  *(a1 + 8) = sub_25422A050(&qword_27F5BC0A0, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
  result = sub_25422A050(&qword_27F5BC0A8, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25422A2E4()
{
  result = type metadata accessor for EnergyKit.EventBase();
  if (v1 <= 0x3F)
  {
    result = _s20LoadDailyDigestEventV5StateVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25422A370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 330))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 329);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25422A3C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 330) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 330) = 0;
    }

    if (a2)
    {
      *(result + 329) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25422A4A8()
{
  result = sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25422A574()
{
  result = qword_27F5BC0D8;
  if (!qword_27F5BC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0D8);
  }

  return result;
}

unint64_t sub_25422A5CC()
{
  result = qword_27F5BC0E0;
  if (!qword_27F5BC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0E0);
  }

  return result;
}

unint64_t sub_25422A624()
{
  result = qword_27F5BC0E8;
  if (!qword_27F5BC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0E8);
  }

  return result;
}

uint64_t sub_25422A678()
{
  v0 = sub_25424E8E8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25422A6C4()
{
  v0 = sub_25424E8E8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25422A710()
{
  result = qword_27F5BC0F8;
  if (!qword_27F5BC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC0F8);
  }

  return result;
}

unint64_t sub_25422A764()
{
  result = qword_27F5BC100;
  if (!qword_27F5BC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC100);
  }

  return result;
}

unint64_t sub_25422A7B8()
{
  result = qword_27F5BC110;
  if (!qword_27F5BC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC110);
  }

  return result;
}

unint64_t sub_25422A820()
{
  result = qword_27F5BC118;
  if (!qword_27F5BC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC118);
  }

  return result;
}

unint64_t sub_25422A878()
{
  result = qword_27F5BC120;
  if (!qword_27F5BC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC120);
  }

  return result;
}

unint64_t sub_25422A8D0()
{
  result = qword_27F5BC128;
  if (!qword_27F5BC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC128);
  }

  return result;
}

uint64_t HMVCommands.UnpackedEvent.data.getter()
{
  v1 = *(v0 + 8);
  sub_254140660(v1, *(v0 + 16));
  return v1;
}

uint64_t static HMVCommands.dumpLocalDatabase()()
{
  v1 = type metadata accessor for FakeEvent();
  v0[58] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[59] = swift_task_alloc();
  v3 = sub_25424D8B8();
  v0[60] = v3;
  v4 = *(v3 - 8);
  v0[61] = v4;
  v5 = *(v4 + 64) + 15;
  v0[62] = swift_task_alloc();
  v6 = type metadata accessor for SomeEvent();
  v0[63] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v0[64] = swift_task_alloc();
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  v0[65] = DailyDigestEvent;
  v9 = *(*(DailyDigestEvent - 8) + 64) + 15;
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  v0[68] = SessionEvent;
  v11 = *(*(SessionEvent - 8) + 64) + 15;
  v0[69] = swift_task_alloc();
  v0[70] = swift_task_alloc();
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  v0[71] = Event;
  v13 = *(*(Event - 8) + 64) + 15;
  v0[72] = swift_task_alloc();
  v0[73] = swift_task_alloc();
  v14 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  v0[74] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v16 = type metadata accessor for ThermostatAutomationFailureEvent();
  v0[77] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v18 = type metadata accessor for ThermostatAutomationEvent(0);
  v0[80] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v0[81] = swift_task_alloc();
  v0[82] = swift_task_alloc();
  v20 = type metadata accessor for HomeActivityStateEvent(0);
  v0[83] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v0[84] = swift_task_alloc();
  v0[85] = swift_task_alloc();
  v22 = type metadata accessor for WindowEvent();
  v0[86] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v0[87] = swift_task_alloc();
  v0[88] = swift_task_alloc();
  v24 = type metadata accessor for SmokeDetectorEvent();
  v0[89] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v0[90] = swift_task_alloc();
  v0[91] = swift_task_alloc();
  v26 = type metadata accessor for SecuritySystemEvent();
  v0[92] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v0[93] = swift_task_alloc();
  v0[94] = swift_task_alloc();
  v28 = type metadata accessor for GarageDoorEvent();
  v0[95] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v0[96] = swift_task_alloc();
  v0[97] = swift_task_alloc();
  v30 = type metadata accessor for DoorEvent();
  v0[98] = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  v0[99] = swift_task_alloc();
  v0[100] = swift_task_alloc();
  v32 = type metadata accessor for ContactSensorEvent();
  v0[101] = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  v0[102] = swift_task_alloc();
  v0[103] = swift_task_alloc();
  v34 = type metadata accessor for LockEvent();
  v0[104] = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  v0[105] = swift_task_alloc();
  v0[106] = swift_task_alloc();
  v36 = type metadata accessor for EventRecord.DecodedEvent(0);
  v0[107] = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  v0[108] = swift_task_alloc();
  v0[109] = swift_task_alloc();
  v0[110] = swift_task_alloc();
  v0[111] = swift_task_alloc();
  v0[112] = swift_task_alloc();
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v0[115] = swift_task_alloc();
  v38 = type metadata accessor for EventRecord(0);
  v0[116] = v38;
  v39 = *(*(v38 - 8) + 64) + 15;
  v0[117] = swift_task_alloc();
  v0[118] = swift_task_alloc();
  v40 = sub_25424D948();
  v0[119] = v40;
  v41 = *(v40 - 8);
  v0[120] = v41;
  v42 = *(v41 + 64) + 15;
  v0[121] = swift_task_alloc();
  v0[122] = swift_task_alloc();
  v0[123] = swift_task_alloc();
  v0[124] = swift_task_alloc();
  v0[125] = swift_task_alloc();
  v0[126] = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC130, &qword_254262288) - 8) + 64) + 15;
  v0[127] = swift_task_alloc();
  v0[128] = swift_task_alloc();
  v44 = swift_task_alloc();
  v0[129] = v44;
  *v44 = v0;
  v44[1] = sub_25422AFC0;

  return sub_254130824(sub_25422DEA8, 0);
}

uint64_t sub_25422AFC0(uint64_t a1)
{
  v4 = *(*v2 + 1032);
  v5 = *v2;
  v3 = v5;
  v5[130] = a1;
  v5[131] = v1;

  if (v1)
  {
    v6 = v5[128];
    v7 = v5[127];
    v57 = v5;
    v8 = v5[126];
    v9 = v3[125];
    v10 = v3[124];
    v11 = v3[123];
    v12 = v3[122];
    v13 = v3[121];
    v14 = v3[118];
    v15 = v3[117];
    v19 = v3[115];
    v20 = v3[114];
    v21 = v3[113];
    v22 = v3[112];
    v23 = v3[111];
    v24 = v3[110];
    v25 = v3[109];
    v26 = v3[108];
    v27 = v3[106];
    v28 = v3[105];
    v29 = v3[103];
    v30 = v3[102];
    v31 = v3[100];
    v32 = v3[99];
    v33 = v3[97];
    v34 = v3[96];
    v35 = v3[94];
    v36 = v3[93];
    v37 = v3[91];
    v38 = v3[90];
    v39 = v3[88];
    v40 = v3[87];
    v41 = v3[85];
    v42 = v3[84];
    v43 = v3[82];
    v44 = v3[81];
    v45 = v3[79];
    v46 = v3[78];
    v47 = v3[76];
    v48 = v3[75];
    v49 = v3[73];
    v50 = v3[72];
    v51 = v3[70];
    v52 = v3[69];
    v53 = v3[67];
    v54 = v3[66];
    v55 = v3[64];
    v56 = v3[62];
    v16 = v3[59];

    v17 = v57[1];

    return v17();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25422B3C4, 0, 0);
  }
}

uint64_t sub_25422B3C4()
{
  v341 = (v0 + 264);
  v1 = *(v0 + 1040);
  v2 = *(v0 + 960);
  v350 = *(v0 + 928);
  v3 = *(v0 + 488);
  v412 = MEMORY[0x277D84F98];
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC138, &qword_254262290);
  sub_25424DBA8();
  v5 = 0;
  v6 = v1 + 64;
  v7 = -1;
  v379 = v1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 64);
  v10 = (63 - v8) >> 6;
  v410 = (v2 + 16);
  v395 = v2;
  v398 = (v2 + 8);
  v401 = (v2 + 32);
  v344 = (v3 + 8);
  v347 = (v3 + 16);
  v11 = &qword_27F5BC140;
  v385 = v1 + 64;
  v388 = *(v0 + 1048);
  v382 = v10;
  while (1)
  {
    if (!v9)
    {
      if (v10 <= v5 + 1)
      {
        v14 = v5 + 1;
      }

      else
      {
        v14 = v10;
      }

      isUniquelyReferenced_nonNull_native = v14 - 1;
      while (1)
      {
        v13 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v43 = *(v0 + 1016);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC140, &qword_254262298);
          (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
          v404 = 0;
          v407 = isUniquelyReferenced_nonNull_native;
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v13);
        ++v5;
        if (v9)
        {
          v407 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_106:
      __break(1u);
      v307 = *(v0 + 1040);
      v294 = *(v0 + 1000);
      v295 = *(v0 + 952);
      v296 = *(v0 + 944);

      sub_254134D04(v1, v11);
      sub_254134D04(v392, v373);
      sub_25422E740(v296, type metadata accessor for EventRecord);
      (isUniquelyReferenced_nonNull_native)(v294, v295);

      v297 = *(v0 + 1024);
      v298 = *(v0 + 1016);
      v299 = *(v0 + 1008);
      v300 = *(v0 + 1000);
      v301 = *(v0 + 992);
      v302 = *(v0 + 984);
      v303 = *(v0 + 976);
      v304 = *(v0 + 968);
      v305 = *(v0 + 944);
      v310 = *(v0 + 936);
      v312 = *(v0 + 920);
      v314 = *(v0 + 912);
      v316 = *(v0 + 904);
      v318 = *(v0 + 896);
      v320 = *(v0 + 888);
      v322 = *(v0 + 880);
      v324 = *(v0 + 872);
      v326 = *(v0 + 864);
      v328 = *(v0 + 848);
      v330 = *(v0 + 840);
      v332 = *(v0 + 824);
      v334 = *(v0 + 816);
      v336 = *(v0 + 800);
      v338 = *(v0 + 792);
      v340 = *(v0 + 776);
      v343 = *(v0 + 768);
      v346 = *(v0 + 752);
      v349 = *(v0 + 744);
      v352 = *(v0 + 728);
      v354 = *(v0 + 720);
      v357 = *(v0 + 704);
      v360 = *(v0 + 696);
      v363 = *(v0 + 680);
      v366 = *(v0 + 672);
      v369 = *(v0 + 656);
      v372 = *(v0 + 648);
      v375 = *(v0 + 632);
      v378 = *(v0 + 624);
      v381 = *(v0 + 608);
      v384 = *(v0 + 600);
      v387 = *(v0 + 584);
      v391 = *(v0 + 576);
      v394 = *(v0 + 560);
      v397 = *(v0 + 552);
      v400 = *(v0 + 536);
      v403 = *(v0 + 528);
      v406 = *(v0 + 512);
      v409 = *(v0 + 496);
      v411 = *(v0 + 472);

      v306 = *(v0 + 8);

      return v306();
    }

    v407 = v5;
    v13 = v5;
LABEL_16:
    v16 = *(v0 + 1016);
    v17 = *(v0 + 1008);
    v18 = *(v0 + 952);
    v404 = (v9 - 1) & v9;
    v19 = __clz(__rbit64(v9)) | (v13 << 6);
    (*(v395 + 16))(v17, *(v379 + 48) + *(v395 + 72) * v19, v18);
    v20 = (*(v379 + 56) + 24 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC140, &qword_254262298);
    v25 = (v16 + *(v24 + 48));
    (*(v395 + 32))(v16, v17, v18);
    *v25 = v21;
    v25[1] = v22;
    v25[2] = v23;
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
    sub_254140660(v22, v23);
LABEL_17:
    v26 = *(v0 + 1024);
    sub_25422DF70(*(v0 + 1016), v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC140, &qword_254262298);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      break;
    }

    v28 = *(v0 + 952);
    v29 = (*(v0 + 1024) + *(v27 + 48));
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[2];
    (*v401)(*(v0 + 1000));
    EventRecord.DataType.init(rawValue:)(v31);
    v11 = *v410;
    if (v413 == 15)
    {
LABEL_52:
      *(v0 + 176) = 0;
      *(v0 + 144) = 0u;
      *(v0 + 160) = 0u;
    }

    else
    {
      (v11)(*(v0 + 992), *(v0 + 1000), *(v0 + 952));
      v33 = sub_25424D168();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      v376 = v33;
      swift_allocObject();
      sub_254140660(v30, v32);
      sub_25424D158();
      v373 = v413;
      v392 = v30;
      switch(v413)
      {
        case 1u:
          v82 = *(v0 + 824);
          v83 = *(v0 + 808);
          sub_25422E8DC(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v84 = *(v0 + 912);
          v85 = *(v0 + 824);
          v86 = *(v0 + 504);

          sub_25422E7A0(v85, v84, type metadata accessor for ContactSensorEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 2u:
          v70 = *(v0 + 800);
          v71 = *(v0 + 784);
          sub_25422E8DC(&qword_27F5BB2D0, type metadata accessor for DoorEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v72 = *(v0 + 912);
          v73 = *(v0 + 800);
          v74 = *(v0 + 504);

          sub_25422E7A0(v73, v72, type metadata accessor for DoorEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 3u:
          v75 = *(v0 + 776);
          v76 = *(v0 + 760);
          sub_25422E8DC(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v77 = *(v0 + 912);
          v78 = *(v0 + 776);
          v79 = *(v0 + 504);

          sub_25422E7A0(v78, v77, type metadata accessor for GarageDoorEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 4u:
          v55 = *(v0 + 752);
          v56 = *(v0 + 736);
          sub_25422E8DC(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v57 = *(v0 + 912);
          v58 = *(v0 + 752);
          v59 = *(v0 + 504);

          sub_25422E7A0(v58, v57, type metadata accessor for SecuritySystemEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 5u:
          v87 = *(v0 + 728);
          v88 = *(v0 + 712);
          sub_25422E8DC(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v89 = *(v0 + 912);
          v90 = *(v0 + 728);
          v91 = *(v0 + 504);

          sub_25422E7A0(v90, v89, type metadata accessor for SmokeDetectorEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 6u:
          v97 = *(v0 + 704);
          v98 = *(v0 + 688);
          sub_25422E8DC(&qword_27F5BB1A8, type metadata accessor for WindowEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v99 = *(v0 + 912);
          v100 = *(v0 + 704);
          v101 = *(v0 + 504);

          sub_25422E7A0(v100, v99, type metadata accessor for WindowEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 7u:
          v80 = *(v0 + 912);
          v81 = *(v0 + 464);
          sub_25422E8DC(&qword_27F5BA258, type metadata accessor for FakeEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;

          goto LABEL_64;
        case 8u:
          v107 = *(v0 + 680);
          v108 = *(v0 + 664);
          sub_25422E8DC(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v134 = *(v0 + 912);
          v135 = *(v0 + 680);
          v136 = *(v0 + 504);

          sub_25422E7A0(v135, v134, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_63;
        case 9u:
          v65 = *(v0 + 584);
          v66 = *(v0 + 568);
          sub_25422E8DC(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v67 = *(v0 + 912);
          v68 = *(v0 + 584);
          v69 = *(v0 + 504);

          sub_25422E7A0(v68, v67, type metadata accessor for EnergyKit.LoadEvent);
          type metadata accessor for EnergyKit.SomeEnergyKitEvent();
          goto LABEL_49;
        case 0xAu:
          v102 = *(v0 + 560);
          v103 = *(v0 + 544);
          sub_25422E8DC(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v104 = *(v0 + 912);
          v105 = *(v0 + 560);
          v106 = *(v0 + 504);

          sub_25422E7A0(v105, v104, type metadata accessor for EnergyKit.LoadSessionEvent);
          type metadata accessor for EnergyKit.SomeEnergyKitEvent();
          goto LABEL_49;
        case 0xBu:
          v50 = *(v0 + 536);
          v51 = *(v0 + 520);
          sub_25422E8DC(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v52 = *(v0 + 912);
          v53 = *(v0 + 536);
          v54 = *(v0 + 504);

          sub_25422E7A0(v53, v52, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          type metadata accessor for EnergyKit.SomeEnergyKitEvent();
          goto LABEL_49;
        case 0xCu:
          v60 = *(v0 + 656);
          v61 = *(v0 + 640);
          sub_25422E8DC(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v62 = *(v0 + 912);
          v63 = *(v0 + 656);
          v64 = *(v0 + 504);

          sub_25422E7A0(v63, v62, type metadata accessor for ThermostatAutomationEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 0xDu:
          v92 = *(v0 + 608);
          v93 = *(v0 + 592);
          sub_25422E8DC(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v94 = *(v0 + 912);
          v95 = *(v0 + 608);
          v96 = *(v0 + 504);

          sub_25422E7A0(v95, v94, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        case 0xEu:
          v45 = *(v0 + 632);
          v46 = *(v0 + 616);
          sub_25422E8DC(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
            goto LABEL_51;
          }

          v389 = v11;
          v39 = v32;
          v47 = *(v0 + 912);
          v48 = *(v0 + 632);
          v49 = *(v0 + 504);

          sub_25422E7A0(v48, v47, type metadata accessor for ThermostatAutomationFailureEvent);
          type metadata accessor for SomeAccessoryEvent();
          goto LABEL_49;
        default:
          v36 = *(v0 + 848);
          v37 = *(v0 + 832);
          sub_25422E8DC(&qword_27F5B8E98, type metadata accessor for LockEvent);
          v38 = v388;
          sub_25424D138();
          if (v388)
          {
LABEL_51:
            v109 = *(v0 + 992);
            v110 = *(v0 + 952);

            v30 = v392;
            sub_254134D04(v392, v32);
            (*v398)(v109, v110);
            v388 = 0;
            goto LABEL_52;
          }

          v389 = v11;
          v39 = v32;
          v40 = *(v0 + 912);
          v41 = *(v0 + 848);
          v42 = *(v0 + 504);

          sub_25422E7A0(v41, v40, type metadata accessor for LockEvent);
          type metadata accessor for SomeAccessoryEvent();
LABEL_49:
          swift_storeEnumTagMultiPayload();
LABEL_63:
          swift_storeEnumTagMultiPayload();
LABEL_64:
          v137 = *(v0 + 992);
          v138 = *(v0 + 984);
          v139 = *(v0 + 952);
          v140 = *(v0 + 920);
          v141 = *(v0 + 912);
          v142 = *(v0 + 904);
          v143 = *(v0 + 856);
          swift_storeEnumTagMultiPayload();
          sub_25422E7A0(v141, v140, type metadata accessor for EventRecord.DecodedEvent);
          (v389)(v138, v137, v139);
          sub_25422E6DC(v140, v142);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v145 = *(v0 + 904);
          if (EnumCaseMultiPayload == 1)
          {
            *(v0 + 208) = *(v0 + 464);
            *(v0 + 216) = sub_25422E8DC(&qword_27F5BA250, type metadata accessor for FakeEvent);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
            sub_25422E7A0(v145, boxed_opaque_existential_1, type metadata accessor for FakeEvent);
          }

          else
          {
            v147 = *(v0 + 512);
            sub_25422E7A0(*(v0 + 904), v147, type metadata accessor for SomeEvent);
            sub_2541DA834((v0 + 424));
            v149 = *(v0 + 448);
            v148 = *(v0 + 456);
            v150 = __swift_project_boxed_opaque_existential_1((v0 + 424), v149);
            *(v0 + 208) = v149;
            *(v0 + 216) = *(v148 + 8);
            v151 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
            (*(*(v149 - 8) + 16))(v151, v150, v149);
            sub_25422E740(v147, type metadata accessor for SomeEvent);
            __swift_destroy_boxed_opaque_existential_1((v0 + 424));
          }

          v152 = *(v0 + 976);
          v153 = *(v0 + 920);
          v154 = *(v0 + 896);
          v155 = *(v0 + 856);
          v156 = *(v0 + 208);
          v157 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v156);
          (*(v157 + 40))(v156, v157);
          sub_25422E6DC(v153, v154);
          v158 = swift_getEnumCaseMultiPayload();
          v159 = *(v0 + 896);
          if (v158 == 1)
          {
            *(v0 + 248) = *(v0 + 464);
            *(v0 + 256) = sub_25422E8DC(&qword_27F5BA250, type metadata accessor for FakeEvent);
            v160 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
            sub_25422E7A0(v159, v160, type metadata accessor for FakeEvent);
          }

          else
          {
            v161 = *(v0 + 512);
            sub_25422E7A0(*(v0 + 896), v161, type metadata accessor for SomeEvent);
            sub_2541DA834((v0 + 384));
            v163 = *(v0 + 408);
            v162 = *(v0 + 416);
            v164 = __swift_project_boxed_opaque_existential_1((v0 + 384), v163);
            *(v0 + 248) = v163;
            *(v0 + 256) = *(v162 + 8);
            v165 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
            (*(*(v163 - 8) + 16))(v165, v164, v163);
            sub_25422E740(v161, type metadata accessor for SomeEvent);
            __swift_destroy_boxed_opaque_existential_1((v0 + 384));
          }

          v166 = *(v0 + 920);
          v167 = *(v0 + 888);
          v168 = *(v0 + 856);
          v169 = *(v0 + 496);
          v170 = *(v0 + 248);
          v171 = *(v0 + 256);
          __swift_project_boxed_opaque_existential_1((v0 + 224), v170);
          (*(v171 + 32))(v170, v171);
          sub_25422E6DC(v166, v167);
          v172 = swift_getEnumCaseMultiPayload();
          v173 = *(v0 + 888);
          v355 = v31;
          if (v172 == 1)
          {
            v174 = *(v0 + 472);
            sub_25422E7A0(v173, v174, type metadata accessor for FakeEvent);
            v175 = v39;
            sub_254140660(v392, v39);
            v361 = FakeEvent.tags.getter();
            sub_25422E740(v174, type metadata accessor for FakeEvent);
          }

          else
          {
            v176 = *(v0 + 512);
            sub_25422E7A0(v173, v176, type metadata accessor for SomeEvent);
            v175 = v39;
            sub_254140660(v392, v39);
            sub_2541DA834((v0 + 344));
            v177 = *(v0 + 368);
            v178 = *(v0 + 376);
            __swift_project_boxed_opaque_existential_1((v0 + 344), v177);
            v361 = (*(v178 + 48))(v177, v178);
            sub_25422E740(v176, type metadata accessor for SomeEvent);
            __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          }

          v358 = *(v0 + 984);
          v179 = *(v0 + 976);
          v180 = *(v0 + 952);
          v367 = *(v0 + 992);
          v370 = *(v0 + 944);
          v181 = *(v0 + 936);
          v364 = *(v0 + 920);
          v182 = *(v0 + 496);
          v183 = *(v0 + 480);
          (v389)(v181);
          (v389)(v181 + v350[5], v179, v180);
          (*v347)(v181 + v350[6], v182, v183);
          *(v181 + v350[7]) = v413;
          v184 = (v181 + v350[8]);
          *v184 = v392;
          v184[1] = v175;
          *(v181 + v350[9]) = v361;
          type metadata accessor for Configuration();
          v185 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
          v373 = v175;
          sub_254134D04(v392, v175);
          (*v344)(v182, v183);
          v186 = *v398;
          (*v398)(v179, v180);
          v186(v358, v180);
          sub_25422E740(v364, type metadata accessor for EventRecord.DecodedEvent);
          v186(v367, v180);
          *(v181 + v350[10]) = v185;
          __swift_destroy_boxed_opaque_existential_1((v0 + 224));
          __swift_destroy_boxed_opaque_existential_1((v0 + 184));
          sub_25422E7A0(v181, v370, type metadata accessor for EventRecord);
          v187 = *(v370 + v350[7]);
          v188 = (v370 + v350[8]);
          v189 = *v188;
          v190 = v188[1];
          v191 = *(v376 + 48);
          v192 = *(v376 + 52);
          swift_allocObject();
          sub_254140660(v189, v190);
          sub_25424D158();
          switch(v187)
          {
            case 1:
              v235 = *(v0 + 816);
              v236 = *(v0 + 808);
              sub_25422E8DC(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent);
              sub_25424D138();
              v32 = v175;
              v237 = *(v0 + 872);
              v238 = *(v0 + 816);
              v239 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v238, v237, type metadata accessor for ContactSensorEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 2:
              v223 = *(v0 + 792);
              v224 = *(v0 + 784);
              sub_25422E8DC(&qword_27F5BB2D0, type metadata accessor for DoorEvent);
              sub_25424D138();
              v32 = v175;
              v225 = *(v0 + 872);
              v226 = *(v0 + 792);
              v227 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v226, v225, type metadata accessor for DoorEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 3:
              v228 = *(v0 + 768);
              v229 = *(v0 + 760);
              sub_25422E8DC(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent);
              sub_25424D138();
              v32 = v175;
              v230 = *(v0 + 872);
              v231 = *(v0 + 768);
              v232 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v231, v230, type metadata accessor for GarageDoorEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 4:
              v208 = *(v0 + 744);
              v209 = *(v0 + 736);
              sub_25422E8DC(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent);
              sub_25424D138();
              v32 = v175;
              v210 = *(v0 + 872);
              v211 = *(v0 + 744);
              v212 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v211, v210, type metadata accessor for SecuritySystemEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 5:
              v240 = *(v0 + 720);
              v241 = *(v0 + 712);
              sub_25422E8DC(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent);
              sub_25424D138();
              v32 = v175;
              v242 = *(v0 + 872);
              v243 = *(v0 + 720);
              v244 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v243, v242, type metadata accessor for SmokeDetectorEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 6:
              v250 = *(v0 + 696);
              v251 = *(v0 + 688);
              sub_25422E8DC(&qword_27F5BB1A8, type metadata accessor for WindowEvent);
              sub_25424D138();
              v32 = v175;
              v252 = *(v0 + 872);
              v253 = *(v0 + 696);
              v254 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v253, v252, type metadata accessor for WindowEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 7:
              v233 = *(v0 + 872);
              v234 = *(v0 + 464);
              sub_25422E8DC(&qword_27F5BA258, type metadata accessor for FakeEvent);
              sub_25424D138();
              v32 = v175;
              sub_254134D04(v189, v190);

              goto LABEL_92;
            case 8:
              v260 = *(v0 + 672);
              v261 = *(v0 + 664);
              sub_25422E8DC(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent);
              sub_25424D138();
              v32 = v175;
              v262 = *(v0 + 872);
              v263 = *(v0 + 672);
              v264 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v263, v262, type metadata accessor for HomeActivityStateEvent);
              goto LABEL_91;
            case 9:
              v218 = *(v0 + 576);
              v219 = *(v0 + 568);
              sub_25422E8DC(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent);
              sub_25424D138();
              v32 = v175;
              v220 = *(v0 + 872);
              v221 = *(v0 + 576);
              v222 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v221, v220, type metadata accessor for EnergyKit.LoadEvent);
              type metadata accessor for EnergyKit.SomeEnergyKitEvent();
              goto LABEL_89;
            case 10:
              v255 = *(v0 + 552);
              v256 = *(v0 + 544);
              sub_25422E8DC(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent);
              sub_25424D138();
              v32 = v175;
              v257 = *(v0 + 872);
              v258 = *(v0 + 552);
              v259 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v258, v257, type metadata accessor for EnergyKit.LoadSessionEvent);
              type metadata accessor for EnergyKit.SomeEnergyKitEvent();
              goto LABEL_89;
            case 11:
              v203 = *(v0 + 528);
              v204 = *(v0 + 520);
              sub_25422E8DC(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
              sub_25424D138();
              v32 = v175;
              v205 = *(v0 + 872);
              v206 = *(v0 + 528);
              v207 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v206, v205, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
              type metadata accessor for EnergyKit.SomeEnergyKitEvent();
              goto LABEL_89;
            case 12:
              v213 = *(v0 + 648);
              v214 = *(v0 + 640);
              sub_25422E8DC(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent);
              sub_25424D138();
              v32 = v175;
              v215 = *(v0 + 872);
              v216 = *(v0 + 648);
              v217 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v216, v215, type metadata accessor for ThermostatAutomationEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 13:
              v245 = *(v0 + 600);
              v246 = *(v0 + 592);
              sub_25422E8DC(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
              sub_25424D138();
              v32 = v175;
              v247 = *(v0 + 872);
              v248 = *(v0 + 600);
              v249 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v248, v247, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            case 14:
              v198 = *(v0 + 624);
              v199 = *(v0 + 616);
              sub_25422E8DC(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent);
              sub_25424D138();
              v32 = v175;
              v200 = *(v0 + 872);
              v201 = *(v0 + 624);
              v202 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v201, v200, type metadata accessor for ThermostatAutomationFailureEvent);
              type metadata accessor for SomeAccessoryEvent();
              goto LABEL_89;
            default:
              v193 = *(v0 + 840);
              v194 = *(v0 + 832);
              sub_25422E8DC(&qword_27F5B8E98, type metadata accessor for LockEvent);
              sub_25424D138();
              v32 = v175;
              v195 = *(v0 + 872);
              v196 = *(v0 + 840);
              v197 = *(v0 + 504);
              sub_254134D04(v189, v190);

              sub_25422E7A0(v196, v195, type metadata accessor for LockEvent);
              type metadata accessor for SomeAccessoryEvent();
LABEL_89:
              swift_storeEnumTagMultiPayload();
LABEL_91:
              swift_storeEnumTagMultiPayload();
LABEL_92:
              v265 = *(v0 + 880);
              v266 = *(v0 + 872);
              v267 = *(v0 + 864);
              v268 = *(v0 + 856);
              swift_storeEnumTagMultiPayload();
              sub_25422E7A0(v266, v265, type metadata accessor for EventRecord.DecodedEvent);
              sub_25422E6DC(v265, v267);
              v269 = swift_getEnumCaseMultiPayload();
              v270 = *(v0 + 944);
              v271 = *(v0 + 880);
              v272 = *(v0 + 864);
              if (v269 == 1)
              {
                *(v0 + 288) = *(v0 + 464);
                *(v0 + 296) = sub_25422E8DC(&qword_27F5BA250, type metadata accessor for FakeEvent);
                v273 = v0 + 264;
                v274 = __swift_allocate_boxed_opaque_existential_1(v341);
                sub_25422E7A0(v272, v274, type metadata accessor for FakeEvent);
                sub_25422E740(v271, type metadata accessor for EventRecord.DecodedEvent);
                sub_25422E740(v270, type metadata accessor for EventRecord);
              }

              else
              {
                v275 = *(v0 + 512);
                sub_25422E7A0(*(v0 + 864), v275, type metadata accessor for SomeEvent);
                sub_2541DA834((v0 + 304));
                v276 = *(v0 + 328);
                v277 = *(v0 + 336);
                v278 = __swift_project_boxed_opaque_existential_1((v0 + 304), v276);
                *(v0 + 288) = v276;
                *(v0 + 296) = *(v277 + 8);
                v273 = v0 + 264;
                v279 = __swift_allocate_boxed_opaque_existential_1(v341);
                (*(*(v276 - 8) + 16))(v279, v278, v276);
                sub_25422E740(v275, type metadata accessor for SomeEvent);
                sub_25422E740(v271, type metadata accessor for EventRecord.DecodedEvent);
                sub_25422E740(v270, type metadata accessor for EventRecord);
                __swift_destroy_boxed_opaque_existential_1((v0 + 304));
              }

              v11 = v389;
              v30 = v392;
              v388 = 0;
              v280 = *(v273 + 16);
              *(v0 + 144) = *v273;
              *(v0 + 160) = v280;
              *(v0 + 176) = *(v273 + 32);
              v31 = v355;
              break;
          }

          break;
      }
    }

    v1 = *(v0 + 968);
    (v11)(v1, *(v0 + 1000), *(v0 + 952));
    sub_25422DFE0(v0 + 144, v0 + 16);
    *(v0 + 56) = v31;
    *(v0 + 64) = v30;
    *(v0 + 72) = v32;
    v111 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v111;
    v112 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v112;
    sub_254140660(v30, v32);
    v113 = v412;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v413 = v412;
    v114 = sub_2542209D4(v1);
    v116 = v412[2];
    v117 = (v115 & 1) == 0;
    v118 = __OFADD__(v116, v117);
    v119 = v116 + v117;
    if (v118)
    {
      goto LABEL_106;
    }

    v120 = v115;
    if (v412[3] >= v119)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v281 = v114;
        sub_254223518();
        v114 = v281;
        v113 = v412;
      }
    }

    else
    {
      v121 = *(v0 + 968);
      sub_25422222C(v119, isUniquelyReferenced_nonNull_native);
      v113 = v412;
      v114 = sub_2542209D4(v121);
      if ((v120 & 1) != (v122 & 1))
      {
        v293 = *(v0 + 952);

        return sub_25424EB38();
      }
    }

    v123 = *(v0 + 1000);
    v124 = *(v0 + 968);
    v1 = *(v0 + 952);
    if (v120)
    {
      sub_25422E66C(v0 + 80, v113[7] + (v114 << 6));
      sub_254134D04(v30, v32);
      v12 = *v398;
      (*v398)(v124, v1);
      sub_25422E604(v0 + 144);
      v12(v123, v1);
    }

    else
    {
      v113[(v114 >> 6) + 8] |= 1 << v114;
      v125 = v114;
      (v11)(v113[6] + *(v395 + 72) * v114, v124, v1);
      v126 = (v113[7] + (v125 << 6));
      v128 = *(v0 + 112);
      v127 = *(v0 + 128);
      v129 = *(v0 + 96);
      *v126 = *(v0 + 80);
      v126[1] = v129;
      v126[2] = v128;
      v126[3] = v127;
      sub_254134D04(v30, v32);
      v130 = *(v395 + 8);
      v130(v124, v1);
      sub_25422E604(v0 + 144);
      result = (v130)(v123, v1);
      v132 = v113[2];
      v118 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v118)
      {
        __break(1u);
        return result;
      }

      v113[2] = v133;
    }

    v412 = v113;
    v10 = v382;
    v6 = v385;
    v9 = v404;
    v5 = v407;
    v11 = &qword_27F5BC140;
  }

  v282 = *(v0 + 1040);
  v283 = *(v0 + 1024);
  v284 = *(v0 + 1016);
  v285 = *(v0 + 1008);
  v286 = *(v0 + 1000);
  v287 = *(v0 + 992);
  v288 = *(v0 + 984);
  v289 = *(v0 + 976);
  v290 = *(v0 + 968);
  v291 = *(v0 + 944);
  v308 = *(v0 + 936);
  v309 = *(v0 + 920);
  v311 = *(v0 + 912);
  v313 = *(v0 + 904);
  v315 = *(v0 + 896);
  v317 = *(v0 + 888);
  v319 = *(v0 + 880);
  v321 = *(v0 + 872);
  v323 = *(v0 + 864);
  v325 = *(v0 + 848);
  v327 = *(v0 + 840);
  v329 = *(v0 + 824);
  v331 = *(v0 + 816);
  v333 = *(v0 + 800);
  v335 = *(v0 + 792);
  v337 = *(v0 + 776);
  v339 = *(v0 + 768);
  v342 = *(v0 + 752);
  v345 = *(v0 + 744);
  v348 = *(v0 + 728);
  v351 = *(v0 + 720);
  v353 = *(v0 + 704);
  v356 = *(v0 + 696);
  v359 = *(v0 + 680);
  v362 = *(v0 + 672);
  v365 = *(v0 + 656);
  v368 = *(v0 + 648);
  v371 = *(v0 + 632);
  v374 = *(v0 + 624);
  v377 = *(v0 + 608);
  v380 = *(v0 + 600);
  v383 = *(v0 + 584);
  v386 = *(v0 + 576);
  v390 = *(v0 + 560);
  v393 = *(v0 + 552);
  v396 = *(v0 + 536);
  v399 = *(v0 + 528);
  v402 = *(v0 + 512);
  v405 = *(v0 + 496);
  v408 = *(v0 + 472);

  v292 = *(v0 + 8);

  return v292(v412);
}

void sub_25422DEA8(void *a1, uint64_t a2)
{
  v4[4] = sub_25422E8BC;
  v4[5] = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_25422E518;
  v4[3] = &block_descriptor_21;
  v3 = _Block_copy(v4);

  [a1 hmvutilDumpLocalDatabaseWithReply_];
  _Block_release(v3);
}

uint64_t sub_25422DF70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC130, &qword_254262288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422DFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC148, &qword_2542622A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422E050(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v48 - v14;
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    v17 = sub_25424E128();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a3;
    v18[5] = sub_25422E980;
    v18[6] = v16;
    v19 = a2;

    v20 = &unk_254262358;
    v21 = v15;
    v22 = v18;
LABEL_19:
    sub_25419CC1C(0, 0, v21, v20, v22);
  }

  else
  {
    v48 = &v48 - v14;
    v49 = a3;
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC158, &qword_254262350);
      result = sub_25424E878();
      v23 = 0;
      v24 = *(a1 + 64);
      v50 = a1 + 64;
      v51 = v7;
      v25 = 1 << *(a1 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & v24;
      v28 = (v25 + 63) >> 6;
      v56 = v10;
      v57 = result;
      v53 = result + 64;
      v54 = v7 + 16;
      v52 = (v7 + 32);
      if ((v26 & v24) != 0)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
LABEL_13:
          v32 = v29 | (v23 << 6);
          v33 = *(v7 + 72) * v32;
          v34 = v6;
          result = (*(v7 + 16))(v56, *(a1 + 48) + v33, v6);
          v35 = *(*(a1 + 56) + 8 * v32);
          v36 = *(v35 + 16);
          if (!v36)
          {
            break;
          }

          sub_25414076C(v35 + 32, v62);

          result = swift_dynamicCast();
          if (v36 == 1)
          {
            goto LABEL_22;
          }

          v55 = v61;
          sub_25414076C(v35 + 64, v60);

          swift_dynamicCast();
          v37 = v57;
          v38 = v58;
          v39 = v59;
          *(v53 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
          result = (*v52)(v37[6] + v33, v56, v34);
          v40 = (v37[7] + 24 * v32);
          *v40 = v55;
          v40[1] = v38;
          v40[2] = v39;
          v41 = v37[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_23;
          }

          v57[2] = v43;
          v6 = v34;
          v7 = v51;
          if (!v27)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v30 = v23;
        while (1)
        {
          v23 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v23 >= v28)
          {
            v44 = swift_allocObject();
            *(v44 + 16) = v57;
            v45 = sub_25424E128();
            v46 = v48;
            (*(*(v45 - 8) + 56))(v48, 1, 1, v45);
            v47 = swift_allocObject();
            v47[2] = 0;
            v47[3] = 0;
            v47[4] = v49;
            v47[5] = sub_25422E978;
            v47[6] = v44;

            v20 = &unk_254252D00;
            v21 = v46;
            v22 = v47;
            goto LABEL_19;
          }

          v31 = *(v50 + 8 * v23);
          ++v30;
          if (v31)
          {
            v29 = __clz(__rbit64(v31));
            v27 = (v31 - 1) & v31;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25422E518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_25424D948();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC150, &qword_254262348);
    sub_25422E8DC(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    v4 = sub_25424DB78();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_25422E604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC148, &qword_2542622A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25422E66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC010, &qword_254261BB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422E6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecord.DecodedEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25422E740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25422E7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25422E808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25422E85C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25422E8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25422E924(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8828, &qword_254252CE8);
  return sub_25424E088();
}

void EncryptionKeyRecord.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25424D8B8();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = sub_25424D948();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25424E558() == 0x6974707972636E45 && v16 == 0xED000079654B6E6FLL)
  {
  }

  else
  {
    v17 = sub_25424EAB8();

    if ((v17 & 1) == 0)
    {
      v29 = type metadata accessor for EncryptionKeyRecord();
      *&v56[0] = 0;
      *(&v56[0] + 1) = 0xE000000000000000;
      sub_25424E688();

      *&v56[0] = 0xD00000000000001FLL;
      *(&v56[0] + 1) = 0x8000000254250D10;
      v35 = sub_25424E558();
      MEMORY[0x259C05CA0](v35);

      v28 = *(&v56[0] + 1);
      v27 = *&v56[0];
      goto LABEL_10;
    }
  }

  v49 = a2;
  v52 = v15;
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  sub_25424DCB8();
  sub_25424D8C8();

  v20 = v57;
  if ((*(v57 + 48))(v11, 1, v12) == 1)
  {
    sub_254132E5C(v11, &unk_27F5B8E50, &qword_254254390);
    v21 = type metadata accessor for EncryptionKeyRecord();
    *&v56[0] = 0;
    *(&v56[0] + 1) = 0xE000000000000000;
    sub_25424E688();

    *&v56[0] = 0xD00000000000002FLL;
    *(&v56[0] + 1) = 0x8000000254250D30;
    v22 = [a1 recordID];
    v23 = [v22 recordName];

    v24 = sub_25424DCB8();
    v26 = v25;

    MEMORY[0x259C05CA0](v24, v26);

    v28 = *(&v56[0] + 1);
    v27 = *&v56[0];
    v29 = v21 | 0x8000000000000000;
LABEL_10:
    sub_2541BB760();
    swift_allocError();
    *v36 = v29;
    v36[1] = v27;
    v36[2] = v28;
    swift_willThrow();

    return;
  }

  v30 = *(v20 + 32);
  v31 = v52;
  v30(v52, v11, v12);
  v32 = [a1 encryptedValues];
  v33 = v53;
  v34 = sub_25422F160(1, v32);
  if (v33)
  {
    swift_unknownObjectRelease();

    (*(v20 + 8))(v31, v12);
  }

  else if (v34 == 1)
  {
    swift_unknownObjectRetain();
    sub_25422F3D0(0, v32, v56);
    swift_unknownObjectRelease();
    v42 = v56[0];
    sub_25423106C(*&v56[0], *(&v56[0] + 1), &v54);
    if (v55)
    {
      sub_25412DC4C(&v54, v56);
      swift_unknownObjectRetain();
      sub_25422F668(2, v32, v7);
      sub_254134D04(v42, *(&v42 + 1));
      swift_unknownObjectRelease_n();

      v46 = v49;
      v30(v49, v52, v12);
      v47 = type metadata accessor for EncryptionKeyRecord();
      sub_25412DC4C(v56, &v46[*(v47 + 20)]);
      (*(v50 + 32))(&v46[*(v47 + 24)], v7, v51);
    }

    else
    {
      sub_254132E5C(&v54, &qword_27F5BC160, &qword_254262368);
      v43 = type metadata accessor for EncryptionKeyRecord();
      *&v56[0] = 0;
      *(&v56[0] + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0x666F2065756C6156, 0xE900000000000020);
      LOBYTE(v54) = 0;
      sub_25424E7D8();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251B70);
      v44 = v56[0];
      sub_2541BB760();
      swift_allocError();
      *v45 = v43 | 0x8000000000000000;
      *(v45 + 8) = v44;
      swift_willThrow();
      sub_254134D04(v42, *(&v42 + 1));
      swift_unknownObjectRelease();

      (*(v57 + 8))(v52, v12);
    }
  }

  else
  {
    v37 = v34;
    v38 = type metadata accessor for EncryptionKeyRecord();
    *&v56[0] = 0;
    *(&v56[0] + 1) = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0x6E6F2065756C6156, 0xEF20646C65696620);
    LOBYTE(v54) = 1;
    sub_25424E7D8();
    MEMORY[0x259C05CA0](0x6E6B6E7520736920, 0xED0000203A6E776FLL);
    *&v54 = v37;
    v39 = sub_25424EA58();
    MEMORY[0x259C05CA0](v39);

    v40 = v56[0];
    sub_2541BB760();
    swift_allocError();
    *v41 = v38 | 0x2000000000000000;
    *(v41 + 8) = v40;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v57 + 8))(v31, v12);
  }
}

uint64_t sub_25422F160(char a1, void *a2)
{
  v3 = a1;
  v4 = *&aData_5[8 * a1];
  v5 = sub_25424DCA8();

  v6 = [a2 objectForKeyedSubscript_];

  if (v6)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v14;
    }

    else
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v11 = *&aData_5[8 * v3];
      v12 = type metadata accessor for EncryptionKeyRecord();
      MEMORY[0x259C05CA0](v11, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v13 = v12 | 0x6000000000000000;
      v13[1] = 0;
      v13[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v8 = *&aData_5[8 * v3];
    v9 = type metadata accessor for EncryptionKeyRecord();
    MEMORY[0x259C05CA0](v8, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v10 = v9 | 0x4000000000000000;
    v10[1] = 0xD000000000000014;
    v10[2] = 0x8000000254251B90;
    return swift_willThrow();
  }
}

uint64_t sub_25422F3D0@<X0>(char a1@<W0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1;
  v6 = *&aData_5[8 * a1];
  v7 = sub_25424DCA8();

  v8 = [a2 objectForKeyedSubscript_];

  if (v8)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      *a3 = v16;
    }

    else
    {
      sub_254134CF0(0, 0xF000000000000000);
      *&v18 = 0;
      *(&v18 + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v13 = *&aData_5[8 * v5];
      v14 = type metadata accessor for EncryptionKeyRecord();
      MEMORY[0x259C05CA0](v13, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v15 = v14 | 0x6000000000000000;
      *(v15 + 8) = v18;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    *&v17 = 0xD000000000000014;
    *(&v17 + 1) = 0x8000000254251B90;
    v10 = *&aData_5[8 * v5];
    v11 = type metadata accessor for EncryptionKeyRecord();
    MEMORY[0x259C05CA0](v10, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v12 = v11 | 0x4000000000000000;
    *(v12 + 8) = v17;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25422F668@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v27 - v8;
  v10 = a1;
  v11 = *&aData_5[8 * a1];
  v12 = sub_25424DCA8();

  v13 = [a2 objectForKeyedSubscript_];

  if (v13)
  {
    v28 = v13;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    v14 = sub_25424D8B8();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v9, 0, 1, v14);
      return (*(v15 + 32))(a3, v9, v14);
    }

    else
    {
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
      sub_254132E5C(v9, &unk_27F5BA1B0, qword_2542544A0);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v22 = *&aData_5[8 * v10];
      v23 = type metadata accessor for EncryptionKeyRecord();
      MEMORY[0x259C05CA0](v22, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      v27[1] = v13;
      sub_25424EA98();
      v24 = v28;
      v25 = v29;
      sub_2541BB760();
      swift_allocError();
      *v26 = v23 | 0x6000000000000000;
      v26[1] = v24;
      v26[2] = v25;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_25424E688();

    v28 = 0xD000000000000014;
    v29 = 0x8000000254251B90;
    v17 = *&aData_5[8 * v10];
    v18 = type metadata accessor for EncryptionKeyRecord();
    MEMORY[0x259C05CA0](v17, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    v19 = v28;
    v20 = v29;
    sub_2541BB760();
    swift_allocError();
    *v21 = v18 | 0x4000000000000000;
    v21[1] = v19;
    v21[2] = v20;
    return swift_willThrow();
  }
}

uint64_t sub_25422F9F4(char a1, void *a2)
{
  v3 = a1;
  v4 = *&aData_6[8 * a1];
  v5 = sub_25424DCA8();

  v6 = [a2 objectForKeyedSubscript_];

  if (v6)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v14;
    }

    else
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v11 = *&aData_6[8 * v3];
      v12 = type metadata accessor for EventRecord(0);
      MEMORY[0x259C05CA0](v11, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v13 = v12 | 0x6000000000000000;
      v13[1] = 0;
      v13[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v8 = *&aData_6[8 * v3];
    v9 = type metadata accessor for EventRecord(0);
    MEMORY[0x259C05CA0](v8, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v10 = v9 | 0x4000000000000000;
    v10[1] = 0xD000000000000014;
    v10[2] = 0x8000000254251B90;
    return swift_willThrow();
  }
}

uint64_t sub_25422FC64@<X0>(char a1@<W0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1;
  v6 = *&aData_6[8 * a1];
  v7 = sub_25424DCA8();

  v8 = [a2 objectForKeyedSubscript_];

  if (v8)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      *a3 = v16;
    }

    else
    {
      sub_254134CF0(0, 0xF000000000000000);
      *&v18 = 0;
      *(&v18 + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v13 = *&aData_6[8 * v5];
      v14 = type metadata accessor for EventRecord(0);
      MEMORY[0x259C05CA0](v13, 0xE400000000000000);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v15 = v14 | 0x6000000000000000;
      *(v15 + 8) = v18;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    *&v17 = 0xD000000000000014;
    *(&v17 + 1) = 0x8000000254251B90;
    v10 = *&aData_6[8 * v5];
    v11 = type metadata accessor for EventRecord(0);
    MEMORY[0x259C05CA0](v10, 0xE400000000000000);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v12 = v11 | 0x4000000000000000;
    *(v12 + 8) = v17;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25422FEFC(unsigned __int8 a1, void *a2)
{
  v4 = sub_25424DCA8();

  v5 = [a2 objectForKeyedSubscript_];

  if (v5)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v30;
    }

    else
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v19 = 0xE600000000000000;
      v20 = 0xE500000000000000;
      v21 = 0x7472617473;
      v22 = 0xE300000000000000;
      v23 = 6581861;
      if (a1 != 4)
      {
        v23 = 1936154996;
        v22 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v21 = v23;
        v20 = v22;
      }

      v24 = 0xE800000000000000;
      v25 = 0x617461646174656DLL;
      if (a1 != 1)
      {
        v25 = 1701869940;
        v24 = 0xE400000000000000;
      }

      if (a1)
      {
        v19 = v24;
      }

      else
      {
        v25 = 0x73746E657665;
      }

      if (a1 <= 2u)
      {
        v26 = v25;
      }

      else
      {
        v26 = v21;
      }

      if (a1 <= 2u)
      {
        v27 = v19;
      }

      else
      {
        v27 = v20;
      }

      v28 = type metadata accessor for DigestRecord(0);
      MEMORY[0x259C05CA0](v26, v27);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v29 = v28 | 0x6000000000000000;
      v29[1] = 0;
      v29[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v7 = a1;
    v8 = 0xE600000000000000;
    v9 = 0xE500000000000000;
    v10 = 0x7472617473;
    v11 = 0xE300000000000000;
    v12 = 6581861;
    if (a1 != 4)
    {
      v12 = 1936154996;
      v11 = 0xE400000000000000;
    }

    if (a1 != 3)
    {
      v10 = v12;
      v9 = v11;
    }

    v13 = 0xE800000000000000;
    v14 = 0x617461646174656DLL;
    if (a1 != 1)
    {
      v14 = 1701869940;
      v13 = 0xE400000000000000;
    }

    if (a1)
    {
      v8 = v13;
    }

    else
    {
      v14 = 0x73746E657665;
    }

    if (a1 <= 2u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v10;
    }

    if (v7 <= 2)
    {
      v16 = v8;
    }

    else
    {
      v16 = v9;
    }

    v17 = type metadata accessor for DigestRecord(0);
    MEMORY[0x259C05CA0](v15, v16);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v18 = v17 | 0x4000000000000000;
    v18[1] = 0xD000000000000014;
    v18[2] = 0x8000000254251B90;
    return swift_willThrow();
  }
}

uint64_t sub_254230304@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_25424DCA8();

  v7 = [a2 objectForKeyedSubscript_];

  if (v7)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
    if (swift_dynamicCast())
    {
      result = swift_unknownObjectRelease();
      *a3 = v32;
    }

    else
    {
      sub_254134CF0(0, 0xF000000000000000);
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v21 = 0xE600000000000000;
      v22 = 0xE500000000000000;
      v23 = 0x7472617473;
      v24 = 0xE300000000000000;
      v25 = 6581861;
      if (a1 != 4)
      {
        v25 = 1936154996;
        v24 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v23 = v25;
        v22 = v24;
      }

      v26 = 0xE800000000000000;
      v27 = 0x617461646174656DLL;
      if (a1 != 1)
      {
        v27 = 1701869940;
        v26 = 0xE400000000000000;
      }

      if (a1)
      {
        v21 = v26;
      }

      else
      {
        v27 = 0x73746E657665;
      }

      if (a1 <= 2u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v23;
      }

      if (a1 <= 2u)
      {
        v29 = v21;
      }

      else
      {
        v29 = v22;
      }

      v30 = type metadata accessor for DigestRecord(0);
      MEMORY[0x259C05CA0](v28, v29);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v31 = v30 | 0x6000000000000000;
      *(v31 + 8) = v34;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    *&v33 = 0xD000000000000014;
    *(&v33 + 1) = 0x8000000254251B90;
    v9 = a1;
    v10 = 0xE600000000000000;
    v11 = 0xE500000000000000;
    v12 = 0x7472617473;
    v13 = 0xE300000000000000;
    v14 = 6581861;
    if (a1 != 4)
    {
      v14 = 1936154996;
      v13 = 0xE400000000000000;
    }

    if (a1 != 3)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xE800000000000000;
    v16 = 0x617461646174656DLL;
    if (a1 != 1)
    {
      v16 = 1701869940;
      v15 = 0xE400000000000000;
    }

    if (a1)
    {
      v10 = v15;
    }

    else
    {
      v16 = 0x73746E657665;
    }

    if (a1 <= 2u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (v9 <= 2)
    {
      v18 = v10;
    }

    else
    {
      v18 = v11;
    }

    v19 = type metadata accessor for DigestRecord(0);
    MEMORY[0x259C05CA0](v17, v18);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v20 = v19 | 0x4000000000000000;
    *(v20 + 8) = v33;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25423072C(unsigned __int8 a1, void *a2)
{
  v4 = sub_25424DCA8();

  v5 = [a2 objectForKeyedSubscript_];

  if (v5)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254251BB0);
      v7 = 0xE600000000000000;
      v8 = 0xE500000000000000;
      v9 = 0x7472617473;
      v10 = 0xE300000000000000;
      v11 = 6581861;
      if (a1 != 4)
      {
        v11 = 1936154996;
        v10 = 0xE400000000000000;
      }

      if (a1 != 3)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0xE800000000000000;
      v13 = 0x617461646174656DLL;
      if (a1 != 1)
      {
        v13 = 1701869940;
        v12 = 0xE400000000000000;
      }

      if (a1)
      {
        v7 = v12;
      }

      else
      {
        v13 = 0x73746E657665;
      }

      if (a1 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      if (a1 <= 2u)
      {
        v15 = v7;
      }

      else
      {
        v15 = v8;
      }

      v16 = type metadata accessor for DigestRecord(0);
      MEMORY[0x259C05CA0](v14, v15);

      MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251BD0);
      swift_getObjectType();
      sub_25424EA98();
      sub_2541BB760();
      swift_allocError();
      *v17 = v16 | 0x6000000000000000;
      v17[1] = 0;
      v17[2] = 0xE000000000000000;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_25424E688();

    v18 = a1;
    v19 = 0xE600000000000000;
    v20 = 0xE500000000000000;
    v21 = 0x7472617473;
    v22 = 0xE300000000000000;
    v23 = 6581861;
    if (a1 != 4)
    {
      v23 = 1936154996;
      v22 = 0xE400000000000000;
    }

    if (a1 != 3)
    {
      v21 = v23;
      v20 = v22;
    }

    v24 = 0xE800000000000000;
    v25 = 0x617461646174656DLL;
    if (a1 != 1)
    {
      v25 = 1701869940;
      v24 = 0xE400000000000000;
    }

    if (a1)
    {
      v19 = v24;
    }

    else
    {
      v25 = 0x73746E657665;
    }

    if (a1 <= 2u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21;
    }

    if (v18 <= 2)
    {
      v27 = v19;
    }

    else
    {
      v27 = v20;
    }

    v28 = type metadata accessor for DigestRecord(0);
    MEMORY[0x259C05CA0](v26, v27);

    MEMORY[0x259C05CA0](39, 0xE100000000000000);
    sub_2541BB760();
    swift_allocError();
    *v29 = v28 | 0x4000000000000000;
    v29[1] = 0xD000000000000014;
    v29[2] = 0x8000000254251B90;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for EncryptionKeyRecord()
{
  result = qword_27F5BC178;
  if (!qword_27F5BC178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254230B64()
{
  sub_25424EBD8();
  MEMORY[0x259C06AD0](1);
  return sub_25424EC28();
}

uint64_t sub_254230BD0()
{
  sub_25424EBD8();
  MEMORY[0x259C06AD0](1);
  return sub_25424EC28();
}

uint64_t EncryptionKeyRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EncryptionKeyRecord.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EncryptionKeyRecord() + 20);

  return sub_254140708(v3, a1);
}

uint64_t EncryptionKeyRecord.effectiveDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptionKeyRecord() + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptionKeyRecord.init(identifier:key:effectiveDate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25424D948();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for EncryptionKeyRecord();
  sub_25412DC4C(a2, a4 + *(v9 + 20));
  v10 = *(v9 + 24);
  v11 = sub_25424D8B8();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t EncryptionKeyRecord.keyType.getter()
{
  v1 = type metadata accessor for EncryptionKeyRecord();
  sub_254140708(v0 + *(v1 + 20), v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  v3 = v5[4];
  __swift_destroy_boxed_opaque_existential_1(v5);
  return (*(v3 + 32))(DynamicType, v3);
}

uint64_t sub_254230EC4(char *a1, char *a2)
{
  if (*&aData_5[8 * *a1] == *&aData_5[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_254230F2C()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = *&aData_5[8 * v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254230F88()
{
  v1 = *&aData_5[8 * *v0];
  sub_25424DD88();
}

uint64_t sub_254230FC8()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = *&aData_5[8 * v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254231020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25423166C();
  *a2 = result;
  return result;
}

uint64_t sub_25423106C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LubyRackoffEncryptionKey();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v12 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_27F5B8418 != -1)
  {
    result = swift_once();
  }

  if (v12 == qword_27F5BC830)
  {
    sub_254140660(a1, a2);
    LubyRackoffEncryptionKey.init(data:)(a1, a2);
    *(a3 + 24) = v6;
    *(a3 + 32) = sub_2541FA580();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_2541DF3BC(v10, boxed_opaque_existential_1);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

CKRecord __swiftcall EncryptionKeyRecord.toCKRecord(zoneID:)(CKRecordZoneID zoneID)
{
  v2 = v1;
  sub_254148D7C(0, &qword_27F5BA418, 0x277CBC5D0);
  sub_25424D8D8();
  v4 = zoneID.super.isa;
  v5 = sub_25424E3C8();
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  v6 = v5;
  v7 = sub_25424E548();
  [v7 encryptedValues];
  swift_getObjectType();
  v8 = type metadata accessor for EncryptionKeyRecord();
  v9 = (v2 + *(v8 + 20));
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v19 = MEMORY[0x277CC9318];
  v20 = MEMORY[0x277CBBBE0];
  v11 = *(v10 + 8);
  sub_25424D308();
  sub_25424E528();
  sub_254140708(v9, v18);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  DynamicType = swift_getDynamicType();
  v13 = v20;
  __swift_destroy_boxed_opaque_existential_1(v18);
  (*(v13 + 32))(DynamicType, v13);
  v19 = MEMORY[0x277D84A28];
  v20 = MEMORY[0x277CBBEF0];
  v18[0] = 1;
  sub_25424E528();
  v14 = *(v8 + 24);
  v15 = sub_25424D8B8();
  v19 = v15;
  v20 = MEMORY[0x277CBBBE8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v2 + v14, v15);
  sub_25424E528();

  swift_unknownObjectRelease();
  return v7;
}

unint64_t sub_254231478()
{
  result = qword_27F5BC168;
  if (!qword_27F5BC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC168);
  }

  return result;
}

unint64_t sub_2542314F4()
{
  result = sub_25424D948();
  if (v1 <= 0x3F)
  {
    result = sub_254231590();
    if (v2 <= 0x3F)
    {
      result = sub_25424D8B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_254231590()
{
  result = qword_27F5BC188;
  if (!qword_27F5BC188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5BC188);
  }

  return result;
}

unint64_t sub_254231618()
{
  result = qword_27F5BC190;
  if (!qword_27F5BC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC190);
  }

  return result;
}

uint64_t sub_25423166C()
{
  v0 = sub_25424E8E8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_254231700()
{
  sub_25424D8B8();
  if (v0 <= 0x3F)
  {
    sub_25424D948();
    if (v1 <= 0x3F)
    {
      sub_2542317B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2542317B8()
{
  if (!qword_27F5B9068)
  {
    sub_25424D948();
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B9068);
    }
  }
}

uint64_t sub_254231878()
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254231924@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v61 - v5;
  v6 = sub_25424E848();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryEventBase(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC208, &qword_254262788);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v61 - v16;
  v18 = type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v74);
  v27 = v75;
  sub_254233D5C(v74, v17);
  if (v27)
  {

    (*(v19 + 56))(v17, 1, 1, v18);
    sub_254132E5C(v17, &qword_27F5BC208, &qword_254262788);
    sub_254140708(a1, v74);
    sub_254232240(v74, v13);
    v75 = 0;
    sub_254234794(v13, v26, type metadata accessor for AccessoryEventBase);
LABEL_17:
    sub_254234794(v26, v69, type metadata accessor for AccessoryEventBaseLegacy);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v75 = 0;
  v66 = v10;
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_254234794(v17, v22, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_25424EC58();
  v30 = v70;
  sub_25424E838();
  v31 = v67;
  v32 = v30;
  v33 = v68;
  result = (*(v67 + 48))(v32, 1, v68);
  if (result != 1)
  {
    (*(v31 + 32))(v9, v70, v33);
    v35 = *(v29 + 16);
    v64 = v18;
    v65 = a1;
    if (v35 && (v36 = sub_2542208F8(v9), (v37 & 1) != 0))
    {
      sub_25414076C(*(v29 + 56) + 32 * v36, v74);
      (*(v31 + 8))(v9, v33);

      v38 = swift_dynamicCast();
      v39 = v71;
      if (!v38)
      {
        v39 = 15;
      }

      v68 = v39;
      if (v38)
      {
        v40 = v72;
      }

      else
      {
        v40 = 0;
      }

      v70 = v40;
      if (v38)
      {
        v41 = v73;
      }

      else
      {
        v41 = 0;
      }

      v67 = v41;
    }

    else
    {

      (*(v31 + 8))(v9, v33);
      v70 = 0;
      v67 = 0;
      v68 = 15;
    }

    v42 = sub_25424D8B8();
    (*(*(v42 - 8) + 16))(v26, v22, v42);
    v43 = type metadata accessor for EventBaseLegacy(0);
    v44 = *(v43 + 20);
    v45 = type metadata accessor for EventBase(0);
    v46 = v45[5];
    v47 = sub_25424D948();
    v48 = *(*(v47 - 8) + 16);
    v48(&v26[v46], &v22[v44], v47);
    v63 = v22[*(v43 + 24)];
    v49 = v64;
    v50 = v66;
    v48(&v26[v66[5]], &v22[v64[5]], v47);
    v51 = v49[7];
    v52 = &v22[v49[6]];
    v53 = *(v52 + 1);
    v62 = *v52;
    v48(&v26[v50[7]], &v22[v51], v47);
    v54 = &v22[v49[8]];
    v56 = *v54;
    v55 = *(v54 + 1);
    sub_254149770(&v22[v49[9]], &v26[v50[9]]);

    sub_2542346E0(v22, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
    v26[v45[6]] = v63;
    v57 = &v26[v45[7]];
    v58 = v70;
    *v57 = v68;
    v57[1] = v58;
    v57[2] = v67;
    v59 = &v26[v50[6]];
    *v59 = v62;
    *(v59 + 1) = v53;
    v60 = &v26[v50[8]];
    *v60 = v56;
    *(v60 + 1) = v55;
    a1 = v65;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_254231F94(void *a1)
{
  v30 = a1;
  v2 = type metadata accessor for AccessoryEventBase(0);
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254234678(v1, v6, type metadata accessor for AccessoryEventBase);
  v12 = sub_25424D8B8();
  (*(*(v12 - 8) + 16))(v11, v6, v12);
  v13 = type metadata accessor for EventBase(0);
  v29 = *(v13 + 20);
  v14 = type metadata accessor for EventBaseLegacy(0);
  v28 = v14[5];
  v15 = sub_25424D948();
  v16 = *(*(v15 - 8) + 16);
  v16(&v11[v28], &v6[v29], v15);
  v11[v14[6]] = v6[*(v13 + 24)];
  v17 = &v11[v14[7]];
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v16(&v11[v8[7]], &v6[v3[7]], v15);
  v18 = &v6[v3[8]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = &v11[v8[8]];
  *v21 = v19;
  *(v21 + 1) = v20;
  v16(&v11[v8[9]], &v6[v3[9]], v15);
  v22 = &v6[v3[10]];
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = &v11[v8[10]];
  *v25 = v23;
  *(v25 + 1) = v24;
  sub_254149770(&v6[v3[11]], &v11[v8[11]]);

  sub_2542346E0(v6, type metadata accessor for AccessoryEventBase);
  sub_254233A88(v30);
  return sub_2542346E0(v11, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
}

uint64_t sub_254232240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49[-v7];
  v9 = sub_25424E848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_254140708(a1, v59);
  sub_254232CDC(v59, v17);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = 0;
  v55 = a2;
  v19 = a1;
  v21 = a1[3];
  v20 = a1[4];
  v60 = v19;
  __swift_project_boxed_opaque_existential_1(v19, v21);
  v22 = sub_25424EC58();
  sub_25424E838();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (*(v22 + 16) && (v23 = sub_2542208F8(v13), (v24 & 1) != 0))
    {
      sub_25414076C(*(v22 + 56) + 32 * v23, v59);
      (*(v10 + 8))(v13, v9);

      v25 = swift_dynamicCast();
      v26 = v56;
      if (!v25)
      {
        v26 = 15;
      }

      v52 = v26;
      if (v25)
      {
        v27 = v57;
      }

      else
      {
        v27 = 0;
      }

      v53 = v27;
      if (v25)
      {
        v28 = v58;
      }

      else
      {
        v28 = 0;
      }

      v51 = v28;
    }

    else
    {

      (*(v10 + 8))(v13, v9);
      v51 = 0;
      v52 = 15;
      v53 = 0;
    }

    v29 = v55;
    v30 = sub_25424D8B8();
    (*(*(v30 - 8) + 16))(v29, v17, v30);
    v31 = v14[5];
    v55 = type metadata accessor for EventBase(0);
    v32 = *(v55 + 20);
    v33 = sub_25424D948();
    v34 = *(*(v33 - 8) + 16);
    v34(v29 + v32, &v17[v31], v33);
    v35 = v14[7];
    v50 = v17[v14[6]];
    v36 = type metadata accessor for AccessoryEventBase(0);
    v34(v29 + v36[5], &v17[v35], v33);
    v37 = &v17[v14[8]];
    v38 = *v37;
    v39 = v37[1];
    v34(v29 + v36[7], &v17[v14[9]], v33);
    v40 = v14[11];
    v41 = &v17[v14[10]];
    v43 = *v41;
    v42 = v41[1];
    sub_254149770(&v17[v40], v29 + v36[9]);

    sub_2542346E0(v17, type metadata accessor for AccessoryEventBase.DocumentLayout);
    v44 = v55;
    *(v29 + *(v55 + 24)) = v50;
    v45 = (v29 + *(v44 + 28));
    v46 = v53;
    *v45 = v52;
    v45[1] = v46;
    v45[2] = v51;
    v47 = (v29 + v36[6]);
    *v47 = v38;
    v47[1] = v39;
    v48 = (v29 + v36[8]);
    *v48 = v43;
    v48[1] = v42;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}