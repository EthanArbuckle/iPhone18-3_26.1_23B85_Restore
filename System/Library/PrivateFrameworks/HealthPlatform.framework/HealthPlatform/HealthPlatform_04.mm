uint64_t sub_22844211C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

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
  v23 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v24 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
    v14 = *(a2 + 40);
    sub_22855E22C();
    if (v13)
    {
      MEMORY[0x22AABA2B0](1);
      v15 = v13;
      sub_22855D9BC();
    }

    else
    {
      MEMORY[0x22AABA2B0](0);
    }

    v16 = sub_22855E27C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + 8 * v18);
      if (v20)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_24;
      }

LABEL_19:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (!v13)
    {
      goto LABEL_19;
    }

    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    v21 = v20;
    v22 = sub_22855D9AC();

    if ((v22 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    result = v23;
    v7 = v24;
  }

  while (v24);
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
      v24 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844230C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_22855E22C();

    sub_22855D20C();
    v17 = sub_22855E27C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_22855E15C() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

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
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284424D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_228449DF8(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_2283EF310(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v30 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v31 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v31 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(a2 + 40);
          v22 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v23 = sub_22855D99C();
          v24 = -1 << *(a2 + 32);
          v25 = v23 & ~v24;
          if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            break;
          }

          v26 = ~v24;
          while (1)
          {
            v27 = *(*(a2 + 48) + 8 * v25);
            v28 = sub_22855D9AC();

            if (v28)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v30;
          v13 = v31;
          v17 = a1;
          if (!v31)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_228449DF8(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

uint64_t sub_228442728(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855C33C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_22840A300(&qword_280DEE360, 255, MEMORY[0x277D10C20]);
      v28 = sub_22855D13C();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_22840A300(&qword_27D83F580, 255, MEMORY[0x277D10C20]);
        v33 = sub_22855D16C();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DatabaseChangesQueryInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A09C(v3, v1, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
  return sub_22855E27C();
}

uint64_t sub_228442BBC()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A09C(v3, v1, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
  return sub_22855E27C();
}

uint64_t sub_228442C50()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A09C(v3, v1, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
  return sub_22855E27C();
}

uint64_t DatabaseChangesQueryInputSignal.beginObservation(from:configurations:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = v2[10];
  v7 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = MEMORY[0x277D84FA0];
  v18 = MEMORY[0x277D84FA0];
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 32);
    do
    {
      v12 = *v11++;

      sub_228442ED4(v13, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0, sub_2284834EC);
      --v10;
    }

    while (v10);
    v9 = v18;
  }

  if (v4)
  {
    v14 = v2[12];
    MEMORY[0x28223BE20](v8);
    v15 = v5;

    os_unfair_lock_lock(v14 + 8);
    sub_22844AFE0(&v14[4]);
    os_unfair_lock_unlock(v14 + 8);
    sub_22844AFFC(v5, v4);
  }

  v16 = sub_2284439F4(v9, sub_2284630BC, sub_228462688);

  sub_22843E2B0(v16);
}

Swift::Void __swiftcall DatabaseChangesQueryInputSignal.stopObservation()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  (*(v2 + 16))(v1, v2);
}

void sub_228442ED4(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22855DAFC();
    sub_2283EF310(0, a2, a3);
    sub_22844B928(a4, a2, a3);
    sub_22855D56C();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_228407958();
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22855DB8C())
      {
        sub_2283EF310(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2284430C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_228483930(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_2284431A4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
      v11 = v10;
      sub_228484978(&v12, v10);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22844329C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_22848513C(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_22844337C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = a2;

  *a1 = a2;
  *(a1 + 8) = a3;
}

uint64_t DatabaseChangesQueryInputSignal.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = *(v0 + 96);

  return v0;
}

uint64_t DatabaseChangesQueryInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_228443474()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_2284434C4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22844351C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22840A300(&qword_280DEAA08, a2, type metadata accessor for DatabaseChangesQueryInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_228443588(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a4)
  {
    sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
    sub_2283EF310(0, &qword_280DE93E8, 0x277CCD8E0);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    v6 = sub_22855D0EC();
  }

  v11 = a2;
  v12 = a3;
  v13 = a5;
  v10(v11, a3, v6, a5);
}

uint64_t sub_2284436A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22855BEBC();
    if (v10)
    {
      v11 = sub_22855BEDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22855BECC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22855BEBC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22855BEDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22855BECC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_2284438D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_22844C284(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_2284439F4(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22855DB4C();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_228407958();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

unint64_t sub_228443AB4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22855E22C();
  sub_22855D20C();

  v4 = sub_22855E27C();

  return sub_228443EE0(a1, v4);
}

unint64_t sub_228443B74(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22855D99C();
  return sub_2283FB3DC(a1, v5, &qword_280DE94F8, 0x277CCD8D8);
}

unint64_t sub_228443BC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22855D99C();
  return sub_2283FB3DC(a1, v5, &qword_280DE94C8, 0x277CCD830);
}

unint64_t sub_228443C14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22855DBCC();

  return sub_228444064(a1, v5);
}

unint64_t sub_228443C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_22855E22C();
  sub_22855D20C();
  sub_22855D20C();
  v10 = sub_22855E27C();

  return sub_22844412C(a1, a2, a3, a4, v10);
}

unint64_t sub_228443CF8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1);
  v4 = sub_22855E27C();
  return sub_22844422C(a1, v4);
}

unint64_t sub_228443D60(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22855E21C();

  return sub_22844422C(a1, v4);
}

unint64_t sub_228443DA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22855D99C();
  return sub_2283FB3DC(a1, v5, &qword_280DE94D8, 0x277CCD4D8);
}

unint64_t sub_228443DF4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22855C5CC();
  sub_22840A300(&qword_280DE9F38, 255, MEMORY[0x277D11BA8]);
  v5 = sub_22855D13C();

  return sub_228444298(a1, v5);
}

unint64_t sub_228443E90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22855D99C();
  return sub_2283FB3DC(a1, v5, &qword_280DEE7B8, 0x277CCD720);
}

unint64_t sub_228443EE0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x73646E657274;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE700000000000000;
          v8 = 0x73657461647075;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v8 != 0x737472656C61)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x737472656C61;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x73646E657274;
      }

      else
      {
        v10 = 0x73657461647075;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_22855E15C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_228444064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22844BB04(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAB9C50](v9, a1);
      sub_22842D0B4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22844412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_22855E15C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_22855E15C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22844422C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_228444298(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22855C5CC();
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
      sub_22840A300(&qword_280DE9F30, 255, MEMORY[0x277D11BA8]);
      v16 = sub_22855D16C();
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

uint64_t sub_22844445C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844BB60();
  v36 = a2;
  result = sub_22855DF4C();
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
        sub_228400400(v25, v37);
      }

      else
      {
        sub_2283F6E48(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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
      result = sub_228400400(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_228444708(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844BA34();
  v40 = a2;
  result = sub_22855DF4C();
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
      v18 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v42 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      sub_22855D20C();
      result = sub_22855E27C();
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
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v13 = v41;
      v17[2] = v42;
      v17[3] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
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
        v41 = (v20 - 1) & v20;
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

uint64_t sub_2284449D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844C4C8();
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v21);
      result = sub_22855E27C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_228444C48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844C468();
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_22855E21C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_228444EA0(uint64_t a1, int a2)
{
  v3 = v2;
  v48 = sub_22855C37C();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_22844B984(0, &qword_280DE9080, MEMORY[0x277D11290]);
  v44 = a2;
  result = sub_22855DF4C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = v3;
    v41 = (v6 + 16);
    v45 = (v6 + 32);
    v19 = result + 64;
    v20 = v6;
    v42 = v6;
    v43 = v9;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 8 * v25);
      v46 = *(v20 + 72);
      v28 = v26 + v46 * v25;
      if (v44)
      {
        (*v45)(v47, v28, v48);
      }

      else
      {
        (*v41)(v47, v28, v48);
        v29 = v27;
      }

      v30 = *(v12 + 40);
      sub_22855D1AC();
      sub_22855E22C();
      sub_22855D20C();
      v31 = sub_22855E27C();

      v32 = -1 << *(v12 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v27;
      result = (*v45)(*(v12 + 56) + v46 * v21, v47, v48);
      ++*(v12 + 16);
      v20 = v42;
      v9 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_228445250(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844B984(0, &qword_280DE9078, sub_22844C2D4);
  v36 = a2;
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + 16 * v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
        swift_unknownObjectRetain();
      }

      v24 = *(v8 + 40);
      sub_22855D1AC();
      sub_22855E22C();
      sub_22855D20C();
      v25 = sub_22855E27C();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 16 * v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228445528(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844C028();
  v36 = a2;
  result = sub_22855DF4C();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_22842B3E0(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2284457D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844B88C();
  v37 = a2;
  result = sub_22855DF4C();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
        v26 = v22;
        sub_22844B978(v24, v25);
      }

      v27 = *(v8 + 40);
      result = sub_22855D99C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228445A5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844B820(0, &qword_27D83F568, &qword_27D83F570, MEMORY[0x277CBCDA8], MEMORY[0x277D83D88]);
  v37 = a2;
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228445D30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2284002A8(0, &qword_280DE90A0, sub_22844C220);
  v38 = a2;
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228446018(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844BFB0();
  v36 = a2;
  result = sub_22855DF4C();
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
        sub_2283FAB3C(v25, v37);
      }

      else
      {
        sub_2283F9B10(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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
      result = sub_2283FAB3C(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_2284462D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844B794();
  v38 = a2;
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_228446584(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v7 = *(*v3 + 24);
  }

  a3(0);
  result = sub_22855DF4C();
  v9 = result;
  if (*(v6 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v6 + 64);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v6 + 48) + 8 * v21);
      v23 = *(*(v6 + 56) + 8 * v21);
      if ((a2 & 1) == 0)
      {
        v24 = v22;
      }

      v25 = *(v9 + 40);
      result = sub_22855D99C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_35:
  *v4 = v9;
  return result;
}

uint64_t sub_2284467EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844BE84();
  v40 = a2;
  result = sub_22855DF4C();
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
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

uint64_t sub_228446AA0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22855C5CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_22844B638();
  v43 = a2;
  result = sub_22855DF4C();
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
      v46 = *(v7 + 72);
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
      sub_22840A300(&qword_280DE9F38, 255, MEMORY[0x277D11BA8]);
      result = sub_22855D13C();
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
      v7 = v41;
      v11 = v42;
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

uint64_t sub_228446E70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844BDCC();
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();

      result = sub_22855E27C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_228447148(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v7 = *(*v3 + 24);
  }

  a3(0);
  result = sub_22855DF4C();
  v9 = result;
  if (*(v6 + 16))
  {
    v35 = v4;
    v10 = 0;
    v11 = (v6 + 64);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v6 + 48) + 8 * v21);
      v23 = *(*(v6 + 56) + 8 * v21);
      if ((a2 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v9 + 40);
      result = sub_22855D99C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v6 + 32);
      if (v34 >= 64)
      {
        bzero((v6 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v34;
      }

      *(v6 + 16) = 0;
    }

    v4 = v35;
  }

  else
  {
  }

  *v4 = v9;
  return result;
}

uint64_t sub_2284473A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22844B820(0, &qword_27D83F578, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
  v38 = a2;
  result = sub_22855DF4C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22844767C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PluginFeedItem();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2284002A8(0, &qword_280DEE3C8, type metadata accessor for PluginFeedItem);
  v44 = a2;
  result = sub_22855DF4C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22844BC28(v31, v45);
      }

      else
      {
        sub_22844BBC4(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22844BC28(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2284479C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22842D2A0();
  result = sub_22855DF4C();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_228400400((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_22844BB04(v24, &v38);
        sub_2283F6E48(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_22855DBCC();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_228400400(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_228447C74()
{
  v1 = v0;
  sub_22844BB60();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        sub_2283F6E48(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_228400400(v25, (*(v4 + 56) + v22));
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

id sub_228447E0C()
{
  v1 = v0;
  sub_22844BA34();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
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

void *sub_228447F84()
{
  v1 = v0;
  sub_22844C4C8();
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_2284480C4()
{
  v1 = v0;
  sub_22844C468();
  v2 = *v0;
  v3 = sub_22855DF3C();
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

id sub_228448204()
{
  v1 = v0;
  v30 = sub_22855C37C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844B984(0, &qword_280DE9080, MEMORY[0x277D11290]);
  v4 = *v0;
  v5 = sub_22855DF3C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
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

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_228448480()
{
  v1 = v0;
  sub_22844B984(0, &qword_280DE9078, sub_22844C2D4);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

void *sub_228448608()
{
  v1 = v0;
  sub_22844C028();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22842B3E0(v22, *(&v22 + 1));
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

void *sub_228448780()
{
  v1 = v0;
  sub_22844B88C();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        result = sub_22844B978(v20, v21);
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

void *sub_2284488F8()
{
  v1 = v0;
  sub_22844B820(0, &qword_27D83F568, &qword_27D83F570, MEMORY[0x277CBCDA8], MEMORY[0x277D83D88]);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_228448A94()
{
  v1 = v0;
  sub_2284002A8(0, &qword_280DE90A0, sub_22844C220);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

id sub_228448C2C()
{
  v1 = v0;
  sub_22844C088();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_228448D80()
{
  v1 = v0;
  sub_2284033AC();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v18 = *(*(v2 + 48) + v17);
        sub_2283F9B10(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2283FAB3C(v19, *(v4 + 56) + 40 * v17);
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

void *sub_228448EF4()
{
  v1 = v0;
  sub_22844BFB0();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        sub_2283F9B10(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2283FAB3C(v25, *(v4 + 56) + v22);
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

void *sub_228449090()
{
  v1 = v0;
  sub_22844B794();
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_22844920C(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_22855DF3C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_22844936C()
{
  v1 = v0;
  sub_22844BE84();
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_2284494D8()
{
  v1 = v0;
  v32 = sub_22855C5CC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844B638();
  v4 = *v0;
  v5 = sub_22855DF3C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_228449744()
{
  v1 = v0;
  sub_22844BDCC();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_228449884()
{
  v1 = v0;
  sub_22844B820(0, &qword_27D83F578, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_228449A20()
{
  v1 = v0;
  v2 = type metadata accessor for PluginFeedItem();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284002A8(0, &qword_280DEE3C8, type metadata accessor for PluginFeedItem);
  v5 = *v0;
  v6 = sub_22855DF3C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_22844BBC4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_22844BC28(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_228449C60()
{
  v1 = v0;
  sub_22842D2A0();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v18 = 40 * v17;
        sub_22844BB04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2283F6E48(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_228400400(v22, (*(v4 + 56) + v17));
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

void sub_228449DF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_22855DB4C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_22855DB9C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_228449EF8(__int128 *a1, uint64_t a2)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v14 = *a1;
  v15 = a1[1];
  sub_22855E27C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_22855D1AC();
    sub_22855E22C();
    v12 = v11;
    sub_22855D20C();
    v13 = sub_22855E27C();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x22AABA2B0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22844A09C(__int128 *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v28 = a1[2];
  v29 = a1[3];
  v30 = *(a1 + 8);
  v26 = *a1;
  v27 = a1[1];
  sub_22855E27C();
  v23 = a3;
  v24 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_22855DAFC();
    sub_2283EF310(0, a3, a4);
    sub_22844B928(a5, a3, a4);
    sub_22855D56C();
    a2 = v31;
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
  }

  else
  {
    v13 = -1 << *(a2 + 32);
    v9 = a2 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a2 + 56);

    v11 = 0;
  }

  v16 = 0;
  v17 = (v10 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_22855DB8C())
    {
LABEL_20:
      sub_228407958();
      MEMORY[0x22AABA2B0](v16);
      return;
    }

    sub_2283EF310(0, v23, v24);
    swift_dynamicCast();
    v20 = v25;
LABEL_10:
    v21 = sub_22855D99C();

    v16 ^= v21;
  }

  if (v12)
  {
    v18 = v11;
LABEL_9:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v25 = *(*(a2 + 48) + ((v18 << 9) | (8 * v19)));
    v20 = v25;
    goto LABEL_10;
  }

  v22 = v11;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      goto LABEL_20;
    }

    v12 = *(v9 + 8 * v18);
    ++v22;
    if (v12)
    {
      v11 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22844A2BC(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  sub_22855E27C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v9 << 6)));
    sub_22855E22C();
    sub_22855D20C();

    result = sub_22855E27C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x22AABA2B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844A6B8(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_22855E27C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_22855E22C();

    sub_22855D20C();
    v15 = sub_22855E27C();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x22AABA2B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_22844A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  v18 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9118);
  v19 = swift_allocObject();
  *(v19 + 32) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = v18;
  a7[12] = v19;
  sub_2283FAB3C(&v21, (a7 + 7));
  a7[2] = a5;
  a7[3] = a1;
  a7[4] = a2;
  a7[5] = a3;
  a7[6] = a4;
  return a7;
}

void sub_22844A90C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_22855DE0C();
      sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_22855DE3C() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_22855DE4C();
  sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
  swift_dynamicCast();
  v5 = sub_228443B74(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

void *sub_22844AA9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for DatabaseChangesQueryInputSignal.QueryObserver();
  v13 = swift_allocObject();
  sub_2283FA00C(0, &qword_280DE9120);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  v13[2] = v14;
  v13[3] = a4;
  v15 = sub_22844ABA8(a1, a2, a3, a4, v13, a6, a7);
  v16 = a4;
  return v15;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_22844ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  type metadata accessor for DatabaseChangesQueryInputSignal();
  v14 = swift_allocObject();
  v14[10] = v13;
  v14[11] = &off_283B81820;
  v14[7] = a5;
  v15 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9118);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = v15;
  v14[12] = v16;
  v14[2] = a4;
  v14[3] = a1;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a3;
  return v14;
}

void *sub_22844AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a5;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v15 + 16))(v18, a6, a8);
  return sub_22844A814(a1, a2, a3, a4, v22, v18, v19, a8, a9);
}

unint64_t sub_22844ADBC()
{
  result = qword_280DEAA40;
  if (!qword_280DEAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA40);
  }

  return result;
}

unint64_t sub_22844AE10()
{
  result = qword_280DEEC80;
  if (!qword_280DEEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEEC80);
  }

  return result;
}

void sub_22844AE64()
{
  if (!qword_280DE96C0)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96C0);
    }
  }
}

void sub_22844AEC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22844ADBC();
    v7 = a3(a1, &type metadata for DatabaseChangesQueryInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22844AF28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22844AE64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22844AF8C()
{
  result = qword_280DEE790;
  if (!qword_280DEE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE790);
  }

  return result;
}

void sub_22844AFFC(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

unint64_t sub_22844B044()
{
  result = qword_280DEAA10;
  if (!qword_280DEAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA10);
  }

  return result;
}

unint64_t sub_22844B09C()
{
  result = qword_280DEAA20;
  if (!qword_280DEAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA20);
  }

  return result;
}

unint64_t sub_22844B0F4()
{
  result = qword_280DEAA18;
  if (!qword_280DEAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA18);
  }

  return result;
}

unint64_t sub_22844B14C()
{
  result = qword_27D83F550;
  if (!qword_27D83F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F550);
  }

  return result;
}

unint64_t sub_22844B1A4()
{
  result = qword_280DEAA50;
  if (!qword_280DEAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA50);
  }

  return result;
}

unint64_t sub_22844B1FC()
{
  result = qword_280DEAA48;
  if (!qword_280DEAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA48);
  }

  return result;
}

unint64_t sub_22844B29C()
{
  result = qword_280DEAA28;
  if (!qword_280DEAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA28);
  }

  return result;
}

uint64_t sub_22844B378(uint64_t *a1, int a2)
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

uint64_t sub_22844B3C0(uint64_t result, int a2, int a3)
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

uint64_t sub_22844B40C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22844B468(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22844B4C8(uint64_t a1, int a2)
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

unint64_t sub_22844B534()
{
  result = qword_27D83F558;
  if (!qword_27D83F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F558);
  }

  return result;
}

unint64_t sub_22844B58C()
{
  result = qword_280DEAA30;
  if (!qword_280DEAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA30);
  }

  return result;
}

unint64_t sub_22844B5E4()
{
  result = qword_280DEAA38;
  if (!qword_280DEAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA38);
  }

  return result;
}

void sub_22844B638()
{
  if (!qword_280DE90B8)
  {
    sub_22855C5CC();
    sub_22855C80C();
    sub_22840A300(&qword_280DE9F38, 255, MEMORY[0x277D11BA8]);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90B8);
    }
  }
}

void sub_22844B6E8(void **a1)
{
  v3 = *a1;
  if (*a1)
  {
    [*(v1 + 24) stopQuery_];
  }

  *a1 = 0;
}

uint64_t sub_22844B760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  return v5(a2, a3, a4);
}

void sub_22844B794()
{
  if (!qword_27D83F560)
  {
    sub_22844C284(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F560);
    }
  }
}

void sub_22844B820(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2283F0D04(255, a3, a4, a5);
    v6 = sub_22855DF7C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22844B88C()
{
  if (!qword_280DE9070)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    sub_22844B928(&qword_280DE9330, &qword_280DEE7B0, 0x277CCD7C8);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9070);
    }
  }
}

uint64_t sub_22844B928(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22844B978(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_22844B984(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    a3(255);
    sub_22840A300(&unk_280DE9370, 255, type metadata accessor for HKFeatureIdentifier);
    v5 = sub_22855DF7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22844BA34()
{
  if (!qword_280DE90C0)
  {
    sub_2283EF310(255, &qword_280DE9490, 0x277CCD928);
    sub_22844BAB0();
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90C0);
    }
  }
}

unint64_t sub_22844BAB0()
{
  result = qword_280DEA338[0];
  if (!qword_280DEA338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEA338);
  }

  return result;
}

void sub_22844BB60()
{
  if (!qword_280DED050)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED050);
    }
  }
}

uint64_t sub_22844BBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginFeedItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22844BC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginFeedItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22844BC8C()
{
  if (!qword_27D83F590)
  {
    sub_2283EF310(255, &qword_280DE94F8, 0x277CCD8D8);
    sub_22855BE1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D83F590);
    }
  }
}

void sub_22844BD10()
{
  if (!qword_27D83F5A0)
  {
    sub_2283EF310(255, &qword_280DE94C8, 0x277CCD830);
    sub_2283EF310(255, &unk_280DE9238, 0x277CCDAB0);
    sub_22844B928(&qword_280DE94C0, &qword_280DE94C8, 0x277CCD830);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F5A0);
    }
  }
}

void sub_22844BDCC()
{
  if (!qword_27D83F5A8)
  {
    sub_22844BE30();
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F5A8);
    }
  }
}

unint64_t sub_22844BE30()
{
  result = qword_27D83F5B0;
  if (!qword_27D83F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F5B0);
  }

  return result;
}

void sub_22844BE84()
{
  if (!qword_280DE90B0)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90B0);
    }
  }
}

void sub_22844BEE0()
{
  if (!qword_27D83F5B8)
  {
    sub_2283EF310(255, &qword_280DE94D8, 0x277CCD4D8);
    sub_22844C284(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_22844B928(&qword_27D83F5C0, &qword_280DE94D8, 0x277CCD4D8);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F5B8);
    }
  }
}

void sub_22844BFB0()
{
  if (!qword_27D83F5C8)
  {
    sub_2283F9B94(255, &qword_27D83F440);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F5C8);
    }
  }
}

void sub_22844C028()
{
  if (!qword_280DEE7A8)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7A8);
    }
  }
}

void sub_22844C088()
{
  if (!qword_280DE9060)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    sub_2283EF310(255, &qword_280DE9258, 0x277CCD2B8);
    sub_22844B928(&qword_280DE9330, &qword_280DEE7B0, 0x277CCD7C8);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9060);
    }
  }
}

void sub_22844C144()
{
  if (!qword_280DE9068)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    sub_2283F0D04(255, &qword_280DE9588, sub_2283FBB5C, MEMORY[0x277D83940]);
    sub_22844B928(&qword_280DE9330, &qword_280DEE7B0, 0x277CCD7C8);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9068);
    }
  }
}

void sub_22844C220()
{
  if (!qword_280DE9680)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9680);
    }
  }
}

void sub_22844C284(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22844C2D4()
{
  result = qword_280DE9F78;
  if (!qword_280DE9F78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9F78);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22844C3AC()
{
  if (!qword_280DE96F0)
  {
    sub_2283EF310(255, &qword_280DE94F8, 0x277CCD8D8);
    sub_2283EF310(255, &qword_280DE93E8, 0x277CCD8E0);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    v0 = sub_22855D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96F0);
    }
  }
}

void sub_22844C468()
{
  if (!qword_280DE9090)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9090);
    }
  }
}

void sub_22844C4C8()
{
  if (!qword_280DE9088)
  {
    type metadata accessor for _HKDataTypeCode(255);
    sub_22840A300(&unk_280DE9450, 255, type metadata accessor for _HKDataTypeCode);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9088);
    }
  }
}

uint64_t static InputSignalSet.LookupKey.featureStatus.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for FeatureStatusInputSignal();
  return sub_22855C61C();
}

uint64_t sub_22844C658()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DEBA60);
  __swift_project_value_buffer(v0, qword_280DEBA60);
  return sub_22855C84C();
}

uint64_t FeatureStatusInputSignal.observer.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return swift_unknownObjectRetain();
}

void *FeatureStatusInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_22844F228(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *FeatureStatusInputSignal.__allocating_init(context:observer:makeFeatureStatusManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ObjectType = swift_getObjectType();

  return sub_22844F2E4(a1, a3, a4, a5, a6, v12, ObjectType, a2);
}

void *FeatureStatusInputSignal.init(context:observer:makeFeatureStatusManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_22844F2E4(a1, a3, a4, a5, a6, v6, ObjectType, a2);
}

id sub_22844C86C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(a1 + 8);

  for (i = 0; v6; result = [*(*(v3 + 56) + ((v11 << 10) | (16 * v12))) unregisterObserver_])
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v13 = sub_22847CB84(MEMORY[0x277D84F90]);

      *(a1 + 8) = v13;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844C970(uint64_t a1, uint64_t **a2)
{
  v99 = sub_22855CABC();
  v4 = *(v99 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v99);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22855C37C();
  v8 = *(*(v93 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v93);
  v92 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v89 - v12;
  v13 = *a2;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v98 = (v4 + 8);
  v91 = (v11 + 32);
  v90 = v11;
  v89 = v11 + 40;
  v94 = v13;

  v19 = 0;
  v106 = 0;
  *&v20 = 136315394;
  v95 = v20;
  v101 = a1 + 56;
  v102 = a1;
  v104 = v7;
  v100 = v18;
LABEL_5:
  v21 = v19;
  if (!v17)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v19 = v21;
LABEL_10:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = a2[1][2];
    v24 = *(*(a1 + 48) + ((v19 << 9) | (8 * v22)));
    v25 = v24;
    if (v23)
    {
      sub_22844C56C(v24);
      if (v26)
      {

        goto LABEL_5;
      }
    }

    v27 = v105;
    v28 = *(v105 + 32);
    v29 = (*(v105 + 24))(v25);
    v31 = v30;
    swift_getObjectType();
    [v29 registerObserver_];
    v32 = v25;
    v33 = v29;
    swift_unknownObjectRetain();
    v34 = a2[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = a2[1];
    v36 = v108;
    v37 = sub_22844C56C(v32);
    v39 = *(v36 + 16);
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      break;
    }

    v43 = v38;
    if (*(v36 + 24) >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = v37;
        sub_228448480();
        v37 = v72;
      }
    }

    else
    {
      sub_228445250(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_22844C56C(v32);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_45;
      }
    }

    v45 = v33;
    v46 = v108;
    if (v43)
    {
      v47 = (v108[7] + 16 * v37);
      v48 = *v47;
      *v47 = v45;
      v47[1] = v31;

      swift_unknownObjectRelease();
    }

    else
    {
      v108[(v37 >> 6) + 8] |= 1 << v37;
      *(v46[6] + 8 * v37) = v32;
      v49 = (v46[7] + 16 * v37);
      *v49 = v45;
      v49[1] = v31;
      v50 = v46[2];
      v41 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v41)
      {
        goto LABEL_42;
      }

      v46[2] = v51;
    }

    a2[1] = v46;
    v108 = v45;
    v52 = v106;
    sub_22855C3DC();
    if (!v52)
    {
      v106 = 0;
      v73 = *v91;
      (*v91)(v92, v103, v93);
      v74 = v94;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v74;
      v76 = sub_22844C56C(v32);
      v78 = *(v74 + 16);
      v79 = (v77 & 1) == 0;
      v41 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      a1 = v102;
      if (v41)
      {
        goto LABEL_43;
      }

      v81 = v77;
      if (*(v74 + 24) >= v80)
      {
        if ((v75 & 1) == 0)
        {
          v86 = v76;
          sub_228448204();
          v76 = v86;
          a1 = v102;
        }
      }

      else
      {
        sub_228444EA0(v80, v75);
        v76 = sub_22844C56C(v32);
        if ((v81 & 1) != (v82 & 1))
        {
          goto LABEL_45;
        }
      }

      v94 = v108;
      if (v81)
      {
        (*(v90 + 40))(v108[7] + *(v90 + 72) * v76, v92, v93);

        swift_unknownObjectRelease();
      }

      else
      {
        v108[(v76 >> 6) + 8] |= 1 << v76;
        v83 = v93;
        *(v94[6] + 8 * v76) = v32;
        v73((v94[7] + *(v90 + 72) * v76), v92, v83);
        swift_unknownObjectRelease();
        v84 = v94[2];
        v41 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v41)
        {
          goto LABEL_44;
        }

        v94[2] = v85;
      }

      v18 = v100;
      v14 = v101;

      goto LABEL_5;
    }

    v53 = *(v105 + 40);
    v54 = *(v105 + 48);
    swift_getObjectType();
    v55 = v104;
    sub_22855C59C();
    v56 = v32;
    v57 = v52;
    v58 = sub_22855CA8C();
    v59 = sub_22855D68C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v97 = v45;
      v62 = v61;
      v96 = swift_slowAlloc();
      v108 = v96;
      *v60 = v95;
      v107 = v56;
      type metadata accessor for HKFeatureIdentifier(0);
      v106 = v52;
      v63 = v56;
      v64 = sub_22855D1BC();
      v66 = sub_2283F8938(v64, v65, &v108);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2112;
      v67 = v106;
      v68 = v106;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 14) = v69;
      *v62 = v69;
      _os_log_impl(&dword_2283ED000, v58, v59, "Error retrieving initial feature status for %s: %@", v60, 0x16u);
      sub_22844FE44(v62, &qword_280DED080, sub_2284185F4);
      MEMORY[0x22AABAD40](v62, -1, -1);
      v70 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x22AABAD40](v70, -1, -1);
      v71 = v60;
      v55 = v104;
      MEMORY[0x22AABAD40](v71, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*v98)(v55, v99);
    v106 = 0;
    v21 = v19;
    v14 = v101;
    a1 = v102;
    v18 = v100;
    if (!v17)
    {
LABEL_7:
      while (1)
      {
        v19 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v19 >= v18)
        {

          v87 = *a2;

          *a2 = v94;
          return result;
        }

        v17 = *(v14 + 8 * v19);
        ++v21;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  type metadata accessor for HKFeatureIdentifier(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_22844D0E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[9];
  os_unfair_lock_lock((v3 + 32));
  sub_22844FDA8((v3 + 16), &v9);
  os_unfair_lock_unlock((v3 + 32));
  v4 = v9;
  v5 = v0[7];
  v6 = v1[8];
  swift_getObjectType();
  v9 = v4;
  sub_22844F98C(&unk_280DEB9D0, v7, type metadata accessor for FeatureStatusInputSignal);
  sub_22855C78C();
}

uint64_t sub_22844D1F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_22855C37C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a3, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_2284D1CF0(v11, a2);
  *a4 = *a1;
}

uint64_t sub_22844D330(void *a1, void *a2)
{
  v4 = sub_22855C37C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = a2;
    sub_22855C38C();
    v11 = [a1 featureIdentifier];
    sub_22844D0E8();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

id sub_22844D538()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeatureStatusInputSignal.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);

  return v0;
}

uint64_t FeatureStatusInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_22844D660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000022856EAF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22855E15C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22844D6F4(uint64_t a1)
{
  v2 = sub_22844F3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22844D730(uint64_t a1)
{
  v2 = sub_22844F3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeatureStatusInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_22844F5A4(0, &qword_280DE8FF8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844F3B8();

  sub_22855E31C();
  v12[1] = v9;
  sub_22844F40C();
  sub_22844F4BC();
  sub_22855E0CC();

  return (*(v5 + 8))(v8, v4);
}

uint64_t FeatureStatusInputSignal.Anchor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_22844F5A4(0, &qword_280DE9040, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844F3B8();
  sub_22855E30C();
  if (!v2)
  {
    sub_22844F40C();
    sub_22844F608();
    sub_22855E03C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FeatureStatusInputSignal.Configuration.featureIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FeatureStatusInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_228449EF8(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_22844DB94()
{
  v1 = *v0;
  sub_22855E22C();
  sub_228449EF8(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_22844DBE4()
{
  v1 = *v0;
  sub_22855E22C();
  sub_228449EF8(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_22844DC2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DEBA50 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C85C();
  v3 = __swift_project_value_buffer(v2, qword_280DEBA60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall FeatureStatusInputSignal.stopObservation()()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 8);
  sub_22844F6F0(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t FeatureStatusInputSignal.beginObservation(from:configurations:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[9];
  v10 = *a1;
  os_unfair_lock_lock((v4 + 32));
  sub_22844F718((v4 + 16), &v11);
  os_unfair_lock_unlock((v4 + 32));
  v5 = v11;
  v6 = v1[7];
  v7 = v2[8];
  swift_getObjectType();
  v11 = v5;
  sub_22844F98C(&unk_280DEB9D0, v8, type metadata accessor for FeatureStatusInputSignal);
  sub_22855C78C();
}

uint64_t sub_22844DE40@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  sub_22844C86C(a1);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = sub_22847C948(MEMORY[0x277D84F90]);
  }

  v9 = *a1;

  *a1 = v8;
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = (a3 + 32);
    v12 = MEMORY[0x277D84FA0];
    do
    {
      v13 = *v11++;

      sub_2284E2230(v14, v12);
      v12 = v15;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  sub_22844C970(v12, a1);

  *a4 = *a1;
}

uint64_t sub_22844DF24()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  return swift_unknownObjectRetain();
}

void sub_22844DF74()
{
  v1 = *(*v0 + 72);
  os_unfair_lock_lock(v1 + 8);
  sub_22844FFB0(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_22844DFD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22844F98C(&unk_280DEB9D0, a2, type metadata accessor for FeatureStatusInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_22844E03C(uint64_t a1, uint64_t *a2)
{
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = &v106 - v6;
  v127 = sub_22855C37C();
  v7 = *(v127 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v127);
  v109 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v110 = &v106 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v114 = &v106 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v126 = &v106 - v18;
  MEMORY[0x28223BE20](v17);
  v115 = &v106 - v19;
  sub_22844FEA0(0, &qword_280DE9388, sub_228409D54);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v120 = (&v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v119 = (&v106 - v24);
  v25 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v111 = (v26 + 63) >> 6;
  v124 = (v7 + 16);
  v125 = (v7 + 32);
  v117 = (v7 + 8);
  v107 = (v7 + 56);
  v123 = v7;
  v112 = (v7 + 40);
  v116 = a1;

  v29 = 0;
  v121 = a2;
  v118 = a1 + 64;
  while (v28)
  {
    v31 = a2;
    v32 = v29;
LABEL_15:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v115;
    v38 = *(*(v116 + 48) + 8 * v36);
    v39 = v123;
    v40 = v127;
    (*(v123 + 16))(v115, *(v116 + 56) + *(v123 + 72) * v36, v127);
    sub_228409D54();
    v42 = v41;
    v43 = *(v41 + 48);
    v44 = v120;
    *v120 = v38;
    (*(v39 + 32))(v44 + v43, v37, v40);
    (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
    v45 = v38;
LABEL_16:
    v46 = v119;
    sub_22844FDC4(v44, v119);
    sub_228409D54();
    if ((*(*(v42 - 8) + 48))(v46, 1, v42) == 1)
    {
    }

    v47 = *v46;
    v48 = *v125;
    (*v125)(v126, v46 + *(v42 + 48), v127);
    v49 = *v31;
    if (*(*v31 + 16))
    {
      v50 = *v31;
      v51 = sub_22844C56C(v47);
      v52 = *v124;
      if ((v53 & 1) == 0)
      {
        goto LABEL_25;
      }

      v54 = v49[7];
      v113 = *(v123 + 72);
      v55 = v110;
      v56 = v127;
      v52(v110, v54 + v113 * v51, v127);
      v57 = v114;
      v48(v114, v55, v56);
      sub_22844F98C(&qword_280DE9FA0, 255, MEMORY[0x277D11290]);
      if (sub_22855D16C())
      {
        v52(v109, v57, v56);
        v58 = v121;
        v59 = *v121;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = *v58;
        v61 = v128;
        v62 = sub_22844C56C(v47);
        v64 = v61[2];
        v65 = (v63 & 1) == 0;
        v66 = __OFADD__(v64, v65);
        v67 = v64 + v65;
        if (v66)
        {
          goto LABEL_52;
        }

        v68 = v63;
        if (v61[3] >= v67)
        {
          v25 = v118;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v104 = v62;
            sub_228448204();
            v62 = v104;
          }
        }

        else
        {
          sub_228444EA0(v67, isUniquelyReferenced_nonNull_native);
          v62 = sub_22844C56C(v47);
          v25 = v118;
          if ((v68 & 1) != (v69 & 1))
          {
            goto LABEL_54;
          }
        }

        v98 = v114;
        v99 = v128;
        if (v68)
        {
          (*v112)(v128[7] + v62 * v113, v109, v56);

          v100 = *v117;
          (*v117)(v98, v56);
          v100(v126, v56);
        }

        else
        {
          v128[(v62 >> 6) + 8] |= 1 << v62;
          *(v99[6] + 8 * v62) = v47;
          v48((v99[7] + v62 * v113), v109, v56);
          v101 = *v117;
          (*v117)(v98, v56);
          v101(v126, v56);
          v102 = v99[2];
          v66 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v66)
          {
            goto LABEL_53;
          }

          v99[2] = v103;
        }

        a2 = v121;
        *v121 = v99;
      }

      else
      {
        v87 = sub_22844C56C(v47);
        if (v88)
        {
          v89 = v87;
          v90 = v121;
          v91 = *v121;
          v92 = swift_isUniquelyReferenced_nonNull_native();
          v93 = *v90;
          v128 = v93;
          v25 = v118;
          if ((v92 & 1) == 0)
          {
            sub_228448204();
            v93 = v128;
          }

          v94 = v108;
          v48(v108, (*(v93 + 56) + v89 * v113), v56);
          sub_2284D2684(v89, v93);

          v95 = *v117;
          (*v117)(v114, v56);
          v95(v126, v56);
          v96 = 0;
          a2 = v121;
          *v121 = v93;
        }

        else
        {

          v97 = *v117;
          (*v117)(v114, v56);
          v97(v126, v56);
          v96 = 1;
          a2 = v121;
          v94 = v108;
          v25 = v118;
        }

        (*v107)(v94, v96, 1, v56);
        sub_22844FE44(v94, &qword_280DE9F90, MEMORY[0x277D11290]);
      }
    }

    else
    {
      v52 = *v124;
LABEL_25:
      v52(v122, v126, v127);
      v70 = *v31;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v128 = *v31;
      v72 = v128;
      v74 = sub_22844C56C(v47);
      v75 = v72[2];
      v76 = (v73 & 1) == 0;
      v77 = v75 + v76;
      if (__OFADD__(v75, v76))
      {
        goto LABEL_50;
      }

      v78 = v73;
      if (v72[3] >= v77)
      {
        v25 = v118;
        v81 = v127;
        if ((v71 & 1) == 0)
        {
          sub_228448204();
        }
      }

      else
      {
        sub_228444EA0(v77, v71);
        v79 = sub_22844C56C(v47);
        v25 = v118;
        v81 = v127;
        if ((v78 & 1) != (v80 & 1))
        {
          goto LABEL_54;
        }

        v74 = v79;
      }

      a2 = v121;
      v82 = v128;
      if (v78)
      {
        v30 = v123;
        (*(v123 + 40))(v128[7] + *(v123 + 72) * v74, v122, v81);

        (*(v30 + 8))(v126, v81);
        *a2 = v82;
      }

      else
      {
        v128[(v74 >> 6) + 8] |= 1 << v74;
        *(v82[6] + 8 * v74) = v47;
        v83 = v123;
        v48((v82[7] + *(v123 + 72) * v74), v122, v81);
        (*(v83 + 8))(v126, v81);
        v84 = v82[2];
        v66 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v66)
        {
          goto LABEL_51;
        }

        v82[2] = v85;
        *a2 = v82;
      }
    }
  }

  if (v111 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v111;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v111)
    {
      v31 = a2;
      sub_228409D54();
      v42 = v86;
      v44 = v120;
      (*(*(v86 - 8) + 56))(v120, 1, 1, v86);
      v28 = 0;
      v29 = v34;
      goto LABEL_16;
    }

    v28 = *(v25 + 8 * v32);
    ++v29;
    if (v28)
    {
      v31 = a2;
      v29 = v32;
      goto LABEL_15;
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
  type metadata accessor for HKFeatureIdentifier(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t FeatureStatusInputSignal.Anchor.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DEBA50 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C85C();
  v3 = __swift_project_value_buffer(v2, qword_280DEBA60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FeatureStatusInputSignal.Anchor.merged(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  result = sub_22844E03C(v4, &v6);
  *a2 = v6;
  return result;
}

uint64_t FeatureStatusInputSignal.Anchor.hasDifference(from:for:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_22855C37C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844F738();
  v64 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v67 = &v54 - v18;
  v19 = *a1;
  v20 = *a2;
  v21 = *a2 + 56;
  v22 = 1 << *(*a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(*a2 + 56);
  v69 = *v2;
  v70 = (v6 + 56);
  v59 = v6 + 16;
  v60 = v6;
  v63 = (v6 + 48);
  v54 = (v22 + 63) >> 6;
  v55 = (v6 + 32);
  v57 = (v6 + 8);
  v65 = v20;

  v26 = 0;
  v62 = v19;
  while (v24)
  {
    v28 = v67;
    v27 = v68;
LABEL_11:
    v30 = *(*(v65 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
    if (*(v69 + 16))
    {
      v31 = sub_22844C56C(v30);
      if (v32)
      {
        v33 = v60;
        (*(v60 + 16))(v28, *(v69 + 56) + *(v60 + 72) * v31, v5);
        v34 = *(v33 + 56);
        v34(v28, 0, 1, v5);
      }

      else
      {
        v34 = *v70;
        (*v70)(v28, 1, 1, v5);
      }

      v66 = v30;
      if (!v19)
      {
LABEL_21:
        v38 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v34 = *v70;
      (*v70)(v28, 1, 1, v5);
      v35 = v30;
      v66 = v30;
      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (!*(v19 + 16))
    {
      goto LABEL_21;
    }

    v36 = sub_22844C56C(v30);
    if ((v37 & 1) == 0)
    {
      goto LABEL_21;
    }

    (*(v60 + 16))(v27, *(v19 + 56) + *(v60 + 72) * v36, v5);
    v38 = 0;
LABEL_22:
    v24 &= v24 - 1;
    v34(v27, v38, 1, v5);
    v39 = *(v64 + 48);
    v40 = v71;
    sub_22844F7B8(v28, v71);
    sub_22844F7B8(v27, v40 + v39);
    v41 = v28;
    v42 = v27;
    v43 = *v63;
    if ((*v63)(v40, 1, v5) == 1)
    {

      v44 = MEMORY[0x277D11290];
      sub_22844FE44(v42, &qword_280DE9F90, MEMORY[0x277D11290]);
      sub_22844FE44(v41, &qword_280DE9F90, v44);
      if (v43(v71 + v39, 1, v5) != 1)
      {
        goto LABEL_31;
      }

      result = sub_22844FE44(v71, &qword_280DE9F90, MEMORY[0x277D11290]);
      v19 = v62;
    }

    else
    {
      v45 = v71;
      v46 = v5;
      v47 = v58;
      sub_22844F7B8(v71, v58);
      if (v43(v45 + v39, 1, v46) == 1)
      {

        v53 = MEMORY[0x277D11290];
        sub_22844FE44(v68, &qword_280DE9F90, MEMORY[0x277D11290]);
        sub_22844FE44(v67, &qword_280DE9F90, v53);
        (*v57)(v47, v46);
LABEL_31:
        sub_22844F838(v71);
LABEL_32:
        v52 = 1;
LABEL_29:

        return v52;
      }

      v48 = v45 + v39;
      v49 = v56;
      (*v55)(v56, v48, v46);
      sub_22844F98C(&qword_280DE9FA0, 255, MEMORY[0x277D11290]);
      v61 = sub_22855D16C();

      v50 = *v57;
      (*v57)(v49, v46);
      v51 = MEMORY[0x277D11290];
      sub_22844FE44(v68, &qword_280DE9F90, MEMORY[0x277D11290]);
      sub_22844FE44(v67, &qword_280DE9F90, v51);
      v50(v47, v46);
      result = sub_22844FE44(v45, &qword_280DE9F90, v51);
      v5 = v46;
      v19 = v62;
      if ((v61 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  v28 = v67;
  v27 = v68;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v54)
    {
      v52 = 0;
      goto LABEL_29;
    }

    v24 = *(v21 + 8 * v29);
    ++v26;
    if (v24)
    {
      v26 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844F1D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  result = sub_22844E03C(v4, &v6);
  *a2 = v6;
  return result;
}

void *sub_22844F228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = swift_allocObject();

  return sub_22844F2E4(a1, a2, a3, sub_22844FF54, v13, v14, a6, a7);
}

void *sub_22844F2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = MEMORY[0x277D84F90];
  v16 = sub_22847C948(MEMORY[0x277D84F90]);
  v17 = sub_22847CB84(v15);
  sub_22844FEF4();
  v18 = swift_allocObject();
  *(v18 + 32) = 0;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  a6[8] = a3;
  a6[9] = v18;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = a1;
  a6[6] = a8;
  a6[7] = a2;
  a6[2] = [objc_allocWithZone(type metadata accessor for FeatureStatusInputSignal.FeatureStatusObserver()) init];
  swift_weakAssign();
  return a6;
}

unint64_t sub_22844F3B8()
{
  result = qword_280DEBA30;
  if (!qword_280DEBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA30);
  }

  return result;
}

void sub_22844F40C()
{
  if (!qword_280DE96A8)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_22855C37C();
    sub_22844F98C(&unk_280DE9370, 255, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96A8);
    }
  }
}

unint64_t sub_22844F4BC()
{
  result = qword_280DE9698;
  if (!qword_280DE9698)
  {
    sub_22844F40C();
    sub_22844F98C(&qword_280DE9380, 255, type metadata accessor for HKFeatureIdentifier);
    sub_22844F98C(&qword_280DE9FA8, 255, MEMORY[0x277D11290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9698);
  }

  return result;
}

void sub_22844F5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22844F3B8();
    v7 = a3(a1, &type metadata for FeatureStatusInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22844F608()
{
  result = qword_280DE9688;
  if (!qword_280DE9688)
  {
    sub_22844F40C();
    sub_22844F98C(&unk_280DE9350, 255, type metadata accessor for HKFeatureIdentifier);
    sub_22844F98C(&qword_280DE9F98, 255, MEMORY[0x277D11290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9688);
  }

  return result;
}

void sub_22844F738()
{
  if (!qword_280DE9F88)
  {
    sub_22844FEA0(255, &qword_280DE9F90, MEMORY[0x277D11290]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9F88);
    }
  }
}

uint64_t sub_22844F7B8(uint64_t a1, uint64_t a2)
{
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22844F838(uint64_t a1)
{
  sub_22844F738();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22844F898()
{
  result = qword_280DEBA40;
  if (!qword_280DEBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA40);
  }

  return result;
}

unint64_t sub_22844F8F0()
{
  result = qword_280DEBA38;
  if (!qword_280DEBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA38);
  }

  return result;
}

uint64_t sub_22844F98C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22844F9D8()
{
  result = qword_280DEBA08;
  if (!qword_280DEBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA08);
  }

  return result;
}

unint64_t sub_22844FA30()
{
  result = qword_280DEB9E0;
  if (!qword_280DEB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB9E0);
  }

  return result;
}

unint64_t sub_22844FA88()
{
  result = qword_280DEB9F8;
  if (!qword_280DEB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB9F8);
  }

  return result;
}

unint64_t sub_22844FAE0()
{
  result = qword_280DEB9F0;
  if (!qword_280DEB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB9F0);
  }

  return result;
}

unint64_t sub_22844FB38()
{
  result = qword_27D83F5D8;
  if (!qword_27D83F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F5D8);
  }

  return result;
}

uint64_t sub_22844FBFC(uint64_t *a1, int a2)
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

uint64_t sub_22844FC44(uint64_t result, int a2, int a3)
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

unint64_t sub_22844FCA4()
{
  result = qword_27D83F6B0;
  if (!qword_27D83F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F6B0);
  }

  return result;
}

unint64_t sub_22844FCFC()
{
  result = qword_280DEBA18;
  if (!qword_280DEBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA18);
  }

  return result;
}

unint64_t sub_22844FD54()
{
  result = qword_280DEBA20;
  if (!qword_280DEBA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA20);
  }

  return result;
}

uint64_t sub_22844FDC4(uint64_t a1, uint64_t a2)
{
  sub_22844FEA0(0, &qword_280DE9388, sub_228409D54);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22844FE44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22844FEA0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22844FEA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22844FEF4()
{
  if (!qword_280DE9178)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9178);
    }
  }
}

uint64_t NSOrderedSet.asLazyArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  sub_228450300();
  sub_2284503E0(&qword_280DE91D8, sub_228450300);
  v3 = v2;
  sub_22855DF9C();

  return v5;
}

uint64_t sub_2284500C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22855DA2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  sub_2283F6E48(a1, v16);
  v11 = swift_dynamicCast();
  v12 = *(*(a2 - 8) + 56);
  if (v11)
  {
    v13 = *(a2 - 8);
    v12(v10, 0, 1, a2);
    return (*(v13 + 32))(a3, v10, a2);
  }

  else
  {
    v12(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000038, 0x800000022856EB40);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v15 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v15);

    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void sub_228450300()
{
  if (!qword_280DE91D0)
  {
    sub_228450394();
    sub_2284503E0(&qword_280DE94E8, sub_228450394);
    v0 = sub_22855DC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE91D0);
    }
  }
}

unint64_t sub_228450394()
{
  result = qword_280DE94E0;
  if (!qword_280DE94E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE94E0);
  }

  return result;
}

uint64_t sub_2284503E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NSOrderedSet.asArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  NSOrderedSet.asLazyArray<A>(_:)(a1, a2);
  sub_228450394();
  sub_2284503E0(&qword_280DE94E8, sub_228450394);
  sub_22855DDBC();
  swift_getWitnessTable();
  return sub_22855D48C();
}

uint64_t FeatureStatusFeedItemGeneratorPipeline.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;
}

uint64_t type metadata accessor for FeatureStatusFeedItemGeneratorPipeline()
{
  result = qword_280DEA1D0;
  if (!qword_280DEA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FeatureStatusFeedItemGeneratorPipeline.feedItemPredicate.getter()
{
  v1 = v0 + *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline() + 24);
  v2 = *v1;
  sub_22845063C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

id sub_22845063C(id result, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:

  return sub_2284506A4(result);
}

id sub_2284506A4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2284506B8()
{
  sub_2284531A0(0, &qword_280DE9818, MEMORY[0x277CBCE88]);
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v23 = &v23 - v3;
  sub_228453210();
  v5 = v4;
  v26 = *(v4 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22855C37C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v28 = v0;
  v14 = v0 + *(v27 + 32);
  v15 = *(v14 + 8);
  (*v14)(v30);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v16 = sub_22855C3EC();
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_22855C3DC();
  v29 = v16;
  sub_228451C98(0, &qword_280DE8F88, MEMORY[0x277D11290], MEMORY[0x277D84560]);
  v17 = *(v10 + 72);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_228560580;
  (*(v10 + 16))(v19 + v18, v13, v9);
  v20 = MEMORY[0x277CBCD88];
  sub_2284531A0(0, &qword_280DE9918, MEMORY[0x277CBCD88]);
  sub_228451FE0(&qword_280DE9920, &qword_280DE9918, v20);
  sub_22855CF3C();

  sub_228453450(&qword_280DE9D10, sub_228453210);
  v21 = sub_22855CE6C();

  (*(v26 + 8))(v8, v5);
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v21;
}

uint64_t FeatureStatusFeedItemGeneratorPipeline.init(context:featureIdentifier:feedItemProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GeneratorContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v20 - v13);
  sub_228453070(a1, &v20 - v13, type metadata accessor for GeneratorContext);
  sub_228452894(0, &qword_280DE8FA8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228560580;
  sub_2283F9B10(a3, v15 + 32);
  sub_228453070(a1, v12, type metadata accessor for GeneratorContext);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_2284530D8(v12, v18 + v16, type metadata accessor for GeneratorContext);
  *(v18 + v17) = a2;
  sub_228450FC4(v14, v15, sub_228450FC0, v18, a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return sub_228453140(a1, type metadata accessor for GeneratorContext);
}

void sub_228450F00()
{
  if (!qword_280DE8EA0)
  {
    type metadata accessor for CountryRetrievalRecord();
    sub_228450F6C();
    v0 = sub_22855E2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE8EA0);
    }
  }
}

unint64_t sub_228450F6C()
{
  result = qword_280DEBC08;
  if (!qword_280DEBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC08);
  }

  return result;
}

double sub_228450FC4@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  v7 = *a1;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  v42 = *a1;
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    v10 = v7;
    sub_228427430(0, v8, 0);
    v11 = v51;
    v12 = v5 + 32;
    v13 = v8;
    do
    {
      sub_2283F9B10(v12, v47);
      v14 = v48;
      v15 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v15 + 24))(&v50, v14, v15);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v16 = v50;
      v51 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_228427430((v17 > 1), v18 + 1, 1);
        v11 = v51;
      }

      *(v11 + 16) = v18 + 1;
      *(v11 + v18 + 32) = v16;
      v12 += 40;
      --v13;
    }

    while (v13);
    v5 = a2;
  }

  else
  {
    v19 = v7;
    v11 = MEMORY[0x277D84F90];
  }

  v20 = sub_228429B98(v11);

  v51 = v9;
  v21 = *(v5 + 16);
  if (v21)
  {
    v22 = v5 + 32;
    do
    {
      sub_2283F9B10(v22, v47);
      v23 = v48;
      v24 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v25 = (*(v24 + 16))(v23, v24);
      __swift_destroy_boxed_opaque_existential_0(v47);
      sub_2284A7494(v25);
      v22 += 40;
      --v21;
    }

    while (v21);
    v9 = v51;
  }

  v26 = sub_228428BF8(v9);

  *a5 = v42;
  *(a5 + 8) = v20;
  *(a5 + 16) = v26;
  *(a5 + 24) = 0;
  v27 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  sub_228453070(a1, a5 + v27[5], type metadata accessor for GeneratorContext);
  v28 = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v8, 0);
    v28 = v51;
    v29 = v5 + 32;
    do
    {
      sub_2283F9B10(v29, v47);
      v30 = v48;
      v31 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v32 = (*(v31 + 8))(v30, v31);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0(v47);
      v51 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2284272C0((v35 > 1), v36 + 1, 1);
        v28 = v51;
      }

      *(v28 + 16) = v36 + 1;
      v37 = v28 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v29 += 40;
      --v8;
    }

    while (v8);
    v5 = a2;
  }

  v38 = sub_228406280(v28);

  sub_228453140(a1, type metadata accessor for GeneratorContext);
  v39 = a5 + v27[6];
  *v39 = v38;
  *&result = 1;
  *(v39 + 8) = xmmword_228561CA0;
  *(v39 + 24) = 0;
  *(a5 + v27[7]) = v5;
  v41 = (a5 + v27[8]);
  *v41 = a3;
  v41[1] = a4;
  return result;
}

uint64_t FeatureStatusFeedItemGeneratorPipeline.init(context:featureIdentifier:feedItemProviders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GeneratorContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v18 - v13);
  sub_228453070(a1, &v18 - v13, type metadata accessor for GeneratorContext);
  sub_228453070(a1, v12, type metadata accessor for GeneratorContext);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_2284530D8(v12, v16 + v15, type metadata accessor for GeneratorContext);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_228450FC4(v14, a3, sub_228453498, v16, a4);
  return sub_228453140(a1, type metadata accessor for GeneratorContext);
}

void sub_2284514C4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + *(type metadata accessor for GeneratorContext() + 28));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 8))(v7, v8);
  sub_228452D3C(a1);
  if (v10)
  {
    v11 = v9;
    v12 = sub_22855D17C();
  }

  else
  {
    v13 = v9;
    v12 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:a2 healthStore:v9 currentCountryCode:v12];

  v15 = sub_228453024();
  v16 = MEMORY[0x277D113B8];
  a3[3] = v15;
  a3[4] = v16;

  *a3 = v14;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for GeneratorContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  sub_228450F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = *(v6 + 8);

    v8 = *(type metadata accessor for CountryRetrievalRecord() + 24);
    v9 = sub_22855C16C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[8]));

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

void sub_228451724(void *a1@<X8>)
{
  v3 = *(type metadata accessor for GeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_2284514C4(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t FeatureStatusFeedItemGeneratorPipeline.makeFeedItemsPublisher(change:)(uint64_t a1)
{
  v21 = a1;
  v1 = sub_22855C37C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228451ADC();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228453070(v20, v8, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v2 + 16))(v4, v21, v1);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + *(v2 + 80) + v15) & ~*(v2 + 80);
  v17 = swift_allocObject();
  sub_2284530D8(v8, v17 + v15, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v2 + 32))(v17 + v16, v4, v1);
  sub_228451B70();
  sub_228453450(&qword_280DE9A68, sub_228451B70);
  sub_22855CE2C();
  sub_228453450(&qword_280DE9778, sub_228451ADC);
  v18 = sub_22855CE6C();
  (*(v11 + 8))(v14, v10);
  return v18;
}

void sub_228451ADC()
{
  if (!qword_280DE9770)
  {
    sub_228451B70();
    sub_228453450(&qword_280DE9A68, sub_228451B70);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9770);
    }
  }
}

void sub_228451B70()
{
  if (!qword_280DE9A60)
  {
    sub_228451C04();
    sub_228453450(&qword_280DE99B0, sub_228451C04);
    v0 = sub_22855CBDC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9A60);
    }
  }
}

void sub_228451C04()
{
  if (!qword_280DE99A8)
  {
    sub_22842BC38();
    sub_228453450(&qword_280DE9D20, sub_22842BC38);
    v0 = sub_22855CC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE99A8);
    }
  }
}

void sub_228451C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228451CFC(uint64_t a1, uint64_t a2)
{
  sub_228451C04();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline() + 28));
  v13 = a1;
  v14 = a2;
  v15 = sub_2284FA3C4(sub_228452C88, v12, v10);
  sub_22842BC38();
  sub_228451C98(0, &qword_280DE95F8, sub_22842BC38, MEMORY[0x277D83940]);
  sub_228453450(&qword_280DE9D20, sub_22842BC38);
  sub_2284533EC(&qword_280DE95F0, &qword_280DE95F8, sub_22842BC38);
  sub_22855CC2C();
  sub_228453450(&qword_280DE99B0, sub_228451C04);
  sub_22855CF1C();
  return (*(v6 + 8))(v9, v5);
}

void sub_228451F14(void *a1, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    a1 = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_228451F7C(a1);
}

void sub_228451F7C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_228451FE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_2284531A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228452068(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2284520B8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}