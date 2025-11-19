unint64_t sub_255C7CFF0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_255C7B780(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a6 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a6 & 1) == 0)
  {
    v23 = result;
    sub_255C7D8BC();
    result = v23;
    goto LABEL_8;
  }

  sub_255C7C86C(v20, a6 & 1);
  result = sub_255C7B780(a5);
  if ((v21 & 1) == (v24 & 1))
  {
LABEL_8:
    v25 = *v7;
    if (v21)
    {
      v26 = v25[7] + 32 * result;
      *v26 = a1;
      *(v26 + 8) = a2 & 1;
      *(v26 + 16) = a3;
      *(v26 + 24) = a4 & 1;
      return result;
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a5;
    v27 = v25[7] + 32 * result;
    *v27 = a1;
    *(v27 + 8) = a2 & 1;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4 & 1;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_255D07708();
  __break(1u);
  return result;
}

uint64_t sub_255C7D168(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_255D05B78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_255C7D220()
{
  v1 = v0;
  v33 = sub_255D05B78();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC58);
  v3 = *v0;
  v4 = sub_255D07638();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_255C7D4A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA0);
  v2 = *v0;
  v3 = sub_255D07638();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_255C7D600()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC98);
  v2 = *v0;
  v3 = sub_255D07638();
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

void *sub_255C7D770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA8);
  v2 = *v0;
  v3 = sub_255D07638();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_255C7D8BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC50);
  v2 = *v0;
  v3 = sub_255D07638();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 24);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 32 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_255C7DA2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  type metadata accessor for DefaultNetworkImageLoader();
  v9 = swift_allocObject();
  v10 = a2;
  swift_defaultActor_initialize();
  v11 = sub_255CD421C(MEMORY[0x277D84F90]);
  v9[17] = a5;
  v9[18] = v11;
  v9[14] = &unk_255D0B260;
  v9[15] = v8;
  v9[16] = a1;
  return v9;
}

uint64_t sub_255C7DAF0()
{
  v1 = sub_255D05B78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255C7DBBC(uint64_t a1)
{
  v4 = *(sub_255D05B78() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255C780F8;

  return sub_255C7A880(a1, v6, v7, v8, v1 + v5);
}

uint64_t dispatch thunk of NetworkImageLoader.image(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255C7DDDC;

  return v9(a1, a2, a3);
}

uint64_t sub_255C7DDDC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_255C7DFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC80);
    v3 = sub_255D07658();
    v4 = a1 + 32;

    while (1)
    {
      sub_255C7299C(v4, &v13, &qword_27F7DDC88);
      v5 = v13;
      v6 = v14;
      result = sub_255C7B7DC(v13, v14, sub_255C7B4B0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255C7E138(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_255C7E0E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_255C7E138(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255C7E148(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255C7E190()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255C7E1C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255C7E414;

  return sub_255C79C08(a1);
}

uint64_t sub_255C7E264(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255C7E300;

  return sub_255C79C08(a1);
}

uint64_t sub_255C7E300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

id sub_255C7E424(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = [objc_opt_self() defaultSessionConfiguration];
  [v5 setRequestCachePolicy_];
  sub_255C7E68C();
  v6 = sub_255D05B78();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_255D07408();
  [v5 setURLCache_];

  [v5 setTimeoutIntervalForRequest_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0AA80;
  v13[1] = 0x747065636341;
  v13[2] = 0xE600000000000000;
  v9 = MEMORY[0x277D837D0];
  sub_255D07538();
  *(inited + 96) = v9;
  *(inited + 72) = 0x2A2F6567616D69;
  *(inited + 80) = 0xE700000000000000;
  sub_255CD4404(inited);
  swift_setDeallocating();
  sub_255C7E6D8(inited + 32);
  v10 = sub_255D06FF8();

  [v5 setHTTPAdditionalHeaders_];

  v11 = [objc_opt_self() sessionWithConfiguration_];
  return v11;
}

unint64_t sub_255C7E68C()
{
  result = qword_27F7DDCB8;
  if (!qword_27F7DDCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7DDCB8);
  }

  return result;
}

uint64_t sub_255C7E6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C7E77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D06518();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_255D06528();
}

uint64_t sub_255C7E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_255D06518();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_255D06528();
}

uint64_t sub_255C7E96C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_255D06E78();
}

uint64_t sub_255C7EA34()
{
  v1 = sub_255D063E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255D07438();
    v7 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C80EF8(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_255C7EB94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = type metadata accessor for NetworkImageModel(0);
  v5 = sub_255C814F0(&qword_27F7DDDA8, type metadata accessor for NetworkImageModel);

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_255C7EC24()
{
  v0 = type metadata accessor for NetworkImageModel.State(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  type metadata accessor for NetworkImageModel(0);
  v6 = swift_allocObject();
  v7 = type metadata accessor for ImageSource();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = &v5[*(v0 + 20)];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  sub_255C81800(v5, v3);
  sub_255D05E98();
  sub_255C80D28(v5);
  return v6;
}

uint64_t NetworkImage.init<>(url:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_255C7EC24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = sub_255D05B78();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v11 = type metadata accessor for ImageSource();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  else
  {
    (*(v10 + 32))(v8, a1, v9);
    v12 = type metadata accessor for ImageSource();
    *&v8[*(v12 + 20)] = a3;
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD8);
  result = sub_255C80A40(v8, a2 + v13[10]);
  *(a2 + v13[11]) = 0;
  v15 = (a2 + v13[12]);
  *v15 = sub_255C7EF54;
  v15[1] = 0;
  return result;
}

uint64_t sub_255C7EF54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 >= 2uLL)
  {
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  a2[1] = sub_255C80938;
  a2[2] = 0;
  return result;
}

uint64_t NetworkImage.init(url:scale:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = sub_255C7EC24;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  v15 = sub_255D05B78();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1, v15) == 1)
  {
    v17 = type metadata accessor for ImageSource();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  else
  {
    (*(v16 + 32))(v14, a1, v15);
    v18 = type metadata accessor for ImageSource();
    *&v14[*(v18 + 20)] = a6;
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  }

  v19 = type metadata accessor for NetworkImage();
  result = sub_255C80A40(v14, a5 + v19[10]);
  *(a5 + v19[11]) = a2;
  v21 = (a5 + v19[12]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t NetworkImage.init<A>(url:scale:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a3;
  v16[5] = a4;
  type metadata accessor for _OptionalContent();
  swift_getWitnessTable();

  return NetworkImage.init(url:scale:transaction:content:)(a1, a2, sub_255C80B00, v16, a7, a8);
}

uint64_t sub_255C7F29C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 >= 2uLL)
  {
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v8 = type metadata accessor for _OptionalContent();
  swift_getWitnessTable();
  v9 = *(*(v8 - 8) + 16);
  v9(&v13, &v11, v8);

  v11 = v13;
  v12 = v14;
  v9(a4, &v11, v8);
}

uint64_t NetworkImage.init<A, B>(url:scale:transaction:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a11;
  v20[5] = a12;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = a6;
  sub_255D06538();
  swift_getWitnessTable();
  return NetworkImage.init(url:scale:transaction:content:)(a1, a2, sub_255C80B64, v20, a9, a10);
}

uint64_t sub_255C7F4D0@<X0>(unint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a8;
  v50 = a9;
  v42 = a5;
  v43 = a4;
  v44 = a3;
  v45 = a2;
  v46 = *(a6 - 8);
  v51 = a10;
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  v26 = sub_255D06538();
  v47 = *(v26 - 8);
  v48 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v30 = *a1;
  if (*a1 >= 2)
  {
    v34 = a1[2];
    v42 = a1[1];
    v43 = v34;

    v45(v35);
    v36 = v46;
    v37 = *(v46 + 16);
    v37(v18, v15, a6);
    v38 = *(v36 + 8);
    v38(v15, a6);
    v37(v15, v18, a6);
    v33 = v49;
    sub_255C7E77C(v15, a6);
    sub_255C80D84(v30);
    v38(v15, a6);
    v38(v18, a6);
  }

  else
  {
    v43(v27);
    v31 = *(v20 + 16);
    v31(v25, v23, a7);
    v32 = *(v20 + 8);
    v32(v23, a7);
    v31(v23, v25, a7);
    v33 = v49;
    sub_255C7E874(v23, a6, a7);
    v32(v23, a7);
    v32(v25, a7);
  }

  v52 = v33;
  v53 = v51;
  v39 = v48;
  swift_getWitnessTable();
  v40 = v47;
  (*(v47 + 16))(v50, v29, v39);
  return (*(v40 + 8))(v29, v39);
}

uint64_t NetworkImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = sub_255D07338();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v61 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a1 - 8);
  v52 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkImageModel.State(0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v58 = *(v13 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCE0);
  v51 = v13;
  v16 = sub_255D061D8();
  v59 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCE8);
  v60 = sub_255D061D8();
  v20 = sub_255D06538();
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x28223BE20](v20);
  v57 = &v49 - v21;
  v22 = *(a1 + 48);
  v50 = v2;
  v49 = *(v2 + v22);
  sub_255C7EB94();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();

  v23 = &v12[*(v9 + 28)];
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  sub_255C80D18(*v23);
  sub_255C80D28(v12);
  v73[0] = v24;
  v73[1] = v25;
  v73[2] = v26;
  v27 = v15;
  v49(v73);
  sub_255C80D84(v73[0]);
  v49 = *(a1 + 40);
  v28 = v55;
  v29 = v54;
  (*(v55 + 16))(v54, v50, a1);
  v30 = v28;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = *(a1 + 24);
  v34 = v51;
  *(v32 + 16) = v51;
  *(v32 + 24) = v33;
  (*(v30 + 32))(v32 + v31, v29, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  sub_255C80FF4();
  v35 = v61;
  sub_255D07318();
  v36 = v53;
  sub_255D06BB8();

  (*(v64 + 8))(v35, v65);
  (*(v58 + 8))(v27, v34);
  v37 = sub_255C810A8(&qword_27F7DDCF8, &qword_27F7DDCE0);
  v71 = v33;
  v72 = v37;
  swift_getWitnessTable();
  v38 = v59;
  v39 = *(v59 + 16);
  v40 = v56;
  v39(v56, v36, v16);
  v41 = *(v38 + 8);
  v41(v36, v16);
  v39(v36, v40, v16);
  v73[0] = sub_255C7E96C(v36);
  v42 = sub_255C810A8(&qword_27F7DDD00, &qword_27F7DDCE8);
  v69 = v33;
  v70 = v42;
  WitnessTable = swift_getWitnessTable();
  v44 = MEMORY[0x277CE11C0];
  v45 = v57;
  sub_255C7E77C(v73, MEMORY[0x277CE11C8]);

  v41(v36, v16);
  v41(v40, v16);
  v67 = v44;
  v68 = WitnessTable;
  v46 = v63;
  swift_getWitnessTable();
  v47 = v62;
  (*(v62 + 16))(v66, v45, v46);
  return (*(v47 + 8))(v45, v46);
}

uint64_t sub_255C80014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_255D07308();
  v3[5] = sub_255D072F8();
  v5 = sub_255D072E8();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_255C800B0, v5, v4);
}

uint64_t sub_255C800B0()
{
  v1 = v0[2];
  v2 = type metadata accessor for NetworkImage();
  v0[8] = sub_255C7EB94();
  v3 = *(v2 + 40);
  v4 = *(v1 + *(v2 + 44));

  v5 = sub_255C7EA34();
  v7 = v6;
  v0[9] = v4;
  v0[10] = v5;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_255C801A8;

  return sub_255C81BF4(v1 + v3, v4, v5, v7);
}

uint64_t sub_255C801A8()
{
  v1 = *v0;

  swift_unknownObjectRelease();

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_255C8032C, v3, v2);
}

uint64_t sub_255C8032C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _OptionalContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = sub_255D06238();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D06CF8();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7DDD08);
  v44 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v43 = &v42 - v11;
  v12 = a1;
  v13 = *(a1 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v48 = v20;
  v21 = sub_255D06538();
  v49 = *(v21 - 8);
  v50 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  if (*v2)
  {
    v24 = v2[1];

    v24(v25);
    v26 = *(v12 + 24);
    v27 = *(v14 + 16);
    v27(v19, v17, v13);
    v28 = *(v14 + 8);
    v28(v17, v13);
    v27(v17, v19, v13);
    v29 = MEMORY[0x277CE1088];
    v54 = MEMORY[0x277CE1088];
    v30 = MEMORY[0x277CE1078];
    v55 = MEMORY[0x277CE1078];
    swift_getOpaqueTypeConformance2();
    sub_255C7E77C(v17, v13);

    v28(v17, v13);
    v28(v19, v13);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    sub_255D06CC8();
    v31 = v42;
    (*(v42 + 104))(v8, *MEMORY[0x277CE0FE0], v6);
    v32 = sub_255D06D58();

    (*(v31 + 8))(v8, v6);
    v54 = v32;
    v33 = v45;
    sub_255D06228();
    v34 = v43;
    v29 = MEMORY[0x277CE1088];
    v35 = MEMORY[0x277CE1078];
    sub_255D06C28();
    (*(v46 + 8))(v33, v47);

    v26 = *(v12 + 24);
    v54 = v29;
    v55 = v35;
    swift_getOpaqueTypeConformance2();
    v36 = v48;
    sub_255C7E874(v34, v13, v48);
    v37 = v36;
    v30 = v35;
    (*(v44 + 8))(v34, v37);
  }

  v54 = v29;
  v55 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v26;
  v53 = OpaqueTypeConformance2;
  v39 = v50;
  swift_getWitnessTable();
  v40 = v49;
  (*(v49 + 16))(v51, v23, v39);
  return (*(v40 + 8))(v23, v39);
}

double sub_255C80940@<D0>(_OWORD *a1@<X8>)
{
  sub_255C81864();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_255C80990@<D0>(_OWORD *a1@<X8>)
{
  sub_255C81864();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255C809E0()
{
  sub_255C81864();
  swift_unknownObjectRetain();
  return sub_255D06408();
}

uint64_t sub_255C80A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C80AC8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255C80B24()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255C80B98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();
}

uint64_t sub_255C80C18(uint64_t a1)
{
  v2 = type metadata accessor for NetworkImageModel.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_255C81800(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255C81800(v7, v5);

  sub_255D05EC8();
  return sub_255C80D28(v7);
}

unint64_t sub_255C80D18(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_255C80D28(uint64_t a1)
{
  v2 = type metadata accessor for NetworkImageModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255C80D84(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_255C80D94()
{
  v1 = type metadata accessor for NetworkImage();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 32) & ~v2;
  sub_255C80EF8(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  sub_255C80F04();
  v5 = *(v1 + 40);
  v6 = type metadata accessor for ImageSource();
  if (!(*(*(v6 - 8) + 48))(v0 + v4 + v5, 1, v6))
  {
    v7 = sub_255D05B78();
    (*(*(v7 - 8) + 8))(v0 + v4 + v5, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_255C80EF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_255C80F0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for NetworkImage() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_255C780F8;

  return sub_255C80014(v0 + v5, v2, v3);
}

unint64_t sub_255C80FF4()
{
  result = qword_27F7DDCF0;
  if (!qword_27F7DDCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCD0);
    sub_255C814F0(&qword_27F7DDC28, type metadata accessor for ImageSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDCF0);
  }

  return result;
}

uint64_t sub_255C810A8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_255C81180()
{
  sub_255C813F8();
  if (v0 <= 0x3F)
  {
    sub_255C8145C();
    if (v1 <= 0x3F)
    {
      sub_255C81538();
      if (v2 <= 0x3F)
      {
        sub_255C77614();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_255C81250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_255C81330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void sub_255C813F8()
{
  if (!qword_27F7DDD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDD98);
    v0 = sub_255D05F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DDD90);
    }
  }
}

void sub_255C8145C()
{
  if (!qword_27F7DDDA0)
  {
    type metadata accessor for NetworkImageModel(255);
    sub_255C814F0(&qword_27F7DDDA8, type metadata accessor for NetworkImageModel);
    v0 = sub_255D05F58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DDDA0);
    }
  }
}

uint64_t sub_255C814F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_255C81538()
{
  if (!qword_27F7DDDB0[0])
  {
    type metadata accessor for ImageSource();
    v0 = sub_255D074A8();
    if (!v1)
    {
      atomic_store(v0, qword_27F7DDDB0);
    }
  }
}

uint64_t sub_255C81590()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255C815D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255C81620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C81660()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCE8);
  sub_255D061D8();
  sub_255D06538();
  sub_255C810A8(&qword_27F7DDD00, &qword_27F7DDCE8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_255C81758()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F7DDD08);
  sub_255D06538();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_255C81800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkImageModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255C81864()
{
  result = qword_27F7DDE38;
  if (!qword_27F7DDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDE38);
  }

  return result;
}

uint64_t View.networkImageLoader<A>(_:)()
{
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_255D06A78();
  swift_unknownObjectRelease();
}

uint64_t sub_255C8195C()
{
  sub_255C81864();
  sub_255D063F8();
  return v1;
}

uint64_t sub_255C819A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDE50);
  sub_255D061D8();
  sub_255C81A1C();
  return swift_getWitnessTable();
}

unint64_t sub_255C81A1C()
{
  result = qword_27F7DDE58;
  if (!qword_27F7DDE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDE58);
  }

  return result;
}

uint64_t sub_255C81A90()
{
  if (qword_27F7DD7C0 != -1)
  {
    swift_once();
  }

  *&xmmword_27F7DDE40 = qword_27F7DDC38;
  *(&xmmword_27F7DDE40 + 1) = &protocol witness table for DefaultNetworkImageLoader;
}

uint64_t sub_255C81B00@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27F7DD7C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27F7DDE40;

  return swift_unknownObjectRetain();
}

uint64_t sub_255C81B7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();
}

uint64_t sub_255C81BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for ImageSource();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDE90);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for NetworkImageModel.State(0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_255D07308();
  v5[25] = sub_255D072F8();
  v8 = sub_255D072E8();
  v5[26] = v8;
  v5[27] = v7;

  return MEMORY[0x2822009F8](sub_255C81DDC, v8, v7);
}

uint64_t sub_255C81DDC()
{
  v1 = v0[24];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v45 = v0[11];
  v6 = v0[6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();

  sub_255C8321C(v1, v2);
  sub_255C832F8(v1, type metadata accessor for NetworkImageModel.State);
  v7 = *(v4 + 48);
  sub_255C8321C(v6, v3);
  sub_255C8321C(v2, v3 + v7);
  v8 = *(v5 + 48);
  if (v8(v3, 1, v45) == 1)
  {
    v9 = v0[11];
    sub_255C76B94(v0[20], &qword_27F7DDCD0);
    if (v8(v3 + v7, 1, v9) == 1)
    {
      sub_255C76B94(v0[16], &qword_27F7DDCD0);
LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v10 = v0[11];
  sub_255C8321C(v0[16], v0[19]);
  v11 = v8(v3 + v7, 1, v10);
  v13 = v0[19];
  v12 = v0[20];
  if (v11 == 1)
  {
    sub_255C76B94(v0[20], &qword_27F7DDCD0);
    sub_255C832F8(v13, type metadata accessor for ImageSource);
LABEL_6:
    v14 = v0[16];
    v15 = &unk_27F7DDE90;
LABEL_7:
    sub_255C76B94(v14, v15);
    goto LABEL_8;
  }

  sub_255C8328C(v3 + v7, v0[14]);
  v36 = sub_255D05B18();
  sub_255C76B94(v12, &qword_27F7DDCD0);
  v37 = v0[19];
  v38 = v0[16];
  v39 = v0[14];
  if ((v36 & 1) == 0)
  {
    sub_255C832F8(v39, type metadata accessor for ImageSource);
    sub_255C832F8(v37, type metadata accessor for ImageSource);
    v15 = &qword_27F7DDCD0;
    v14 = v38;
    goto LABEL_7;
  }

  v40 = *(v0[11] + 20);
  v41 = *(v37 + v40);
  v42 = *(v39 + v40);
  sub_255C832F8(v39, type metadata accessor for ImageSource);
  sub_255C832F8(v37, type metadata accessor for ImageSource);
  sub_255C76B94(v38, &qword_27F7DDCD0);
  if (v41 == v42)
  {
    goto LABEL_15;
  }

LABEL_8:
  v16 = v0[18];
  v17 = v0[11];
  v18 = v0[12];
  sub_255C8321C(v0[6], v16);
  v19 = (v18 + 56);
  if (v8(v16, 1, v17) == 1)
  {
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[21];
    v23 = v0[18];
    v24 = v0[11];

    sub_255C76B94(v23, &qword_27F7DDCD0);
    (*v19)(v21, 1, 1, v24);
    v25 = (v21 + *(v22 + 20));
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_255C83358(v21, v20, type metadata accessor for NetworkImageModel.State);

    sub_255D05EC8();
    sub_255C832F8(v21, type metadata accessor for NetworkImageModel.State);
LABEL_16:

    v43 = v0[1];

    return v43();
  }

  v26 = v0[17];
  v27 = v0[13];
  v28 = v0[11];
  v46 = v0[9];
  sub_255C8328C(v0[18], v27);
  sub_255C83358(v27, v26, type metadata accessor for ImageSource);
  (*v19)(v26, 0, 1, v28);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = sub_255D05EA8();
  sub_255C833C0(v26, v30);
  v29(v0 + 2, 0);

  ObjectType = swift_getObjectType();
  v44 = (*(v46 + 8) + **(v46 + 8));
  v32 = swift_task_alloc();
  v0[28] = v32;
  *v32 = v0;
  v32[1] = sub_255C8242C;
  v33 = v0[13];
  v34 = v0[9];

  return v44(v33, ObjectType, v34);
}

uint64_t sub_255C8242C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_255C82720;
  }

  else
  {
    v4[30] = a1;
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_255C82554;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_255C82554()
{
  v1 = v0[30];
  v2 = v0[13];
  v3 = v0[11];

  v4 = *(v2 + *(v3 + 20));
  v5 = v1;
  v6 = sub_255D06CD8();
  v7 = CGImageGetWidth(v5) / v4;
  Height = CGImageGetHeight(v5);

  v9 = v0[13];
  v10 = v0[10];
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = Height / v4;
  sub_255D061E8();
  sub_255C80D84(v6);

  sub_255C832F8(v9, type metadata accessor for ImageSource);

  v12 = v0[1];

  return v12();
}

uint64_t sub_255C82720()
{
  v1 = v0[29];

  v2 = v0[13];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = 1;
  v4[4] = 0;
  v4[5] = 0;
  sub_255D061E8();
  sub_255C80D84(1uLL);

  sub_255C832F8(v2, type metadata accessor for ImageSource);

  v5 = v0[1];

  return v5();
}

uint64_t sub_255C8289C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255C80D18(a2);
  v7 = sub_255D05EA8();
  v9 = (v8 + *(type metadata accessor for NetworkImageModel.State(0) + 20));
  v10 = *v9;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  sub_255C80D84(v10);
  v7(&v12, 0);
}

uint64_t sub_255C82990()
{
  v1 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupport17NetworkImageModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDE98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_255C82A60()
{
  sub_255C82DDC(319, &qword_27F7DDE78, type metadata accessor for NetworkImageModel.State, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_255C82B40(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255C82B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255C82C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

void sub_255C82D38()
{
  sub_255C82DDC(319, qword_27F7DDDB0, type metadata accessor for ImageSource, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_255C82DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_255C82E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D05E88();
  *a1 = result;
  return result;
}

BOOL sub_255C82E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSource();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDE90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v31 - v13;
  v15 = *(v12 + 56);
  sub_255C8321C(a1, v31 - v13);
  sub_255C8321C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_255C76B94(v14, &qword_27F7DDCD0);
LABEL_10:
      v22 = type metadata accessor for NetworkImageModel.State(0);
      v23 = (a1 + *(v22 + 20));
      v24 = v23[1];
      v25 = v23[2];
      v32[0] = *v23;
      v32[1] = v24;
      v32[2] = v25;
      v26 = (a2 + *(v22 + 20));
      v28 = v26[1];
      v29 = v26[2];
      v31[0] = *v26;
      v27 = v31[0];
      v31[1] = v28;
      v31[2] = v29;
      sub_255C80D18(v32[0]);
      sub_255C80D18(v27);
      v18 = _s33LegalAndRegulatorySettingsSupport17NetworkImageStateO2eeoiySbAC_ACtFZ_0(v32, v31);
      sub_255C80D84(v31[0]);
      sub_255C80D84(v32[0]);
      return v18;
    }

    goto LABEL_6;
  }

  sub_255C8321C(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_255C832F8(v10, type metadata accessor for ImageSource);
LABEL_6:
    v17 = &qword_27F7DDE90;
    goto LABEL_7;
  }

  sub_255C8328C(&v14[v15], v7);
  if (sub_255D05B18())
  {
    v19 = *(v4 + 20);
    v20 = *&v10[v19];
    v21 = *&v7[v19];
    sub_255C832F8(v7, type metadata accessor for ImageSource);
    sub_255C832F8(v10, type metadata accessor for ImageSource);
    sub_255C76B94(v14, &qword_27F7DDCD0);
    if (v20 != v21)
    {
      return 0;
    }

    goto LABEL_10;
  }

  sub_255C832F8(v7, type metadata accessor for ImageSource);
  sub_255C832F8(v10, type metadata accessor for ImageSource);
  v17 = &qword_27F7DDCD0;
LABEL_7:
  sub_255C76B94(v14, v17);
  return 0;
}

uint64_t sub_255C8321C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C8328C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C832F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255C83358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255C833C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NetworkImageState.image.getter()
{
  if (*v0 >= 2uLL)
  {
  }

  else
  {
    return 0;
  }
}

BOOL _s33LegalAndRegulatorySettingsSupport17NetworkImageStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*a1)
  {
    if (!v6)
    {
      sub_255C80D84(0);
      sub_255C80D84(0);
      return 1;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    if (v6 == 1)
    {
      sub_255C80D84(1uLL);
      sub_255C80D84(1uLL);
      return v6;
    }

    goto LABEL_8;
  }

  if (v6 < 2)
  {
LABEL_8:
    sub_255C80D18(*a2);
    sub_255C80D18(v3);
    sub_255C80D84(v3);
    sub_255C80D84(v6);
    return 0;
  }

  sub_255C80D18(*a2);
  sub_255C80D18(v3);
  v9 = sub_255D06D38();
  sub_255C80D84(v3);
  sub_255C80D84(v6);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return v4 == v7 && v2 == v5;
}

uint64_t get_enum_tag_for_layout_string_33LegalAndRegulatorySettingsSupport17NetworkImageStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255C83610(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255C83664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_255C836C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmptyTextStyle(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EmptyTextStyle(_WORD *result, int a2, int a3)
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

int *sub_255C837E0(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v10 = sub_255D059D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_255D05988();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {

        return sub_255C840D0(a1);
      }

      v41 = v15;
      v42 = result;
      if (qword_27F7DD898 != -1)
      {
        swift_once();
      }

      v20 = qword_27F7E0168;
      v21 = sub_255D070C8();
      v44 = a2;
      v45 = 15;
      v43 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8);
      v40 = a2;
      sub_255C86714();
      sub_255C8407C();
      a2 = v40;
      v22 = sub_255D07498();
      v24 = [v20 firstMatchInString:v21 options:0 range:{v22, v23}];

      if (v24)
      {
        [v24 rangeAtIndex_];
        sub_255D073F8();
        if ((v25 & 1) == 0)
        {
          v32 = sub_255D07228();
          MEMORY[0x259C4B570](v32);

          v33 = sub_255D07128();
          v35 = v34;

          if (v33 == 29282 && v35 == 0xE200000000000000)
          {
          }

          else
          {
            v37 = sub_255D076D8();

            a2 = v40;
            if ((v37 & 1) == 0)
            {
              return sub_255C83E08(a1, a2);
            }
          }

          v38 = type metadata accessor for AttributedStringInlineRenderer();
          (*(v11 + 16))(v13, v5 + *(v38 + 32), v10);
          sub_255D05998();
          sub_255D05908();
          result = (*(v41 + 8))(v18, v42);
          *(v5 + *(v38 + 36)) = 1;
          return result;
        }
      }
    }

    else
    {
      if (a4)
      {
        v42 = result;
        v26 = type metadata accessor for AttributedStringInlineRenderer();
        v27 = (v5 + *(v26 + 24));
        v40 = a1;
        v41 = v15;
        v29 = v27[3];
        v28 = v27[4];
        v39[1] = __swift_project_boxed_opaque_existential_1(v27, v29);
        v30 = *(v26 + 32);
        v31 = *(v11 + 16);

        v31(v13, v5 + v30, v10);
        (*(v28 + 8))(v13, v29, v28);
        sub_255D05998();
        sub_255D05908();
        return (*(v41 + 8))(v18, v42);
      }
    }

    return sub_255C83E08(a1, a2);
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {

      return sub_255C84A18(a1);
    }

    else
    {

      return sub_255C85360(a1);
    }
  }

  else if (a4 == 6)
  {

    return sub_255C85CA8(a1, a2, a3);
  }

  else if (a4 != 7)
  {
    v19 = result;
    if (a3 | a2 | a1)
    {
      result = type metadata accessor for AttributedStringInlineRenderer();
LABEL_34:
      (*(v11 + 16))(v13, v5 + result[8], v10);
      sub_255D05998();
      sub_255D05908();
      return (*(v15 + 8))(v18, v19);
    }

    result = type metadata accessor for AttributedStringInlineRenderer();
    if (*(v5 + result[7]))
    {
      goto LABEL_34;
    }

    v36 = result[9];
    if ((*(v5 + v36) & 1) == 0)
    {
      goto LABEL_34;
    }

    *(v5 + v36) = 0;
  }

  return result;
}

uint64_t sub_255C83E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255D05988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedStringInlineRenderer();
  v15 = *(v14 + 36);
  if (*(v3 + v15) == 1)
  {
    *(v3 + v15) = 0;
    v17[4] = a1;
    v17[5] = a2;
    v17[2] = 728980574;
    v17[3] = 0xE400000000000000;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_255C8407C();
    sub_255D074E8();
  }

  else
  {
  }

  (*(v7 + 16))(v9, v3 + *(v14 + 32), v6);
  sub_255D05998();
  sub_255D05908();
  return (*(v11 + 8))(v13, v10);
}

uint64_t type metadata accessor for AttributedStringInlineRenderer()
{
  result = qword_27F7DDEC0;
  if (!qword_27F7DDEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_255C8407C()
{
  result = qword_27F7DDEA0;
  if (!qword_27F7DDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEA0);
  }

  return result;
}

uint64_t sub_255C840D0(unint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_255D05988();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for AttributedStringInlineRenderer();
  v14 = *(v13 + 32);
  v15 = *(v7 + 16);
  v63 = v12;
  v15(v12, v2 + v14, v6);
  v68 = v13;
  v16 = (v2 + *(v13 + 24));
  v17 = v16[8];
  v18 = v16[9];
  v65 = v16;
  __swift_project_boxed_opaque_existential_1(v16 + 5, v17);
  v71 = v15;
  v72 = v7 + 16;
  v15(v10, v2 + v14, v6);
  (*(v18 + 8))(v10, v17, v18);
  v19 = *(v7 + 40);
  v75 = v14;
  v76 = v6;
  v20 = v2 + v14;
  v21 = v69;
  v73 = v10;
  v64 = v7 + 40;
  v62 = v19;
  v19(v20, v10, v6);
  v22 = *(v67 + 16);
  if (v22)
  {
    ++v70;
    v23 = (v67 + 56);
    v66 = v2;
    do
    {
      v28 = *(v23 - 3);
      v29 = *(v23 - 2);
      v30 = *(v23 - 1);
      v31 = *v23;
      if (v31 <= 3)
      {
        if (*v23 > 1u)
        {
          if (v31 == 2)
          {
            v34 = qword_27F7DD898;

            if (v34 != -1)
            {
              swift_once();
            }

            v35 = qword_27F7E0168;
            v36 = sub_255D070C8();
            v79 = 15;
            v81 = v28;
            v82 = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8);
            sub_255C86714();
            v67 = sub_255C8407C();
            v37 = sub_255D07498();
            v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

            v2 = v66;
            if (v39)
            {
              [v39 rangeAtIndex_];
              sub_255D073F8();
              if (v40)
              {
              }

              else
              {
                v54 = sub_255D07228();
                MEMORY[0x259C4B570](v54);

                v55 = sub_255D07128();
                v57 = v56;

                if (v55 == 29282 && v57 == 0xE200000000000000)
                {

                  v2 = v66;
                  v21 = v69;
LABEL_40:
                  v71(v73, v2 + v75, v76);
                  v60 = v74;
                  sub_255D05998();
                  sub_255D05908();
                  (*v70)(v60, v21);
                  sub_255C7429C(v28, v29, v30, 2u);
                  *(v2 + *(v68 + 36)) = 1;
                  goto LABEL_5;
                }

                v59 = sub_255D076D8();

                v2 = v66;
                v21 = v69;
                if (v59)
                {
                  goto LABEL_40;
                }
              }
            }

            v41 = *(v68 + 36);
            if (*(v2 + v41) == 1)
            {
              *(v2 + v41) = 0;
              v81 = v28;
              v82 = v29;
              v79 = 728980574;
              v80 = 0xE400000000000000;
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v71(v73, v2 + v75, v76);
            v53 = v74;
            sub_255D05998();
            sub_255D05908();
            v21 = v69;
            (*v70)(v53, v69);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 2;
          }

          else
          {

            sub_255C840D0(v50);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 3;
          }
        }

        else if (*v23)
        {
          v43 = v65[3];
          v44 = v65[4];
          __swift_project_boxed_opaque_existential_1(v65, v43);
          sub_255C74200(v28, v29, v30, 1u);

          v45 = v2 + v75;
          v67 = v30;
          v46 = v2;
          v47 = v21;
          v48 = v73;
          v71(v73, v45, v76);
          (*(v44 + 8))(v48, v43, v44);
          v49 = v74;
          v21 = v47;
          v2 = v46;
          sub_255D05998();
          sub_255D05908();
          (*v70)(v49, v21);
          v24 = v28;
          v25 = v29;
          v26 = v67;
          v27 = 1;
        }

        else
        {
          v33 = *(v68 + 36);
          if (*(v2 + v33))
          {
            *(v2 + v33) = 0;
            v81 = v28;
            v82 = v29;
            v79 = 728980574;
            v80 = 0xE400000000000000;
            v77 = 0;
            v78 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v71(v73, v2 + v75, v76);
          v52 = v74;
          sub_255D05998();
          sub_255D05908();
          v21 = v69;
          (*v70)(v52, v69);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 0;
        }
      }

      else if (*v23 <= 5u)
      {
        if (v31 == 4)
        {

          sub_255C84A18(v42);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 4;
        }

        else
        {

          sub_255C85360(v51);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 5;
        }
      }

      else
      {
        if (v31 != 6)
        {
          if (v31 != 7)
          {
            if (v30 | v29 | v28 || (*(v2 + *(v68 + 28)) & 1) != 0 || (v58 = *(v68 + 36), (*(v2 + v58) & 1) == 0))
            {
              v71(v73, v2 + v75, v76);
              v32 = v74;
              sub_255D05998();
              sub_255D05908();
              (*v70)(v32, v21);
            }

            else
            {
              *(v2 + v58) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v28, v29, v30);
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = 6;
      }

      sub_255C7429C(v24, v25, v26, v27);
LABEL_5:
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  return v62(v2 + v75, v63, v76);
}

uint64_t sub_255C84A18(unint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_255D05988();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for AttributedStringInlineRenderer();
  v14 = *(v13 + 32);
  v15 = *(v7 + 16);
  v63 = v12;
  v15(v12, v2 + v14, v6);
  v68 = v13;
  v16 = (v2 + *(v13 + 24));
  v17 = v16[13];
  v18 = v16[14];
  v65 = v16;
  __swift_project_boxed_opaque_existential_1(v16 + 10, v17);
  v71 = v15;
  v72 = v7 + 16;
  v15(v10, v2 + v14, v6);
  (*(v18 + 8))(v10, v17, v18);
  v19 = *(v7 + 40);
  v75 = v14;
  v76 = v6;
  v20 = v2 + v14;
  v21 = v69;
  v73 = v10;
  v64 = v7 + 40;
  v62 = v19;
  v19(v20, v10, v6);
  v22 = *(v67 + 16);
  if (v22)
  {
    ++v70;
    v23 = (v67 + 56);
    v66 = v2;
    do
    {
      v28 = *(v23 - 3);
      v29 = *(v23 - 2);
      v30 = *(v23 - 1);
      v31 = *v23;
      if (v31 <= 3)
      {
        if (*v23 > 1u)
        {
          if (v31 == 2)
          {
            v34 = qword_27F7DD898;

            if (v34 != -1)
            {
              swift_once();
            }

            v35 = qword_27F7E0168;
            v36 = sub_255D070C8();
            v79 = 15;
            v81 = v28;
            v82 = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8);
            sub_255C86714();
            v67 = sub_255C8407C();
            v37 = sub_255D07498();
            v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

            v2 = v66;
            if (v39)
            {
              [v39 rangeAtIndex_];
              sub_255D073F8();
              if (v40)
              {
              }

              else
              {
                v54 = sub_255D07228();
                MEMORY[0x259C4B570](v54);

                v55 = sub_255D07128();
                v57 = v56;

                if (v55 == 29282 && v57 == 0xE200000000000000)
                {

                  v2 = v66;
                  v21 = v69;
LABEL_40:
                  v71(v73, v2 + v75, v76);
                  v60 = v74;
                  sub_255D05998();
                  sub_255D05908();
                  (*v70)(v60, v21);
                  sub_255C7429C(v28, v29, v30, 2u);
                  *(v2 + *(v68 + 36)) = 1;
                  goto LABEL_5;
                }

                v59 = sub_255D076D8();

                v2 = v66;
                v21 = v69;
                if (v59)
                {
                  goto LABEL_40;
                }
              }
            }

            v41 = *(v68 + 36);
            if (*(v2 + v41) == 1)
            {
              *(v2 + v41) = 0;
              v81 = v28;
              v82 = v29;
              v79 = 728980574;
              v80 = 0xE400000000000000;
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v71(v73, v2 + v75, v76);
            v53 = v74;
            sub_255D05998();
            sub_255D05908();
            v21 = v69;
            (*v70)(v53, v69);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 2;
          }

          else
          {

            sub_255C840D0(v50);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 3;
          }
        }

        else if (*v23)
        {
          v43 = v65[3];
          v44 = v65[4];
          __swift_project_boxed_opaque_existential_1(v65, v43);
          sub_255C74200(v28, v29, v30, 1u);

          v45 = v2 + v75;
          v67 = v30;
          v46 = v2;
          v47 = v21;
          v48 = v73;
          v71(v73, v45, v76);
          (*(v44 + 8))(v48, v43, v44);
          v49 = v74;
          v21 = v47;
          v2 = v46;
          sub_255D05998();
          sub_255D05908();
          (*v70)(v49, v21);
          v24 = v28;
          v25 = v29;
          v26 = v67;
          v27 = 1;
        }

        else
        {
          v33 = *(v68 + 36);
          if (*(v2 + v33))
          {
            *(v2 + v33) = 0;
            v81 = v28;
            v82 = v29;
            v79 = 728980574;
            v80 = 0xE400000000000000;
            v77 = 0;
            v78 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v71(v73, v2 + v75, v76);
          v52 = v74;
          sub_255D05998();
          sub_255D05908();
          v21 = v69;
          (*v70)(v52, v69);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 0;
        }
      }

      else if (*v23 <= 5u)
      {
        if (v31 == 4)
        {

          sub_255C84A18(v42);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 4;
        }

        else
        {

          sub_255C85360(v51);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 5;
        }
      }

      else
      {
        if (v31 != 6)
        {
          if (v31 != 7)
          {
            if (v30 | v29 | v28 || (*(v2 + *(v68 + 28)) & 1) != 0 || (v58 = *(v68 + 36), (*(v2 + v58) & 1) == 0))
            {
              v71(v73, v2 + v75, v76);
              v32 = v74;
              sub_255D05998();
              sub_255D05908();
              (*v70)(v32, v21);
            }

            else
            {
              *(v2 + v58) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v28, v29, v30);
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = 6;
      }

      sub_255C7429C(v24, v25, v26, v27);
LABEL_5:
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  return v62(v2 + v75, v63, v76);
}

uint64_t sub_255C85360(unint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_255D05988();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for AttributedStringInlineRenderer();
  v14 = *(v13 + 32);
  v15 = *(v7 + 16);
  v63 = v12;
  v15(v12, v2 + v14, v6);
  v68 = v13;
  v16 = (v2 + *(v13 + 24));
  v17 = v16[18];
  v18 = v16[19];
  v65 = v16;
  __swift_project_boxed_opaque_existential_1(v16 + 15, v17);
  v71 = v15;
  v72 = v7 + 16;
  v15(v10, v2 + v14, v6);
  (*(v18 + 8))(v10, v17, v18);
  v19 = *(v7 + 40);
  v75 = v14;
  v76 = v6;
  v20 = v2 + v14;
  v21 = v69;
  v73 = v10;
  v64 = v7 + 40;
  v62 = v19;
  v19(v20, v10, v6);
  v22 = *(v67 + 16);
  if (v22)
  {
    ++v70;
    v23 = (v67 + 56);
    v66 = v2;
    do
    {
      v28 = *(v23 - 3);
      v29 = *(v23 - 2);
      v30 = *(v23 - 1);
      v31 = *v23;
      if (v31 <= 3)
      {
        if (*v23 > 1u)
        {
          if (v31 == 2)
          {
            v34 = qword_27F7DD898;

            if (v34 != -1)
            {
              swift_once();
            }

            v35 = qword_27F7E0168;
            v36 = sub_255D070C8();
            v79 = 15;
            v81 = v28;
            v82 = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8);
            sub_255C86714();
            v67 = sub_255C8407C();
            v37 = sub_255D07498();
            v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

            v2 = v66;
            if (v39)
            {
              [v39 rangeAtIndex_];
              sub_255D073F8();
              if (v40)
              {
              }

              else
              {
                v54 = sub_255D07228();
                MEMORY[0x259C4B570](v54);

                v55 = sub_255D07128();
                v57 = v56;

                if (v55 == 29282 && v57 == 0xE200000000000000)
                {

                  v2 = v66;
                  v21 = v69;
LABEL_40:
                  v71(v73, v2 + v75, v76);
                  v60 = v74;
                  sub_255D05998();
                  sub_255D05908();
                  (*v70)(v60, v21);
                  sub_255C7429C(v28, v29, v30, 2u);
                  *(v2 + *(v68 + 36)) = 1;
                  goto LABEL_5;
                }

                v59 = sub_255D076D8();

                v2 = v66;
                v21 = v69;
                if (v59)
                {
                  goto LABEL_40;
                }
              }
            }

            v41 = *(v68 + 36);
            if (*(v2 + v41) == 1)
            {
              *(v2 + v41) = 0;
              v81 = v28;
              v82 = v29;
              v79 = 728980574;
              v80 = 0xE400000000000000;
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v71(v73, v2 + v75, v76);
            v53 = v74;
            sub_255D05998();
            sub_255D05908();
            v21 = v69;
            (*v70)(v53, v69);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 2;
          }

          else
          {

            sub_255C840D0(v50);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 3;
          }
        }

        else if (*v23)
        {
          v43 = v65[3];
          v44 = v65[4];
          __swift_project_boxed_opaque_existential_1(v65, v43);
          sub_255C74200(v28, v29, v30, 1u);

          v45 = v2 + v75;
          v67 = v30;
          v46 = v2;
          v47 = v21;
          v48 = v73;
          v71(v73, v45, v76);
          (*(v44 + 8))(v48, v43, v44);
          v49 = v74;
          v21 = v47;
          v2 = v46;
          sub_255D05998();
          sub_255D05908();
          (*v70)(v49, v21);
          v24 = v28;
          v25 = v29;
          v26 = v67;
          v27 = 1;
        }

        else
        {
          v33 = *(v68 + 36);
          if (*(v2 + v33))
          {
            *(v2 + v33) = 0;
            v81 = v28;
            v82 = v29;
            v79 = 728980574;
            v80 = 0xE400000000000000;
            v77 = 0;
            v78 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v71(v73, v2 + v75, v76);
          v52 = v74;
          sub_255D05998();
          sub_255D05908();
          v21 = v69;
          (*v70)(v52, v69);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 0;
        }
      }

      else if (*v23 <= 5u)
      {
        if (v31 == 4)
        {

          sub_255C84A18(v42);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 4;
        }

        else
        {

          sub_255C85360(v51);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 5;
        }
      }

      else
      {
        if (v31 != 6)
        {
          if (v31 != 7)
          {
            if (v30 | v29 | v28 || (*(v2 + *(v68 + 28)) & 1) != 0 || (v58 = *(v68 + 36), (*(v2 + v58) & 1) == 0))
            {
              v71(v73, v2 + v75, v76);
              v32 = v74;
              sub_255D05998();
              sub_255D05908();
              (*v70)(v32, v21);
            }

            else
            {
              *(v2 + v58) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v28, v29, v30);
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = 6;
      }

      sub_255C7429C(v24, v25, v26, v27);
LABEL_5:
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  return v62(v2 + v75, v63, v76);
}

uint64_t sub_255C85CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v82 = a2;
  v80 = a1;
  v73 = sub_255D05988();
  v66 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v79 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v75 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v67 = &v66 - v8;
  v9 = sub_255D059D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v16 = type metadata accessor for AttributedStringInlineRenderer();
  v17 = *(v16 + 32);
  v18 = *(v10 + 16);
  v69 = v15;
  v18(v15, v3 + v17, v9);
  v19 = (v3 + *(v16 + 24));
  v20 = v19[23];
  v21 = v19[24];
  v71 = v19;
  v81 = __swift_project_boxed_opaque_existential_1(v19 + 20, v20);
  v76 = v18;
  v77 = v10 + 16;
  v18(v13, v3 + v17, v9);
  (*(v21 + 8))(v13, v20, v21);
  v22 = *(v10 + 40);
  v78 = v13;
  v81 = v9;
  v70 = v10 + 40;
  v68 = v22;
  v22(v3 + v17, v13, v9);
  v72 = v16;
  v23 = v67;
  sub_255D05B38();
  sub_255C867BC(v23, v75);
  sub_255C8682C();
  v80 = v17;
  v82 = v3;
  v24 = v73;
  sub_255D059F8();
  sub_255C86880(v23);
  v25 = *(v74 + 16);
  if (v25)
  {
    v75 = (v66 + 8);
    v26 = (v74 + 56);
    do
    {
      v31 = *(v26 - 3);
      v32 = *(v26 - 2);
      v33 = *(v26 - 1);
      v34 = *v26;
      if (v34 <= 3)
      {
        if (*v26 > 1u)
        {
          if (v34 == 2)
          {
            v74 = *(v26 - 1);
            v38 = qword_27F7DD898;

            if (v38 != -1)
            {
              swift_once();
            }

            v39 = qword_27F7E0168;
            v40 = sub_255D070C8();
            v85 = 15;
            v87 = v31;
            v88 = v32;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8);
            sub_255C86714();
            sub_255C8407C();
            v41 = sub_255D07498();
            v43 = [v39 firstMatchInString:v40 options:0 range:{v41, v42}];

            if (v43)
            {
              [v43 rangeAtIndex_];
              sub_255D073F8();
              if (v44)
              {
              }

              else
              {
                v57 = sub_255D07228();
                MEMORY[0x259C4B570](v57);

                v58 = sub_255D07128();
                v60 = v59;

                if (v58 == 29282 && v60 == 0xE200000000000000)
                {

                  v24 = v73;
LABEL_40:
                  v63 = v82;
                  v76(v78, v82 + v80, v81);
                  v64 = v79;
                  sub_255D05998();
                  sub_255D05908();
                  (*v75)(v64, v24);
                  sub_255C7429C(v31, v32, v74, 2u);
                  *(v63 + *(v72 + 36)) = 1;
                  goto LABEL_5;
                }

                v62 = sub_255D076D8();

                v24 = v73;
                if (v62)
                {
                  goto LABEL_40;
                }
              }
            }

            v45 = *(v72 + 36);
            if (*(v82 + v45) == 1)
            {
              *(v82 + v45) = 0;
              v87 = v31;
              v88 = v32;
              v85 = 728980574;
              v86 = 0xE400000000000000;
              v83 = 0;
              v84 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v76(v78, v82 + v80, v81);
            v56 = v79;
            sub_255D05998();
            sub_255D05908();
            v24 = v73;
            (*v75)(v56, v73);
            v27 = v31;
            v28 = v32;
            v29 = v74;
            v30 = 2;
          }

          else
          {

            sub_255C840D0(v53);
            v27 = v31;
            v28 = v32;
            v29 = v33;
            v30 = 3;
          }
        }

        else if (*v26)
        {
          v47 = v71[3];
          v48 = v71[4];
          __swift_project_boxed_opaque_existential_1(v71, v47);
          sub_255C74200(v31, v32, v33, 1u);

          v74 = v33;
          v49 = v24;
          v50 = v78;
          v76(v78, v82 + v80, v81);
          (*(v48 + 8))(v50, v47, v48);
          v51 = v79;
          v24 = v49;
          sub_255D05998();
          v52 = v75;
          sub_255D05908();
          (*v52)(v51, v49);
          v27 = v31;
          v28 = v32;
          v29 = v74;
          v30 = 1;
        }

        else
        {
          v36 = *(v72 + 36);
          v37 = *(v26 - 1);
          if (*(v82 + v36))
          {
            *(v82 + v36) = 0;
            v87 = v31;
            v88 = v32;
            v85 = 728980574;
            v86 = 0xE400000000000000;
            v83 = 0;
            v84 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v76(v78, v82 + v80, v81);
          v55 = v79;
          sub_255D05998();
          sub_255D05908();
          v24 = v73;
          (*v75)(v55, v73);
          v27 = v31;
          v28 = v32;
          v29 = v37;
          v30 = 0;
        }
      }

      else if (*v26 <= 5u)
      {
        if (v34 == 4)
        {

          sub_255C84A18(v46);
          v27 = v31;
          v28 = v32;
          v29 = v33;
          v30 = 4;
        }

        else
        {

          sub_255C85360(v54);
          v27 = v31;
          v28 = v32;
          v29 = v33;
          v30 = 5;
        }
      }

      else
      {
        if (v34 != 6)
        {
          if (v34 != 7)
          {
            if (v33 | v32 | v31 || (*(v82 + *(v72 + 28)) & 1) != 0 || (v61 = *(v72 + 36), (*(v82 + v61) & 1) == 0))
            {
              v76(v78, v82 + v80, v81);
              v35 = v79;
              sub_255D05998();
              sub_255D05908();
              (*v75)(v35, v24);
            }

            else
            {
              *(v82 + v61) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v31, v32, v33);
        v27 = v31;
        v28 = v32;
        v29 = v33;
        v30 = 6;
      }

      sub_255C7429C(v27, v28, v29, v30);
LABEL_5:
      v26 += 32;
      --v25;
    }

    while (v25);
  }

  return v68(v82 + v80, v69, v81);
}

unint64_t sub_255C86714()
{
  result = qword_27F7DDEB0;
  if (!qword_27F7DDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEB0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255C867BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255C8682C()
{
  result = qword_27F7DDEB8;
  if (!qword_27F7DDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEB8);
  }

  return result;
}

uint64_t sub_255C86880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C868FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_255D05988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_255D059D8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_255C86A94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_255D05988();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_255D059D8();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_255C86C18()
{
  sub_255D05988();
  if (v0 <= 0x3F)
  {
    sub_255C86CD4();
    if (v1 <= 0x3F)
    {
      sub_255D059D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255C86CD4()
{
  if (!qword_27F7DDED0)
  {
    sub_255D05B78();
    v0 = sub_255D074A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DDED0);
    }
  }
}

double sub_255C86D44(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8);
  v2 = swift_allocObject();
  *&result = 1;
  v4 = *a1;
  v5 = a1[1];
  v2[1] = xmmword_255D0AA80;
  v2[2] = v4;
  v2[3] = v5;
  return result;
}

uint64_t sub_255C86DB0(uint64_t a1, CGFloat a2)
{
  sub_255C86E38(a1, a2);
  v5 = v4;
  sub_255C871A4(a1, a2);
  sub_255CDE07C(v6);
  return v5;
}

void sub_255C86E38(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = v3 - 1;
    if (v3 == 1)
    {
      v39 = *(MEMORY[0x277D84F90] + 16);
      if (v39)
      {
        v9 = MEMORY[0x277D84F90];
LABEL_21:
        sub_255C97798(0, v39, 0);
        v44 = v5;
        v45 = (v9 + 56);
        do
        {
          v46 = *(v45 - 3);
          v47 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;
          v64.origin.x = v46;
          v64.origin.y = v47;
          v64.size.width = v48;
          v64.size.height = *v45;
          MinX = CGRectGetMinX(v64);
          v65.origin.x = v46;
          v65.origin.y = v47;
          v65.size.width = v48;
          v65.size.height = v49;
          MaxY = CGRectGetMaxY(v65);
          v66.origin.x = v46;
          v66.origin.y = v47;
          v66.size.width = v48;
          v66.size.height = v49;
          Width = CGRectGetWidth(v66);
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          if (v54 >= v53 >> 1)
          {
            v56 = Width;
            sub_255C97798((v53 > 1), v54 + 1, 1);
            Width = v56;
          }

          *(v44 + 16) = v54 + 1;
          v55 = (v44 + 32 * v54);
          v55[4] = MinX;
          v55[5] = MaxY - a2;
          v55[6] = Width;
          v55[7] = a2;
          v45 += 4;
          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
      sub_255C97798(0, v3 - 1, 0);
      v8 = 0;
      v9 = v61;
      v59 = *(MEMORY[0x277CBF398] + 8);
      v60 = *MEMORY[0x277CBF398];
      v10 = *(MEMORY[0x277CBF398] + 16);
      v11 = *(MEMORY[0x277CBF398] + 24);
      v12 = *(a1 + 40);
      v13 = *(v12 + 16);
      v57 = (v12 + 40);
      v58 = v2 + 32;
      while (1)
      {
        if (v8 == v6)
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v13)
        {
          break;
        }

        v14 = v5;
        v19 = *(v5 + 16);
        v28 = v59;
        v27 = v60;
        v29 = v10;
        v30 = v11;
        if (v19)
        {
          goto LABEL_12;
        }

LABEL_15:
        v33 = v30;
        v34 = v29;
        v35 = v28;
        v36 = v27;

        v62.origin.x = v36;
        v62.origin.y = v35;
        v62.size.width = v34;
        v62.size.height = v33;
        v63 = CGRectInset(v62, -a2, -a2);
        v38 = *(v61 + 16);
        v37 = *(v61 + 24);
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          x = v63.origin.x;
          y = v63.origin.y;
          v42 = v63.size.width;
          height = v63.size.height;
          sub_255C97798((v37 > 1), v38 + 1, 1);
          v63.size.height = height;
          v63.size.width = v42;
          v63.origin.y = y;
          v63.origin.x = x;
        }

        ++v8;
        *(v61 + 16) = v39;
        *(v61 + 32 * v38 + 32) = v63;
        if (v8 == v6)
        {
          goto LABEL_21;
        }
      }

      sub_255C97798(0, v13, 0);
      v14 = v5;
      v15 = v57;
      v16 = (v58 + 16 * v8);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v5 + 16);
      v20 = 32 * v19;
      v21 = v13;
      do
      {
        v23 = *(v15 - 1);
        v22 = *v15;
        v24 = *(v5 + 24);
        if (v19++ >= v24 >> 1)
        {
          sub_255C97798((v24 > 1), v19, 1);
        }

        *(v5 + 16) = v19;
        v26 = (v5 + v20);
        v26[4] = v23;
        v26[5] = v17;
        v20 += 32;
        v15 += 2;
        v26[6] = v22;
        v26[7] = v18;
        --v21;
      }

      while (v21);
LABEL_12:
      v31 = 0;
      v32 = v14 + 56;
      v30 = v11;
      v29 = v10;
      v28 = v59;
      v27 = v60;
      while (v31 < *(v14 + 16))
      {
        ++v31;
        *&v27 = CGRectUnion(*&v27, *(v32 - 24));
        v32 += 32;
        if (v19 == v31)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }
}

void sub_255C871A4(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = v3 - 1;
    if (v3 == 1)
    {
      v39 = *(MEMORY[0x277D84F90] + 16);
      if (v39)
      {
        v9 = MEMORY[0x277D84F90];
LABEL_21:
        sub_255C97798(0, v39, 0);
        v44 = v5;
        v45 = (v9 + 56);
        do
        {
          v46 = *(v45 - 3);
          v47 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;
          v64.origin.x = v46;
          v64.origin.y = v47;
          v64.size.width = v48;
          v64.size.height = *v45;
          MaxX = CGRectGetMaxX(v64);
          v65.origin.x = v46;
          v65.origin.y = v47;
          v65.size.width = v48;
          v65.size.height = v49;
          MinY = CGRectGetMinY(v65);
          v66.origin.x = v46;
          v66.origin.y = v47;
          v66.size.width = v48;
          v66.size.height = v49;
          Height = CGRectGetHeight(v66);
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          if (v54 >= v53 >> 1)
          {
            v56 = Height;
            sub_255C97798((v53 > 1), v54 + 1, 1);
            Height = v56;
          }

          *(v44 + 16) = v54 + 1;
          v55 = (v44 + 32 * v54);
          v55[4] = MaxX - a2;
          v55[5] = MinY;
          v55[6] = a2;
          v55[7] = Height;
          v45 += 4;
          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
      sub_255C97798(0, v3 - 1, 0);
      v8 = 0;
      v9 = v61;
      v59 = *(MEMORY[0x277CBF398] + 8);
      v60 = *MEMORY[0x277CBF398];
      v10 = *(MEMORY[0x277CBF398] + 16);
      v11 = *(MEMORY[0x277CBF398] + 24);
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      v57 = (v12 + 40);
      v58 = v2 + 32;
      while (1)
      {
        if (v8 == v6)
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v13)
        {
          break;
        }

        v14 = v5;
        v19 = *(v5 + 16);
        v28 = v59;
        v27 = v60;
        v29 = v10;
        v30 = v11;
        if (v19)
        {
          goto LABEL_12;
        }

LABEL_15:
        v33 = v30;
        v34 = v29;
        v35 = v28;
        v36 = v27;

        v62.origin.x = v36;
        v62.origin.y = v35;
        v62.size.width = v34;
        v62.size.height = v33;
        v63 = CGRectInset(v62, -a2, -a2);
        v38 = *(v61 + 16);
        v37 = *(v61 + 24);
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          x = v63.origin.x;
          y = v63.origin.y;
          width = v63.size.width;
          v43 = v63.size.height;
          sub_255C97798((v37 > 1), v38 + 1, 1);
          v63.size.height = v43;
          v63.size.width = width;
          v63.origin.y = y;
          v63.origin.x = x;
        }

        ++v8;
        *(v61 + 16) = v39;
        *(v61 + 32 * v38 + 32) = v63;
        if (v8 == v6)
        {
          goto LABEL_21;
        }
      }

      sub_255C97798(0, v13, 0);
      v14 = v5;
      v15 = v57;
      v16 = (v58 + 16 * v8);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v5 + 16);
      v20 = 32 * v19;
      v21 = v13;
      do
      {
        v23 = *(v15 - 1);
        v22 = *v15;
        v24 = *(v5 + 24);
        if (v19++ >= v24 >> 1)
        {
          sub_255C97798((v24 > 1), v19, 1);
        }

        *(v5 + 16) = v19;
        v26 = (v5 + v20);
        v26[4] = v17;
        v26[5] = v23;
        v20 += 32;
        v15 += 2;
        v26[6] = v18;
        v26[7] = v22;
        --v21;
      }

      while (v21);
LABEL_12:
      v31 = 0;
      v32 = v14 + 56;
      v30 = v11;
      v29 = v10;
      v28 = v59;
      v27 = v60;
      while (v31 < *(v14 + 16))
      {
        ++v31;
        *&v27 = CGRectUnion(*&v27, *(v32 - 24));
        v32 += 32;
        if (v19 == v31)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_255C87528(uint64_t a1, CGFloat a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0B6E0;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v17.origin.x = *a1;
  v17.origin.y = v6;
  v17.size.width = v7;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = v7;
  v18.size.height = v8;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = v5;
  v19.origin.y = v6;
  v19.size.width = v7;
  v19.size.height = v8;
  Width = CGRectGetWidth(v19);
  *(v4 + 32) = MinX;
  *(v4 + 40) = MinY;
  *(v4 + 48) = Width;
  *(v4 + 56) = a2;
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  v12 = CGRectGetMinX(v20);
  v21.origin.x = v5;
  v21.origin.y = v6;
  v21.size.width = v7;
  v21.size.height = v8;
  v13 = CGRectGetMaxY(v21) - a2;
  v22.origin.x = v5;
  v22.origin.y = v6;
  v22.size.width = v7;
  v22.size.height = v8;
  v14 = CGRectGetWidth(v22);
  *(v4 + 64) = v12;
  *(v4 + 72) = v13;
  *(v4 + 80) = v14;
  *(v4 + 88) = a2;
  sub_255C86E38(a1, a2);
  sub_255CDE07C(v15);
  return v4;
}

uint64_t sub_255C87678(__int128 *a1, CGFloat a2)
{
  sub_255C86E38(a1, a2);
  v5 = v4;
  sub_255C871A4(a1, a2);
  sub_255CDE07C(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8);
  inited = swift_initStackObject();
  v8 = *a1;
  v9 = a1[1];
  inited[1] = xmmword_255D0AA80;
  inited[2] = v8;
  inited[3] = v9;
  sub_255CDE07C(inited);
  return v5;
}

uint64_t sub_255C87704(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_255C8774C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t FontDigitVariant._collectAttributes(in:)()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 28)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t sub_255C878C0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 28)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t getEnumTagSinglePayload for SoftBreak.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SoftBreak.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t CodeBlock._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255D0AA80;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *(v7 + 64) = 4;
  *a1 = v7;
}

LegalAndRegulatorySettingsSupport::CodeBlock __swiftcall CodeBlock.init(language:content:)(Swift::String_optional language, Swift::String content)
{
  *v2 = language;
  v2[1].value = content;
  result.content = content;
  result.language = language;
  return result;
}

uint64_t CodeBlock.init(language:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  result = a3();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = result;
  a4[3] = v8;
  return result;
}

uint64_t sub_255C87BE4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255D0AA80;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *(v7 + 64) = 4;
  *a1 = v7;
}

uint64_t sub_255C87C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C87CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FontCapsVariant._collectAttributes(in:)()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 24)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t sub_255C87E38()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 24)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t getEnumTagSinglePayload for RawTableColumnAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RawTableColumnAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SoftBreak.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  return sub_255D07768();
}

uint64_t _s33LegalAndRegulatorySettingsSupport14FontPropertiesV12DigitVariantO9hashValueSivg_0()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  return sub_255D07768();
}

uint64_t sub_255C881A8()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  return sub_255D07768();
}

unint64_t sub_255C881F0()
{
  result = qword_27F7DDEE0;
  if (!qword_27F7DDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEE0);
  }

  return result;
}

uint64_t View.markdownTableBorderStyle(_:)()
{
  swift_getKeyPath();
  sub_255D06A78();
}

uint64_t sub_255C882F4()
{
  sub_255C887A4();

  return sub_255D063F8();
}

double sub_255C8833C@<D0>(_OWORD *a1@<X8>)
{
  sub_255C887A4();
  sub_255D063F8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double sub_255C88394@<D0>(_OWORD *a1@<X8>)
{
  sub_255C887A4();
  sub_255D063F8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_255C883EC(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v8[2] = a1[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_255C88748(v8, v7);
  sub_255C887A4();
  return sub_255D06408();
}

uint64_t View.markdownTableBackgroundStyle(_:)()
{
  swift_getKeyPath();
  sub_255D06A78();
}

uint64_t sub_255C884D8()
{
  sub_255C886F4();

  return sub_255D063F8();
}

double sub_255C88520@<D0>(_OWORD *a1@<X8>)
{
  sub_255C886F4();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_255C88570@<D0>(_OWORD *a1@<X8>)
{
  sub_255C886F4();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255C885C0()
{
  sub_255C886F4();

  return sub_255D06408();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy33LegalAndRegulatorySettingsSupport16TableBorderStyleVGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_255D061D8();
  sub_255C74D48(a4, a2);
  return swift_getWitnessTable();
}

unint64_t sub_255C886F4()
{
  result = qword_27F7DDF48;
  if (!qword_27F7DDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDF48);
  }

  return result;
}

unint64_t sub_255C887A4()
{
  result = qword_27F7DDF50[0];
  if (!qword_27F7DDF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7DDF50);
  }

  return result;
}

double sub_255C88818()
{
  v0 = sub_255D06CA8();
  sub_255D05F68();
  *&xmmword_27F7DDEE8 = sub_255C87678;
  *(&xmmword_27F7DDEE8 + 1) = 0;
  qword_27F7DDEF8 = v0;
  result = *&v2;
  unk_27F7DDF00 = v2;
  *(&xmmword_27F7DDF08 + 8) = v3;
  qword_27F7DDF20 = v4;
  return result;
}

uint64_t sub_255C888A0@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27F7DD7D0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_27F7DDEF8;
  v7[0] = xmmword_27F7DDEE8;
  v7[1] = *&qword_27F7DDEF8;
  v2 = xmmword_27F7DDF08;
  v3 = unk_27F7DDF18;
  v7[2] = xmmword_27F7DDF08;
  v7[3] = unk_27F7DDF18;
  *a1 = xmmword_27F7DDEE8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_255C88748(v7, &v6);
}

uint64_t sub_255C88980()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255C889F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_255C88B30(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

LegalAndRegulatorySettingsSupport::Heading::Level_optional __swiftcall Heading.Level.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x5040302010006uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_255C88D9C()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1 + 1);
  return sub_255D07768();
}

uint64_t sub_255C88E14()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1 + 1);
  return sub_255D07768();
}

uint64_t Heading._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3 + 1;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 7;
  *a1 = v5;
}

void *Heading.init(_:content:)@<X0>(_BYTE *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = a2(&v5);
  *(a3 + 8) = v5;
  return result;
}

unint64_t sub_255C88F44()
{
  result = qword_27F7DDFD8;
  if (!qword_27F7DDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDFD8);
  }

  return result;
}

uint64_t sub_255C88F98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3 + 1;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 7;
  *a1 = v5;
}

uint64_t sub_255C89020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_255C89068(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Heading.Level(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Heading.Level(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255C8920C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v21 = a5;
  v9 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_255D05B78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 == 7)
  {
    sub_255D05B48();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_255C86880(v12);
      return MEMORY[0x277D84F90];
    }

    (*(v14 + 32))(v16, v12, v13);
    if ((sub_255C89490(v21) & 1) == 0)
    {
      (*(v14 + 8))(v16, v13);
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_255D0AA80;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 48) = a3;
    *(v17 + 56) = 7;
    v18 = *(v14 + 8);

    v18(v16, v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_255D0AA80;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 48) = a3;
    *(v17 + 56) = a4;
    sub_255C74200(a1, a2, a3, a4);
  }

  return v17;
}

uint64_t sub_255C89490(uint64_t a1)
{
  v2 = sub_255D05F18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D05B68();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = sub_255D07128();
  v9 = v8;

  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == *MEMORY[0x277CDF3D0])
  {
    if (v7 != 0xD000000000000011 || 0x8000000255D186F0 != v9)
    {
LABEL_12:
      v12 = sub_255D076D8();

      v11 = v12 ^ 1;
      return v11 & 1;
    }

    goto LABEL_9;
  }

  if (v10 != *MEMORY[0x277CDF3C0])
  {

    (*(v3 + 8))(v5, v2);
LABEL_11:
    v11 = 1;
    return v11 & 1;
  }

  if (v7 != 0xD000000000000012 || 0x8000000255D186D0 != v9)
  {
    goto LABEL_12;
  }

LABEL_9:

  v11 = 0;
  return v11 & 1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_255C896D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C89718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C8979C@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v2 = sub_255D063E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v28 = *v1;
    v38 = v7;
    v39 = v6;
  }

  else
  {

    sub_255D07438();
    v8 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0();
    (*(v3 + 8))(v5, v2);
    v28 = v38;
  }

  v10 = *(v1 + 72);
  v9 = *(v1 + 80);
  v12 = *(v1 + 88);
  v11 = *(v1 + 96);

  sub_255CBEFAC(v32);
  v13 = v33;
  v14 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v15 = (*(v14 + 8))(v12, v11, v10, v9, v13, v14);
  v17 = v16;
  v19 = v18;
  v31 = v20 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v31;
  *(v21 + 40) = v19;
  KeyPath = swift_getKeyPath();
  v30[0] = 0;
  __swift_destroy_boxed_opaque_existential_1(v32);
  v23 = v30[0];
  v24 = swift_allocObject();
  *(v24 + 16) = KeyPath;
  *(v24 + 56) = v23;
  *(v24 + 64) = sub_255C8A048;
  *(v24 + 72) = v21;
  v32[0] = swift_getKeyPath();
  v35 = 0;
  v36 = sub_255C8A13C;
  v37 = v24;
  sub_255C7299C(v32, v30, &qword_27F7DDFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDFE0);
  sub_255C8A144();
  v25 = sub_255D06E78();
  sub_255C76B94(v32, &qword_27F7DDFE0);
  v32[0] = v10;
  v32[1] = v9;
  v32[2] = v12;
  v33 = v11;
  v34 = v25;
  v26 = v28(v32);

  *v29 = v26;
  return result;
}

uint64_t sub_255C89AD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a2;
  v25 = a4;
  v23 = a3;
  v7 = type metadata accessor for FontProperties(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v22[-v15];
  sub_255C73C84();
  sub_255D059E8();
  sub_255C7299C(v16, v14, &qword_27F7DD9E0);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_255C76B94(v16, &qword_27F7DD9E0);
    v17 = 0;
  }

  else
  {
    sub_255C8A26C(v14, v10);
    v17 = sub_255D0083C(v10);
    sub_255C8A2D0(v10);
    sub_255C76B94(v16, &qword_27F7DD9E0);
  }

  KeyPath = swift_getKeyPath();
  v19 = v23 & 1;
  v20 = v24;
  sub_255C8A25C(a1, v24, v23 & 1);

  *a5 = a1;
  *(a5 + 8) = v20;
  *(a5 + 16) = v19;
  *(a5 + 24) = result;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = v17;
  return result;
}

uint64_t sub_255C89D10()
{
  v0 = type metadata accessor for FontProperties(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C7299C(v9, v6, &qword_27F7DD9E0);
  if ((*(v1 + 48))(v6, 1, v0) != 1)
  {
    sub_255C8A26C(v6, v3);
    sub_255D0083C(v3);
    sub_255C8A2D0(v3);
  }

  sub_255C76B94(v9, &qword_27F7DD9E0);
  swift_getKeyPath();
}

uint64_t sub_255C89F14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_255C8A1A8();
  sub_255D059E8();
  KeyPath = swift_getKeyPath();
  result = sub_255C7299C(a1, a2, &qword_27F7DDFF8);
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = v6;
  return result;
}

uint64_t sub_255C89F9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D06378();
  *a1 = result;
  return result;
}

uint64_t sub_255C89FF4()
{
  sub_255C8A038(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255C8A038(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_255C8A048@<D0>(_OWORD *a1@<X8>)
{
  sub_255C89AD8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_255C8A0E8()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_255C8A144()
{
  result = qword_27F7DDFE8;
  if (!qword_27F7DDFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDFE8);
  }

  return result;
}

unint64_t sub_255C8A1A8()
{
  result = qword_27F7DDFF0;
  if (!qword_27F7DDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDFF0);
  }

  return result;
}

uint64_t sub_255C8A204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D06378();
  *a1 = result;
  return result;
}

uint64_t sub_255C8A25C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255C8A26C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C8A2D0(uint64_t a1)
{
  v2 = type metadata accessor for FontProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CodeBlockConfiguration.language.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CodeBlockConfiguration.content.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_255C8A3C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C8A40C(uint64_t result, int a2, int a3)
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CodeBlockConfiguration.Label(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CodeBlockConfiguration.Label(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C8A5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D05898();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v25[0] = a1;
  v25[1] = a2;
  sub_255D05878();
  sub_255D05888();
  v11 = *(v5 + 8);
  v11(v10, v4);
  sub_255C8407C();
  v12 = sub_255D074C8();
  v11(v8, v4);
  v13 = *(v12 + 16);
  if (v13)
  {
    v25[0] = MEMORY[0x277D84F90];
    sub_255C977B8(0, v13, 0);
    v14 = v25[0];
    v15 = v12 + 40;
    do
    {
      v16 = sub_255D07128();
      v25[0] = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = v16;
        v22 = v17;
        sub_255C977B8((v18 > 1), v19 + 1, 1);
        v17 = v22;
        v16 = v21;
        v14 = v25[0];
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00);
  sub_255C743A0();
  v23 = sub_255D07068();

  return v23;
}

uint64_t Blockquote._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *a1 = v4;
}

void *Blockquote.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_255C8A898@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *a1 = v4;
}

uint64_t AssetImageProvider.init(name:bundle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AssetImageProvider.makeImage(url:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  v4 = sub_255D06CF8();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_255D05B78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = *(v2 + 16);
  sub_255C867BC(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_255C86880(v9);
    v17 = 0;
LABEL_6:
    v24 = 0uLL;
    goto LABEL_7;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14(v13);
  v18 = sub_255D070C8();

  v17 = [objc_opt_self() imageNamed:v18 inBundle:v15 withConfiguration:0];

  if (!v17)
  {
    result = (*(v11 + 8))(v13, v10);
    goto LABEL_6;
  }

  [v17 size];
  v26 = v19;
  v27 = v20;
  v21 = v17;
  sub_255D06CC8();
  v23 = v28;
  v22 = v29;
  (*(v28 + 104))(v6, *MEMORY[0x277CE0FE0], v29);
  v17 = sub_255D06D58();

  (*(v23 + 8))(v6, v22);

  result = (*(v11 + 8))(v13, v10);
  *&v24 = v26;
  *(&v24 + 1) = v27;
LABEL_7:
  v25 = v30;
  *v30 = v24;
  *(v25 + 2) = v17;
  return result;
}

void static ImageProvider<>.asset.getter(uint64_t (**a1)()@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = sub_255C8A91C;
}

uint64_t sub_255C8ACB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255C8ACFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_255C8AD50()
{
  result = qword_27F7DE000;
  if (!qword_27F7DE000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE008);
    sub_255C8ADD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE000);
  }

  return result;
}

unint64_t sub_255C8ADD4()
{
  result = qword_27F7DE010;
  if (!qword_27F7DE010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE010);
  }

  return result;
}

void *TaskListItem.init(isCompleted:content:)@<X0>(char a1@<W0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  result = a2(&v7);
  v6 = v7;
  *a3 = a1;
  *(a3 + 8) = v6;
  return result;
}

uint64_t static TaskListItem.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (v2 = *(a1 + 1), v3 = *(a2 + 1), v4 = v2[1].i64[0], v4 == v3[1].i64[0]))
  {
    if (!v4 || v2 == v3)
    {
      v11 = 1;
    }

    else
    {
      v5 = v2 + 2;
      v6 = v3 + 2;
      do
      {
        v7 = *v5;
        v8 = v5[1];
        v15 = v5[2].i8[0];
        v14[0] = v7;
        v14[1] = v8;
        v9 = *v6;
        v10 = v6[1];
        v17 = v6[2].i8[0];
        v16[0] = v9;
        v16[1] = v10;
        sub_255C76B38(v14, v13);
        sub_255C76B38(v16, v13);
        v11 = sub_255CD5888(v14, v16);
        sub_255C76BF4(v16);
        sub_255C76BF4(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v6 = (v6 + 40);
        v5 = (v5 + 40);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_255C8AF80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 16);
        v10[0] = *v3;
        v10[1] = v5;
        v11 = *(v3 + 32);
        v6 = *(v4 + 16);
        v12[0] = *v4;
        v12[1] = v6;
        v13 = *(v4 + 32);
        sub_255C76B38(v10, v9);
        sub_255C76B38(v12, v9);
        v7 = sub_255CD5888(v10, v12);
        sub_255C76BF4(v12);
        sub_255C76BF4(v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_255C8B060(uint64_t a1, uint64_t a2)
{
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16))
  {
    return 0;
  }

  if (!v9 || a1 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = a1 + 32;
  v12 = a2 + 32;
  v185 = a1 + 32;
  v186 = *(a1 + 16);
  v184 = a2 + 32;
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_272;
    }

    v14 = *(v11 + 8 * v10);
    v15 = *(v12 + 8 * v10);
    v16 = *(v14 + 16);
    v17 = *(v15 + 16);
    result = v16 == v17;
    if (v16 != v17)
    {
      return result;
    }

    if (v16 && v14 != v15)
    {
      break;
    }

LABEL_7:
    if (++v10 == v9)
    {
      return result;
    }
  }

  v188 = v10;
  v189 = v16 == v17;
  v197 = v15 + 32;
  v198 = v14 + 32;
  v194 = *(v14 + 16);
  v195 = *(v11 + 8 * v10);

  v20 = v194;
  v19 = v195;
  v21 = 0;
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      sub_255C90F54(v2, v157, v161, v162, 8u);
      sub_255C90F54(v163, v164, v165, v166, 8u);
LABEL_276:
      sub_255C90F54(v3, v6, v170, v177, v146);
      sub_255C90F54(v187, v181, v179, v150, v146);
LABEL_277:
      sub_255C90F54(v178, v147, v180, v148, 0);
      sub_255C90F54(v193, v172, v192, v175, 0);
LABEL_278:
      sub_255C90F54(v8, v7, v173, v200, 0);
      v143 = v5;
      v144 = v4;
LABEL_279:
      sub_255C90F54(v143, v144, v199, v191, 0);

      goto LABEL_280;
    }

    if (v21 >= *(v15 + 16))
    {
      goto LABEL_271;
    }

    v28 = v198 + 40 * v21;
    v5 = *v28;
    v4 = *(v28 + 8);
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    v31 = *(v28 + 32);
    v32 = v197 + 40 * v21;
    v8 = *v32;
    v7 = *(v32 + 8);
    v3 = *(v32 + 16);
    v199 = v29;
    v200 = *(v32 + 24);
    v33 = *(v32 + 32);
    if (v31 <= 4)
    {
      if (v31 > 1)
      {
        if (v31 == 2)
        {
          if (v33 != 2 || ((v8 ^ v5) & 1) != 0 || v4 != v7)
          {
            goto LABEL_267;
          }

          sub_255C90E88(v8, v4, v3, v200, 2u);
          sub_255C90E88(v5, v4, v199, v30, 2u);
          v2 = v199;
          v6 = v30;
          v22 = sub_255C8B060(v199, v3);
          sub_255C90F54(v8, v4, v3, v200, 2u);
          v23 = v5;
          v24 = v4;
          v25 = v199;
          v26 = v6;
          v27 = 2;
        }

        else
        {
          if (v31 != 3)
          {
            if (v33 != 4)
            {
              goto LABEL_267;
            }

            if (v4)
            {
              if (!v7)
              {
                goto LABEL_267;
              }

              if (v5 != v8 || v4 != v7)
              {
                v38 = sub_255D076D8();
                v20 = v194;
                v19 = v195;
                if ((v38 & 1) == 0)
                {
                  goto LABEL_267;
                }
              }
            }

            else if (v7)
            {
              goto LABEL_267;
            }

            if (v199 == v3 && v30 == v200)
            {
              goto LABEL_17;
            }

LABEL_76:
            v40 = sub_255D076D8();
            v20 = v194;
            v19 = v195;
            if ((v40 & 1) == 0)
            {
              goto LABEL_267;
            }

            goto LABEL_17;
          }

          if (v33 != 3 || ((v8 ^ v5) & 1) != 0)
          {
            goto LABEL_267;
          }

          sub_255C90E88(v8, v7, v3, v200, 3u);
          sub_255C90E88(v5, v4, v199, v30, 3u);
          v2 = v199;
          v6 = v30;
          v22 = sub_255C8C980(v4, v7);
          sub_255C90F54(v8, v7, v3, v200, 3u);
          v23 = v5;
          v24 = v4;
          v25 = v199;
          v26 = v6;
          v27 = 3;
        }

        goto LABEL_16;
      }

      if (v31)
      {
        if (v33 != 1 || ((v8 ^ v5) & 1) != 0)
        {
          goto LABEL_267;
        }

        sub_255C90E88(v8, v7, v3, v200, 1u);
        sub_255C90E88(v5, v4, v199, v30, 1u);
        v2 = v199;
        v6 = v30;
        v22 = sub_255C8B060(v4, v7);
        sub_255C90F54(v8, v7, v3, v200, 1u);
        v23 = v5;
        v24 = v4;
        v25 = v199;
        v26 = v6;
        v27 = 1;
        goto LABEL_16;
      }

      if (v33)
      {
        goto LABEL_267;
      }

      v34 = *(v5 + 16);
      if (v34 != *(v8 + 16))
      {
        goto LABEL_267;
      }

      if (v34)
      {
        v35 = v5 == v8;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_17;
      }

      v174 = v15;
      v173 = v3;
      v190 = *(v5 + 16);
      sub_255C90E88(v8, v7, v3, v200, 0);
      sub_255C90E88(v5, v4, v199, v30, 0);
      v36 = v190;
      v196 = 0;
      v191 = v30;
      v182 = v7;
      v183 = v4;
      while (1)
      {
        if (v196 >= *(v5 + 16))
        {
          goto LABEL_273;
        }

        if (v196 >= *(v8 + 16))
        {
          goto LABEL_274;
        }

        v42 = v5 + 32 + 40 * v196;
        v3 = *(v42 + 8);
        v193 = *v42;
        v43 = *(v42 + 24);
        v192 = *(v42 + 16);
        v44 = *(v42 + 32);
        v45 = v8 + 32 + 40 * v196;
        v46 = *v45;
        v47 = *(v45 + 8);
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        v50 = *(v45 + 32);
        if (v44 <= 4)
        {
          break;
        }

        if (v44 > 6)
        {
          if (v44 != 7)
          {
            if (v44 != 8)
            {
              if (v50 != 9 || (v47 | v46 | v48 | v49) != 0)
              {
                goto LABEL_278;
              }

              goto LABEL_83;
            }

            if (v50 != 8)
            {
              goto LABEL_278;
            }

            v63 = v46;
            v6 = v48;
            v2 = v49;
            sub_255C90E88(v46, v47, v48, v49, 8u);
            sub_255C90E88(v193, v3, v192, v43, 8u);
            if ((sub_255C8EA80(v193, v63) & 1) == 0)
            {
              sub_255C90F54(v63, v47, v6, v2, 8u);
              sub_255C90F54(v193, v3, v192, v43, 8u);
              sub_255C90F54(v8, v182, v173, v200, 0);
              v143 = v5;
              v144 = v183;
              goto LABEL_279;
            }

            LODWORD(v187) = sub_255C8EB48(v3, v47);
            sub_255C90F54(v63, v47, v6, v2, 8u);
            sub_255C90F54(v193, v3, v192, v43, 8u);
            v36 = v190;
            v7 = v182;
            v4 = v183;
            goto LABEL_134;
          }

          if (v50 != 7 || v193 != v46)
          {
            goto LABEL_278;
          }

          v2 = v193;
          v6 = v3;
          v72 = v47;
          v180 = v48;
          v73 = v47;
          v74 = v49;
          sub_255C90E88(v193, v72, v48, v49, 7u);
          v75 = v3;
          v3 = v192;
          sub_255C90E88(v193, v75, v192, v43, 7u);
          LODWORD(v187) = sub_255C8E694(v6, v73);
          v76 = v73;
          v7 = v182;
          sub_255C90F54(v193, v76, v180, v74, 7u);
          v58 = v193;
          v59 = v6;
          v60 = v192;
          v61 = v43;
          v62 = 7;
LABEL_133:
          sub_255C90F54(v58, v59, v60, v61, v62);
          v36 = v190;
LABEL_134:
          if ((v187 & 1) == 0)
          {
            goto LABEL_278;
          }

          goto LABEL_83;
        }

        if (v44 != 5)
        {
          if (v50 != 6)
          {
            goto LABEL_278;
          }

          v85 = v46;
          v6 = v193;
          v172 = v3;
          v180 = v48;
          v2 = v49;
          sub_255C90E88(v46, v47, v48, v49, 6u);
          v86 = v3;
          v3 = v192;
          sub_255C90E88(v193, v86, v192, v43, 6u);
          LODWORD(v187) = sub_255C8E694(v193, v85);
          v87 = v85;
          v4 = v183;
          sub_255C90F54(v87, v47, v180, v2, 6u);
          v58 = v193;
          v59 = v172;
          v60 = v192;
          v61 = v43;
          v62 = 6;
          goto LABEL_133;
        }

        if (v50 != 5)
        {
          goto LABEL_278;
        }

        if (v193 != v46 || v3 != v47)
        {
          goto LABEL_139;
        }

LABEL_83:
        if (++v196 == v36)
        {
          sub_255C90F54(v8, v7, v173, v200, 0);
          sub_255C90F54(v5, v4, v199, v191, 0);
          v15 = v174;
          v20 = v194;
          v19 = v195;
          goto LABEL_17;
        }
      }

      if (v44 > 1)
      {
        if (v44 == 2)
        {
          if (v50 != 2 || ((v46 ^ v193) & 1) != 0 || v3 != v47)
          {
            goto LABEL_278;
          }

          v68 = v46;
          v6 = v3;
          v69 = v48;
          v2 = v49;
          sub_255C90E88(v46, v3, v48, v49, 2u);
          v70 = v3;
          v3 = v192;
          sub_255C90E88(v193, v70, v192, v43, 2u);
          LODWORD(v187) = sub_255C8B060(v192, v69);
          v71 = v68;
          v4 = v183;
          sub_255C90F54(v71, v6, v69, v2, 2u);
          v58 = v193;
          v59 = v6;
          v60 = v192;
          v61 = v43;
          v62 = 2;
        }

        else
        {
          if (v44 != 3)
          {
            if (v50 != 4)
            {
              goto LABEL_278;
            }

            if (v3)
            {
              if (!v47)
              {
                goto LABEL_278;
              }

              if (v193 != v46 || v3 != v47)
              {
                v3 = v48;
                v2 = v49;
                v77 = sub_255D076D8();
                v48 = v3;
                v49 = v2;
                v36 = v190;
                if ((v77 & 1) == 0)
                {
                  goto LABEL_278;
                }
              }
            }

            else if (v47)
            {
              goto LABEL_278;
            }

            if (v192 == v48 && v43 == v49)
            {
              goto LABEL_83;
            }

LABEL_139:
            v88 = sub_255D076D8();
            v36 = v190;
            if ((v88 & 1) == 0)
            {
              goto LABEL_278;
            }

            goto LABEL_83;
          }

          if (v50 != 3 || ((v46 ^ v193) & 1) != 0)
          {
            goto LABEL_278;
          }

          v51 = v46;
          v6 = v3;
          v52 = v47;
          v53 = v47;
          v54 = v48;
          v2 = v49;
          sub_255C90E88(v46, v52, v48, v49, 3u);
          v55 = v3;
          v3 = v192;
          sub_255C90E88(v193, v55, v192, v43, 3u);
          LODWORD(v187) = sub_255C8C980(v6, v53);
          v56 = v51;
          v57 = v53;
          v7 = v182;
          v4 = v183;
          sub_255C90F54(v56, v57, v54, v2, 3u);
          v58 = v193;
          v59 = v6;
          v60 = v192;
          v61 = v43;
          v62 = 3;
        }

        goto LABEL_133;
      }

      if (v44)
      {
        if (v50 != 1 || ((v46 ^ v193) & 1) != 0)
        {
          goto LABEL_278;
        }

        v78 = v46;
        v6 = v3;
        v79 = v47;
        v80 = v47;
        v81 = v48;
        v2 = v49;
        sub_255C90E88(v46, v79, v48, v49, 1u);
        v82 = v3;
        v3 = v192;
        sub_255C90E88(v193, v82, v192, v43, 1u);
        LODWORD(v187) = sub_255C8B060(v6, v80);
        v83 = v78;
        v84 = v80;
        v7 = v182;
        v4 = v183;
        sub_255C90F54(v83, v84, v81, v2, 1u);
        v58 = v193;
        v59 = v6;
        v60 = v192;
        v61 = v43;
        v62 = 1;
        goto LABEL_133;
      }

      if (v50)
      {
        goto LABEL_278;
      }

      v64 = *(v193 + 16);
      if (v64 != *(v46 + 16))
      {
        goto LABEL_278;
      }

      if (v64)
      {
        v65 = v193 == v46;
      }

      else
      {
        v65 = 1;
      }

      if (v65)
      {
        goto LABEL_83;
      }

      v178 = v46;
      v147 = v47;
      v176 = v46 + 32;
      v171 = *(v193 + 16);
      v180 = v48;
      v148 = v49;
      sub_255C90E88(v46, v47, v48, v49, 0);
      v4 = v183;
      v172 = v3;
      result = sub_255C90E88(v193, v3, v192, v43, 0);
      v66 = 0;
      v175 = v43;
      while (1)
      {
        if (v66 >= *(v193 + 16))
        {
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
          return result;
        }

        if (v66 >= *(v178 + 16))
        {
          goto LABEL_284;
        }

        v95 = v193 + 32 + 40 * v66;
        v187 = *v95;
        v181 = *(v95 + 8);
        v96 = *(v95 + 24);
        v179 = *(v95 + 16);
        v97 = *(v95 + 32);
        v98 = v176 + 40 * v66;
        v3 = *v98;
        v6 = *(v98 + 8);
        v99 = *(v98 + 16);
        v100 = *(v98 + 24);
        v101 = *(v98 + 32);
        if (v97 > 4)
        {
          if (*(v95 + 32) > 6u)
          {
            if (v97 != 7)
            {
              if (v97 == 8)
              {
                if (v101 != 8)
                {
                  goto LABEL_277;
                }

                v146 = 8;
                v103 = v66;
                v170 = v99;
                v177 = v100;
                sub_255C90E88(v3, v6, v99, v100, 8u);
                v2 = v3;
                v150 = v96;
                sub_255C90E88(v187, v181, v179, v96, 8u);
                if ((sub_255C8EA80(v187, v3) & 1) == 0)
                {
                  goto LABEL_276;
                }

                v3 = v181;
                v104 = sub_255C8EB48(v181, v6);
                sub_255C90F54(v2, v6, v170, v177, 8u);
                result = sub_255C90F54(v187, v181, v179, v150, 8u);
                v66 = v103;
                if ((v104 & 1) == 0)
                {
                  goto LABEL_277;
                }
              }

              else if (v101 != 9 || (v6 | v3 | v99 | v100) != 0)
              {
                goto LABEL_277;
              }

              goto LABEL_143;
            }

            if (v101 != 7 || v187 != v3)
            {
              goto LABEL_277;
            }

            v111 = v6;
            v6 = *v95;
            v169 = v66;
            v170 = v99;
            v177 = v100;
            sub_255C90E88(v187, v111, v99, v100, 7u);
            v2 = v181;
            v3 = v179;
            sub_255C90E88(v187, v181, v179, v96, 7u);
            LODWORD(v166) = sub_255C8E694(v181, v111);
            sub_255C90F54(v187, v111, v170, v177, 7u);
            v112 = v187;
            v113 = v181;
            v114 = v179;
            v115 = v96;
            v116 = 7;
            goto LABEL_202;
          }

          if (v97 != 5)
          {
            if (v101 != 6)
            {
              goto LABEL_277;
            }

            v169 = v66;
            v170 = v99;
            v177 = v100;
            sub_255C90E88(v3, v6, v99, v100, 6u);
            v165 = v6;
            v6 = v187;
            v2 = v181;
            v121 = v3;
            v3 = v179;
            sub_255C90E88(v187, v181, v179, v96, 6u);
            LODWORD(v166) = sub_255C8E694(v187, v121);
            sub_255C90F54(v121, v165, v170, v177, 6u);
            v112 = v187;
            v113 = v181;
            v114 = v179;
            v115 = v96;
            v116 = 6;
LABEL_202:
            result = sub_255C90F54(v112, v113, v114, v115, v116);
            v66 = v169;
            if ((v166 & 1) == 0)
            {
              goto LABEL_277;
            }

            goto LABEL_143;
          }

          if (v101 != 5)
          {
            goto LABEL_277;
          }

          if (v187 != v3 || v181 != v6)
          {
            goto LABEL_207;
          }
        }

        else
        {
          if (*(v95 + 32) <= 1u)
          {
            if (!*(v95 + 32))
            {
              if (v101)
              {
                goto LABEL_277;
              }

              v2 = *(v187 + 16);
              if (v2 != *(v3 + 16))
              {
                goto LABEL_277;
              }

              if (v2)
              {
                v105 = v187 == v3;
              }

              else
              {
                v105 = 1;
              }

              if (v105)
              {
                goto LABEL_143;
              }

              v146 = 0;
              v168 = v66;
              v170 = v99;
              v177 = v100;
              sub_255C90E88(v3, v6, v99, v100, 0);
              v150 = v96;
              result = sub_255C90E88(v187, v181, v179, v96, 0);
              v106 = (v3 + 64);
              v107 = (v187 + 64);
              v108 = 0;
              v149 = v2;
              while (2)
              {
                if (v108 >= *(v187 + 16))
                {
                  goto LABEL_285;
                }

                if (v108 >= *(v3 + 16))
                {
                  goto LABEL_286;
                }

                result = *(v107 - 4);
                v128 = *(v107 - 3);
                v129 = *v107;
                v131 = *(v106 - 4);
                v130 = *(v106 - 3);
                v132 = *(v106 - 2);
                v133 = *(v106 - 1);
                v134 = *v106;
                if (v129 > 4)
                {
                  if (*v107 <= 6u)
                  {
                    if (v129 != 5)
                    {
                      v165 = *(v107 - 2);
                      v166 = *(v107 - 1);
                      if (v134 != 6)
                      {
                        goto LABEL_276;
                      }

                      v141 = *(v107 - 4);
                      v164 = *(v107 - 3);
                      v161 = *(v106 - 2);
                      v162 = *(v106 - 1);
                      v157 = *(v106 - 3);
                      v158 = v106;
                      v156 = *(v106 - 4);
                      sub_255C90E88(v131, v130, v132, v133, 6u);
                      v163 = v141;
                      sub_255C90E88(v141, v164, v165, v166, 6u);
                      v145 = sub_255C8E694(v141, v156);
                      sub_255C90F54(v156, v157, v161, v162, 6u);
                      v123 = v141;
                      v124 = v164;
                      v125 = v165;
                      v126 = v166;
                      v127 = 6;
                      break;
                    }

                    if (v134 != 5)
                    {
                      goto LABEL_276;
                    }

                    if (result != v131 || v128 != v130)
                    {
                      goto LABEL_262;
                    }

                    goto LABEL_211;
                  }

                  if (v129 == 7)
                  {
                    v165 = *(v107 - 2);
                    v166 = *(v107 - 1);
                    if (v134 != 7)
                    {
                      goto LABEL_276;
                    }

                    if (result != v131)
                    {
                      goto LABEL_276;
                    }

                    v138 = *(v107 - 4);
                    v163 = v138;
                    v164 = *(v107 - 3);
                    v161 = *(v106 - 2);
                    v162 = *(v106 - 1);
                    v157 = *(v106 - 3);
                    v160 = v106;
                    sub_255C90E88(result, v130, v132, v133, 7u);
                    sub_255C90E88(v138, v164, v165, v166, 7u);
                    v155 = sub_255C8E694(v164, v157);
                    sub_255C90F54(v138, v157, v161, v162, 7u);
                    result = sub_255C90F54(v138, v164, v165, v166, 7u);
                    v106 = v160;
                    v2 = v149;
                    if ((v155 & 1) == 0)
                    {
                      goto LABEL_276;
                    }

                    goto LABEL_211;
                  }

                  if (v129 != 8)
                  {
                    if (v134 != 9 || v130 | v131 | v132 | v133)
                    {
                      goto LABEL_276;
                    }

                    goto LABEL_211;
                  }

                  v166 = *(v107 - 1);
                  if (v134 != 8)
                  {
                    goto LABEL_276;
                  }

                  v136 = *(v107 - 2);
                  v158 = v106;
                  v161 = *(v106 - 2);
                  v163 = *(v107 - 4);
                  v164 = *(v107 - 3);
                  v162 = *(v106 - 1);
                  v152 = *(v106 - 4);
                  v157 = *(v106 - 3);
                  sub_255C90E88(v131, v130, v132, v133, 8u);
                  v165 = v136;
                  sub_255C90E88(v163, v164, v136, v166, 8u);
                  v2 = v152;
                  if ((sub_255C8EA80(v163, v152) & 1) == 0)
                  {
                    goto LABEL_275;
                  }

                  v145 = sub_255C8EB48(v164, v157);
                  sub_255C90F54(v152, v157, v161, v162, 8u);
                  v123 = v163;
                  v124 = v164;
                  v125 = v165;
                  v126 = v166;
                  v127 = 8;
                }

                else
                {
                  v165 = *(v107 - 2);
                  v166 = *(v107 - 1);
                  if (*v107 > 1u)
                  {
                    if (v129 == 2)
                    {
                      if (v134 != 2)
                      {
                        goto LABEL_276;
                      }

                      if ((v131 ^ result))
                      {
                        goto LABEL_276;
                      }

                      if (v128 != v130)
                      {
                        goto LABEL_276;
                      }

                      v163 = *(v107 - 4);
                      v164 = *(v107 - 3);
                      v161 = *(v106 - 2);
                      v162 = *(v106 - 1);
                      v159 = v106;
                      v154 = *(v106 - 4);
                      sub_255C90E88(v131, v128, v132, v133, 2u);
                      sub_255C90E88(v163, v164, v165, v166, 2u);
                      LODWORD(v157) = sub_255C8B060(v165, v161);
                      sub_255C90F54(v154, v164, v161, v162, 2u);
                      result = sub_255C90F54(v163, v164, v165, v166, 2u);
                      v106 = v159;
                      v2 = v149;
                      if ((v157 & 1) == 0)
                      {
                        goto LABEL_276;
                      }
                    }

                    else
                    {
                      if (v129 == 3)
                      {
                        if (v134 != 3 || ((v131 ^ result) & 1) != 0)
                        {
                          goto LABEL_276;
                        }

                        v135 = *(v107 - 4);
                        v163 = v135;
                        v164 = *(v107 - 3);
                        v161 = *(v106 - 2);
                        v162 = *(v106 - 1);
                        v157 = *(v106 - 3);
                        v158 = v106;
                        v151 = *(v106 - 4);
                        sub_255C90E88(v131, v130, v132, v133, 3u);
                        sub_255C90E88(v135, v164, v165, v166, 3u);
                        v145 = sub_255C8C980(v164, v157);
                        sub_255C90F54(v151, v157, v161, v162, 3u);
                        v123 = v135;
                        v124 = v164;
                        v125 = v165;
                        v126 = v166;
                        v127 = 3;
                        break;
                      }

                      if (v134 != 4)
                      {
                        goto LABEL_276;
                      }

                      if (v128)
                      {
                        if (!v130)
                        {
                          goto LABEL_276;
                        }

                        if (result != v131 || v128 != v130)
                        {
                          v161 = *(v106 - 2);
                          v162 = *(v106 - 1);
                          v139 = v106;
                          result = sub_255D076D8();
                          v132 = v161;
                          v133 = v162;
                          v106 = v139;
                          v2 = v149;
                          if ((result & 1) == 0)
                          {
                            goto LABEL_276;
                          }
                        }
                      }

                      else if (v130)
                      {
                        goto LABEL_276;
                      }

                      if (v165 != v132 || v166 != v133)
                      {
LABEL_262:
                        v142 = v106;
                        result = sub_255D076D8();
                        v106 = v142;
                        v2 = v149;
                        if ((result & 1) == 0)
                        {
                          goto LABEL_276;
                        }
                      }
                    }

LABEL_211:
                    ++v108;
                    v106 += 40;
                    v107 += 40;
                    if (v2 == v108)
                    {
                      sub_255C90F54(v3, v6, v170, v177, 0);
                      result = sub_255C90F54(v187, v181, v179, v150, 0);
                      v66 = v168;
                      goto LABEL_143;
                    }

                    continue;
                  }

                  v158 = v106;
                  v161 = *(v106 - 2);
                  v162 = *(v106 - 1);
                  v163 = *(v107 - 4);
                  v164 = *(v107 - 3);
                  v153 = *(v106 - 4);
                  v157 = *(v106 - 3);
                  if (*v107)
                  {
                    if (v134 != 1 || ((v131 ^ result) & 1) != 0)
                    {
                      goto LABEL_276;
                    }

                    v140 = *(v107 - 4);
                    sub_255C90E88(v131, v130, v132, v133, 1u);
                    sub_255C90E88(v140, v164, v165, v166, 1u);
                    v145 = sub_255C8B060(v164, v157);
                    sub_255C90F54(v153, v157, v161, v162, 1u);
                    v123 = v163;
                    v124 = v164;
                    v125 = v165;
                    v126 = v166;
                    v127 = 1;
                  }

                  else
                  {
                    if (*v106)
                    {
                      goto LABEL_276;
                    }

                    v137 = *(v107 - 3);
                    sub_255C90E88(v131, v130, v132, v133, 0);
                    sub_255C90E88(v163, v137, v165, v166, 0);
                    v145 = sub_255C8AF80(v163, v153);
                    sub_255C90F54(v153, v157, v161, v162, 0);
                    v123 = v163;
                    v124 = v164;
                    v125 = v165;
                    v126 = v166;
                    v127 = 0;
                  }
                }

                break;
              }

              result = sub_255C90F54(v123, v124, v125, v126, v127);
              v106 = v158;
              v2 = v149;
              if ((v145 & 1) == 0)
              {
                goto LABEL_276;
              }

              goto LABEL_211;
            }

            if (v101 != 1 || ((v3 ^ v187) & 1) != 0)
            {
              goto LABEL_277;
            }

            v167 = v66;
            v170 = v99;
            v177 = v100;
            sub_255C90E88(v3, v6, v99, v100, 1u);
            v120 = v6;
            v6 = v187;
            v2 = v181;
            v166 = v3;
            v3 = v179;
            sub_255C90E88(v187, v181, v179, v96, 1u);
            LODWORD(v165) = sub_255C8B060(v181, v120);
            sub_255C90F54(v166, v120, v170, v177, 1u);
            v90 = v187;
            v91 = v181;
            v92 = v179;
            v93 = v96;
            v94 = 1;
          }

          else if (v97 == 2)
          {
            if (v101 != 2 || ((v3 ^ v187) & 1) != 0 || v181 != v6)
            {
              goto LABEL_277;
            }

            v89 = v3;
            v6 = *(v95 + 8);
            v166 = v3;
            v167 = v66;
            v3 = v99;
            v177 = v100;
            sub_255C90E88(v89, v181, v99, v100, 2u);
            v2 = v179;
            sub_255C90E88(v187, v181, v179, v96, 2u);
            LODWORD(v165) = sub_255C8B060(v179, v3);
            sub_255C90F54(v166, v181, v3, v177, 2u);
            v90 = v187;
            v91 = v181;
            v92 = v179;
            v93 = v96;
            v94 = 2;
          }

          else
          {
            if (v97 != 3)
            {
              if (v101 != 4)
              {
                goto LABEL_277;
              }

              if (v181)
              {
                if (!v6)
                {
                  goto LABEL_277;
                }

                if (v187 != v3 || v181 != v6)
                {
                  v117 = v99;
                  v2 = v100;
                  v3 = *(v95 + 24);
                  v118 = v66;
                  result = sub_255D076D8();
                  v99 = v117;
                  v100 = v2;
                  v66 = v118;
                  v96 = v3;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_277;
                  }
                }
              }

              else if (v6)
              {
                goto LABEL_277;
              }

              if (v179 == v99 && v96 == v100)
              {
                goto LABEL_143;
              }

LABEL_207:
              v122 = v66;
              result = sub_255D076D8();
              v66 = v122;
              if ((result & 1) == 0)
              {
                goto LABEL_277;
              }

              goto LABEL_143;
            }

            if (v101 != 3 || ((v3 ^ v187) & 1) != 0)
            {
              goto LABEL_277;
            }

            v167 = v66;
            v170 = v99;
            v177 = v100;
            sub_255C90E88(v3, v6, v99, v100, 3u);
            v102 = v6;
            v6 = v187;
            v2 = v181;
            v166 = v3;
            v3 = v179;
            sub_255C90E88(v187, v181, v179, v96, 3u);
            LODWORD(v165) = sub_255C8C980(v181, v102);
            sub_255C90F54(v166, v102, v170, v177, 3u);
            v90 = v187;
            v91 = v181;
            v92 = v179;
            v93 = v96;
            v94 = 3;
          }

          result = sub_255C90F54(v90, v91, v92, v93, v94);
          v66 = v167;
          if ((v165 & 1) == 0)
          {
            goto LABEL_277;
          }
        }

LABEL_143:
        if (++v66 == v171)
        {
          sub_255C90F54(v178, v147, v180, v148, 0);
          sub_255C90F54(v193, v172, v192, v175, 0);
          v36 = v190;
          goto LABEL_83;
        }
      }
    }

    if (v31 > 6)
    {
      break;
    }

    if (v31 != 5)
    {
      if (v33 != 6)
      {
        goto LABEL_267;
      }

      sub_255C90E88(v8, v7, v3, v200, 6u);
      v6 = v199;
      sub_255C90E88(v5, v4, v199, v30, 6u);
      v2 = sub_255C8E694(v5, v8);
      sub_255C90F54(v8, v7, v3, v200, 6u);
      sub_255C90F54(v5, v4, v199, v30, 6u);
      v20 = v194;
      v19 = v195;
      if ((v2 & 1) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_17;
    }

    if (v33 != 5)
    {
      goto LABEL_267;
    }

    if (v5 != v8 || v4 != v7)
    {
      goto LABEL_76;
    }

LABEL_17:
    if (++v21 == v20)
    {

      result = v189;
      v11 = v185;
      v9 = v186;
      v12 = v184;
      v10 = v188;
      goto LABEL_7;
    }
  }

  if (v31 == 7)
  {
    if (v33 != 7 || v5 != v8)
    {
      goto LABEL_267;
    }

    sub_255C90E88(v5, v7, v3, v200, 7u);
    sub_255C90E88(v5, v4, v199, v30, 7u);
    v2 = v199;
    v6 = v30;
    v22 = sub_255C8E694(v4, v7);
    sub_255C90F54(v5, v7, v3, v200, 7u);
    v23 = v5;
    v24 = v4;
    v25 = v199;
    v26 = v6;
    v27 = 7;
    goto LABEL_16;
  }

  if (v31 != 8)
  {
    if (v33 != 9 || (v7 | v8 | v3 | v200) != 0)
    {
      goto LABEL_267;
    }

    goto LABEL_17;
  }

  if (v33 != 8)
  {
    goto LABEL_267;
  }

  sub_255C90E88(v8, v7, v3, v200, 8u);
  sub_255C90E88(v5, v4, v199, v30, 8u);
  if (sub_255C8EA80(v5, v8))
  {
    v6 = v30;
    v22 = sub_255C8EB48(v4, v7);
    sub_255C90F54(v8, v7, v3, v200, 8u);
    v23 = v5;
    v24 = v4;
    v25 = v199;
    v26 = v6;
    v27 = 8;
LABEL_16:
    sub_255C90F54(v23, v24, v25, v26, v27);
    v20 = v194;
    v19 = v195;
    if ((v22 & 1) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_17;
  }

  sub_255C90F54(v8, v7, v3, v200, 8u);
  sub_255C90F54(v5, v4, v199, v30, 8u);
LABEL_267:

LABEL_280:

  return 0;
}

uint64_t sub_255C8C980(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (!v6 || a1 == a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = a1 + 32;
  v9 = a2 + 32;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_333;
    }

    v10 = (v8 + 16 * v7);
    v11 = (v9 + 16 * v7);
    if (*v10 != *v11)
    {
      return 0;
    }

    v5 = *(v10 + 1);
    v12 = *(v11 + 1);
    v13 = *(v5 + 16);
    if (v13 != *(v12 + 16))
    {
      return 0;
    }

    if (v13 && v5 != v12)
    {
      break;
    }

LABEL_13:
    ++v7;
    result = 1;
    if (v7 == v6)
    {
      return result;
    }
  }

  v262 = v9;
  v263 = v8;
  v264 = v7;
  v265 = v6;
  v283 = v12 + 32;
  v284 = v5 + 32;
  v282 = *(v5 + 16);

  v16 = v282;
  v17 = 0;
  v280 = v12;
  while (1)
  {
    if (v17 >= *(v5 + 16))
    {
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      sub_255C90F54(v4, v2, v245, v246, 8u);
      sub_255C90F54(v244, v242, v5, v3, 8u);
LABEL_335:
      v235 = v237;
      sub_255C90F54(v252, v270, v256, v271, v237);
      v20 = v267;
LABEL_336:
      sub_255C90F54(v249, v254, v272, v250, v235);
      goto LABEL_337;
    }

    if (v17 >= *(v12 + 16))
    {
      goto LABEL_330;
    }

    v19 = v284 + 40 * v17;
    v20 = *v19;
    v2 = *(v19 + 8);
    v3 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = *(v19 + 32);
    v23 = v283 + 40 * v17;
    v25 = *v23;
    v24 = *(v23 + 8);
    v27 = *(v23 + 16);
    v26 = *(v23 + 24);
    v28 = *(v23 + 32);
    if (v22 <= 4)
    {
      break;
    }

    if (*(v19 + 32) <= 6u)
    {
      if (v22 != 5)
      {
        if (v28 != 6)
        {
          goto LABEL_338;
        }

        v278 = v17;
        v70 = *v19;
        v71 = v5;
        v72 = v12;
        v73 = *(v19 + 24);
        v4 = v26;
        sub_255C90E88(v25, v24, v27, v26, 6u);
        sub_255C90E88(v70, v2, v3, v73, 6u);
        v74 = sub_255C8E694(v70, v25);
        v75 = v24;
        v76 = v74;
        sub_255C90F54(v25, v75, v27, v4, 6u);
        v77 = v70;
        v17 = v278;
        v78 = v73;
        v12 = v72;
        v5 = v71;
        sub_255C90F54(v77, v2, v3, v78, 6u);
        v16 = v282;
        if ((v76 & 1) == 0)
        {
          goto LABEL_338;
        }

        goto LABEL_20;
      }

      if (v28 != 5)
      {
        goto LABEL_338;
      }

      if (v20 != v25 || v2 != v24)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v22 == 7)
      {
        if (v28 != 7 || v20 != v25)
        {
          goto LABEL_338;
        }

        v4 = *(v19 + 24);
        v54 = v26;
        sub_255C90E88(*v19, v24, v27, v26, 7u);
        sub_255C90E88(v20, v2, v3, v4, 7u);
        v55 = sub_255C8E694(v2, v24);
        v56 = v24;
        v57 = v2;
        v2 = v55;
        sub_255C90F54(v20, v56, v27, v54, 7u);
        v36 = v20;
        v37 = v57;
        v38 = v3;
        v39 = v4;
        v40 = 7;
LABEL_64:
        sub_255C90F54(v36, v37, v38, v39, v40);
        v16 = v282;
        if ((v2 & 1) == 0)
        {
          goto LABEL_338;
        }

        goto LABEL_20;
      }

      if (v22 != 8)
      {
        if (v28 != 9 || (v24 | v25 | v27 | v26) != 0)
        {
          goto LABEL_338;
        }

        goto LABEL_20;
      }

      if (v28 != 8)
      {
        goto LABEL_338;
      }

      v41 = *(v19 + 24);
      v4 = v26;
      sub_255C90E88(v25, v24, v27, v26, 8u);
      sub_255C90E88(v20, v2, v3, v41, 8u);
      if ((sub_255C8EA80(v20, v25) & 1) == 0)
      {
        sub_255C90F54(v25, v24, v27, v4, 8u);
        sub_255C90F54(v20, v2, v3, v41, 8u);
        goto LABEL_338;
      }

      v42 = sub_255C8EB48(v2, v24);
      v43 = v24;
      v44 = v2;
      v2 = v42;
      sub_255C90F54(v25, v43, v27, v4, 8u);
      sub_255C90F54(v20, v44, v3, v41, 8u);
      v16 = v282;
      v12 = v280;
      if ((v2 & 1) == 0)
      {
LABEL_338:

        return 0;
      }
    }

LABEL_20:
    if (++v17 == v16)
    {

      v7 = v264;
      v6 = v265;
      v9 = v262;
      v8 = v263;
      goto LABEL_13;
    }
  }

  if (*(v19 + 32) > 1u)
  {
    if (v22 == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_338;
      }

      if ((v25 ^ v20))
      {
        goto LABEL_338;
      }

      if (v2 != v24)
      {
        goto LABEL_338;
      }

      v281 = v25;
      v50 = *(v3 + 16);
      if (v50 != *(v27 + 16))
      {
        goto LABEL_338;
      }

      if (v50)
      {
        v51 = v3 == v27;
      }

      else
      {
        v51 = 1;
      }

      if (!v51)
      {
        v248 = 2;
        v257 = v5;
        v4 = v3 + 32;
        v52 = v27 + 32;
        v53 = *(v19 + 24);
        v266 = v26;
        sub_255C90E88(v281, v2, v27, v26, 2u);
        v269 = v2;
        v255 = v53;
        result = sub_255C90E88(v20, v2, v3, v53, 2u);
        v5 = 0;
        v267 = v20;
        v268 = v3;
        v273 = v27 + 32;
        v277 = v3 + 32;
        while (v5 < *(v3 + 16))
        {
          if (v5 >= *(v27 + 16))
          {
            goto LABEL_345;
          }

          v79 = v27;
          v3 = *(v4 + 8 * v5);
          v2 = *(v52 + 8 * v5);
          v80 = *(v3 + 16);
          if (v80 != *(v2 + 16))
          {
            v229 = v269;
            sub_255C90F54(v281, v269, v79, v266, 2u);
            v230 = v20;
LABEL_318:
            v231 = v229;
            v232 = v268;
            v233 = v255;
            v234 = 2;
            goto LABEL_320;
          }

          if (v80)
          {
            v81 = v3 == v2;
          }

          else
          {
            v81 = 1;
          }

          if (!v81)
          {

            v4 = 0;
            v82 = 32;
            while (v4 < *(v3 + 16))
            {
              v83 = *(v3 + v82);
              v84 = *(v3 + v82 + 16);
              v287 = *(v3 + v82 + 32);
              v286[0] = v83;
              v286[1] = v84;
              if (v4 >= *(v2 + 16))
              {
                goto LABEL_332;
              }

              v85 = *(v2 + v82);
              v86 = *(v2 + v82 + 16);
              v289 = *(v2 + v82 + 32);
              v288[0] = v85;
              v288[1] = v86;
              sub_255C76B38(v286, v285);
              sub_255C76B38(v288, v285);
              v87 = sub_255CD5888(v286, v288);
              sub_255C76BF4(v288);
              sub_255C76BF4(v286);
              if ((v87 & 1) == 0)
              {

                v229 = v269;
                sub_255C90F54(v281, v269, v79, v266, 2u);
                v230 = v267;
                goto LABEL_318;
              }

              ++v4;
              v82 += 40;
              if (v80 == v4)
              {

                v20 = v267;
                v52 = v273;
                v4 = v277;
                goto LABEL_84;
              }
            }

            goto LABEL_331;
          }

LABEL_84:
          ++v5;
          v3 = v268;
          v27 = v79;
          if (v5 == v50)
          {
            v2 = v269;
            sub_255C90F54(v281, v269, v79, v266, 2u);
            v228 = v269;
            v12 = v280;
            v5 = v257;
            goto LABEL_314;
          }
        }

        goto LABEL_344;
      }

      goto LABEL_20;
    }

    if (v22 != 3)
    {
      if (v28 != 4)
      {
        goto LABEL_338;
      }

      if (v2)
      {
        if (!v24)
        {
          goto LABEL_338;
        }

        if (v20 != v25 || v2 != v24)
        {
          v58 = *(v19 + 24);
          v2 = v26;
          v59 = sub_255D076D8();
          v21 = v58;
          v26 = v2;
          v16 = v282;
          if ((v59 & 1) == 0)
          {
            goto LABEL_338;
          }
        }
      }

      else if (v24)
      {
        goto LABEL_338;
      }

      if (v3 == v27 && v21 == v26)
      {
        goto LABEL_20;
      }

LABEL_101:
      v88 = sub_255D076D8();
      v16 = v282;
      if ((v88 & 1) == 0)
      {
        goto LABEL_338;
      }

      goto LABEL_20;
    }

    if (v28 != 3 || ((v25 ^ v20) & 1) != 0)
    {
      goto LABEL_338;
    }

    v275 = v17;
    v29 = *v19;
    v30 = v5;
    v31 = v12;
    v32 = *(v19 + 24);
    v4 = v26;
    sub_255C90E88(v25, v24, v27, v26, 3u);
    sub_255C90E88(v29, v2, v3, v32, 3u);
    v33 = sub_255C8C980(v2, v24);
    v34 = v24;
    v35 = v2;
    v2 = v33;
    sub_255C90F54(v25, v34, v27, v4, 3u);
    v36 = v29;
    v17 = v275;
    v37 = v35;
    v38 = v3;
    v39 = v32;
    v12 = v31;
    v5 = v30;
    v40 = 3;
    goto LABEL_64;
  }

  v281 = v25;
  if (!*(v19 + 32))
  {
    if (v28)
    {
      goto LABEL_338;
    }

    v4 = *(v20 + 16);
    if (v4 != *(v25 + 16))
    {
      goto LABEL_338;
    }

    if (v4)
    {
      v45 = v20 == v25;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_20;
    }

    v248 = 0;
    v276 = v20 + 32;
    v253 = v24;
    v46 = *(v19 + 8);
    v2 = v25;
    v47 = *(v19 + 24);
    v251 = v27;
    v266 = v26;
    sub_255C90E88(v281, v253, v27, v26, 0);
    v268 = v3;
    v269 = v46;
    v255 = v47;
    result = sub_255C90E88(v20, v46, v3, v47, 0);
    v48 = 0;
    v247 = v4;
    while (2)
    {
      if (v48 >= *(v20 + 16))
      {
        goto LABEL_342;
      }

      if (v48 >= *(v2 + 16))
      {
        goto LABEL_343;
      }

      v99 = v276 + 40 * v48;
      result = *v99;
      v100 = *(v99 + 8);
      v102 = *(v99 + 16);
      v101 = *(v99 + 24);
      v103 = *(v99 + 32);
      v104 = v281 + 32 + 40 * v48;
      v105 = *v104;
      v106 = *(v104 + 8);
      v107 = *(v104 + 16);
      v108 = *(v104 + 24);
      v109 = *(v104 + 32);
      if (v103 <= 4)
      {
        v272 = v102;
        if (v103 > 1)
        {
          if (v103 == 2)
          {
            if (v109 != 2)
            {
              goto LABEL_337;
            }

            if ((v105 ^ result))
            {
              goto LABEL_337;
            }

            if (v100 != v106)
            {
              goto LABEL_337;
            }

            v127 = *(v102 + 16);
            if (v127 != *(v107 + 16))
            {
              goto LABEL_337;
            }

            if (v127)
            {
              v128 = v102 == v107;
            }

            else
            {
              v128 = 1;
            }

            if (!v128)
            {
              v237 = 2;
              v260 = v5;
              v270 = v102 + 32;
              v271 = v108;
              v129 = v107 + 32;
              v130 = v100;
              v131 = result;
              v252 = v105;
              v132 = v107;
              v133 = v101;
              sub_255C90E88(v105, v130, v107, v108, 2u);
              v249 = v131;
              v250 = v133;
              v254 = v130;
              v134 = v133;
              v135 = v272;
              result = sub_255C90E88(v131, v130, v272, v134, 2u);
              v136 = 0;
              while (v136 < *(v135 + 16))
              {
                if (v136 >= *(v132 + 16))
                {
                  goto LABEL_348;
                }

                v137 = v20;
                v138 = *(v270 + 8 * v136);
                v139 = *(v129 + 8 * v136);

                v140 = sub_255C8AF80(v138, v139);

                if ((v140 & 1) == 0)
                {
                  v235 = 2;
                  sub_255C90F54(v252, v254, v132, v271, 2u);
                  v20 = v137;
                  goto LABEL_336;
                }

                ++v136;
                v20 = v137;
                v135 = v272;
                if (v127 == v136)
                {
                  v141 = v254;
                  sub_255C90F54(v252, v254, v132, v271, 2u);
                  v12 = v280;
                  v5 = v260;
                  v4 = v247;
                  goto LABEL_245;
                }
              }

              goto LABEL_346;
            }
          }

          else
          {
            if (v103 == 3)
            {
              if (v109 != 3 || ((v105 ^ result) & 1) != 0)
              {
                goto LABEL_337;
              }

              v110 = result;
              v256 = v107;
              v111 = v101;
              v271 = v108;
              v272 = v48;
              v112 = v106;
              v252 = v105;
              sub_255C90E88(v105, v106, v107, v108, 3u);
              sub_255C90E88(v110, v100, v102, v111, 3u);
              LODWORD(v270) = sub_255C8C980(v100, v112);
              v113 = v112;
              v48 = v272;
              sub_255C90F54(v252, v113, v256, v271, 3u);
              v94 = v110;
              v95 = v100;
              v96 = v102;
              v97 = v111;
              v98 = 3;
              goto LABEL_109;
            }

            if (v109 != 4)
            {
              goto LABEL_337;
            }

            if (v100)
            {
              if (!v106)
              {
                goto LABEL_337;
              }

              if (result != v105 || v100 != v106)
              {
                v142 = v107;
                v143 = v101;
                v144 = v108;
                result = sub_255D076D8();
                v107 = v142;
                v108 = v144;
                v101 = v143;
                v102 = v272;
                if ((result & 1) == 0)
                {
                  goto LABEL_337;
                }
              }
            }

            else if (v106)
            {
              goto LABEL_337;
            }

            if (v102 != v107 || v101 != v108)
            {
LABEL_186:
              result = sub_255D076D8();
              if ((result & 1) == 0)
              {
                goto LABEL_337;
              }
            }
          }

LABEL_110:
          ++v48;
          v2 = v281;
          if (v48 != v4)
          {
            continue;
          }

          sub_255C90F54(v281, v253, v251, v266, 0);
          v3 = v268;
          v228 = v269;
LABEL_314:
          sub_255C90F54(v20, v228, v3, v255, v248);
          v16 = v282;
          goto LABEL_20;
        }

        v270 = v106;
        if (v103)
        {
          if (v109 != 1)
          {
            goto LABEL_337;
          }

          if ((v105 ^ result))
          {
            goto LABEL_337;
          }

          v146 = *(v100 + 16);
          if (v146 != *(v106 + 16))
          {
            goto LABEL_337;
          }

          if (v146)
          {
            v147 = v100 == v106;
          }

          else
          {
            v147 = 1;
          }

          if (!v147)
          {
            v237 = v103;
            v256 = v107;
            v261 = v5;
            v148 = v106 + 32;
            v149 = result;
            v252 = v105;
            v150 = v102;
            v151 = v101;
            v271 = v108;
            sub_255C90E88(v105, v106, v107, v108, 1u);
            v249 = v149;
            v250 = v151;
            v254 = v100;
            result = sub_255C90E88(v149, v100, v150, v151, 1u);
            v152 = 0;
            v267 = v20;
            do
            {
              if (v152 >= *(v100 + 16))
              {
                goto LABEL_347;
              }

              if (v152 >= *(v270 + 16))
              {
                goto LABEL_349;
              }

              v153 = *(v100 + 32 + 8 * v152);
              v154 = *(v148 + 8 * v152);

              v155 = sub_255C8AF80(v153, v154);

              if ((v155 & 1) == 0)
              {
                goto LABEL_335;
              }

              ++v152;
              v20 = v267;
            }

            while (v146 != v152);
            sub_255C90F54(v252, v270, v256, v271, 1u);
            v12 = v280;
            v5 = v261;
            v4 = v247;
LABEL_244:
            v135 = v272;
            v141 = v254;
LABEL_245:
            result = sub_255C90F54(v249, v141, v135, v250, v237);
          }

          goto LABEL_110;
        }

        if (v109)
        {
          goto LABEL_337;
        }

        v117 = *(result + 16);
        if (v117 != *(v105 + 16))
        {
          goto LABEL_337;
        }

        if (v117)
        {
          v118 = result == v105;
        }

        else
        {
          v118 = 1;
        }

        if (v118)
        {
          goto LABEL_110;
        }

        v237 = 0;
        v267 = v20;
        v249 = result;
        v256 = v107;
        v119 = v102;
        v120 = v101;
        v271 = v108;
        v121 = v105;
        sub_255C90E88(v105, v106, v107, v108, 0);
        v254 = v100;
        v250 = v120;
        result = sub_255C90E88(v249, v100, v119, v120, 0);
        v122 = v249;
        v123 = 0;
        v252 = v121;
        v124 = (v121 + 64);
        v125 = (v249 + 64);
        v243 = v117;
        v259 = v5;
        while (2)
        {
          if (v123 >= *(v122 + 16))
          {
            goto LABEL_352;
          }

          if (v123 >= *(v252 + 16))
          {
            goto LABEL_353;
          }

          result = *(v125 - 4);
          v167 = *(v125 - 3);
          v3 = *(v125 - 1);
          v168 = *v125;
          v4 = *(v124 - 4);
          v2 = *(v124 - 3);
          v169 = *(v124 - 2);
          v170 = *(v124 - 1);
          v171 = *v124;
          if (v168 <= 4)
          {
            if (*v125 <= 1u)
            {
              v240 = *(v125 - 2);
              v245 = *(v124 - 2);
              v246 = *(v124 - 1);
              if (*v125)
              {
                if (v171 != 1 || ((v4 ^ result) & 1) != 0)
                {
                  goto LABEL_335;
                }

                v188 = *(v125 - 4);
                v244 = v188;
                v189 = *(v125 - 3);
                sub_255C90E88(v4, v2, v169, v170, 1u);
                sub_255C90E88(v188, v189, v240, v3, 1u);
                v236 = sub_255C8B060(v189, v2);
                sub_255C90F54(v4, v2, v245, v246, 1u);
                v162 = v188;
                v163 = v189;
                v164 = v240;
                v165 = v3;
                v166 = 1;
              }

              else
              {
                if (*v124)
                {
                  goto LABEL_335;
                }

                v179 = *(v125 - 4);
                v180 = *(v125 - 3);
                v242 = v180;
                sub_255C90E88(v4, v2, v169, v170, 0);
                sub_255C90E88(v179, v180, v240, v3, 0);
                v236 = sub_255C8AF80(v179, v4);
                sub_255C90F54(v4, v2, v245, v246, 0);
                v162 = v179;
                v163 = v180;
                v164 = v240;
                v165 = v3;
                v166 = 0;
              }
            }

            else
            {
              if (v168 != 2)
              {
                v172 = *(v125 - 2);
                v238 = *(v125 - 1);
                if (v168 == 3)
                {
                  if (v171 != 3 || ((v4 ^ result) & 1) != 0)
                  {
                    goto LABEL_335;
                  }

                  v160 = *(v125 - 4);
                  v244 = v160;
                  v245 = *(v124 - 2);
                  v161 = *(v125 - 3);
                  v246 = *(v124 - 1);
                  sub_255C90E88(v4, v2, v169, v170, 3u);
                  sub_255C90E88(v160, v161, v172, v238, 3u);
                  v236 = sub_255C8C980(v161, v2);
                  sub_255C90F54(v4, v2, v245, v246, 3u);
                  v162 = v160;
                  v163 = v161;
                  v164 = v172;
                  v165 = v238;
                  v166 = 3;
                  goto LABEL_189;
                }

                if (v171 != 4)
                {
                  goto LABEL_335;
                }

                if (v167)
                {
                  if (!v2)
                  {
                    goto LABEL_335;
                  }

                  if (result != v4 || v167 != v2)
                  {
                    v245 = *(v124 - 2);
                    v187 = *(v124 - 1);
                    result = sub_255D076D8();
                    v169 = v245;
                    v170 = v187;
                    if ((result & 1) == 0)
                    {
                      goto LABEL_335;
                    }
                  }
                }

                else if (v2)
                {
                  goto LABEL_335;
                }

                if (v172 != v169 || v238 != v170)
                {
LABEL_241:
                  result = sub_255D076D8();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_335;
                  }
                }

LABEL_190:
                ++v123;
                v124 += 40;
                v125 += 40;
                v12 = v280;
                v5 = v259;
                v4 = v247;
                v122 = v249;
                if (v243 == v123)
                {
                  sub_255C90F54(v252, v270, v256, v271, 0);
                  v20 = v267;
                  goto LABEL_244;
                }

                continue;
              }

              v241 = *(v125 - 2);
              if (v171 != 2 || ((v4 ^ result) & 1) != 0 || v167 != v2)
              {
                goto LABEL_335;
              }

              v181 = *(v125 - 4);
              v244 = v181;
              v182 = *(v125 - 3);
              v183 = *(v124 - 2);
              v246 = *(v124 - 1);
              sub_255C90E88(v4, v167, v169, v170, 2u);
              sub_255C90E88(v181, v182, v241, v3, 2u);
              v236 = sub_255C8B060(v241, v183);
              sub_255C90F54(v4, v182, v183, v246, 2u);
              v162 = v181;
              v163 = v182;
              v164 = v241;
              v165 = v3;
              v166 = 2;
            }

LABEL_189:
            result = sub_255C90F54(v162, v163, v164, v165, v166);
            if ((v236 & 1) == 0)
            {
              goto LABEL_335;
            }

            goto LABEL_190;
          }

          break;
        }

        if (*v125 <= 6u)
        {
          if (v168 == 5)
          {
            if (v171 != 5)
            {
              goto LABEL_335;
            }

            if (result != v4 || v167 != v2)
            {
              goto LABEL_241;
            }

            goto LABEL_190;
          }

          if (v171 != 6)
          {
            goto LABEL_335;
          }

          v190 = *(v125 - 2);
          v244 = *(v125 - 4);
          v245 = *(v124 - 2);
          v191 = *(v125 - 3);
          v242 = v191;
          v246 = *(v124 - 1);
          sub_255C90E88(v4, v2, v169, v170, 6u);
          sub_255C90E88(v244, v191, v190, v3, 6u);
          v239 = sub_255C8E694(v244, v4);
          sub_255C90F54(v4, v2, v245, v246, 6u);
          v174 = v244;
          v175 = v191;
          v176 = v190;
          v177 = v3;
          v178 = 6;
        }

        else if (v168 == 7)
        {
          if (v171 != 7 || result != v4)
          {
            goto LABEL_335;
          }

          v184 = *(v125 - 2);
          v185 = *(v125 - 4);
          v186 = *(v125 - 3);
          v245 = *(v124 - 2);
          v246 = *(v124 - 1);
          sub_255C90E88(result, *(v124 - 3), v169, v170, 7u);
          sub_255C90E88(v185, v186, v184, v3, 7u);
          v239 = sub_255C8E694(v186, v2);
          sub_255C90F54(v185, v2, v245, v246, 7u);
          v174 = v185;
          v175 = v186;
          v176 = v184;
          v177 = v3;
          v178 = 7;
        }

        else
        {
          if (v168 != 8)
          {
            if (v171 != 9 || v2 | v4 | v169 | v170)
            {
              goto LABEL_335;
            }

            goto LABEL_190;
          }

          if (v171 != 8)
          {
            goto LABEL_335;
          }

          v5 = *(v125 - 2);
          v173 = *(v125 - 4);
          v242 = *(v125 - 3);
          v245 = *(v124 - 2);
          v246 = *(v124 - 1);
          sub_255C90E88(*(v124 - 4), v2, v169, v170, 8u);
          sub_255C90E88(v173, v242, v5, v3, 8u);
          v244 = v173;
          if ((sub_255C8EA80(v173, v4) & 1) == 0)
          {
            goto LABEL_334;
          }

          v239 = sub_255C8EB48(v242, v2);
          sub_255C90F54(v4, v2, v245, v246, 8u);
          v174 = v173;
          v175 = v242;
          v176 = v5;
          v177 = v3;
          v178 = 8;
        }

        result = sub_255C90F54(v174, v175, v176, v177, v178);
        if ((v239 & 1) == 0)
        {
          goto LABEL_335;
        }

        goto LABEL_190;
      }

      break;
    }

    if (v103 <= 6)
    {
      if (v103 != 5)
      {
        if (v109 != 6)
        {
          goto LABEL_337;
        }

        v254 = v100;
        v156 = result;
        v256 = v107;
        v250 = v101;
        v271 = v108;
        v272 = v48;
        v157 = v106;
        v158 = v105;
        sub_255C90E88(v105, v106, v107, v108, 6u);
        sub_255C90E88(v156, v100, v102, v250, 6u);
        LODWORD(v270) = sub_255C8E694(v156, v158);
        v159 = v157;
        v48 = v272;
        sub_255C90F54(v158, v159, v256, v271, 6u);
        v94 = v156;
        v95 = v100;
        v96 = v102;
        v97 = v250;
        v98 = 6;
        goto LABEL_109;
      }

      if (v109 != 5)
      {
        goto LABEL_337;
      }

      if (result != v105 || v100 != v106)
      {
        goto LABEL_186;
      }

      goto LABEL_110;
    }

    if (v103 == 7)
    {
      if (v109 != 7 || result != v105)
      {
        goto LABEL_337;
      }

      v90 = result;
      v256 = v107;
      v91 = v101;
      v271 = v108;
      v272 = v48;
      v92 = v106;
      sub_255C90E88(result, v106, v107, v108, 7u);
      sub_255C90E88(v90, v100, v102, v91, 7u);
      LODWORD(v270) = sub_255C8E694(v100, v92);
      v93 = v92;
      v48 = v272;
      sub_255C90F54(v90, v93, v256, v271, 7u);
      v94 = v90;
      v95 = v100;
      v96 = v102;
      v97 = v91;
      v98 = 7;
LABEL_109:
      result = sub_255C90F54(v94, v95, v96, v97, v98);
      if ((v270 & 1) == 0)
      {
        goto LABEL_337;
      }

      goto LABEL_110;
    }

    if (v103 != 8)
    {
      if (v109 != 9 || (v106 | v105 | v107 | v108) != 0)
      {
        goto LABEL_337;
      }

      goto LABEL_110;
    }

    if (v109 != 8)
    {
      goto LABEL_337;
    }

    v271 = v108;
    v272 = v48;
    v114 = result;
    v256 = v107;
    v115 = v101;
    v270 = v106;
    v116 = v105;
    sub_255C90E88(v105, v106, v107, v108, 8u);
    v250 = v115;
    sub_255C90E88(v114, v100, v102, v115, 8u);
    if (sub_255C8EA80(v114, v116))
    {
      LODWORD(v252) = sub_255C8EB48(v100, v270);
      sub_255C90F54(v116, v270, v256, v271, 8u);
      result = sub_255C90F54(v114, v100, v102, v115, 8u);
      v48 = v272;
      if ((v252 & 1) == 0)
      {
        goto LABEL_337;
      }

      goto LABEL_110;
    }

    sub_255C90F54(v116, v270, v256, v271, 8u);
    sub_255C90F54(v114, v100, v102, v115, 8u);
LABEL_337:
    sub_255C90F54(v281, v253, v251, v266, 0);
    sub_255C90F54(v20, v269, v268, v255, 0);
    goto LABEL_338;
  }

  if (v28 != 1)
  {
    goto LABEL_338;
  }

  if ((v25 ^ v20))
  {
    goto LABEL_338;
  }

  v60 = *(v2 + 16);
  if (v60 != *(v24 + 16))
  {
    goto LABEL_338;
  }

  if (v60)
  {
    v61 = v2 == v24;
  }

  else
  {
    v61 = 1;
  }

  if (v61)
  {
    goto LABEL_20;
  }

  v248 = v22;
  v254 = v2 + 32;
  v252 = v24 + 32;
  v62 = v24;
  v63 = v2;
  v2 = v281;
  v64 = v21;
  v266 = v26;
  v256 = v60;
  sub_255C90E88(v281, v62, v27, v26, 1u);
  v269 = v63;
  v255 = v64;
  result = sub_255C90E88(v20, v63, v3, v64, 1u);
  v65 = v252;
  v66 = v254;
  v67 = v256;
  v68 = v266;
  v69 = 0;
  v258 = v5;
  v267 = v20;
  v268 = v3;
  v251 = v27;
  v253 = v62;
  while (1)
  {
    if (v69 >= *(v269 + 16))
    {
      goto LABEL_350;
    }

    if (v69 >= *(v62 + 16))
    {
      break;
    }

    result = *(v66 + 8 * v69);
    v4 = *(v65 + 8 * v69);
    v192 = *(result + 16);
    if (v192 != *(v4 + 16))
    {
      sub_255C90F54(v2, v62, v27, v68, 1u);
      sub_255C90F54(v20, v269, v3, v255, 1u);
      goto LABEL_338;
    }

    if (v192)
    {
      v193 = result == v4;
    }

    else
    {
      v193 = 1;
    }

    if (!v193)
    {
      v249 = v69;
      v272 = *(result + 16);
      v274 = *(v66 + 8 * v69);

      v195 = v272;
      v194 = v274;
      v196 = 0;
      v197 = 0;
      v279 = v4;
      while (1)
      {
        if (v197 >= *(v194 + 16))
        {
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
          goto LABEL_351;
        }

        if (v197 >= *(v4 + 16))
        {
          goto LABEL_341;
        }

        v206 = *(v194 + v196 + 32);
        v205 = *(v194 + v196 + 40);
        v208 = *(v194 + v196 + 48);
        v207 = *(v194 + v196 + 56);
        v209 = *(v194 + v196 + 64);
        v210 = v4 + v196;
        v212 = *(v4 + v196 + 32);
        v211 = *(v4 + v196 + 40);
        v213 = *(v4 + v196 + 48);
        v214 = *(v4 + v196 + 56);
        v215 = *(v210 + 64);
        if (v209 <= 4)
        {
          if (*(v194 + v196 + 64) <= 1u)
          {
            v270 = *(v194 + v196 + 48);
            v271 = *(v194 + v196 + 56);
            if (!*(v194 + v196 + 64))
            {
              if (v215)
              {
                goto LABEL_319;
              }

              v221 = *(v194 + v196 + 48);
              sub_255C90E88(v212, v211, v213, v214, 0);
              sub_255C90E88(v206, v205, v221, v271, 0);
              LODWORD(v250) = sub_255C8AF80(v206, v212);
              sub_255C90F54(v212, v211, v213, v214, 0);
              result = sub_255C90F54(v206, v205, v270, v271, 0);
              v195 = v272;
              v194 = v274;
              if ((v250 & 1) == 0)
              {
                goto LABEL_319;
              }

              goto LABEL_258;
            }

            if (v215 != 1 || ((v212 ^ v206) & 1) != 0)
            {
              goto LABEL_319;
            }

            v226 = *(v194 + v196 + 48);
            sub_255C90E88(v212, v211, v213, v214, 1u);
            sub_255C90E88(v206, v205, v226, v271, 1u);
            LODWORD(v250) = sub_255C8B060(v205, v211);
            sub_255C90F54(v212, v211, v213, v214, 1u);
            v200 = v206;
            v201 = v205;
            v202 = v270;
            v203 = v271;
            v204 = 1;
          }

          else if (v209 == 2)
          {
            if (v215 != 2 || ((v212 ^ v206) & 1) != 0 || v205 != v211)
            {
              goto LABEL_319;
            }

            v222 = *(v194 + v196 + 48);
            v223 = *(v194 + v196 + 56);
            sub_255C90E88(v212, *(v194 + v196 + 40), v213, v214, 2u);
            sub_255C90E88(v206, v205, v222, v223, 2u);
            LODWORD(v250) = sub_255C8B060(v222, v213);
            sub_255C90F54(v212, v205, v213, v214, 2u);
            v200 = v206;
            v201 = v205;
            v202 = v222;
            v203 = v223;
            v204 = 2;
          }

          else
          {
            if (v209 != 3)
            {
              if (v215 != 4)
              {
                goto LABEL_319;
              }

              if (v205)
              {
                if (!v211)
                {
                  goto LABEL_319;
                }

                if (v206 != v212 || v205 != v211)
                {
                  v224 = *(v194 + v196 + 48);
                  v225 = *(v194 + v196 + 56);
                  result = sub_255D076D8();
                  v208 = v224;
                  v207 = v225;
                  v195 = v272;
                  v194 = v274;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_319;
                  }
                }
              }

              else if (v211)
              {
                goto LABEL_319;
              }

              if (v208 == v213 && v207 == v214)
              {
                goto LABEL_258;
              }

LABEL_309:
              result = sub_255D076D8();
              v195 = v272;
              v194 = v274;
              if ((result & 1) == 0)
              {
                goto LABEL_319;
              }

              goto LABEL_258;
            }

            if (v215 != 3 || ((v212 ^ v206) & 1) != 0)
            {
              goto LABEL_319;
            }

            v216 = *(v194 + v196 + 48);
            v270 = v216;
            v271 = *(v194 + v196 + 56);
            sub_255C90E88(v212, v211, v213, v214, 3u);
            sub_255C90E88(v206, v205, v216, v271, 3u);
            LODWORD(v250) = sub_255C8C980(v205, v211);
            sub_255C90F54(v212, v211, v213, v214, 3u);
            v200 = v206;
            v201 = v205;
            v202 = v216;
            v203 = v271;
            v204 = 3;
          }

          goto LABEL_257;
        }

        if (*(v194 + v196 + 64) > 6u)
        {
          break;
        }

        if (v209 != 5)
        {
          if (v215 != 6)
          {
            goto LABEL_319;
          }

          v227 = *(v194 + v196 + 48);
          v270 = v227;
          v271 = *(v194 + v196 + 56);
          sub_255C90E88(v212, v211, v213, v214, 6u);
          sub_255C90E88(v206, v205, v227, v271, 6u);
          LODWORD(v250) = sub_255C8E694(v206, v212);
          sub_255C90F54(v212, v211, v213, v214, 6u);
          v200 = v206;
          v201 = v205;
          v202 = v227;
          v203 = v271;
          v204 = 6;
LABEL_257:
          result = sub_255C90F54(v200, v201, v202, v203, v204);
          v195 = v272;
          v194 = v274;
          if ((v250 & 1) == 0)
          {
            goto LABEL_319;
          }

          goto LABEL_258;
        }

        if (v215 != 5)
        {
          goto LABEL_319;
        }

        if (v206 != v212 || v205 != v211)
        {
          goto LABEL_309;
        }

LABEL_258:
        ++v197;
        v196 += 40;
        v4 = v279;
        if (v195 == v197)
        {

          v12 = v280;
          v67 = v256;
          v5 = v258;
          v20 = v267;
          v3 = v268;
          v27 = v251;
          v65 = v252;
          v2 = v281;
          v68 = v266;
          v62 = v253;
          v66 = v254;
          v69 = v249;
          goto LABEL_247;
        }
      }

      if (v209 != 7)
      {
        if (v209 == 8)
        {
          if (v215 != 8)
          {
            goto LABEL_319;
          }

          v217 = v214;
          v218 = *(v194 + v196 + 48);
          v219 = *(v194 + v196 + 56);
          v250 = v217;
          sub_255C90E88(v212, v211, v213, v217, 8u);
          v270 = v218;
          v271 = v219;
          sub_255C90E88(v206, v205, v218, v219, 8u);
          if ((sub_255C8EA80(v206, v212) & 1) == 0)
          {
            sub_255C90F54(v212, v211, v213, v250, 8u);
            sub_255C90F54(v206, v205, v218, v219, 8u);
LABEL_319:

            sub_255C90F54(v281, v253, v251, v266, 1u);
            v230 = v267;
            v232 = v268;
            v231 = v269;
            v233 = v255;
            v234 = 1;
LABEL_320:
            sub_255C90F54(v230, v231, v232, v233, v234);
            goto LABEL_338;
          }

          v220 = sub_255C8EB48(v205, v211);
          sub_255C90F54(v212, v211, v213, v250, 8u);
          result = sub_255C90F54(v206, v205, v218, v271, 8u);
          v195 = v272;
          v194 = v274;
          if ((v220 & 1) == 0)
          {
            goto LABEL_319;
          }
        }

        else if (v215 != 9 || v211 | v212 | v213 | v214)
        {
          goto LABEL_319;
        }

        goto LABEL_258;
      }

      if (v215 != 7 || v206 != v212)
      {
        goto LABEL_319;
      }

      v198 = *(v194 + v196 + 48);
      v199 = *(v194 + v196 + 56);
      sub_255C90E88(*(v194 + v196 + 32), v211, v213, v214, 7u);
      sub_255C90E88(v206, v205, v198, v199, 7u);
      LODWORD(v250) = sub_255C8E694(v205, v211);
      sub_255C90F54(v206, v211, v213, v214, 7u);
      v200 = v206;
      v201 = v205;
      v202 = v198;
      v203 = v199;
      v204 = 7;
      goto LABEL_257;
    }

LABEL_247:
    if (++v69 == v67)
    {
      sub_255C90F54(v2, v62, v27, v68, 1u);
      v228 = v269;
      goto LABEL_314;
    }
  }

LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
  return result;
}