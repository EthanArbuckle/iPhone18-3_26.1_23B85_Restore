uint64_t sub_2296F77EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE00, &unk_22A577C80);
    v2 = sub_22A4DE40C();
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2295404B0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];

    swift_dynamicCast();
    sub_229543C5C(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_229543C5C(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_229543C5C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22A4DE16C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_229543C5C(v33, (*(v2 + 56) + 32 * v10));
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

unint64_t sub_2296F7AE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_2295404B0(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_229543C5C(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        swift_dynamicCast();
        sub_229543C5C(&v25, v27);
        sub_229543C5C(v27, v28);
        sub_229543C5C(v28, &v26);
        result = sub_229543DBC(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_229543C5C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_229543C5C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2296F7D74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_229543C5C(&v25, v27);
        sub_229543C5C(v27, v28);
        sub_229543C5C(v28, &v26);
        result = sub_229543DBC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_229543C5C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_229543C5C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2296F7FBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        swift_dynamicCast();
        sub_229543C5C(&v25, v27);
        sub_229543C5C(v27, v28);
        sub_229543C5C(v28, &v26);
        result = sub_229543DBC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_229543C5C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_229543C5C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_2296F8234(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE10, &qword_22A577C90);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_22A4DDBDC();
        v21 = sub_229543DBC(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2296F8418(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE10, &qword_22A577C90);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_22A4DDB3C();
        v21 = sub_229543DBC(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2296F8604()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

id sub_2296F8738()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v6 = v0;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v11;
    v12 = [v6 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(v19, v20, &v21);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_229538000, v7, v8, "%s Unconfiguring matter accessory", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v2 + 8))(v5, v18);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  result = [v6 useMatterPlugin];
  if (result)
  {
    return [v6 setMatterDevice_];
  }

  return result;
}

void sub_2296F89D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v112 = &v105[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v105[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v105[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v105[-v13];
  sub_2296F8604();
  v15 = v0;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  v18 = os_log_type_enabled(v16, v17);
  v110 = v9;
  v111 = v2;
  v109 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v119 = v108;
    *v19 = 136315138;
    aBlock = 91;
    v114 = 0xE100000000000000;
    v20 = [v15 logIdentifier];
    v21 = sub_22A4DD5EC();
    v22 = v15;
    v23 = ObjectType;
    v24 = v3;
    v26 = v25;

    MEMORY[0x22AAD08C0](v21, v26);
    v3 = v24;
    ObjectType = v23;
    v15 = v22;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v27 = sub_2295A3E30(aBlock, v114, &v119);

    *(v19 + 4) = v27;
    _os_log_impl(&dword_229538000, v16, v17, "%s Configuring matter accessory", v19, 0xCu);
    v28 = v108;
    __swift_destroy_boxed_opaque_existential_0(v108);
    v2 = v111;
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  v29 = *(v3 + 8);
  (v29)(v14, v2);
  v30 = [v15 accessory];
  v31 = v112;
  if (!v30)
  {
    goto LABEL_17;
  }

  v32 = v30;
  v33 = [v30 home];
  if (!v33)
  {
    v34 = v32;
LABEL_16:

LABEL_17:
    sub_2296F8604();
    v45 = v15;
    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v46, v47))
    {

      (v29)(v31, v2);
      return;
    }

    v48 = swift_slowAlloc();
    v108 = v29;
    v49 = v48;
    v50 = swift_slowAlloc();
    v119 = v50;
    *v49 = 136315138;
    aBlock = 91;
    v114 = 0xE100000000000000;
    v51 = v31;
    v52 = [v45 logIdentifier];
    v53 = sub_22A4DD5EC();
    v55 = v54;

    MEMORY[0x22AAD08C0](v53, v55);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v56 = sub_2295A3E30(aBlock, v114, &v119);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_229538000, v46, v47, "%s Unable to find accessory or home", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    MEMORY[0x22AAD4E50](v49, -1, -1);

    v57 = v51;
    goto LABEL_19;
  }

  v34 = v33;
  v35 = [v15 workQueue];
  if (!v35)
  {

    goto LABEL_16;
  }

  v112 = v35;
  if ([v32 isPrimary])
  {
    v36 = &selRef__wirelessPowerOn_;
    if ([v15 useMatterPlugin])
    {
      v37 = [v15 matterDevice];
      if (!v37)
      {
        v108 = v29;
        v38 = [v34 matterDeviceController];
        if (v38)
        {
          v37 = v38;
          v39 = [v32 matterNodeID];
          v40 = [objc_opt_self() deviceWithNodeID:v39 controller:v37];

          v109 = v15;
          [v15 setMatterDevice_];

          v41 = [objc_opt_self() deviceCapabilities];
          LODWORD(v40) = [v41 isResidentCapable];

          if (v40)
          {
            v42 = v109;
            v43 = [v109 matterDevice];
            if (v43)
            {
              v44 = v43;
              [v43 addDelegate:v42 queue:v112];
            }
          }

          v29 = v108;
          v36 = &selRef__wirelessPowerOn_;
          goto LABEL_24;
        }

        v91 = v109;
        sub_2296F8604();
        v92 = v15;
        v93 = v34;
        v94 = sub_22A4DD05C();
        v95 = sub_22A4DDCEC();

        if (!os_log_type_enabled(v94, v95))
        {

          v57 = v91;
          v58 = v2;
          goto LABEL_20;
        }

        v96 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v119 = v110;
        *v96 = 136315394;
        aBlock = 91;
        v114 = 0xE100000000000000;
        v97 = [v92 logIdentifier];
        v98 = sub_22A4DD5EC();
        v100 = v99;

        v106 = v95;
        MEMORY[0x22AAD08C0](v98, v100);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v101 = sub_2295A3E30(aBlock, v114, &v119);

        *(v96 + 4) = v101;
        *(v96 + 12) = 2112;
        *(v96 + 14) = v93;
        v102 = v107;
        *v107 = v34;
        v103 = v93;
        _os_log_impl(&dword_229538000, v94, v106, "%s Unable to get controller for home %@", v96, 0x16u);
        sub_22953EAE4(v102, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v102, -1, -1);
        v104 = v110;
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x22AAD4E50](v104, -1, -1);
        MEMORY[0x22AAD4E50](v96, -1, -1);

        v57 = v109;
LABEL_19:
        v58 = v111;
LABEL_20:
        (v108)(v57, v58);
        return;
      }
    }

    else
    {
      v59 = [v32 accessoryServer];
      if (!v59)
      {
        goto LABEL_25;
      }

      v37 = v59;
      [v59 setHmdHAPAccessoryDelegate_];
    }

LABEL_24:

LABEL_25:
    v60 = [v32 v36[246]];
    if (v60)
    {
      v61 = v60;
      [v60 setChipDelegate_];
    }
  }

  v62 = [v15 matterDevice];
  if (v62)
  {
  }

  else
  {
    v63 = v110;
    sub_2296F8604();
    v109 = v15;
    v64 = v15;
    v65 = sub_22A4DD05C();
    v66 = sub_22A4DDCEC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v108 = v29;
      v68 = v67;
      v107 = swift_slowAlloc();
      v119 = v107;
      *v68 = 136315138;
      aBlock = 91;
      v114 = 0xE100000000000000;
      v69 = [v64 logIdentifier];
      v106 = v66;
      v70 = v69;
      v71 = sub_22A4DD5EC();
      v73 = v72;

      MEMORY[0x22AAD08C0](v71, v73);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v74 = sub_2295A3E30(aBlock, v114, &v119);

      *(v68 + 4) = v74;
      _os_log_impl(&dword_229538000, v65, v106, "%s Failed to find or create MTRDevice", v68, 0xCu);
      v75 = v107;
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x22AAD4E50](v75, -1, -1);
      MEMORY[0x22AAD4E50](v68, -1, -1);

      (v108)(v110, v111);
    }

    else
    {

      (v29)(v63, v111);
    }

    v15 = v109;
  }

  if ([v34 isCurrentDevicePrimaryResident])
  {
    v76 = objc_opt_self();
    v77 = [v76 defaultCenter];
    [v77 removeObserver:v15 name:@"HMDHomeNameChangedNotification" object:v34];

    v78 = [v76 defaultCenter];
    [v78 addObserver:v15 selector:sel_handleHomeNameChangedNotification_ name:@"HMDHomeNameChangedNotification" object:v34];
  }

  if ([v32 isPrimary])
  {
    v79 = [v32 chipStorage];
    v80 = [v79 pairings];

    if (v80)
    {
    }

    else
    {
      v81 = [v34 name];
      v82 = sub_22A4DD5EC();
      v84 = v83;

      v85 = swift_allocObject();
      *(v85 + 16) = v15;
      *(v85 + 24) = ObjectType;
      v86 = v15;
      sub_2296F9DBC(v82, v84, sub_2297080D8, v85);
    }
  }

  v87 = [v15 fetchConfiguration];
  v88 = swift_allocObject();
  *(v88 + 16) = v15;
  *(v88 + 24) = ObjectType;
  v117 = sub_2297080D0;
  v118 = v88;
  aBlock = MEMORY[0x277D85DD0];
  v114 = 1107296256;
  v115 = sub_229582E94;
  v116 = &block_descriptor_62;
  v89 = _Block_copy(&aBlock);
  v90 = v15;

  [v87 getResultWithCompletion_];
  _Block_release(v89);
}

void sub_2296F9624(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_2296F8604();
    v10 = a1;
    v11 = a2;
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = a2;
      v15 = v14;
      v26 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315394;
      v29 = 91;
      v30 = 0xE100000000000000;
      v31 = v16;
      v17 = [v11 logIdentifier];
      v18 = sub_22A4DD5EC();
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(v29, v30, &v31);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v23;
      v24 = v26;
      *v26 = v23;
      _os_log_impl(&dword_229538000, v12, v13, "%s Failed to update fabric label with error: %@", v15, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v25 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }

  sub_2296F98DC();
}

void sub_2296F98DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v44[-v8];
  v10 = [v0 accessory];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [v10 accessoryServer];
  if (!v12)
  {

LABEL_6:
    sub_2296F8604();
    v29 = v0;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55 = v33;
      *v32 = 136315138;
      aBlock = 91;
      v50 = 0xE100000000000000;
      v34 = [v29 logIdentifier];
      v48 = v2;
      v35 = v34;
      v36 = sub_22A4DD5EC();
      v38 = v37;

      MEMORY[0x22AAD08C0](v36, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(aBlock, v50, &v55);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_229538000, v30, v31, "%s Unable to find accessory server", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      (*(v3 + 8))(v7, v48);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    return;
  }

  v13 = v12;
  sub_2296F8604();
  v14 = v0;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = v17;
    v47 = swift_slowAlloc();
    v55 = v47;
    *v17 = 136315138;
    aBlock = 91;
    v50 = 0xE100000000000000;
    v18 = [v14 logIdentifier];
    v45 = v16;
    v19 = v18;
    v20 = sub_22A4DD5EC();
    v48 = v2;
    v21 = v20;
    v22 = v14;
    v23 = v13;
    v25 = v24;

    MEMORY[0x22AAD08C0](v21, v25);
    v13 = v23;
    v14 = v22;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(aBlock, v50, &v55);

    v27 = v46;
    *(v46 + 1) = v26;
    _os_log_impl(&dword_229538000, v15, v45, "%s Fetching matter pairings", v27, 0xCu);
    v28 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);

    (*(v3 + 8))(v9, v48);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  v40 = swift_allocObject();
  v40[2] = v14;
  v40[3] = v11;
  v40[4] = ObjectType;
  v53 = sub_2297080E0;
  v54 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_229798BA4;
  v52 = &block_descriptor_71;
  v41 = _Block_copy(&aBlock);
  v42 = v14;
  v43 = v11;

  [v13 fetchPairingsWithCompletionHandler_];
  _Block_release(v41);
}

void sub_2296F9DBC(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v60 = a1;
  swift_getObjectType();
  v8 = sub_22A4DD07C();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = [v4 accessory];
  if (v15 && (v16 = v15, v17 = [v15 accessoryServer], v16, v17))
  {
    sub_2296F8604();
    v18 = v4;

    v19 = v17;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v57 = v21;
      v23 = v22;
      v56 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68 = v58;
      *v23 = 136315650;
      aBlock = 91;
      v63 = 0xE100000000000000;
      v24 = [v18 logIdentifier];
      v25 = sub_22A4DD5EC();
      v59 = v8;
      v26 = a4;
      v27 = v25;
      v54 = v17;
      v28 = a2;
      v29 = v19;
      v30 = a3;
      v32 = v31;

      v55 = v20;
      v33 = v27;
      a4 = v26;
      MEMORY[0x22AAD08C0](v33, v32);
      a3 = v30;
      v19 = v29;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(aBlock, v63, &v68);

      *(v23 + 4) = v34;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(v60, v28, &v68);
      *(v23 + 22) = 2112;
      *(v23 + 24) = v29;
      v35 = v56;
      *v56 = v54;
      v36 = v29;
      v37 = v55;
      _os_log_impl(&dword_229538000, v55, v57, "%s Updating fabric label to %s for accessory server %@", v23, 0x20u);
      sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      v38 = v58;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (*(v61 + 8))(v14, v59);
    }

    else
    {

      (*(v61 + 8))(v14, v8);
    }

    v51 = sub_22A4DD5AC();
    v66 = a3;
    v67 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_2295AAF60;
    v65 = &block_descriptor_20;
    v52 = _Block_copy(&aBlock);

    [v19 updateFabricLabel:v51 completionHandler:v52];
    _Block_release(v52);
  }

  else
  {
    v59 = v8;
    sub_2296F8604();
    v39 = v4;

    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = a3;
      v44 = v43;
      v68 = v43;
      *v42 = 136315394;
      aBlock = 91;
      v63 = 0xE100000000000000;
      v45 = [v39 logIdentifier];
      v46 = sub_22A4DD5EC();
      v48 = v47;

      MEMORY[0x22AAD08C0](v46, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(aBlock, v63, &v68);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2295A3E30(v60, a2, &v68);
      _os_log_impl(&dword_229538000, v40, v41, "%s Unable to find accessory server to update fabric label to %s", v42, 0x16u);
      swift_arrayDestroy();
      v50 = v44;
      a3 = v58;
      MEMORY[0x22AAD4E50](v50, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);
    }

    (*(v61 + 8))(v12, v59);
    v51 = [objc_opt_self() hmErrorWithCode_];
    a3();
  }
}

void sub_2296FA3C4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v12 = a3;
  v13 = a2;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  if (os_log_type_enabled(v14, v15))
  {
    v35 = v7;
    v36 = a4;
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315394;
    v37 = v17;
    aBlock = 91;
    v39 = 0xE100000000000000;
    v18 = [v12 logIdentifier];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v22 = sub_2295A3E30(aBlock, v39, &v37);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2112;
    if (a2)
    {
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v16 + 14) = v24;
    v26 = v33;
    *v33 = v25;
    _os_log_impl(&dword_229538000, v14, v15, "%s Did fetch configuration with error: %@", v16, 0x16u);
    sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    v27 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);

    (*(v8 + 8))(v11, v35);
    a4 = v36;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v28 = sub_2296FA740();
  v29 = swift_allocObject();
  *(v29 + 16) = v12;
  *(v29 + 24) = a4;
  v42 = sub_2297080EC;
  v43 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_2296FB024;
  v41 = &block_descriptor_77;
  v30 = _Block_copy(&aBlock);
  v31 = v12;

  [v28 getResultWithCompletion_];
  _Block_release(v30);
}

id sub_2296FA740()
{
  v1 = v0;
  v66 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v54 - v5;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = [v0 accessory];
  if (v15 && (v15, (v16 = [v0 matterDevice]) != 0))
  {
    v17 = v16;
    v62 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v63 = MEMORY[0x277D17450];
    *&v61 = v17;
    sub_229557188(&v61, &v64);
    v60 = 0;
    v18 = [objc_opt_self() futureWithPromise_];
    v58 = ObjectType;
    sub_2296F8604();
    v19 = v1;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v55 = v7;
      v23 = v22;
      v24 = swift_slowAlloc();
      v57 = v18;
      v25 = v24;
      v59 = v24;
      *v23 = 136315138;
      *&v61 = 91;
      *(&v61 + 1) = 0xE100000000000000;
      v26 = [v19 logIdentifier];
      v27 = sub_22A4DD5EC();
      v56 = v19;
      v28 = v27;
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(v61, *(&v61 + 1), &v59);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_229538000, v20, v21, "%s Reading and processing attributes", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v32 = v25;
      v18 = v57;
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (*(v8 + 8))(v14, v55);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    v48 = sub_22A4DD9DC();
    (*(*(v48 - 8) + 56))(v6, 1, 1, v48);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = v60;
    sub_22957F1C4(&v64, &v61);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v51[4] = v49;
    v51[5] = v50;
    sub_229557188(&v61, (v51 + 6));
    v51[11] = v58;
    v52 = v50;
    sub_22957F3C0(0, 0, v6, &unk_22A580968, v51);

    __swift_destroy_boxed_opaque_existential_0(&v64);

    v53 = *MEMORY[0x277D85DE8];
    return v18;
  }

  else
  {
    sub_2296F8604();
    v33 = v0;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v61 = v37;
      *v36 = 136315138;
      v64 = 91;
      v65 = 0xE100000000000000;
      v38 = [v33 logIdentifier];
      v39 = sub_22A4DD5EC();
      v41 = v40;

      MEMORY[0x22AAD08C0](v39, v41);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v42 = sub_2295A3E30(v64, v65, &v61);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_229538000, v34, v35, "%s Matter device is not available", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    v43 = [objc_opt_self() hmfErrorWithCode_];
    v44 = sub_22A4DB3DC();

    v45 = [objc_opt_self() futureWithError_];
    v46 = *MEMORY[0x277D85DE8];
    return v45;
  }
}

uint64_t sub_2296FAD7C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
    sub_2296F8604();
    v12 = a2;
    v13 = a3;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315394;
      v30 = 91;
      v31 = 0xE100000000000000;
      v32 = v17;
      v18 = [v13 logIdentifier];
      v19 = sub_22A4DD5EC();
      v21 = v20;

      MEMORY[0x22AAD08C0](v19, v21);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v22 = sub_2295A3E30(v30, v31, &v32);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      v25 = v28;
      *v28 = v24;
      _os_log_impl(&dword_229538000, v14, v15, "%s Failed to read and process attributes with error: %@", v16, 0x16u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_2296FB024(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_2296FB0EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v53[-v12];
  v57 = ObjectType;
  sub_2296F8604();
  v14 = v3;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  v17 = os_log_type_enabled(v15, v16);
  v58 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v65 = v55;
    *v18 = 136315138;
    aBlock = 91;
    v60 = 0xE100000000000000;
    v19 = [v14 logIdentifier];
    v20 = sub_22A4DD5EC();
    v54 = v16;
    v21 = v20;
    v22 = a2;
    v23 = v11;
    v24 = v6;
    v26 = v25;

    MEMORY[0x22AAD08C0](v21, v26);
    v6 = v24;
    v11 = v23;
    a2 = v22;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v27 = sub_2295A3E30(aBlock, v60, &v65);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_229538000, v15, v54, "%s Removing all matter pairings", v18, 0xCu);
    v28 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    v29 = v18;
    v7 = v58;
    MEMORY[0x22AAD4E50](v29, -1, -1);
  }

  v30 = *(v7 + 8);
  v30(v13, v6);
  v31 = [v14 accessory];
  if (v31 && (v32 = v31, v33 = [v31 accessoryServer], v32, v33))
  {
    v34 = swift_allocObject();
    v36 = v56;
    v35 = v57;
    v34[2] = v14;
    v34[3] = v36;
    v34[4] = a2;
    v34[5] = v35;
    v63 = sub_2297080C4;
    v64 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_2295AAF60;
    v62 = &block_descriptor_56;
    v37 = _Block_copy(&aBlock);
    v38 = v14;

    [v33 removeAllPairingsWithCompletionHandler_];
    _Block_release(v37);
  }

  else
  {
    sub_2296F8604();
    v39 = v14;
    v40 = sub_22A4DD05C();
    v41 = v11;
    v42 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136315138;
      aBlock = 91;
      v60 = 0xE100000000000000;
      v45 = [v39 logIdentifier];
      v46 = sub_22A4DD5EC();
      v57 = v6;
      v47 = v46;
      v49 = v48;

      MEMORY[0x22AAD08C0](v47, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(aBlock, v60, &v65);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_229538000, v40, v42, "%s Unable to find accessory server", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      v51 = v57;
      v52 = v41;
    }

    else
    {

      v52 = v41;
      v51 = v6;
    }

    v30(v52, v51);
  }
}

void sub_2296FB5D0(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  if (a1)
  {
    v51 = v8;
    v16 = a1;
    sub_2296F8604();
    v17 = a1;
    v18 = a2;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v50 = a4;
      v22 = v21;
      v48 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136315394;
      v52 = 91;
      v53 = 0xE100000000000000;
      v54 = v23;
      v24 = [v18 logIdentifier];
      v25 = sub_22A4DD5EC();
      v26 = a3;
      v28 = v27;

      MEMORY[0x22AAD08C0](v25, v28);
      a3 = v26;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(v52, v53, &v54);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2112;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v31;
      v32 = v48;
      *v48 = v31;
      _os_log_impl(&dword_229538000, v19, v20, "%s Failed to remove all matter pairings with error: %@", v22, 0x16u);
      sub_22953EAE4(v32, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      v33 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    (*(v9 + 8))(v15, v51);
    v34 = [objc_opt_self() hmErrorWithCode_];
    a3();
  }

  else
  {
    sub_2296F8604();
    v35 = a2;
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCCC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50 = a4;
      v40 = v39;
      *v38 = 136315138;
      v52 = 91;
      v53 = 0xE100000000000000;
      v54 = v39;
      v41 = [v35 logIdentifier];
      v42 = sub_22A4DD5EC();
      v51 = v8;
      v43 = a3;
      v45 = v44;

      MEMORY[0x22AAD08C0](v42, v45);
      a3 = v43;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v46 = sub_2295A3E30(v52, v53, &v54);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_229538000, v36, v37, "%s Successfully removed all matter pairings", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);

      (*(v9 + 8))(v13, v51);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    (a3)(0);
  }
}

uint64_t sub_2296FBA98(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = [v1 accessory];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 home];
  if (!v13)
  {

LABEL_19:
    sub_2296F8604();
    v39 = v1;
    v40 = a1;
    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCEC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v64 = v4;
      v45 = v44;
      v46 = swift_slowAlloc();
      *v43 = 136315394;
      v65 = 91;
      v66 = 0xE100000000000000;
      v67 = v46;
      v47 = [v39 logIdentifier];
      v48 = sub_22A4DD5EC();
      v63 = v3;
      v50 = v49;

      MEMORY[0x22AAD08C0](v48, v50);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v51 = sub_2295A3E30(v65, v66, &v67);

      *(v43 + 4) = v51;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v45 = v40;
      v52 = v40;
      _os_log_impl(&dword_229538000, v41, v42, "%s Unable to find accessory for server: %@", v43, 0x16u);
      sub_22953EAE4(v45, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      (*(v64 + 8))(v8, v63);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    return 0;
  }

  v14 = v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (shouldCreateHybridMatterAccessoryFromServer(a1, v14) & 1) != 0)
  {
    LODWORD(v63) = 0;
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || (shouldCreateNativeMatterAccessoryFromServer(a1, v14) & 1) == 0)
    {

      return 0;
    }

    LODWORD(v63) = 1;
  }

  v15 = [v12 transactionWithObjectChangeType_];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  sub_2296F8604();
  v18 = v1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();

  v62 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v64 = v4;
    v22 = v21;
    v58 = v21;
    v23 = swift_slowAlloc();
    v60 = v23;
    *v22 = 136315394;
    v65 = 91;
    v66 = 0xE100000000000000;
    v67 = v23;
    v24 = [v18 logIdentifier];
    v59 = v19;
    v25 = v24;
    v26 = sub_22A4DD5EC();
    v61 = v15;
    v27 = v26;
    v28 = v18;
    v30 = v29;

    MEMORY[0x22AAD08C0](v27, v30);
    v18 = v28;
    v31 = v63;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v32 = sub_2295A3E30(v65, v66, &v67);

    v33 = v58;
    *(v58 + 4) = v32;
    *(v33 + 12) = 2080;
    if (v31)
    {
      v34 = 0x65766974614ELL;
    }

    else
    {
      v34 = 0x7474614D2B504148;
    }

    if (v31)
    {
      v35 = 0xE600000000000000;
    }

    else
    {
      v35 = 0xEA00000000007265;
    }

    v36 = sub_2295A3E30(v34, v35, &v67);

    *(v33 + 14) = v36;
    v15 = v61;
    v37 = v59;
    _os_log_impl(&dword_229538000, v59, v62, "%s Found a matter accessory that should be %s accessory: %%@. Updating its native matter flag", v33, 0x16u);
    v38 = v60;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v33, -1, -1);

    (*(v64 + 8))(v10, v3);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  v54 = sub_22A4DD8AC();
  [v17 setSupportsNativeMatter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_22A576190;
  *(v55 + 32) = v17;
  sub_229562F68(0, &qword_27D87FD80, off_278666060);
  v56 = v15;
  v57 = sub_22A4DD81C();

  return 1;
}

void sub_2296FC184(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v80[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v67[-v17];
  v19 = [v5 accessory];
  if (!v19)
  {
LABEL_14:
    v66 = *MEMORY[0x277D85DE8];
    return;
  }

  v77 = v19;
  if ([v19 isPrimary])
  {
    v76 = a1;
    v74 = a2;
    v71 = ObjectType;
    sub_2296F8604();
    v20 = v5;

    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCDC();

    v23 = os_log_type_enabled(v21, v22);
    v75 = v12;
    v70 = v20;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = v11;
      v80[0] = v72;
      *v24 = 136315394;
      v78 = 91;
      v79 = 0xE100000000000000;
      v25 = [v20 logIdentifier];
      v26 = sub_22A4DD5EC();
      v27 = a4;
      v28 = v16;
      v29 = a3;
      v31 = v30;

      MEMORY[0x22AAD08C0](v26, v31);
      a3 = v29;
      v16 = v28;
      a4 = v27;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v78, v79, v80);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2295A3E30(a3, v27, v80);
      _os_log_impl(&dword_229538000, v21, v22, "%s Saving public key for accessory: %s", v24, 0x16u);
      v33 = v72;
      swift_arrayDestroy();
      v11 = v73;
      MEMORY[0x22AAD4E50](v33, -1, -1);
      v34 = v24;
      v12 = v75;
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    v72 = *(v12 + 8);
    v72(v18, v11);
    v35 = [objc_opt_self() systemStore];
    v36 = v74;
    v37 = sub_22A4DB61C();
    v38 = sub_22A4DD5AC();
    v78 = 0;
    v39 = [v35 savePublicKey:v37 forAccessoryName:v38 error:&v78];

    if (v39)
    {
      v40 = v78;
    }

    else
    {
      v69 = a3;
      v43 = v78;
      v44 = v36;
      v45 = sub_22A4DB3EC();

      swift_willThrow();
      sub_2296F8604();
      v46 = v70;

      v47 = v76;
      sub_22956C148(v76, v44);
      v48 = v45;
      v49 = sub_22A4DD05C();
      v50 = sub_22A4DDCCC();

      sub_2295798D4(v47, v44);

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v80[0] = v71;
        *v51 = 136315906;
        v78 = 91;
        v79 = 0xE100000000000000;
        v52 = [v46 logIdentifier];
        v53 = sub_22A4DD5EC();
        v73 = v11;
        v55 = v54;

        v68 = v50;
        MEMORY[0x22AAD08C0](v53, v55);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v56 = sub_2295A3E30(v78, v79, v80);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2080;
        v57 = sub_22A4DB5AC();
        v59 = sub_2295A3E30(v57, v58, v80);

        *(v51 + 14) = v59;
        *(v51 + 22) = 2080;
        *(v51 + 24) = sub_2295A3E30(v69, a4, v80);
        *(v51 + 32) = 2112;
        v60 = v45;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 34) = v61;
        v62 = v70;
        *v70 = v61;
        _os_log_impl(&dword_229538000, v49, v68, "%s Failed to save public key: %s for username: %s with error: %@", v51, 0x2Au);
        sub_22953EAE4(v62, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v62, -1, -1);
        v63 = v71;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v63, -1, -1);
        MEMORY[0x22AAD4E50](v51, -1, -1);

        v64 = v16;
        v65 = v73;
      }

      else
      {

        v64 = v16;
        v65 = v11;
      }

      v72(v64, v65);
    }

    goto LABEL_14;
  }

  v41 = *MEMORY[0x277D85DE8];
  v42 = v77;
}

void sub_2296FC900()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v9 = [v0 accessory];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 home];
  if (!v11)
  {
    v14 = v10;
LABEL_8:

LABEL_9:
    sub_2296F8604();
    v15 = v0;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v49 = 91;
      v50 = 0xE100000000000000;
      v51 = v19;
      v20 = [v15 logIdentifier];
      v21 = sub_22A4DD5EC();
      v23 = v22;

      MEMORY[0x22AAD08C0](v21, v23);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v24 = sub_2295A3E30(v49, v50, &v51);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_229538000, v16, v17, "%s Found no accessory or home", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return;
  }

  v48 = v11;
  v12 = [objc_msgSend(v11 featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v12)
  {

    v14 = v48;
    goto LABEL_8;
  }

  if ([v10 convertingMatterAccessory])
  {

    v13 = v48;
LABEL_15:

    return;
  }

  v25 = [v10 transactionWithObjectChangeType_];
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    [v10 populateModelObject:v26 version:4];
    v28 = sub_22A4DD8AC();
    [v27 setSupportsNativeMatter_];

    [v10 setConvertingMatterAccessory_];
    v47 = v10;
    sub_2297A4808(v47, v27);

    v13 = v47;
    goto LABEL_15;
  }

  sub_2296F8604();
  v29 = v10;
  v30 = v0;
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCEC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v34;
    *v33 = 136315394;
    v49 = 91;
    v50 = 0xE100000000000000;
    v51 = v34;
    v35 = [v30 logIdentifier];
    v36 = sub_22A4DD5EC();
    v38 = v37;

    MEMORY[0x22AAD08C0](v36, v38);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v39 = sub_2295A3E30(v49, v50, &v51);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    v40 = [v29 shortDescription];
    v41 = sub_22A4DD5EC();
    v43 = v42;

    v44 = sub_2295A3E30(v41, v43, &v51);

    *(v33 + 14) = v44;
    _os_log_impl(&dword_229538000, v31, v32, "%s Failed to create accessory model for %s", v33, 0x16u);
    v45 = v47;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v45, -1, -1);
    MEMORY[0x22AAD4E50](v33, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v8, v1);
}

void sub_2296FCEF0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 accessory];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 accessoryServer];

    if (v7)
    {
      v9[4] = a1;
      v9[5] = a2;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_2296FCFEC;
      v9[3] = &block_descriptor_46;
      v8 = _Block_copy(v9);

      [v7 setCHIPReportHandler_];
      _Block_release(v8);
    }
  }
}

uint64_t sub_2296FCFEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v3 = sub_22A4DD83C();

  v2(v3);
}

uint64_t sub_2296FD0A0(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_2296FD134(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v3 = sub_22A4DD81C();
  (*(a2 + 16))(a2, v3);
}

id sub_2296FD318(unint64_t a1)
{
  v2 = v1;
  v50[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 accessory];
  if (v9 && (v10 = v9, v11 = [v9 home], v10, v11) && (v12 = objc_msgSend(v11, sel_backingStore), v11, v12))
  {
    v50[0] = 0;
    v43 = [objc_opt_self() futureWithPromise_];
    v13 = objc_opt_self();
    v14 = @"AccessoryUpdated";
    v15 = [v13 defaultXPCOptions];
    v16 = [v12 transaction:v14 options:v15];

    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v18 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x22AAD13F0](v18, a1);
        }

        else
        {
          if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v19 = *(a1 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        [v16 add_];

        ++v18;
        if (v21 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
    v37 = v50[0];
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v48 = sub_229708030;
    v49 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2295AAF60;
    v47 = &block_descriptor_31;
    v39 = _Block_copy(&aBlock);
    v40 = v37;

    [v16 run_];

    _Block_release(v39);
    v41 = *MEMORY[0x277D85DE8];
    return v43;
  }

  else
  {
    sub_2296F8604();
    v22 = v2;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50[0] = v26;
      *v25 = 136315138;
      aBlock = 91;
      v45 = 0xE100000000000000;
      v27 = [v22 logIdentifier];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(aBlock, v45, v50);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_229538000, v23, v24, "%s No home is available", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v32 = [objc_opt_self() hmfErrorWithCode_];
    v33 = sub_22A4DB3DC();

    v34 = [objc_opt_self() futureWithError_];
    v35 = *MEMORY[0x277D85DE8];
    return v34;
  }
}

void sub_2296FD840(void *a1, id a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      v5 = sub_22A4DB3DC();
      [a2 rejectWithError_];
    }
  }

  else if (a2)
  {

    [a2 fulfillWithValue_];
  }
}

void sub_2296FD980(uint64_t *a1, void *a2)
{
  v3 = v2;
  v172 = a2;
  v173 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v159 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v171 = (&v159 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v159 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v159 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v159 - v22;
  v24 = [v3 accessory];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 home];
    if (v26)
    {
      v163 = v18;
      v168 = ObjectType;
      v162 = v13;
      v164 = v26;
      v27 = [v25 chipStorage];
      [v27 copy];
      sub_22A4DE01C();
      swift_unknownObjectRelease();
      sub_229562F68(0, &qword_27D87FD58, off_278666070);
      v28 = swift_dynamicCast();
      v29 = v176[0];
      if (!v28)
      {
        v29 = 0;
      }

      v169 = v29;
      v30 = [v27 updateUsingAccessoryModel_];
      v166 = v6;
      v167 = v5;
      v170 = v3;
      if (v30)
      {
        if (v169)
        {
          v31 = [v169 pairings];
          if (v31)
          {
            v32 = v31;
            sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
            sub_229707F80();
            v33 = sub_22A4DDB6C();

            v34 = [v27 pairings];
            if (v34)
            {
              v35 = v34;
              v36 = sub_22A4DDB6C();

              if ((sub_2296CC298(v33, v36) & 1) == 0)
              {
                sub_2296FEBEC(v36, v33);
              }
            }
          }
        }

        v47 = v172;
        IsCurrentDevice = HMDBackingStoreTransactionSourceIsCurrentDevice([v172 source]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FD60, &qword_22A580938);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 40) = v50;
        *(inited + 48) = IsCurrentDevice;
        v51 = sub_22956B538(inited);
        swift_setDeallocating();
        sub_22953EAE4(inited + 32, &qword_27D87FD68, &qword_22A580940);
        v52 = v25;
        sub_2296F7D74(v51);

        v53 = sub_22A4DD47C();

        logAndPostNotification(@"HMDAccessoryCHIPStorageUpdatedNotification", v52, v53);

        [v47 markChanged];
        v5 = v167;
        v3 = v170;
      }

      v165 = v27;
      v54 = [v173 chipVendorID];
      if (v54)
      {
        v55 = [v25 matterVendorID];
        if (v55 && (v56 = v55, v57 = [v55 unsignedLongLongValue], v56, v57))
        {
          sub_2296F8604();
          v58 = v3;
          v59 = v54;
          v60 = sub_22A4DD05C();
          v61 = sub_22A4DDCCC();

          LODWORD(v161) = v61;
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v176[0] = v63;
            *v62 = 136315650;
            v174 = 91;
            v175 = 0xE100000000000000;
            v64 = [v58 logIdentifier];
            v159 = v60;
            v65 = v64;
            v66 = sub_22A4DD5EC();
            v68 = v67;

            MEMORY[0x22AAD08C0](v66, v68);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v69 = sub_2295A3E30(v174, v175, v176);

            *(v62 + 4) = v69;
            v3 = v170;
            *(v62 + 12) = 2112;
            *(v62 + 14) = v59;
            v70 = v160;
            *v160 = v54;
            *(v62 + 22) = 2048;
            *(v62 + 24) = v57;
            v71 = v59;
            v59 = v159;
            _os_log_impl(&dword_229538000, v159, v161, "%s Matter accessory vendorID cannot be set to %@, is already set to: %llu", v62, 0x20u);
            sub_22953EAE4(v70, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v70, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v63);
            MEMORY[0x22AAD4E50](v63, -1, -1);
            v72 = v62;
            v5 = v167;
            MEMORY[0x22AAD4E50](v72, -1, -1);
          }

          else
          {
          }

          (*(v166 + 8))(v23, v5);
          LODWORD(v54) = 0;
        }

        else
        {
          sub_2296F8604();
          v73 = v3;
          v74 = v54;
          v75 = sub_22A4DD05C();
          v76 = sub_22A4DDCCC();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            v176[0] = v161;
            *v77 = 136315394;
            v174 = 91;
            v175 = 0xE100000000000000;
            v78 = [v73 logIdentifier];
            v79 = sub_22A4DD5EC();
            v81 = v80;

            MEMORY[0x22AAD08C0](v79, v81);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v82 = sub_2295A3E30(v174, v175, v176);

            *(v77 + 4) = v82;
            *(v77 + 12) = 2112;
            *(v77 + 14) = v74;
            v83 = v160;
            *v160 = v54;
            v84 = v74;
            _os_log_impl(&dword_229538000, v75, v76, "%s Updating Matter accessory vendorID to %@", v77, 0x16u);
            sub_22953EAE4(v83, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v83, -1, -1);
            v85 = v161;
            __swift_destroy_boxed_opaque_existential_0(v161);
            MEMORY[0x22AAD4E50](v85, -1, -1);
            v86 = v77;
            v5 = v167;
            MEMORY[0x22AAD4E50](v86, -1, -1);
          }

          (*(v166 + 8))(v21, v5);
          [v25 setMatterVendorID_];
          [v172 markChanged];

          LODWORD(v54) = 1;
          v3 = v170;
        }
      }

      v87 = [v173 chipProductID];
      v88 = &selRef_markChangedForMessage_triggerModel_;
      if (v87)
      {
        v89 = v87;
        v90 = [v25 matterProductID];
        if (!v90 || (v91 = v90, v92 = [v90 unsignedLongLongValue], v91, !v92))
        {
          v108 = v171;
          sub_2296F8604();
          v109 = v3;
          v110 = v89;
          v111 = sub_22A4DD05C();
          v112 = sub_22A4DDCCC();

          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v176[0] = v163;
            *v113 = 136315394;
            v174 = 91;
            v175 = 0xE100000000000000;
            v115 = [v109 logIdentifier];
            v116 = sub_22A4DD5EC();
            v118 = v117;

            MEMORY[0x22AAD08C0](v116, v118);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v119 = sub_2295A3E30(v174, v175, v176);

            *(v113 + 4) = v119;
            *(v113 + 12) = 2112;
            *(v113 + 14) = v110;
            *v114 = v89;
            v120 = v110;
            _os_log_impl(&dword_229538000, v111, v112, "%s Updating Matter accessory productID to %@", v113, 0x16u);
            sub_22953EAE4(v114, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v114, -1, -1);
            v121 = v163;
            __swift_destroy_boxed_opaque_existential_0(v163);
            MEMORY[0x22AAD4E50](v121, -1, -1);
            v122 = v113;
            v88 = &selRef_markChangedForMessage_triggerModel_;
            MEMORY[0x22AAD4E50](v122, -1, -1);

            (*(v166 + 8))(v171, v167);
          }

          else
          {

            (*(v166 + 8))(v108, v167);
          }

          [v25 setMatterProductID_];
          [v172 markChanged];

          v3 = v170;
LABEL_40:
          v123 = [v25 matterVendorID];
          if (v123)
          {
            v124 = v123;
            v125 = [v123 unsignedIntValue];

            v126 = [v25 v88[163]];
            if (v126)
            {
              v127 = v126;
              v128 = [v126 unsignedIntValue];

              if (v125)
              {
                if (v128)
                {
                  logAndPostNotification(@"HMDAccessoryVendorIDProductIDUpdatedNotification", v25, 0);
                }
              }
            }
          }

LABEL_45:
          v129 = [v173 supportedLinkLayerTypes];
          v130 = v165;
          if (v129)
          {
            v131 = v129;
            v132 = [v25 supportedLinkLayerTypes];
            sub_229562F68(0, &qword_281401770, 0x277CCABB0);
            v133 = sub_22A4DDEDC();

            if ((v133 & 1) == 0)
            {
              v134 = [v25 supportedLinkLayerTypes];
              v135 = sub_22A4DDEBC();
              v136 = sub_22A4DDEDC();

              if ((v136 & 1) == 0)
              {
                v137 = v162;
                sub_2296F8604();
                v138 = v25;
                v139 = v3;
                v140 = v131;
                v141 = sub_22A4DD05C();
                v142 = sub_22A4DDCCC();

                if (os_log_type_enabled(v141, v142))
                {
                  v143 = swift_slowAlloc();
                  v144 = swift_slowAlloc();
                  v173 = swift_slowAlloc();
                  v176[0] = v173;
                  *v143 = 136315650;
                  v174 = 91;
                  v175 = 0xE100000000000000;
                  v145 = [v139 logIdentifier];
                  LODWORD(v172) = v142;
                  v146 = v145;
                  v147 = sub_22A4DD5EC();
                  v171 = v138;
                  v148 = v147;
                  v150 = v149;

                  MEMORY[0x22AAD08C0](v148, v150);

                  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                  v151 = sub_2295A3E30(v174, v175, v176);

                  *(v143 + 4) = v151;
                  *(v143 + 12) = 2112;
                  *(v143 + 14) = v140;
                  *v144 = v131;
                  *(v143 + 22) = 2112;
                  v152 = v140;
                  v153 = [v171 supportedLinkLayerTypes];
                  *(v143 + 24) = v153;
                  v144[1] = v153;
                  _os_log_impl(&dword_229538000, v141, v172, "%s Matter accessory supported link layer types cannot be set to %@, is already set to %@", v143, 0x20u);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
                  swift_arrayDestroy();
                  v154 = v144;
                  v130 = v165;
                  MEMORY[0x22AAD4E50](v154, -1, -1);
                  v155 = v173;
                  __swift_destroy_boxed_opaque_existential_0(v173);
                  MEMORY[0x22AAD4E50](v155, -1, -1);
                  MEMORY[0x22AAD4E50](v143, -1, -1);

                  (*(v166 + 8))(v162, v167);
                }

                else
                {

                  (*(v166 + 8))(v137, v167);
                }

                v3 = v170;
                goto LABEL_54;
              }

              [v25 setSupportedLinkLayerTypes_];
              [v172 markChanged];
            }
          }

LABEL_54:
          v156 = v164;
          if ([v164 isPrimaryResidentNodeReachable])
          {
            v157 = swift_allocObject();
            *(v157 + 16) = v3;
            v158 = v3;
            sub_2296FF6DC(sub_229707F70, v157);
          }

          return;
        }

        v93 = v163;
        sub_2296F8604();
        v94 = v3;
        v95 = v89;
        v96 = sub_22A4DD05C();
        v97 = sub_22A4DDCCC();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v176[0] = v171;
          *v98 = 136315650;
          v174 = 91;
          v175 = 0xE100000000000000;
          v99 = [v94 logIdentifier];
          LODWORD(v160) = v97;
          v100 = v99;
          v101 = sub_22A4DD5EC();
          v103 = v102;

          MEMORY[0x22AAD08C0](v101, v103);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v104 = sub_2295A3E30(v174, v175, v176);

          *(v98 + 4) = v104;
          *(v98 + 12) = 2112;
          *(v98 + 14) = v95;
          v105 = v161;
          *v161 = v89;
          *(v98 + 22) = 2048;
          *(v98 + 24) = v92;
          v106 = v95;
          _os_log_impl(&dword_229538000, v96, v160, "%s Matter accessory productID cannot be set to %@, is already set to: %llu", v98, 0x20u);
          sub_22953EAE4(v105, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v105, -1, -1);
          v107 = v171;
          __swift_destroy_boxed_opaque_existential_0(v171);
          MEMORY[0x22AAD4E50](v107, -1, -1);
          MEMORY[0x22AAD4E50](v98, -1, -1);

          (*(v166 + 8))(v163, v167);
        }

        else
        {

          (*(v166 + 8))(v93, v5);
        }

        v3 = v170;
        v88 = &selRef_markChangedForMessage_triggerModel_;
      }

      if (!v54)
      {
        goto LABEL_45;
      }

      goto LABEL_40;
    }
  }

  sub_2296F8604();
  v37 = v3;
  v38 = sub_22A4DD05C();
  v39 = sub_22A4DDCEC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v176[0] = v41;
    *v40 = 136315138;
    v174 = 91;
    v175 = 0xE100000000000000;
    v42 = [v37 logIdentifier];
    v43 = sub_22A4DD5EC();
    v45 = v44;

    MEMORY[0x22AAD08C0](v43, v45);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v46 = sub_2295A3E30(v174, v175, v176);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_229538000, v38, v39, "%s Unable to find accessory/home", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AAD4E50](v41, -1, -1);
    MEMORY[0x22AAD4E50](v40, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
}

void sub_2296FEBEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v107 = sub_22A4DD07C();
  v7 = *(v107 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v107);
  v11 = &v100[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v100[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v100[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v100[-v18];
  v109 = [v3 accessory];
  if (!v109)
  {
    sub_2296F8604();
    v34 = v3;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v7;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136315138;
      v111 = v39;
      v112 = 91;
      v113 = 0xE100000000000000;
      v40 = [v34 logIdentifier];
      v41 = sub_22A4DD5EC();
      v43 = v42;

      MEMORY[0x22AAD08C0](v41, v43);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v44 = sub_2295A3E30(v112, v113, &v111);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_229538000, v35, v36, "%s Unable to find accessory", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);

      (*(v37 + 8))(v11, v107);
    }

    else
    {

      (*(v7 + 8))(v11, v107);
    }

    return;
  }

  v108 = ObjectType;
  v105 = v7;
  v20 = sub_2296F73E0(a2);
  v21 = sub_2296727F4(v20);

  v22 = sub_2296F73E0(a1);
  v23 = sub_2296727F4(v22);

  if (sub_2296CBB24(v21, v23))
  {

    sub_2296F8604();
    v24 = v3;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCDC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315138;
      v111 = v28;
      v112 = 91;
      v113 = 0xE100000000000000;
      v29 = [v24 logIdentifier];
      v30 = sub_22A4DD5EC();
      v32 = v31;

      MEMORY[0x22AAD08C0](v30, v32);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v33 = sub_2295A3E30(v112, v113, &v111);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_229538000, v25, v26, "%s New pairings are the same as current pairings", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    (*(v105 + 8))(v19, v107);
    return;
  }

  if (*(v21 + 16) <= *(v23 + 16) >> 3)
  {
    v112 = v23;

    sub_22975E244(v21);
    v45 = v112;
  }

  else
  {

    v45 = sub_22975EB68(v21, v23);
  }

  if (*(v23 + 16) <= *(v21 + 16) >> 3)
  {
    v112 = v21;
    sub_22975E244(v23);

    v46 = v112;
  }

  else
  {
    v46 = sub_22975EB68(v23, v21);
  }

  v48 = sub_229707260(v47, v45);

  v50 = sub_229707260(v49, v46);

  v51 = v48 & 0xC000000000000001;
  if ((v48 & 0xC000000000000001) != 0)
  {
    if (!sub_22A4DE0EC())
    {
LABEL_19:
      if ((v50 & 0xC000000000000001) != 0)
      {
        if (sub_22A4DE0EC())
        {
          goto LABEL_21;
        }
      }

      else if (*(v50 + 16))
      {
        goto LABEL_21;
      }

      sub_2296F8604();
      v90 = v3;
      v91 = sub_22A4DD05C();
      v92 = sub_22A4DDCCC();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 136315138;
        v111 = v94;
        v112 = 91;
        v113 = 0xE100000000000000;
        v95 = [v90 logIdentifier];
        v96 = sub_22A4DD5EC();
        v98 = v97;

        MEMORY[0x22AAD08C0](v96, v98);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v99 = sub_2295A3E30(v112, v113, &v111);

        *(v93 + 4) = v99;
        _os_log_impl(&dword_229538000, v91, v92, "%s Not inserting connected ecosystems changed bulletin because all added/removed pairings are for Apple Home/System Commissioner", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x22AAD4E50](v94, -1, -1);
        MEMORY[0x22AAD4E50](v93, -1, -1);
      }

      (*(v105 + 8))(v17, v107);
      return;
    }
  }

  else if (!*(v48 + 16))
  {
    goto LABEL_19;
  }

LABEL_21:
  sub_2296F8604();
  v52 = v3;

  v53 = sub_22A4DD05C();
  v54 = sub_22A4DDCCC();

  v55 = os_log_type_enabled(v53, v54);
  v106 = v52;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v104 = v48 & 0xC000000000000001;
    v57 = v56;
    v58 = swift_slowAlloc();
    v103 = v58;
    *v57 = 136315650;
    v111 = v58;
    v112 = 91;
    v113 = 0xE100000000000000;
    v59 = [v52 logIdentifier];
    v102 = v53;
    v60 = v59;
    v61 = sub_22A4DD5EC();
    v101 = v54;
    v63 = v62;

    MEMORY[0x22AAD08C0](v61, v63);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v64 = sub_2295A3E30(v112, v113, &v111);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2080;
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    v65 = sub_22A4DDB7C();
    v67 = sub_2295A3E30(v65, v66, &v111);

    *(v57 + 14) = v67;
    *(v57 + 22) = 2080;
    v68 = sub_22A4DDB7C();
    v70 = v69;

    v71 = sub_2295A3E30(v68, v70, &v111);

    *(v57 + 24) = v71;
    v72 = v102;
    _os_log_impl(&dword_229538000, v102, v101, "%s Added pairings %s. Removed pairings: %s", v57, 0x20u);
    v73 = v103;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v73, -1, -1);
    v74 = v57;
    v51 = v104;
    MEMORY[0x22AAD4E50](v74, -1, -1);
  }

  else
  {
  }

  (*(v105 + 8))(v14, v107);
  if (v51)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    sub_22A4DDBAC();
    v76 = v112;
    v75 = v113;
    v77 = v114;
    v78 = v115;
    v79 = v116;
  }

  else
  {
    v80 = -1 << *(v48 + 32);
    v75 = v48 + 56;
    v77 = ~v80;
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v79 = v82 & *(v48 + 56);

    v78 = 0;
    v76 = v48;
  }

  v107 = v77;
  v83 = (v77 + 64) >> 6;
  if (v76 < 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v84 = v78;
    v85 = v79;
    v86 = v78;
    if (!v79)
    {
      break;
    }

LABEL_35:
    v87 = (v85 - 1) & v85;
    v88 = *(*(v76 + 48) + ((v86 << 9) | (8 * __clz(__rbit64(v85)))));
    if (!v88)
    {
LABEL_41:
      sub_22953EE84();

      return;
    }

    while (1)
    {
      v111 = v88;
      sub_229704704(&v111, v109, v106);

      v78 = v86;
      v79 = v87;
      if ((v76 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_37:
      v89 = sub_22A4DE12C();
      if (v89)
      {
        v110 = v89;
        sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
        swift_dynamicCast();
        v88 = v111;
        v86 = v78;
        v87 = v79;
        if (v111)
        {
          continue;
        }
      }

      goto LABEL_41;
    }
  }

  while (1)
  {
    v86 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    if (v86 >= v83)
    {
      goto LABEL_41;
    }

    v85 = *(v75 + 8 * v86);
    ++v84;
    if (v85)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
}

uint64_t sub_2296FF6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v35[1] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD26C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22A4DD29C();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v38);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v3 workQueue];
  if (v18)
  {
    v19 = v18;
    v20 = swift_allocObject();
    v21 = v37;
    *(v20 + 16) = v36;
    *(v20 + 24) = v21;
    v43 = sub_2295704E8;
    v44 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_22953E640;
    v42 = &block_descriptor_93_0;
    v22 = _Block_copy(&aBlock);

    sub_22A4DD28C();
    v45 = MEMORY[0x277D84F90];
    sub_229707FE8(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_22953E5DC();
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v17, v13, v22);
    _Block_release(v22);

    (*(v10 + 8))(v13, v9);
    (*(v14 + 8))(v17, v38);
  }

  else
  {
    v24 = v5;
    v38 = v4;
    sub_2296F8604();
    v25 = v3;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136315138;
      aBlock = 91;
      v40 = 0xE100000000000000;
      v30 = [v25 logIdentifier];
      v31 = sub_22A4DD5EC();
      v33 = v32;

      MEMORY[0x22AAD08C0](v31, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(aBlock, v40, &v45);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_229538000, v26, v27, "%s Unable to find accessory", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    return (*(v24 + 8))(v8, v38);
  }
}

void sub_2296FFC04(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v87 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v87 - v17;
  v19 = [v3 matterDevice];
  if (!v19)
  {
LABEL_6:
    sub_2296F8604();
    v22 = v4;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v9;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v104 = v27;
      *v26 = 136315138;
      aBlock = 91;
      v99 = 0xE100000000000000;
      v28 = [v22 logIdentifier];
      v29 = sub_22A4DD5EC();
      v94 = v8;
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(aBlock, v99, &v104);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_229538000, v23, v24, "%s Matter device is not available", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);

      (*(v25 + 8))(v13, v94);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    v33 = [objc_opt_self() hmfErrorWithCode_];
    v34 = sub_22A4DB3DC();

    [a3 respondWithError_];
    goto LABEL_19;
  }

  v20 = v19;
  v96 = [v4 workQueue];
  if (!v96)
  {

    goto LABEL_6;
  }

  v95 = v9;
  v92 = a3;
  v93 = v20;
  v89 = v16;
  if (a1)
  {
    v21 = a1;
  }

  else
  {
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v21 = sub_22A4DDEBC();
  }

  v35 = objc_allocWithZone(MEMORY[0x277CD5420]);
  v36 = a1;
  v37 = [v35 init];
  [v37 setIdentifyTime_];
  sub_2296F8604();
  v38 = v4;
  v39 = a2;
  v40 = v21;
  v41 = sub_22A4DD05C();
  v42 = sub_22A4DDCCC();

  v43 = os_log_type_enabled(v41, v42);
  v91 = v38;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v90 = v37;
    v46 = v45;
    v88 = swift_slowAlloc();
    v104 = v88;
    *v44 = 136315650;
    aBlock = 91;
    v99 = 0xE100000000000000;
    v47 = [v38 logIdentifier];
    v48 = sub_22A4DD5EC();
    v94 = v40;
    v49 = v48;
    v50 = v8;
    v52 = v51;

    MEMORY[0x22AAD08C0](v49, v52);
    v8 = v50;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v53 = sub_2295A3E30(aBlock, v99, &v104);

    *(v44 + 4) = v53;
    v40 = v94;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v39;
    *(v44 + 22) = 2112;
    *(v44 + 24) = v40;
    *v46 = v39;
    v46[1] = v40;
    v54 = v39;
    v55 = v40;
    _os_log_impl(&dword_229538000, v41, v42, "%s Issuing identify command with interval %@ to %@", v44, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    v56 = v46;
    v37 = v90;
    MEMORY[0x22AAD4E50](v56, -1, -1);
    v57 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x22AAD4E50](v57, -1, -1);
    MEMORY[0x22AAD4E50](v44, -1, -1);

    v58 = *(v95 + 8);
    v58(v18, v50);
  }

  else
  {

    v58 = *(v95 + 8);
    v58(v18, v8);
  }

  v59 = v96;
  v60 = objc_allocWithZone(MEMORY[0x277CD5270]);
  v61 = v93;
  v62 = [v60 initWithDevice:v93 endpointID:v40 queue:v59];
  if (v62)
  {
    v34 = v62;
    v63 = swift_allocObject();
    v64 = v91;
    v65 = v40;
    v66 = v92;
    v63[2] = v91;
    v63[3] = v66;
    v63[4] = ObjectType;
    v102 = sub_229707F64;
    v103 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v99 = 1107296256;
    v100 = sub_2295AAF60;
    v101 = &block_descriptor_20;
    v67 = _Block_copy(&aBlock);
    v68 = v64;
    v69 = v66;

    [v34 identifyWithParams:v37 expectedValues:0 expectedValueInterval:0 completion:v67];
    _Block_release(v67);
  }

  else
  {
    v90 = v37;
    v94 = v8;
    v70 = v89;
    sub_2296F8604();
    v71 = v91;
    v72 = v40;
    v73 = sub_22A4DD05C();
    v74 = sub_22A4DDCEC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      ObjectType = swift_slowAlloc();
      v104 = ObjectType;
      *v75 = 136315394;
      aBlock = 91;
      v99 = 0xE100000000000000;
      v77 = [v71 logIdentifier];
      v78 = sub_22A4DD5EC();
      v80 = v79;

      MEMORY[0x22AAD08C0](v78, v80);
      v59 = v96;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v81 = sub_2295A3E30(aBlock, v99, &v104);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2112;
      *(v75 + 14) = v72;
      *v76 = v72;
      v82 = v72;
      _os_log_impl(&dword_229538000, v73, v74, "%s Failed to find identify cluster for endpoint: %@", v75, 0x16u);
      sub_22953EAE4(v76, &qword_27D87D7D0, &unk_22A578D90);
      v83 = v76;
      v61 = v93;
      MEMORY[0x22AAD4E50](v83, -1, -1);
      v84 = ObjectType;
      __swift_destroy_boxed_opaque_existential_0(ObjectType);
      MEMORY[0x22AAD4E50](v84, -1, -1);
      MEMORY[0x22AAD4E50](v75, -1, -1);
    }

    v58(v70, v94);
    v85 = v92;
    v86 = [objc_opt_self() hmErrorWithCode_];
    v34 = sub_22A4DB3DC();

    [v85 respondWithError_];
  }

LABEL_19:
}

id sub_2297004E0(void *a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    sub_2296F8604();
    v12 = a1;
    v13 = a2;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v36 = a3;
      v17 = v16;
      v34 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315394;
      v37 = 91;
      v38 = 0xE100000000000000;
      v39 = v18;
      v19 = [v13 logIdentifier];
      v20 = sub_22A4DD5EC();
      v22 = v21;

      v33 = v15;
      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(v37, v38, &v39);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v25;
      v26 = v34;
      *v34 = v25;
      _os_log_impl(&dword_229538000, v14, v33, "%s Failed to identify accessory with error: %@", v17, 0x16u);
      sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      v28 = v17;
      a3 = v36;
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v29 = [objc_opt_self() hmErrorWithCode_];
    v30 = sub_22A4DB3DC();

    [a3 respondWithError_];
  }

  return [a3 respondWithSuccess];
}

uint64_t sub_2297009A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229569B30;

  return sub_2297EEF40(a5, a6);
}

uint64_t sub_229700C10(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DB21C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22A4DD07C();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2296F8604();
  (*(v5 + 16))(v8, a1, v4);
  v13 = v1;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  v16 = os_log_type_enabled(v14, v15);
  v54 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v53 = a1;
    v18 = v17;
    v52 = swift_slowAlloc();
    *&v60 = v52;
    *v18 = 136315394;
    v58 = 91;
    v59 = 0xE100000000000000;
    v19 = [v13 logIdentifier];
    v50 = v15;
    v20 = v19;
    v21 = sub_22A4DD5EC();
    v51 = v9;
    v22 = v21;
    v23 = ObjectType;
    v25 = v24;

    MEMORY[0x22AAD08C0](v22, v25);
    ObjectType = v23;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(v58, v59, &v60);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    sub_229707FE8(&unk_2814038C0, MEMORY[0x277CC8900]);
    v27 = sub_22A4DE5CC();
    v29 = v28;
    (*(v5 + 8))(v8, v4);
    v30 = sub_2295A3E30(v27, v29, &v60);

    *(v18 + 14) = v30;
    _os_log_impl(&dword_229538000, v14, v50, "%s Handling notification: %s", v18, 0x16u);
    v31 = v52;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);

    (*(v55 + 8))(v12, v51);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v55 + 8))(v12, v9);
  }

  v32 = sub_22A4DB1EC();
  v33 = sub_22A4DD5EC();
  v35 = v34;
  if (v33 == sub_22A4DD5EC() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_22A4DE60C();

    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  v39 = sub_22A4DB20C();
  if (!v39)
  {
    goto LABEL_15;
  }

  v40 = v39;
  v56 = sub_22A4DD5EC();
  v57 = v41;
  sub_22A4DE18C();
  if (!*(v40 + 16) || (v42 = sub_2295402E8(&v58), (v43 & 1) == 0))
  {

    sub_22954045C(&v58);
LABEL_15:
    v60 = 0u;
    v61 = 0u;
    return sub_22953EAE4(&v60, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2295404B0(*(v40 + 56) + 32 * v42, &v60);
  sub_22954045C(&v58);

  if (!*(&v61 + 1))
  {
    return sub_22953EAE4(&v60, &unk_27D87DE60, &unk_22A57A960);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v44 = v58;
    v45 = v59;
    v46 = swift_allocObject();
    v47 = v54;
    v46[2] = v54;
    v46[3] = v44;
    v46[4] = v45;
    v46[5] = ObjectType;
    v48 = v47;
    sub_2296FF6DC(sub_229707E88, v46);
  }

  return result;
}

uint64_t sub_229701174(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = a1;
  sub_2296F9DBC(a2, a3, sub_229707E94, v8);
}

uint64_t sub_229701210(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_2296F8604();
    v11 = a1;
    v12 = a2;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315394;
      v29 = 91;
      v30 = 0xE100000000000000;
      v31 = v16;
      v17 = [v12 logIdentifier];
      v18 = sub_22A4DD5EC();
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(v29, v30, &v31);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v23;
      v24 = v27;
      *v27 = v23;
      _os_log_impl(&dword_229538000, v13, v14, "%s Failed to update fabric label with error: %@", v15, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_2297015A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v10 = *(v9 + 64) + 15;
  v7[27] = swift_task_alloc();
  v11 = sub_22A4DCBDC();
  v7[28] = v11;
  v12 = *(v11 - 8);
  v7[29] = v12;
  v13 = *(v12 + 64) + 15;
  v7[30] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FE50, &qword_22A580970) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FE58, &qword_22A580978);
  v7[33] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v17 = sub_22A4DD07C();
  v7[36] = v17;
  v18 = *(v17 - 8);
  v7[37] = v18;
  v19 = *(v18 + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297017C0, 0, 0);
}

uint64_t sub_2297017C0()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[41] = v3;
    *v3 = v0;
    v3[1] = sub_229701A20;
    v4 = v0[35];
    v5 = v0[23];

    return sub_229702578(v4, v5);
  }

  else
  {
    v7 = v0[39];
    v8 = v0[24];
    sub_2296F8604();
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_229538000, v9, v10, "Lost reference to matter adapter", v11, 2u);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    v12 = v0[39];
    v13 = v0[36];
    v14 = v0[37];
    v15 = v0[22];

    (*(v14 + 8))(v12, v13);
    if (v15)
    {
      v16 = v0[22];
      v17 = [objc_opt_self() hmErrorWithCode_];
      v18 = sub_22A4DB3DC();

      [v16 rejectWithError_];
    }

    v20 = v0[38];
    v19 = v0[39];
    v22 = v0[34];
    v21 = v0[35];
    v24 = v0[31];
    v23 = v0[32];
    v25 = v0[30];
    v26 = v0[27];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_229701A20()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229701B1C, 0, 0);
}

uint64_t sub_229701B1C()
{
  v61 = v0;
  v1 = *(v0 + 264);
  sub_229564F88(*(v0 + 280), *(v0 + 272), &unk_27D87FE58, &qword_22A580978);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 272);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 176);
    v5 = *v3;
    v6 = *(v0 + 320);
    v7 = *(v0 + 280);
    if (!v4)
    {
      sub_22953EAE4(*(v0 + 280), &unk_27D87FE58, &qword_22A580978);

LABEL_19:
      v49 = *(v0 + 304);
      v48 = *(v0 + 312);
      v51 = *(v0 + 272);
      v50 = *(v0 + 280);
      v53 = *(v0 + 248);
      v52 = *(v0 + 256);
      v54 = *(v0 + 240);
      v55 = *(v0 + 216);

      v56 = *(v0 + 8);

      return v56();
    }

    v8 = *v3;
    v9 = sub_22A4DB3DC();
    v10 = sub_22A4DB3DC();

    [v4 rejectWithError_];
    v11 = v7;
LABEL_18:
    sub_22953EAE4(v11, &unk_27D87FE58, &qword_22A580978);
    goto LABEL_19;
  }

  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  sub_2297081C8(v3, v13);
  sub_229564F88(v13, v12, &qword_27D87FE50, &qword_22A580970);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_22953EAE4(*(v0 + 248), &qword_27D87FE50, &qword_22A580970);
    goto LABEL_12;
  }

  v16 = *(v0 + 320);
  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 248), *(v0 + 224));
  v17 = sub_229702F90();
  *(v0 + 336) = v17;
  if (!v17)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
LABEL_12:
    v26 = *(v0 + 320);
    v27 = *(v0 + 304);
    v28 = *(v0 + 192);
    sub_2296F8604();
    v29 = v26;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCDC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 320);
      v33 = *(v0 + 296);
      v59 = *(v0 + 304);
      v34 = *(v0 + 288);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136315138;
      v60[0] = v36;
      v60[1] = 91;
      v60[2] = 0xE100000000000000;
      v37 = [v32 logIdentifier];
      v38 = sub_22A4DD5EC();
      v40 = v39;

      MEMORY[0x22AAD08C0](v38, v40);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v41 = sub_2295A3E30(91, 0xE100000000000000, v60);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_229538000, v30, v31, "%s No change in accessory information", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);

      (*(v33 + 8))(v59, v34);
      v42 = *(v0 + 176);
      if (!v42)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v44 = *(v0 + 296);
      v43 = *(v0 + 304);
      v45 = *(v0 + 288);

      (*(v44 + 8))(v43, v45);
      v42 = *(v0 + 176);
      if (!v42)
      {
LABEL_17:
        v46 = *(v0 + 280);
        v47 = *(v0 + 256);

        sub_22953EAE4(v47, &qword_27D87FE50, &qword_22A580970);
        v11 = v46;
        goto LABEL_18;
      }
    }

    [v42 fulfillWithValue_];
    goto LABEL_17;
  }

  v18 = v17;
  v58 = *(v0 + 320);
  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22A576190;
  *(v22 + 32) = v18;
  sub_229562F68(0, &qword_27D87FD80, off_278666060);
  v23 = v18;
  v24 = sub_22A4DD81C();
  *(v0 + 344) = v24;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_229702148;
  swift_continuation_init();
  *(v0 + 136) = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v20 + 32))(boxed_opaque_existential_1, v19, v21);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229787290;
  *(v0 + 104) = &block_descriptor_86;
  [v58 runTransactions:v24 completion:v0 + 80];
  (*(v20 + 8))(boxed_opaque_existential_1, v21);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_229702148()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_2297023B4;
  }

  else
  {
    v3 = sub_229702258;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229702258()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  if (v1)
  {
    [*(v0 + 176) fulfillWithValue_];
    v9 = v2;
  }

  else
  {
    v9 = *(v0 + 320);
    v3 = *(v0 + 336);
  }

  (*(v7 + 8))(v6, v8);
  sub_22953EAE4(v5, &qword_27D87FE50, &qword_22A580970);
  sub_22953EAE4(v4, &unk_27D87FE58, &qword_22A580978);
  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 240);
  v17 = *(v0 + 216);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2297023B4()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 176);
  swift_willThrow();

  v4 = *(v0 + 352);
  if (v3)
  {
    v5 = *(v0 + 336);
    v6 = *(v0 + 320);
    v28 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);
    v11 = *(v0 + 176);
    v12 = sub_22A4DB3DC();
    [v11 rejectWithError_];

    (*(v8 + 8))(v9, v10);
    v13 = v28;
  }

  else
  {

    v14 = *(v0 + 336);
    v13 = *(v0 + 280);
    v7 = *(v0 + 256);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v17 = *(v0 + 224);

    (*(v16 + 8))(v15, v17);
  }

  sub_22953EAE4(v7, &qword_27D87FE50, &qword_22A580970);
  sub_22953EAE4(v13, &unk_27D87FE58, &qword_22A580978);
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 240);
  v25 = *(v0 + 216);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_229702578(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_22A4DCD0C();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_22A4DCBDC();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229702718, 0, 0);
}

uint64_t sub_229702718()
{
  v1 = v0[12];
  sub_22A4DCCEC();
  v2 = *(MEMORY[0x277D173B0] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_2297027C4;
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[3];

  return MEMORY[0x282171748](v4, v6, v5);
}

uint64_t sub_2297027C4()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_229702CB4;
  }

  else
  {
    v6 = sub_229702934;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_229702934()
{
  v44 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[9];
  v7 = v0[4];
  v6 = v0[5];
  sub_2296F8604();
  (*(v4 + 16))(v2, v1, v3);
  v8 = v7;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[6];
  v17 = v0[7];
  if (v11)
  {
    v42 = v0[9];
    v18 = v0[4];
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v19 = 136315394;
    v43[0] = v41;
    v43[1] = 91;
    v43[2] = 0xE100000000000000;
    v20 = [v18 logIdentifier];
    v40 = v16;
    v21 = sub_22A4DD5EC();
    v39 = v10;
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(91, 0xE100000000000000, v43);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    sub_229707FE8(&unk_27D87FE70, MEMORY[0x277D173A0]);
    v25 = sub_22A4DE5CC();
    v27 = v26;
    (*(v12 + 8))(v13, v14);
    v28 = sub_2295A3E30(v25, v27, v43);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_229538000, v9, v39, "%s Did read basic information %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v41, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);

    (*(v17 + 8))(v42, v40);
  }

  else
  {

    (*(v12 + 8))(v13, v14);
    (*(v17 + 8))(v15, v16);
  }

  v29 = v0[13];
  v30 = v0[14];
  v31 = v0[2];
  (*(v30 + 32))(v31, v0[16], v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FE58, &qword_22A580978);
  swift_storeEnumTagMultiPayload();
  v33 = v0[15];
  v32 = v0[16];
  v34 = v0[12];
  v36 = v0[8];
  v35 = v0[9];

  v37 = v0[1];

  return v37();
}

uint64_t sub_229702CB4()
{
  v35 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_2296F8604();
  v5 = v4;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 144);
    v31 = *(v0 + 56);
    v32 = *(v0 + 48);
    v33 = *(v0 + 64);
    v10 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136315394;
    v34[0] = v13;
    v34[1] = 91;
    v34[2] = 0xE100000000000000;
    v14 = [v10 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v34);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    *v12 = v20;
    _os_log_impl(&dword_229538000, v7, v8, "%s Failed to read required attributes with error: %@", v11, 0x16u);
    sub_22953EAE4(v12, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v22 = *(v0 + 56);
    v21 = *(v0 + 64);
    v23 = *(v0 + 48);

    (*(v22 + 8))(v21, v23);
  }

  **(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FE58, &qword_22A580978);
  swift_storeEnumTagMultiPayload();
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v26 = *(v0 + 96);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

void *sub_229702F90()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 accessory];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v8 = [v6 transactionWithObjectChangeType_];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_21:
    sub_2296F8604();
    v30 = v0;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136315138;
      v96 = 91;
      v97 = 0xE100000000000000;
      v98 = v34;
      v35 = [v30 logIdentifier];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      MEMORY[0x22AAD08C0](v36, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(v96, v97, &v98);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_229538000, v31, v32, "%s Unable to create accessory model", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v10 = v9;
  v11 = sub_22A4DCBBC();
  if (!v12)
  {
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [v7 providedName];
  v15 = sub_22A4DD5EC();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
LABEL_10:

    goto LABEL_11;
  }

  v40 = v8;
  v41 = sub_22A4DD5AC();

  [v10 setProvidedName_];

  v19 = 1;
LABEL_12:
  v20 = sub_22A4DCBCC();
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = v20;
  v23 = v21;
  v24 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = [v7 model];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22A4DD5EC();
    v29 = v28;

    if (v22 == v27 && v23 == v29)
    {

LABEL_26:

      goto LABEL_28;
    }

    v42 = sub_22A4DE60C();

    if (v42)
    {
      goto LABEL_26;
    }
  }

  v43 = v8;
  v44 = sub_22A4DD5AC();

  [v10 setModel_];

  v19 = 1;
LABEL_28:
  v45 = sub_22A4DCB7C();
  if (!v46)
  {
    goto LABEL_39;
  }

  v47 = v45;
  v48 = v46;
  v49 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v49 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    goto LABEL_37;
  }

  v50 = [v7 manufacturer];
  if (v50)
  {
    v51 = v50;
    v52 = sub_22A4DD5EC();
    v54 = v53;

    if (v47 == v52 && v48 == v54)
    {

LABEL_37:

      goto LABEL_39;
    }

    v55 = sub_22A4DE60C();

    if (v55)
    {
      goto LABEL_37;
    }
  }

  v56 = v8;
  v57 = sub_22A4DD5AC();

  [v10 setManufacturer_];

  v19 = 1;
LABEL_39:
  v58 = sub_22A4DCB9C();
  if (!v59)
  {
    goto LABEL_50;
  }

  v60 = v58;
  v61 = v59;
  v62 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v62 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
    goto LABEL_48;
  }

  v63 = [v7 displayableFirmwareVersion];
  if (v63)
  {
    v64 = v63;
    v65 = sub_22A4DD5EC();
    v67 = v66;

    if (v60 == v65 && v61 == v67)
    {

LABEL_48:

      goto LABEL_50;
    }

    v68 = sub_22A4DE60C();

    if (v68)
    {
      goto LABEL_48;
    }
  }

  v69 = v8;
  v70 = sub_22A4DD5AC();

  [v10 setDisplayableFirmwareVersion_];

  v19 = 1;
LABEL_50:
  v71 = sub_22A4DCBAC();
  if ((v71 & 0x100000000) != 0)
  {
    goto LABEL_59;
  }

  LODWORD(v96) = v71;
  sub_22A4DE5CC();
  v72 = objc_allocWithZone(HMDAccessoryVersion);
  v73 = sub_22A4DD5AC();

  v74 = [v72 initWithMatterVersionString_];

  v75 = v74;
  v76 = [v7 firmwareVersion];
  if (!v76)
  {

    goto LABEL_55;
  }

  v77 = v76;
  sub_229562F68(0, &qword_27D87FE68, off_278665FF8);
  v78 = sub_22A4DDEDC();

  if ((v78 & 1) == 0)
  {
LABEL_55:
    v79 = v8;
    v80 = [v75 rawVersionString];
    if (!v80)
    {
      sub_22A4DD5EC();
      v80 = sub_22A4DD5AC();
    }

    [v10 setFirmwareVersion_];

    v19 = 1;
  }

LABEL_59:
  v81 = sub_22A4DCB8C();
  if (v82)
  {
    v83 = v81;
    v84 = v82;
    v85 = HIBYTE(v82) & 0xF;
    if ((v82 & 0x2000000000000000) == 0)
    {
      v85 = v81 & 0xFFFFFFFFFFFFLL;
    }

    if (v85)
    {
      v86 = [v7 serialNumber];
      if (!v86)
      {
        goto LABEL_74;
      }

      v87 = v86;
      v88 = sub_22A4DD5EC();
      v90 = v89;

      if (v83 == v88 && v84 == v90)
      {

        if (v19)
        {
          return v10;
        }

        goto LABEL_71;
      }

      v91 = sub_22A4DE60C();

      if ((v91 & 1) == 0)
      {
LABEL_74:
        v93 = v8;
        v94 = sub_22A4DD5AC();

        [v10 setSerialNumber_];

        return v10;
      }
    }
  }

  if (!v19)
  {
LABEL_71:

    return 0;
  }

  return v10;
}

void sub_2297037E4(unint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  if (a1)
  {
    v17 = sub_229703E88(a1);
    v18 = [a5 chipStorage];
    v19 = [v18 pairings];

    if (!v19)
    {
      goto LABEL_7;
    }

    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    v20 = sub_22A4DDB6C();

    v21 = sub_2296CC298(v20, v17);

    if (v21)
    {
    }

    else
    {
LABEL_7:
      v22 = [a5 transactionWithObjectChangeType_];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
        sub_229707F80();
        v25 = sub_22A4DDB5C();

        [v24 setChipPairings_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_22A576190;
        *(v26 + 32) = v24;
        sub_229562F68(0, &qword_27D87FD80, off_278666060);
        v27 = v22;
        v59 = sub_22A4DD81C();

        v28 = [a4 runTransactions_];

        v29 = v59;
      }

      else
      {

        sub_2296F8604();
        v45 = a4;
        v46 = sub_22A4DD05C();
        v47 = sub_22A4DDCEC();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 136315138;
          v60 = 91;
          v61 = 0xE100000000000000;
          v62 = v49;
          v50 = [v45 logIdentifier];
          v51 = sub_22A4DD5EC();
          v52 = v10;
          v54 = v53;

          MEMORY[0x22AAD08C0](v51, v54);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v55 = sub_2295A3E30(v60, v61, &v62);

          *(v48 + 4) = v55;
          _os_log_impl(&dword_229538000, v46, v47, "%s Invalid accessory model", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x22AAD4E50](v49, -1, -1);
          MEMORY[0x22AAD4E50](v48, -1, -1);

          (*(v52 + 8))(v16, v9);
        }

        else
        {

          (*(v10 + 8))(v16, v9);
        }
      }
    }
  }

  else
  {
    sub_2296F8604();
    v30 = a4;
    v31 = a2;
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCEC();

    if (os_log_type_enabled(v32, v33))
    {
      v58 = v10;
      v59 = v9;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v34 = 136315394;
      v60 = 91;
      v61 = 0xE100000000000000;
      v62 = v36;
      v37 = [v30 logIdentifier];
      v38 = sub_22A4DD5EC();
      v40 = v39;

      MEMORY[0x22AAD08C0](v38, v40);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v41 = sub_2295A3E30(v60, v61, &v62);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2112;
      if (a2)
      {
        v42 = a2;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        v44 = v43;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v56 = v59;
      *(v34 + 14) = v43;
      *v35 = v44;
      _os_log_impl(&dword_229538000, v32, v33, "%s Failed to fetch pairings from matter accessory server with error: %@", v34, 0x16u);
      sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);

      (*(v58 + 8))(v14, v56);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }
  }
}

uint64_t sub_229703E88(unint64_t a1)
{
  v2 = sub_22970403C();
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v13 = MEMORY[0x277D84F90];
LABEL_12:
    v14 = sub_229672990(v13);

    return v14;
  }

  v3 = sub_22A4DE0EC();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_22A4DE29C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAD13F0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 rootPublicKey];
      v9 = sub_22A4DB62C();
      v11 = v10;

      LOBYTE(v8) = sub_22956EF18(v9, v11, v2);
      sub_2295798D4(v9, v11);
      [objc_allocWithZone(MEMORY[0x277CD1880]) initWithHMMTRPairing:v7 ownedEcosystem:v8 & 1];

      sub_22A4DE27C();
      v12 = *(v15 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
    }

    while (v3 != v5);

    v13 = v15;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_22970403C()
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = [v0 testAllKnownRootPublicKeys];
  if (v1)
  {

    result = [v0 testAllKnownRootPublicKeys];
    if (result)
    {
      v3 = result;
      sub_229673844();
      v4 = sub_22A4DDB6C();

      v5 = *MEMORY[0x277D85DE8];
      return v4;
    }

    __break(1u);
    goto LABEL_70;
  }

  v6 = [v0 accessory];
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = v6;
  v8 = [v6 home];

  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = [v8 homeManager];

  if (!v9)
  {
    goto LABEL_32;
  }

  result = [v9 accessoryBrowser];
  if (!result)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v10 = [result chipAccessoryServerBrowser];
  swift_unknownObjectRelease();
  if (!v10)
  {

LABEL_32:
    result = MEMORY[0x277D84FA0];
    goto LABEL_33;
  }

  result = [v9 homes];
  if (result)
  {
    v11 = result;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v12 = sub_22A4DD83C();

    if (v12 >> 62)
    {
      goto LABEL_36;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = v9;
    for (i = v10; v13; i = v10)
    {
      v66 = MEMORY[0x277D84F90];
      sub_2295839A0(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_68:
        __break(1u);
      }

      v14 = 0;
      v15 = v66;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AAD13F0](v14, v12);
          goto LABEL_19;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(v12 + 8 * v14 + 32);
LABEL_19:
        v17 = v16;
        v18 = [v16 matterFabricID];
        if (!v18)
        {

          v10 = 0;
LABEL_26:
          v25 = 0xF000000000000000;
          goto LABEL_27;
        }

        v19 = v18;
        if (![v18 unsignedLongLongValue])
        {

          v10 = 0;
          goto LABEL_26;
        }

        v65 = 0;
        v20 = [v17 storedFabricDataWithError_];
        if (!v20)
        {
          v26 = v65;
          v27 = sub_22A4DB3EC();

          swift_willThrow();
          v10 = 0;
          goto LABEL_26;
        }

        v21 = v20;
        v22 = v65;
        v23 = [v21 rootPublicKey];
        v10 = sub_22A4DB62C();
        v25 = v24;

LABEL_27:
        v66 = v15;
        v9 = v15[2];
        v28 = v15[3];
        if (v9 >= v28 >> 1)
        {
          sub_2295839A0((v28 > 1), v9 + 1, 1);
          v15 = v66;
        }

        ++v14;
        v15[2] = v9 + 1;
        v29 = &v15[2 * v9];
        v29[4] = v10;
        v29[5] = v25;
        if (v13 == v14)
        {

          v10 = i;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v13 = sub_22A4DE0EC();
      v60 = v9;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_38:
    v31 = [v10 systemCommissionerFabricRootPublicKey];
    if (v31)
    {
      v32 = v31;
      v33 = sub_22A4DB62C();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0xF000000000000000;
    }

    sub_2295AEF1C(v33, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_66:
      v15 = sub_22958B44C(0, v15[2] + 1, 1, v15);
    }

    v37 = v15[2];
    v36 = v15[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v15 = sub_22958B44C((v36 > 1), v37 + 1, 1, v15);
    }

    v39 = 0;
    v15[2] = v38;
    v40 = &v15[2 * v37];
    v40[4] = v33;
    v40[5] = v35;
    v41 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
LABEL_45:
    v43 = 16 * v39 + 40;
    while (v38 != v39)
    {
      if (v39 >= v15[2])
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      ++v39;
      v44 = v43 + 16;
      v45 = *(v15 + v43);
      v43 += 16;
      if (v45 >> 60 != 15)
      {
        v63 = v35;
        v46 = v33;
        v47 = *(v15 + v44 - 24);
        sub_22956C148(v47, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2295839A0(0, v42[2] + 1, 1);
          v42 = v66;
        }

        v50 = v42[2];
        v49 = v42[3];
        if (v50 >= v49 >> 1)
        {
          sub_2295839A0((v49 > 1), v50 + 1, 1);
          v42 = v66;
        }

        v42[2] = v50 + 1;
        v51 = &v42[2 * v50];
        v51[4] = v47;
        v51[5] = v45;
        v33 = v46;
        v35 = v63;
        goto LABEL_45;
      }
    }

    v52 = v42[2];
    if (v52)
    {
      v66 = v41;
      sub_22958387C(0, v52, 0);
      v53 = 0;
      v54 = v66;
      while (v53 < v42[2])
      {
        v55 = *&v42[2 * v53 + 4];
        v56 = v42[2 * v53 + 5];
        if (v56 >> 60 == 15)
        {
          goto LABEL_68;
        }

        v64 = *&v42[2 * v53 + 4];
        sub_22956C148(v42[2 * v53 + 4], v56);
        v66 = v54;
        v58 = *(v54 + 16);
        v57 = *(v54 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_22958387C((v57 > 1), v58 + 1, 1);
          v54 = v66;
        }

        ++v53;
        *(v54 + 16) = v58 + 1;
        *(v54 + 16 * v58 + 32) = v64;
        if (v52 == v53)
        {

          goto LABEL_63;
        }
      }

      goto LABEL_65;
    }

    v54 = MEMORY[0x277D84F90];
LABEL_63:
    v59 = sub_2296725BC(v54);

    sub_229590D18(v33, v35);

    result = v59;
LABEL_33:
    v30 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_229704704(uint64_t *a1, void *a2, void *a3)
{
  v7 = sub_22A4DD07C();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = objc_allocWithZone(HMDCHIPConnectedEcosystemsChangedBulletin);
  v34 = a2;
  v13 = [v12 initWithAddedPairing:v11 accessory:a2];
  sub_2296F8604();
  v14 = a3;
  v15 = v13;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v19 = 136315394;
    v35 = 91;
    v36 = 0xE100000000000000;
    v21 = [v14 logIdentifier];
    v22 = sub_22A4DD5EC();
    v24 = v23;

    MEMORY[0x22AAD08C0](v22, v24);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(v35, v36, &v37);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    v26 = v15;
    _os_log_impl(&dword_229538000, v16, v17, "%s Inserting connected ecosystems changed bulletin %@", v19, 0x16u);
    sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    v27 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  (*(v32 + 8))(v10, v33);
  v28 = [v34 bulletinBoard];
  [v28 insertConnectedCHIPEcosystemsChangedBulletin_];
}

void HMDMatterAccessoryAdapter.handle(_:dictionary:flow:hapAccessory:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (v5)
  {

    sub_229800614(a1, a3);
  }
}

void HMDMatterAccessoryAdapter.handle(_:dictionary:hapAccessory:)(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a1;
    sub_2297EDBBC(v6, a2);
  }
}

Swift::Void __swiftcall HMDMatterAccessoryAdapter.device(_:stateChanged:)(MTRDevice _, MTRDeviceState stateChanged)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v11 = _.super.isa;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2048;
    *(v14 + 14) = stateChanged;
    v16 = v11;
    _os_log_impl(&dword_229538000, v12, v13, "Device %@ state changed to %lu", v14, 0x16u);
    sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v17 = [v3 accessory];
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      if (stateChanged == MTRDeviceStateReachable)
      {
        v20 = v19;
        goto LABEL_9;
      }

      if (stateChanged == MTRDeviceStateUnreachable)
      {
        v20 = v19;
        stateChanged = MTRDeviceStateUnknown;
LABEL_9:
        v21 = v18;
        [v20 setReachable_];
        [v20 setRemotelyReachable_];
      }
    }
  }
}

Swift::Void __swiftcall HMDMatterAccessoryAdapter.device(_:receivedAttributeReport:)(MTRDevice _, Swift::OpaquePointer receivedAttributeReport)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v42 = ObjectType;
  sub_2296F8604();

  v13 = _.super.isa;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  v16 = os_log_type_enabled(v14, v15);
  v43 = v5;
  v39 = v10;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v46 = v20;
    *v18 = 136315394;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v22 = MEMORY[0x22AAD0A20](receivedAttributeReport._rawValue, v21);
    v24 = sub_2295A3E30(v22, v23, &v46);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    v25 = v13;
    _os_log_impl(&dword_229538000, v14, v15, "Received attribute report %s for device %@", v18, 0x16u);
    sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    v26 = v18;
    v6 = v45;
    MEMORY[0x22AAD4E50](v26, -1, -1);

    v27 = *(v6 + 8);
    v28 = v12;
    v29 = v43;
  }

  else
  {

    v27 = *(v6 + 8);
    v28 = v12;
    v29 = v5;
  }

  v41 = v27;
  v27(v28, v29);
  v31 = *(receivedAttributeReport._rawValue + 2);
  if (v31)
  {
    v32 = (receivedAttributeReport._rawValue + 32);
    v40 = v6 + 8;
    v38 = *MEMORY[0x277CD50B8];
    *&v30 = 138412802;
    v37 = v30;
    do
    {
      v47 = *v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      sub_22A4DBA0C();
      sub_2296F7AE8(v46);
      v35 = objc_allocWithZone(MEMORY[0x277CD51C8]);
      v36 = sub_229706614();
      v33 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v34 = sub_22A4DD47C();

      [v44 handleAttributeReport:v33 dictionary:v34 hapAccessory:{0, v37, v38, v39}];

      ++v32;
      --v31;
    }

    while (v31);
  }
}

Swift::Void __swiftcall HMDMatterAccessoryAdapter.device(_:receivedEventReport:)(MTRDevice _, Swift::OpaquePointer receivedEventReport)
{
  v78[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v69 = sub_22A4DD07C();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v69);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v66 - v11;
  sub_2296F8604();

  v13 = _.super.isa;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  v16 = os_log_type_enabled(v14, v15);
  v75 = ObjectType;
  v76 = v2;
  v68 = v10;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v77[0] = v74;
    *v17 = 136315394;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v20 = MEMORY[0x22AAD0A20](receivedEventReport._rawValue, v19);
    v22 = sub_2295A3E30(v20, v21, v77);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    *v18 = v13;
    v23 = v13;
    _os_log_impl(&dword_229538000, v14, v15, "Received event report %s for device %@", v17, 0x16u);
    sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
    v24 = v18;
    v10 = v68;
    MEMORY[0x22AAD4E50](v24, -1, -1);
    v25 = v74;
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  v26 = v12;
  v27 = v69;
  v74 = *(v6 + 8);
  (v74)(v26, v69);
  v29 = *(receivedEventReport._rawValue + 2);
  if (v29)
  {
    v30 = (receivedEventReport._rawValue + 32);
    v73 = v6 + 8;
    v31 = MEMORY[0x277D837E0];
    v67 = *MEMORY[0x277CD50B8];
    *&v28 = 138412802;
    v66 = v28;
    do
    {
      v35 = *v30;
      v36 = objc_allocWithZone(MEMORY[0x277CD5410]);

      v37 = v31;
      v38 = sub_22A4DD47C();
      *&v77[0] = 0;
      v39 = [v36 initWithResponseValue:v38 error:v77];

      if (v39)
      {
        v78[0] = v35;
        v32 = *&v77[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        sub_22A4DBA0C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v33 = sub_22A4DD47C();

        v34 = [objc_opt_self() untrackedPlaceholderFlow];
        [v76 handleMatterEvent:v39 dictionary:v33 flow:v34];

        v31 = v37;
      }

      else
      {
        v40 = *&v77[0];
        v41 = sub_22A4DB3EC();

        swift_willThrow();
        sub_2296F8604();

        v42 = v41;
        v43 = sub_22A4DD05C();
        v44 = sub_22A4DDCEC();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v78[0] = v71;
          *v45 = v66;
          v47 = v41;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          v70 = v46;
          *v46 = v48;
          *(v45 + 12) = 2080;
          v49 = sub_22A4DD5EC();
          v51 = *(v35 + 16);
          v72 = v44;
          if (v51)
          {
            v52 = sub_229543DBC(v49, v50);
            v54 = v53;

            if (v54)
            {
              sub_2295404B0(*(v35 + 56) + 32 * v52, v77);
LABEL_15:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
              v55 = sub_22A4DD66C();
              v57 = sub_2295A3E30(v55, v56, v78);

              *(v45 + 14) = v57;
              *(v45 + 22) = 2080;
              v58 = MEMORY[0x277D837E0];
              v59 = sub_22A4DD4AC();
              v61 = v60;

              v62 = sub_2295A3E30(v59, v61, v78);

              *(v45 + 24) = v62;
              v31 = v58;
              _os_log_impl(&dword_229538000, v43, v72, "Failed to decode event report with error: %@, path: (%s), report: %s", v45, 0x20u);
              v63 = v70;
              sub_22953EAE4(v70, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v63, -1, -1);
              v64 = v71;
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v64, -1, -1);
              MEMORY[0x22AAD4E50](v45, -1, -1);

              v10 = v68;
              v27 = v69;
              (v74)(v68, v69);
              goto LABEL_6;
            }
          }

          else
          {
          }

          memset(v77, 0, sizeof(v77));
          goto LABEL_15;
        }

        (v74)(v10, v27);
        v31 = MEMORY[0x277D837E0];
      }

LABEL_6:
      ++v30;
      --v29;
    }

    while (v29);
  }

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t sub_229705DC4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v8 = sub_22A4DD83C();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

uint64_t HMDMatterAccessoryAdapter.didUpdateRequiresThreadRouter(for:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v9 = a1;
  v10 = v1;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = ObjectType;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315394;
    v31 = 91;
    v32 = 0xE100000000000000;
    v33 = v15;
    v16 = [v10 logIdentifier];
    v17 = sub_22A4DD5EC();
    v28 = v4;
    v18 = v17;
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(v31, v32, &v33);

    *(v14 + 4) = v21;
    *(v14 + 12) = 1024;
    LODWORD(v18) = [v9 requiresThreadRouter];

    *(v14 + 14) = v18;
    _os_log_impl(&dword_229538000, v11, v12, "%s Updating accessory requires thread router to %{BOOL}d", v14, 0x12u);
    v22 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    v23 = v14;
    ObjectType = v30;
    MEMORY[0x22AAD4E50](v23, -1, -1);

    (*(v5 + 8))(v8, v28);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v9;
  v25[4] = ObjectType;
  v26 = v9;

  sub_2296FF6DC(sub_229707E7C, v25);
}

void sub_2297061C4(uint64_t a1, void *a2)
{
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [Strong accessory];
    if (v15)
    {
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = 0xD00000000000001ELL;
      *(inited + 40) = 0x800000022A592F00;
      v18 = [a2 requiresThreadRouter];
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = v18;
      sub_22956AC5C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
      v19 = *MEMORY[0x277CCECC8];
      v20 = [v16 uuid];
      sub_22A4DB79C();

      v21 = objc_allocWithZone(MEMORY[0x277D0F820]);
      v22 = sub_22A4DB77C();
      v23 = [v21 initWithTarget_];

      (*(v9 + 8))(v12, v8);
      v24 = objc_allocWithZone(MEMORY[0x277D0F818]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v25 = sub_22A4DD47C();

      v26 = [v24 initWithName:v19 destination:v23 payload:v25];

      v27 = [v14 msgDispatcher];
      [v27 sendMessage_];

      return;
    }
  }

  sub_2296F8604();
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCEC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_229538000, v28, v29, "Lost reference to accessory", v30, 2u);
    MEMORY[0x22AAD4E50](v30, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

id sub_229706614()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22A4DD47C();

  v7[0] = 0;
  v2 = [v0 initWithResponseValue:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22A4DB3EC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t *sub_2297066FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_229706798(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_229706798(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v51 = a1;
  v65 = sub_22A4DB7DC();
  v6 = *(*(v65 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v65);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v52 = 0;
  v53 = v9;
  v12 = 0;
  v56 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v60 = v9 + 16;
  v63 = a4 + 56;
  v64 = (v9 + 8);
  v54 = v19;
  v55 = v14;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v58 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = *(*(v56 + 48) + 8 * v23);
    v25 = [v24 UUID];
    sub_22A4DB79C();

    v26 = *(a4 + 16);
    v57 = v24;
    if (!v26 || (v27 = *(a4 + 40), sub_229707FE8(&qword_281403880, MEMORY[0x277CC95F0]), v28 = sub_22A4DD4EC(), v29 = -1 << *(a4 + 32), v30 = v28 & ~v29, ((*(v63 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0))
    {
LABEL_17:
      (*v64)(v11, v65);
      v38 = v57;
      goto LABEL_18;
    }

    v49 = v23;
    v59 = ~v29;
    v62 = *(v53 + 72);
    v31 = *(v53 + 16);
    while (1)
    {
      v32 = a4;
      v33 = v61;
      v34 = v65;
      v31(v61, *(a4 + 48) + v62 * v30, v65);
      sub_229707FE8(&qword_281403870, MEMORY[0x277CC95F0]);
      v35 = v11;
      v36 = sub_22A4DD58C();
      v37 = *v64;
      (*v64)(v33, v34);
      if (v36)
      {
        break;
      }

      v30 = (v30 + 1) & v59;
      a4 = v32;
      v11 = v35;
      if (((*(v63 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v11 = v35;
    v37(v35, v65);
    v38 = v57;
    v39 = [v57 home];
    v40 = [v39 ecosystem];

    v41 = [v40 vendor];
    LOBYTE(v40) = [v41 isAppleVendor];

    if (v40)
    {
      a4 = v32;
LABEL_18:

      v19 = v54;
      v14 = v55;
      v18 = v58;
    }

    else
    {
      v42 = [v38 home];
      v43 = [v42 ecosystem];

      v44 = [v43 vendor];
      v45 = [v44 isSystemCommissionerVendor];

      a4 = v32;
      v19 = v54;
      v14 = v55;
      v18 = v58;
      if ((v45 & 1) == 0)
      {
        *(v51 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
LABEL_25:
          v47 = v56;

          sub_22966F7AC(v51, v50, v52, v47);
          return;
        }
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v58 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_229706C68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = *MEMORY[0x277D85DE8];
  v64 = sub_22A4DB7DC();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v60 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = v47 - v10;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_29;
  }

  while (2)
  {
    v48 = v13;
    v49 = v3;
    v47[1] = v47;
    MEMORY[0x28223BE20](v15);
    v50 = v47 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v50, v14);
    v51 = 0;
    v52 = v6;
    v16 = 0;
    v17 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;
    v59 = v6 + 16;
    v62 = a2 + 56;
    v63 = (v6 + 8);
    v3 = a2;
    v14 = v61;
    v53 = v21;
    v54 = a1 + 56;
    v55 = a1;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v56 = (v20 - 1) & v20;
LABEL_13:
      a2 = v22 | (v16 << 6);
      v13 = *(*(a1 + 48) + 8 * a2);
      v25 = [v13 UUID];
      sub_22A4DB79C();

      v26 = *(v3 + 16);
      v57 = v13;
      if (!v26 || (v27 = *(v3 + 40), sub_229707FE8(&qword_281403880, MEMORY[0x277CC95F0]), v28 = sub_22A4DD4EC(), v29 = -1 << *(v3 + 32), v30 = v28 & ~v29, ((*(v62 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0))
      {
LABEL_18:
        (*v63)(v14, v64);
        a1 = v55;
        v35 = v57;
        goto LABEL_19;
      }

      v47[0] = a2;
      v58 = ~v29;
      v31 = *(v52 + 72);
      a2 = *(v52 + 16);
      while (1)
      {
        v6 = v3;
        v13 = v60;
        v32 = v64;
        (a2)(v60, *(v3 + 48) + v31 * v30, v64);
        sub_229707FE8(&qword_281403870, MEMORY[0x277CC95F0]);
        v33 = sub_22A4DD58C();
        v34 = *v63;
        (*v63)(v13, v32);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v58;
        v14 = v61;
        v3 = v6;
        if (((*(v62 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v14 = v61;
      v34(v61, v64);
      v35 = v57;
      v36 = [v57 home];
      a2 = &selRef_disconnectFromBTLEAccessoryServer_;
      v37 = [v36 ecosystem];

      v13 = &selRef_updateProfile;
      v38 = [v37 vendor];

      LOBYTE(v37) = [v38 isAppleVendor];
      if (v37)
      {
        v3 = v6;
        a1 = v55;
LABEL_19:

        v21 = v53;
        v17 = v54;
        v20 = v56;
      }

      else
      {
        v39 = [v35 home];
        v40 = [v39 ecosystem];

        v41 = [v40 vendor];
        a2 = [v41 isSystemCommissionerVendor];

        v3 = v6;
        v17 = v54;
        a1 = v55;
        v21 = v53;
        v20 = v56;
        if ((a2 & 1) == 0)
        {
          *&v50[(v47[0] >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << SLOBYTE(v47[0]);
          if (__OFADD__(v51++, 1))
          {
            __break(1u);
LABEL_26:
            v43 = sub_22966F7AC(v50, v48, v51, a1);

            goto LABEL_27;
          }
        }
      }
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_26;
      }

      v24 = *(v17 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v56 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v46 = swift_slowAlloc();

  v43 = sub_2297066FC(v46, v13, a1, a2);

  MEMORY[0x22AAD4E50](v46, -1, -1);

LABEL_27:
  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

uint64_t sub_229707260(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v56 = *(v4 - 8);
  v5 = v56[8];
  v6 = MEMORY[0x28223BE20](a1);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_229706C68(v8, a2);
  }

  v11 = MEMORY[0x277D84FA0];
  v65 = MEMORY[0x277D84FA0];

  v12 = sub_22A4DE09C();
  v13 = sub_22A4DE12C();
  if (v13)
  {
    v14 = v13;
    v15 = sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    v16 = v14;
    v61 = a2 + 56;
    v58 = v56 + 2;
    v52 = MEMORY[0x277D84FA0];
    v62 = (v56 + 1);
    v54 = v12;
    v55 = (v56 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = a2;
    v53 = v15;
    while (1)
    {
      v63 = v16;
      swift_dynamicCast();
      v17 = v64;
      v18 = [v64 UUID];
      sub_22A4DB79C();

      if (*(a2 + 16))
      {
        v19 = *(a2 + 40);
        sub_229707FE8(&qword_281403880, MEMORY[0x277CC95F0]);
        v20 = sub_22A4DD4EC();
        v21 = -1 << *(a2 + 32);
        v22 = v20 & ~v21;
        if ((*(v61 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v57 = v17;
          v23 = ~v21;
          v24 = v56[9];
          v25 = v56[2];
          while (1)
          {
            v26 = v59;
            v25(v59, *(v60 + 48) + v24 * v22, v4);
            sub_229707FE8(&qword_281403870, MEMORY[0x277CC95F0]);
            v27 = sub_22A4DD58C();
            v28 = *v62;
            (*v62)(v26, v4);
            if (v27)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v61 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              a2 = v60;
              goto LABEL_12;
            }
          }

          v28(v10, v4);
          v29 = v57;
          v30 = [v57 home];
          v31 = [v30 ecosystem];

          v32 = [v31 vendor];
          LOBYTE(v31) = [v32 isAppleVendor];

          a2 = v60;
          if ((v31 & 1) == 0)
          {
            v33 = [v29 home];
            v34 = [v33 ecosystem];

            v35 = [v34 vendor];
            LOBYTE(v34) = [v35 isSystemCommissionerVendor];

            if ((v34 & 1) == 0)
            {
              v36 = v64;
              v37 = *(v52 + 16);
              if (*(v52 + 24) <= v37)
              {
                sub_2295742C8(v37 + 1);
              }

              v38 = v65;
              v39 = *(v65 + 40);
              result = sub_22A4DDECC();
              v41 = v38 + 56;
              v42 = -1 << *(v38 + 32);
              v43 = result & ~v42;
              v44 = v43 >> 6;
              if (((-1 << v43) & ~*(v38 + 56 + 8 * (v43 >> 6))) != 0)
              {
                v45 = __clz(__rbit64((-1 << v43) & ~*(v38 + 56 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v46 = 0;
                v47 = (63 - v42) >> 6;
                do
                {
                  if (++v44 == v47 && (v46 & 1) != 0)
                  {
                    __break(1u);
                    return result;
                  }

                  v48 = v44 == v47;
                  if (v44 == v47)
                  {
                    v44 = 0;
                  }

                  v46 |= v48;
                  v49 = *(v41 + 8 * v44);
                }

                while (v49 == -1);
                v45 = __clz(__rbit64(~v49)) + (v44 << 6);
              }

              *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
              *(*(v38 + 48) + 8 * v45) = v36;
              v50 = *(v38 + 16) + 1;
              v52 = v38;
              *(v38 + 16) = v50;
              goto LABEL_14;
            }
          }
        }

        else
        {
          v28 = *v62;
LABEL_12:
          v28(v10, v4);
        }
      }

      else
      {
        (*v62)(v10, v4);
      }

LABEL_14:
      v16 = sub_22A4DE12C();
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  v52 = v11;
LABEL_33:

  return v52;
}

void _sSo25HMDMatterAccessoryAdapterC13HomeKitDaemonE17didUpdatePairings3forySo20HMMTRAccessoryServerC_tF_0()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = [v0 accessory];
  if (v12)
  {
    v13 = v12;
    if ([v12 isPrimary])
    {
      v61 = v2;
      sub_2296F8604();
      v14 = v0;
      v15 = v13;
      v16 = sub_22A4DD05C();
      v17 = sub_22A4DDCCC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v59 = v19;
        *v18 = 136315394;
        v62 = 91;
        v63 = 0xE100000000000000;
        v64 = v19;
        v20 = [v14 logIdentifier];
        v21 = sub_22A4DD5EC();
        v60 = v1;
        v22 = v21;
        v24 = v23;

        MEMORY[0x22AAD08C0](v22, v24);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v25 = sub_2295A3E30(v62, v63, &v64);

        *(v18 + 4) = v25;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v15;
        v26 = v58;
        *v58 = v13;
        v27 = v15;
        _os_log_impl(&dword_229538000, v16, v17, "%s Received pairing change update for accessory %@", v18, 0x16u);
        sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v26, -1, -1);
        v28 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x22AAD4E50](v28, -1, -1);
        MEMORY[0x22AAD4E50](v18, -1, -1);

        (*(v61 + 8))(v11, v60);
      }

      else
      {

        (*(v61 + 8))(v11, v1);
      }

      sub_2296F98DC();
    }

    else
    {
      sub_2296F8604();
      v39 = v0;
      v40 = v13;
      v41 = sub_22A4DD05C();
      v42 = sub_22A4DDCDC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v61 = v44;
        *v43 = 136315394;
        v62 = 91;
        v63 = 0xE100000000000000;
        v64 = v44;
        v45 = [v39 logIdentifier];
        v46 = v2;
        v47 = sub_22A4DD5EC();
        v60 = v1;
        v49 = v48;

        MEMORY[0x22AAD08C0](v47, v49);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v50 = sub_2295A3E30(v62, v63, &v64);

        *(v43 + 4) = v50;
        *(v43 + 12) = 2080;
        v51 = [v40 shortDescription];
        v52 = sub_22A4DD5EC();
        v54 = v53;

        v55 = sub_2295A3E30(v52, v54, &v64);

        *(v43 + 14) = v55;
        _os_log_impl(&dword_229538000, v41, v42, "%s Ignoring pairing change update for matter accessory %s because current accessory is not primary", v43, 0x16u);
        v56 = v61;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v56, -1, -1);
        MEMORY[0x22AAD4E50](v43, -1, -1);

        (*(v46 + 8))(v9, v60);
      }

      else
      {

        (*(v2 + 8))(v9, v1);
      }
    }
  }

  else
  {
    sub_2296F8604();
    v29 = v0;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v62 = 91;
      v63 = 0xE100000000000000;
      v64 = v33;
      v34 = [v29 logIdentifier];
      v35 = sub_22A4DD5EC();
      v37 = v36;

      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(v62, v63, &v64);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_229538000, v30, v31, "%s Unable to find accessory", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_229707E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297009A8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_229707F80()
{
  result = qword_27D87E440;
  if (!qword_27D87E440)
  {
    sub_229562F68(255, &unk_27D87CF00, 0x277CD1880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E440);
  }

  return result;
}

uint64_t sub_229707FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229708038(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    return v3(a2);
  }

  return result;
}

uint64_t objectdestroy_5Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_2297080F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2297015A0(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_2297081C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FE50, &qword_22A580970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297082C0()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  result = [v0 save_];
  if ((result & 1) == 0)
  {
    if (v5[0])
    {
      v2 = v5[0];
    }

    else
    {
      v3 = [objc_opt_self() hmErrorWithCode_];
    }

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_229708374(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA8, &qword_22A5809C0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229708440, 0, 0);
}

uint64_t sub_229708440()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v1[20];
  v12 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2297085F0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MADownloadResult(0);
  sub_22A4DD8DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229818420;
  v1[13] = &block_descriptor_4;
  [v9 startDownload:v12 then:v4];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2297085F0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297086D0, 0, 0);
}

uint64_t sub_2297086D0()
{
  v1 = v0[23];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

unint64_t sub_229708738()
{
  v1 = [*v0 attributes];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22A4DD49C();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];

    return sub_22956B3FC(v5);
  }
}

uint64_t sub_22970880C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2297088A4;

  return sub_229708374(a1);
}

uint64_t sub_2297088A4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2297089A0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA0, &qword_22A5809B0);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v0;
  v1[21] = v5;
  v1[22] = v6;

  return MEMORY[0x2822009F8](sub_229708A6C, 0, 0);
}

uint64_t sub_229708A6C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v10 = v0 + 19;
  v8 = v0[19];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_229708C10;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MAPurgeResult(0);
  sub_22A4DD8DC();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229708D20;
  v1[13] = &block_descriptor_21;
  [v6 purge_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229708C10()
{
  v1 = *(*v0 + 168);
  v5 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_229708D20(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA0, &qword_22A5809B0);
  return sub_22A4DD8FC();
}

uint64_t sub_229708D84()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFB0, &qword_22A5809F0);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v0;
  v1[21] = v5;
  v1[22] = v6;

  return MEMORY[0x2822009F8](sub_229708E50, 0, 0);
}

uint64_t sub_229708E50()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v10 = v0 + 19;
  v8 = v0[19];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_229708C10;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MAQueryResult(0);
  sub_22A4DD8DC();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229708FF4;
  v1[13] = &block_descriptor_22;
  [v6 queryMetaData_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229708FF4(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFB0, &qword_22A5809F0);
  return sub_22A4DD8FC();
}

void *sub_229709050()
{
  v1 = [*v0 results];
  if (v1)
  {
    v2 = v1;
    sub_2297090CC();
    v3 = sub_22A4DD83C();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_229869C38(v3);

  return v4;
}

unint64_t sub_2297090CC()
{
  result = qword_281401780;
  if (!qword_281401780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401780);
  }

  return result;
}

uint64_t sub_229709204()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709274()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709300()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_22970935C()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297093B8()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709414()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709470()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297094E0()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709550()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297095AC()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709608()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709664()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297096C0()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  a3(0);
  (*(a2 + 16))();

  return sub_22A4DD06C();
}

uint64_t sub_2297097D0()
{
  _s26NetworkDiagnosticsObserverCMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFB8, &qword_22A580A10);
  return sub_22A4DD64C();
}

uint64_t sub_229709818()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709874(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  (*(a2 + 16))(a1, a2);

  return sub_22A4DD06C();
}

uint64_t sub_229709918()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709974()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297099D0()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709A54(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  v10 = *a5;

  return sub_22A4DD06C();
}

uint64_t sub_229709B04()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709B60()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709BBC()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709C18()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709C74(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  (*(a2 + 16))(v2, a2);

  return sub_22A4DD06C();
}

uint64_t sub_229709D14()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709D6C()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709EF8()
{
  sub_2295798D4(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_229709F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  return MEMORY[0x2822009F8](sub_229709F84, 0, 0);
}

uint64_t sub_229709F84()
{
  v31 = v0;
  v1 = *(v0 + 216);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 72))(v2, v3);
  if (v4)
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 216);

    v7 = v1[3];
    v8 = v1[4];
    v9 = __swift_project_boxed_opaque_existential_0(v6, v7);
    v10 = sub_22970B6F4(v9, v5, v7, v8);
    if (!v10)
    {
      v10 = sub_22956AC5C(MEMORY[0x277D84F90]);
    }

    v11 = v10;
    v12 = *(v0 + 224);
    *(v0 + 208) = v11;
    sub_22961995C(v12, v0 + 96);
    v14 = *(v0 + 232);
    v13 = *(v0 + 240);
    if (*(v0 + 120))
    {
      sub_229543C58(v0 + 96, v0 + 160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30[0] = v11;
      v16 = *(v0 + 184);
      v17 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 160, v16);
      v18 = *(v16 - 8);
      v19 = *(v18 + 64) + 15;
      v20 = swift_task_alloc();
      (*(v18 + 16))(v20, v17, v16);
      sub_2297FF768(v20, v14, v13, isUniquelyReferenced_nonNull_native, v30, v16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 160));

      v21 = v30[0];
      *(v0 + 208) = v30[0];
    }

    else
    {
      sub_22953EAE4(v0 + 96, &unk_27D87FC20, &unk_22A578810);
      sub_2297FCFD4(v14, v13, (v0 + 128));
      sub_22953EAE4(v0 + 128, &unk_27D87FC20, &unk_22A578810);
      v21 = *(v0 + 208);
    }

    *(v0 + 256) = v21;
    v27 = swift_task_alloc();
    *(v0 + 264) = v27;
    *v27 = v0;
    v27[1] = sub_22970A37C;
    v28 = *(v0 + 248);
    v29 = *(v0 + 216);

    return sub_22970A4FC(v29, v21);
  }

  else
  {
    v22 = *(v0 + 216);
    type metadata accessor for HMError(0);
    *(v0 + 200) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A593250);
    __swift_project_boxed_opaque_existential_0(v22, v1[3]);
    sub_22A4DE5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v24 = *(v0 + 192);
    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_22970A37C()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_22970A498;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22970A498()
{
  v1 = v0[32];

  v2 = v0[34];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22970A4FC(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = sub_22A4DB7DC();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22970A5C0, 0, 0);
}

uint64_t sub_22970A5C0()
{
  v49 = v0;
  v1 = *(v0 + 216);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 72))(v2, v3);
  *(v0 + 264) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = v1[3];
    v7 = v1[4];
    __swift_project_boxed_opaque_existential_0(*(v0 + 216), v6);
    v8 = (*(v7 + 80))(v6, v7);
    *(v0 + 272) = v8;
    if (v8)
    {
      v9 = v8;
      if (qword_281401968 != -1)
      {
        swift_once();
      }

      v10 = sub_22A4DD5AC();
      v11 = [v5 applicationDataForIdentifier_];

      if (!v11 || (v12 = sub_22A4DD49C(), v11, v13 = sub_22976EEB8(v12), , !v13))
      {
        v13 = sub_22956AC5C(MEMORY[0x277D84F90]);
      }

      v14 = *(v0 + 224);
      *(v0 + 208) = v13;
      v15 = sub_22A4DD5EC();
      v17 = v15;
      v18 = v16;
      if (v14)
      {
        v19 = *(v0 + 224);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        *(v0 + 120) = v20;
        *(v0 + 96) = v19;
        sub_229543C58(v0 + 96, v0 + 160);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48[0] = v13;
        v21 = *(v0 + 184);
        v22 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 160, v21);
        v23 = v9;
        v24 = *(v21 - 8);
        v25 = *(v24 + 64) + 15;
        v26 = swift_task_alloc();
        (*(v24 + 16))(v26, v22, v21);
        v9 = v23;
        sub_2297FF768(v26, v17, v18, isUniquelyReferenced_nonNull_native, v48, v20);

        __swift_destroy_boxed_opaque_existential_0((v0 + 160));

        v27 = v48[0];
        *(v0 + 208) = v48[0];
      }

      else
      {
        sub_2297FCFD4(v15, v16, (v0 + 128));

        sub_22953EAE4(v0 + 128, &unk_27D87FC20, &unk_22A578810);
        v27 = *(v0 + 208);
      }

      v34 = *(v0 + 256);
      v35 = *(v0 + 232);
      sub_2296F77EC(v27);

      v36 = sub_22A4DD47C();

      v37 = sub_22A4DD5AC();
      [v5 setApplicationData:v36 forIdentifier:v37];

      v38 = [v5 modelObjectWithChangeType_];
      *(v0 + 280) = v38;
      v39 = sub_22A4DD5AC();
      v40 = [objc_opt_self() defaultXPCOptions];
      v41 = [v9 transaction:v39 options:v40];
      *(v0 + 288) = v41;

      v42 = v38;
      [v41 add_];
      v43 = [v42 uuid];

      sub_22A4DB79C();
      v44 = swift_task_alloc();
      *(v0 + 296) = v44;
      v44[2] = v41;
      v44[3] = v35;
      v44[4] = v34;
      v45 = *(MEMORY[0x277D85A40] + 4);
      v46 = swift_task_alloc();
      *(v0 + 304) = v46;
      *v46 = v0;
      v46[1] = sub_22970AC98;

      return MEMORY[0x2822008A0]();
    }
  }

  v28 = *(v0 + 216);
  type metadata accessor for HMError(0);
  *(v0 + 200) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6E6F73616552;
  *(inited + 16) = xmmword_22A576180;
  *(inited + 40) = 0xE600000000000000;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A593250);
  __swift_project_boxed_opaque_existential_0(v28, v1[3]);
  sub_22A4DE5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v30 = *(v0 + 192);
  swift_willThrow();
  v31 = *(v0 + 256);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22970AC98()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_22970AE60;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_22970ADB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22970ADB4()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22970AE60()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);

  (*(v7 + 8))(v4, v6);
  v8 = *(v0 + 312);
  v9 = *(v0 + 256);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22970AF1C()
{
  result = sub_22A4DD5EC();
  qword_281404FE0 = result;
  *algn_281404FE8 = v1;
  return result;
}

void sub_22970AF4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v10 + 16))(&v18 - v12, a1, v9);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v6);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v18;
  (*(v10 + 32))(v16 + v14, v13, v9);
  (*(v7 + 32))(v16 + v15, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_22970B984;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2295AAF60;
  aBlock[3] = &block_descriptor_23;
  v17 = _Block_copy(aBlock);

  [v19 run_];
  _Block_release(v17);
}

uint64_t sub_22970B1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22A4DD07C();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *MEMORY[0x277D0F1A8];
  if (a1)
  {
    sub_22A4DD5EC();
    v19 = a1;
    sub_22A4DD06C();
    v20 = a1;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCCC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v23 = 136315394;
      v26 = sub_22A4DE8EC();
      v28 = sub_2295A3E30(v26, v27, &v46);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v30;
      *v24 = v30;
      _os_log_impl(&dword_229538000, v21, v22, "%s Failed to update demo mode model: %@", v23, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v11 + 8))(v17, v44);
    v46 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    sub_22A4DD5EC();
    sub_22A4DD06C();
    (*(v7 + 16))(v10, a4, v6);
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCCC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v34 = 136315394;
      v35 = sub_22A4DE8EC();
      v37 = sub_2295A3E30(v35, v36, &v46);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0]);
      v38 = sub_22A4DE5CC();
      v40 = v39;
      (*(v7 + 8))(v10, v6);
      v41 = sub_2295A3E30(v38, v40, &v46);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_229538000, v32, v33, "%s Successfully updated demo mode model %s ", v34, 0x16u);
      v42 = v43;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v42, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(v11 + 8))(v15, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

void *sub_22970B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = (*(a4 + 72))(a3, a4);
  if (v10)
  {
    if (qword_281401968 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD5AC();
    v12 = [v10 applicationDataForIdentifier_];

    if (v12)
    {
      v13 = sub_22A4DD49C();

      v10 = sub_22976EEB8(v13);

      if (!v10)
      {
        goto LABEL_14;
      }

      v14 = sub_22A4DD5EC();
      if (v10[2])
      {
        v16 = sub_229543DBC(v14, v15);
        v18 = v17;

        if (v18)
        {
          sub_2295404B0(v10[7] + 32 * v16, v21);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
          if (swift_dynamicCast())
          {
            v10 = v20[1];
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v10 = 0;
  }

LABEL_14:
  (*(v6 + 8))(v9, a3);
  return v10;
}

uint64_t sub_22970B984(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22A4DB7DC() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22970B1D8(a1, v7, v1 + v4, v8);
}

unint64_t type metadata accessor for HMDHAPAccessoryDefaultDataSource()
{
  result = qword_27D880060;
  if (!qword_27D880060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D880060);
  }

  return result;
}

uint64_t sub_22970BCE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 home];
  v9 = [a1 uuid];
  sub_22A4DB79C();

  v10 = [a1 logIdentifier];
  v11 = sub_22A4DD5EC();
  v13 = v12;

  v14 = [objc_opt_self() sharedLogEventSubmitter];
  type metadata accessor for ThermostatSuggestedPresetLogEventFactory();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = type metadata accessor for DefaultHAPAccessoryClimateStorage();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  (*(v4 + 16))(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_uuid, v7, v3);
  v27 = 91;
  v28 = 0xE100000000000000;
  MEMORY[0x22AAD08C0](v11, v13);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);

  v20 = v27;
  v21 = v28;
  result = (*(v4 + 8))(v7, v3);
  v23 = (v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID);
  *v23 = v20;
  v23[1] = v21;
  *(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_thermostatSuggestedLogEventFactory) = v15;
  v24 = v26;
  v26[3] = v16;
  v24[4] = &off_283CE0160;
  *v24 = v19;
  return result;
}

uint64_t sub_22970BFA4(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = sub_22A4DD39C();
  v1[5] = v6;
  v7 = *(v6 - 8);
  v1[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v1[7] = v9;
  v10 = *(MEMORY[0x277CC5880] + 4);
  v11 = swift_task_alloc();
  v1[8] = v11;
  *v11 = v1;
  v11[1] = sub_22970C100;

  return MEMORY[0x282116518](v9, a1);
}

uint64_t sub_22970C100()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_22970C4EC;
  }

  else
  {
    v3 = sub_22970C214;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22970C214()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_22A4DD46C();
  sub_22A4DD37C();
  v3 = *(MEMORY[0x277CC5898] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22970C2D4;
  v5 = v0[4];

  return MEMORY[0x282116580](v5);
}

uint64_t sub_22970C2D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  v6[11] = v2;

  v9 = v6[4];
  v10 = v6[3];
  v11 = v6[2];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_22970C55C;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_22970C460;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_22970C460()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];
  v4 = v0[12];
  v3 = v0[13];

  return v2(v3, v4);
}

uint64_t sub_22970C4EC()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22970C55C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

unint64_t CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A577B20;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022A5934D0;
  v8 = MEMORY[0x277D83B88];
  *(inited + 48) = *&v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions];
  *(inited + 72) = v8;
  strcpy((inited + 80), "numClipUploads");
  *(inited + 95) = -18;
  *(inited + 96) = *&v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads];
  *(inited + 120) = v8;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = 0x800000022A5934F0;
  *(inited + 144) = *&v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds];
  *(inited + 168) = v8;
  *(inited + 176) = 0x44495555656D6F68;
  *(inited + 184) = 0xE800000000000000;
  v9 = [v1 homeUUID];
  sub_22A4DB79C();

  v10 = sub_22A4DB76C();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  v13 = MEMORY[0x277D837D0];
  *(inited + 192) = v10;
  *(inited + 200) = v12;
  *(inited + 216) = v13;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x800000022A593510;
  LOBYTE(v13) = v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent];
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v13;
  v14 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_22A4DB77C();
  v17.receiver = v12;
  v17.super_class = v6;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_22A4DB7DC();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_22A4DB77C();
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_22A4DB7DC();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_22A4DB7DC();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    v41 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  v12 = sub_229543DBC(0xD000000000000014, 0x800000022A5934D0);
  if ((v13 & 1) == 0)
  {
    v41 = 0;
    v16 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_14:
    v39 = 0;
    v40 = 0;
    v21 = 1;
    goto LABEL_22;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v12, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v14 = swift_dynamicCast();
  v15 = v44;
  if (!v14)
  {
    v15 = 0;
  }

  v41 = v15;
  v16 = v14 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v17 = sub_229543DBC(0x5570696C436D756ELL, 0xEE007364616F6C70);
  if (v18)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v17, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v19 = swift_dynamicCast();
    v20 = v44;
    if (!v19)
    {
      v20 = 0;
    }

    v40 = v20;
    v21 = v19 ^ 1;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v40 = 0;
    v21 = 1;
    if (!*(a1 + 16))
    {
LABEL_21:
      v39 = 0;
LABEL_22:
      v26 = 1;
      if (*(a1 + 16))
      {
        goto LABEL_23;
      }

LABEL_20:
      v27 = 0;
      goto LABEL_36;
    }
  }

  v22 = sub_229543DBC(0xD00000000000001FLL, 0x800000022A5934F0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v22, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v24 = swift_dynamicCast();
  v25 = v44;
  if (!v24)
  {
    v25 = 0;
  }

  v39 = v25;
  v26 = v24 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_23:
  v28 = sub_229543DBC(0x44495555656D6F68, 0xE800000000000000);
  if (v29)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v28, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v27 = v45;
    }

    else
    {
      v27 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v27 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  v30 = sub_229543DBC(0xD000000000000013, 0x800000022A593510);
  if (v31)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v30, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v32 = v44;
    }

    else
    {
      v32 = 2;
    }

    if (v16)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_36:

  v32 = 2;
  if (v16)
  {
LABEL_39:

LABEL_40:
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_37:
  if (v21 || v26)
  {
    goto LABEL_39;
  }

  if (!v27)
  {
    goto LABEL_40;
  }

  sub_22A4DB75C();

  v34 = v42;
  if ((*(v42 + 48))(v7, 1, v8) == 1)
  {
    sub_22970D68C(v7);
    goto LABEL_40;
  }

  (*(v34 + 32))(v11, v7, v8);
  if (v32 == 2)
  {
    (*(v34 + 8))(v11, v8);
    goto LABEL_40;
  }

  v35 = v40;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v41;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v35;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v39;
  v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = v32;
  v36 = sub_22A4DB77C();
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v46, sel_initWithHomeUUID_, v36);

  (*(v34 + 8))(v11, v8);
  return v37;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventName.getter()
{
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent))
  {
    result = 0xD000000000000047;
  }

  else
  {
    result = 0xD00000000000003DLL;
  }

  *(v0 + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent);
  return result;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761B0;
  strcpy((inited + 32), "numClipUploads");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000022A5934D0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x800000022A5934F0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v2;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22A4DB77C();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_22A4DB7DC();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22A4DB77C();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_22A4DB7DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id CameraRecordingEventDailySummaryLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22970D68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22970D804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5779B0;
  strcpy((inited + 32), "presetScenario");
  *(inited + 47) = -18;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_presetScenario);
  *(inited + 48) = sub_22A4DE74C();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000022A5936B0;
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_nextPresetScenario);
  *(inited + 72) = sub_22A4DE74C();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000022A5936D0;
  v4 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_durationInMinutes);
  *(inited + 96) = sub_22A4DDB3C();
  strcpy((inited + 104), "changedReason");
  *(inited + 118) = -4864;
  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_changedReason);
  *(inited + 120) = sub_22A4DE74C();
  v6 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v6;
}

id sub_22970D9CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThermostatSuggestedPresetLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22970DA38()
{
  v0 = sub_22A4DB28C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22A4DB25C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  return 0x1000000000;
}

uint64_t sub_22970DC0C()
{
  v0 = sub_22A4DB7DC();
  __swift_allocate_value_buffer(v0, qword_27D8AB968);
  __swift_project_value_buffer(v0, qword_27D8AB968);
  return sub_22A4DB7AC();
}

uint64_t sub_22970DC84(unsigned __int8 *a1)
{
  v1 = *(a1 + 1);
  v2 = a1[7];
  v3 = a1[6];
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[3];
  v7 = a1[2];
  v8 = a1[1];
  v9 = *a1;
  return sub_22A4DB7AC();
}

unint64_t sub_22970DD00()
{
  v1 = v0;
  v16 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8800C0, "<(\b");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0;
  v3 = type metadata accessor for NetworkDiagnosticsSymptom();
  v4 = v0 + *(v3 + 24);
  v13 = sub_22A4DB7BC();
  v14 = v5;
  *(inited + 40) = sub_22958FC04(&v13, v15);
  *(inited + 48) = v6;
  *(inited + 56) = 1;
  v7 = v1 + *(v3 + 28);
  v13 = sub_22A4DB7BC();
  v14 = v8;
  *(inited + 64) = sub_22958FC04(&v13, v15);
  *(inited + 72) = v9;
  v10 = sub_22956B1CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8800C8, &qword_22A580B78);
  swift_arrayDestroy();
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t type metadata accessor for NetworkDiagnosticsSymptom()
{
  result = qword_27D8800D0;
  if (!qword_27D8800D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22970DEA0()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22970DF2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (![v3 value])
  {
    v37 = 0u;
    v38 = 0u;
    goto LABEL_15;
  }

  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v6 = v36;
  v7 = __swift_project_boxed_opaque_existential_0(&v35, v36);
  v34 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  sub_229543C5C(v33, &v37);
  __swift_destroy_boxed_opaque_existential_0(&v35);
  if (!*(&v38 + 1))
  {
LABEL_15:
    sub_22953EAE4(&v37, &unk_27D87FC20, &unk_22A578810);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = [v3 service];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = sub_229773768(v10);

  if (!v11)
  {
    goto LABEL_19;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_229543DBC(a1, a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2295404B0(*(v11 + 56) + 32 * v12, &v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v14 = v35;
  if (!v35[2])
  {
    goto LABEL_18;
  }

  v15 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972);
  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2295404B0(*(v14 + 56) + 32 * v15, &v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_19:

    return 0;
  }

  v17 = v35;
  v18 = v35[2];
  if (!v18)
  {
LABEL_18:

    goto LABEL_19;
  }

  v19 = 0;
  v20 = &qword_281401770;
  v32 = v35[2];
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v17 + 8 * v19 + 32);
    if (*(v21 + 16))
    {
      break;
    }

LABEL_21:
    if (v18 == ++v19)
    {
      goto LABEL_18;
    }
  }

  v22 = *(v17 + 8 * v19 + 32);

  v23 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449);
  if ((v24 & 1) == 0 || (sub_2295404B0(*(v21 + 56) + 32 * v23, &v37), sub_229562F68(0, v20, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_21;
  }

  v25 = v35;
  v26 = [v10 findCharacteristic_];

  if (!v26)
  {

    goto LABEL_21;
  }

  v27 = v20;
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v28 = v3;
  v29 = sub_22A4DDEDC();

  if ((v29 & 1) == 0)
  {

    v20 = v27;
    v18 = v32;
    goto LABEL_21;
  }

  if (!*(v21 + 16) || (v30 = sub_229543DBC(0x65756C6156, 0xE500000000000000), (v31 & 1) == 0))
  {

    return 0;
  }

  sub_2295404B0(*(v21 + 56) + 32 * v30, &v37);

  if (swift_dynamicCast())
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22970E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[46] = a4;
  v5[47] = v4;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return MEMORY[0x2822009F8](sub_22970E3C0, 0, 0);
}

uint64_t sub_22970E3C0()
{
  v1 = [*(v0 + 376) service];
  *(v0 + 384) = v1;
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  if (![*(v0 + 376) value])
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_9;
  }

  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v3 = *(v0 + 72);
  v4 = __swift_project_boxed_opaque_existential_0((v0 + 48), v3);
  *(v0 + 104) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
  sub_229543C5C((v0 + 80), (v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  if (!*(v0 + 40))
  {
LABEL_9:

    sub_22953EAE4(v0 + 16, &unk_27D87FC20, &unk_22A578810);
    goto LABEL_11;
  }

  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 368);
    v7 = *(v0 + 312);

    v8 = swift_task_alloc();
    *(v0 + 400) = v8;
    *v8 = v0;
    v8[1] = sub_22970E5C8;
    v9 = *(v0 + 360);

    return sub_22976F760(v9, v6);
  }

LABEL_11:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22970E5C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v7 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v5 = sub_22970EE60;
  }

  else
  {
    v5 = sub_22970E6DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22970E6DC()
{
  v45 = v0;
  v1 = *(v0 + 408);
  if (!v1)
  {

    goto LABEL_19;
  }

  if (!*(v1 + 16) || (v2 = 0xEF73636974736972, v3 = *(v0 + 408), v4 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972), (v5 & 1) == 0) || (v6 = *(v0 + 392), sub_2295404B0(*(v1 + 56) + 32 * v4, v0 + 112), v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {

LABEL_19:
    v20 = *(v0 + 8);

    return v20();
  }

  v43 = v7;
  v8 = *(v0 + 376);
  v9 = *(v0 + 328);
  *(v0 + 320) = v9;

  v10 = sub_22970FED0();
  v11 = v10;
  v12 = *(v9 + 16);
  if (v12)
  {
    v42 = v10;
    v2 = 0;
    while (1)
    {
      if (v2 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v11 = v9 + 8 * v2;
      v13 = *(v11 + 32);
      if (*(v13 + 16))
      {
        v14 = *(v11 + 32);

        v8 = v13;
        v15 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449);
        if (v16 & 1) != 0 && (v8 = *(v0 + 392), sub_2295404B0(*(v13 + 56) + 32 * v15, v0 + 144), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast()) && (v8 = *(v0 + 336), v17 = [*(v0 + 384) findCharacteristic_], v8, v17))
        {
          v18 = *(v0 + 376);
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          v19 = v18;
          v8 = sub_22A4DDEDC();

          if (v8)
          {

            if (v2 < *(v9 + 16))
            {
              v11 = *(v11 + 32);

              sub_2295AFD4C(v2);

              v2 = 0xEF73636974736972;
              goto LABEL_24;
            }

            __break(1u);
            return result;
          }
        }

        else
        {
        }
      }

      if (v12 == ++v2)
      {

        v2 = 0xEF73636974736972;
        v9 = 0x6574636172616843;
        v11 = v42;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v9 = 0x6574636172616843;
LABEL_25:
  v21 = *(v0 + 344);
  v22 = *(v0 + 352);
  *(v0 + 200) = MEMORY[0x277D837D0];
  *(v0 + 176) = v21;
  *(v0 + 184) = v22;
  sub_229543C5C((v0 + 176), (v0 + 208));

  LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
  v44 = v11;
  v23 = *(v0 + 232);
  v24 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 208, v23);
  v25 = *(v23 - 8);
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  (*(v25 + 16))(v27, v24, v23);
  sub_2297FE940(*v27, v27[1], 0x65756C6156, 0xE500000000000000, v22, &v44);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  v11 = v44;
  v8 = *(v0 + 320);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v8 = sub_22958A770(0, *(v8 + 16) + 1, 1, v8);
  }

  v29 = *(v8 + 16);
  v28 = *(v8 + 24);
  if (v29 >= v28 >> 1)
  {
    v8 = sub_22958A770((v28 > 1), v29 + 1, 1, v8);
  }

  *(v0 + 424) = v8;
  *(v8 + 16) = v29 + 1;
  *(v8 + 8 * v29 + 32) = v11;
  *(v0 + 264) = v43;
  *(v0 + 240) = v8;
  sub_229543C5C((v0 + 240), (v0 + 272));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v1;
  v31 = *(v0 + 296);
  v32 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 272, v31);
  v33 = *(v31 - 8);
  v34 = *(v33 + 64) + 15;
  v35 = swift_task_alloc();
  (*(v33 + 16))(v35, v32, v31);
  sub_2297FED58(*v35, v9, v2, isUniquelyReferenced_nonNull_native, &v44);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v36 = v44;
  *(v0 + 432) = v44;
  v37 = swift_task_alloc();
  *(v0 + 440) = v37;
  *v37 = v0;
  v37[1] = sub_22970ECD4;
  v38 = *(v0 + 384);
  v39 = *(v0 + 360);
  v40 = *(v0 + 368);

  return sub_2297712F4(v36, v39, v40);
}

uint64_t sub_22970ECD4()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_22970EEC4;
  }

  else
  {
    v3 = sub_22970EDE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22970EDE8()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22970EE60()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22970EEC4()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  v3 = *(v0 + 448);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22970EF3C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27D8800E0);
  swift_endAccess();
  if (v1)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22953EAE4(v6, &unk_27D87DE60, &unk_22A57A960);
    return 0;
  }
}

uint64_t sub_22970F02C()
{
  v0 = sub_22971032C();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22A580BB0;
  *(v3 + 32) = sub_229562F68(0, &unk_27D880900, 0x277CBEA60);
  *(v3 + 40) = sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  *(v3 + 48) = sub_229562F68(0, &qword_27D8800F0, 0x277CBEA90);
  *(v3 + 56) = sub_229562F68(0, &qword_27D8800F8, 0x277CBEAA8);
  *(v3 + 64) = sub_229562F68(0, &qword_27D880100, 0x277CBEAC0);
  *(v3 + 72) = sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
  *(v3 + 80) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(v3 + 88) = sub_229562F68(0, &qword_27D880108, 0x277CCACA8);
  *(v3 + 96) = sub_229562F68(0, &qword_27D880110, 0x277CCAD78);
  *(v3 + 104) = sub_229562F68(0, &qword_27D880118, 0x277CBEBC0);
  result = sub_229562F68(0, &qword_27D880120, 0x277CBEB68);
  *(v3 + 112) = result;
  qword_27D8AB980 = v3;
  return result;
}

uint64_t sub_22970F1B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v44 - v7;
  v9 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  if ([v1 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v10 = *(&v51 + 1);
    v11 = __swift_project_boxed_opaque_existential_0(&v50, *(&v51 + 1));
    v45 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    sub_229543C5C(v44, &v46);
    __swift_destroy_boxed_opaque_existential_0(&v50);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  v13 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    v14 = __swift_project_boxed_opaque_existential_0(&v48, *(&v49 + 1));
    *(&v51 + 1) = v13;
    v15 = __swift_allocate_boxed_opaque_existential_1(&v50);
    (*(*(v13 - 8) + 16))(v15, v14, v13);
    __swift_destroy_boxed_opaque_existential_0(&v48);
    if (*(&v51 + 1))
    {
      sub_229543C5C(&v50, &v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v9;
      sub_229543C6C(&v48, 0x65756C6176, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      v52 = v46;
      goto LABEL_9;
    }
  }

  else
  {
    sub_22953EAE4(&v48, &unk_27D87FC20, &unk_22A578810);
    v50 = 0u;
    v51 = 0u;
  }

  sub_22953EAE4(&v50, &unk_27D87DE60, &unk_22A57A960);
  sub_2297FD000(0x65756C6176, 0xE500000000000000, &v48);
  sub_22953EAE4(&v48, &unk_27D87DE60, &unk_22A57A960);
LABEL_9:
  v17 = [v1 notificationContext];
  if (v17)
  {
    v18 = v17;
    v19 = sub_22A4DB62C();
    v21 = v20;

    *(&v51 + 1) = MEMORY[0x277CC9318];
    *&v50 = v19;
    *(&v50 + 1) = v21;
    sub_229543C5C(&v50, &v48);
    v22 = v52;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v22;
    sub_229543C6C(&v48, 0xD000000000000013, 0x800000022A593780, v23);
    v52 = v46;
  }

  else
  {
    sub_2297FD000(0xD000000000000013, 0x800000022A593780, &v50);
    sub_22953EAE4(&v50, &unk_27D87DE60, &unk_22A57A960);
  }

  v24 = [v1 stateNumber];
  if (v24)
  {
    v25 = v24;
    *(&v51 + 1) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    *&v50 = v25;
    sub_229543C5C(&v50, &v48);
    v26 = v52;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v26;
    sub_229543C6C(&v48, 0x6D754E6574617473, 0xEB00000000726562, v27);
    v52 = v46;
  }

  else
  {
    sub_2297FD000(0x6D754E6574617473, 0xEB00000000726562, &v50);
    sub_22953EAE4(&v50, &unk_27D87DE60, &unk_22A57A960);
  }

  v28 = [v1 lastKnownValueUpdateTime];
  if (v28)
  {
    v29 = v28;
    sub_22A4DB70C();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_22A4DB74C();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v6, v30, 1, v31);
  sub_2296692F8(v6, v8);
  if ((*(v32 + 48))(v8, 1, v31) == 1)
  {
    sub_22953EAE4(v8, &unk_27D881AA0, &qword_22A57BC20);
    sub_2297FD000(0xD000000000000018, 0x800000022A593760, &v50);
    sub_22953EAE4(&v50, &unk_27D87DE60, &unk_22A57A960);
  }

  else
  {
    *(&v51 + 1) = v31;
    v33 = __swift_allocate_boxed_opaque_existential_1(&v50);
    (*(v32 + 32))(v33, v8, v31);
    sub_229543C5C(&v50, &v48);
    v34 = v52;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v34;
    sub_229543C6C(&v48, 0xD000000000000018, 0x800000022A593760, v35);
    v52 = v46;
  }

  v36 = sub_22970EF3C();
  if (v37)
  {
    sub_2297FD000(0x6544657461647075, 0xEB0000000079616CLL, &v50);
    sub_22953EAE4(&v50, &unk_27D87DE60, &unk_22A57A960);
  }

  else
  {
    *(&v51 + 1) = MEMORY[0x277D839F8];
    *&v50 = v36;
    sub_229543C5C(&v50, &v48);
    v38 = v52;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v38;
    sub_229543C6C(&v48, 0x6544657461647075, 0xEB0000000079616CLL, v39);
  }

  v40 = sub_22A4DD47C();

  v41 = encodeRootObject();

  v42 = sub_22A4DB62C();
  return v42;
}

uint64_t sub_22970F850()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229562F68(0, &qword_27D8800E8, 0x277CCAAC8);
  if (qword_27D87BA58 != -1)
  {
    swift_once();
  }

  sub_229869E94(qword_27D8AB980);
  sub_22A4DDD1C();
  if (v0)
  {

    goto LABEL_5;
  }

  if (!v38)
  {
    sub_22953EAE4(v37, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    [objc_opt_self() hmErrorWithCode_];
    return swift_willThrow();
  }

  v11 = v35;
  if (v35[2] && (v12 = sub_229543DBC(0x6D754E6574617473, 0xEB00000000726562), (v13 & 1) != 0) && (sub_2295404B0(v11[7] + 32 * v12, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v35;
  }

  else
  {
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v14 = sub_22A4DDEBC();
  }

  if (v11[2] && (v15 = sub_229543DBC(0xD000000000000018, 0x800000022A593760), (v16 & 1) != 0))
  {
    sub_2295404B0(v11[7] + 32 * v15, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v17 = swift_dynamicCast();
    (*(v6 + 56))(v4, v17 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v4, v5);
      goto LABEL_21;
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_22A4DB73C();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_22953EAE4(v4, &unk_27D881AA0, &qword_22A57BC20);
  }

LABEL_21:
  if (v11[2] && (v18 = sub_229543DBC(0xD000000000000018, 0x800000022A593760), (v19 & 1) != 0) && (sub_2295404B0(v11[7] + 32 * v18, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v35;
    v20 = v36;
  }

  else
  {
    v21 = 0;
    v20 = 0xC000000000000000;
  }

  v34 = v20;
  if (v11[2] && (v22 = sub_229543DBC(0x65756C6176, 0xE500000000000000), (v23 & 1) != 0))
  {
    sub_2295404B0(v11[7] + 32 * v22, v37);
    __swift_project_boxed_opaque_existential_0(v37, v38);
    v24 = sub_22A4DE5FC();
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_22A4DB6AC();
  v26 = v14;
  v33 = v21;
  v27 = sub_22A4DB61C();
  [v39 updateValue:v24 updatedTime:v25 stateNumber:v26 notificationContext:v27];
  swift_unknownObjectRelease();

  if (!v11[2] || (v28 = sub_229543DBC(0x6544657461647075, 0xEB0000000079616CLL), (v29 & 1) == 0))
  {

    v31 = v33;
    goto LABEL_35;
  }

  sub_2295404B0(v11[7] + 32 * v28, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v30 = swift_dynamicCast();
  v31 = v33;
  if ((v30 & 1) == 0)
  {
LABEL_35:
    v32 = 0;
    goto LABEL_36;
  }

  v32 = sub_22A4DDB3C();
LABEL_36:
  swift_beginAccess();
  objc_setAssociatedObject(v39, &unk_27D8800E0, v32, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_2295798D4(v31, v34);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22970FED0()
{
  v1 = [v0 instanceID];
  *(&v38 + 1) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *&v37 = v1;
  sub_229543C5C(&v37, v35);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = v2;
  v4 = v36;
  v5 = __swift_mutable_project_boxed_opaque_existential_0(v35, v36);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_2297FED80(*v8, 0x65636E6174736E49, 0xEA00000000004449, isUniquelyReferenced_nonNull_native, v33);
  __swift_destroy_boxed_opaque_existential_0(v35);
  v10 = v33[0];
  v11 = [v0 type];
  v12 = sub_22A4DD5EC();
  v14 = v13;

  *(&v38 + 1) = MEMORY[0x277D837D0];
  *&v37 = v12;
  *(&v37 + 1) = v14;
  sub_229543C5C(&v37, v35);
  LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = v10;
  v15 = v36;
  v16 = __swift_mutable_project_boxed_opaque_existential_0(v35, v36);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  sub_2297FE940(*v19, v19[1], 1701869908, 0xE400000000000000, v11, v33);
  __swift_destroy_boxed_opaque_existential_0(v35);
  v21 = v33[0];
  v39 = v33[0];
  if ([v0 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v22 = v36;
    v23 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v34 = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
    sub_229543C5C(v33, &v37);
    __swift_destroy_boxed_opaque_existential_0(v35);
    if (*(&v38 + 1))
    {
      sub_229543C5C(&v37, v35);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = v21;
      v26 = v36;
      v27 = __swift_mutable_project_boxed_opaque_existential_0(v35, v36);
      v28 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v27);
      v30 = v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_2297FF768(v30, 0x65756C6156, 0xE500000000000000, v25, v33, v26);
      __swift_destroy_boxed_opaque_existential_0(v35);
      return v33[0];
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  sub_22953EAE4(&v37, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x65756C6156, 0xE500000000000000, v35);
  sub_22953EAE4(v35, &unk_27D87FC20, &unk_22A578810);
  return v39;
}

uint64_t sub_22971032C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EE0, &qword_22A580BC0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D880128;
    v3 = &unk_22A580BC8;
  }

  else
  {
    v2 = &unk_27D87C350;
    v3 = &qword_22A576E40;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}