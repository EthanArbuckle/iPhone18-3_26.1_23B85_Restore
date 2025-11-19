void sub_22B24F58C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_22B170BE0(v30, v44, &qword_27D8BA870, &unk_22B366480);
          v32 = v27;
          v33 = v45;
          sub_22B170BE0(v32, v45, &qword_27D8BA870, &unk_22B366480);
          v34 = sub_22B35DDFC();
          sub_22B123284(v33, &qword_27D8BA870, &unk_22B366480);
          sub_22B123284(v31, &qword_27D8BA870, &unk_22B366480);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_22B170BE0(a2, v44, &qword_27D8BA870, &unk_22B366480);
        v21 = v45;
        sub_22B170BE0(a4, v45, &qword_27D8BA870, &unk_22B366480);
        v22 = sub_22B35DDFC();
        sub_22B123284(v21, &qword_27D8BA870, &unk_22B366480);
        sub_22B123284(v20, &qword_27D8BA870, &unk_22B366480);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_22B21C894(&v48, &v47, &v46);
}

void *sub_22B24FA90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22B24FBE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = (&v35 - v11);
  v44 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_19:
    v24 = 0;
LABEL_26:
    *a1 = v44;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v38 = a3;
    while (v17)
    {
      v43 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v44;
      v27 = *(v44 + 48);
      v28 = sub_22B35DE9C();
      v29 = v40;
      (*(*(v28 - 8) + 16))(v40, v27 + *(*(v28 - 8) + 72) * v25, v28);
      v30 = *(v26 + 56);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
      sub_22B170BE0(v30 + *(*(v31 - 8) + 72) * v25, v29 + *(v42 + 48), &qword_27D8BAAE0, &unk_22B3673C0);
      a1 = v41;
      sub_22B170CD0(v29, v41, &qword_27D8BA870, &unk_22B366480);
      v32 = v43;
      sub_22B170CD0(a1, v43, &qword_27D8BA870, &unk_22B366480);
      if (v20 == v38)
      {
        goto LABEL_24;
      }

      a2 = v32 + *(v39 + 72);
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v43 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
LABEL_24:
    v15 = v36;
    a1 = v37;
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_22B24FEE0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_22B36123C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_22B36125C())
      {
        goto LABEL_31;
      }

      sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_22B2500DC(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
  sub_22B250330(&qword_27D8BAB18, &qword_27D8BAB10, 0x277CBC5D0);
  result = sub_22B360C7C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_22B3610BC())
      {
        goto LABEL_30;
      }

      sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_22B250330(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B128014(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B250374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA710, &qword_22B3659B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22B2503E4(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22B248CD8(*(v1 + 32), a1);
}

uint64_t sub_22B250404(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v6 = *(v2 - 3);
      v5 = *(v2 - 2);

      sub_22B32ECCC(&v7, v6, v5, v4, v3);

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_22B2504AC()
{
  result = qword_27D8BAB20[0];
  if (!qword_27D8BAB20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8BAB20);
  }

  return result;
}

uint64_t sub_22B250500()
{
  type metadata accessor for HomeEnergyWindowNotificationsManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28140BD38 = v0;
  return result;
}

uint64_t sub_22B25053C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 81) = a5;
  *(v6 + 192) = a3;
  *(v6 + 200) = v5;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  EnergyWindow = type metadata accessor for NextEnergyWindow();
  *(v6 + 256) = EnergyWindow;
  v10 = *(*(EnergyWindow - 8) + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v11 = sub_22B35DE9C();
  *(v6 + 296) = v11;
  v12 = *(v11 - 8);
  *(v6 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  v14 = *(a4 + 16);
  *(v6 + 88) = *a4;
  *(v6 + 104) = v14;
  v15 = *(a4 + 48);
  *(v6 + 120) = *(a4 + 32);
  *(v6 + 368) = v15;
  *(v6 + 82) = *(a4 + 64);

  return MEMORY[0x2822009F8](sub_22B250740, v5, 0);
}

uint64_t sub_22B250740()
{
  v1 = v0[45];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[22];
  v5 = *(v3 + 16);
  v0[48] = v5;
  v0[49] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v6 = qword_28140BD80;
  v0[50] = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B250800, v6, 0);
}

uint64_t sub_22B250800()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[44];
  v5 = v0[37];
  v6 = v0[25];
  v7 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v3(v4, v1 + v7, v5);

  return MEMORY[0x2822009F8](sub_22B2508BC, v6, 0);
}

uint64_t sub_22B2508BC()
{
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  *(v0 + 408) = qword_28140BD50;
  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  *v1 = v0;
  v1[1] = sub_22B250998;
  v2 = *(v0 + 360);
  v3 = *(v0 + 280);
  v4 = *(v0 + 81);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  return sub_22B19D504(v3, v2, v5, v6, v4);
}

uint64_t sub_22B250998()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B250AA8, v2, 0);
}

uint64_t sub_22B250AA8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  sub_22B1A1FF4(*(v0 + 280), *(v0 + 288));
  if (sub_22B35DDFC())
  {
    *(v0 + 84) = *(*(v0 + 256) + 20);
    v3 = *(v0 + 81);
    v4 = swift_task_alloc();
    *(v0 + 424) = v4;
    *v4 = v0;
    v4[1] = sub_22B250CE4;
    v5 = *(v0 + 408);
    v6 = *(v0 + 360);
    v7 = *(v0 + 280);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);

    return sub_22B19D504(v7, v6, v8, v9, v3);
  }

  else
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 288);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 216);
    sub_22B2532AC(v13, v14, type metadata accessor for NextEnergyWindow);
    *(v0 + 83) = *(v13 + *(v15 + 24));
    sub_22B1B05B4(v14, v16);
    v17 = *(v12 + 48);
    v18 = 1;
    LODWORD(v11) = v17(v16, 1, v11);
    sub_22B1AFCD8(v16);
    if (v11 == 1)
    {
      v19 = *(v0 + 296);
      v20 = *(v0 + 208);
      sub_22B1B05B4(*(v0 + 264) + *(*(v0 + 256) + 20), v20);
      v18 = v17(v20, 1, v19) != 1;
      sub_22B1AFCD8(v20);
    }

    *(v0 + 440) = v18;
    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 82);
    v22 = qword_28140BDB8;
    *(v0 + 432) = qword_28140BDB8;
    v23 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v23;
    v24 = *(v0 + 368);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v24;
    *(v0 + 80) = v21;

    return MEMORY[0x2822009F8](sub_22B2515F0, v22, 0);
  }
}

uint64_t sub_22B250CE4()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B250DF4, v2, 0);
}

uint64_t sub_22B250DF4()
{
  v105 = v0;
  v1 = *(v0 + 84);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  sub_22B253374(*(v0 + 280), v4);
  v5 = *(v3 + 48);
  if (v5(v4 + v1, 1, v2))
  {
    v6 = *(v0 + 360);
    v7 = *(v0 + 344);
    v8 = *(v0 + 296);
    v9 = *(v0 + 304);
    v10 = *(v0 + 248);
    (*(v9 + 56))(v10, 1, 1, v8);
    sub_22B35DD2C();
    v100 = *(v9 + 8);
    v100(v6, v8);
    if (v5(v10, 1, v8) != 1)
    {
      sub_22B1AFCD8(*(v0 + 248));
    }
  }

  else
  {
    v11 = *(v0 + 392);
    v12 = *(v0 + 360);
    v13 = *(v0 + 336);
    v97 = *(v0 + 344);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = *(v0 + 248);
    (*(v0 + 384))(v13, *(v0 + 288) + *(v0 + 84), v14);
    sub_22B35DDCC();
    v17 = *(v15 + 8);
    v17(v13, v14);
    v100 = v17;
    v17(v12, v14);
    (*(v15 + 56))(v16, 0, 1, v14);
    (*(v15 + 32))(v97, v16, v14);
  }

  v18 = *(v0 + 376);
  v94 = *(*(v0 + 304) + 32);
  v94(*(v0 + 360), *(v0 + 344), *(v0 + 296));
  if (v18)
  {
    v20 = *(v0 + 368);
    v19 = *(v0 + 376);
    v21 = *(v0 + 192);
    *(v0 + 160) = *(v0 + 184);
    *(v0 + 168) = v21;

    MEMORY[0x23188E270](45, 0xE100000000000000);
    MEMORY[0x23188E270](v20, v19);
    v22 = *(v0 + 168);
    v98 = *(v0 + 160);
  }

  else
  {
    v22 = *(v0 + 192);
    v98 = *(v0 + 184);
  }

  v23 = (v0 + 240);
  v24 = *(v0 + 240);
  v25 = *(v0 + 296);
  sub_22B1B05B4(*(v0 + 288), v24);
  if (v5(v24, 1, v25) == 1)
  {
    v23 = (v0 + 232);
    v26 = *(v0 + 232);
    v27 = *(v0 + 84);
    v29 = *(v0 + 288);
    v28 = *(v0 + 296);
    sub_22B1AFCD8(*(v0 + 240));
    sub_22B1B05B4(v29 + v27, v26);
    if (v5(v26, 1, v28) == 1)
    {
      v31 = *(v0 + 352);
      v30 = *(v0 + 360);
      v32 = *(v0 + 232);

      sub_22B1AFCD8(v32);
      if (sub_22B35DDFC())
      {
        v33 = swift_task_alloc();
        *(v0 + 424) = v33;
        *v33 = v0;
        v33[1] = sub_22B250CE4;
        v34 = *(v0 + 408);
        v35 = *(v0 + 360);
        v36 = *(v0 + 280);
        v37 = *(v0 + 184);
        v38 = *(v0 + 192);

        return sub_22B19D504(v36, v35, v37, v38, 0);
      }

      goto LABEL_23;
    }
  }

  v41 = *(v0 + 288);
  v40 = *(v0 + 296);
  v42 = *(v0 + 272);
  v43 = *(v0 + 224);
  sub_22B1AFCD8(*v23);
  sub_22B2532AC(v41, v42, type metadata accessor for NextEnergyWindow);
  sub_22B1B05B4(v42, v43);
  if (v5(v43, 1, v40) == 1)
  {
    v44 = *(v0 + 272);
    v45 = *(v0 + 224);

    sub_22B1AFCD8(v45);
    sub_22B253314(v44, type metadata accessor for NextEnergyWindow);
    v46 = 6;
  }

  else
  {
    v92 = v22;
    v47 = *(v0 + 320);
    v94(*(v0 + 328), *(v0 + 224), *(v0 + 296));
    sub_22B35DE6C();
    if (qword_28140A7B0 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 384);
    v49 = *(v0 + 392);
    v90 = *(v0 + 82);
    v50 = *(v0 + 368);
    v51 = *(v0 + 376);
    v53 = *(v0 + 320);
    v52 = *(v0 + 328);
    v54 = *(v0 + 312);
    v55 = *(v0 + 296);
    v95 = *(v0 + 272);
    v56 = *(v0 + 304) + 8;
    if (sub_22B35DDEC())
    {
      v57 = v52;
    }

    else
    {
      v57 = v53;
    }

    v48(v54, v57, v55);
    v58 = *(v0 + 104);
    v101[0] = *(v0 + 88);
    v101[1] = v58;
    v101[2] = *(v0 + 120);
    v102 = v50;
    v103 = v51;
    v104 = v90;
    sub_22B28E828(v54, v98, v92, v101);
    v60 = v59;

    v100(v54, v55);
    v100(v53, v55);
    v100(v52, v55);
    sub_22B253314(v95, type metadata accessor for NextEnergyWindow);
    if (v60)
    {

LABEL_23:
      v61 = *(v0 + 296);
      v62 = *(v0 + 304);
      v63 = *(v0 + 288);
      v65 = *(v0 + 256);
      v64 = *(v0 + 264);
      v66 = *(v0 + 216);
      sub_22B2532AC(v63, v64, type metadata accessor for NextEnergyWindow);
      *(v0 + 83) = *(v63 + *(v65 + 24));
      sub_22B1B05B4(v64, v66);
      v67 = *(v62 + 48);
      v68 = 1;
      LODWORD(v61) = v67(v66, 1, v61);
      sub_22B1AFCD8(v66);
      if (v61 == 1)
      {
        v69 = *(v0 + 296);
        v70 = *(v0 + 208);
        sub_22B1B05B4(*(v0 + 264) + *(*(v0 + 256) + 20), v70);
        v68 = v67(v70, 1, v69) != 1;
        sub_22B1AFCD8(v70);
      }

      *(v0 + 440) = v68;
      if (qword_28140AF70 != -1)
      {
        swift_once();
      }

      v71 = *(v0 + 82);
      v72 = qword_28140BDB8;
      *(v0 + 432) = qword_28140BDB8;
      v73 = *(v0 + 104);
      *(v0 + 16) = *(v0 + 88);
      *(v0 + 32) = v73;
      v74 = *(v0 + 368);
      *(v0 + 48) = *(v0 + 120);
      *(v0 + 64) = v74;
      *(v0 + 80) = v71;

      return MEMORY[0x2822009F8](sub_22B2515F0, v72, 0);
    }

    v46 = 9;
  }

  v99 = v46;
  v75 = *(v0 + 296);
  v76 = *(v0 + 360);
  v78 = *(v0 + 336);
  v77 = *(v0 + 344);
  v79 = *(v0 + 328);
  v82 = *(v0 + 320);
  v83 = *(v0 + 312);
  v80 = *(v0 + 288);
  v84 = *(v0 + 280);
  v85 = *(v0 + 272);
  v86 = *(v0 + 264);
  v87 = *(v0 + 248);
  v88 = *(v0 + 240);
  v89 = *(v0 + 232);
  v91 = *(v0 + 224);
  v93 = *(v0 + 216);
  v96 = *(v0 + 208);
  v100(*(v0 + 352), v75);
  v100(v76, v75);
  sub_22B253314(v80, type metadata accessor for NextEnergyWindow);

  v81 = *(v0 + 8);

  return v81(v99);
}

uint64_t sub_22B2515F0()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 200);
  sub_22B17DDA4(*(v0 + 184), *(v0 + 192), *(v0 + 83) & 1, *(v0 + 440), (v0 + 16));

  return MEMORY[0x2822009F8](sub_22B251670, v2, 0);
}

uint64_t sub_22B251670()
{
  v1 = v0[38];
  sub_22B253314(v0[33], type metadata accessor for NextEnergyWindow);
  v2 = *(v1 + 8);
  v3 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v10 = v0[41];
  v11 = v0[40];
  v6 = v0[36];
  v7 = v0[37];
  v12 = v0[39];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v2(v0[44], v7);
  v2(v3, v7);
  sub_22B253314(v6, type metadata accessor for NextEnergyWindow);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_22B251814(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_22B35DE9C();
  v3[33] = v4;
  v5 = *(v4 - 8);
  v3[34] = v5;
  v6 = *(v5 + 64) + 15;
  v3[35] = swift_task_alloc();
  v7 = *(type metadata accessor for CDEnergyWindowNotifications() - 8);
  v3[36] = v7;
  v8 = *(v7 + 64) + 15;
  v3[37] = swift_task_alloc();
  v9 = sub_22B36052C();
  v3[38] = v9;
  v10 = *(v9 - 8);
  v3[39] = v10;
  v11 = *(v10 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2519BC, v2, 0);
}

uint64_t sub_22B2519BC()
{
  v21 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[31];
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[45] = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[46] = v6;
  v0[47] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v11 = v0[38];
  v12 = v0[39];
  if (v9)
  {
    v14 = v0[30];
    v13 = v0[31];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22B1A7B20(v14, v13, &v20);
    _os_log_impl(&dword_22B116000, v7, v8, "Refreshing notification parsing on getting new data for %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[48] = v17;
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v18 = qword_28140BDB8;
  v0[49] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B251BEC, v18, 0);
}

uint64_t sub_22B251BEC()
{
  v1 = v0[49];
  v2 = v0[32];
  v0[50] = sub_22B17F314(v0[30], v0[31]);

  return MEMORY[0x2822009F8](sub_22B251C60, v2, 0);
}

uint64_t sub_22B251C60()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 344), *(v0 + 360), *(v0 + 304));

  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 400);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_22B116000, v3, v4, "Notification parsing for %{public}ld entries", v7, 0xCu);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 400);
  }

  v9 = *(v0 + 400);
  v10 = *(v0 + 384);
  v11 = *(v0 + 344);
  v12 = *(v0 + 304);
  *(v0 + 408) = (*(v0 + 312) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = v10(v11, v12);
  *(v0 + 232) = MEMORY[0x277D84FA0];
  v16 = *(v9 + 16);
  *(v0 + 416) = v16;
  if (v16)
  {
    v17 = 0;
    *(v0 + 84) = *(*(v0 + 288) + 80);
    while (1)
    {
      *(v0 + 424) = v17;
      v23 = *(v0 + 400);
      if (v17 >= *(v23 + 16))
      {
        break;
      }

      v24 = *(v0 + 296);
      sub_22B2532AC(v23 + ((*(v0 + 84) + 32) & ~*(v0 + 84)) + *(*(v0 + 288) + 72) * v17, v24, type metadata accessor for CDEnergyWindowNotifications);
      v25 = *(v24 + 8);
      *(v0 + 184) = *v24;
      *(v0 + 192) = v25;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      v26 = *(v24 + 72);
      *(v0 + 432) = v26;
      v27 = *(v24 + 80);
      *(v0 + 440) = v27;
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      MEMORY[0x23188E270](v28, v29);

      v31 = *(v0 + 184);
      v30 = *(v0 + 192);
      if (*(v24 + 17))
      {
        v22 = *(v0 + 296);
        if ((*(v22 + 88) & 1) == 0)
        {
          v84 = *(v0 + 368);
          v83 = *(v0 + 376);
          v85 = *(v0 + 360);
          v86 = *(v0 + 320);
          v87 = *(v0 + 304);
          sub_22B32DF50((v0 + 216), *(v0 + 184), *(v0 + 192));
          v88 = *(v0 + 224);

          v84(v86, v85, v87);
          v89 = sub_22B36050C();
          v90 = sub_22B360D2C();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&dword_22B116000, v89, v90, "Notification already scheduled for dispatch, cleaning up tracking", v91, 2u);
            MEMORY[0x23188F650](v91, -1, -1);
          }

          v92 = *(v0 + 408);
          v93 = *(v0 + 384);
          v94 = *(v0 + 320);
          v95 = *(v0 + 304);

          v93(v94, v95);
          v14 = *(v0 + 392);
          if (v27)
          {
            v96 = sub_22B252B0C;
          }

          else
          {
            v96 = sub_22B2531A4;
          }

          v13 = v96;
          v15 = 0;

          return MEMORY[0x2822009F8](v13, v14, v15);
        }

        v32 = *(v0 + 192);
      }

      else
      {
        v33 = *(v0 + 232);
        if (!*(v33 + 16) || (v34 = *(v33 + 40), sub_22B36149C(), sub_22B3608FC(), v35 = sub_22B3614DC(), v36 = -1 << *(v33 + 32), v37 = v35 & ~v36, ((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0))
        {
LABEL_30:
          v49 = *(v0 + 376);
          (*(v0 + 368))(*(v0 + 336), *(v0 + 360), *(v0 + 304));
          v50 = sub_22B36050C();
          v51 = sub_22B360D2C();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_22B116000, v50, v51, "Notification not scheduled for dispatch, parsing again until next poll date", v52, 2u);
            MEMORY[0x23188F650](v52, -1, -1);
          }

          v53 = *(v0 + 408);
          v54 = *(v0 + 384);
          v55 = *(v0 + 336);
          v57 = *(v0 + 296);
          v56 = *(v0 + 304);
          v58 = *(v0 + 280);

          v54(v55, v56);
          sub_22B32DF50((v0 + 200), v31, v30);
          v59 = *(v0 + 208);

          *(v0 + 16) = *(v57 + 24);
          v60 = *(v57 + 40);
          v61 = *(v57 + 56);
          v62 = *(v57 + 72);
          *(v0 + 80) = *(v57 + 88);
          *(v0 + 48) = v61;
          *(v0 + 64) = v62;
          *(v0 + 32) = v60;
          sub_22B35DE6C();
          v63 = *(v0 + 16);
          *(v0 + 104) = *(v0 + 32);
          v64 = *(v0 + 64);
          *(v0 + 120) = *(v0 + 48);
          *(v0 + 136) = v64;
          *(v0 + 152) = *(v0 + 80);
          *(v0 + 88) = v63;
          v65 = *(v57 + 16);
          v66 = swift_task_alloc();
          *(v0 + 448) = v66;
          *v66 = v0;
          v66[1] = sub_22B25237C;
          v67 = *(v0 + 280);
          v68 = *(v0 + 248);
          v69 = *(v0 + 256);
          v70 = *(v0 + 240);

          return sub_22B25053C(v67, v70, v68, v0 + 88, v65);
        }

        v38 = ~v36;
        while (1)
        {
          v39 = (*(v33 + 48) + 16 * v37);
          v40 = *v39 == v31 && v39[1] == v30;
          if (v40 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v42 = *(v0 + 368);
        v41 = *(v0 + 376);
        v43 = *(v0 + 360);
        v44 = *(v0 + 328);
        v45 = *(v0 + 304);

        v42(v44, v43, v45);
        v46 = sub_22B36050C();
        v47 = sub_22B360D2C();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_22B116000, v46, v47, "Notification already processed", v48, 2u);
          MEMORY[0x23188F650](v48, -1, -1);
        }

        v18 = *(v0 + 408);
        v19 = *(v0 + 384);
        v20 = *(v0 + 328);
        v22 = *(v0 + 296);
        v21 = *(v0 + 304);

        v19(v20, v21);
      }

      v13 = sub_22B253314(v22, type metadata accessor for CDEnergyWindowNotifications);
      v17 = *(v0 + 424) + 1;
      if (v17 == *(v0 + 416))
      {
        v81 = *(v0 + 400);

        v82 = *(v0 + 232);
        goto LABEL_36;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  v72 = *(v0 + 400);

LABEL_36:
  v73 = *(v0 + 344);
  v74 = *(v0 + 352);
  v76 = *(v0 + 328);
  v75 = *(v0 + 336);
  v77 = *(v0 + 320);
  v78 = *(v0 + 296);
  v79 = *(v0 + 280);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_22B25237C()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);
  v5 = *(*v0 + 256);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B2524E8, v5, 0);
}

uint64_t sub_22B2524E8()
{
  v1 = sub_22B253314(*(v0 + 296), type metadata accessor for CDEnergyWindowNotifications);
  v4 = *(v0 + 424) + 1;
  if (v4 == *(v0 + 416))
  {
LABEL_2:
    v5 = *(v0 + 400);

    v6 = *(v0 + 232);
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 328);
    v9 = *(v0 + 336);
    v11 = *(v0 + 320);
    v12 = *(v0 + 296);
    v13 = *(v0 + 280);

    v14 = *(v0 + 8);

    return v14();
  }

  while (1)
  {
    *(v0 + 424) = v4;
    v21 = *(v0 + 400);
    if (v4 >= *(v21 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v22 = *(v0 + 296);
    sub_22B2532AC(v21 + ((*(v0 + 84) + 32) & ~*(v0 + 84)) + *(*(v0 + 288) + 72) * v4, v22, type metadata accessor for CDEnergyWindowNotifications);
    v23 = *(v22 + 8);
    *(v0 + 184) = *v22;
    *(v0 + 192) = v23;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    v24 = *(v22 + 72);
    *(v0 + 432) = v24;
    v25 = *(v22 + 80);
    *(v0 + 440) = v25;
    v26 = v25 ? v24 : 0;
    v27 = v25 ? v25 : 0xE000000000000000;

    MEMORY[0x23188E270](v26, v27);

    v29 = *(v0 + 184);
    v28 = *(v0 + 192);
    if ((*(v22 + 17) & 1) == 0)
    {
      break;
    }

    v20 = *(v0 + 296);
    if ((*(v20 + 88) & 1) == 0)
    {
      v70 = *(v0 + 368);
      v69 = *(v0 + 376);
      v71 = *(v0 + 360);
      v72 = *(v0 + 320);
      v73 = *(v0 + 304);
      sub_22B32DF50((v0 + 216), *(v0 + 184), *(v0 + 192));
      v74 = *(v0 + 224);

      v70(v72, v71, v73);
      v75 = sub_22B36050C();
      v76 = sub_22B360D2C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_22B116000, v75, v76, "Notification already scheduled for dispatch, cleaning up tracking", v77, 2u);
        MEMORY[0x23188F650](v77, -1, -1);
      }

      v78 = *(v0 + 408);
      v79 = *(v0 + 384);
      v80 = *(v0 + 320);
      v81 = *(v0 + 304);

      v79(v80, v81);
      v2 = *(v0 + 392);
      if (v25)
      {
        v82 = sub_22B252B0C;
      }

      else
      {
        v82 = sub_22B2531A4;
      }

      v1 = v82;
      v3 = 0;

      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v30 = *(v0 + 192);

LABEL_7:
    v1 = sub_22B253314(v20, type metadata accessor for CDEnergyWindowNotifications);
    v4 = *(v0 + 424) + 1;
    if (v4 == *(v0 + 416))
    {
      goto LABEL_2;
    }
  }

  v31 = *(v0 + 232);
  if (*(v31 + 16))
  {
    v32 = *(v31 + 40);
    sub_22B36149C();
    sub_22B3608FC();
    v33 = sub_22B3614DC();
    v34 = -1 << *(v31 + 32);
    v35 = v33 & ~v34;
    if ((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
    {
      v36 = ~v34;
      while (1)
      {
        v37 = (*(v31 + 48) + 16 * v35);
        v38 = *v37 == v29 && v37[1] == v28;
        if (v38 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v40 = *(v0 + 368);
      v39 = *(v0 + 376);
      v41 = *(v0 + 360);
      v42 = *(v0 + 328);
      v43 = *(v0 + 304);

      v40(v42, v41, v43);
      v44 = sub_22B36050C();
      v45 = sub_22B360D2C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_22B116000, v44, v45, "Notification already processed", v46, 2u);
        MEMORY[0x23188F650](v46, -1, -1);
      }

      v16 = *(v0 + 408);
      v17 = *(v0 + 384);
      v18 = *(v0 + 328);
      v20 = *(v0 + 296);
      v19 = *(v0 + 304);

      v17(v18, v19);
      goto LABEL_7;
    }
  }

LABEL_30:
  v47 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 336), *(v0 + 360), *(v0 + 304));
  v48 = sub_22B36050C();
  v49 = sub_22B360D2C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_22B116000, v48, v49, "Notification not scheduled for dispatch, parsing again until next poll date", v50, 2u);
    MEMORY[0x23188F650](v50, -1, -1);
  }

  v51 = *(v0 + 408);
  v52 = *(v0 + 384);
  v53 = *(v0 + 336);
  v55 = *(v0 + 296);
  v54 = *(v0 + 304);
  v56 = *(v0 + 280);

  v52(v53, v54);
  sub_22B32DF50((v0 + 200), v29, v28);
  v57 = *(v0 + 208);

  *(v0 + 16) = *(v55 + 24);
  v58 = *(v55 + 40);
  v59 = *(v55 + 56);
  v60 = *(v55 + 72);
  *(v0 + 80) = *(v55 + 88);
  *(v0 + 48) = v59;
  *(v0 + 64) = v60;
  *(v0 + 32) = v58;
  sub_22B35DE6C();
  v61 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v62 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v62;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v61;
  v63 = *(v55 + 16);
  v64 = swift_task_alloc();
  *(v0 + 448) = v64;
  *v64 = v0;
  v64[1] = sub_22B25237C;
  v65 = *(v0 + 280);
  v66 = *(v0 + 248);
  v67 = *(v0 + 256);
  v68 = *(v0 + 240);

  return sub_22B25053C(v65, v68, v66, v0 + 88, v63);
}

uint64_t sub_22B252B0C()
{
  v1 = v0[49];
  v2 = v0[32];
  sub_22B17E790(v0[54], v0[55], v0[30], v0[31]);

  return MEMORY[0x2822009F8](sub_22B252B80, v2, 0);
}

uint64_t sub_22B252B80()
{
  v1 = sub_22B253314(*(v0 + 296), type metadata accessor for CDEnergyWindowNotifications);
  v4 = *(v0 + 424) + 1;
  if (v4 == *(v0 + 416))
  {
LABEL_2:
    v5 = *(v0 + 400);

    v6 = *(v0 + 232);
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 328);
    v9 = *(v0 + 336);
    v11 = *(v0 + 320);
    v12 = *(v0 + 296);
    v13 = *(v0 + 280);

    v14 = *(v0 + 8);

    return v14();
  }

  while (1)
  {
    *(v0 + 424) = v4;
    v21 = *(v0 + 400);
    if (v4 >= *(v21 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v22 = *(v0 + 296);
    sub_22B2532AC(v21 + ((*(v0 + 84) + 32) & ~*(v0 + 84)) + *(*(v0 + 288) + 72) * v4, v22, type metadata accessor for CDEnergyWindowNotifications);
    v23 = *(v22 + 8);
    *(v0 + 184) = *v22;
    *(v0 + 192) = v23;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    v24 = *(v22 + 72);
    *(v0 + 432) = v24;
    v25 = *(v22 + 80);
    *(v0 + 440) = v25;
    v26 = v25 ? v24 : 0;
    v27 = v25 ? v25 : 0xE000000000000000;

    MEMORY[0x23188E270](v26, v27);

    v29 = *(v0 + 184);
    v28 = *(v0 + 192);
    if ((*(v22 + 17) & 1) == 0)
    {
      break;
    }

    v20 = *(v0 + 296);
    if ((*(v20 + 88) & 1) == 0)
    {
      v70 = *(v0 + 368);
      v69 = *(v0 + 376);
      v71 = *(v0 + 360);
      v72 = *(v0 + 320);
      v73 = *(v0 + 304);
      sub_22B32DF50((v0 + 216), *(v0 + 184), *(v0 + 192));
      v74 = *(v0 + 224);

      v70(v72, v71, v73);
      v75 = sub_22B36050C();
      v76 = sub_22B360D2C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_22B116000, v75, v76, "Notification already scheduled for dispatch, cleaning up tracking", v77, 2u);
        MEMORY[0x23188F650](v77, -1, -1);
      }

      v78 = *(v0 + 408);
      v79 = *(v0 + 384);
      v80 = *(v0 + 320);
      v81 = *(v0 + 304);

      v79(v80, v81);
      v2 = *(v0 + 392);
      if (v25)
      {
        v82 = sub_22B252B0C;
      }

      else
      {
        v82 = sub_22B2531A4;
      }

      v1 = v82;
      v3 = 0;

      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v30 = *(v0 + 192);

LABEL_7:
    v1 = sub_22B253314(v20, type metadata accessor for CDEnergyWindowNotifications);
    v4 = *(v0 + 424) + 1;
    if (v4 == *(v0 + 416))
    {
      goto LABEL_2;
    }
  }

  v31 = *(v0 + 232);
  if (*(v31 + 16))
  {
    v32 = *(v31 + 40);
    sub_22B36149C();
    sub_22B3608FC();
    v33 = sub_22B3614DC();
    v34 = -1 << *(v31 + 32);
    v35 = v33 & ~v34;
    if ((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
    {
      v36 = ~v34;
      while (1)
      {
        v37 = (*(v31 + 48) + 16 * v35);
        v38 = *v37 == v29 && v37[1] == v28;
        if (v38 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v40 = *(v0 + 368);
      v39 = *(v0 + 376);
      v41 = *(v0 + 360);
      v42 = *(v0 + 328);
      v43 = *(v0 + 304);

      v40(v42, v41, v43);
      v44 = sub_22B36050C();
      v45 = sub_22B360D2C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_22B116000, v44, v45, "Notification already processed", v46, 2u);
        MEMORY[0x23188F650](v46, -1, -1);
      }

      v16 = *(v0 + 408);
      v17 = *(v0 + 384);
      v18 = *(v0 + 328);
      v20 = *(v0 + 296);
      v19 = *(v0 + 304);

      v17(v18, v19);
      goto LABEL_7;
    }
  }

LABEL_30:
  v47 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 336), *(v0 + 360), *(v0 + 304));
  v48 = sub_22B36050C();
  v49 = sub_22B360D2C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_22B116000, v48, v49, "Notification not scheduled for dispatch, parsing again until next poll date", v50, 2u);
    MEMORY[0x23188F650](v50, -1, -1);
  }

  v51 = *(v0 + 408);
  v52 = *(v0 + 384);
  v53 = *(v0 + 336);
  v55 = *(v0 + 296);
  v54 = *(v0 + 304);
  v56 = *(v0 + 280);

  v52(v53, v54);
  sub_22B32DF50((v0 + 200), v29, v28);
  v57 = *(v0 + 208);

  *(v0 + 16) = *(v55 + 24);
  v58 = *(v55 + 40);
  v59 = *(v55 + 56);
  v60 = *(v55 + 72);
  *(v0 + 80) = *(v55 + 88);
  *(v0 + 48) = v59;
  *(v0 + 64) = v60;
  *(v0 + 32) = v58;
  sub_22B35DE6C();
  v61 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v62 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v62;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v61;
  v63 = *(v55 + 16);
  v64 = swift_task_alloc();
  *(v0 + 448) = v64;
  *v64 = v0;
  v64[1] = sub_22B25237C;
  v65 = *(v0 + 280);
  v66 = *(v0 + 248);
  v67 = *(v0 + 256);
  v68 = *(v0 + 240);

  return sub_22B25053C(v65, v68, v66, v0 + 88, v63);
}

uint64_t sub_22B2531A4()
{
  v1 = v0[49];
  v2 = v0[32];
  sub_22B17EB2C(v0[30], v0[31]);

  return MEMORY[0x2822009F8](sub_22B2533D8, v2, 0);
}

uint64_t HomeEnergyWindowNotificationsManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B2532AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B253314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B253374(uint64_t a1, uint64_t a2)
{
  EnergyWindow = type metadata accessor for NextEnergyWindow();
  (*(*(EnergyWindow - 8) + 40))(a2, a1, EnergyWindow);
  return a2;
}

uint64_t sub_22B2533DC()
{
  type metadata accessor for HomeEnergyCloudDataManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_28140BD48 = result;
  return result;
}

uint64_t sub_22B253414(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(*(v4 + 16) + 16) || (, sub_22B33B28C(a3, a4), v16 = v15, result = , (v16 & 1) == 0))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v14, v18, v10);

    v19 = sub_22B36050C();
    v20 = sub_22B360D2C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = a1;
      v22 = v21;
      v23 = swift_slowAlloc();
      v36 = a2;
      v24 = v23;
      v38[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22B1A7B20(a3, a4, v38);
      _os_log_impl(&dword_22B116000, v19, v20, "Creating model %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v25 = v24;
      a2 = v36;
      MEMORY[0x23188F650](v25, -1, -1);
      v26 = v22;
      a1 = v35;
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v27 = type metadata accessor for CoreDataCloudKitStack();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v30 = sub_22B20B0A8(a1, a2, a3, a4);

    v31 = sub_22B207EFC();
    v32 = *(v30 + 96);

    [v32 setShouldRefreshAfterSave_];

    swift_beginAccess();
    v33 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_22B33EF8C(v30, v31, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v5 + 16) = v37;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22B25376C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v45 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  swift_beginAccess();
  if (*(*(v4 + 16) + 16) && (, sub_22B33B28C(a3, a4), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = a3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v16, v20, v9);

    v21 = sub_22B36050C();
    v22 = sub_22B360D2C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_22B1A7B20(v19, a4, &v46);
      v25 = v22;
      a3 = v19;
      _os_log_impl(&dword_22B116000, v21, v25, "Model %{public}s already exists", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);

      (*(v10 + 8))(v16, v9);
    }

    else
    {

      (*(v10 + 8))(v16, v9);
      a3 = v19;
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v13, v26, v9);

    v27 = sub_22B36050C();
    v28 = sub_22B360D2C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = a2;
      v31 = a3;
      v32 = v30;
      v46 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22B1A7B20(v31, a4, &v46);
      _os_log_impl(&dword_22B116000, v27, v28, "Creating model %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      a3 = v31;
      a2 = v44;
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    sub_22B253414(v45, a2, a3, a4);
  }

  v34 = *(v5 + 16);
  if (!*(v34 + 16))
  {
    return 0;
  }

  v35 = *(v5 + 16);

  v36 = sub_22B33B28C(a3, a4);
  if (v37)
  {
    v38 = (*(v34 + 56) + 16 * v36);
    v39 = *v38;
    v40 = v38[1];

    v41 = v40;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

uint64_t sub_22B253C28(uint64_t *a1, int a2)
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

uint64_t sub_22B253C70(uint64_t result, int a2, int a3)
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

id sub_22B253CBC()
{
  type metadata accessor for KeyValueStore();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  result = [objc_opt_self() standardUserDefaults];
  v0[4] = result;
  v0[5] = 0;
  qword_28140BD28 = v0;
  return result;
}

uint64_t sub_22B253D1C(void *a1, _UNKNOWN **a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a2;
    v5 = a1;
    v6 = v3[2];
    v3[2] = a1;
    v3[3] = a2;
    swift_unknownObjectRetain_n();
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCAD80]);
    v8 = sub_22B36081C();
    v9 = [v7 initWithStoreIdentifier:v8 type:2];

    v10 = v3[2];
    v4 = &protocol witness table for NSUbiquitousKeyValueStore;
    v3[2] = v9;
    v3[3] = &protocol witness table for NSUbiquitousKeyValueStore;
    v5 = v9;
  }

  swift_unknownObjectRelease();
  type metadata accessor for KVSManager();
  swift_allocObject();
  v11 = sub_22B1CA4D8(v5, v4);
  v12 = v3[5];
  v3[5] = v11;

  return 1;
}

uint64_t sub_22B253E18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22B253E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22B253EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_22B25403C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_22B25425C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F69747265737341;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6974707572726F43;
    }

    else
    {
      v5 = 4411480;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7365636976726553;
    }

    else
    {
      v5 = 0x6F69747265737341;
    }

    if (v4)
    {
      v6 = 0xED0000726F727245;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  v7 = 0x6974707572726F43;
  v8 = 0xEA00000000006E6FLL;
  if (a2 != 2)
  {
    v7 = 4411480;
    v8 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 0x7365636976726553;
    v2 = 0xED0000726F727245;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22B36134C();
  }

  return v11 & 1;
}

uint64_t sub_22B2543B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x6E6F6974636E7546;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x726576726553;
    }

    else
    {
      v5 = 0x74694B64756F6C43;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6174614465726F43;
    }

    else
    {
      v5 = 0x6E6F6974636E7546;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000006C61;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x726576726553;
  if (a2 != 2)
  {
    v8 = 0x74694B64756F6C43;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x6174614465726F43;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22B36134C();
  }

  return v11 & 1;
}

uint64_t sub_22B2544E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "2024-02-07T16:00:00";
  if (a1 > 3u)
  {
    v4 = "ekUtilityTokenRefreshFailed";
    v8 = 0xD000000000000024;
    if (a1 != 6)
    {
      v8 = 0xD000000000000027;
      v4 = "okenRefreshInitiated";
    }

    v5 = "ekCloudKitZoneDeleted";
    v9 = 0xD000000000000023;
    if (a1 != 4)
    {
      v9 = 0xD00000000000001BLL;
      v5 = "calUsageDataFetched";
    }

    v6 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v4 = "ekEnergySiteDeleted";
    if (a1 != 2)
    {
      v4 = "ekCloudKitZoneCreated";
    }

    v5 = "ekEnergySiteCreated";
    if (!a1)
    {
      v5 = "2024-02-07T16:00:00";
    }

    v6 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000015;
    }
  }

  if (v6)
  {
    v10 = v5;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ekUtilityTokenRefreshFailed";
        v2 = 0xD000000000000024;
      }

      else
      {
        v3 = "okenRefreshInitiated";
        v2 = 0xD000000000000027;
      }
    }

    else if (a2 == 4)
    {
      v3 = "ekCloudKitZoneDeleted";
      v2 = 0xD000000000000023;
    }

    else
    {
      v3 = "calUsageDataFetched";
      v2 = 0xD00000000000001BLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = "ekCloudKitZoneCreated";
    }

    else
    {
      v11 = "ekCloudKitZoneDeleted";
    }

    v3 = (v11 - 32);
    v2 = 0xD000000000000015;
  }

  else if (a2)
  {
    v3 = "ekEnergySiteCreated";
  }

  if (v7 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22B36134C();
  }

  return v12 & 1;
}

unint64_t sub_22B2546D4(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  v2 = "2024-02-07T16:00:00";
  v3 = "ekUtilityTokenRefreshFailed";
  v4 = 0xD000000000000024;
  if (a1 != 6)
  {
    v4 = 0xD000000000000027;
    v3 = "okenRefreshInitiated";
  }

  v5 = "ekCloudKitZoneDeleted";
  v6 = 0xD000000000000023;
  if (a1 != 4)
  {
    v6 = 0xD00000000000001BLL;
    v5 = "calUsageDataFetched";
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "ekEnergySiteDeleted";
  if (a1 != 2)
  {
    v7 = "ekCloudKitZoneCreated";
  }

  if (a1)
  {
    v2 = "ekEnergySiteCreated";
  }

  if (a1 > 1u)
  {
    v2 = v7;
  }

  else
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 3u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v4;
  }

  if (a1 <= 3u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v3;
  }

  v10 = sub_22B2555D4(2uLL, v8, v9 | 0x8000000000000000);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x23188E200](v10, v12, v14, v16);
  v19 = v18;

  MEMORY[0x23188E270](v17, v19);

  return 0xD000000000000015;
}

uint64_t sub_22B254850()
{
  sub_22B3608FC();
}

uint64_t sub_22B254958()
{
  sub_22B36149C();
  sub_22B3608FC();

  return sub_22B3614DC();
}

uint64_t sub_22B254A74()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35DE8C();
  sub_22B35DE3C();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v65 = v10;
  sub_22B33F8B4(v9, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v12 = v65;
  v13 = *(v1 + 136);
  v14 = *(v1 + 168);
  v62 = *(v1 + 152);
  v63 = v14;
  v64 = *(v1 + 184);
  v15 = *(v1 + 72);
  v16 = *(v1 + 104);
  v58 = *(v1 + 88);
  v59 = v16;
  v60 = *(v1 + 120);
  v61 = v13;
  v17 = *(v1 + 40);
  v54 = *(v1 + 24);
  v55 = v17;
  v56 = *(v1 + 56);
  v57 = v15;
  v18 = *(v1 + 136);
  v19 = *(v1 + 168);
  v73 = *(v1 + 152);
  v74 = v19;
  v75 = *(v1 + 184);
  v20 = *(v1 + 72);
  v21 = *(v1 + 104);
  v69 = *(v1 + 88);
  v70 = v21;
  v71 = *(v1 + 120);
  v72 = v18;
  v22 = *(v1 + 40);
  v65 = *(v1 + 24);
  v66 = v22;
  v67 = *(v1 + 56);
  v68 = v20;
  if (sub_22B2556D0(&v65) == 1)
  {
    return v12;
  }

  if (*(&v66 + 1))
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    sub_22B255794(&v54, v52);

    v24 = sub_22B36081C();

    v25 = [v23 initWithString_];

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    sub_22B33F8B4(v25, 0x444964697267, 0xE600000000000000, v26);
    v12 = *&v52[0];
  }

  else
  {
    v52[8] = v62;
    v52[9] = v63;
    v53 = v64;
    v52[4] = v58;
    v52[5] = v59;
    v52[6] = v60;
    v52[7] = v61;
    v52[0] = v54;
    v52[1] = v55;
    v52[2] = v56;
    v52[3] = v57;
    sub_22B2556F4(v52, &v51);
  }

  if (*(&v67 + 1))
  {
    v27 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v28 = sub_22B36081C();

    v29 = [v27 initWithString_];

    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    sub_22B33F8B4(v29, 0xD000000000000010, 0x800000022B36D3E0, v30);
    v12 = *&v52[0];
  }

  if (v68 != 2)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    sub_22B33F8B4(v31, 0xD000000000000013, 0x800000022B36D3C0, v32);
    v12 = *&v52[0];
  }

  if (v69)
  {
    v33 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v34 = sub_22B36081C();

    v35 = [v33 initWithString_];

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    sub_22B33F8B4(v35, 0x497974696C697475, 0xE900000000000044, v36);
    v12 = *&v52[0];
  }

  if (v70)
  {
    if (v71)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    sub_22B33F8B4(v37, 0xD000000000000013, 0x800000022B36D3A0, v38);
    v12 = *&v52[0];
    if (v71)
    {
LABEL_13:
      if (BYTE8(v65))
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *&v52[0] = v12;
  sub_22B33F8B4(v39, 0x79636E6574616CLL, 0xE700000000000000, v40);
  v12 = *&v52[0];
  if (BYTE8(v65))
  {
LABEL_14:
    if (v73)
    {
      goto LABEL_15;
    }

LABEL_21:
    v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    sub_22B33F8B4(v43, 0xD000000000000011, 0x800000022B36D360, v44);
    v12 = *&v52[0];
    if (v74)
    {
LABEL_16:
      sub_22B25572C(&v54);
      if (v75)
      {
        return v12;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_20:
  v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *&v52[0] = v12;
  sub_22B33F8B4(v41, 0xD000000000000010, 0x800000022B36D380, v42);
  v12 = *&v52[0];
  if ((v73 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v74)
  {
    goto LABEL_16;
  }

LABEL_22:
  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *&v52[0] = v12;
  sub_22B33F8B4(v45, 0xD000000000000013, 0x800000022B36D340, v46);
  sub_22B25572C(&v54);
  v12 = *&v52[0];
  if ((v75 & 1) == 0)
  {
LABEL_23:
    v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    sub_22B33F8B4(v47, 0xD00000000000001BLL, 0x800000022B36D320, v48);
    return *&v52[0];
  }

  return v12;
}

uint64_t sub_22B25512C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 168);
  v7[8] = *(v0 + 152);
  v7[9] = v2;
  v8 = *(v0 + 184);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v7[4] = *(v0 + 88);
  v7[5] = v4;
  v7[6] = *(v0 + 120);
  v7[7] = v1;
  v5 = *(v0 + 40);
  v7[0] = *(v0 + 24);
  v7[1] = v5;
  v7[2] = *(v0 + 56);
  v7[3] = v3;
  sub_22B25572C(v7);
  return swift_deallocClassInstance();
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_22B255204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
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

uint64_t sub_22B255260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnergyKitAnalyticsEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyKitAnalyticsEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22B255468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B255684();
  *a2 = result;
  return result;
}

void sub_22B255498(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = "2024-02-07T16:00:00";
  v5 = "ekUtilityTokenRefreshFailed";
  v6 = 0xD000000000000024;
  if (v3 != 6)
  {
    v6 = 0xD000000000000027;
    v5 = "okenRefreshInitiated";
  }

  v7 = "ekCloudKitZoneDeleted";
  v8 = 0xD000000000000023;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001BLL;
    v7 = "calUsageDataFetched";
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "ekEnergySiteDeleted";
  if (v3 != 2)
  {
    v9 = "ekCloudKitZoneCreated";
  }

  if (*v1)
  {
    v4 = "ekEnergySiteCreated";
  }

  if (*v1 > 1u)
  {
    v2 = 0xD000000000000015;
    v4 = v9;
  }

  if (*v1 > 3u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_22B255580()
{
  result = qword_27D8BABA8;
  if (!qword_27D8BABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BABA8);
  }

  return result;
}

unint64_t sub_22B2555D4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_22B36092C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_22B3609FC();
}

uint64_t sub_22B255684()
{
  v0 = sub_22B3612FC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B2556D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B25572C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACF0, &qword_22B3662D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B255794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACF0, &qword_22B3662D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B255804()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v11 = v3[2];
  v11(v9, v1 + v10, v2);
  if (qword_28140AC90 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_28140BD88);
  v12 = sub_22B35DDFC();
  v13 = v3[1];
  v13(v9, v2);
  if (v12)
  {
    if (qword_28140AB18 != -1)
    {
      swift_once();
    }

    v14 = (v11)(v7, v1 + v10, v2);
    v15 = MEMORY[0x23188EEB0](v14);
    sub_22B1AC99C(v7, 0xD000000000000024, 0x800000022B36B9F0);
    objc_autoreleasePoolPop(v15);
    v13(v7, v2);
  }

  type metadata accessor for Reachability();
  swift_allocObject();
  v16 = sub_22B1B27C0();
  v17 = *(v1 + 112);
  *(v1 + 112) = v16;

  v16[5] = &off_283EFD478;
  swift_unknownObjectWeakAssign();
  v18 = *(v1 + 112);

  sub_22B1B2168();
}

uint64_t sub_22B255A78()
{
  v0 = type metadata accessor for HomeEnergyDataRefresh();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_22B2561BC();
  qword_28140BD80 = v3;
  return result;
}

uint64_t sub_22B255AB8()
{
  v0 = sub_22B35DE9C();
  __swift_allocate_value_buffer(v0, qword_28140BD88);
  __swift_project_value_buffer(v0, qword_28140BD88);
  return sub_22B35DD0C();
}

id sub_22B255B0C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_28140AC80 = result;
  return result;
}

void sub_22B255B48(uint64_t a1)
{
  v3 = sub_22B35DE9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  if (qword_28140AC78 != -1)
  {
    swift_once();
  }

  v9 = qword_28140AC80;
  (*(v4 + 16))(v7, v1 + v8, v3);
  v10 = sub_22B35DDDC();
  (*(v4 + 8))(v7, v3);
  v11 = sub_22B36081C();
  [v9 setObject:v10 forKey:v11];
}

uint64_t sub_22B255CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_22B35DE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_22B1B05B4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22B123284(v8, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B35DE6C();
    sub_22B35F62C();
    sub_22B35DDCC();
    (*(v10 + 8))(v16, v9);
  }

  else
  {
    v31 = v13;
    v20 = *(v10 + 32);
    v34 = v10 + 32;
    v35 = a2;
    v33 = v20;
    v20(v19, v8, v9);
    v21 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
    swift_beginAccess();
    v22 = *(v10 + 16);
    v32 = v2;
    v23 = v2 + v21;
    v24 = v22;
    v22(v16, v23, v9);
    v25 = sub_22B35DDFC();
    v26 = *(v10 + 8);
    v26(v16, v9);
    if ((v25 & 1) == 0)
    {
      v24(v16, v32 + v21, v9);
      v27 = v31;
      sub_22B35DE6C();
      v28 = sub_22B35DDFC();
      v26(v27, v9);
      v26(v16, v9);
      if ((v28 & 1) == 0)
      {
        v26(v19, v9);
        v29 = 1;
        a2 = v35;
        return (*(v10 + 56))(a2, v29, 1, v9);
      }
    }

    a2 = v35;
    v33(v35, v19, v9);
  }

  v29 = 0;
  return (*(v10 + 56))(a2, v29, 1, v9);
}

uint64_t sub_22B256034()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  v3 = sub_22B35DE9C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HomeEnergyDataRefresh()
{
  result = qword_28140AC68;
  if (!qword_28140AC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B256108()
{
  result = sub_22B35DE9C();
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

uint64_t sub_22B2561BC()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  swift_defaultActor_initialize();
  type metadata accessor for Reachability();
  swift_allocObject();
  *(v0 + 112) = sub_22B1B27C0();
  *(v0 + 120) = 1;
  if (qword_28140AC78 != -1)
  {
    swift_once();
  }

  v11 = qword_28140AC80;
  v12 = sub_22B36081C();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v14 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    v15 = swift_dynamicCast();
    (*(v3 + 56))(v10, v15 ^ 1u, 1, v2);
    if ((*(v3 + 48))(v10, 1, v2) != 1)
    {
      (*(v3 + 32))(v1 + v14, v10, v2);
      goto LABEL_12;
    }
  }

  else
  {
    sub_22B123284(v20, &unk_27D8BA950, &qword_22B364940);
    (*(v3 + 56))(v10, 1, 1, v2);
  }

  sub_22B35DE6C();
  v16 = [objc_opt_self() processInfo];
  [v16 systemUptime];

  sub_22B35DE1C();
  (*(v3 + 8))(v6, v2);
  if ((*(v3 + 48))(v10, 1, v2) != 1)
  {
    sub_22B123284(v10, &qword_27D8BA340, &qword_22B363FB0);
  }

LABEL_12:
  *(v1 + OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_missedCacheRefresh) = 0;
  return v1;
}

uint64_t sub_22B256534()
{
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = sub_22B35DE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  if (*(v0 + 120) == 1)
  {

LABEL_4:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v1, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v6, v18, v1);
    v19 = sub_22B36050C();
    v20 = sub_22B360D2C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "Cache refresh will be skipped because network is offline", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  v17 = sub_22B36134C();

  if (v17)
  {
    goto LABEL_4;
  }

  v23 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v10 + 16))(v16, v0 + v23, v9);
  sub_22B35DE6C();
  LOBYTE(v23) = sub_22B35DDFC();
  v24 = *(v10 + 8);
  v24(v14, v9);
  result = (v24)(v16, v9);
  if ((v23 & 1) != 0 || *(v0 + OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_missedCacheRefresh) == 1)
  {
    v34 = v0;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v1, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v8, v25, v1);
    v26 = sub_22B36050C();
    v27 = sub_22B360D2C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v33 = v24;
      v29 = v28;
      *v28 = 0;
      _os_log_impl(&dword_22B116000, v26, v27, "Cache refresh needed due to network coming online", v28, 2u);
      v30 = v29;
      v24 = v33;
      MEMORY[0x23188F650](v30, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
    v31 = v34;
    if (qword_28140AB18 != -1)
    {
      swift_once();
    }

    sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);
    v32 = *(v31 + 112);

    sub_22B1B23B0();

    *(*(v31 + 112) + 40) = 0;
    swift_unknownObjectWeakAssign();
    sub_22B35DE6C();
    sub_22B35DE0C();
    v24(v14, v9);
    sub_22B255B48(v16);
    v24(v16, v9);
    return sub_22B255804();
  }

  return result;
}

uint64_t sub_22B256A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 536) = v8;
  *(v9 + 528) = v60;
  *(v9 + 520) = v59;
  *(v9 + 504) = v58;
  *(v9 + 488) = a7;
  *(v9 + 496) = a8;
  *(v9 + 472) = a5;
  *(v9 + 480) = a6;
  *(v9 + 456) = a3;
  *(v9 + 464) = a4;
  *(v9 + 440) = a1;
  *(v9 + 448) = a2;
  v10 = sub_22B35FA9C();
  *(v9 + 544) = v10;
  v11 = *(v10 - 8);
  *(v9 + 552) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 560) = swift_task_alloc();
  v13 = sub_22B35FA4C();
  *(v9 + 568) = v13;
  v14 = *(v13 - 8);
  *(v9 + 576) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 584) = swift_task_alloc();
  v16 = sub_22B35F9FC();
  *(v9 + 592) = v16;
  v17 = *(v16 - 8);
  *(v9 + 600) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();
  v19 = sub_22B35F9DC();
  *(v9 + 624) = v19;
  v20 = *(v19 - 8);
  *(v9 + 632) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 640) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA350, &unk_22B364020);
  *(v9 + 648) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  v24 = sub_22B35FC0C();
  *(v9 + 688) = v24;
  v25 = *(v24 - 8);
  *(v9 + 696) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 704) = swift_task_alloc();
  v27 = sub_22B35DF9C();
  *(v9 + 712) = v27;
  v28 = *(v27 - 8);
  *(v9 + 720) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 728) = swift_task_alloc();
  v30 = sub_22B35E04C();
  *(v9 + 736) = v30;
  v31 = *(v30 - 8);
  *(v9 + 744) = v31;
  v32 = *(v31 + 64) + 15;
  *(v9 + 752) = swift_task_alloc();
  v33 = sub_22B35F84C();
  *(v9 + 760) = v33;
  v34 = *(v33 - 8);
  *(v9 + 768) = v34;
  v35 = *(v34 + 64) + 15;
  *(v9 + 776) = swift_task_alloc();
  v36 = *(*(sub_22B3603AC() - 8) + 64) + 15;
  *(v9 + 784) = swift_task_alloc();
  v37 = sub_22B35DF1C();
  *(v9 + 792) = v37;
  v38 = *(v37 - 8);
  *(v9 + 800) = v38;
  v39 = *(v38 + 64) + 15;
  *(v9 + 808) = swift_task_alloc();
  *(v9 + 816) = swift_task_alloc();
  *(v9 + 824) = swift_task_alloc();
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();
  v41 = sub_22B35E0BC();
  *(v9 + 848) = v41;
  v42 = *(v41 - 8);
  *(v9 + 856) = v42;
  v43 = *(v42 + 64) + 15;
  *(v9 + 864) = swift_task_alloc();
  *(v9 + 872) = swift_task_alloc();
  *(v9 + 880) = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v9 + 888) = swift_task_alloc();
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  *(v9 + 920) = swift_task_alloc();
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  v45 = sub_22B36052C();
  *(v9 + 944) = v45;
  v46 = *(v45 - 8);
  *(v9 + 952) = v46;
  v47 = *(v46 + 64) + 15;
  *(v9 + 960) = swift_task_alloc();
  *(v9 + 968) = swift_task_alloc();
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  v48 = sub_22B35F7CC();
  *(v9 + 1000) = v48;
  v49 = *(v48 - 8);
  *(v9 + 1008) = v49;
  v50 = *(v49 + 64) + 15;
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  *(v9 + 1032) = swift_task_alloc();
  v51 = *(type metadata accessor for CDUsagePointRecords() - 8);
  *(v9 + 1040) = v51;
  v52 = *(v51 + 64) + 15;
  *(v9 + 1048) = swift_task_alloc();
  *(v9 + 1056) = swift_task_alloc();
  v53 = sub_22B35DE9C();
  *(v9 + 1064) = v53;
  v54 = *(v53 - 8);
  *(v9 + 1072) = v54;
  v55 = *(v54 + 64) + 15;
  *(v9 + 1080) = swift_task_alloc();
  *(v9 + 1088) = swift_task_alloc();
  *(v9 + 1096) = swift_task_alloc();
  *(v9 + 1104) = swift_task_alloc();
  *(v9 + 1112) = swift_task_alloc();
  *(v9 + 1120) = swift_task_alloc();
  *(v9 + 1128) = swift_task_alloc();
  *(v9 + 1136) = swift_task_alloc();
  *(v9 + 1144) = swift_task_alloc();
  *(v9 + 1152) = swift_task_alloc();
  *(v9 + 1160) = swift_task_alloc();
  *(v9 + 1168) = swift_task_alloc();
  *(v9 + 1176) = swift_task_alloc();
  *(v9 + 1184) = swift_task_alloc();
  *(v9 + 1192) = swift_task_alloc();
  *(v9 + 1200) = swift_task_alloc();
  *(v9 + 1208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2572A8, v8, 0);
}

uint64_t sub_22B2572A8()
{
  if (sub_22B35EEBC())
  {
    v1 = swift_task_alloc();
    v0[152] = v1;
    *v1 = v0;
    v1[1] = sub_22B2576B4;
    v2 = v0[67];
    v4 = v0[55];
    v3 = v0[56];

    return sub_22B22250C(v4, v3, 0, 0);
  }

  else
  {
    v6 = v0[151];
    v7 = v0[150];
    v8 = v0[149];
    v9 = v0[148];
    v10 = v0[147];
    v11 = v0[146];
    v12 = v0[145];
    v13 = v0[144];
    v14 = v0[143];
    v15 = v0[142];
    v17 = v0[141];
    v18 = v0[140];
    v19 = v0[139];
    v20 = v0[138];
    v21 = v0[137];
    v22 = v0[136];
    v23 = v0[135];
    v24 = v0[132];
    v25 = v0[131];
    v26 = v0[129];
    v27 = v0[128];
    v28 = v0[127];
    v29 = v0[124];
    v30 = v0[123];
    v31 = v0[122];
    v32 = v0[121];
    v33 = v0[120];
    v34 = v0[117];
    v35 = v0[116];
    v36 = v0[115];
    v37 = v0[114];
    v38 = v0[113];
    v39 = v0[112];
    v40 = v0[111];
    v41 = v0[110];
    v42 = v0[109];
    v43 = v0[108];
    v44 = v0[105];
    v45 = v0[104];
    v46 = v0[103];
    v47 = v0[102];
    v48 = v0[101];
    v49 = v0[98];
    v50 = v0[97];
    v51 = v0[94];
    v52 = v0[91];
    v53 = v0[88];
    v54 = v0[85];
    v55 = v0[84];
    v56 = v0[83];
    v57 = v0[82];
    v58 = v0[80];
    v59 = v0[77];
    v60 = v0[76];
    v61 = v0[73];
    v62 = v0[70];

    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_22B2576B4(uint64_t a1)
{
  v2 = *(*v1 + 1216);
  v3 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 1224) = a1;

  return MEMORY[0x2822009F8](sub_22B2577CC, v3, 0);
}

uint64_t sub_22B2577CC()
{
  v1 = v0[153];
  if (!v1)
  {
    sub_22B134CDC();
    swift_allocError();
    *v23 = 10;
    swift_willThrow();
LABEL_11:
    v25 = v0[151];
    v26 = v0[150];
    v27 = v0[149];
    v28 = v0[148];
    v29 = v0[147];
    v30 = v0[146];
    v31 = v0[145];
    v32 = v0[144];
    v33 = v0[143];
    v34 = v0[142];
    v93 = v0[141];
    v94 = v0[140];
    v95 = v0[139];
    v96 = v0[138];
    v97 = v0[137];
    v98 = v0[136];
    v99 = v0[135];
    v100 = v0[132];
    v101 = v0[131];
    v102 = v0[129];
    v103 = v0[128];
    v104 = v0[127];
    v105 = v0[124];
    v106 = v0[123];
    v107 = v0[122];
    v108 = v0[121];
    v109 = v0[120];
    v110 = v0[117];
    v111 = v0[116];
    v112 = v0[115];
    v113 = v0[114];
    v114 = v0[113];
    v115 = v0[112];
    v116 = v0[111];
    v117 = v0[110];
    v118 = v0[109];
    v119 = v0[108];
    v120 = v0[105];
    v121 = v0[104];
    v122 = v0[103];
    v123 = v0[102];
    v124 = v0[101];
    v125 = v0[98];
    v126 = v0[97];
    v127 = v0[94];
    v128 = v0[91];
    v129 = v0[88];
    v130 = v0[85];
    v131 = v0[84];
    v132 = v0[83];
    v133 = v0[82];
    v134 = v0[80];
    v135 = v0[77];
    v136 = v0[76];
    v139 = v0[73];
    v141 = v0[70];

    v35 = v0[1];

    return v35(0);
  }

  v2 = v1;
  v3 = sub_22B35F12C();
  v5 = v4;

  v0[154] = v3;
  v0[155] = v5;
  if (!v5)
  {
LABEL_10:
    sub_22B134CDC();
    swift_allocError();
    *v24 = 12;
    swift_willThrow();

    goto LABEL_11;
  }

  v0[156] = sub_22B35F43C();
  v0[157] = v6;
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = v0[151];
  v8 = v0[150];
  v9 = v0[149];
  v10 = v0[134];
  v11 = v0[133];
  v12 = v0[64];
  sub_22B35DE8C();
  sub_22B35F5CC();
  sub_22B35DDCC();
  v13 = *(v10 + 16);
  v0[158] = v13;
  v0[159] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v9, v7, v11);
  if (v12 == 4)
  {
    v14 = swift_task_alloc();
    v0[160] = v14;
    *v14 = v0;
    v14[1] = sub_22B2582C8;
    v15 = v0[67];
    v16 = v0[60];
    v17 = v0[61];
    v18 = v0[58];
    v19 = v0[59];
    v20 = v0[56];
    v21 = v0[57];
    v22 = v0[55];
    v145 = v0[62];
    v146 = v0[63];

    JUMPOUT(0x22B2806F4);
  }

  v143 = v13;
  v37 = v0[107];
  v38 = v0[106];
  v39 = v0[105];
  sub_22B35F41C();
  sub_22B35E05C();

  v40 = *(v37 + 48);
  v0[170] = v40;
  v0[171] = (v37 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v41 = v40(v39, 1, v38);
  v42 = v0[151];
  if (v41 == 1)
  {
    v43 = v0[150];
    v44 = v0[149];
    v45 = v0[134];
    v46 = v0[133];
    v47 = v0[105];

    sub_22B123284(v47, &unk_27D8BA080, &unk_22B364280);
    sub_22B134CDC();
    swift_allocError();
    *v48 = 17;
    swift_willThrow();

    v49 = *(v45 + 8);
    v49(v44, v46);
    v49(v43, v46);
    v49(v42, v46);
    goto LABEL_11;
  }

  v50 = v0[148];
  v51 = v0[110];
  v52 = v0[107];
  v53 = v0[106];
  v54 = v0[105];
  v55 = v0[58];
  v56 = *(v52 + 32);
  v0[172] = v56;
  v0[173] = (v52 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v56(v51, v54, v53);
  v57 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v0[174] = v57;
  v58 = sub_22B36081C();
  [v57 setDateFormat_];

  v59 = sub_22B35E09C();
  [v57 setTimeZone_];

  sub_22B35F5CC();
  sub_22B35DDCC();
  if (v55)
  {
    v140 = v0[60];
    v60 = v0[57];
    v61 = v0[58];
    v62 = sub_22B36081C();
    v63 = [v57 dateFromString_];

    if (v63)
    {
      v64 = v0[150];
      v137 = v0[147];
      v65 = v0[146];
      v66 = v0[134];
      v67 = v0[133];
      v68 = v0[115];
      sub_22B35DE5C();

      v142 = *(v66 + 8);
      v142(v64, v67);
      v69 = *(v66 + 32);
      v69(v68, v65, v67);
      (*(v66 + 56))(v68, 0, 1, v67);
      v69(v137, v68, v67);
    }

    else
    {
      v70 = v0[151];
      v71 = v0[150];
      v72 = v0[147];
      v73 = v0[134];
      v74 = v0[133];
      v75 = v0[115];
      (*(v73 + 56))(v75, 1, 1, v74);
      sub_22B35F5CC();
      sub_22B35DDCC();
      v142 = *(v73 + 8);
      v142(v71, v74);
      if ((*(v73 + 48))(v75, 1, v74) != 1)
      {
        sub_22B123284(v0[115], &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    v76 = v0[59];
    v138 = *(v0[134] + 32);
    v138(v0[150], v0[147], v0[133]);
    v77 = sub_22B36081C();
    v78 = [v57 dateFromString_];

    if (v78)
    {
      v79 = v0[149];
      v80 = v0[145];
      v81 = v0[134];
      v82 = v0[133];
      sub_22B35DE5C();

      v83 = v142;
      v142(v79, v82);
    }

    else
    {
      v84 = v0[151];
      v85 = v0[145];
      v86 = v0[133];
      v87 = v0[134] + 8;
      v83 = v142;
      v142(v0[149], v86);
      v143(v85, v84, v86);
    }

    v88 = v0[148];
    v89 = v0[146];
    v90 = v0[133];
    v138(v0[149], v0[145], v90);
    sub_22B35F5CC();
    sub_22B35DDCC();
    v83(v88, v90);
    v138(v88, v89, v90);
  }

  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v91 = qword_28140BDD0;
  v0[175] = qword_28140BDD0;
  v0[176] = sub_22B35F04C();
  v0[177] = v92;

  return MEMORY[0x2822009F8](sub_22B259D6C, v91, 0);
}

uint64_t sub_22B2582C8(char a1)
{
  v3 = *(*v2 + 1280);
  v4 = *v2;
  *(v4 + 2036) = a1;
  *(v4 + 1288) = v1;

  if (!v1)
  {
    v8 = swift_task_alloc();
    *(v4 + 1296) = v8;
    *v8 = v4;
    v8[1] = sub_22B2584A8;
    v9 = *(v4 + 536);
    v10 = *(v4 + 480);
    v11 = *(v4 + 488);
    v12 = *(v4 + 464);
    v13 = *(v4 + 472);
    v14 = *(v4 + 448);
    v15 = *(v4 + 456);
    v16 = *(v4 + 440);
    v19 = *(v4 + 496);
    v20 = *(v4 + 504);

    JUMPOUT(0x22B2806F4);
  }

  v5 = *(v4 + 1256);
  v6 = *(v4 + 1240);
  v7 = *(v4 + 536);

  return MEMORY[0x2822009F8](sub_22B2585E0, v7, 0);
}

uint64_t sub_22B2584A8(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1296);
  v11 = *v2;
  *(v3 + 2037) = a1;
  *(v3 + 1304) = v1;

  if (v1)
  {
    v5 = *(v3 + 1256);
    v6 = *(v3 + 1240);
    v7 = *(v3 + 536);

    v8 = sub_22B258B18;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 536);
    v8 = sub_22B2589C0;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22B2585E0()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);
  v65 = *(v0 + 1288);
  v7 = *(v0 + 1208);
  v8 = *(v0 + 1200);
  v9 = *(v0 + 1192);
  v10 = *(v0 + 1184);
  v11 = *(v0 + 1176);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  v14 = *(v0 + 1152);
  v15 = *(v0 + 1144);
  v16 = *(v0 + 1136);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1112);
  v22 = *(v0 + 1104);
  v23 = *(v0 + 1096);
  v24 = *(v0 + 1088);
  v25 = *(v0 + 1080);
  v26 = *(v0 + 1056);
  v27 = *(v0 + 1048);
  v28 = *(v0 + 1032);
  v29 = *(v0 + 1024);
  v30 = *(v0 + 1016);
  v31 = *(v0 + 992);
  v32 = *(v0 + 984);
  v33 = *(v0 + 976);
  v34 = *(v0 + 968);
  v35 = *(v0 + 960);
  v36 = *(v0 + 936);
  v37 = *(v0 + 928);
  v38 = *(v0 + 920);
  v39 = *(v0 + 912);
  v40 = *(v0 + 904);
  v41 = *(v0 + 896);
  v42 = *(v0 + 888);
  v43 = *(v0 + 880);
  v44 = *(v0 + 872);
  v45 = *(v0 + 864);
  v46 = *(v0 + 840);
  v47 = *(v0 + 832);
  v48 = *(v0 + 824);
  v49 = *(v0 + 816);
  v50 = *(v0 + 808);
  v51 = *(v0 + 784);
  v52 = *(v0 + 776);
  v53 = *(v0 + 752);
  v54 = *(v0 + 728);
  v55 = *(v0 + 704);
  v56 = *(v0 + 680);
  v57 = *(v0 + 672);
  v58 = *(v0 + 664);
  v59 = *(v0 + 656);
  v60 = *(v0 + 640);
  v61 = *(v0 + 616);
  v62 = *(v0 + 608);
  v63 = *(v0 + 584);
  v64 = *(v0 + 560);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_22B2589C0()
{
  if (qword_2814096B8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCE8;
  *(v0 + 1312) = qword_28140BCE8;

  return MEMORY[0x2822009F8](sub_22B258A58, v1, 0);
}

uint64_t sub_22B258A58()
{
  v1 = v0[164];
  v2 = v0[163];
  sub_22B32C2B8(v0[154], v0[155], v0[156], v0[157], 0, 0);
  v0[165] = v3;
  v0[166] = v2;
  v4 = v0[157];
  v5 = v0[155];
  v6 = v0[67];

  if (v2)
  {
    v7 = sub_22B260614;
  }

  else
  {
    v7 = sub_22B258EF8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B258B18()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);
  v65 = *(v0 + 1304);
  v7 = *(v0 + 1208);
  v8 = *(v0 + 1200);
  v9 = *(v0 + 1192);
  v10 = *(v0 + 1184);
  v11 = *(v0 + 1176);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  v14 = *(v0 + 1152);
  v15 = *(v0 + 1144);
  v16 = *(v0 + 1136);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1112);
  v22 = *(v0 + 1104);
  v23 = *(v0 + 1096);
  v24 = *(v0 + 1088);
  v25 = *(v0 + 1080);
  v26 = *(v0 + 1056);
  v27 = *(v0 + 1048);
  v28 = *(v0 + 1032);
  v29 = *(v0 + 1024);
  v30 = *(v0 + 1016);
  v31 = *(v0 + 992);
  v32 = *(v0 + 984);
  v33 = *(v0 + 976);
  v34 = *(v0 + 968);
  v35 = *(v0 + 960);
  v36 = *(v0 + 936);
  v37 = *(v0 + 928);
  v38 = *(v0 + 920);
  v39 = *(v0 + 912);
  v40 = *(v0 + 904);
  v41 = *(v0 + 896);
  v42 = *(v0 + 888);
  v43 = *(v0 + 880);
  v44 = *(v0 + 872);
  v45 = *(v0 + 864);
  v46 = *(v0 + 840);
  v47 = *(v0 + 832);
  v48 = *(v0 + 824);
  v49 = *(v0 + 816);
  v50 = *(v0 + 808);
  v51 = *(v0 + 784);
  v52 = *(v0 + 776);
  v53 = *(v0 + 752);
  v54 = *(v0 + 728);
  v55 = *(v0 + 704);
  v56 = *(v0 + 680);
  v57 = *(v0 + 672);
  v58 = *(v0 + 664);
  v59 = *(v0 + 656);
  v60 = *(v0 + 640);
  v61 = *(v0 + 616);
  v62 = *(v0 + 608);
  v63 = *(v0 + 584);
  v64 = *(v0 + 560);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_22B258EF8()
{
  v125 = v0;
  v1 = *(v0 + 1320);
  if (v1)
  {
    v113 = *(v1 + 16);
    if (v113)
    {
      v2 = 0;
      v109 = *(v0 + 1040);
      v111 = *(v0 + 1056);
      v107 = v1 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v103 = *(v0 + 1008);
      v3 = MEMORY[0x277D84F90];
      v105 = *(v0 + 1320);
      while (v2 < *(v1 + 16))
      {
        v4 = *(v0 + 1056);
        sub_22B23E004(v107 + *(v109 + 72) * v2, v4);
        v5 = *(v111 + 32);

        sub_22B26DB98(v4);
        v6 = *(v5 + 16);
        if (v6)
        {
          v116 = v2;
          v7 = v5 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
          v119 = *(v103 + 16);
          v121 = *(v103 + 72);
          do
          {
            v8 = *(v0 + 1032);
            v9 = *(v0 + 1000);
            v119(v8, v7, v9);
            v10 = sub_22B35F75C();
            v12 = v11;
            (*(v103 + 8))(v8, v9);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_22B32CD20(0, *(v3 + 2) + 1, 1, v3);
            }

            v14 = *(v3 + 2);
            v13 = *(v3 + 3);
            if (v14 >= v13 >> 1)
            {
              v3 = sub_22B32CD20((v13 > 1), v14 + 1, 1, v3);
            }

            *(v3 + 2) = v14 + 1;
            v15 = &v3[16 * v14];
            *(v15 + 4) = v10;
            *(v15 + 5) = v12;
            v7 += v121;
            --v6;
          }

          while (v6);

          v1 = v105;
          v2 = v116;
        }

        else
        {
        }

        if (++v2 == v113)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
LABEL_19:
      *(v0 + 1336) = v3;

      if (qword_28140A0C8 == -1)
      {
        goto LABEL_20;
      }
    }

    swift_once();
LABEL_20:
    v34 = *(v0 + 992);
    v35 = *(v0 + 952);
    v36 = *(v0 + 944);
    v37 = *(v0 + 448);
    v38 = __swift_project_value_buffer(v36, qword_28140BD10);
    swift_beginAccess();
    (*(v35 + 16))(v34, v38, v36);

    v39 = sub_22B36050C();
    v40 = sub_22B360D2C();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 992);
    v43 = *(v0 + 952);
    v44 = *(v0 + 944);
    if (v41)
    {
      v46 = *(v0 + 440);
      v45 = *(v0 + 448);
      v123 = *(v0 + 992);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v124[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_22B1A7B20(v46, v45, v124);
      *(v47 + 12) = 2080;

      v50 = MEMORY[0x23188E390](v49, MEMORY[0x277D837D0]);
      v52 = v51;

      v53 = sub_22B1A7B20(v50, v52, v124);

      *(v47 + 14) = v53;
      _os_log_impl(&dword_22B116000, v39, v40, "[MOCK GENERATOR] Will refreshTariffProfiles\n%s: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v48, -1, -1);
      MEMORY[0x23188F650](v47, -1, -1);

      (*(v43 + 8))(v123, v44);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v54 = v0;
    v55 = *(v0 + 1272);
    v56 = *(v0 + 1264);
    v57 = *(v0 + 1192);
    v58 = *(v0 + 1072);
    v59 = v54[133];
    v60 = v54[117];
    v61 = v54[116];
    v56(v60, v57, v59);
    v62 = *(v58 + 56);
    v62(v60, 0, 1, v59);

    sub_22B35F5BC();
    sub_22B35DDCC();
    v62(v61, 0, 1, v59);
    v63 = swift_task_alloc();
    v54[168] = v63;
    *v63 = v54;
    v63[1] = sub_22B2597CC;
    v64 = v54[117];
    v65 = v54[116];
    v66 = v54[56];
    v67 = v54[55];

    return sub_22B2263A0(v67, v66, v3, v64, v65);
  }

  v16 = *(v0 + 1208);
  v17 = *(v0 + 1200);
  v18 = *(v0 + 1192);
  v19 = *(v0 + 1072);
  v20 = *(v0 + 1064);

  v21 = *(v19 + 8);
  v21(v18, v20);
  v21(v17, v20);
  v21(v16, v20);
  v22 = *(v0 + 1208);
  v23 = *(v0 + 1200);
  v24 = *(v0 + 1192);
  v25 = *(v0 + 1184);
  v26 = *(v0 + 1176);
  v27 = *(v0 + 1168);
  v28 = *(v0 + 1160);
  v29 = *(v0 + 1152);
  v30 = *(v0 + 1144);
  v31 = *(v0 + 1136);
  v68 = *(v0 + 1128);
  v69 = *(v0 + 1120);
  v70 = *(v0 + 1112);
  v71 = *(v0 + 1104);
  v72 = *(v0 + 1096);
  v73 = *(v0 + 1088);
  v74 = *(v0 + 1080);
  v75 = *(v0 + 1056);
  v76 = *(v0 + 1048);
  v77 = *(v0 + 1032);
  v78 = *(v0 + 1024);
  v79 = *(v0 + 1016);
  v80 = *(v0 + 992);
  v81 = *(v0 + 984);
  v82 = *(v0 + 976);
  v83 = *(v0 + 968);
  v84 = *(v0 + 960);
  v85 = *(v0 + 936);
  v86 = *(v0 + 928);
  v87 = *(v0 + 920);
  v88 = *(v0 + 912);
  v89 = *(v0 + 904);
  v90 = *(v0 + 896);
  v91 = *(v0 + 888);
  v92 = *(v0 + 880);
  v93 = *(v0 + 872);
  v94 = *(v0 + 864);
  v95 = *(v0 + 840);
  v96 = *(v0 + 832);
  v97 = *(v0 + 824);
  v98 = *(v0 + 816);
  v99 = *(v0 + 808);
  v100 = *(v0 + 784);
  v101 = *(v0 + 776);
  v102 = *(v0 + 752);
  v104 = *(v0 + 728);
  v106 = *(v0 + 704);
  v108 = *(v0 + 680);
  v110 = *(v0 + 672);
  v112 = *(v0 + 664);
  v114 = *(v0 + 656);
  v115 = *(v0 + 640);
  v117 = *(v0 + 616);
  v118 = *(v0 + 608);
  v120 = *(v0 + 584);
  v122 = *(v0 + 560);

  v32 = *(v0 + 8);

  return v32(0);
}

uint64_t sub_22B2597CC()
{
  v2 = *v1;
  v3 = *(*v1 + 1344);
  v4 = *v1;
  *(*v1 + 1352) = v0;

  v5 = v2[167];
  v6 = v2[117];
  v7 = v2[116];
  v8 = v2[67];

  sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
  if (v0)
  {
    v9 = sub_22B2609F4;
  }

  else
  {
    v9 = sub_22B259974;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B259974()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 2037);
  v3 = *(v0 + 2036);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1200);
  v6 = *(v0 + 1192);
  v7 = *(v0 + 1072);
  v8 = *(v0 + 1064);

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  v9(v4, v8);

  v68 = v3 & v2;
  v10 = *(v0 + 1208);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 1192);
  v13 = *(v0 + 1184);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1136);
  v22 = *(v0 + 1128);
  v23 = *(v0 + 1120);
  v24 = *(v0 + 1112);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1096);
  v27 = *(v0 + 1088);
  v28 = *(v0 + 1080);
  v29 = *(v0 + 1056);
  v30 = *(v0 + 1048);
  v31 = *(v0 + 1032);
  v32 = *(v0 + 1024);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 992);
  v35 = *(v0 + 984);
  v36 = *(v0 + 976);
  v37 = *(v0 + 968);
  v38 = *(v0 + 960);
  v39 = *(v0 + 936);
  v40 = *(v0 + 928);
  v41 = *(v0 + 920);
  v42 = *(v0 + 912);
  v43 = *(v0 + 904);
  v44 = *(v0 + 896);
  v45 = *(v0 + 888);
  v46 = *(v0 + 880);
  v47 = *(v0 + 872);
  v48 = *(v0 + 864);
  v49 = *(v0 + 840);
  v50 = *(v0 + 832);
  v51 = *(v0 + 824);
  v52 = *(v0 + 816);
  v53 = *(v0 + 808);
  v54 = *(v0 + 784);
  v55 = *(v0 + 776);
  v56 = *(v0 + 752);
  v57 = *(v0 + 728);
  v58 = *(v0 + 704);
  v59 = *(v0 + 680);
  v60 = *(v0 + 672);
  v61 = *(v0 + 664);
  v62 = *(v0 + 656);
  v63 = *(v0 + 640);
  v64 = *(v0 + 616);
  v65 = *(v0 + 608);
  v66 = *(v0 + 584);
  v67 = *(v0 + 560);

  v20 = *(v0 + 8);

  return v20(v68 & 1);
}

uint64_t sub_22B259D6C()
{
  v1 = v0[175];
  sub_22B143598(v0[176], v0[177], 0);
  v0[178] = v2;
  v0[179] = 0;
  v3 = v0[177];
  v4 = v0[67];

  return MEMORY[0x2822009F8](sub_22B259E3C, v4, 0);
}

uint64_t sub_22B259E3C()
{
  v131 = *(v0 + 1264);
  v135 = *(v0 + 1272);
  v123 = *(v0 + 1168);
  v127 = *(v0 + 1184);
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1024);
  v151 = *(v0 + 904);
  v4 = *(v0 + 824);
  v5 = *(v0 + 800);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = *(v0 + 504);
  v117 = *(v0 + 912);
  v120 = *(v0 + 496);
  sub_22B35DF0C();
  *(v0 + 1440) = sub_22B35DECC();
  *(v0 + 1448) = v9;
  v10 = *(v5 + 8);
  *(v0 + 1456) = v10;
  *(v0 + 1464) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v140 = v10;
  v10(v4, v6);
  v11 = *(v1 + 56);
  *(v0 + 1472) = v11;
  *(v0 + 1480) = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v117, 1, 1, v2);

  sub_22B35F7BC();

  sub_22B35F76C();
  v131(v123, v127, v2);
  sub_22B36039C();
  sub_22B35F7AC();
  sub_22B170BE0(v117, v151, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v1 + 48))(v151, 1, v2) == 1)
  {
    sub_22B123284(*(v0 + 904), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v12 = *(v0 + 1272);
    v13 = *(v0 + 1264);
    v14 = *(v0 + 1168);
    v15 = *(v0 + 1152);
    v16 = *(v0 + 1072);
    v17 = *(v0 + 1064);
    v18 = *(v0 + 1024);
    v19 = *(v0 + 784);
    (*(v16 + 32))(v15, *(v0 + 904), v17);
    v13(v14, v15, v17);
    sub_22B36039C();
    sub_22B35F78C();
    (*(v16 + 8))(v15, v17);
  }

  v136 = *(v0 + 1432);
  v124 = *(v0 + 1264);
  v128 = *(v0 + 1272);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v109 = *(v0 + 1240);
  v107 = *(v0 + 1232);
  v118 = *(v0 + 1064);
  v121 = *(v0 + 1208);
  v22 = *(v0 + 1024);
  v23 = *(v0 + 1008);
  v24 = *(v0 + 1000);
  v25 = *(v0 + 824);
  v111 = *(v0 + 792);
  v113 = *(v0 + 784);
  v115 = *(v0 + 1168);
  v26 = *(v0 + 776);
  v132 = *(v0 + 760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABB0, &qword_22B3669B8);
  *(v0 + 1488) = *(v23 + 72);
  v27 = *(v23 + 80);
  *(v0 + 2016) = v27;
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22B3634B0;
  v30 = *(v23 + 16);
  *(v0 + 1496) = v30;
  *(v0 + 1504) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31 = v30(v29 + v28, v22, v24);
  v152 = MEMORY[0x23188EEB0](v31);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  MEMORY[0x23188E270](v107, v109);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35DF0C();
  v32 = sub_22B35DECC();
  v34 = v33;
  v140(v25, v111);
  MEMORY[0x23188E270](v32, v34);

  sub_22B35F83C();

  sub_22B35F82C();

  sub_22B35F7DC();
  sub_22B35F71C();
  v124(v115, v121, v118);
  sub_22B36039C();
  sub_22B35F73C();
  sub_22B35F7FC();
  sub_22B35F81C();
  sub_22B28C170(&qword_27D8BABB8, MEMORY[0x277D07448]);
  v35 = sub_22B36042C();
  v37 = *(v0 + 1256);
  if (v136)
  {
    v38 = *(v0 + 1240);
    (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));

    objc_autoreleasePoolPop(v152);
    v39 = *(v0 + 1424);
    v40 = *(v0 + 1392);
    v41 = *(v0 + 1224);
    v153 = *(v0 + 1208);
    v147 = *(v0 + 1200);
    v141 = *(v0 + 1448);
    v144 = *(v0 + 1192);
    v137 = *(v0 + 1184);
    v42 = *(v0 + 1072);
    v43 = *(v0 + 1064);
    v44 = *(v0 + 912);
    v45 = *(v0 + 880);
    v46 = *(v0 + 856);
    v47 = *(v0 + 848);
    (*(*(v0 + 1008) + 8))(*(v0 + 1024), *(v0 + 1000));
    sub_22B123284(v44, &qword_27D8BA340, &qword_22B363FB0);

    v48 = *(v42 + 8);
    v48(v137, v43);
    (*(v46 + 8))(v45, v47);
    v48(v144, v43);
    v48(v147, v43);
    v48(v153, v43);
    v49 = *(v0 + 1208);
    v50 = *(v0 + 1200);
    v51 = *(v0 + 1192);
    v52 = *(v0 + 1184);
    v53 = *(v0 + 1176);
    v54 = *(v0 + 1168);
    v55 = *(v0 + 1160);
    v56 = *(v0 + 1152);
    v57 = *(v0 + 1144);
    v58 = *(v0 + 1136);
    v76 = *(v0 + 1128);
    v77 = *(v0 + 1120);
    v78 = *(v0 + 1112);
    v79 = *(v0 + 1104);
    v80 = *(v0 + 1096);
    v81 = *(v0 + 1088);
    v82 = *(v0 + 1080);
    v83 = *(v0 + 1056);
    v84 = *(v0 + 1048);
    v85 = *(v0 + 1032);
    v86 = *(v0 + 1024);
    v87 = *(v0 + 1016);
    v88 = *(v0 + 992);
    v89 = *(v0 + 984);
    v90 = *(v0 + 976);
    v91 = *(v0 + 968);
    v92 = *(v0 + 960);
    v93 = *(v0 + 936);
    v94 = *(v0 + 928);
    v95 = *(v0 + 920);
    v96 = *(v0 + 912);
    v97 = *(v0 + 904);
    v98 = *(v0 + 896);
    v99 = *(v0 + 888);
    v100 = *(v0 + 880);
    v101 = *(v0 + 872);
    v102 = *(v0 + 864);
    v103 = *(v0 + 840);
    v104 = *(v0 + 832);
    v105 = *(v0 + 824);
    v106 = *(v0 + 816);
    v108 = *(v0 + 808);
    v110 = *(v0 + 784);
    v112 = *(v0 + 776);
    v114 = *(v0 + 752);
    v116 = *(v0 + 728);
    v119 = *(v0 + 704);
    v122 = *(v0 + 680);
    v125 = *(v0 + 672);
    v129 = *(v0 + 664);
    v133 = *(v0 + 656);
    v138 = *(v0 + 640);
    v142 = *(v0 + 616);
    v145 = *(v0 + 608);
    v148 = *(v0 + 584);
    v154 = *(v0 + 560);

    v59 = *(v0 + 8);

    return v59(0);
  }

  else
  {
    v134 = *(v0 + 1248);
    v139 = *(v0 + 1232);
    v143 = *(v0 + 1240);
    v146 = *(v0 + 768);
    v149 = *(v0 + 760);
    v150 = *(v0 + 776);
    v126 = v36;
    v130 = v35;
    *(v0 + 1512) = sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
    v61 = objc_opt_self();
    *(v0 + 1520) = v61;

    v62 = [v61 defaultRecordZone];
    v63 = [v62 zoneID];

    v64 = sub_22B360CBC();
    *(v0 + 1528) = sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
    v65 = v64;
    v66 = sub_22B360F4C();
    *(v0 + 1536) = v66;
    v67 = [v66 recordID];
    v68 = [v67 zoneID];

    v69 = sub_22B360CBC();
    [v66 setRecordID_];

    sub_22B144B30(v130, v126);
    sub_22B360EBC();

    MEMORY[0x23188E270](46, 0xE100000000000000);
    MEMORY[0x23188E270](v139, v143);
    sub_22B360EBC();
    sub_22B12F174(v130, v126);

    (*(v146 + 8))(v150, v149);
    objc_autoreleasePoolPop(v152);
    if (qword_2814096B8 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 1256);
    v71 = *(v0 + 1240);
    *(v0 + 1544) = qword_28140BCE8;
    v72 = swift_task_alloc();
    *(v0 + 1552) = v72;
    *v72 = v0;
    v72[1] = sub_22B25AA70;
    v73 = *(v0 + 1424);
    v74 = *(v0 + 1248);
    v75 = *(v0 + 1232);

    return sub_22B3297C0(v66, v75, v71, v74, v70, v73);
  }
}

uint64_t sub_22B25AA70()
{
  v2 = *v1;
  v3 = *(*v1 + 1552);
  v10 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v4 = v2[157];
    v5 = v2[155];
    v6 = v2[67];

    v7 = sub_22B25AD38;
    v8 = v6;
  }

  else
  {
    v8 = v2[67];
    v7 = sub_22B25ABA4;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_22B25ABA4()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 912);

  v6 = *(v3 + 8);
  *(v0 + 1568) = v6;
  *(v0 + 1576) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);

  return MEMORY[0x2822009F8](sub_22B25AC70, v1, 0);
}

uint64_t sub_22B25AC70()
{
  v1 = v0[195];
  v2 = v0[193];
  sub_22B32C2B8(v0[154], v0[155], v0[156], v0[157], v0[180], v0[181]);
  v0[198] = v3;
  v0[199] = v1;
  if (v1)
  {
    v4 = v0[157];
    v5 = v0[155];
    v6 = v0[67];

    v7 = sub_22B261208;
    v8 = v6;
  }

  else
  {
    v8 = v0[67];
    v7 = sub_22B25B1BC;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_22B25AD38()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1224);
  v72 = *(v0 + 1208);
  v74 = *(v0 + 1560);
  v70 = *(v0 + 1200);
  v66 = *(v0 + 1448);
  v68 = *(v0 + 1192);
  v64 = *(v0 + 1184);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 912);
  v7 = *(v0 + 880);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);
  (*(*(v0 + 1008) + 8))(*(v0 + 1024), *(v0 + 1000));
  sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);

  v10 = *(v4 + 8);
  v10(v64, v5);
  (*(v8 + 8))(v7, v9);
  v10(v68, v5);
  v10(v70, v5);
  v10(v72, v5);
  v11 = *(v0 + 1208);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1192);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1176);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 1144);
  v20 = *(v0 + 1136);
  v23 = *(v0 + 1128);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1112);
  v26 = *(v0 + 1104);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 1080);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 1048);
  v32 = *(v0 + 1032);
  v33 = *(v0 + 1024);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 992);
  v36 = *(v0 + 984);
  v37 = *(v0 + 976);
  v38 = *(v0 + 968);
  v39 = *(v0 + 960);
  v40 = *(v0 + 936);
  v41 = *(v0 + 928);
  v42 = *(v0 + 920);
  v43 = *(v0 + 912);
  v44 = *(v0 + 904);
  v45 = *(v0 + 896);
  v46 = *(v0 + 888);
  v47 = *(v0 + 880);
  v48 = *(v0 + 872);
  v49 = *(v0 + 864);
  v50 = *(v0 + 840);
  v51 = *(v0 + 832);
  v52 = *(v0 + 824);
  v53 = *(v0 + 816);
  v54 = *(v0 + 808);
  v55 = *(v0 + 784);
  v56 = *(v0 + 776);
  v57 = *(v0 + 752);
  v58 = *(v0 + 728);
  v59 = *(v0 + 704);
  v60 = *(v0 + 680);
  v61 = *(v0 + 672);
  v62 = *(v0 + 664);
  v63 = *(v0 + 656);
  v65 = *(v0 + 640);
  v67 = *(v0 + 616);
  v69 = *(v0 + 608);
  v71 = *(v0 + 584);
  v73 = *(v0 + 560);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_22B25B1BC()
{
  v135 = v0;
  v1 = *(v0 + 1584);
  if (v1)
  {
    v120 = *(v1 + 16);
    if (v120)
    {
      v2 = 0;
      v116 = *(v0 + 1040);
      v118 = *(v0 + 1048);
      v114 = v1 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v3 = MEMORY[0x277D84F90];
      v112 = *(v0 + 1584);
      while (v2 < *(v1 + 16))
      {
        v4 = *(v0 + 1048);
        sub_22B23E004(v114 + *(v116 + 72) * v2, v4);
        v5 = *(v118 + 32);

        sub_22B26DB98(v4);
        v130 = *(v5 + 16);
        if (v130)
        {
          v6 = 0;
          v127 = v5 + ((*(v0 + 2016) + 32) & ~*(v0 + 2016));
          do
          {
            v7 = *(v0 + 1576);
            v8 = *(v0 + 1568);
            v9 = *(v0 + 1504);
            v10 = *(v0 + 1016);
            v11 = *(v0 + 1000);
            (*(v0 + 1496))(v10, v127 + *(v0 + 1488) * v6, v11);
            v12 = sub_22B35F75C();
            v14 = v13;
            v8(v10, v11);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_22B32CD20(0, *(v3 + 2) + 1, 1, v3);
            }

            v16 = *(v3 + 2);
            v15 = *(v3 + 3);
            if (v16 >= v15 >> 1)
            {
              v3 = sub_22B32CD20((v15 > 1), v16 + 1, 1, v3);
            }

            ++v6;
            *(v3 + 2) = v16 + 1;
            v17 = &v3[16 * v16];
            *(v17 + 4) = v12;
            *(v17 + 5) = v14;
          }

          while (v130 != v6);

          v1 = v112;
        }

        else
        {
        }

        if (++v2 == v120)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
LABEL_19:
      *(v0 + 1600) = v3;

      if (qword_28140A0C8 == -1)
      {
        goto LABEL_20;
      }
    }

    swift_once();
LABEL_20:
    v40 = *(v0 + 984);
    v41 = *(v0 + 952);
    v42 = *(v0 + 944);
    v43 = *(v0 + 448);
    v44 = __swift_project_value_buffer(v42, qword_28140BD10);
    *(v0 + 1608) = v44;
    swift_beginAccess();
    v45 = *(v41 + 16);
    *(v0 + 1616) = v45;
    *(v0 + 1624) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v40, v44, v42);

    v46 = sub_22B36050C();
    v47 = sub_22B360D2C();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 984);
    v50 = *(v0 + 952);
    v51 = *(v0 + 944);
    if (v48)
    {
      v53 = *(v0 + 440);
      v52 = *(v0 + 448);
      v133 = *(v0 + 984);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v134[0] = v55;
      *v54 = 136315394;
      *(v54 + 4) = sub_22B1A7B20(v53, v52, v134);
      *(v54 + 12) = 2080;

      v57 = MEMORY[0x23188E390](v56, MEMORY[0x277D837D0]);
      v59 = v58;

      v60 = sub_22B1A7B20(v57, v59, v134);

      *(v54 + 14) = v60;
      _os_log_impl(&dword_22B116000, v46, v47, "[MOCK GENERATOR] Will refreshTariffProfiles\n%s: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v55, -1, -1);
      MEMORY[0x23188F650](v54, -1, -1);

      v61 = *(v50 + 8);
      v61(v133, v51);
    }

    else
    {

      v61 = *(v50 + 8);
      v61(v49, v51);
    }

    *(v0 + 1632) = v61;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 1480);
    v63 = *(v0 + 1472);
    v64 = *(v0 + 1272);
    v65 = *(v0 + 1264);
    v66 = *(v0 + 1192);
    v67 = *(v0 + 1064);
    v68 = *(v0 + 896);
    v69 = *(v0 + 888);
    *(v0 + 1640) = qword_28140BDD8;
    v65(v68, v66, v67);
    v63(v68, 0, 1, v67);

    sub_22B35F5BC();
    sub_22B35DDCC();
    v63(v69, 0, 1, v67);
    v70 = swift_task_alloc();
    *(v0 + 1648) = v70;
    *v70 = v0;
    v70[1] = sub_22B25BAF8;
    v71 = *(v0 + 896);
    v72 = *(v0 + 888);
    v74 = *(v0 + 440);
    v73 = *(v0 + 448);

    return sub_22B2263A0(v74, v73, v3, v71, v72);
  }

  v18 = *(v0 + 1448);
  v19 = *(v0 + 1424);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1240);
  v22 = *(v0 + 1224);
  v128 = *(v0 + 1200);
  v131 = *(v0 + 1208);
  v23 = *(v0 + 1184);
  v24 = *(v0 + 1072);
  v25 = *(v0 + 1064);
  v123 = *(v0 + 880);
  v125 = *(v0 + 1192);
  v26 = *(v0 + 856);
  v121 = *(v0 + 848);

  v27 = *(v24 + 8);
  v27(v23, v25);
  (*(v26 + 8))(v123, v121);
  v27(v125, v25);
  v27(v128, v25);
  v27(v131, v25);
  v28 = *(v0 + 1208);
  v29 = *(v0 + 1200);
  v30 = *(v0 + 1192);
  v31 = *(v0 + 1184);
  v32 = *(v0 + 1176);
  v33 = *(v0 + 1168);
  v34 = *(v0 + 1160);
  v35 = *(v0 + 1152);
  v36 = *(v0 + 1144);
  v37 = *(v0 + 1136);
  v75 = *(v0 + 1128);
  v76 = *(v0 + 1120);
  v77 = *(v0 + 1112);
  v78 = *(v0 + 1104);
  v79 = *(v0 + 1096);
  v80 = *(v0 + 1088);
  v81 = *(v0 + 1080);
  v82 = *(v0 + 1056);
  v83 = *(v0 + 1048);
  v84 = *(v0 + 1032);
  v85 = *(v0 + 1024);
  v86 = *(v0 + 1016);
  v87 = *(v0 + 992);
  v88 = *(v0 + 984);
  v89 = *(v0 + 976);
  v90 = *(v0 + 968);
  v91 = *(v0 + 960);
  v92 = *(v0 + 936);
  v93 = *(v0 + 928);
  v94 = *(v0 + 920);
  v95 = *(v0 + 912);
  v96 = *(v0 + 904);
  v97 = *(v0 + 896);
  v98 = *(v0 + 888);
  v99 = *(v0 + 880);
  v100 = *(v0 + 872);
  v101 = *(v0 + 864);
  v102 = *(v0 + 840);
  v103 = *(v0 + 832);
  v104 = *(v0 + 824);
  v105 = *(v0 + 816);
  v106 = *(v0 + 808);
  v107 = *(v0 + 784);
  v108 = *(v0 + 776);
  v109 = *(v0 + 752);
  v110 = *(v0 + 728);
  v111 = *(v0 + 704);
  v113 = *(v0 + 680);
  v115 = *(v0 + 672);
  v117 = *(v0 + 664);
  v119 = *(v0 + 656);
  v122 = *(v0 + 640);
  v124 = *(v0 + 616);
  v126 = *(v0 + 608);
  v129 = *(v0 + 584);
  v132 = *(v0 + 560);

  v38 = *(v0 + 8);

  return v38(0);
}

uint64_t sub_22B25BAF8()
{
  v2 = *v1;
  v3 = *(*v1 + 1648);
  v4 = *v1;
  v2[207] = v0;

  v5 = v2[200];
  if (v0)
  {
    v6 = v2[157];
    v7 = v2[155];
    v8 = v2[112];
    v9 = v2[111];
    v10 = v2[67];

    sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v8, &qword_27D8BA340, &qword_22B363FB0);
    v11 = sub_22B261648;
  }

  else
  {
    v12 = v2[112];
    v13 = v2[111];
    v10 = v2[67];

    sub_22B123284(v13, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v12, &qword_27D8BA340, &qword_22B363FB0);
    v11 = sub_22B25BCC8;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

void sub_22B25BCC8()
{
  v1 = v0[183];
  v2 = v0[182];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[157];
  v20 = v0[155];
  v6 = v0[149];
  v7 = v0[142];
  v8 = v0[133];
  v9 = v0[102];
  v10 = v0[99];
  v0[64];
  v11 = v0[61];
  v4(v0[143], v0[150], v8);
  v4(v7, v6, v8);
  sub_22B35DF0C();
  sub_22B35DECC();
  v0[208] = v12;
  v2(v9, v10);
  v13 = swift_task_alloc();
  v0[209] = v13;
  *v13 = v0;
  v13[1] = sub_22B25BE8C;
  v14 = v0[156];
  v15 = v0[154];
  v16 = v0[151];
  v17 = v0[143];
  v18 = v0[142];
  v19 = v0[67];
  v24 = v0[110];
  v25 = v0[178];
  v22 = v0[180];
  v23 = v0[181];

  JUMPOUT(0x22B26E170);
}

uint64_t sub_22B25BE8C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1672);
  v6 = *v2;
  *(v4 + 2038) = a1;
  v4[210] = v1;

  v7 = v3[208];
  v8 = v3[143];
  v9 = v3[142];
  v10 = v3[134];
  v11 = v3[133];
  v12 = v3[67];

  v15 = *(v10 + 8);
  v14 = v10 + 8;
  v13 = v15;
  if (v1)
  {
    v4[213] = v13;
    v13(v9, v11);
    v13(v8, v11);
    v16 = sub_22B25C288;
  }

  else
  {
    v4[211] = v13;
    v4[212] = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v13(v8, v11);
    v16 = sub_22B25C0A8;
  }

  return MEMORY[0x2822009F8](v16, v12, 0);
}

void sub_22B25C0A8()
{
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[149];
  v4 = v0[140];
  v5 = v0[133];
  v6 = v0[66];
  v7 = v0[64];
  v2(v0[141], v0[150], v5);
  v2(v4, v3, v5);
  if (v6)
  {
    v8 = v0[65];
    v9 = v0[66];
  }

  else
  {
    v10 = v0[183];
    v11 = v0[182];
    v12 = v0[103];
    v13 = v0[99];
    v14 = v0[66];
    sub_22B35DF0C();
    sub_22B35DECC();
    v9 = v15;
    v11(v12, v13);
  }

  v0[214] = v9;
  v16 = v0[157];
  v17 = v0[155];
  v18 = v0[64];
  v19 = v0[61];

  v20 = swift_task_alloc();
  v0[215] = v20;
  *v20 = v0;
  v20[1] = sub_22B25C8D8;
  v21 = v0[156];
  v22 = v0[154];
  v23 = v0[151];
  v24 = v0[141];
  v25 = v0[140];
  v26 = v0[67];
  v30 = v0[110];
  v31 = v0[178];
  v28 = v0[180];
  v29 = v0[181];

  JUMPOUT(0x22B26E170);
}

uint64_t sub_22B25C288()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1624);
  (*(v0 + 1616))(*(v0 + 960), *(v0 + 1608), *(v0 + 944));
  v4 = v2;
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B116000, v5, v6, "[MOCK GENERATOR] Interval Readings error %@", v7, 0xCu);
    sub_22B123284(v8, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v8, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 952) + 8;
  (*(v0 + 1632))(*(v0 + 960), *(v0 + 944));
  *(v0 + 1808) = *(v0 + 1224);
  *(v0 + 1800) = v1;
  v12 = *(v0 + 1272);
  v13 = *(v0 + 1264);
  v14 = *(v0 + 1192);
  v15 = *(v0 + 1104);
  v16 = *(v0 + 1064);
  v63 = *(v0 + 752);
  v17 = *(v0 + 728);
  v18 = *(v0 + 720);
  v19 = *(v0 + 712);
  v13(*(v0 + 1112), *(v0 + 1200), v16);
  v13(v15, v14, v16);
  (*(v18 + 104))(v17, *MEMORY[0x277CC9830], v19);
  sub_22B35DFAC();
  (*(v18 + 8))(v17, v19);
  sub_22B35F41C();
  if (v20)
  {
    v21 = *(v0 + 1368);
    v22 = *(v0 + 1360);
    v23 = *(v0 + 848);
    v24 = *(v0 + 832);
    sub_22B35E05C();

    if (v22(v24, 1, v23) == 1)
    {
      sub_22B123284(*(v0 + 832), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v25 = *(v0 + 1384);
      v26 = *(v0 + 872);
      v27 = *(v0 + 864);
      v28 = *(v0 + 856);
      v29 = *(v0 + 848);
      v30 = *(v0 + 752);
      (*(v0 + 1376))(v26, *(v0 + 832), v29);
      (*(v28 + 16))(v27, v26, v29);
      sub_22B35E01C();
      (*(v28 + 8))(v26, v29);
    }
  }

  v31 = *(v0 + 1272);
  v32 = *(v0 + 1104);
  (*(v0 + 1264))(*(v0 + 1096), *(v0 + 1112), *(v0 + 1064));
  v33 = MEMORY[0x277D84F90];
  *(v0 + 432) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    *(v0 + 1952) = 0;
    *(v0 + 1944) = v33;
    *(v0 + 1936) = 0;
    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 1256);
    v35 = *(v0 + 1240);
    v36 = swift_task_alloc();
    *(v0 + 1960) = v36;
    *v36 = v0;
    v36[1] = sub_22B25FB94;
    v37 = *(v0 + 1424);
    v38 = *(v0 + 1248);
    v39 = *(v0 + 1232);
    v40 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v40, v39, v35, v38, v34, v37);
  }

  else
  {
    *(v0 + 2020) = *MEMORY[0x277D074B0];
    *(v0 + 2024) = *MEMORY[0x277D074A8];
    *(v0 + 2028) = *MEMORY[0x277D07468];
    *(v0 + 2032) = *MEMORY[0x277D07470];
    *(v0 + 1832) = 0;
    *(v0 + 1824) = v33;
    *(v0 + 1816) = 0;
    v42 = *(v0 + 1112);
    v43 = *(v0 + 1096);
    v44 = *(v0 + 752);
    v45 = MEMORY[0x23188EEB0]();
    sub_22B26BEB8(v44, v43, v42);
    *(v0 + 1840) = 0;
    objc_autoreleasePoolPop(v45);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 2020);
    v47 = *(v0 + 1272);
    v48 = *(v0 + 1264);
    v49 = *(v0 + 1256);
    v50 = *(v0 + 1240);
    v51 = *(v0 + 1168);
    v52 = *(v0 + 1112);
    v53 = *(v0 + 1064);
    v54 = *(v0 + 704);
    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    *(v0 + 1848) = qword_27D8BB198;
    v48(v51, v52, v53);
    v57 = *(v55 + 104);
    *(v0 + 1856) = v57;
    *(v0 + 1864) = (v55 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v57(v54, v46, v56);
    v58 = swift_task_alloc();
    *(v0 + 1872) = v58;
    *v58 = v0;
    v58[1] = sub_22B25E0F4;
    v59 = *(v0 + 1248);
    v60 = *(v0 + 1232);
    v61 = *(v0 + 1168);
    v62 = *(v0 + 1096);
    v65 = *(v0 + 880);
    v66 = *(v0 + 704);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v61, v62, v60, v50, v59, v49);
  }
}

uint64_t sub_22B25C8D8(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1720);
  v6 = *v2;
  *(v4 + 2039) = a1;
  v4[216] = v1;

  v7 = v3[214];
  v8 = v3[212];
  v9 = v3[211];
  v10 = v3[141];
  v11 = v3[140];
  v12 = v3[133];
  v13 = v3[67];

  v9(v11, v12);
  v9(v10, v12);
  if (v1)
  {
    v14 = sub_22B25CDC4;
  }

  else
  {
    v14 = sub_22B25CAB8;
  }

  return MEMORY[0x2822009F8](v14, v13, 0);
}

uint64_t sub_22B25CAB8()
{
  v1 = *(v0 + 1624);
  (*(v0 + 1616))(*(v0 + 976), *(v0 + 1608), *(v0 + 944));
  v2 = sub_22B36050C();
  v3 = sub_22B360D1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 2039);
  v6 = *(v0 + 2038);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v8 = v6 | v5;
    *(v7 + 4) = v8 & 1;
    _os_log_impl(&dword_22B116000, v2, v3, "[MOCK GENERATOR] Interval Readings generated with hasExportedEnergy %{BOOL}d", v7, 8u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  else
  {

    v8 = v6 | v5;
  }

  v9 = *(v0 + 1224);
  v10 = *(v0 + 952) + 8;
  (*(v0 + 1632))(*(v0 + 976), *(v0 + 944));
  LOBYTE(v9) = sub_22B35F02C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  if ((v9 & 1) != 0 || (v8 & 1) == 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3634B0;
    *(inited + 32) = 0xD000000000000016;
    v18 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x800000022B36CE20;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v14 = sub_22B321AAC(inited);
    *(v0 + 1768) = v14;
    swift_setDeallocating();
    sub_22B123284(v18, &unk_27D8BAD00, &qword_22B3656C0);
    v15 = swift_task_alloc();
    *(v0 + 1776) = v15;
    *v15 = v0;
    v16 = sub_22B25DA84;
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_22B3634C0;
    *(v11 + 32) = 0xD000000000000011;
    *(v11 + 40) = 0x800000022B36CEE0;
    v12 = MEMORY[0x277D839B0];
    v13 = MEMORY[0x277D837D0];
    *(v11 + 48) = 1;
    *(v11 + 72) = v12;
    *(v11 + 80) = 0xD000000000000016;
    *(v11 + 120) = v13;
    *(v11 + 88) = 0x800000022B36CE20;
    *(v11 + 96) = 0;
    *(v11 + 104) = 0xE000000000000000;
    v14 = sub_22B321AAC(v11);
    *(v0 + 1736) = v14;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    v15 = swift_task_alloc();
    *(v0 + 1744) = v15;
    *v15 = v0;
    v16 = sub_22B25D414;
  }

  v15[1] = v16;
  v19 = *(v0 + 1640);
  v21 = *(v0 + 440);
  v20 = *(v0 + 448);

  return sub_22B2244D0(v21, v20, v14);
}

uint64_t sub_22B25CDC4()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1688);
  v3 = *(v0 + 1624);
  (*(v0 + 1616))(*(v0 + 960), *(v0 + 1608), *(v0 + 944));
  v4 = v1;
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B116000, v5, v6, "[MOCK GENERATOR] Interval Readings error %@", v7, 0xCu);
    sub_22B123284(v8, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v8, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 952) + 8;
  (*(v0 + 1632))(*(v0 + 960), *(v0 + 944));
  *(v0 + 1808) = *(v0 + 1224);
  *(v0 + 1800) = v2;
  v12 = *(v0 + 1272);
  v13 = *(v0 + 1264);
  v14 = *(v0 + 1192);
  v15 = *(v0 + 1104);
  v16 = *(v0 + 1064);
  v63 = *(v0 + 752);
  v17 = *(v0 + 728);
  v18 = *(v0 + 720);
  v19 = *(v0 + 712);
  v13(*(v0 + 1112), *(v0 + 1200), v16);
  v13(v15, v14, v16);
  (*(v18 + 104))(v17, *MEMORY[0x277CC9830], v19);
  sub_22B35DFAC();
  (*(v18 + 8))(v17, v19);
  sub_22B35F41C();
  if (v20)
  {
    v21 = *(v0 + 1368);
    v22 = *(v0 + 1360);
    v23 = *(v0 + 848);
    v24 = *(v0 + 832);
    sub_22B35E05C();

    if (v22(v24, 1, v23) == 1)
    {
      sub_22B123284(*(v0 + 832), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v25 = *(v0 + 1384);
      v26 = *(v0 + 872);
      v27 = *(v0 + 864);
      v28 = *(v0 + 856);
      v29 = *(v0 + 848);
      v30 = *(v0 + 752);
      (*(v0 + 1376))(v26, *(v0 + 832), v29);
      (*(v28 + 16))(v27, v26, v29);
      sub_22B35E01C();
      (*(v28 + 8))(v26, v29);
    }
  }

  v31 = *(v0 + 1272);
  v32 = *(v0 + 1104);
  (*(v0 + 1264))(*(v0 + 1096), *(v0 + 1112), *(v0 + 1064));
  v33 = MEMORY[0x277D84F90];
  *(v0 + 432) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    *(v0 + 1952) = 0;
    *(v0 + 1944) = v33;
    *(v0 + 1936) = 0;
    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 1256);
    v35 = *(v0 + 1240);
    v36 = swift_task_alloc();
    *(v0 + 1960) = v36;
    *v36 = v0;
    v36[1] = sub_22B25FB94;
    v37 = *(v0 + 1424);
    v38 = *(v0 + 1248);
    v39 = *(v0 + 1232);
    v40 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v40, v39, v35, v38, v34, v37);
  }

  else
  {
    *(v0 + 2020) = *MEMORY[0x277D074B0];
    *(v0 + 2024) = *MEMORY[0x277D074A8];
    *(v0 + 2028) = *MEMORY[0x277D07468];
    *(v0 + 2032) = *MEMORY[0x277D07470];
    *(v0 + 1832) = 0;
    *(v0 + 1824) = v33;
    *(v0 + 1816) = 0;
    v42 = *(v0 + 1112);
    v43 = *(v0 + 1096);
    v44 = *(v0 + 752);
    v45 = MEMORY[0x23188EEB0]();
    sub_22B26BEB8(v44, v43, v42);
    *(v0 + 1840) = 0;
    objc_autoreleasePoolPop(v45);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 2020);
    v47 = *(v0 + 1272);
    v48 = *(v0 + 1264);
    v49 = *(v0 + 1256);
    v50 = *(v0 + 1240);
    v51 = *(v0 + 1168);
    v52 = *(v0 + 1112);
    v53 = *(v0 + 1064);
    v54 = *(v0 + 704);
    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    *(v0 + 1848) = qword_27D8BB198;
    v48(v51, v52, v53);
    v57 = *(v55 + 104);
    *(v0 + 1856) = v57;
    *(v0 + 1864) = (v55 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v57(v54, v46, v56);
    v58 = swift_task_alloc();
    *(v0 + 1872) = v58;
    *v58 = v0;
    v58[1] = sub_22B25E0F4;
    v59 = *(v0 + 1248);
    v60 = *(v0 + 1232);
    v61 = *(v0 + 1168);
    v62 = *(v0 + 1096);
    v65 = *(v0 + 880);
    v66 = *(v0 + 704);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v61, v62, v60, v50, v59, v49);
  }
}

uint64_t sub_22B25D414(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1744);
  v6 = *v2;
  *(*v2 + 1752) = v1;

  if (v1)
  {
    v7 = v4[67];
    v8 = sub_22B261A94;
  }

  else
  {
    v9 = v4[217];
    v10 = v4[67];

    v4[220] = a1;
    v8 = sub_22B25D554;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_22B25D554()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1688);
  *(v0 + 1808) = *(v0 + 1760);
  *(v0 + 1800) = v2;
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1064);
  v53 = v1;
  v54 = *(v0 + 752);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  v4(*(v0 + 1112), *(v0 + 1200), v7);
  v4(v6, v5, v7);
  (*(v9 + 104))(v8, *MEMORY[0x277CC9830], v10);
  sub_22B35DFAC();
  (*(v9 + 8))(v8, v10);
  sub_22B35F41C();
  if (v11)
  {
    v12 = *(v0 + 1368);
    v13 = *(v0 + 1360);
    v14 = *(v0 + 848);
    v15 = *(v0 + 832);
    sub_22B35E05C();

    if (v13(v15, 1, v14) == 1)
    {
      sub_22B123284(*(v0 + 832), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v16 = *(v0 + 1384);
      v17 = *(v0 + 872);
      v18 = *(v0 + 864);
      v19 = *(v0 + 856);
      v20 = *(v0 + 848);
      v21 = *(v0 + 752);
      (*(v0 + 1376))(v17, *(v0 + 832), v20);
      (*(v19 + 16))(v18, v17, v20);
      sub_22B35E01C();
      (*(v19 + 8))(v17, v20);
    }
  }

  v22 = *(v0 + 1272);
  v23 = *(v0 + 1104);
  (*(v0 + 1264))(*(v0 + 1096), *(v0 + 1112), *(v0 + 1064));
  v24 = MEMORY[0x277D84F90];
  *(v0 + 432) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    *(v0 + 1952) = 0;
    *(v0 + 1944) = v24;
    *(v0 + 1936) = 0;
    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 1256);
    v26 = *(v0 + 1240);
    v27 = swift_task_alloc();
    *(v0 + 1960) = v27;
    *v27 = v0;
    v27[1] = sub_22B25FB94;
    v28 = *(v0 + 1424);
    v29 = *(v0 + 1248);
    v30 = *(v0 + 1232);
    v31 = MEMORY[0x277D84F90];

    sub_22B1D59F4(v31, v30, v26, v29, v25, v28);
  }

  else
  {
    *(v0 + 2020) = *MEMORY[0x277D074B0];
    *(v0 + 2024) = *MEMORY[0x277D074A8];
    *(v0 + 2028) = *MEMORY[0x277D07468];
    *(v0 + 2032) = *MEMORY[0x277D07470];
    *(v0 + 1832) = 0;
    *(v0 + 1824) = v24;
    *(v0 + 1816) = 0;
    v32 = *(v0 + 1112);
    v33 = *(v0 + 1096);
    v34 = *(v0 + 752);
    v35 = MEMORY[0x23188EEB0]();
    sub_22B26BEB8(v34, v33, v32);
    *(v0 + 1840) = v53;
    objc_autoreleasePoolPop(v35);
    if (!v53)
    {
      if (qword_27D8B9F60 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 2020);
      v37 = *(v0 + 1272);
      v38 = *(v0 + 1264);
      v39 = *(v0 + 1256);
      v40 = *(v0 + 1240);
      v41 = *(v0 + 1168);
      v42 = *(v0 + 1112);
      v43 = *(v0 + 1064);
      v44 = *(v0 + 704);
      v45 = *(v0 + 696);
      v46 = *(v0 + 688);
      *(v0 + 1848) = qword_27D8BB198;
      v38(v41, v42, v43);
      v47 = *(v45 + 104);
      *(v0 + 1856) = v47;
      *(v0 + 1864) = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v47(v44, v36, v46);
      v48 = swift_task_alloc();
      *(v0 + 1872) = v48;
      *v48 = v0;
      v48[1] = sub_22B25E0F4;
      v49 = *(v0 + 1248);
      v50 = *(v0 + 1232);
      v51 = *(v0 + 1168);
      v52 = *(v0 + 1096);
      v56 = *(v0 + 880);
      v57 = *(v0 + 704);

      sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v51, v52, v50, v40, v49, v39);
    }
  }
}

uint64_t sub_22B25DA84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1776);
  v6 = *v2;
  *(*v2 + 1784) = v1;

  if (v1)
  {
    v7 = v4[67];
    v8 = sub_22B2620EC;
  }

  else
  {
    v9 = v4[221];
    v10 = v4[67];

    v4[224] = a1;
    v8 = sub_22B25DBC4;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_22B25DBC4()
{
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1688);
  *(v0 + 1808) = *(v0 + 1792);
  *(v0 + 1800) = v2;
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1064);
  v53 = v1;
  v54 = *(v0 + 752);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  v4(*(v0 + 1112), *(v0 + 1200), v7);
  v4(v6, v5, v7);
  (*(v9 + 104))(v8, *MEMORY[0x277CC9830], v10);
  sub_22B35DFAC();
  (*(v9 + 8))(v8, v10);
  sub_22B35F41C();
  if (v11)
  {
    v12 = *(v0 + 1368);
    v13 = *(v0 + 1360);
    v14 = *(v0 + 848);
    v15 = *(v0 + 832);
    sub_22B35E05C();

    if (v13(v15, 1, v14) == 1)
    {
      sub_22B123284(*(v0 + 832), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v16 = *(v0 + 1384);
      v17 = *(v0 + 872);
      v18 = *(v0 + 864);
      v19 = *(v0 + 856);
      v20 = *(v0 + 848);
      v21 = *(v0 + 752);
      (*(v0 + 1376))(v17, *(v0 + 832), v20);
      (*(v19 + 16))(v18, v17, v20);
      sub_22B35E01C();
      (*(v19 + 8))(v17, v20);
    }
  }

  v22 = *(v0 + 1272);
  v23 = *(v0 + 1104);
  (*(v0 + 1264))(*(v0 + 1096), *(v0 + 1112), *(v0 + 1064));
  v24 = MEMORY[0x277D84F90];
  *(v0 + 432) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    *(v0 + 1952) = 0;
    *(v0 + 1944) = v24;
    *(v0 + 1936) = 0;
    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 1256);
    v26 = *(v0 + 1240);
    v27 = swift_task_alloc();
    *(v0 + 1960) = v27;
    *v27 = v0;
    v27[1] = sub_22B25FB94;
    v28 = *(v0 + 1424);
    v29 = *(v0 + 1248);
    v30 = *(v0 + 1232);
    v31 = MEMORY[0x277D84F90];

    sub_22B1D59F4(v31, v30, v26, v29, v25, v28);
  }

  else
  {
    *(v0 + 2020) = *MEMORY[0x277D074B0];
    *(v0 + 2024) = *MEMORY[0x277D074A8];
    *(v0 + 2028) = *MEMORY[0x277D07468];
    *(v0 + 2032) = *MEMORY[0x277D07470];
    *(v0 + 1832) = 0;
    *(v0 + 1824) = v24;
    *(v0 + 1816) = 0;
    v32 = *(v0 + 1112);
    v33 = *(v0 + 1096);
    v34 = *(v0 + 752);
    v35 = MEMORY[0x23188EEB0]();
    sub_22B26BEB8(v34, v33, v32);
    *(v0 + 1840) = v53;
    objc_autoreleasePoolPop(v35);
    if (!v53)
    {
      if (qword_27D8B9F60 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 2020);
      v37 = *(v0 + 1272);
      v38 = *(v0 + 1264);
      v39 = *(v0 + 1256);
      v40 = *(v0 + 1240);
      v41 = *(v0 + 1168);
      v42 = *(v0 + 1112);
      v43 = *(v0 + 1064);
      v44 = *(v0 + 704);
      v45 = *(v0 + 696);
      v46 = *(v0 + 688);
      *(v0 + 1848) = qword_27D8BB198;
      v38(v41, v42, v43);
      v47 = *(v45 + 104);
      *(v0 + 1856) = v47;
      *(v0 + 1864) = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v47(v44, v36, v46);
      v48 = swift_task_alloc();
      *(v0 + 1872) = v48;
      *v48 = v0;
      v48[1] = sub_22B25E0F4;
      v49 = *(v0 + 1248);
      v50 = *(v0 + 1232);
      v51 = *(v0 + 1168);
      v52 = *(v0 + 1096);
      v56 = *(v0 + 880);
      v57 = *(v0 + 704);

      sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v51, v52, v50, v40, v49, v39);
    }
  }
}

uint64_t sub_22B25E0F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1872);
  v4 = *(*v1 + 1800);
  v5 = *(*v1 + 1168);
  v6 = *(*v1 + 1064);
  v7 = *(*v1 + 704);
  v8 = *(*v1 + 696);
  v9 = *(*v1 + 688);
  v10 = *(*v1 + 536);
  v11 = *(*v1 + 1072) + 8;
  v14 = *v1;
  v2[235] = a1;

  v12 = *(v8 + 8);
  v2[236] = v12;
  v2[237] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v9);
  v2[238] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v5, v6);

  return MEMORY[0x2822009F8](sub_22B25E304, v10, 0);
}

void sub_22B25E304()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  if (*(v0 + 1880))
  {
    v2 = *(v0 + 1880);
  }

  v3 = *(v2 + 64);
  v39 = v2 + 64;
  v41 = v2;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v7 = (63 - v5) >> 6;
  v8 = 0.0;
  v40 = v7;
  *(v0 + 1912) = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v1;
LABEL_11:
      v44 = *(v0 + 1800);
      v45 = *(v0 + 1904);
      v10 = *(v0 + 1272);
      v11 = *(v0 + 1072);
      v12 = *(v0 + 1064);
      v13 = *(v0 + 680);
      v49 = *(v0 + 672);
      v43 = *(v0 + 664);
      v47 = *(v0 + 648);
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v9 << 6);
      (*(v0 + 1264))(v13, *(v41 + 48) + *(v11 + 72) * v15, v12);
      v16 = *(v41 + 56);
      v17 = sub_22B35F00C();
      v18 = *(v17 - 8);
      v19 = v16 + *(v18 + 72) * v15;
      v20 = *(v47 + 48);
      (*(v18 + 16))(v13 + v20, v19, v17);
      v42 = *(v47 + 48);
      (*(v11 + 32))(v49, v13, v12);
      (*(v18 + 32))(v49 + v42, v13 + v20, v17);
      sub_22B170BE0(v49, v43, &qword_27D8BA350, &unk_22B364020);
      v21 = v43 + *(v47 + 48);
      sub_22B35EFEC();
      v23 = v22;
      sub_22B123284(v49, &qword_27D8BA350, &unk_22B364020);
      (*(v18 + 8))(v21, v17);
      v8 = v8 + v23;
      v44(v43, v12);
      v7 = v40;
      *(v0 + 1912) = v8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v39 + 8 * v9);
    ++v1;
    if (v6)
    {
      v1 = v9;
      goto LABEL_11;
    }
  }

  v24 = *(v0 + 1856);
  v25 = *(v0 + 2024);
  v26 = *(v0 + 1272);
  v27 = *(v0 + 1264);
  v50 = *(v0 + 1256);
  v46 = *(v0 + 1864);
  v48 = *(v0 + 1240);
  v28 = *(v0 + 1168);
  v29 = *(v0 + 1112);
  v30 = *(v0 + 1064);
  v31 = *(v0 + 704);
  v32 = *(v0 + 688);

  v27(v28, v29, v30);
  v24(v31, v25, v32);
  v33 = swift_task_alloc();
  *(v0 + 1920) = v33;
  *v33 = v0;
  v33[1] = sub_22B25E6A8;
  v34 = *(v0 + 1848);
  v35 = *(v0 + 1248);
  v36 = *(v0 + 1232);
  v37 = *(v0 + 1168);
  v38 = *(v0 + 1096);
  v52 = *(v0 + 880);
  v53 = *(v0 + 704);

  sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v37, v38, v36, v48, v35, v50);
}

uint64_t sub_22B25E6A8(uint64_t a1)
{
  v2 = *(*v1 + 1920);
  v3 = *(*v1 + 1904);
  v4 = *(*v1 + 1896);
  v5 = *(*v1 + 1888);
  v6 = *(*v1 + 1800);
  v7 = *(*v1 + 1168);
  v8 = *(*v1 + 1064);
  v9 = *(*v1 + 704);
  v10 = *(*v1 + 688);
  v11 = *(*v1 + 536);
  v13 = *v1;
  *(*v1 + 1928) = a1;

  v5(v9, v10);
  v6(v7, v8);

  return MEMORY[0x2822009F8](sub_22B25E898, v11, 0);
}

uint64_t sub_22B25E898()
{
  if (*(v0 + 1928))
  {
    v2 = *(v0 + 1928);
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v193 = MEMORY[0x23188EEB0]();
  v3 = 0;
  v211 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v8 = 0.0;
  v216 = v7;
  v221 = v2;
  if (v6)
  {
    while (1)
    {
      v9 = v3;
LABEL_12:
      v234 = *(v246 + 1800);
      v239 = *(v246 + 1904);
      v10 = *(v246 + 1272);
      v11 = *(v246 + 1072);
      v242 = *(v246 + 1064);
      v12 = *(v246 + 672);
      v229 = *(v246 + 664);
      v13 = *(v246 + 656);
      v14 = *(v246 + 648);
      v15 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v16 = v15 | (v9 << 6);
      (*(v246 + 1264))(v13, *(v221 + 48) + *(v11 + 72) * v16);
      v17 = *(v221 + 56);
      v18 = sub_22B35F00C();
      v19 = *(v18 - 8);
      v20 = v17 + *(v19 + 72) * v16;
      v21 = *(v14 + 48);
      (*(v19 + 16))(v13 + v21, v20, v18);
      v22 = *(v14 + 48);
      (*(v11 + 32))(v12, v13, v242);
      (*(v19 + 32))(v12 + v22, v13 + v21, v18);
      sub_22B170BE0(v12, v229, &qword_27D8BA350, &unk_22B364020);
      v23 = *(v14 + 48);
      sub_22B35EFEC();
      v25 = v24;
      sub_22B123284(v12, &qword_27D8BA350, &unk_22B364020);
      (*(v19 + 8))(v229 + v23, v18);
      v8 = v8 + v25;
      v234(v229, v242);
      v7 = v216;
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v9 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      sub_22B360A7C();
      goto LABEL_19;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v211 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_12;
    }
  }

  v26 = *(v246 + 1912);
  v189 = *(v246 + 1840);
  v1 = *(v246 + 1816);
  v134 = *(v246 + 2032);
  v27 = *(v246 + 2028);
  v132 = *(v246 + 2028);
  v217 = *(v246 + 1464);
  v226 = *(v246 + 1456);
  v146 = *(v246 + 1448);
  v149 = *(v246 + 1440);
  v199 = *(v246 + 1272);
  v203 = *(v246 + 1264);
  v155 = *(v246 + 1248);
  v158 = *(v246 + 1256);
  v161 = *(v246 + 1232);
  v164 = *(v246 + 1240);
  v173 = *(v246 + 1168);
  v177 = *(v246 + 1208);
  v138 = *(v246 + 1112);
  v140 = *(v246 + 1096);
  v235 = *(v246 + 1080);
  v240 = *(v246 + 1088);
  v195 = *(v246 + 1064);
  v167 = *(v246 + 824);
  v136 = *(v246 + 808);
  v207 = *(v246 + 792);
  v170 = *(v246 + 784);
  v28 = *(v246 + 640);
  v143 = *(v246 + 632);
  v152 = *(v246 + 624);
  v230 = *(v246 + 616);
  v243 = *(v246 + 608);
  v29 = *(v246 + 600);
  v181 = v29;
  v212 = *(v246 + 592);
  v30 = *(v246 + 584);
  v31 = *(v246 + 576);
  v128 = *(v246 + 568);
  v32 = *(v246 + 560);
  v185 = *(v246 + 544);
  v33 = *(v246 + 504);
  v130 = *(v246 + 496);

  sub_22B35F9CC();
  sub_22B35F9BC();
  v34 = *(v29 + 104);
  v34(v230, v27, v212);
  sub_22B35F96C();
  sub_22B35F99C();
  (*(v31 + 104))(v30, v134, v128);
  sub_22B35F9AC();

  sub_22B35F98C();

  sub_22B35F95C();
  sub_22B35DF0C();
  sub_22B35DECC();
  v226(v136, v207);
  v203(v240, v138, v195);
  v203(v235, v140, v195);
  v34(v243, v132, v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABC8, &qword_22B3669C8);
  v35 = *(v143 + 72);
  v36 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_22B3634B0;
  (*(v143 + 16))(v222 + v36, v28, v152);
  *(v246 + 400) = v155;
  *(v246 + 408) = v158;

  MEMORY[0x23188E270](46, 0xE100000000000000);
  MEMORY[0x23188E270](v161, v164);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35DF0C();
  v37 = sub_22B35DECC();
  v39 = v38;
  v226(v167, v207);
  MEMORY[0x23188E270](v37, v39);

  v218 = *(v246 + 400);
  v227 = *(v246 + 408);
  sub_22B35FA8C();

  sub_22B35FA7C();

  sub_22B35F8DC();
  sub_22B35F88C();
  v203(v173, v177, v195);
  sub_22B36039C();
  sub_22B35F8AC();
  v203(v173, v235, v195);
  sub_22B36039C();
  sub_22B35F93C();
  v203(v173, v240, v195);
  sub_22B36039C();
  sub_22B35FA3C();
  sub_22B35F8CC();
  sub_22B35FA6C();
  (*(v181 + 16))(v230, v243, v212);
  sub_22B35F8FC();
  sub_22B35F91C();
  sub_22B35FA1C();
  sub_22B28C170(&qword_27D8BA6A0, MEMORY[0x277D07478]);
  v40 = sub_22B36042C();
  v244 = *(v246 + 1904);
  if (v189)
  {
    v231 = *(v246 + 1824);
    v178 = *(v246 + 1808);
    v42 = *(v246 + 1800);
    v236 = *(v246 + 1600);
    v171 = *(v246 + 1424);
    v174 = *(v246 + 1448);
    v165 = *(v246 + 1392);
    v144 = *(v246 + 1256);
    v147 = *(v246 + 1240);
    v208 = *(v246 + 1200);
    v213 = *(v246 + 1208);
    v200 = *(v246 + 1184);
    v204 = *(v246 + 1192);
    v223 = *(v246 + 1112);
    v182 = *(v246 + 1104);
    v219 = *(v246 + 1096);
    v159 = *(v246 + 1088);
    v150 = *(v246 + 1080);
    v43 = *(v246 + 1064);
    v196 = *(v246 + 880);
    v186 = *(v246 + 856);
    v190 = *(v246 + 848);
    v168 = *(v246 + 752);
    v44 = *(v246 + 744);
    v162 = *(v246 + 736);
    v45 = *(v246 + 632);
    v153 = *(v246 + 624);
    v156 = *(v246 + 640);
    v141 = *(v246 + 608);
    v46 = *(v246 + 600);
    v47 = *(v246 + 592);
    v48 = *(v246 + 560);
    v49 = *(v246 + 552);
    v50 = *(v246 + 544);

    (*(v49 + 8))(v48, v50);
    (*(v46 + 8))(v141, v47);
    v42(v150, v43);
    v42(v159, v43);
    (*(v45 + 8))(v156, v153);
    objc_autoreleasePoolPop(v193);

    (*(v44 + 8))(v168, v162);
    v42(v182, v43);
    v42(v200, v43);
    (*(v186 + 8))(v196, v190);
    v42(v204, v43);
    v42(v208, v43);
    v42(v213, v43);

    v42(v219, v43);
    v42(v223, v43);

    v51 = *(v246 + 1208);
    v52 = *(v246 + 1200);
    v53 = *(v246 + 1192);
    v54 = *(v246 + 1184);
    v55 = *(v246 + 1176);
    v56 = *(v246 + 1168);
    v57 = *(v246 + 1160);
    v58 = *(v246 + 1152);
    v59 = *(v246 + 1144);
    v60 = *(v246 + 1136);
    v116 = *(v246 + 1128);
    v117 = *(v246 + 1120);
    v118 = *(v246 + 1112);
    v119 = *(v246 + 1104);
    v120 = *(v246 + 1096);
    v121 = *(v246 + 1088);
    v122 = *(v246 + 1080);
    v123 = *(v246 + 1056);
    v124 = *(v246 + 1048);
    v125 = *(v246 + 1032);
    v126 = *(v246 + 1024);
    v127 = *(v246 + 1016);
    v129 = *(v246 + 992);
    v131 = *(v246 + 984);
    v133 = *(v246 + 976);
    v135 = *(v246 + 968);
    v137 = *(v246 + 960);
    v139 = *(v246 + 936);
    v142 = *(v246 + 928);
    v145 = *(v246 + 920);
    v148 = *(v246 + 912);
    v151 = *(v246 + 904);
    v154 = *(v246 + 896);
    v157 = *(v246 + 888);
    v160 = *(v246 + 880);
    v163 = *(v246 + 872);
    v166 = *(v246 + 864);
    v169 = *(v246 + 840);
    v172 = *(v246 + 832);
    v175 = *(v246 + 824);
    v179 = *(v246 + 816);
    v183 = *(v246 + 808);
    v187 = *(v246 + 784);
    v191 = *(v246 + 776);
    v194 = *(v246 + 752);
    v197 = *(v246 + 728);
    v201 = *(v246 + 704);
    v205 = *(v246 + 680);
    v209 = *(v246 + 672);
    v214 = *(v246 + 664);
    v220 = *(v246 + 656);
    v224 = *(v246 + 640);
    v228 = *(v246 + 616);
    v232 = *(v246 + 608);
    v237 = *(v246 + 584);
    v245 = *(v246 + 560);

    v61 = *(v246 + 8);

    return v61(0);
  }

  v241 = *(v246 + 1800);
  v63 = *(v246 + 1528);
  v64 = *(v246 + 1520);
  v65 = *(v246 + 1512);
  v176 = *(v246 + 1248);
  v180 = *(v246 + 1256);
  v188 = *(v246 + 1240);
  v184 = *(v246 + 1232);
  v233 = *(v246 + 1080);
  v238 = *(v246 + 1088);
  v225 = *(v246 + 1064);
  v210 = *(v246 + 592);
  v215 = *(v246 + 608);
  v202 = *(v246 + 560);
  v206 = *(v246 + 600);
  v192 = *(v246 + 552);
  v198 = *(v246 + 544);
  v66 = v40;
  v67 = v41;

  v68 = [v64 defaultRecordZone];
  v69 = [v68 zoneID];

  v70 = sub_22B360CBC();
  v71 = sub_22B360F4C();
  v72 = [v71 recordID];
  v73 = [v72 zoneID];

  v74 = sub_22B360CBC();
  [v71 setRecordID_];

  v75 = MEMORY[0x277CBBBE0];
  *(v246 + 248) = MEMORY[0x277CC9318];
  *(v246 + 256) = v75;
  *(v246 + 224) = v66;
  *(v246 + 232) = v67;
  sub_22B144B30(v66, v67);
  sub_22B360EBC();
  *(v246 + 416) = v176;
  *(v246 + 424) = v180;

  MEMORY[0x23188E270](46, 0xE100000000000000);
  MEMORY[0x23188E270](v184, v188);
  v76 = *(v246 + 416);
  v77 = *(v246 + 424);
  v78 = MEMORY[0x277CBBE08];
  *(v246 + 288) = MEMORY[0x277D837D0];
  *(v246 + 296) = v78;
  *(v246 + 264) = v76;
  *(v246 + 272) = v77;
  sub_22B360EBC();
  sub_22B12F174(v66, v67);

  (*(v192 + 8))(v202, v198);
  v6 = v246;
  (*(v206 + 8))(v215, v210);
  v241(v233, v225);
  v241(v238, v225);
  v3 = v71;
  MEMORY[0x23188E350]();
  if (*((*(v246 + 432) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v246 + 432) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_31;
  }

LABEL_19:
  v79 = v8 + v1;
  v80 = *(v6 + 1104);
  v81 = *(v6 + 1096);
  v82 = *(v6 + 1064);
  v83 = *(v6 + 640);
  v84 = *(v6 + 632);
  v85 = *(v6 + 624);
  sub_22B360A9C();

  (*(v84 + 8))(v83, v85);
  v86 = *(v6 + 432);
  objc_autoreleasePoolPop(v193);
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
  v87 = sub_22B36074C();
  v88 = *(v6 + 1912) + *(v6 + 1832);
  if (v87)
  {
    *(v6 + 1952) = v79;
    *(v6 + 1944) = v86;
    *(v6 + 1936) = v88;
    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v89 = *(v6 + 1256);
    v90 = *(v6 + 1240);
    v91 = swift_task_alloc();
    *(v6 + 1960) = v91;
    *v91 = v6;
    v91[1] = sub_22B25FB94;
    v92 = *(v6 + 1424);
    v93 = *(v6 + 1248);
    v94 = *(v6 + 1232);

    return sub_22B1D59F4(v86, v94, v90, v93, v89, v92);
  }

  else
  {
    *(v6 + 1832) = v88;
    *(v6 + 1824) = v86;
    *(v6 + 1816) = v79;
    v95 = *(v6 + 1112);
    v96 = *(v6 + 1096);
    v97 = *(v6 + 752);
    v98 = MEMORY[0x23188EEB0]();
    sub_22B26BEB8(v97, v96, v95);
    *(v6 + 1840) = 0;
    objc_autoreleasePoolPop(v98);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v99 = *(v6 + 2020);
    v100 = *(v6 + 1272);
    v101 = *(v6 + 1264);
    v102 = *(v6 + 1256);
    v103 = *(v6 + 1240);
    v104 = *(v6 + 1168);
    v105 = *(v6 + 1112);
    v106 = *(v6 + 1064);
    v107 = *(v6 + 704);
    v108 = *(v6 + 696);
    v109 = *(v6 + 688);
    *(v6 + 1848) = qword_27D8BB198;
    v101(v104, v105, v106);
    v110 = *(v108 + 104);
    *(v6 + 1856) = v110;
    *(v6 + 1864) = (v108 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v110(v107, v99, v109);
    v111 = swift_task_alloc();
    *(v6 + 1872) = v111;
    *v111 = v6;
    v111[1] = sub_22B25E0F4;
    v112 = *(v6 + 1248);
    v113 = *(v6 + 1232);
    v114 = *(v6 + 1168);
    v115 = *(v6 + 1096);
    v248 = *(v6 + 880);
    v249 = *(v6 + 704);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v114, v115, v113, v103, v112, v102);
  }
}

uint64_t sub_22B25FB94()
{
  v2 = *v1;
  v3 = *(*v1 + 1960);
  v4 = *v1;
  *(*v1 + 1968) = v0;

  v5 = v2[157];
  v6 = v2[155];
  v7 = v2[67];

  if (v0)
  {
    v8 = sub_22B262744;
  }

  else
  {

    v8 = sub_22B25FD20;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B25FD20()
{
  v1 = *(v0 + 1624);
  (*(v0 + 1616))(*(v0 + 968), *(v0 + 1608), *(v0 + 944));
  v2 = sub_22B36050C();
  v3 = sub_22B360D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1936);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_22B116000, v2, v3, "[MOCK] Generated total imports:%f and total exports:%f", v6, 0x16u);
    MEMORY[0x23188F650](v6, -1, -1);
  }

  v7 = *(v0 + 1632);
  v8 = *(v0 + 968);
  v9 = *(v0 + 952);
  v10 = *(v0 + 944);

  v7(v8, v10);
  v11 = type metadata accessor for AMIRecordsProcessor();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 1976) = sub_22B1B79F4();
  v14 = swift_task_alloc();
  *(v0 + 1984) = v14;
  *v14 = v0;
  v14[1] = sub_22B25FEC0;
  v16 = *(v0 + 440);
  v15 = *(v0 + 448);

  return sub_22B1C437C(v16, v15);
}

uint64_t sub_22B25FEC0()
{
  v2 = *v1;
  v3 = *(*v1 + 1984);
  v4 = *v1;
  *(*v1 + 1992) = v0;

  v5 = *(v2 + 1976);
  v6 = *(v2 + 536);

  if (v0)
  {
    v7 = sub_22B262C28;
  }

  else
  {
    v7 = sub_22B260008;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B260008()
{
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v1 = v0[151];
  v2 = v0[146];
  v3 = qword_28140BC80;
  v0[250] = qword_28140BC80;
  sub_22B35F5BC();
  sub_22B35DDCC();

  return MEMORY[0x2822009F8](sub_22B2600C8, v3, 0);
}

uint64_t sub_22B2600C8()
{
  v1 = v0[250];
  v2 = v0[225];
  v3 = v0[146];
  v4 = v0[134];
  v5 = v0[133];
  v6 = v0[67];
  sub_22B21AAAC(v3);
  v0[251] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v5);

  return MEMORY[0x2822009F8](sub_22B26017C, v6, 0);
}

uint64_t sub_22B26017C()
{
  v1 = *(v0 + 2008);
  v2 = *(v0 + 1800);
  v76 = *(v0 + 1944);
  v78 = *(v0 + 1600);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1424);
  v68 = *(v0 + 1200);
  v70 = *(v0 + 1208);
  v60 = *(v0 + 1184);
  v74 = *(v0 + 1112);
  v56 = *(v0 + 1808);
  v58 = *(v0 + 1104);
  v72 = *(v0 + 1096);
  v5 = *(v0 + 1064);
  v64 = *(v0 + 880);
  v66 = *(v0 + 1192);
  v6 = *(v0 + 856);
  v62 = *(v0 + 848);
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);

  (*(v8 + 8))(v7, v9);
  v2(v58, v5);
  v2(v60, v5);
  (*(v6 + 8))(v64, v62);
  v2(v66, v5);
  v2(v68, v5);
  v2(v70, v5);

  v2(v72, v5);
  v2(v74, v5);

  v10 = *(v0 + 1208);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 1192);
  v13 = *(v0 + 1184);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1136);
  v22 = *(v0 + 1128);
  v23 = *(v0 + 1120);
  v24 = *(v0 + 1112);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1096);
  v27 = *(v0 + 1088);
  v28 = *(v0 + 1080);
  v29 = *(v0 + 1056);
  v30 = *(v0 + 1048);
  v31 = *(v0 + 1032);
  v32 = *(v0 + 1024);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 992);
  v35 = *(v0 + 984);
  v36 = *(v0 + 976);
  v37 = *(v0 + 968);
  v38 = *(v0 + 960);
  v39 = *(v0 + 936);
  v40 = *(v0 + 928);
  v41 = *(v0 + 920);
  v42 = *(v0 + 912);
  v43 = *(v0 + 904);
  v44 = *(v0 + 896);
  v45 = *(v0 + 888);
  v46 = *(v0 + 880);
  v47 = *(v0 + 872);
  v48 = *(v0 + 864);
  v49 = *(v0 + 840);
  v50 = *(v0 + 832);
  v51 = *(v0 + 824);
  v52 = *(v0 + 816);
  v53 = *(v0 + 808);
  v54 = *(v0 + 784);
  v55 = *(v0 + 776);
  v57 = *(v0 + 752);
  v59 = *(v0 + 728);
  v61 = *(v0 + 704);
  v63 = *(v0 + 680);
  v65 = *(v0 + 672);
  v67 = *(v0 + 664);
  v69 = *(v0 + 656);
  v71 = *(v0 + 640);
  v73 = *(v0 + 616);
  v75 = *(v0 + 608);
  v77 = *(v0 + 584);
  v79 = *(v0 + 560);

  v20 = *(v0 + 8);

  return v20(1);
}

uint64_t sub_22B260614()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);
  v65 = *(v0 + 1328);
  v7 = *(v0 + 1208);
  v8 = *(v0 + 1200);
  v9 = *(v0 + 1192);
  v10 = *(v0 + 1184);
  v11 = *(v0 + 1176);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  v14 = *(v0 + 1152);
  v15 = *(v0 + 1144);
  v16 = *(v0 + 1136);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1112);
  v22 = *(v0 + 1104);
  v23 = *(v0 + 1096);
  v24 = *(v0 + 1088);
  v25 = *(v0 + 1080);
  v26 = *(v0 + 1056);
  v27 = *(v0 + 1048);
  v28 = *(v0 + 1032);
  v29 = *(v0 + 1024);
  v30 = *(v0 + 1016);
  v31 = *(v0 + 992);
  v32 = *(v0 + 984);
  v33 = *(v0 + 976);
  v34 = *(v0 + 968);
  v35 = *(v0 + 960);
  v36 = *(v0 + 936);
  v37 = *(v0 + 928);
  v38 = *(v0 + 920);
  v39 = *(v0 + 912);
  v40 = *(v0 + 904);
  v41 = *(v0 + 896);
  v42 = *(v0 + 888);
  v43 = *(v0 + 880);
  v44 = *(v0 + 872);
  v45 = *(v0 + 864);
  v46 = *(v0 + 840);
  v47 = *(v0 + 832);
  v48 = *(v0 + 824);
  v49 = *(v0 + 816);
  v50 = *(v0 + 808);
  v51 = *(v0 + 784);
  v52 = *(v0 + 776);
  v53 = *(v0 + 752);
  v54 = *(v0 + 728);
  v55 = *(v0 + 704);
  v56 = *(v0 + 680);
  v57 = *(v0 + 672);
  v58 = *(v0 + 664);
  v59 = *(v0 + 656);
  v60 = *(v0 + 640);
  v61 = *(v0 + 616);
  v62 = *(v0 + 608);
  v63 = *(v0 + 584);
  v64 = *(v0 + 560);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_22B2609F4()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  v7(v2, v6);

  v66 = *(v0 + 1352);
  v8 = *(v0 + 1208);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v13 = *(v0 + 1168);
  v14 = *(v0 + 1160);
  v15 = *(v0 + 1152);
  v16 = *(v0 + 1144);
  v17 = *(v0 + 1136);
  v20 = *(v0 + 1128);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);
  v23 = *(v0 + 1104);
  v24 = *(v0 + 1096);
  v25 = *(v0 + 1088);
  v26 = *(v0 + 1080);
  v27 = *(v0 + 1056);
  v28 = *(v0 + 1048);
  v29 = *(v0 + 1032);
  v30 = *(v0 + 1024);
  v31 = *(v0 + 1016);
  v32 = *(v0 + 992);
  v33 = *(v0 + 984);
  v34 = *(v0 + 976);
  v35 = *(v0 + 968);
  v36 = *(v0 + 960);
  v37 = *(v0 + 936);
  v38 = *(v0 + 928);
  v39 = *(v0 + 920);
  v40 = *(v0 + 912);
  v41 = *(v0 + 904);
  v42 = *(v0 + 896);
  v43 = *(v0 + 888);
  v44 = *(v0 + 880);
  v45 = *(v0 + 872);
  v46 = *(v0 + 864);
  v47 = *(v0 + 840);
  v48 = *(v0 + 832);
  v49 = *(v0 + 824);
  v50 = *(v0 + 816);
  v51 = *(v0 + 808);
  v52 = *(v0 + 784);
  v53 = *(v0 + 776);
  v54 = *(v0 + 752);
  v55 = *(v0 + 728);
  v56 = *(v0 + 704);
  v57 = *(v0 + 680);
  v58 = *(v0 + 672);
  v59 = *(v0 + 664);
  v60 = *(v0 + 656);
  v61 = *(v0 + 640);
  v62 = *(v0 + 616);
  v63 = *(v0 + 608);
  v64 = *(v0 + 584);
  v65 = *(v0 + 560);

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_22B260DE0()
{
  v1 = *(v0 + 1224);
  v69 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);
  v7 = *(v0 + 880);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);

  v10 = *(v5 + 8);
  v10(v4, v6);
  (*(v8 + 8))(v7, v9);
  v10(v3, v6);
  v10(v2, v6);
  v10(v69, v6);
  v70 = *(v0 + 1432);
  v11 = *(v0 + 1208);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1192);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1176);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 1144);
  v20 = *(v0 + 1136);
  v23 = *(v0 + 1128);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1112);
  v26 = *(v0 + 1104);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 1080);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 1048);
  v32 = *(v0 + 1032);
  v33 = *(v0 + 1024);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 992);
  v36 = *(v0 + 984);
  v37 = *(v0 + 976);
  v38 = *(v0 + 968);
  v39 = *(v0 + 960);
  v40 = *(v0 + 936);
  v41 = *(v0 + 928);
  v42 = *(v0 + 920);
  v43 = *(v0 + 912);
  v44 = *(v0 + 904);
  v45 = *(v0 + 896);
  v46 = *(v0 + 888);
  v47 = *(v0 + 880);
  v48 = *(v0 + 872);
  v49 = *(v0 + 864);
  v50 = *(v0 + 840);
  v51 = *(v0 + 832);
  v52 = *(v0 + 824);
  v53 = *(v0 + 816);
  v54 = *(v0 + 808);
  v55 = *(v0 + 784);
  v56 = *(v0 + 776);
  v57 = *(v0 + 752);
  v58 = *(v0 + 728);
  v59 = *(v0 + 704);
  v60 = *(v0 + 680);
  v61 = *(v0 + 672);
  v62 = *(v0 + 664);
  v63 = *(v0 + 656);
  v64 = *(v0 + 640);
  v65 = *(v0 + 616);
  v66 = *(v0 + 608);
  v67 = *(v0 + 584);
  v68 = *(v0 + 560);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_22B261208()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1224);
  v69 = *(v0 + 1200);
  v71 = *(v0 + 1208);
  v67 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);
  v7 = *(v0 + 880);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);

  v10 = *(v5 + 8);
  v10(v4, v6);
  (*(v8 + 8))(v7, v9);
  v10(v67, v6);
  v10(v69, v6);
  v10(v71, v6);
  v72 = *(v0 + 1592);
  v11 = *(v0 + 1208);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1192);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1176);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 1144);
  v20 = *(v0 + 1136);
  v23 = *(v0 + 1128);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1112);
  v26 = *(v0 + 1104);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 1080);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 1048);
  v32 = *(v0 + 1032);
  v33 = *(v0 + 1024);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 992);
  v36 = *(v0 + 984);
  v37 = *(v0 + 976);
  v38 = *(v0 + 968);
  v39 = *(v0 + 960);
  v40 = *(v0 + 936);
  v41 = *(v0 + 928);
  v42 = *(v0 + 920);
  v43 = *(v0 + 912);
  v44 = *(v0 + 904);
  v45 = *(v0 + 896);
  v46 = *(v0 + 888);
  v47 = *(v0 + 880);
  v48 = *(v0 + 872);
  v49 = *(v0 + 864);
  v50 = *(v0 + 840);
  v51 = *(v0 + 832);
  v52 = *(v0 + 824);
  v53 = *(v0 + 816);
  v54 = *(v0 + 808);
  v55 = *(v0 + 784);
  v56 = *(v0 + 776);
  v57 = *(v0 + 752);
  v58 = *(v0 + 728);
  v59 = *(v0 + 704);
  v60 = *(v0 + 680);
  v61 = *(v0 + 672);
  v62 = *(v0 + 664);
  v63 = *(v0 + 656);
  v64 = *(v0 + 640);
  v65 = *(v0 + 616);
  v66 = *(v0 + 608);
  v68 = *(v0 + 584);
  v70 = *(v0 + 560);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_22B261648()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1224);
  v70 = *(v0 + 1208);
  v72 = *(v0 + 1600);
  v66 = *(v0 + 1192);
  v68 = *(v0 + 1200);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);
  v7 = *(v0 + 880);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);

  v10 = *(v5 + 8);
  v10(v4, v6);
  (*(v8 + 8))(v7, v9);
  v10(v66, v6);
  v10(v68, v6);
  v10(v70, v6);

  v73 = *(v0 + 1656);
  v11 = *(v0 + 1208);
  v12 = *(v0 + 1200);
  v13 = *(v0 + 1192);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1176);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 1144);
  v20 = *(v0 + 1136);
  v23 = *(v0 + 1128);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1112);
  v26 = *(v0 + 1104);
  v27 = *(v0 + 1096);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 1080);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 1048);
  v32 = *(v0 + 1032);
  v33 = *(v0 + 1024);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 992);
  v36 = *(v0 + 984);
  v37 = *(v0 + 976);
  v38 = *(v0 + 968);
  v39 = *(v0 + 960);
  v40 = *(v0 + 936);
  v41 = *(v0 + 928);
  v42 = *(v0 + 920);
  v43 = *(v0 + 912);
  v44 = *(v0 + 904);
  v45 = *(v0 + 896);
  v46 = *(v0 + 888);
  v47 = *(v0 + 880);
  v48 = *(v0 + 872);
  v49 = *(v0 + 864);
  v50 = *(v0 + 840);
  v51 = *(v0 + 832);
  v52 = *(v0 + 824);
  v53 = *(v0 + 816);
  v54 = *(v0 + 808);
  v55 = *(v0 + 784);
  v56 = *(v0 + 776);
  v57 = *(v0 + 752);
  v58 = *(v0 + 728);
  v59 = *(v0 + 704);
  v60 = *(v0 + 680);
  v61 = *(v0 + 672);
  v62 = *(v0 + 664);
  v63 = *(v0 + 656);
  v64 = *(v0 + 640);
  v65 = *(v0 + 616);
  v67 = *(v0 + 608);
  v69 = *(v0 + 584);
  v71 = *(v0 + 560);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_22B261A94()
{
  v1 = *(v0 + 1736);

  v2 = *(v0 + 1752);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1624);
  (*(v0 + 1616))(*(v0 + 960), *(v0 + 1608), *(v0 + 944));
  v5 = v2;
  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B116000, v6, v7, "[MOCK GENERATOR] Interval Readings error %@", v8, 0xCu);
    sub_22B123284(v9, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 952) + 8;
  (*(v0 + 1632))(*(v0 + 960), *(v0 + 944));
  *(v0 + 1808) = *(v0 + 1224);
  *(v0 + 1800) = v3;
  v13 = *(v0 + 1272);
  v14 = *(v0 + 1264);
  v15 = *(v0 + 1192);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1064);
  v64 = *(v0 + 752);
  v18 = *(v0 + 728);
  v19 = *(v0 + 720);
  v20 = *(v0 + 712);
  v14(*(v0 + 1112), *(v0 + 1200), v17);
  v14(v16, v15, v17);
  (*(v19 + 104))(v18, *MEMORY[0x277CC9830], v20);
  sub_22B35DFAC();
  (*(v19 + 8))(v18, v20);
  sub_22B35F41C();
  if (v21)
  {
    v22 = *(v0 + 1368);
    v23 = *(v0 + 1360);
    v24 = *(v0 + 848);
    v25 = *(v0 + 832);
    sub_22B35E05C();

    if (v23(v25, 1, v24) == 1)
    {
      sub_22B123284(*(v0 + 832), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v26 = *(v0 + 1384);
      v27 = *(v0 + 872);
      v28 = *(v0 + 864);
      v29 = *(v0 + 856);
      v30 = *(v0 + 848);
      v31 = *(v0 + 752);
      (*(v0 + 1376))(v27, *(v0 + 832), v30);
      (*(v29 + 16))(v28, v27, v30);
      sub_22B35E01C();
      (*(v29 + 8))(v27, v30);
    }
  }

  v32 = *(v0 + 1272);
  v33 = *(v0 + 1104);
  (*(v0 + 1264))(*(v0 + 1096), *(v0 + 1112), *(v0 + 1064));
  v34 = MEMORY[0x277D84F90];
  *(v0 + 432) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    *(v0 + 1952) = 0;
    *(v0 + 1944) = v34;
    *(v0 + 1936) = 0;
    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 1256);
    v36 = *(v0 + 1240);
    v37 = swift_task_alloc();
    *(v0 + 1960) = v37;
    *v37 = v0;
    v37[1] = sub_22B25FB94;
    v38 = *(v0 + 1424);
    v39 = *(v0 + 1248);
    v40 = *(v0 + 1232);
    v41 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v41, v40, v36, v39, v35, v38);
  }

  else
  {
    *(v0 + 2020) = *MEMORY[0x277D074B0];
    *(v0 + 2024) = *MEMORY[0x277D074A8];
    *(v0 + 2028) = *MEMORY[0x277D07468];
    *(v0 + 2032) = *MEMORY[0x277D07470];
    *(v0 + 1832) = 0;
    *(v0 + 1824) = v34;
    *(v0 + 1816) = 0;
    v43 = *(v0 + 1112);
    v44 = *(v0 + 1096);
    v45 = *(v0 + 752);
    v46 = MEMORY[0x23188EEB0]();
    sub_22B26BEB8(v45, v44, v43);
    *(v0 + 1840) = 0;
    objc_autoreleasePoolPop(v46);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 2020);
    v48 = *(v0 + 1272);
    v49 = *(v0 + 1264);
    v50 = *(v0 + 1256);
    v51 = *(v0 + 1240);
    v52 = *(v0 + 1168);
    v53 = *(v0 + 1112);
    v54 = *(v0 + 1064);
    v55 = *(v0 + 704);
    v56 = *(v0 + 696);
    v57 = *(v0 + 688);
    *(v0 + 1848) = qword_27D8BB198;
    v49(v52, v53, v54);
    v58 = *(v56 + 104);
    *(v0 + 1856) = v58;
    *(v0 + 1864) = (v56 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v58(v55, v47, v57);
    v59 = swift_task_alloc();
    *(v0 + 1872) = v59;
    *v59 = v0;
    v59[1] = sub_22B25E0F4;
    v60 = *(v0 + 1248);
    v61 = *(v0 + 1232);
    v62 = *(v0 + 1168);
    v63 = *(v0 + 1096);
    v66 = *(v0 + 880);
    v67 = *(v0 + 704);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v62, v63, v61, v51, v60, v50);
  }
}

uint64_t sub_22B2620EC()
{
  v1 = *(v0 + 1768);

  v2 = *(v0 + 1784);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1624);
  (*(v0 + 1616))(*(v0 + 960), *(v0 + 1608), *(v0 + 944));
  v5 = v2;
  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B116000, v6, v7, "[MOCK GENERATOR] Interval Readings error %@", v8, 0xCu);
    sub_22B123284(v9, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 952) + 8;
  (*(v0 + 1632))(*(v0 + 960), *(v0 + 944));
  *(v0 + 1808) = *(v0 + 1224);
  *(v0 + 1800) = v3;
  v13 = *(v0 + 1272);
  v14 = *(v0 + 1264);
  v15 = *(v0 + 1192);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1064);
  v64 = *(v0 + 752);
  v18 = *(v0 + 728);
  v19 = *(v0 + 720);
  v20 = *(v0 + 712);
  v14(*(v0 + 1112), *(v0 + 1200), v17);
  v14(v16, v15, v17);
  (*(v19 + 104))(v18, *MEMORY[0x277CC9830], v20);
  sub_22B35DFAC();
  (*(v19 + 8))(v18, v20);
  sub_22B35F41C();
  if (v21)
  {
    v22 = *(v0 + 1368);
    v23 = *(v0 + 1360);
    v24 = *(v0 + 848);
    v25 = *(v0 + 832);
    sub_22B35E05C();

    if (v23(v25, 1, v24) == 1)
    {
      sub_22B123284(*(v0 + 832), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v26 = *(v0 + 1384);
      v27 = *(v0 + 872);
      v28 = *(v0 + 864);
      v29 = *(v0 + 856);
      v30 = *(v0 + 848);
      v31 = *(v0 + 752);
      (*(v0 + 1376))(v27, *(v0 + 832), v30);
      (*(v29 + 16))(v28, v27, v30);
      sub_22B35E01C();
      (*(v29 + 8))(v27, v30);
    }
  }

  v32 = *(v0 + 1272);
  v33 = *(v0 + 1104);
  (*(v0 + 1264))(*(v0 + 1096), *(v0 + 1112), *(v0 + 1064));
  v34 = MEMORY[0x277D84F90];
  *(v0 + 432) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    *(v0 + 1952) = 0;
    *(v0 + 1944) = v34;
    *(v0 + 1936) = 0;
    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 1256);
    v36 = *(v0 + 1240);
    v37 = swift_task_alloc();
    *(v0 + 1960) = v37;
    *v37 = v0;
    v37[1] = sub_22B25FB94;
    v38 = *(v0 + 1424);
    v39 = *(v0 + 1248);
    v40 = *(v0 + 1232);
    v41 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v41, v40, v36, v39, v35, v38);
  }

  else
  {
    *(v0 + 2020) = *MEMORY[0x277D074B0];
    *(v0 + 2024) = *MEMORY[0x277D074A8];
    *(v0 + 2028) = *MEMORY[0x277D07468];
    *(v0 + 2032) = *MEMORY[0x277D07470];
    *(v0 + 1832) = 0;
    *(v0 + 1824) = v34;
    *(v0 + 1816) = 0;
    v43 = *(v0 + 1112);
    v44 = *(v0 + 1096);
    v45 = *(v0 + 752);
    v46 = MEMORY[0x23188EEB0]();
    sub_22B26BEB8(v45, v44, v43);
    *(v0 + 1840) = 0;
    objc_autoreleasePoolPop(v46);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 2020);
    v48 = *(v0 + 1272);
    v49 = *(v0 + 1264);
    v50 = *(v0 + 1256);
    v51 = *(v0 + 1240);
    v52 = *(v0 + 1168);
    v53 = *(v0 + 1112);
    v54 = *(v0 + 1064);
    v55 = *(v0 + 704);
    v56 = *(v0 + 696);
    v57 = *(v0 + 688);
    *(v0 + 1848) = qword_27D8BB198;
    v49(v52, v53, v54);
    v58 = *(v56 + 104);
    *(v0 + 1856) = v58;
    *(v0 + 1864) = (v56 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v58(v55, v47, v57);
    v59 = swift_task_alloc();
    *(v0 + 1872) = v59;
    *v59 = v0;
    v59[1] = sub_22B25E0F4;
    v60 = *(v0 + 1248);
    v61 = *(v0 + 1232);
    v62 = *(v0 + 1168);
    v63 = *(v0 + 1096);
    v66 = *(v0 + 880);
    v67 = *(v0 + 704);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v62, v63, v61, v51, v60, v50);
  }
}

uint64_t sub_22B262744()
{
  v1 = *(v0 + 1800);
  v77 = *(v0 + 1944);
  v79 = *(v0 + 1600);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1424);
  v69 = *(v0 + 1200);
  v71 = *(v0 + 1208);
  v63 = *(v0 + 1184);
  v75 = *(v0 + 1112);
  v57 = *(v0 + 1808);
  v59 = *(v0 + 1104);
  v73 = *(v0 + 1096);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v65 = *(v0 + 880);
  v67 = *(v0 + 1192);
  v6 = *(v0 + 856);
  v61 = *(v0 + 848);
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);

  (*(v8 + 8))(v7, v9);
  v1(v59, v5);
  v1(v63, v5);
  (*(v6 + 8))(v65, v61);
  v1(v67, v5);
  v1(v69, v5);
  v1(v71, v5);

  v1(v73, v5);
  v1(v75, v5);

  v80 = *(v0 + 1968);
  v10 = *(v0 + 1208);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 1192);
  v13 = *(v0 + 1184);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1136);
  v22 = *(v0 + 1128);
  v23 = *(v0 + 1120);
  v24 = *(v0 + 1112);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1096);
  v27 = *(v0 + 1088);
  v28 = *(v0 + 1080);
  v29 = *(v0 + 1056);
  v30 = *(v0 + 1048);
  v31 = *(v0 + 1032);
  v32 = *(v0 + 1024);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 992);
  v35 = *(v0 + 984);
  v36 = *(v0 + 976);
  v37 = *(v0 + 968);
  v38 = *(v0 + 960);
  v39 = *(v0 + 936);
  v40 = *(v0 + 928);
  v41 = *(v0 + 920);
  v42 = *(v0 + 912);
  v43 = *(v0 + 904);
  v44 = *(v0 + 896);
  v45 = *(v0 + 888);
  v46 = *(v0 + 880);
  v47 = *(v0 + 872);
  v48 = *(v0 + 864);
  v49 = *(v0 + 840);
  v50 = *(v0 + 832);
  v51 = *(v0 + 824);
  v52 = *(v0 + 816);
  v53 = *(v0 + 808);
  v54 = *(v0 + 784);
  v55 = *(v0 + 776);
  v56 = *(v0 + 752);
  v58 = *(v0 + 728);
  v60 = *(v0 + 704);
  v62 = *(v0 + 680);
  v64 = *(v0 + 672);
  v66 = *(v0 + 664);
  v68 = *(v0 + 656);
  v70 = *(v0 + 640);
  v72 = *(v0 + 616);
  v74 = *(v0 + 608);
  v76 = *(v0 + 584);
  v78 = *(v0 + 560);

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_22B262C28()
{
  v1 = *(v0 + 1800);
  v77 = *(v0 + 1944);
  v79 = *(v0 + 1600);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1424);
  v69 = *(v0 + 1200);
  v71 = *(v0 + 1208);
  v63 = *(v0 + 1184);
  v75 = *(v0 + 1112);
  v57 = *(v0 + 1808);
  v59 = *(v0 + 1104);
  v73 = *(v0 + 1096);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v65 = *(v0 + 880);
  v67 = *(v0 + 1192);
  v6 = *(v0 + 856);
  v61 = *(v0 + 848);
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);

  (*(v8 + 8))(v7, v9);
  v1(v59, v5);
  v1(v63, v5);
  (*(v6 + 8))(v65, v61);
  v1(v67, v5);
  v1(v69, v5);
  v1(v71, v5);

  v1(v73, v5);
  v1(v75, v5);

  v80 = *(v0 + 1992);
  v10 = *(v0 + 1208);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 1192);
  v13 = *(v0 + 1184);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1136);
  v22 = *(v0 + 1128);
  v23 = *(v0 + 1120);
  v24 = *(v0 + 1112);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1096);
  v27 = *(v0 + 1088);
  v28 = *(v0 + 1080);
  v29 = *(v0 + 1056);
  v30 = *(v0 + 1048);
  v31 = *(v0 + 1032);
  v32 = *(v0 + 1024);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 992);
  v35 = *(v0 + 984);
  v36 = *(v0 + 976);
  v37 = *(v0 + 968);
  v38 = *(v0 + 960);
  v39 = *(v0 + 936);
  v40 = *(v0 + 928);
  v41 = *(v0 + 920);
  v42 = *(v0 + 912);
  v43 = *(v0 + 904);
  v44 = *(v0 + 896);
  v45 = *(v0 + 888);
  v46 = *(v0 + 880);
  v47 = *(v0 + 872);
  v48 = *(v0 + 864);
  v49 = *(v0 + 840);
  v50 = *(v0 + 832);
  v51 = *(v0 + 824);
  v52 = *(v0 + 816);
  v53 = *(v0 + 808);
  v54 = *(v0 + 784);
  v55 = *(v0 + 776);
  v56 = *(v0 + 752);
  v58 = *(v0 + 728);
  v60 = *(v0 + 704);
  v62 = *(v0 + 680);
  v64 = *(v0 + 672);
  v66 = *(v0 + 664);
  v68 = *(v0 + 656);
  v70 = *(v0 + 640);
  v72 = *(v0 + 616);
  v74 = *(v0 + 608);
  v76 = *(v0 + 584);
  v78 = *(v0 + 560);

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_22B26310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v10 + 320) = v59;
  *(v10 + 328) = v9;
  *(v10 + 288) = v57;
  *(v10 + 304) = v58;
  *(v10 + 272) = a7;
  *(v10 + 280) = a8;
  *(v10 + 264) = a9;
  *(v10 + 248) = a5;
  *(v10 + 256) = a6;
  *(v10 + 232) = a3;
  *(v10 + 240) = a4;
  *(v10 + 216) = a1;
  *(v10 + 224) = a2;
  v11 = sub_22B35FD8C();
  *(v10 + 336) = v11;
  v12 = *(v11 - 8);
  *(v10 + 344) = v12;
  v13 = *(v12 + 64) + 15;
  *(v10 + 352) = swift_task_alloc();
  v14 = sub_22B35DF1C();
  *(v10 + 360) = v14;
  v15 = *(v14 - 8);
  *(v10 + 368) = v15;
  v16 = *(v15 + 64) + 15;
  *(v10 + 376) = swift_task_alloc();
  v17 = sub_22B35FC0C();
  *(v10 + 384) = v17;
  v18 = *(v17 - 8);
  *(v10 + 392) = v18;
  v19 = *(v18 + 64) + 15;
  *(v10 + 400) = swift_task_alloc();
  *(v10 + 408) = swift_task_alloc();
  v20 = sub_22B35FD2C();
  *(v10 + 416) = v20;
  v21 = *(v20 - 8);
  *(v10 + 424) = v21;
  v22 = *(v21 + 64) + 15;
  *(v10 + 432) = swift_task_alloc();
  *(v10 + 440) = swift_task_alloc();
  v23 = sub_22B35FC8C();
  *(v10 + 448) = v23;
  v24 = *(v23 - 8);
  *(v10 + 456) = v24;
  v25 = *(v24 + 64) + 15;
  *(v10 + 464) = swift_task_alloc();
  *(v10 + 472) = swift_task_alloc();
  v26 = *(*(sub_22B3603AC() - 8) + 64) + 15;
  *(v10 + 480) = swift_task_alloc();
  v27 = sub_22B35FB9C();
  *(v10 + 488) = v27;
  v28 = *(v27 - 8);
  *(v10 + 496) = v28;
  v29 = *(v28 + 64) + 15;
  *(v10 + 504) = swift_task_alloc();
  *(v10 + 512) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD0, &unk_22B366EE0);
  *(v10 + 520) = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  *(v10 + 528) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v10 + 536) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD8, &qword_22B3669E0);
  *(v10 + 544) = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  *(v10 + 552) = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABE0, &unk_22B366EF0);
  *(v10 + 560) = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  *(v10 + 568) = swift_task_alloc();
  v37 = sub_22B35DA4C();
  *(v10 + 576) = v37;
  v38 = *(v37 - 8);
  *(v10 + 584) = v38;
  v39 = *(v38 + 64) + 15;
  *(v10 + 592) = swift_task_alloc();
  *(v10 + 600) = swift_task_alloc();
  v40 = sub_22B36052C();
  *(v10 + 608) = v40;
  v41 = *(v40 - 8);
  *(v10 + 616) = v41;
  v42 = *(v41 + 64) + 15;
  *(v10 + 624) = swift_task_alloc();
  *(v10 + 632) = swift_task_alloc();
  *(v10 + 640) = swift_task_alloc();
  *(v10 + 648) = swift_task_alloc();
  *(v10 + 656) = swift_task_alloc();
  v43 = sub_22B35DE9C();
  *(v10 + 664) = v43;
  v44 = *(v43 - 8);
  *(v10 + 672) = v44;
  v45 = *(v44 + 64) + 15;
  *(v10 + 680) = swift_task_alloc();
  *(v10 + 688) = swift_task_alloc();
  *(v10 + 696) = swift_task_alloc();
  *(v10 + 704) = swift_task_alloc();
  *(v10 + 712) = swift_task_alloc();
  *(v10 + 720) = swift_task_alloc();
  *(v10 + 728) = swift_task_alloc();
  v46 = sub_22B35E0BC();
  *(v10 + 736) = v46;
  v47 = *(v46 - 8);
  *(v10 + 744) = v47;
  v48 = *(v47 + 64) + 15;
  *(v10 + 752) = swift_task_alloc();
  *(v10 + 760) = swift_task_alloc();
  v49 = sub_22B35DF9C();
  *(v10 + 768) = v49;
  v50 = *(v49 - 8);
  *(v10 + 776) = v50;
  v51 = *(v50 + 64) + 15;
  *(v10 + 784) = swift_task_alloc();
  v52 = sub_22B35E04C();
  *(v10 + 792) = v52;
  v53 = *(v52 - 8);
  *(v10 + 800) = v53;
  v54 = *(v53 + 64) + 15;
  *(v10 + 808) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2637BC, v9, 0);
}

uint64_t sub_22B2637BC()
{
  v414 = v0;
  v305 = MEMORY[0x277D84F90];
  *(v0 + 200) = MEMORY[0x277D84F90];
  v1 = (v0 + 200);
  v2 = v1[76];
  v3 = v1[73];
  v4 = v1[72];
  v5 = v1[71];
  v6 = v1[70];
  v7 = v1[68];
  v8 = v1[66];
  v393 = v1[65];
  v9 = v1[59];
  v404 = v1[58];
  v10 = v1[14];
  v391 = v1[7];
  v376 = v1[67];
  v383 = v1[6];
  (*(v4 + 104))(v3, *MEMORY[0x277CC9830], v5);
  sub_22B35DFAC();
  (*(v4 + 8))(v3, v5);
  v11 = *(v7 + 16);
  v1[77] = v11;
  v1[78] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v6, v10, v376);
  sub_22B35E01C();
  sub_22B35F50C();
  isUniquelyReferenced_nonNull_native = 1;
  swift_beginAccess();
  sub_22B35F63C();
  LOBYTE(v2) = sub_22B35DDFC();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v1[79] = v14;
  v14(v393, v404);
  v304 = v1;
  if ((v2 & 1) == 0)
  {
    v23 = v411;
    v244 = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    goto LABEL_96;
  }

  v15 = MEMORY[0x277CC9998];
  v16 = MEMORY[0x277CC9950];
  v17 = MEMORY[0x277CC9968];
  v18 = MEMORY[0x277D07490];
  v19 = MEMORY[0x277CC9980];
  v20 = MEMORY[0x277D074D0];
  v21 = MEMORY[0x277D074D8];
  v22 = MEMORY[0x277D074B0];
  v23 = v411;
  *(v411 + 960) = *MEMORY[0x277CC9988];
  *(v411 + 964) = *v15;
  *(v411 + 968) = *v16;
  *(v411 + 972) = *v17;
  *(v411 + 976) = *v18;
  *(v411 + 980) = *v19;
  *(v411 + 984) = *v20;
  *(v411 + 988) = *v21;
  *(v411 + 992) = *v22;
  isUniquelyReferenced_nonNull_native = 1;
  v305 = MEMORY[0x277D84F90];
  while (2)
  {
    v303 = isUniquelyReferenced_nonNull_native;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = *(v23 + 824);
    v25 = *(v23 + 816);
    v26 = *(v23 + 752);
    v27 = *(v23 + 736);
    v28 = *(v23 + 656);
    v29 = *(v23 + 616);
    v30 = *(v23 + 608);
    v31 = *(v23 + 312);
    v32 = __swift_project_value_buffer(v30, qword_28140BD10);
    *(v23 + 840) = v32;
    swift_beginAccess();
    v33 = *(v29 + 16);
    *(v23 + 848) = v33;
    *(v23 + 856) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v337 = v32;
    v335 = v33;
    v33(v28, v32, v30);
    v25(v26, v31, v27);
    v34 = sub_22B36050C();
    v35 = sub_22B360D0C();
    if (os_log_type_enabled(v34, v35))
    {
      v358 = *(v23 + 752);
      v363 = *(v23 + 832);
      v36 = *(v23 + 744);
      v369 = *(v23 + 736);
      v384 = v35;
      v37 = *(v23 + 728);
      v38 = *(v23 + 720);
      v39 = *(v23 + 664);
      v394 = *(v23 + 616);
      v399 = *(v23 + 608);
      v405 = *(v23 + 656);
      v40 = swift_slowAlloc();
      v377 = swift_slowAlloc();
      v413[0] = v377;
      *v40 = 134218498;
      *(v40 + 4) = v303;
      *(v40 + 12) = 2080;
      sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578]);
      v41 = sub_22B36131C();
      v43 = sub_22B1A7B20(v41, v42, v413);

      *(v40 + 14) = v43;
      *(v40 + 22) = 2080;
      sub_22B35F63C();
      v23 = v411;
      v44 = sub_22B36131C();
      v46 = v45;
      v363(v38, v39);
      v47 = *(v36 + 8);
      isUniquelyReferenced_nonNull_native = v36 + 8;
      v47(v358, v369);
      v48 = sub_22B1A7B20(v44, v46, v413);

      *(v40 + 24) = v48;
      _os_log_impl(&dword_22B116000, v34, v384, "[MOCK GENERATE] Creating record number %ld Range:%s-%s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v377, -1, -1);
      MEMORY[0x23188F650](v40, -1, -1);

      v49 = *(v394 + 8);
      v49(v405, v399);
    }

    else
    {
      v50 = *(v23 + 752);
      v51 = *(v23 + 744);
      v52 = *(v23 + 736);
      v53 = *(v23 + 656);
      v54 = *(v23 + 616);
      isUniquelyReferenced_nonNull_native = *(v23 + 608);

      (*(v51 + 8))(v50, v52);
      v49 = *(v54 + 8);
      v49(v53, isUniquelyReferenced_nonNull_native);
    }

    v333 = v49;
    *(v23 + 864) = v49;
    v55 = sub_22B26DBF4(*(v23 + 248), *(v23 + 256), *(v23 + 808));
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = 0;
      v58 = MEMORY[0x277D84F98];
      while (v57 < *(v55 + 16))
      {
        v59 = *(v55 + 32 + 8 * v57);
        v60 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v304[1] = v60;
        v61 = sub_22B33B41C(v59);
        v63 = v60[2];
        v64 = (v62 & 1) == 0;
        v65 = __OFADD__(v63, v64);
        v66 = v63 + v64;
        if (v65)
        {
          goto LABEL_117;
        }

        v67 = v62;
        if (v60[3] >= v66)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = v61;
            sub_22B341AC8();
            v61 = isUniquelyReferenced_nonNull_native;
          }
        }

        else
        {
          sub_22B33CD78(v66, isUniquelyReferenced_nonNull_native);
          v68 = v304[1];
          v61 = sub_22B33B41C(v59);
          if ((v67 & 1) != (v69 & 1))
          {

            return sub_22B3613BC();
          }
        }

        ++v57;
        v58 = v304[1];
        if (v67)
        {
          *(v58[7] + 8 * v61) = v57;
          if (v56 == v57)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v58[(v61 >> 6) + 8] |= 1 << v61;
          *(v58[6] + 8 * v61) = v59;
          *(v58[7] + 8 * v61) = v57;
          v70 = v58[2];
          v65 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v65)
          {
            goto LABEL_118;
          }

          v58[2] = v71;
          if (v56 == v57)
          {
            goto LABEL_23;
          }
        }
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v58 = MEMORY[0x277D84F98];
LABEL_23:
    v302 = v58;
    *(v23 + 872) = v58;
    v395 = *(v23 + 972);
    v72 = *(v23 + 968);
    v73 = *(v23 + 964);
    v74 = v23;
    v23 = *(v23 + 960);
    v400 = v74[91];
    v406 = v74[101];
    v75 = v74[75];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
    v76 = sub_22B35E02C();
    v77 = *(v76 - 8);
    v78 = *(v77 + 72);
    v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_22B364840;
    v319 = v79;
    v81 = v80 + v79;
    v385 = v77;
    v82 = *(v77 + 104);
    v82(v81, v23, v76);
    v82(v81 + v78, v73, v76);
    v82(v81 + 2 * v78, v72, v76);
    v313 = v82;
    v82(v81 + 3 * v78, v395, v76);
    isUniquelyReferenced_nonNull_native = sub_22B310E30(v80);
    swift_setDeallocating();
    v326 = v76;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22B35DFCC();

    v83 = sub_22B35D9EC();
    if (v84)
    {
      v85 = 2023;
    }

    else
    {
      v85 = v83;
    }

    v86 = sub_22B35D9FC();
    if (v87)
    {
      v88 = 1;
    }

    else
    {
      v88 = v86;
    }

    v89 = sub_22B35D9AC();
    if (v90)
    {
      v91 = 1;
    }

    else
    {
      v91 = v89;
    }

    v92 = v88 - 1;
    if (__OFSUB__(v88, 1))
    {
      goto LABEL_119;
    }

    if (v92 > 0xB)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v23 = v411;
    v93 = *(v411 + 600);
    v94 = dbl_283EF81C0[v92 + 4] * 30.0;
    v95 = v94 * 0.18;
    v96 = sub_22B35D98C();
    if (v97)
    {
      goto LABEL_35;
    }

    v228 = v95 * 1.08;
    v229 = v95 * 1.08 * 1.08;
    if (v96 > 3)
    {
      v245 = v229 * 1.08;
      if (v96 == 4)
      {
        v252 = 1.0;
        if (v302[2])
        {
          v253 = sub_22B33B41C(v85);
          if (v254)
          {
            v252 = *(v302[7] + 8 * v253);
          }
        }

        v101 = v91 % 7;
        if (v91 % 7 >= 0)
        {
          v102 = v245 * v252;
          goto LABEL_40;
        }

        goto LABEL_130;
      }

      if (v96 == 5)
      {
        v246 = 1.0;
        if (v302[2])
        {
          v247 = sub_22B33B41C(v85);
          if (v248)
          {
            v246 = *(v302[7] + 8 * v247);
          }
        }

        v101 = v91 % 7;
        if (v91 % 7 >= 0)
        {
          v102 = (v94 - (v95 + v228 + v229 + v245)) * v246;
          goto LABEL_40;
        }

        __break(1u);
        goto LABEL_129;
      }

LABEL_35:
      v98 = 1.0;
      if (v302[2])
      {
        v99 = sub_22B33B41C(v85);
        if (v100)
        {
          v98 = *(v302[7] + 8 * v99);
        }
      }

      v101 = v91 % 7;
      if (v91 % 7 < 0)
      {
        goto LABEL_123;
      }

      v102 = v95 * v98;
      goto LABEL_40;
    }

    if (v96 == 2)
    {
      v249 = 1.0;
      if (v302[2])
      {
        v250 = sub_22B33B41C(v85);
        if (v251)
        {
          v249 = *(v302[7] + 8 * v250);
        }
      }

      v101 = v91 % 7;
      if (v91 % 7 >= 0)
      {
        v102 = v228 * v249;
        goto LABEL_40;
      }

LABEL_131:
      __break(1u);
LABEL_132:
      swift_once();
LABEL_114:
      v277 = swift_task_alloc();
      *(v23 + 912) = v277;
      *v277 = v23;
      v277[1] = sub_22B265E7C;
      v267 = *(v23 + 312);
      v268 = *(v23 + 320);
      v269 = isUniquelyReferenced_nonNull_native;
LABEL_105:

      return (sub_22B30C418)(v269, v267, v268);
    }

    if (v96 != 3)
    {
      goto LABEL_35;
    }

    v230 = 1.0;
    if (v302[2])
    {
      v231 = sub_22B33B41C(v85);
      if (v232)
      {
        v230 = *(v302[7] + 8 * v231);
      }
    }

    v101 = v91 % 7;
    if (v91 % 7 < 0)
    {
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v102 = v229 * v230;
LABEL_40:
    v103 = *(v411 + 728);
    v104 = *(v411 + 552);
    v105 = *(v411 + 544);
    v106 = *(v411 + 312);
    v107 = *(v411 + 264);
    v108 = dbl_283EF8240[v101 + 4];
    sub_22B35F50C();
    v109 = *(v105 + 36);
    sub_22B35F63C();
    if (v107 == 0.0)
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      if (!sub_22B36109C())
      {
        goto LABEL_125;
      }

LABEL_98:
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v256 = *(v23 + 624);
      v257 = *(v23 + 616);
      v258 = *(v23 + 608);
      v259 = __swift_project_value_buffer(v258, qword_28140BD10);
      swift_beginAccess();
      (*(v257 + 16))(v256, v259, v258);
      v260 = sub_22B36050C();
      v261 = sub_22B360D0C();
      if (os_log_type_enabled(v260, v261))
      {
        v262 = swift_slowAlloc();
        *v262 = 134217984;
        *(v262 + 4) = isUniquelyReferenced_nonNull_native;
        _os_log_impl(&dword_22B116000, v260, v261, "[MOCK GENERATE] Saving Remaining batch at counter %ld", v262, 0xCu);
        MEMORY[0x23188F650](v262, -1, -1);
      }

      v263 = *(v23 + 624);
      v264 = *(v23 + 616);
      v265 = *(v23 + 608);

      (*(v264 + 8))(v263, v265);
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v266 = swift_task_alloc();
      *(v23 + 944) = v266;
      *v266 = v23;
      v266[1] = sub_22B26AA50;
      v267 = *(v23 + 312);
      v268 = *(v23 + 320);
      v269 = v305;
      goto LABEL_105;
    }

    v110 = v102 * v108;
    v111 = *(v411 + 672);
    v112 = *(v411 + 664);
    v113 = *(v411 + 568);
    v114 = *(v411 + 264);
    v407 = v109;
    v115 = *(v411 + 560);
    v116 = v113 + v115[11];
    v117 = *(*(v411 + 520) + 48);
    v118 = *(v111 + 32);
    v118(v116 + v117, *(v411 + 552), v112);
    v344 = v118;
    v118(v113 + v115[9], v104 + v407, v112);
    v119 = *(v111 + 16);
    *(v113 + v115[10]) = v114;
    v351 = v117;
    v396 = v119;
    (v119)(v113, v116 + v117, v112);
    *v116 = 0;
    v355 = v116;
    *(v116 + 8) = 0;
    v310 = (v385 + 8);
    v408 = MEMORY[0x277D84F90];
    while (1)
    {
      v120 = *(v23 + 264);
      (v396)(*(v23 + 712), v355 + v351, *(v23 + 664));
      sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578]);
      v121 = *(v23 + 712);
      v122 = *(v23 + 664);
      if (v120 <= 0.0)
      {
        v137 = *(v23 + 664);
        if ((sub_22B36076C() & 1) == 0)
        {
LABEL_44:
          v124 = *(v23 + 832);
          v125 = *(v23 + 720);
          v126 = *(v23 + 712);
          v127 = *(v411 + 672);
          v128 = *(v411 + 664);
          v364 = *(v411 + 568);
          v370 = v124;
          v378 = *(v411 + 536);
          v386 = v126;
          v129 = *(v411 + 528);
          v130 = *(v411 + 520);
          sub_22B170BE0(v355, v129, &qword_27D8BABD0, &unk_22B366EE0);
          v131 = *v129;
          v132 = *(v129 + 8);
          v133 = *(v130 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578]);
          v134 = sub_22B36101C();
          LOBYTE(v131) = v135;
          v370(v129 + v133, v128);
          *v355 = v134;
          *(v355 + 8) = v131 & 1;
          (*(v127 + 40))(v355 + v351, v125, v128);
          v23 = v411;
          v344(v378, v386, v128);
          v136 = 0;
          goto LABEL_47;
        }
      }

      else
      {
        v123 = *(v23 + 664);
        if ((sub_22B36075C() & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      (*(v23 + 832))(*(v23 + 712), *(v23 + 664));
      v136 = 1;
LABEL_47:
      v138 = *(v23 + 672);
      v139 = *(v23 + 664);
      v140 = *(v23 + 536);
      (*(v138 + 56))(v140, v136, 1, v139);
      if ((*(v138 + 48))(v140, 1, v139) == 1)
      {
        break;
      }

      v141 = *(v23 + 704);
      v142 = *(v23 + 696);
      v143 = *(v23 + 664);
      v144 = *(v23 + 648);
      v145 = *(v23 + 608);
      v344(v141, *(v23 + 536), v143);
      v335(v144, v337, v145);
      (v396)(v142, v141, v143);
      v146 = sub_22B36050C();
      v147 = sub_22B360D1C();
      v148 = os_log_type_enabled(v146, v147);
      v149 = *(v23 + 832);
      v150 = *(v23 + 696);
      v151 = *(v23 + 664);
      v152 = *(v23 + 648);
      v153 = *(v23 + 616);
      v154 = *(v23 + 608);
      if (v148)
      {
        v379 = *(v23 + 648);
        v155 = swift_slowAlloc();
        v371 = v154;
        v156 = swift_slowAlloc();
        v413[0] = v156;
        *v155 = 136315138;
        sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578]);
        v157 = sub_22B36131C();
        v159 = v158;
        v149(v150, v151);
        v160 = v157;
        v23 = v411;
        v161 = sub_22B1A7B20(v160, v159, v413);

        *(v155 + 4) = v161;
        _os_log_impl(&dword_22B116000, v146, v147, "[MOCK GENERATE] %s", v155, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v156);
        MEMORY[0x23188F650](v156, -1, -1);
        MEMORY[0x23188F650](v155, -1, -1);

        v162 = v333(v379, v371);
      }

      else
      {

        v149(v150, v151);
        v162 = v333(v152, v154);
      }

      v372 = *(v23 + 980);
      v163 = *(v23 + 976);
      v164 = *(v23 + 720);
      v165 = *(v23 + 704);
      v365 = *(v23 + 664);
      v166 = *(v23 + 592);
      v387 = *(v23 + 808);
      v167 = *(v23 + 512);
      isUniquelyReferenced_nonNull_native = *(v23 + 480);
      v168 = *(v23 + 264);
      v359 = MEMORY[0x23188EEB0](v162);
      sub_22B35FB8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
      v169 = sub_22B35FB5C();
      v170 = *(v169 - 8);
      v171 = *(v170 + 72);
      v172 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_22B3634B0;
      (*(v170 + 104))(v173 + v172, v163, v169);
      sub_22B35FB7C();
      (v396)(v164, v165, v365);
      sub_22B36039C();
      sub_22B35FB1C();
      sub_22B35DDCC();
      sub_22B36039C();
      sub_22B35FAFC();
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_22B3634B0;
      v313(v174 + v319, v372, v326);
      sub_22B310E30(v174);
      swift_setDeallocating();
      (*v310)(v174 + v319, v326);
      swift_deallocClassInstance();
      sub_22B35DFCC();

      v175 = sub_22B35D9CC();
      if (v176)
      {
        v177 = 1;
      }

      else
      {
        v177 = v175;
      }

      if (v177 > 0x17)
      {
        __break(1u);
        goto LABEL_116;
      }

      v178 = *(v23 + 504);
      v179 = *(v23 + 512);
      v180 = *(v23 + 488);
      v181 = *(v23 + 496);
      v182 = v110 * dbl_283EF8298[v177 + 4];
      sub_22B35FB3C();
      (*(v181 + 16))(v178, v179, v180);
      v183 = v408;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_22B32D22C(0, v408[2] + 1, 1, v408);
      }

      v185 = v183[2];
      v184 = v183[3];
      if (v185 >= v184 >> 1)
      {
        v408 = sub_22B32D22C(v184 > 1, v185 + 1, 1, v183);
      }

      else
      {
        v408 = v183;
      }

      v186 = *(v23 + 832);
      v187 = *(v23 + 704);
      v188 = *(v23 + 664);
      v190 = *(v23 + 504);
      v189 = *(v23 + 512);
      v191 = *(v23 + 488);
      v192 = *(v23 + 496);
      (*(*(v23 + 584) + 8))(*(v23 + 592), *(v23 + 576));
      (*(v192 + 8))(v189, v191);
      v408[2] = v185 + 1;
      (*(v192 + 32))(v408 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v185, v190, v191);
      objc_autoreleasePoolPop(v359);
      v186(v187, v188);
    }

    v193 = sub_22B123284(*(v23 + 568), &qword_27D8BABE0, &unk_22B366EF0);
    v194 = MEMORY[0x23188EEB0](v193);
    v195 = v408;
    if (v408[2])
    {
      v356 = v194;
      v352 = *(v23 + 992);
      v293 = *(v23 + 988);
      v290 = *(v23 + 984);
      v196 = *(v23 + 728);
      v308 = *(v23 + 688);
      v197 = *(v23 + 680);
      v314 = *(v23 + 720);
      v299 = *(v23 + 664);
      v198 = *(v23 + 472);
      v199 = *(v23 + 456);
      v330 = *(v23 + 464);
      v360 = *(v23 + 448);
      v373 = *(v23 + 440);
      v200 = *(v23 + 424);
      v340 = *(v23 + 432);
      v201 = *(v23 + 416);
      v327 = v200;
      v388 = *(v23 + 408);
      v345 = *(v23 + 400);
      v366 = *(v23 + 392);
      v380 = *(v23 + 384);
      v294 = *(v23 + 376);
      v295 = *(v411 + 368);
      v296 = *(v411 + 360);
      v202 = *(v411 + 352);
      v348 = *(v411 + 336);
      v203 = *(v411 + 312);
      v300 = *(v411 + 304);
      v301 = *(v411 + 296);
      v297 = *(v411 + 288);
      v298 = *(v411 + 280);
      v306 = *(v411 + 272);
      v292 = *(v411 + 240);
      v291 = *(v411 + 232);
      v204 = *(v411 + 224);
      v205 = *(v411 + 216);
      v396();
      sub_22B35F63C();
      (*(v199 + 104))(v198, v290, v360);
      (*(v200 + 104))(v373, v293, v201);
      v206 = (*(v366 + 104))(v388, v352, v380);
      v353 = MEMORY[0x23188EEB0](v206);
      *(v411 + 168) = v205;
      *(v411 + 176) = v204;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v291, v292);
      MEMORY[0x23188E270](46, 0xE100000000000000);
      sub_22B35DF0C();
      v207 = sub_22B35DECC();
      v209 = v208;
      (*(v295 + 8))(v294, v296);
      MEMORY[0x23188E270](v207, v209);

      v211 = *(v411 + 168);
      v210 = *(v411 + 176);
      sub_22B35FD7C();

      sub_22B35FD6C();

      sub_22B35FC4C();

      sub_22B35FBDC();

      sub_22B35FCEC();
      (v396)(v314, v306, v299);
      sub_22B36039C();
      sub_22B35FBBC();
      (v396)(v314, v308, v299);
      sub_22B36039C();
      sub_22B35FCCC();
      (v396)(v314, v197, v299);
      sub_22B36039C();
      sub_22B35FC6C();
      (*(v199 + 16))(v330, v198, v360);
      sub_22B35FCAC();
      (*(v327 + 16))(v340, v373, v201);
      sub_22B35FD4C();
      (*(v366 + 16))(v345, v388, v380);
      sub_22B35FC2C();

      sub_22B35FD0C();
      sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0]);
      v212 = sub_22B36042C();
      v401 = *(v411 + 832);
      v213 = v212;
      v215 = v214;
      v397 = *(v411 + 688);
      v381 = *(v411 + 664);
      v389 = *(v411 + 680);
      v361 = *(v411 + 456);
      v367 = *(v411 + 448);
      v374 = *(v411 + 472);
      v341 = *(v411 + 424);
      v346 = *(v411 + 416);
      v349 = *(v411 + 440);
      v328 = *(v411 + 384);
      v331 = *(v411 + 408);
      v322 = *(v411 + 352);
      v324 = *(v411 + 392);
      v317 = *(v411 + 344);
      v320 = *(v411 + 336);
      v315 = *(v411 + 240);
      v311 = *(v411 + 232);
      v309 = *(v411 + 224);
      v307 = *(v411 + 216);
      sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
      v216 = objc_opt_self();

      v217 = [v216 defaultRecordZone];
      v218 = [v217 zoneID];

      v219 = sub_22B360CBC();
      sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
      v220 = v219;
      v221 = sub_22B360F4C();
      v222 = [v221 recordID];
      v223 = [v222 zoneID];

      v224 = sub_22B360CBC();
      [v221 setRecordID_];

      *(v411 + 40) = MEMORY[0x277CC9318];
      *(v411 + 48) = MEMORY[0x277CBBBE0];
      *(v411 + 16) = v213;
      *(v411 + 24) = v215;
      sub_22B144B30(v213, v215);
      sub_22B360EBC();
      *(v411 + 184) = v307;
      *(v411 + 192) = v309;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v311, v315);
      v225 = *(v411 + 184);
      v226 = *(v411 + 192);
      *(v411 + 80) = MEMORY[0x277D837D0];
      *(v411 + 88) = MEMORY[0x277CBBE08];
      *(v411 + 56) = v225;
      *(v411 + 64) = v226;
      sub_22B360EBC();
      sub_22B12F174(v213, v215);

      (*(v317 + 8))(v322, v320);
      v23 = v411;
      objc_autoreleasePoolPop(v353);
      (*(v324 + 8))(v331, v328);
      (*(v341 + 8))(v349, v346);
      (*(v361 + 8))(v374, v367);
      v401(v389, v381);
      v401(v397, v381);
      v227 = v221;
      MEMORY[0x23188E350]();
      if (*((*(v23 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + 200) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v255 = *((*(v411 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
      }

      sub_22B360A9C();

      isUniquelyReferenced_nonNull_native = *v304;

      *v304 = isUniquelyReferenced_nonNull_native;
      v195 = MEMORY[0x277D84F90];
      v194 = v356;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v305;
    }

    *(v23 + 888) = isUniquelyReferenced_nonNull_native;
    *(v23 + 880) = v195;
    objc_autoreleasePoolPop(v194);
    v233 = v303 + 1;
    *(v23 + 896) = v303 + 1;
    if (__OFADD__(v303, 1))
    {
      goto LABEL_122;
    }

    if (__ROR8__(0x8F5C28F5C28F5C29 * v233 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v335(*(v23 + 640), v337, *(v23 + 608));
      v271 = sub_22B36050C();
      v272 = sub_22B360D0C();
      if (os_log_type_enabled(v271, v272))
      {
        v273 = swift_slowAlloc();
        *v273 = 134217984;
        *(v273 + 4) = v233;
        _os_log_impl(&dword_22B116000, v271, v272, "[MOCK GENERATE] Saving batch at counter %ld", v273, 0xCu);
        MEMORY[0x23188F650](v273, -1, -1);
      }

      v274 = *(v23 + 640);
      v275 = *(v23 + 616);
      v276 = *(v23 + 608);

      *(v23 + 904) = (v275 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v333(v274, v276);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_114;
      }

      goto LABEL_132;
    }

    v305 = isUniquelyReferenced_nonNull_native;
    v234 = *(v23 + 872);
    v402 = *(v23 + 880);
    v409 = *(v23 + 832);
    v235 = *(v23 + 728);
    v236 = *(v23 + 720);
    v237 = *(v23 + 672);
    v238 = *(v23 + 664);
    v239 = *(v23 + 600);
    v240 = *(v23 + 584);
    v241 = *(v23 + 576);
    v242 = *(v23 + 312);
    v243 = *(v411 + 256);
    sub_22B35F63C();
    (*(v240 + 8))(v239, v241);
    (*(v237 + 40))(v235, v236, v238);

    v23 = v411;
    sub_22B35F63C();
    LOBYTE(v240) = sub_22B35DDFC();
    v244 = (v237 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v409(v236, v238);
    isUniquelyReferenced_nonNull_native = *(v411 + 896);
    if (v240)
    {
      continue;
    }

    break;
  }

LABEL_96:
  *(v23 + 936) = v244;
  *(v23 + 928) = v305;
  if (v305 >> 62)
  {
    goto LABEL_124;
  }

  if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_98;
  }

LABEL_125:
  v278 = *(v23 + 936);
  v279 = *(v23 + 832);
  v280 = *(v23 + 808);
  v281 = *(v23 + 800);
  v282 = *(v23 + 792);
  v283 = *(v23 + 784);
  v284 = *(v23 + 760);
  v285 = *(v23 + 728);
  v312 = *(v23 + 752);
  v316 = *(v23 + 720);
  v286 = v23;
  v287 = *(v23 + 712);
  v318 = v286[88];
  v321 = v286[87];
  v323 = v286[86];
  v325 = v286[85];
  v288 = v286[83];
  v329 = v286[82];
  v332 = v286[81];
  v334 = v286[80];
  v336 = v286[79];
  v338 = v286[78];
  v339 = v286[75];
  v342 = v286[74];
  v343 = v286[71];
  v347 = v286[69];
  v350 = v286[67];
  v354 = v286[66];
  v357 = v286[64];
  v362 = v286[63];
  v368 = v286[60];
  v375 = v286[59];
  v382 = v286[58];
  v390 = v286[55];
  v392 = v286[54];
  v398 = v286[51];
  v403 = v286[50];
  v410 = v286[47];
  v412 = v286[44];
  (*(v281 + 8))(v280, v282);

  v279(v285, v288);

  v289 = v286[1];

  return v289();
}