uint64_t SiriPenetrationRateCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks);

  v5 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
  v6 = sub_2486B4F0C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SiriPenetrationRateCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks);

  v5 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
  v6 = sub_2486B4F0C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2486A0A04(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2486A0AB0;

  return sub_24869DD40(a1, a2);
}

uint64_t sub_2486A0AB0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_2486A0BD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA18A0, &qword_2486B69F0);
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

size_t sub_2486A0D2C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *sub_2486A0F08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1890, &unk_2486B69D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2486A102C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1578, &qword_2486B64A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2486A10B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2486B580C();
  sub_2486B549C();
  v6 = sub_2486B584C();

  return sub_2486A12B4(a1, a2, v6);
}

unint64_t sub_2486A112C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2486B580C();
  v4 = sub_2486B538C();
  MEMORY[0x24C1D6030](v4);
  v5 = sub_2486B584C();

  return sub_2486A136C(a1, v5);
}

unint64_t sub_2486A119C(__int128 *a1)
{
  v3 = *(v1 + 40);
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 64);
  v6 = *a1;
  v7 = a1[1];
  sub_2486B580C();
  AggregationKeys.hash(into:)();
  v4 = sub_2486B584C();

  return sub_2486A1414(a1, v4);
}

unint64_t sub_2486A1220(int a1, double a2)
{
  v5 = *(v2 + 40);
  sub_2486B580C();
  sub_2486B582C();
  v6 = 0.0;
  if (a2 != 0.0)
  {
    v6 = a2;
  }

  MEMORY[0x24C1D6050](*&v6);
  v7 = sub_2486B584C();

  return sub_2486A15B4(a1, v7, a2);
}

unint64_t sub_2486A12B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2486B57DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2486A136C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2486B538C();
      if (v7 == sub_2486B538C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2486A1414(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v26 = *(a1 + 3);
    v27 = *(a1 + 2);
    v24 = *(a1 + 5);
    v25 = *(a1 + 4);
    v22 = *(a1 + 7);
    v23 = *(a1 + 6);
    v21 = *(a1 + 64);
    v9 = *(v2 + 48);
    do
    {
      v10 = v9 + 72 * v5;
      if (*v10 == v7 && *(v10 + 8) == v8)
      {
        v12 = *(v10 + 32);
        v13 = *(v10 + 40);
        v14 = *(v10 + 48);
        v15 = *(v10 + 56);
        v16 = *(v10 + 64);
        v17 = *(v10 + 16) == v27 && *(v10 + 24) == v26;
        if (v17 || (sub_2486B57DC() & 1) != 0)
        {
          v18 = v12 == v25 && v13 == v24;
          if (v18 || (sub_2486B57DC() & 1) != 0)
          {
            v19 = v14 == v23 && v15 == v22;
            if (v19 || (sub_2486B57DC() & 1) != 0)
            {
              if (v16)
              {
                if (v16 == 1)
                {
                  if (v21 == 1)
                  {
                    return v5;
                  }
                }

                else if (v21 == 2)
                {
                  return v5;
                }
              }

              else if (!v21)
              {
                return v5;
              }
            }
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2486A15B4(int a1, uint64_t a2, double a3)
{
  v5 = -1 << *(v3 + 32);
  result = a2 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8) == a3 && *v8 == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2486A162C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E8, &qword_2486B6668);
  v7 = sub_2486B56DC();
  v9 = v7;
  if (*(v5 + 16))
  {
    v10 = 0;
    v54 = (v5 + 64);
    v55 = v5;
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
    v52 = v3;
    v53 = (v11 + 63) >> 6;
    v14 = v7 + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v20 = (v13 - 1) & v13;
LABEL_17:
      v24 = v19 | (v10 << 6);
      v56 = v20;
      if (a2)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 72 * v24;
        *&v8 = *v26;
        v27 = *(v26 + 8);
        v59 = v8;
        v28 = *(v26 + 16);
        v58 = *(v26 + 24);
        v29 = *(v26 + 32);
        v30 = *(v26 + 40);
        v31 = *(v26 + 48);
        v32 = *(v26 + 56);
        v57 = *(v26 + 64);
        v33 = (v25 + 16 * v24);
        v34 = *v33;
        v35 = v33[1];
      }

      else
      {
        v36 = *(v5 + 48) + 72 * v24;
        v38 = *(v36 + 16);
        v37 = *(v36 + 32);
        v39 = *(v36 + 48);
        v64 = *(v36 + 64);
        v63 = v39;
        v60 = *v36;
        v61 = v38;
        v62 = v37;
        v40 = (*(v5 + 56) + 16 * v24);
        v34 = *v40;
        v35 = v40[1];
        sub_2486A3DF0(&v60, v65);
        v27 = *(&v60 + 1);
        *&v41 = v60;
        v59 = v41;
        v58 = *(&v61 + 1);
        v28 = v61;
        v30 = *(&v62 + 1);
        v29 = v62;
        v32 = *(&v63 + 1);
        v31 = v63;
        v57 = v64;
      }

      v42 = *(v9 + 40);
      sub_2486B580C();
      sub_2486B582C();
      if (v27 == 0.0)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = v27;
      }

      MEMORY[0x24C1D6050](*&v43);
      sub_2486B549C();
      sub_2486B549C();
      sub_2486B549C();
      MEMORY[0x24C1D6030](v57);
      MEMORY[0x24C1D6030](0);
      result = sub_2486B584C();
      v44 = -1 << *(v9 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v14 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        v8 = v59;
        v16 = v28;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v14 + 8 * v46);
          if (v50 != -1)
          {
            v15 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v45) & ~*(v14 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      v8 = v59;
      v16 = v28;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v9 + 48) + 72 * v15;
      *v17 = v8;
      *(v17 + 8) = v27;
      *(v17 + 16) = v16;
      *(v17 + 24) = v58;
      *(v17 + 32) = v29;
      *(v17 + 40) = v30;
      *(v17 + 48) = v31;
      *(v17 + 56) = v32;
      *(v17 + 64) = v57;
      v18 = (*(v9 + 56) + 16 * v15);
      *v18 = v34;
      v18[1] = v35;
      ++*(v9 + 16);
      v5 = v55;
      v13 = v56;
    }

    v21 = v10;
    result = v54;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v53)
      {
        break;
      }

      v23 = v54[v10];
      ++v21;
      if (v23)
      {
        v19 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v51 = 1 << *(v5 + 32);
      if (v51 >= 64)
      {
        bzero(v54, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v54 = -1 << v51;
      }

      *(v5 + 16) = 0;
    }

    v3 = v52;
  }

  else
  {
  }

  *v3 = v9;
  return result;
}

uint64_t sub_2486A19FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15F8, &qword_2486B6678);
  v37 = a2;
  result = sub_2486B56DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_2486B580C();
      sub_2486B582C();
      if (v24 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24;
      }

      MEMORY[0x24C1D6050](*&v27);
      result = sub_2486B584C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v23;
      *(v17 + 8) = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_38;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_2486A1CBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E0, &qword_2486B6660);
  v39 = a2;
  result = sub_2486B56DC();
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
      sub_2486B580C();
      sub_2486B549C();
      result = sub_2486B584C();
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

void *sub_2486A1F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E8, &qword_2486B6668);
  v2 = *v0;
  v3 = sub_2486B56CC();
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
        v18 = (*(v2 + 48) + 72 * v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v26 = *(v18 + 64);
        v25[3] = v21;
        v25[0] = *v18;
        v25[1] = v20;
        v25[2] = v19;
        v22 = 16 * v17;
        v23 = *(*(v2 + 56) + 16 * v17);
        memmove((*(v4 + 48) + 72 * v17), v18, 0x41uLL);
        *(*(v4 + 56) + v22) = v23;
        result = sub_2486A3DF0(v25, v24);
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

void *sub_2486A2114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15F8, &qword_2486B6678);
  v2 = *v0;
  v3 = sub_2486B56CC();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = *v18;
        *(v21 + 8) = v19;
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

id sub_2486A2284()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E0, &qword_2486B6660);
  v2 = *v0;
  v3 = sub_2486B56CC();
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

void (*sub_2486A23F0(uint64_t *a1, __int128 *a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_2486A2700(v6);
  v6[9] = sub_2486A24F4(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_2486A2494;
}

void sub_2486A2494(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2486A24F4(uint64_t *a1, __int128 *a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 88) = a2;
  *(v8 + 96) = v3;
  v10 = *v3;
  v11 = sub_2486A119C(a2);
  *(v9 + 65) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2486A1F60();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2486A162C(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_2486A119C(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_2486B57EC();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 104) = v11;
  v22 = 0uLL;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 16 * v11);
  }

  *(v9 + 68) = v22;
  *(v9 + 84) = v14 & 1;
  return sub_2486A2640;
}

void sub_2486A2640(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 65);
  if (*(*a1 + 84))
  {
    if (*(*a1 + 65))
    {
      v3 = *(v1 + 104);
      v4 = **(v1 + 96);
      sub_2486A3CDC(*(v4 + 48) + 72 * v3);
      sub_2486A5254(v3, v4);
    }
  }

  else
  {
    v5 = *(v1 + 76);
    v6 = *(v1 + 68);
    v8 = *(v1 + 96);
    v7 = *(v1 + 104);
    if (v2)
    {
      v9 = ((*v8)[7] + 16 * v7);
      *v9 = v6;
      v9[1] = v5;
    }

    else
    {
      v10 = *(v1 + 88);
      sub_2486A51E4(v7, v10, v6, v5, *v8);
      sub_2486A3DF0(v10, v1);
    }
  }

  free(v1);
}

uint64_t (*sub_2486A2700(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2486A2728;
}

uint64_t sub_2486A2734(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2486B56BC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2486B565C();
}

char *sub_2486A2798(char *a1, int64_t a2, char a3)
{
  result = sub_2486A27B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2486A27B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA18A0, &qword_2486B69F0);
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

uint64_t sub_2486A28C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2486B56BC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2486B56BC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2486A3E4C(&qword_27EEA14E8, &qword_27EEA14E0, &unk_2486B6230);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14E0, &unk_2486B6230);
            v9 = sub_2486A2BE4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2486B513C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2486A2A54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2486B56BC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2486B56BC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2486A3E4C(&qword_27EEA18B0, &qword_27EEA18A8, &qword_2486B69F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA18A8, &qword_2486B69F8);
            v9 = sub_2486A2C6C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2486B525C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2486A2BE4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1D5E60](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2486A2C64;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2486A2C6C(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1D5E60](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2486A3EA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2486A2CEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2486A2CFC(unint64_t a1)
{
  v48 = sub_2486B53BC();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v3;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_23:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v49 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = sub_2486B56BC();
  v46 = v6;
  v47 = v3;
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_3:
  v8 = 0;
  v6 = (a1 & 0xC000000000000001);
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if (v6)
      {
        v11 = MEMORY[0x24C1D5E60](v10, a1);
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v10 >= *(v49 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(a1 + 8 * v10 + 32);

        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v1 = v9;
      sub_2486B506C();
      sub_2486B505C();
      v3 = v11;
      sub_2486B50FC();

      v12 = v51;
      if (v51)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    v13 = v50;
    v14 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2486A0BD0(0, *(v9 + 2) + 1, 1, v9);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    v3 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_2486A0BD0((v15 > 1), v16 + 1, 1, v17);
    }

    *(v17 + 2) = v3;
    v18 = &v17[16 * v16];
    v9 = v17;
    *(v18 + 4) = v13;
    *(v18 + 5) = v12;
  }

  while (v8 != v7);
LABEL_24:
  v19 = *(v9 + 2);
  if (v19)
  {
    v20 = 0;
    v21 = v9 + 40;
    v49 = v19 - 1;
    v22 = MEMORY[0x277D84F90];
    do
    {
      v23 = &v21[16 * v20];
      v24 = v20;
      while (1)
      {
        if (v24 >= *(v9 + 2))
        {
          __break(1u);
          goto LABEL_65;
        }

        v1 = *(v23 - 1);
        v25 = *v23;
        if (v1 || v25 != 0xE000000000000000)
        {
          v27 = *(v23 - 1);
          v28 = *v23;
          if ((sub_2486B57DC() & 1) == 0)
          {
            break;
          }
        }

        ++v24;
        v23 += 16;
        if (v19 == v24)
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v22;
      v30 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2486A2798(0, v22[2] + 1, 1);
        v22 = v50;
      }

      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_2486A2798((v31 > 1), v32 + 1, 1);
        v22 = v50;
      }

      v20 = v24 + 1;
      v22[2] = v32 + 1;
      v33 = &v22[2 * v32];
      v33[4] = v1;
      v33[5] = v25;
      v9 = v30;
    }

    while (v49 != v24);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_41:

  if (v22[2])
  {
    v34 = v22[4];
    v24 = v22[5];
  }

  else
  {
    v34 = 0;
    v24 = 0;
  }

  v35 = v47;
  v36 = v48;
  v37 = v46;

  sub_2486B50EC();

  v38 = sub_2486B539C();
  v39 = sub_2486B55AC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50 = v41;
    *v40 = 136315138;
    v19 = v34;
    if (v24)
    {
      v42 = v24;
    }

    else
    {
      v34 = 0;
      v42 = 0xE000000000000000;
    }

    v43 = sub_2486965C0(v34, v42, &v50);

    *(v40 + 4) = v43;
    _os_log_impl(&dword_24868B000, v38, v39, "Get rawViewMode for this bucket is %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x24C1D6650](v41, -1, -1);
    MEMORY[0x24C1D6650](v40, -1, -1);

    (*(v35 + 8))(v37, v48);
  }

  else
  {
    v19 = v34;

    (*(v35 + 8))(v37, v36);
  }

  v1 = 0xD000000000000019;
  if (v24)
  {
    if (v19 == 48 && v24 == 0xE100000000000000 || (sub_2486B57DC() & 1) != 0)
    {
      goto LABEL_54;
    }

    if (v19 == 52 && v24 == 0xE100000000000000 || (sub_2486B57DC() & 1) != 0)
    {

      return 0xD00000000000001BLL;
    }

    if (v19 == 53 && v24 == 0xE100000000000000 || (sub_2486B57DC() & 1) != 0)
    {
      goto LABEL_54;
    }

LABEL_65:
    if (v19 == 54 && v24 == 0xE100000000000000 || (sub_2486B57DC() & 1) != 0)
    {

      v1 -= 5;
      return v1;
    }

    if (v19 == 55 && v24 == 0xE100000000000000 || (sub_2486B57DC() & 1) != 0)
    {
LABEL_54:

      return v1;
    }

    if (v19 == 56 && v24 == 0xE100000000000000)
    {

      v1 += 6;
    }

    else
    {
      v45 = sub_2486B57DC();

      if (v45)
      {
        v1 += 6;
      }
    }
  }

  return v1;
}

unint64_t sub_2486A3398(unint64_t a1)
{
  v2 = sub_2486B53BC();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v30 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_2486B56BC();
  v27 = v5;
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v30 = MEMORY[0x277D84F90];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1D5E60](v8, a1);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * v8 + 32);

        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      sub_2486B4FEC();
      sub_2486B4FDC();
      v5 = v9;
      sub_2486B523C();

      v10 = v32;
      if (v32)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    v11 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_2486A0BD0(0, *(v30 + 2) + 1, 1, v30);
    }

    v13 = *(v30 + 2);
    v12 = *(v30 + 3);
    v5 = (v13 + 1);
    if (v13 >= v12 >> 1)
    {
      v30 = sub_2486A0BD0((v12 > 1), v13 + 1, 1, v30);
    }

    v14 = v30;
    *(v30 + 2) = v5;
    v15 = &v14[16 * v13];
    *(v15 + 4) = v11;
    *(v15 + 5) = v10;
  }

  while (v7 != v6);
LABEL_24:
  if (*(v30 + 2))
  {
    v16 = *(v30 + 4);
    v17 = *(v30 + 5);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = v27;

  sub_2486B50EC();

  v19 = sub_2486B539C();
  v20 = sub_2486B55AC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    if (v17)
    {
      v23 = v16;
    }

    else
    {
      v23 = 0;
    }

    if (v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = sub_2486965C0(v23, v24, &v31);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_24868B000, v19, v20, "Get audioInputRoute for this bucket is %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x24C1D6650](v22, -1, -1);
    MEMORY[0x24C1D6650](v21, -1, -1);
  }

  (*(v28 + 8))(v18, v29);
  if (v17)
  {
    return v16;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_2486A3728(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2486B56BC();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1D5E60](v5, a1);
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      sub_2486B500C();
      sub_2486B4FFC();
      sub_2486B523C();

      if (v15)
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2486A0BD0(0, *(v13 + 2) + 1, 1, v13);
    }

    v8 = *(v13 + 2);
    v7 = *(v13 + 3);
    if (v8 >= v7 >> 1)
    {
      v13 = sub_2486A0BD0((v7 > 1), v8 + 1, 1, v13);
    }

    *(v13 + 2) = v8 + 1;
    v9 = &v13[16 * v8];
    *(v9 + 4) = v14;
    *(v9 + 5) = v15;
  }

  while (v4 != v3);
LABEL_24:
  if (*(v13 + 2))
  {
    v10 = *(v13 + 4);
    v11 = *(v13 + 5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t type metadata accessor for SiriPenetrationRateCalculator()
{
  result = qword_27EEA1870;
  if (!qword_27EEA1870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486A3964()
{
  result = sub_2486B53BC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2486B4F0C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriPenetrationRateCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_248696E0C;

  return v10(a1, a2);
}

uint64_t sub_2486A3BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateAndLocalePair();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2486A3C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateAndLocalePair();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2486A3C80(uint64_t a1)
{
  v2 = type metadata accessor for DateAndLocalePair();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2486A3D30()
{
  result = qword_27EEA1508;
  if (!qword_27EEA1508)
  {
    sub_2486B4DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1508);
  }

  return result;
}

uint64_t sub_2486A3D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1898, &unk_2486B69E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2486A3E4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriPenetrationRateCoreAnalyticsReporter.__allocating_init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_logger;
  v9 = sub_2486B53BC();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  v10 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_odmId;
  v11 = sub_2486B4DFC();
  (*(*(v11 - 8) + 32))(v7 + v10, a2, v11);
  return v7;
}

uint64_t sub_2486A3F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_2486A56B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2486A10B4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_2486A2284();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_2486A5504(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t SiriPenetrationRateCoreAnalyticsReporter.init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_logger;
  v6 = sub_2486B53BC();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  v7 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_odmId;
  v8 = sub_2486B4DFC();
  (*(*(v8 - 8) + 32))(v2 + v7, a2, v8);
  return v2;
}

uint64_t sub_2486A4120(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 192) = v1;
  *(v2 + 200) = v3;

  return MEMORY[0x2822009F8](sub_2486A4190, 0, 0);
}

void sub_2486A4190()
{
  v57 = v0;
  v1 = 0;
  v2 = (v0 + 104);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v4 + 64);
  v41 = v4 + 64;
  v42 = v4;
  v6 = -1;
  v7 = -1 << *(v42 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v40 = (63 - v7) >> 6;
  v9 = "ODMSIRIUIVIEWMODE_EYES_FREE";
  while (v8)
  {
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(*(v42 + 56) + ((v1 << 9) | (8 * v11))) + 16);
    if (v12)
    {
      v43 = v8;
      v44 = v1;

      v49 = v12 - 1;
      v14 = 32;
      v47 = v13;
      while (1)
      {
        v48 = v14;
        v15 = v13 + v14;
        v16 = *(v15 + 16);
        *(v0 + 16) = *v15;
        *(v0 + 32) = v16;
        v17 = *(v15 + 32);
        v18 = *(v15 + 48);
        v19 = *(v15 + 64);
        *(v0 + 96) = *(v15 + 80);
        *(v0 + 64) = v18;
        *(v0 + 80) = v19;
        *(v0 + 48) = v17;
        v52 = *(v15 + 32);
        v53 = *(v15 + 48);
        v54 = *(v15 + 64);
        v55 = *(v15 + 80);
        v50 = *v15;
        v51 = *(v15 + 16);
        sub_2486A4F7C(v0 + 16, v2);
        v20 = sub_2486A7890();
        sub_2486A4FD8(v0 + 16);
        v21 = sub_2486B543C();
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v0 + 136) = sub_2486A502C;
        *(v0 + 144) = v22;
        *(v0 + 104) = MEMORY[0x277D85DD0];
        *(v0 + 112) = 1107296256;
        *(v0 + 120) = sub_2486A4EE0;
        *(v0 + 128) = &block_descriptor;
        v23 = _Block_copy(v2);
        v24 = *(v0 + 144);
        v25 = v20;

        AnalyticsSendEventLazy();
        _Block_release(v23);

        v26 = v25;
        v27 = sub_2486B539C();
        v28 = sub_2486B55AC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v56 = v46;
          *v29 = 136315138;
          sub_2486A46B4();
          sub_24869C374(0, &qword_27EEA18D0, 0x277D82BB8);
          v45 = v26;
          v30 = v9;
          v31 = v3;
          v32 = v2;
          v33 = sub_2486B53EC();
          v35 = v34;

          v36 = v33;
          v2 = v32;
          v3 = v31;
          v9 = v30;
          v37 = sub_2486965C0(v36, v35, &v56);

          *(v29 + 4) = v37;
          _os_log_impl(&dword_24868B000, v27, v28, "CoreAnalytics Reporter: reported task with stats, eventpayload=%s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          MEMORY[0x24C1D6650](v46, -1, -1);
          MEMORY[0x24C1D6650](v29, -1, -1);
        }

        else
        {
        }

        v13 = v47;
        if (!v49)
        {
          break;
        }

        --v49;
        v14 = v48 + 88;
      }

      v8 = v43;
      v1 = v44;
    }
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v40)
    {
      break;
    }

    v8 = *(v41 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_10;
    }
  }

  v38 = *(v0 + 200);

  v39 = *(v0 + 8);

  v39();
}

uint64_t static SiriPenetrationRateCoreAnalytics.report(payload:)(void **a1)
{
  v1 = *a1;
  v2 = sub_2486B543C();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v8[4] = sub_2486A5830;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2486A4EE0;
  v8[3] = &block_descriptor_7;
  v4 = _Block_copy(v8);
  v5 = v1;

  v6 = AnalyticsSendEventLazy();
  _Block_release(v4);

  return v6;
}

unint64_t sub_2486A46B4()
{
  v1 = *v0;
  v51 = sub_24869B35C(MEMORY[0x277D84F90]);
  v2 = [v1 metadata];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 odmId];
  }

  else
  {
    v4 = 0;
  }

  sub_2486A3F70(v4, 0x64494D444FLL, 0xE500000000000000);
  sub_24869C374(0, &qword_27EEA18E8, 0x277CCACA8);
  v5 = sub_2486B55DC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2486A56B4(v5, 0xD000000000000011, 0x80000002486BBEF0, isUniquelyReferenced_nonNull_native);
  v7 = sub_2486B55DC();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2486A56B4(v7, 0xD000000000000010, 0x80000002486BBF40, v8);
  v9 = sub_2486B55DC();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v51;
  sub_2486A56B4(v9, 0xD000000000000011, 0x80000002486BBF90, v10);
  v11 = [v1 dimensions];
  if (v11)
  {
    v12 = v11;
    [v11 productArea];

    v13 = sub_2486B558C();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v51;
    sub_2486A56B4(v13, 0x6465747563657865, 0xEE006E69616D6F44, v14);
  }

  v15 = [v1 metadata];
  if (v15)
  {
    v16 = v15;
    [v15 schedule];

    v17 = sub_2486B57FC();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v51;
    sub_2486A56B4(v17, 0xD000000000000019, 0x80000002486BC090, v18);
  }

  v19 = [v1 dimensions];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 siriInputLocale];

    if (v21)
    {
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v51;
      sub_2486A56B4(v21, 0x61636F4C69726973, 0xEA0000000000656CLL, v22);
    }
  }

  v23 = [v1 metadata];
  if (v23)
  {
    v24 = v23;
    [v23 aggregationWindowStartTimestamp];

    v25 = sub_2486B556C();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v51;
    sub_2486A56B4(v25, 0xD000000000000024, 0x80000002486BC060, v26);
  }

  v27 = [v1 statistics];
  if (v27)
  {
    v28 = v27;
    [v27 completedSystemTasks];

    v29 = sub_2486B585C();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v51;
    sub_2486A56B4(v29, 0xD000000000000019, 0x80000002486BC040, v30);
  }

  v31 = [v1 statistics];
  if (v31)
  {
    v32 = v31;
    [v31 failedSystemTasks];

    v33 = sub_2486B585C();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v51;
    sub_2486A56B4(v33, 0xD000000000000016, 0x80000002486BC020, v34);
  }

  v35 = [v1 statistics];
  if (v35)
  {
    v36 = v35;
    [v35 cancelledSystemTasks];

    v37 = sub_2486B585C();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v51;
    sub_2486A56B4(v37, 0xD000000000000019, 0x80000002486BC000, v38);
  }

  v39 = [v1 statistics];
  if (v39)
  {
    v40 = v39;
    [v39 tasksPerformedWithUI];

    v41 = sub_2486B585C();
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_2486A56B4(v41, 0xD000000000000019, 0x80000002486BBFE0, v42);
  }

  return v51;
}

uint64_t sub_2486A4C44()
{
  v1 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_odmId;
  v4 = sub_2486B4DFC();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t SiriPenetrationRateCoreAnalyticsReporter.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_odmId;
  v4 = sub_2486B4DFC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriPenetrationRateCoreAnalyticsReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_logger;
  v2 = sub_2486B53BC();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_odmId;
  v5 = sub_2486B4DFC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_2486A4EE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_24869C374(0, &qword_27EEA18D0, 0x277D82BB8);
    v5 = sub_2486B53CC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for SiriPenetrationRateCoreAnalyticsReporter()
{
  result = qword_27EEA18D8;
  if (!qword_27EEA18D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486A50CC()
{
  result = sub_2486B53BC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2486B4DFC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2486A51E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 72 * result;
  v6 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v6;
  *(v5 + 64) = *(a2 + 64);
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  v8 = (a5[7] + 16 * result);
  *v8 = a3;
  v8[1] = a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_2486A5254(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = (result + 1) & ~v4;
  if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v32 = result;
    v30 = v3;
    v28 = (sub_2486B55FC() + 1) & ~v4;
    v29 = v6;
    v31 = v2;
    while (1)
    {
      v7 = 72 * v5;
      v8 = *(v2 + 40);
      v9 = *(v2 + 48) + 72 * v5;
      v34[0] = *v9;
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 16);
      v35 = *(v9 + 64);
      v34[2] = v11;
      v34[3] = v10;
      v34[1] = v12;
      sub_2486B580C();
      v13 = *(v34 + 1);
      sub_2486B582C();
      if (v13 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v13;
      }

      v15 = v35;
      MEMORY[0x24C1D6050](*&v14);
      sub_2486A3DF0(v34, v33);
      sub_2486B549C();
      sub_2486B549C();
      sub_2486B549C();
      MEMORY[0x24C1D6030](v15);
      MEMORY[0x24C1D6030](0);
      v16 = sub_2486B584C();
      result = sub_2486A3CDC(v34);
      v17 = v16 & v29;
      v18 = v32;
      if (v32 >= v28)
      {
        if (v17 < v28)
        {
          v19 = v30;
          v2 = v31;
          goto LABEL_20;
        }

        v2 = v31;
        if (v32 < v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v2 = v31;
        if (v17 < v28 && v32 < v17)
        {
LABEL_9:
          v19 = v30;
          goto LABEL_20;
        }
      }

      v20 = *(v2 + 48);
      result = v20 + 72 * v32;
      v21 = (v20 + v7);
      if (72 * v32 < v7 || result >= v21 + 72 || v32 != v5)
      {
        result = memmove(result, v21, 0x48uLL);
      }

      v22 = *(v2 + 56);
      v23 = (v22 + 16 * v32);
      v24 = (v22 + 16 * v5);
      v19 = v30;
      if (v32 != v5 || v23 >= v24 + 1)
      {
        *v23 = *v24;
        v18 = v5;
      }

LABEL_20:
      v5 = (v5 + 1) & v29;
      if (((*(v19 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        *(v19 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v18) - 1;
        goto LABEL_24;
      }

      v32 = v18;
    }
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_24:
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_2486A5504(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2486B55FC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2486B580C();

      sub_2486B549C();
      v13 = sub_2486B584C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2486A56B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2486A10B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2486A1CBC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2486A10B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2486B57EC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2486A2284();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t BatchReporter.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t BookmarkedReporter.__allocating_init(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  (*(*(*(*v7 + 80) - 8) + 32))(v7 + *(*v7 + 96), a1);
  *(v7 + *(*v7 + 104)) = a2;
  return v7;
}

uint64_t sub_2486A5930(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *v1;
  v2[5] = *v1;
  v4 = *(v3 + 80);
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v2[8] = *(v5 + 64);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2486A5A2C, 0, 0);
}

uint64_t sub_2486A5A2C()
{
  v1 = v0[6];
  v0[10] = *(v0[4] + 16);

  if (sub_2486B554C())
  {
    v2 = v0[10];
    v3 = v0[6];
    v4 = sub_2486B552C();
    sub_2486B550C();
    if (v4)
    {
      (*(v0[7] + 16))(v0[9], v0[10] + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
    }

    else
    {
      v16 = v0[10];
      v17 = v0[8];
      v18 = v0[6];
      v10 = sub_2486B563C();
      if (v17 != 8)
      {
        __break(1u);
        return MEMORY[0x2821ED098](v10, v9, v11);
      }

      v19 = v0[9];
      v20 = v0[6];
      v21 = v0[7];
      v0[2] = v10;
      (*(v21 + 16))(v19, v0 + 2, v20);
      swift_unknownObjectRelease();
    }

    v0[11] = 1;
    v5 = *(v0[5] + 88);
    v6 = *(MEMORY[0x277D81780] + 4);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_2486A5BFC;
    v8 = v0[9];
    v9 = v0[6];
    v10 = v0[3];
    v11 = v5;

    return MEMORY[0x2821ED098](v10, v9, v11);
  }

  v13 = v0[9];
  v12 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2486A5BFC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[10];
    (*(v2[7] + 8))(v2[9], v2[6]);

    v5 = sub_2486A5F1C;
  }

  else
  {
    (*(v2[7] + 8))(v2[9], v2[6]);
    v5 = sub_2486A5D48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2486A5D48()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  if (v2 != sub_2486B554C())
  {
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[6];
    v11 = sub_2486B552C();
    sub_2486B550C();
    if (v11)
    {
      v12 = (*(v0[7] + 16))(v0[9], v0[10] + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v9, v0[6]);
    }

    else
    {
      v19 = v0[8];
      v20 = v0[6];
      v12 = sub_2486B563C();
      if (v19 != 8)
      {
        goto LABEL_14;
      }

      v21 = v0[9];
      v22 = v0[6];
      v23 = v0[7];
      v0[2] = v12;
      (*(v23 + 16))(v21, v0 + 2, v22);
      v12 = swift_unknownObjectRelease();
    }

    v0[11] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v15 = *(v0[5] + 88);
      v16 = *(MEMORY[0x277D81780] + 4);
      v17 = swift_task_alloc();
      v0[12] = v17;
      *v17 = v0;
      v17[1] = sub_2486A5BFC;
      v18 = v0[9];
      v13 = v0[6];
      v12 = v0[3];
      v14 = v15;

      return MEMORY[0x2821ED098](v12, v13, v14);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821ED098](v12, v13, v14);
  }

  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2486A5F1C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t BatchReporter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BatchReporter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2486A5FD8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248696E0C;

  return sub_2486A5930(a1);
}

uint64_t BookmarkedReporter.init(_:_:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  *(v2 + *(*v2 + 104)) = a2;
  return v2;
}

uint64_t sub_2486A6108(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v4 = *v1;
  v5 = type metadata accessor for conversationStreamMetadata(0);
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = type metadata accessor for eventStreamMetadata(0);
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v12 = v4[11];
  v13 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[21] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v2[22] = v15;
  v16 = *(v15 + 64) + 15;
  v2[23] = swift_task_alloc();
  v17 = v4[12];
  v18 = *(MEMORY[0x277D81780] + 4);
  v19 = swift_task_alloc();
  v2[24] = v19;
  *v19 = v2;
  v19[1] = sub_2486A6364;

  return MEMORY[0x2821ED098](a1, v13, v12);
}

uint64_t sub_2486A6364()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[23];
    v6 = v2[20];
    v9 = v2 + 16;
    v7 = v2[16];
    v8 = v9[1];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2486A64C8, 0, 0);
  }
}

uint64_t sub_2486A64C8()
{
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 96), *(v0 + 168));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA18F0, &qword_2486B6B08);
  if (swift_dynamicCast())
  {
    sub_2486A6D34((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = (*(v2 + 16))(v1, v2);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v0 + 152);
      v39 = *(v0 + 160);
      v37 = *(*(v0 + 144) + 20);
      v35 = *(*(v0 + 104) + *(**(v0 + 104) + 104));
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v7 = *(v5 + 72);
      do
      {
        v8 = *(v0 + 160);
        v9 = *(v0 + 136);
        sub_24869B4B4(v6, v8, type metadata accessor for eventStreamMetadata);
        v10 = *v8;
        v11 = sub_2486B4DAC();
        v12 = *(v11 - 8);
        (*(v12 + 16))(v9, v39 + v37, v11);
        sub_24869B51C(v8, type metadata accessor for eventStreamMetadata);
        (*(v12 + 56))(v9, 0, 1, v11);
        v13 = *(v35 + 16);
        sub_2486B516C();

        sub_248694A50(v9, &qword_27EEA14F0, &qword_2486B6680);
        v6 += v7;
        --v4;
      }

      while (v4);
    }

    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
    v16 = (*(v15 + 24))(v14, v15);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v0 + 120);
      v40 = *(v0 + 128);
      v38 = *(*(v0 + 112) + 20);
      v36 = *(*(v0 + 104) + *(**(v0 + 104) + 104));
      v19 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v20 = *(v18 + 72);
      do
      {
        v21 = *(v0 + 128);
        v22 = *(v0 + 136);
        sub_24869B4B4(v19, v21, type metadata accessor for conversationStreamMetadata);
        v23 = *v21;
        v24 = sub_2486B4DAC();
        v25 = *(v24 - 8);
        (*(v25 + 16))(v22, v40 + v38, v24);
        sub_24869B51C(v21, type metadata accessor for conversationStreamMetadata);
        (*(v25 + 56))(v22, 0, 1, v24);
        v26 = *(v36 + 16);
        sub_2486B515C();

        sub_248694A50(v22, &qword_27EEA14F0, &qword_2486B6680);
        v19 += v20;
        --v17;
      }

      while (v17);
    }

    v27 = *(*(v0 + 104) + *(**(v0 + 104) + 104));
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_2486A697C;

    return sub_2486952A4();
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_248694A50(v0 + 56, &qword_27EEA18F8, &unk_2486B6B10);
    v30 = *(v0 + 184);
    v31 = *(v0 + 160);
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_2486A697C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_2486A6B24;
  }

  else
  {
    v3 = sub_2486A6A90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2486A6A90()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[23];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2486A6B24()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t BookmarkedReporter.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t BookmarkedReporter.__deallocating_deinit()
{
  BookmarkedReporter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2486A6C9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24869B5FC;

  return sub_2486A6108(a1);
}

uint64_t sub_2486A6D34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t dispatch thunk of BatchReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248696E0C;

  return v8(a1);
}

uint64_t sub_2486A6EF8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of BookmarkedReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24869B5FC;

  return v8(a1);
}

uint64_t sub_2486A71E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_2486B4DAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2486A72E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v22 = a2;
  v23 = a5;
  v21 = a3(0);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = a4;
  v12 = (a1 + 32);
  v13 = sub_2486B4DAC();
  v14 = *(*(v13 - 8) + 16);
  v15 = MEMORY[0x277D84F90];
  do
  {
    v16 = *v12++;
    v14(&v10[*(v21 + 20)], v22, v13);
    *v10 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v20(0, *(v15 + 16) + 1, 1, v15);
    }

    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v18 >= v17 >> 1)
    {
      v15 = v20(v17 > 1, v18 + 1, 1, v15);
    }

    *(v15 + 16) = v18 + 1;
    sub_2486A7740(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v23);
    --v11;
  }

  while (v11);
  return v15;
}

uint64_t sub_2486A7500(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2486B4DAC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2486B4DAC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2486A7694()
{
  result = sub_2486B4DAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2486A7740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SiriPenetrationRateBiomeReporter.__allocating_init(biomeDonator:logger:odmId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator) = a1;
  v10 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger;
  v11 = sub_2486B53BC();
  (*(*(v11 - 8) + 32))(v9 + v10, a2, v11);
  v12 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId;
  v13 = sub_2486B4DFC();
  (*(*(v13 - 8) + 32))(v9 + v12, a3, v13);
  return v9;
}

id sub_2486A7890()
{
  v1 = sub_2486B4DAC();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 1);
  v7 = *(v0 + 3);
  v35 = *(v0 + 2);
  v36 = *(v0 + 64);
  v8 = v0[17];
  v9 = v0[20];
  if (v5 == 30)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  if (v5 == 7)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_2486B556C();
  if (v5 != 30)
  {
    if (v5 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    if (v5 == 7)
    {
      v11 = v11;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = sub_2486B556C();
  sub_2486B4DCC();
  v15 = objc_allocWithZone(MEMORY[0x277CF15F0]);
  v16 = sub_2486B543C();

  v17 = [v15 initWithSchedule:v11 aggregationWindowStartTimestamp:v12 aggregationWindowEndTimestamp:v14 odmId:{v16, v35}];

  v18 = sub_2486B585C();
  sub_2486A8834();
  v19 = sub_2486B55CC();
  v20 = sub_2486B55CC();
  v21 = sub_2486B585C();
  v22 = [objc_allocWithZone(MEMORY[0x277CF15F8]) initWithCompletedSystemTasks:v18 failedSystemTasks:v19 cancelledSystemTasks:v20 tasksPerformedWithUI:v21];

  v23 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v24 = [v23 operatingSystemVersionString];

  sub_2486B544C();
  v25 = objc_allocWithZone(MEMORY[0x277CF15E8]);
  v26 = sub_2486B543C();
  v27 = sub_2486B543C();
  v28 = sub_2486B543C();
  v29 = sub_2486B543C();
  v30 = sub_2486B543C();

  v31 = [v25 initWithProductArea:(v36 + 1) siriInputLocale:v26 systemLocale:v27 countryCode:v28 deviceType:v29 systemBuild:v30];

  sub_2486B4D9C();
  sub_2486B4D6C();
  (*(v37 + 8))(v4, v38);
  v32 = sub_2486B556C();
  v33 = [objc_allocWithZone(MEMORY[0x277CF15E0]) initWithAbsoluteTimestamp:v32 metadata:v17 statistics:v22 dimensions:v31];

  return v33;
}

uint64_t sub_2486A7D0C(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2486A0AB0;

  return v8(a1);
}

uint64_t SiriPenetrationRateBiomeReporter.odmId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId;
  v4 = sub_2486B4DFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriPenetrationRateBiomeReporter.init(biomeDonator:logger:odmId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator) = a1;
  v6 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger;
  v7 = sub_2486B53BC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId;
  v9 = sub_2486B4DFC();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

uint64_t sub_2486A7F6C(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 192) = v1;
  *(v2 + 200) = v3;

  return MEMORY[0x2822009F8](sub_2486A7FDC, 0, 0);
}

void sub_2486A7FDC()
{
  v53 = v0;
  v1 = 0;
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v3 + 64);
  v42 = v3 + 64;
  v44 = v3;
  v5 = -1;
  v6 = -1 << *(v44 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v43 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator;
  v8 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId;
  v9 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger;
  v41 = (63 - v6) >> 6;
  v10 = &off_278F50000;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v44 + 56) + ((v1 << 9) | (8 * v12)));
    v14 = *(v13 + 16);
    if (v14)
    {
      v45 = v7;
      v46 = v1;
      v15 = *(v2 + v43);

      v16 = v14 - 1;
      v17 = 32;
      v49 = v13;
      v48 = v15;
      while (1)
      {
        v50 = v17;
        v18 = v13 + v17;
        v19 = *(v18 + 16);
        *(v0 + 16) = *v18;
        *(v0 + 32) = v19;
        v20 = *(v18 + 32);
        v21 = *(v18 + 48);
        v22 = *(v18 + 64);
        *(v0 + 96) = *(v18 + 80);
        *(v0 + 64) = v21;
        *(v0 + 80) = v22;
        *(v0 + 48) = v20;
        v23 = *(v18 + 48);
        v51[2] = *(v18 + 32);
        v51[3] = v23;
        v51[4] = *(v18 + 64);
        v52 = *(v18 + 80);
        v24 = *(v18 + 16);
        v51[0] = *v18;
        v51[1] = v24;
        sub_2486A4F7C(v0 + 16, v0 + 104);
        v25 = sub_2486A7890();
        sub_2486A4FD8(v0 + 16);
        [*(v15 + 16) v10[124]];

        v26 = sub_2486B539C();
        v27 = sub_2486B55AC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *&v51[0] = v29;
          *v28 = 136315138;
          v30 = MEMORY[0x24C1D5D10](v13, &type metadata for CountsReported);
          v32 = v10;
          v33 = v9;
          v34 = v8;
          v35 = v2;
          v36 = sub_2486965C0(v30, v31, v51);

          *(v28 + 4) = v36;
          v2 = v35;
          v8 = v34;
          v9 = v33;
          v10 = v32;
          _os_log_impl(&dword_24868B000, v26, v27, "%s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v37 = v29;
          v0 = v47;
          MEMORY[0x24C1D6650](v37, -1, -1);
          v38 = v28;
          v15 = v48;
          MEMORY[0x24C1D6650](v38, -1, -1);
        }

        if (!v16)
        {
          break;
        }

        --v16;
        v17 = v50 + 88;
        v13 = v49;
      }

      v7 = v45;
      v1 = v46;
    }
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v41)
    {
      break;
    }

    v7 = *(v42 + 8 * v11);
    ++v1;
    if (v7)
    {
      v1 = v11;
      goto LABEL_10;
    }
  }

  v39 = *(v0 + 200);

  v40 = *(v0 + 8);

  v40();
}

uint64_t sub_2486A8304()
{
  v1 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator);
}

uint64_t SiriPenetrationRateBiomeReporter.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator);

  return v0;
}

uint64_t SiriPenetrationRateBiomeReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId;
  v2 = sub_2486B4DFC();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger;
  v5 = sub_2486B53BC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of SiriPentrationRateReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248696E0C;

  return v8(a1);
}

uint64_t type metadata accessor for SiriPenetrationRateBiomeReporter()
{
  result = qword_27EEA1930;
  if (!qword_27EEA1930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486A8730()
{
  result = sub_2486B4DFC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2486B53BC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2486A8834()
{
  result = qword_27EEA1940;
  if (!qword_27EEA1940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA1940);
  }

  return result;
}

uint64_t SiriPenetrationRateJsonLoggingReporter.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;
  *(v5 + v6) = sub_24869A6D4(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_logger;
  v8 = sub_2486B53BC();
  (*(*(v8 - 8) + 32))(v5 + v7, a1, v8);
  return v5;
}

uint64_t sub_2486A8940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2486A89A8()
{
  v1 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SiriPenetrationRateJsonLoggingReporter.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;
  *(v1 + v3) = sub_24869A6D4(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_logger;
  v5 = sub_2486B53BC();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t sub_2486A8A78(uint64_t *a1)
{
  v2[23] = v1;
  v4 = *(*(sub_2486B547C() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v5 = *(*(sub_2486B4CCC() - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v2[25] = v6;
  v2[26] = v7;

  return MEMORY[0x2822009F8](sub_2486A8B3C, 0, 0);
}

uint64_t sub_2486A8B3C()
{
  v38 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = sub_2486B4D0C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2486B4CFC();
  sub_2486B4CBC();
  sub_2486B4CDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6240;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000002486BC1C0;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1950, &unk_2486B6D90);
  *(inited + 48) = v1;

  v8 = sub_24869A6D4(inited);
  swift_setDeallocating();
  sub_248694A50(inited + 32, &qword_27EEA1570, &unk_2486B6470);
  v9 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;
  swift_beginAccess();
  v10 = *(v3 + v9);
  *(v3 + v9) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1958, &qword_2486B6DA0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2486B6240;
  *(v11 + 32) = 0xD00000000000001BLL;
  *(v11 + 40) = 0x80000002486BC1C0;
  *(v11 + 48) = v1;

  v12 = sub_24869B258(v11);
  swift_setDeallocating();
  sub_248694A50(v11 + 32, &qword_27EEA1960, &qword_2486B6DA8);
  v0[22] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1968, &qword_2486B6DB0);
  sub_2486A92B0();
  v13 = sub_2486B4CEC();
  v15 = v14;
  v16 = v0[24];

  sub_2486B546C();
  v17 = sub_2486B545C();
  v19 = v0[23];
  if (v18)
  {
    v20 = v18;
    v21 = v17;
    v22 = sub_2486B539C();
    v23 = sub_2486B55AC();
    if (os_log_type_enabled(v22, v23))
    {
      v36 = v15;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315138;
      v26 = sub_2486965C0(v21, v20, &v37);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_24868B000, v22, v23, "json_string=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x24C1D6650](v25, -1, -1);
      v27 = v24;
      v15 = v36;
      MEMORY[0x24C1D6650](v27, -1, -1);
    }

    else
    {
    }

    v28 = sub_2486B539C();
    v29 = sub_2486B55BC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_10;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Unable to convert JSON string to data.";
  }

  else
  {
    v28 = sub_2486B539C();
    v29 = sub_2486B55BC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_10;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Extracting results to JSON failed";
  }

  _os_log_impl(&dword_24868B000, v28, v29, v31, v30, 2u);
  MEMORY[0x24C1D6650](v30, -1, -1);
LABEL_10:
  sub_2486A94F4(v13, v15);

  v33 = v0[24];
  v32 = v0[25];

  v34 = v0[1];

  return v34();
}

uint64_t sub_2486A9080()
{
  v1 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult);
}

uint64_t SiriPenetrationRateJsonLoggingReporter.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult);

  return v0;
}

uint64_t SiriPenetrationRateJsonLoggingReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_logger;
  v2 = sub_2486B53BC();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2486A923C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_2486A92B0()
{
  result = qword_27EEA1970;
  if (!qword_27EEA1970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA1968, &qword_2486B6DB0);
    sub_2486A933C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1970);
  }

  return result;
}

unint64_t sub_2486A933C()
{
  result = qword_27EEA1978;
  if (!qword_27EEA1978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA1950, &unk_2486B6D90);
    sub_2486A93C8();
    sub_2486A941C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1978);
  }

  return result;
}

unint64_t sub_2486A93C8()
{
  result = qword_27EEA1980;
  if (!qword_27EEA1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1980);
  }

  return result;
}

unint64_t sub_2486A941C()
{
  result = qword_27EEA1988;
  if (!qword_27EEA1988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA1990, &qword_2486B6DB8);
    sub_2486A94A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1988);
  }

  return result;
}

unint64_t sub_2486A94A0()
{
  result = qword_27EEA1998;
  if (!qword_27EEA1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1998);
  }

  return result;
}

uint64_t sub_2486A94F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for SiriPenetrationRateJsonLoggingReporter()
{
  result = qword_27EEA19A0;
  if (!qword_27EEA19A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486A959C()
{
  result = sub_2486B53BC();
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

uint64_t SiriPenetrationRateDataProvider.__allocating_init(appIntentEventProvider:siriExecutionEventProivder:siriUIEventProvider:conversationProvider:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedAppIntentProivder) = a1;
  *(v15 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriExecutionProvider) = a2;
  *(v15 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriUIProvider) = a3;
  *(v15 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedConversationProvider) = a4;
  v16 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_logger;
  v17 = sub_2486B53BC();
  (*(*(v17 - 8) + 32))(v15 + v16, a6, v17);
  *(v15 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_bookmarkService) = a5;
  return v15;
}

uint64_t FeaturizedBiomeData.init(featurizedEvents:eventType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SiriPenetrationRateDataProvider.init(appIntentEventProvider:siriExecutionEventProivder:siriUIEventProvider:conversationProvider:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedAppIntentProivder) = a1;
  *(v6 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriExecutionProvider) = a2;
  *(v6 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriUIProvider) = a3;
  *(v6 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedConversationProvider) = a4;
  v9 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_logger;
  v10 = sub_2486B53BC();
  (*(*(v10 - 8) + 32))(v6 + v9, a6, v10);
  *(v6 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_bookmarkService) = a5;
  return v6;
}

uint64_t sub_2486A9834(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_2486A9854, 0, 0);
}

uint64_t sub_2486A9854()
{
  v1 = *(v0 + 56);
  sub_2486AA03C(7uLL);
  v2 = *(v1 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedAppIntentProivder);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_2486A9900;

  return sub_2486AAAD4(v0 + 16);
}

uint64_t sub_2486A9900()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2486A9FDC;
  }

  else
  {
    v3 = sub_2486A9A14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2486A9A14()
{
  v1 = v0[7];
  v0[10] = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriExecutionProvider);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_2486A9AC0;

  return sub_2486AAAD4((v0 + 3));
}

uint64_t sub_2486A9AC0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);

    v5 = sub_2486A9FF4;
  }

  else
  {
    v5 = sub_2486A9BDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2486A9BDC()
{
  v1 = v0[7];
  v0[13] = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriUIProvider);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_2486A9C88;

  return sub_2486AAAD4((v0 + 4));
}

uint64_t sub_2486A9C88()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 80);

    v6 = sub_2486AA00C;
  }

  else
  {
    v6 = sub_2486A9DB0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2486A9DB0()
{
  v1 = v0[7];
  v0[16] = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedConversationProvider);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_2486A9E5C;

  return sub_2486AC0A8((v0 + 5));
}

uint64_t sub_2486A9E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[13];
    v6 = v2[10];

    v7 = sub_2486AA024;
  }

  else
  {
    v7 = sub_2486A9F98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2486A9F98()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 80);
  v3[1] = 13;
  v3[2] = v2;
  v3[3] = 6;
  v3[4] = v1;
  v3[5] = 1;
  v3[6] = v4;
  v3[7] = 0;
  return (*(v0 + 8))();
}

uint64_t sub_2486AA03C(unint64_t a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v2 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - v3;
  v5 = sub_2486B4DAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F8, &qword_2486B68D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = sub_2486B4F0C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v27 - v20);
  sub_2486B4EDC();
  sub_2486B4F1C();
  v22 = sub_2486B4F2C();
  result = (*(*(v22 - 8) + 48))(v13, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2486B4EEC();
    (*(v15 + 32))(v21, v19, v14);
    if (qword_280DCC6F8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v28, qword_280DCC700);
    swift_beginAccess();
    sub_24868FE44(v24, v4);
    v25 = *(v6 + 48);
    if (v25(v4, 1, v5) == 1)
    {
      sub_2486B4D9C();
      if (v25(v4, 1, v5) != 1)
      {
        sub_24868FF24(v4);
      }
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
    }

    v26 = *(v29 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_bookmarkService);
    sub_248695680(13, a1, v9, v21);
    sub_248695680(6, a1, v9, v21);
    sub_248695680(1, a1, v9, v21);
    sub_2486956F0(0, a1, v9, v21);
    (*(v6 + 8))(v9, v5);
    return (*(v15 + 8))(v21, v14);
  }

  return result;
}

uint64_t SiriPenetrationRateDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_bookmarkService);

  v4 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedAppIntentProivder);

  v5 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriExecutionProvider);

  v6 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriUIProvider);

  v7 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedConversationProvider);

  return v0;
}

uint64_t SiriPenetrationRateDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_logger;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_bookmarkService);

  v4 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedAppIntentProivder);

  v5 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriExecutionProvider);

  v6 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriUIProvider);

  v7 = *(v0 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedConversationProvider);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2486AA5D0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248696E0C;

  return sub_2486A9834(a1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2486AA680(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2486AA6C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for SiriPenetrationRateDataProvider()
{
  result = qword_27EEA19E0;
  if (!qword_27EEA19E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486AA79C()
{
  result = sub_2486B53BC();
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

uint64_t dispatch thunk of SiriPenetrationRateDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248696E0C;

  return v8(a1);
}

char *FeaturizedBiomeDataProvider.__allocating_init(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 4) = a3;
  v12 = OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger;
  v13 = sub_2486B53BC();
  (*(*(v13 - 8) + 32))(&v11[v12], a4, v13);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  return v11;
}

char *FeaturizedBiomeDataProvider.init(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 4) = a3;
  v8 = OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger;
  v9 = sub_2486B53BC();
  (*(*(v9 - 8) + 32))(&v4[v8], a4, v9);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  return v4;
}

uint64_t sub_2486AAAD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2486AAAF4, 0, 0);
}

uint64_t sub_2486AAAF4()
{
  v28 = v0;
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA19F8, &qword_2486B6FC8);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15C8, &qword_2486B6FD0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2486B6240;
  v6 = (v5 + v4);
  v7 = v2[14];
  v8 = *(v1 + 16);
  *v6 = v8;
  v9 = *MEMORY[0x277D04488];
  v10 = sub_2486B4F4C();
  (*(*(v10 - 8) + 104))(&v6[v7], v9, v10);
  sub_24869ADCC(v5);
  swift_setDeallocating();
  sub_2486AB024(v6);
  swift_deallocClassInstance();
  v11 = sub_2486B4F8C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_2486B4F5C();
  v14 = *(*(v1 + 32) + 16);
  sub_2486B4F6C();

  sub_2486B513C();
  v15 = sub_2486B4F7C();

  sub_2486B4FBC();
  v16 = MEMORY[0x24C1D57C0](v8);
  v18 = v17;
  swift_bridgeObjectRetain_n();
  v19 = sub_2486B539C();
  v20 = sub_2486B55AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315394;
    v23 = sub_2486965C0(v16, v18, &v27);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2048;
    if (v15 >> 62)
    {
      v24 = sub_2486B56BC();
    }

    else
    {
      v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 14) = v24;

    _os_log_impl(&dword_24868B000, v19, v20, "marker: fetched featurized events, eventType=%s,\ncount=%ld", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x24C1D6650](v22, -1, -1);
    MEMORY[0x24C1D6650](v21, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  **(v0 + 16) = v15;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t FeaturizedBiomeDataProvider.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger;
  v3 = sub_2486B53BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FeaturizedBiomeDataProvider.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger;
  v3 = sub_2486B53BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2486AAF88(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248696E0C;

  return sub_2486AAAD4(a1);
}

uint64_t sub_2486AB024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15C8, &qword_2486B6FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2486AB090()
{
  result = qword_27EEA1A00;
  if (!qword_27EEA1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1A00);
  }

  return result;
}

uint64_t type metadata accessor for FeaturizedBiomeDataProvider()
{
  result = qword_27EEA1A08;
  if (!qword_27EEA1A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486AB148()
{
  result = sub_2486B53BC();
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

uint64_t dispatch thunk of FeaturizedBiomeDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248696E0C;

  return v8(a1);
}

uint64_t sub_2486AB354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B70E0;
  sub_2486B50DC();
  *(inited + 32) = sub_2486B50CC();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000002486BC390;
  *(inited + 80) = sub_2486B507C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0x7373654D646E6553;
  *(inited + 104) = 0xEB00000000656761;
  *(inited + 128) = sub_2486B508C();
  *(inited + 136) = v4;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 0;
  *(inited + 176) = sub_2486B50AC();
  *(inited + 184) = v5;
  type metadata accessor for BMAppIntentInteractionDirection(0);
  *(inited + 216) = v6;
  *(inited + 192) = 2;
  v7 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1A18 = v7;
  return result;
}

uint64_t sub_2486AB4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  sub_2486B504C();
  *(inited + 32) = sub_2486B502C();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000002486BC390;
  *(inited + 80) = sub_2486B501C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0xD000000000000029;
  *(inited + 104) = 0x80000002486BC3B0;
  *(inited + 128) = sub_2486B503C();
  *(inited + 136) = v4;
  type metadata accessor for BMSiriExecutionTaskStep(0);
  *(inited + 168) = v5;
  *(inited + 144) = 7;
  v6 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1A20 = v6;
  return result;
}

uint64_t _s11DeepThought33SendSMSPenetrationRateEventFilterC06isSiriF013siriExecutionSb0aB15BiomeFoundation010FeaturizedF0C_tFZ_0()
{
  sub_2486B504C();
  sub_2486B502C();
  sub_2486B50FC();

  v0 = v39;
  v35 = v38;
  if (qword_27EEA14A0 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1A20;
  v2 = sub_2486B502C();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v34 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v38);
  v7 = swift_dynamicCast();
  v8 = v36;
  if (!v7)
  {
    v8 = 0;
  }

  v34 = v8;
  if (v7)
  {
    v9 = v37;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B501C();
  sub_2486B50FC();

  v10 = v39;
  v33 = v38;
  v11 = sub_2486B501C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v13 = sub_2486A10B4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_20:
    v32 = 0;
    v18 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v13, &v38);
  v16 = swift_dynamicCast();
  v17 = v36;
  if (!v16)
  {
    v17 = 0;
  }

  v32 = v17;
  if (v16)
  {
    v18 = v37;
  }

  else
  {
    v18 = 0;
  }

LABEL_21:
  sub_2486B503C();
  type metadata accessor for BMSiriExecutionTaskStep(0);
  sub_2486B50FC();

  v31 = v38;
  v19 = BYTE4(v38);
  v20 = sub_2486B503C();
  if (!v1[2])
  {

LABEL_30:
    v26 = 0;
    v27 = 1;
    if (!v0)
    {
      goto LABEL_27;
    }

LABEL_31:
    if (v9)
    {
      if (v35 == v34 && v0 == v9)
      {

        goto LABEL_37;
      }

      v28 = sub_2486B57DC();

      if (v28)
      {
LABEL_37:
        if (v10)
        {
          if (!v18)
          {
            goto LABEL_43;
          }

          if (v33 != v32 || v10 != v18)
          {
            v30 = sub_2486B57DC();

            if (v19 & 1 | ((v30 & 1) == 0))
            {
              v27 &= v30;
              return v27 & 1;
            }

            goto LABEL_50;
          }
        }

        else if (v18)
        {
          goto LABEL_43;
        }

        if (v19)
        {
          return v27 & 1;
        }

LABEL_50:
        v27 = (v31 == v26) & ~v27;
        return v27 & 1;
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  v22 = sub_2486A10B4(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_248694AB0(v1[7] + 32 * v22, &v38);
  v25 = swift_dynamicCast();
  if (v25)
  {
    v26 = v36;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 ^ 1;
  if (v0)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (!v9)
  {
    goto LABEL_37;
  }

LABEL_43:

  v27 = 0;
  return v27 & 1;
}

uint64_t _s11DeepThought33SendSMSPenetrationRateEventFilterC12isAppUIEvent9appIntentSb0aB15BiomeFoundation010FeaturizedF0C_tFZ_0()
{
  sub_2486B50DC();
  sub_2486B50CC();
  sub_2486B50FC();

  v0 = v47;
  v42 = v46;
  if (qword_27EEA1498 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1A18;
  v2 = sub_2486B50CC();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v41 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v46);
  v7 = swift_dynamicCast();
  v8 = v44;
  if (!v7)
  {
    v8 = 0;
  }

  v41 = v8;
  if (v7)
  {
    v9 = v45;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B507C();
  sub_2486B50FC();

  v39 = v46;
  v43 = v47;
  v10 = sub_2486B507C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v12 = sub_2486A10B4(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_20:
    v38 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v12, &v46);
  v15 = swift_dynamicCast();
  v16 = v44;
  if (!v15)
  {
    v16 = 0;
  }

  v38 = v16;
  if (v15)
  {
    v17 = v45;
  }

  else
  {
    v17 = 0;
  }

LABEL_21:
  sub_2486B508C();
  sub_2486B50FC();

  v40 = v46;
  v18 = sub_2486B508C();
  if (v1[2])
  {
    v20 = sub_2486A10B4(v18, v19);
    v22 = v21;

    v23 = 2;
    if (v22)
    {
      sub_248694AB0(v1[7] + 32 * v20, &v46);
      if (swift_dynamicCast())
      {
        v23 = v44;
      }

      else
      {
        v23 = 2;
      }
    }
  }

  else
  {

    v23 = 2;
  }

  sub_2486B50AC();
  type metadata accessor for BMAppIntentInteractionDirection(0);
  sub_2486B50FC();

  v37 = v46;
  v24 = BYTE4(v46);
  v25 = sub_2486B50AC();
  if (!v1[2])
  {

LABEL_36:
    v31 = 0;
    v32 = 1;
    if (!v0)
    {
      goto LABEL_33;
    }

LABEL_37:
    if (v9)
    {
      if (v42 == v41 && v0 == v9)
      {

        goto LABEL_43;
      }

      v33 = sub_2486B57DC();

      if (v33)
      {
LABEL_43:
        if (v43)
        {
          if (!v17)
          {
            goto LABEL_50;
          }

          if (v39 == v38 && v43 == v17)
          {
          }

          else
          {
            v36 = sub_2486B57DC();

            v34 = 0;
            if ((v36 & 1) == 0)
            {
              return v34 & 1;
            }
          }
        }

        else if (v17)
        {
          goto LABEL_50;
        }

        if (v40 == 2)
        {
          if ((v23 != 2) | v24 & 1)
          {
            v34 = (v23 == 2) & v32;
            return v34 & 1;
          }
        }

        else if ((v23 == 2) | (v23 ^ v40) & 1 | v24 & 1)
        {
          v34 = (((v23 == 2) | v23 ^ v40) ^ 1) & v32;
          return v34 & 1;
        }

        v34 = (v37 == v31) & ~v32;
        return v34 & 1;
      }
    }

    else
    {
    }

    goto LABEL_50;
  }

  v27 = sub_2486A10B4(v25, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_248694AB0(v1[7] + 32 * v27, &v46);
  v30 = swift_dynamicCast();
  if (v30)
  {
    v31 = v44;
  }

  else
  {
    v31 = 0;
  }

  v32 = v30 ^ 1;
  if (v0)
  {
    goto LABEL_37;
  }

LABEL_33:
  if (!v9)
  {
    goto LABEL_43;
  }

LABEL_50:

  v34 = 0;
  return v34 & 1;
}

char *FeaturizedConversationDataProvider.__allocating_init(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 4) = a3;
  v12 = OBJC_IVAR____TtC11DeepThought34FeaturizedConversationDataProvider_logger;
  v13 = sub_2486B53BC();
  (*(*(v13 - 8) + 32))(&v11[v12], a4, v13);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  return v11;
}

char *FeaturizedConversationDataProvider.init(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 4) = a3;
  v8 = OBJC_IVAR____TtC11DeepThought34FeaturizedConversationDataProvider_logger;
  v9 = sub_2486B53BC();
  (*(*(v9 - 8) + 32))(&v4[v8], a4, v9);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  return v4;
}

uint64_t sub_2486AC0A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2486AC0C8, 0, 0);
}

uint64_t sub_2486AC0C8()
{
  v1 = v0[3];
  sub_2486B522C();
  v2 = v1[2];
  v0[4] = sub_2486B521C();
  v3 = *(v1[4] + 16);
  v0[5] = v3;
  v4 = v1[3];
  v5 = *(MEMORY[0x277D044F0] + 4);
  v9 = (*MEMORY[0x277D044F0] + MEMORY[0x277D044F0]);
  v6 = v3;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_2486AC1B4;

  return v9(v3, v4);
}

uint64_t sub_2486AC1B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_2486AC430;
  }

  else
  {

    v5 = sub_2486AC2D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2486AC2D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v3 = sub_2486B539C();
  v4 = sub_2486B55AC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      *(v0 + 56);
      v15 = v7;
      v8 = sub_2486B56BC();
      v7 = v15;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = *(v0 + 56);
    v10 = *(v0 + 32);
    *(v7 + 4) = v8;
    v11 = v7;

    _os_log_impl(&dword_24868B000, v3, v4, "marker: fetched SELF conversations, count=%ld", v11, 0xCu);
    MEMORY[0x24C1D6650](v11, -1, -1);
  }

  else
  {
    v10 = *(v0 + 32);
    v12 = *(v0 + 56);
  }

  **(v0 + 16) = *(v0 + 56);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2486AC430()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t FeaturizedConversationDataProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC11DeepThought34FeaturizedConversationDataProvider_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t FeaturizedConversationDataProvider.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC11DeepThought34FeaturizedConversationDataProvider_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2486AC5B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248696E0C;

  return sub_2486AC0A8(a1);
}

unint64_t sub_2486AC654()
{
  result = qword_27EEA1A30;
  if (!qword_27EEA1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1A30);
  }

  return result;
}

uint64_t type metadata accessor for FeaturizedConversationDataProvider()
{
  result = qword_27EEA1A38;
  if (!qword_27EEA1A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486AC70C()
{
  result = sub_2486B53BC();
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

uint64_t dispatch thunk of FeaturizedConversationDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248696E0C;

  return v8(a1);
}

uint64_t AggregationKeys.init(aggregationStartTimeSince2001:aggregationIntervalInDays:siriInputLocale:viewMode:audioInputRoute:taskType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v10 = *a8;
  *a9 = result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = v10;
  return result;
}

uint64_t AggregationKeys.description.getter()
{
  v1 = sub_2486B4DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = *(v0 + 2);
  v9 = *(v0 + 3);
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = *(v0 + 6);
  v17 = *(v0 + 7);
  v18 = v12;
  v19 = *(v0 + 64);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_2486B562C();
  MEMORY[0x24C1D5CE0](0xD000000000000039, 0x80000002486BC450);
  v20 = v6;
  v13 = sub_2486B57CC();
  MEMORY[0x24C1D5CE0](v13);

  MEMORY[0x24C1D5CE0](0xD000000000000038, 0x80000002486BC490);
  sub_2486B557C();
  MEMORY[0x24C1D5CE0](0x3A65746164090A2CLL, 0xE900000000000020);
  sub_2486B4D5C();
  sub_24868EAC0();
  v14 = sub_2486B57CC();
  MEMORY[0x24C1D5CE0](v14);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C1D5CE0](0xD000000000000014, 0x80000002486BC4D0);
  MEMORY[0x24C1D5CE0](v8, v9);
  MEMORY[0x24C1D5CE0](0x4D77656976090A2CLL, 0xED0000203A65646FLL);
  MEMORY[0x24C1D5CE0](v10, v11);
  MEMORY[0x24C1D5CE0](0xD000000000000013, 0x80000002486BC4F0);
  MEMORY[0x24C1D5CE0](v18, v17);
  MEMORY[0x24C1D5CE0](0xD000000000000010, 0x80000002486BC510);
  LOBYTE(v20) = v19;
  sub_2486B569C();
  return v21;
}

uint64_t sub_2486ACC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x534D535F444E4553 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2486B57DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2486ACCC8(uint64_t a1)
{
  v2 = sub_2486B0634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486ACD04(uint64_t a1)
{
  v2 = sub_2486B0634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2486ACD4C(uint64_t a1)
{
  v2 = sub_2486B0688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486ACD88(uint64_t a1)
{
  v2 = sub_2486B0688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProductArea.MessagingType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A48, &qword_2486B7270);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A50, &qword_2486B7278);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0634();
  sub_2486B587C();
  sub_2486B0688();
  sub_2486B576C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ProductArea.MessagingType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A68, &qword_2486B7280);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A70, &qword_2486B7288);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0634();
  sub_2486B586C();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_2486B575C() + 16) == 1)
    {
      sub_2486B0688();
      sub_2486B56FC();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_2486B567C();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A78, &qword_2486B7290) + 48);
      *v16 = &type metadata for ProductArea.MessagingType;
      sub_2486B570C();
      sub_2486B566C();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2486AD2D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A48, &qword_2486B7270);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A50, &qword_2486B7278);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0634();
  sub_2486B587C();
  sub_2486B0688();
  sub_2486B576C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2486AD4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x494D45525F544553 && a2 == 0xEC0000005245444ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2486B57DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2486AD560(uint64_t a1)
{
  v2 = sub_2486B06DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AD59C(uint64_t a1)
{
  v2 = sub_2486B06DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2486AD5D8(uint64_t a1)
{
  v2 = sub_2486B0730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AD614(uint64_t a1)
{
  v2 = sub_2486B0730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProductArea.RemindersType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A80, &qword_2486B7298);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A88, &qword_2486B72A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B06DC();
  sub_2486B587C();
  sub_2486B0730();
  sub_2486B576C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ProductArea.RemindersType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AA0, &qword_2486B72A8);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AA8, &qword_2486B72B0);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B06DC();
  sub_2486B586C();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_2486B575C() + 16) == 1)
    {
      sub_2486B0730();
      sub_2486B56FC();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_2486B567C();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A78, &qword_2486B7290) + 48);
      *v16 = &type metadata for ProductArea.RemindersType;
      sub_2486B570C();
      sub_2486B566C();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2486ADB34(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A80, &qword_2486B7298);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A88, &qword_2486B72A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B06DC();
  sub_2486B587C();
  sub_2486B0730();
  sub_2486B576C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2486ADD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x41435F5452415453 && a2 == 0xEA00000000004C4CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2486B57DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2486ADDC0(uint64_t a1)
{
  v2 = sub_2486B0784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486ADDFC(uint64_t a1)
{
  v2 = sub_2486B0784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2486ADE38(uint64_t a1)
{
  v2 = sub_2486B07D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486ADE74(uint64_t a1)
{
  v2 = sub_2486B07D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProductArea.PhoneCallType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AB0, &qword_2486B72B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AB8, &qword_2486B72C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0784();
  sub_2486B587C();
  sub_2486B07D8();
  sub_2486B576C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t _s11DeepThought11ProductAreaO13MessagingTypeO9hashValueSivg_0()
{
  sub_2486B580C();
  MEMORY[0x24C1D6030](0);
  return sub_2486B584C();
}

uint64_t ProductArea.PhoneCallType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AD0, &qword_2486B72C8);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AD8, &qword_2486B72D0);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0784();
  sub_2486B586C();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_2486B575C() + 16) == 1)
    {
      sub_2486B07D8();
      sub_2486B56FC();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_2486B567C();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A78, &qword_2486B7290) + 48);
      *v16 = &type metadata for ProductArea.PhoneCallType;
      sub_2486B570C();
      sub_2486B566C();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2486AE3D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AB0, &qword_2486B72B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AB8, &qword_2486B72C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0784();
  sub_2486B587C();
  sub_2486B07D8();
  sub_2486B576C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t static ProductArea.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2486AE5F8()
{
  v1 = 0x7265646E696D6552;
  if (*v0 != 1)
  {
    v1 = 0x6C6143656E6F6850;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6967617373654DLL;
  }
}

uint64_t sub_2486AE658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2486B3A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2486AE680(uint64_t a1)
{
  v2 = sub_2486B082C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AE6BC(uint64_t a1)
{
  v2 = sub_2486B082C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2486AE710(uint64_t a1)
{
  v2 = sub_2486B09D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AE74C(uint64_t a1)
{
  v2 = sub_2486B09D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2486AE788(uint64_t a1)
{
  v2 = sub_2486B0880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AE7C4(uint64_t a1)
{
  v2 = sub_2486B0880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2486AE800()
{
  sub_2486B580C();
  MEMORY[0x24C1D6030](0);
  return sub_2486B584C();
}

uint64_t sub_2486AE840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657079546B736174 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2486B57DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2486AE8C8(uint64_t a1)
{
  v2 = sub_2486B0928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AE904(uint64_t a1)
{
  v2 = sub_2486B0928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProductArea.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AE0, &qword_2486B72D8);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AE8, &qword_2486B72E0);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AF0, &qword_2486B72E8);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1AF8, &qword_2486B72F0);
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v28 - v17;
  v19 = *v1;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B082C();
  sub_2486B587C();
  if (v19)
  {
    if (v19 == 1)
    {
      v38 = 1;
      sub_2486B0928();
      v21 = v36;
      sub_2486B576C();
      sub_2486B097C();
      v22 = v32;
      sub_2486B579C();
      v23 = *(v31 + 8);
      v24 = v9;
    }

    else
    {
      v39 = 2;
      sub_2486B0880();
      v26 = v33;
      v21 = v36;
      sub_2486B576C();
      sub_2486B08D4();
      v22 = v35;
      sub_2486B579C();
      v23 = *(v34 + 8);
      v24 = v26;
    }

    v23(v24, v22);
  }

  else
  {
    v37 = 0;
    sub_2486B09D0();
    v21 = v36;
    sub_2486B576C();
    sub_2486B0A24();
    v25 = v29;
    sub_2486B579C();
    (*(v30 + 8))(v14, v25);
  }

  return (*(v15 + 8))(v18, v21);
}

uint64_t ProductArea.hashValue.getter()
{
  v1 = *v0;
  sub_2486B580C();
  MEMORY[0x24C1D6030](v1);
  MEMORY[0x24C1D6030](0);
  return sub_2486B584C();
}

uint64_t ProductArea.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v54 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1B38, &qword_2486B72F8);
  v53 = *(v56 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1B40, &qword_2486B7300);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1B48, &qword_2486B7308);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1B50, &qword_2486B7310);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2486B082C();
  v21 = v57;
  sub_2486B586C();
  if (!v21)
  {
    v22 = v10;
    v48 = 0;
    v49 = v15;
    v23 = v55;
    v24 = v56;
    v57 = v18;
    v25 = sub_2486B575C();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_2486B567C();
      swift_allocError();
      v30 = v14;
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1A78, &qword_2486B7290) + 48);
      *v32 = &type metadata for ProductArea;
      v34 = v57;
      sub_2486B570C();
      sub_2486B566C();
      (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v49 + 8))(v34, v30);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v58);
    }

    if (!*(v25 + 32))
    {
      v59 = 0;
      sub_2486B09D0();
      v39 = v13;
      v40 = v57;
      v41 = v48;
      sub_2486B56FC();
      if (v41)
      {
        (*(v49 + 8))(v40, v14);
        goto LABEL_9;
      }

      sub_2486B0B20();
      sub_2486B573C();
      (*(v50 + 8))(v39, v22);
      (*(v49 + 8))(v40, v14);
      goto LABEL_21;
    }

    if (v27 == 1)
    {
      v60 = 1;
      sub_2486B0928();
      v36 = v9;
      v37 = v57;
      v38 = v48;
      sub_2486B56FC();
      if (v38)
      {
        (*(v49 + 8))(v37, v14);
        goto LABEL_9;
      }

      sub_2486B0ACC();
      v45 = v51;
      sub_2486B573C();
      (*(v52 + 8))(v36, v45);
      (*(v49 + 8))(v37, v14);
LABEL_21:
      swift_unknownObjectRelease();
      *v54 = v27;
      return __swift_destroy_boxed_opaque_existential_1Tm(v58);
    }

    v61 = 2;
    sub_2486B0880();
    v42 = v57;
    v43 = v48;
    sub_2486B56FC();
    v44 = v54;
    if (v43)
    {
      (*(v49 + 8))(v42, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_2486B0A78();
      sub_2486B573C();
      v46 = v49;
      v48 = 0;
      (*(v53 + 8))(v23, v24);
      (*(v46 + 8))(v57, v14);
      swift_unknownObjectRelease();
      *v44 = v27;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

uint64_t sub_2486AF454()
{
  v1 = *v0;
  sub_2486B580C();
  MEMORY[0x24C1D6030](v1);
  MEMORY[0x24C1D6030](0);
  return sub_2486B584C();
}

uint64_t sub_2486AF4DC()
{
  v1 = *v0;
  sub_2486B580C();
  MEMORY[0x24C1D6030](v1);
  MEMORY[0x24C1D6030](0);
  return sub_2486B584C();
}

uint64_t sub_2486AF55C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t AggregationInterval.init(aggregationIntervalInDays:aggregationIntervalStartTimestampInSecondsSince2001:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t sub_2486AF5F8()
{
  v1 = *v0;
  sub_2486B580C();
  MEMORY[0x24C1D6030](v1);
  return sub_2486B584C();
}

uint64_t sub_2486AF640()
{
  v1 = *v0;
  sub_2486B580C();
  MEMORY[0x24C1D6030](v1);
  return sub_2486B584C();
}

unint64_t sub_2486AF684()
{
  if (*v0)
  {
    result = 0xD000000000000033;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_2486AF6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000002486BC090 == a2 || (sub_2486B57DC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000033 && 0x80000002486BC610 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2486B57DC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2486AF7B0(uint64_t a1)
{
  v2 = sub_2486B0B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AF7EC(uint64_t a1)
{
  v2 = sub_2486B0B74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregationInterval.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1B70, &qword_2486B7318);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0B74();
  sub_2486B587C();
  v13[15] = 0;
  sub_2486B57AC();
  if (!v2)
  {
    v13[14] = 1;
    sub_2486B578C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AggregationInterval.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2486B582C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x24C1D6050](*&v3);
}

uint64_t AggregationInterval.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2486B580C();
  sub_2486B582C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x24C1D6050](*&v3);
  return sub_2486B584C();
}

uint64_t AggregationInterval.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1B80, &qword_2486B7320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B0B74();
  sub_2486B586C();
  if (!v2)
  {
    v15[15] = 0;
    v11 = sub_2486B574C();
    v15[14] = 1;
    sub_2486B572C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2486AFC28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2486B582C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x24C1D6050](*&v3);
}

uint64_t sub_2486AFC74()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2486B580C();
  sub_2486B582C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x24C1D6050](*&v3);
  return sub_2486B584C();
}

uint64_t sub_2486AFD3C()
{
  v1 = 0x75706E4969726973;
  v2 = 0x746E496F69647561;
  if (*v0 != 2)
  {
    v2 = 0x41746375646F7270;
  }

  if (*v0)
  {
    v1 = 0x65646F4D77656976;
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

uint64_t sub_2486AFDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2486B3BBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2486AFE00(uint64_t a1)
{
  v2 = sub_2486B1E8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486AFE3C(uint64_t a1)
{
  v2 = sub_2486B1E8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicDimensions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1B88, &qword_2486B7328);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  HIDWORD(v16) = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B1E8C();
  sub_2486B587C();
  v26 = 0;
  v13 = v21;
  sub_2486B577C();
  if (!v13)
  {
    v14 = BYTE4(v16);
    v25 = 1;
    sub_2486B577C();
    v24 = 2;
    sub_2486B577C();
    v23 = v14;
    v22 = 3;
    sub_2486B1EE0();
    sub_2486B579C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t DynamicDimensions.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_2486B549C();
  sub_2486B549C();
  sub_2486B549C();
  MEMORY[0x24C1D6030](v7);
  return MEMORY[0x24C1D6030](0);
}

uint64_t DynamicDimensions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_2486B580C();
  sub_2486B549C();
  sub_2486B549C();
  sub_2486B549C();
  MEMORY[0x24C1D6030](v7);
  MEMORY[0x24C1D6030](0);
  return sub_2486B584C();
}

uint64_t DynamicDimensions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1BA0, &qword_2486B7330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B1E8C();
  sub_2486B586C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v32 = 0;
  v11 = sub_2486B571C();
  v27 = v12;
  v31 = 1;
  v13 = sub_2486B571C();
  v26 = v14;
  v24 = v13;
  v30 = 2;
  v23 = sub_2486B571C();
  v25 = v15;
  v28 = 3;
  sub_2486B1F34();
  sub_2486B573C();
  (*(v6 + 8))(v9, v5);
  v17 = v29;
  v19 = v26;
  v18 = v27;
  *a2 = v11;
  *(a2 + 8) = v18;
  v20 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v19;
  v21 = v25;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2486B04B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_2486B549C();
  sub_2486B549C();
  sub_2486B549C();
  MEMORY[0x24C1D6030](v7);
  return MEMORY[0x24C1D6030](0);
}

uint64_t sub_2486B0530()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_2486B580C();
  sub_2486B549C();
  sub_2486B549C();
  sub_2486B549C();
  MEMORY[0x24C1D6030](v7);
  MEMORY[0x24C1D6030](0);
  return sub_2486B584C();
}

double AggregationKeys.init(aggregationInterval:dimension:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 48);
  *a3 = *a1;
  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  return result;
}

unint64_t sub_2486B0634()
{
  result = qword_27EEA1A58;
  if (!qword_27EEA1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1A58);
  }

  return result;
}

unint64_t sub_2486B0688()
{
  result = qword_27EEA1A60;
  if (!qword_27EEA1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1A60);
  }

  return result;
}

unint64_t sub_2486B06DC()
{
  result = qword_27EEA1A90;
  if (!qword_27EEA1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1A90);
  }

  return result;
}

unint64_t sub_2486B0730()
{
  result = qword_27EEA1A98;
  if (!qword_27EEA1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1A98);
  }

  return result;
}

unint64_t sub_2486B0784()
{
  result = qword_27EEA1AC0;
  if (!qword_27EEA1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1AC0);
  }

  return result;
}

unint64_t sub_2486B07D8()
{
  result = qword_27EEA1AC8;
  if (!qword_27EEA1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1AC8);
  }

  return result;
}

unint64_t sub_2486B082C()
{
  result = qword_27EEA1B00;
  if (!qword_27EEA1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B00);
  }

  return result;
}

unint64_t sub_2486B0880()
{
  result = qword_27EEA1B08;
  if (!qword_27EEA1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B08);
  }

  return result;
}

unint64_t sub_2486B08D4()
{
  result = qword_27EEA1B10;
  if (!qword_27EEA1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B10);
  }

  return result;
}

unint64_t sub_2486B0928()
{
  result = qword_27EEA1B18;
  if (!qword_27EEA1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B18);
  }

  return result;
}

unint64_t sub_2486B097C()
{
  result = qword_27EEA1B20;
  if (!qword_27EEA1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B20);
  }

  return result;
}

unint64_t sub_2486B09D0()
{
  result = qword_27EEA1B28;
  if (!qword_27EEA1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B28);
  }

  return result;
}

unint64_t sub_2486B0A24()
{
  result = qword_27EEA1B30;
  if (!qword_27EEA1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B30);
  }

  return result;
}

unint64_t sub_2486B0A78()
{
  result = qword_27EEA1B58;
  if (!qword_27EEA1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B58);
  }

  return result;
}

unint64_t sub_2486B0ACC()
{
  result = qword_27EEA1B60;
  if (!qword_27EEA1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B60);
  }

  return result;
}

unint64_t sub_2486B0B20()
{
  result = qword_27EEA1B68;
  if (!qword_27EEA1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B68);
  }

  return result;
}

unint64_t sub_2486B0B74()
{
  result = qword_27EEA1B78;
  if (!qword_27EEA1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B78);
  }

  return result;
}

uint64_t AggregationKeys.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 64);
  sub_2486B582C();
  v10 = 0.0;
  if (v2 != 0.0)
  {
    v10 = v2;
  }

  MEMORY[0x24C1D6050](*&v10);
  sub_2486B549C();
  sub_2486B549C();
  sub_2486B549C();
  MEMORY[0x24C1D6030](v9);
  return MEMORY[0x24C1D6030](0);
}

uint64_t AggregationKeys.hashValue.getter()
{
  sub_2486B580C();
  AggregationKeys.hash(into:)();
  return sub_2486B584C();
}

uint64_t sub_2486B0CC8()
{
  sub_2486B580C();
  AggregationKeys.hash(into:)();
  return sub_2486B584C();
}

uint64_t sub_2486B0D0C()
{
  sub_2486B580C();
  AggregationKeys.hash(into:)();
  return sub_2486B584C();
}

unint64_t sub_2486B0D4C()
{
  v1 = 0xD000000000000016;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_2486B0DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2486B3D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2486B0DE4(uint64_t a1)
{
  v2 = sub_2486B1F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486B0E20(uint64_t a1)
{
  v2 = sub_2486B1F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaskCounts.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1BB0, &qword_2486B7338);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v13[6] = v1[1];
  v10 = v1[2];
  v13[2] = v1[3];
  v13[3] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B1F88();
  sub_2486B587C();
  v17 = 0;
  sub_2486B57AC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_2486B57AC();
  v15 = 2;
  sub_2486B57AC();
  v14 = 3;
  sub_2486B57AC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t TaskCounts.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1BC0, &qword_2486B7340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B1F88();
  sub_2486B586C();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_2486B574C();
    v20 = 1;
    v12 = sub_2486B574C();
    v19 = 2;
    v17 = sub_2486B574C();
    v18 = 3;
    v16 = sub_2486B574C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    v14 = v16;
    a2[2] = v17;
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CountsReported.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v12 = *(v0 + 7);
  v13 = *(v0 + 6);
  v7 = *(v0 + 64);
  v14 = v0[17];
  v15 = v0[20];
  sub_2486B562C();
  MEMORY[0x24C1D5CE0](0xD000000000000022, 0x80000002486BC560);
  sub_2486B569C();
  MEMORY[0x24C1D5CE0](0xD00000000000001DLL, 0x80000002486BC590);
  v8 = sub_2486B57CC();
  MEMORY[0x24C1D5CE0](v8);

  MEMORY[0x24C1D5CE0](0x5474726174730A2CLL, 0xED0000203A656D69);
  sub_2486B557C();
  MEMORY[0x24C1D5CE0](0xD000000000000013, 0x80000002486BC5B0);
  MEMORY[0x24C1D5CE0](v3, v4);
  MEMORY[0x24C1D5CE0](0x6F4D776569760A2CLL, 0xEC000000203A6564);
  MEMORY[0x24C1D5CE0](v5, v6);
  MEMORY[0x24C1D5CE0](0xD000000000000012, 0x80000002486BC5D0);
  MEMORY[0x24C1D5CE0](v13, v12);
  MEMORY[0x24C1D5CE0](0xD000000000000011, 0x80000002486BC5F0);
  v9 = sub_2486B57CC();
  MEMORY[0x24C1D5CE0](v9);

  MEMORY[0x24C1D5CE0](0x6B73615469750A2CLL, 0xEF203A746E756F43);
  v10 = sub_2486B57CC();
  MEMORY[0x24C1D5CE0](v10);

  return 0;
}

unint64_t sub_2486B14F8()
{
  v1 = 0x6F69736E656D6964;
  if (*v0 != 1)
  {
    v1 = 0x6E756F436B736174;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2486B155C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2486B3EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2486B1584(uint64_t a1)
{
  v2 = sub_2486B1FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2486B15C0(uint64_t a1)
{
  v2 = sub_2486B1FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountsReported.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1BC8, &qword_2486B7348);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 3);
  v22 = *(v1 + 2);
  v23 = v11;
  v12 = *(v1 + 4);
  v13 = *(v1 + 5);
  v14 = *(v1 + 7);
  v20 = *(v1 + 6);
  v21 = v12;
  v24 = v13;
  v25 = v14;
  HIDWORD(v19) = *(v1 + 64);
  v15 = *(v1 + 17);
  v16 = *(v1 + 19);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B1FDC();
  sub_2486B587C();
  LODWORD(v26) = v9;
  v27 = v10;
  v33 = 0;
  sub_2486A93C8();
  sub_2486B579C();
  if (!v2)
  {
    v26 = v22;
    v27 = v23;
    v28 = v21;
    v29 = v24;
    v30 = v20;
    v31 = v25;
    v32 = BYTE4(v19);
    v33 = 1;
    sub_2486B2030();

    sub_2486B579C();

    v26 = v15;
    v27 = v16;
    v33 = 2;
    sub_2486B2084();
    sub_2486B579C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CountsReported.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1BE8, &qword_2486B7350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2486B1FDC();
  sub_2486B586C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30) = 0;
  sub_2486B20D8();
  sub_2486B573C();
  v11 = v36;
  v12 = v37;
  LOBYTE(v30) = 1;
  sub_2486B212C();
  sub_2486B573C();
  v25 = v36;
  v29 = v37;
  v28 = v38;
  v13 = v40;
  v27 = v39;
  v26 = v41;
  v48 = 2;
  sub_2486B2180();
  sub_2486B573C();
  (*(v6 + 8))(v9, v5);
  v23 = HIDWORD(v49);
  v24 = v49;
  v14 = v51;
  v22 = v50;
  LODWORD(v30) = v11;
  *(&v30 + 1) = v12;
  v15 = v25;
  *&v31 = v25;
  v16 = v29;
  *(&v31 + 1) = v29;
  v32 = v28;
  v17 = *(&v28 + 1);
  *&v33 = v27;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = v26;
  *(&v34 + 4) = v49;
  HIDWORD(v34) = v50;
  v35 = v51;
  *(a2 + 80) = v51;
  v18 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v18;
  v19 = v31;
  *a2 = v30;
  *(a2 + 16) = v19;
  *(a2 + 64) = v34;
  sub_2486A4F7C(&v30, &v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  LODWORD(v36) = v11;
  v37 = v12;
  *&v38 = v15;
  *(&v38 + 1) = v16;
  v39 = v28;
  v40 = v17;
  v41 = v27;
  v42 = v13;
  v43 = v26;
  v44 = v24;
  v45 = v23;
  v46 = v22;
  v47 = v14;
  return sub_2486A4FD8(&v36);
}

uint64_t _s11DeepThought15AggregationKeysV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    v13 = *(a2 + 64);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v14 = *(a1 + 24), (sub_2486B57DC() & 1) != 0))
    {
      if (v4 == v9 && v5 == v10 || (sub_2486B57DC()) && (v6 == v11 && v7 == v12 || (sub_2486B57DC()))
      {
        if (v8)
        {
          if (v8 == 1)
          {
            if (v13 == 1)
            {
              return 1;
            }
          }

          else if (v13 == 2)
          {
            return 1;
          }
        }

        else if (!v13)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t _s11DeepThought17DynamicDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_2486B57DC()) && (v2 == v7 && v4 == v8 || (sub_2486B57DC()) && (v3 == v9 && v5 == v10 || (sub_2486B57DC()))
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v11 == 1)
        {
          return 1;
        }
      }

      else if (v11 == 2)
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_2486B1E8C()
{
  result = qword_27EEA1B90;
  if (!qword_27EEA1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B90);
  }

  return result;
}

unint64_t sub_2486B1EE0()
{
  result = qword_27EEA1B98;
  if (!qword_27EEA1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1B98);
  }

  return result;
}

unint64_t sub_2486B1F34()
{
  result = qword_27EEA1BA8;
  if (!qword_27EEA1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1BA8);
  }

  return result;
}

unint64_t sub_2486B1F88()
{
  result = qword_27EEA1BB8;
  if (!qword_27EEA1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1BB8);
  }

  return result;
}

unint64_t sub_2486B1FDC()
{
  result = qword_27EEA1BD0;
  if (!qword_27EEA1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1BD0);
  }

  return result;
}

unint64_t sub_2486B2030()
{
  result = qword_27EEA1BD8;
  if (!qword_27EEA1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1BD8);
  }

  return result;
}

unint64_t sub_2486B2084()
{
  result = qword_27EEA1BE0;
  if (!qword_27EEA1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1BE0);
  }

  return result;
}

unint64_t sub_2486B20D8()
{
  result = qword_27EEA1BF0;
  if (!qword_27EEA1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1BF0);
  }

  return result;
}

unint64_t sub_2486B212C()
{
  result = qword_27EEA1BF8;
  if (!qword_27EEA1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1BF8);
  }

  return result;
}

unint64_t sub_2486B2180()
{
  result = qword_27EEA1C00;
  if (!qword_27EEA1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C00);
  }

  return result;
}

unint64_t sub_2486B21D8()
{
  result = qword_27EEA1C08;
  if (!qword_27EEA1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C08);
  }

  return result;
}

unint64_t sub_2486B2230()
{
  result = qword_27EEA1C10;
  if (!qword_27EEA1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C10);
  }

  return result;
}

unint64_t sub_2486B2288()
{
  result = qword_27EEA1C18;
  if (!qword_27EEA1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C18);
  }

  return result;
}

unint64_t sub_2486B22E0()
{
  result = qword_27EEA1C20;
  if (!qword_27EEA1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C20);
  }

  return result;
}

unint64_t sub_2486B2338()
{
  result = qword_27EEA1C28;
  if (!qword_27EEA1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C28);
  }

  return result;
}

unint64_t sub_2486B2390()
{
  result = qword_27EEA1C30;
  if (!qword_27EEA1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C30);
  }

  return result;
}

unint64_t sub_2486B23E8()
{
  result = qword_27EEA1C38;
  if (!qword_27EEA1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductArea(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductArea(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AggregationInterval(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2486B2620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2486B2668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2486B26EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2486B2734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy84_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2486B27D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
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

uint64_t sub_2486B2820(uint64_t result, int a2, int a3)
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
      *(result + 84) = 1;
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

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2486B28A8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2486B2938(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AggregationInterval.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AggregationInterval.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2486B2B54(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2486B2BE4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2486B2D38()
{
  result = qword_27EEA1C40;
  if (!qword_27EEA1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C40);
  }

  return result;
}

unint64_t sub_2486B2D90()
{
  result = qword_27EEA1C48;
  if (!qword_27EEA1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C48);
  }

  return result;
}

unint64_t sub_2486B2DE8()
{
  result = qword_27EEA1C50;
  if (!qword_27EEA1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C50);
  }

  return result;
}

unint64_t sub_2486B2E40()
{
  result = qword_27EEA1C58;
  if (!qword_27EEA1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C58);
  }

  return result;
}

unint64_t sub_2486B2E98()
{
  result = qword_27EEA1C60;
  if (!qword_27EEA1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C60);
  }

  return result;
}

unint64_t sub_2486B2EF0()
{
  result = qword_27EEA1C68;
  if (!qword_27EEA1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C68);
  }

  return result;
}

unint64_t sub_2486B2F48()
{
  result = qword_27EEA1C70;
  if (!qword_27EEA1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C70);
  }

  return result;
}

unint64_t sub_2486B2FA0()
{
  result = qword_27EEA1C78;
  if (!qword_27EEA1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C78);
  }

  return result;
}

unint64_t sub_2486B2FF8()
{
  result = qword_27EEA1C80;
  if (!qword_27EEA1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C80);
  }

  return result;
}

unint64_t sub_2486B3050()
{
  result = qword_27EEA1C88;
  if (!qword_27EEA1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C88);
  }

  return result;
}

unint64_t sub_2486B30A8()
{
  result = qword_27EEA1C90;
  if (!qword_27EEA1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C90);
  }

  return result;
}

unint64_t sub_2486B3100()
{
  result = qword_27EEA1C98;
  if (!qword_27EEA1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1C98);
  }

  return result;
}

unint64_t sub_2486B3158()
{
  result = qword_27EEA1CA0;
  if (!qword_27EEA1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CA0);
  }

  return result;
}

unint64_t sub_2486B31B0()
{
  result = qword_27EEA1CA8;
  if (!qword_27EEA1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CA8);
  }

  return result;
}

unint64_t sub_2486B3208()
{
  result = qword_27EEA1CB0;
  if (!qword_27EEA1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CB0);
  }

  return result;
}

unint64_t sub_2486B3260()
{
  result = qword_27EEA1CB8;
  if (!qword_27EEA1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CB8);
  }

  return result;
}

unint64_t sub_2486B32B8()
{
  result = qword_27EEA1CC0;
  if (!qword_27EEA1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CC0);
  }

  return result;
}

unint64_t sub_2486B3310()
{
  result = qword_27EEA1CC8;
  if (!qword_27EEA1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CC8);
  }

  return result;
}

unint64_t sub_2486B3368()
{
  result = qword_27EEA1CD0;
  if (!qword_27EEA1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CD0);
  }

  return result;
}

unint64_t sub_2486B33C0()
{
  result = qword_27EEA1CD8;
  if (!qword_27EEA1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CD8);
  }

  return result;
}

unint64_t sub_2486B3418()
{
  result = qword_27EEA1CE0;
  if (!qword_27EEA1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CE0);
  }

  return result;
}

unint64_t sub_2486B3470()
{
  result = qword_27EEA1CE8;
  if (!qword_27EEA1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CE8);
  }

  return result;
}

unint64_t sub_2486B34C8()
{
  result = qword_27EEA1CF0;
  if (!qword_27EEA1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CF0);
  }

  return result;
}

unint64_t sub_2486B3520()
{
  result = qword_27EEA1CF8;
  if (!qword_27EEA1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1CF8);
  }

  return result;
}

unint64_t sub_2486B3578()
{
  result = qword_27EEA1D00;
  if (!qword_27EEA1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D00);
  }

  return result;
}

unint64_t sub_2486B35D0()
{
  result = qword_27EEA1D08;
  if (!qword_27EEA1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D08);
  }

  return result;
}

unint64_t sub_2486B3628()
{
  result = qword_27EEA1D10;
  if (!qword_27EEA1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D10);
  }

  return result;
}

unint64_t sub_2486B3680()
{
  result = qword_27EEA1D18;
  if (!qword_27EEA1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D18);
  }

  return result;
}

unint64_t sub_2486B36D8()
{
  result = qword_27EEA1D20;
  if (!qword_27EEA1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D20);
  }

  return result;
}

unint64_t sub_2486B3730()
{
  result = qword_27EEA1D28;
  if (!qword_27EEA1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D28);
  }

  return result;
}

unint64_t sub_2486B3788()
{
  result = qword_27EEA1D30;
  if (!qword_27EEA1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D30);
  }

  return result;
}

unint64_t sub_2486B37E0()
{
  result = qword_27EEA1D38;
  if (!qword_27EEA1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D38);
  }

  return result;
}

unint64_t sub_2486B3838()
{
  result = qword_27EEA1D40;
  if (!qword_27EEA1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D40);
  }

  return result;
}

unint64_t sub_2486B3890()
{
  result = qword_27EEA1D48;
  if (!qword_27EEA1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D48);
  }

  return result;
}

unint64_t sub_2486B38E8()
{
  result = qword_27EEA1D50;
  if (!qword_27EEA1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D50);
  }

  return result;
}

unint64_t sub_2486B3940()
{
  result = qword_27EEA1D58;
  if (!qword_27EEA1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D58);
  }

  return result;
}

unint64_t sub_2486B3998()
{
  result = qword_27EEA1D60;
  if (!qword_27EEA1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D60);
  }

  return result;
}

unint64_t sub_2486B39F0()
{
  result = qword_27EEA1D68;
  if (!qword_27EEA1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D68);
  }

  return result;
}

unint64_t sub_2486B3A48()
{
  result = qword_27EEA1D70;
  if (!qword_27EEA1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1D70);
  }

  return result;
}

uint64_t sub_2486B3A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6967617373654DLL && a2 == 0xE900000000000067;
  if (v4 || (sub_2486B57DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E696D6552 && a2 == 0xE900000000000073 || (sub_2486B57DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6143656E6F6850 && a2 == 0xE90000000000006CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2486B57DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2486B3BBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75706E4969726973 && a2 == 0xEF656C61636F4C74;
  if (v4 || (sub_2486B57DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D77656976 && a2 == 0xE800000000000000 || (sub_2486B57DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E496F69647561 && a2 == 0xEE00656361667265 || (sub_2486B57DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x41746375646F7270 && a2 == 0xEB00000000616572)
  {

    return 3;
  }

  else
  {
    v6 = sub_2486B57DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2486B3D34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000002486BC650 == a2 || (sub_2486B57DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002486BC670 == a2 || (sub_2486B57DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002486BC690 == a2 || (sub_2486B57DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002486BC6B0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_2486B57DC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2486B3EA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002486BC6D0 == a2 || (sub_2486B57DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL || (sub_2486B57DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F436B736174 && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v5 = sub_2486B57DC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static LocaleChangingPointUtils.findLocaleChangingPoint(date:localeChangingPoints:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 && (v5 = type metadata accessor for DateAndLocalePair(), v17 = *(v5 - 8), v6 = (*(v17 + 80) + 32) & ~*(v17 + 80), v7 = a1 + v6, (sub_2486B4D7C() & 1) == 0))
  {
    if (v3 == 1)
    {
      sub_2486A3BB8(a1 + v6, a2);
      v9 = *(v17 + 56);
      v11 = a2;
      v12 = 0;
      v10 = v5;
    }

    else
    {
      v14 = *(v17 + 72);
      sub_2486B4DAC();
      sub_2486B4BC8(&qword_27EEA1508, MEMORY[0x277CC9578]);
      v15 = a1 + v14 + v6;
      v16 = 1;
      while (1)
      {
        result = sub_2486B541C();
        if (result)
        {
          break;
        }

        ++v16;
        v15 += v14;
        if (v3 == v16)
        {
          v16 = v3;
          break;
        }
      }

      if (v16 - 1 >= v3)
      {
        __break(1u);
        return result;
      }

      sub_2486A3BB8(v7 + v14 * (v16 - 1), a2);
      v10 = v5;
      v9 = *(v17 + 56);
      v11 = a2;
      v12 = 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DateAndLocalePair();
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a2;
    v12 = 1;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t static DateAndLocalePair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2486B4D8C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DateAndLocalePair() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_2486B57DC();
}

uint64_t DateAndLocalePair.hash(into:)()
{
  sub_2486B4DAC();
  sub_2486B4BC8(&qword_27EEA1D78, MEMORY[0x277CC9578]);
  sub_2486B540C();
  v1 = (v0 + *(type metadata accessor for DateAndLocalePair() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_2486B549C();
}

uint64_t DateAndLocalePair.hashValue.getter()
{
  sub_2486B580C();
  sub_2486B4DAC();
  sub_2486B4BC8(&qword_27EEA1D78, MEMORY[0x277CC9578]);
  sub_2486B540C();
  v1 = (v0 + *(type metadata accessor for DateAndLocalePair() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_2486B549C();
  return sub_2486B584C();
}

uint64_t sub_2486B43E8(uint64_t a1)
{
  sub_2486B580C();
  sub_2486B4DAC();
  sub_2486B4BC8(&qword_27EEA1D78, MEMORY[0x277CC9578]);
  sub_2486B540C();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_2486B549C();
  return sub_2486B584C();
}

uint64_t sub_2486B4490(uint64_t a1, uint64_t a2)
{
  sub_2486B4DAC();
  sub_2486B4BC8(&qword_27EEA1D78, MEMORY[0x277CC9578]);
  sub_2486B540C();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_2486B549C();
}

uint64_t sub_2486B452C(uint64_t a1, uint64_t a2)
{
  sub_2486B580C();
  sub_2486B4DAC();
  sub_2486B4BC8(&qword_27EEA1D78, MEMORY[0x277CC9578]);
  sub_2486B540C();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2486B549C();
  return sub_2486B584C();
}

uint64_t sub_2486B45D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2486B4D8C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_2486B57DC();
}

void *_s11DeepThought24LocaleChangingPointUtilsO03getcD6Points23featurizedConversationsSayAA07DateAndC4PairVGSay0aB15BiomeFoundation22FeaturizedConversationCG_tFZ_0(void (**a1)(char *, uint64_t))
{
  v2 = type metadata accessor for DateAndLocalePair();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v36 - v6;
  v51 = sub_2486B4DAC();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v12 = 0;
      v13 = 0;
      v40 = a1 & 0xC000000000000001;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      v38 = a1;
      v36 = a1 + 4;
      v43 = (v7 + 16);
      a1 = (v7 + 8);
      v48 = MEMORY[0x277D84F90];
      v14 = 0xE000000000000000;
      v39 = v11;
      while (1)
      {
        if (v40)
        {
          v15 = MEMORY[0x24C1D5E60](v13, v38);
          v16 = __OFADD__(v13, 1);
          v17 = v13 + 1;
          if (v16)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v13 >= *(v37 + 16))
          {
            goto LABEL_37;
          }

          v18 = v36[v13];

          v16 = __OFADD__(v13, 1);
          v17 = v13 + 1;
          if (v16)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }
        }

        v41 = v15;
        v19 = sub_2486B51EC();
        v20 = v19;
        v42 = v17;
        if (!(v19 >> 62))
        {
          v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
            break;
          }

          goto LABEL_4;
        }

        v33 = v19;
        v34 = sub_2486B56BC();
        v20 = v33;
        v21 = v34;
        if (v34)
        {
          break;
        }

LABEL_4:
        v7 = v12;
LABEL_5:

        v12 = v7;
        v13 = v42;
        if (v42 == v39)
        {

          return v48;
        }
      }

      v7 = v20;
      sub_2486B500C();
      if (v21 >= 1)
      {
        break;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v11 = sub_2486B56BC();
      if (!v11)
      {
        return MEMORY[0x277D84F90];
      }
    }

    v22 = 0;
    v23 = v7;
    v49 = v7 & 0xC000000000000001;
    v50 = v7;
    while (1)
    {
      if (v49)
      {
        MEMORY[0x24C1D5E60](v22, v23);
      }

      else
      {
        v24 = *(v23 + 8 * v22 + 32);
      }

      sub_2486B524C();
      sub_2486B4D5C();
      sub_2486B4FFC();
      sub_2486B523C();

      v25 = v53;
      if (v53)
      {
        v7 = v52;
        if ((v52 != v12 || v53 != v14) && (sub_2486B57DC() & 1) == 0)
        {

          v26 = v46;
          (*v43)(v46, v10, v51);
          v27 = (v26 + *(v45 + 20));
          *v27 = v7;
          v27[1] = v25;
          sub_2486A3BB8(v26, v47);

          v28 = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_2486A0BA8(0, v28[2] + 1, 1, v28);
          }

          v30 = v28[2];
          v29 = v28[3];
          v48 = v28;
          if (v30 >= v29 >> 1)
          {
            v48 = sub_2486A0BA8(v29 > 1, v30 + 1, 1, v48);
          }

          sub_2486A3C80(v46);
          (*a1)(v10, v51);
          v31 = v47;
          v32 = v48;
          v48[2] = v30 + 1;
          sub_2486A3C1C(v31, v32 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v30);
          v14 = v25;
          goto LABEL_18;
        }

        (*a1)(v10, v51);
      }

      else
      {
        (*a1)(v10, v51);
      }

      v7 = v12;
LABEL_18:
      ++v22;
      v12 = v7;
      v23 = v50;
      if (v21 == v22)
      {
        goto LABEL_5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for DateAndLocalePair()
{
  result = qword_27EEA1D88;
  if (!qword_27EEA1D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486B4BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2486B4C38()
{
  result = sub_2486B4DAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}