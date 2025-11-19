void sub_2455E5414(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_2455E347C(a3, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_2455E5940();
      goto LABEL_7;
    }

    sub_2455E44CC(v19, a4 & 1);
    v26 = *v5;
    v27 = sub_2455E347C(a3, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v5;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2455E661C(a3, v13, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      sub_2455E587C(v16, v13, a1, a2 & 1, v22, type metadata accessor for HIDDeviceClient.RequestElementUpdate, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      return;
    }

LABEL_15:
    sub_2455EA020();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v5;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7] + 16 * v16;
  v24 = *v23;
  v25 = *(v23 + 8);
  *v23 = a1;
  *(v23 + 8) = a2 & 1;

  sub_2455E7110(v24, v25);
}

void sub_2455E5648(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_2455E347C(a3, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_2455E5BBC();
      goto LABEL_7;
    }

    sub_2455E49CC(v19, a4 & 1);
    v26 = *v5;
    v27 = sub_2455E347C(a3, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v5;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2455E661C(a3, v13, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E587C(v16, v13, a1, a2 & 1, v22, type metadata accessor for HIDDeviceClient.ProvideElementUpdate, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      return;
    }

LABEL_15:
    sub_2455EA020();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v5;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7] + 16 * v16;
  v24 = *v23;
  v25 = *(v23 + 8);
  *v23 = a1;
  *(v23 + 8) = a2 & 1;

  sub_2455E711C(v24, v25);
}

uint64_t sub_2455E587C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a5[6];
  v14 = a6(0);
  result = sub_2455E6F48(a2, v13 + *(*(v14 - 8) + 72) * a1, a7);
  v16 = a5[7] + 16 * a1;
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

void *sub_2455E5940()
{
  v1 = v0;
  v2 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15260, &qword_2455F1D58);
  v5 = *v0;
  v6 = sub_2455E9F90();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v33;
        v22 = *(v34 + 72) * v20;
        sub_2455E661C(*(v5 + 48) + v22, v33, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v23 = *(v5 + 56);
        v24 = v5;
        v25 = 16 * v20;
        v26 = v23 + 16 * v20;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = v35;
        sub_2455E6F48(v21, *(v35 + 48) + v22, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v30 = *(v29 + 56) + v25;
        v5 = v24;
        *v30 = v27;
        *(v30 + 8) = v28;
        result = sub_2455E6FBC(v27, v28);
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
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

void *sub_2455E5BBC()
{
  v1 = v0;
  v2 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15258, &qword_2455F1D50);
  v5 = *v0;
  v6 = sub_2455E9F90();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v33;
        v22 = *(v34 + 72) * v20;
        sub_2455E661C(*(v5 + 48) + v22, v33, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v23 = *(v5 + 56);
        v24 = v5;
        v25 = 16 * v20;
        v26 = v23 + 16 * v20;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = v35;
        sub_2455E6F48(v21, *(v35 + 48) + v22, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v30 = *(v29 + 56) + v25;
        v5 = v24;
        *v30 = v27;
        *(v30 + 8) = v28;
        result = sub_2455E6FB0(v27, v28);
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
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

id sub_2455E5E38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15248, &qword_2455F1D40);
  v2 = *v0;
  v3 = sub_2455E9F90();
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

size_t sub_2455E5F98(size_t a1, int64_t a2, char a3)
{
  result = sub_2455E5FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2455E5FB8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15250, &qword_2455F1D48);
  v10 = *(type metadata accessor for HIDElement.Value() - 8);
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
  v15 = *(type metadata accessor for HIDElement.Value() - 8);
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

void sub_2455E6190(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_2455E9F40();
      type metadata accessor for IOHIDElement();
      swift_dynamicCast();
      type metadata accessor for IOHIDValue(0);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_2455E9F00() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2455E9F10();
  type metadata accessor for IOHIDElement();
  swift_dynamicCast();
  a2 = sub_2455E34FC(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

unint64_t sub_2455E6344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15278, &unk_2455F1DE8);
    v3 = sub_2455E9FC0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2455AB718(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2455E64A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F78, &qword_2455EB418);
    v3 = sub_2455E9FC0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2455AB718(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2455E65A8()
{
  result = qword_27EE15138;
  if (!qword_27EE15138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15138);
  }

  return result;
}

uint64_t sub_2455E661C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2455E6684(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[5];
  v24[4] = a1[4];
  v24[5] = v3;
  v25[0] = a1[6];
  *(v25 + 9) = *(a1 + 105);
  v4 = a1[1];
  v24[0] = *a1;
  v24[1] = v4;
  v5 = a1[3];
  v24[2] = a1[2];
  v24[3] = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[3];
  v26[2] = v2[2];
  v26[3] = v8;
  v26[0] = v6;
  v26[1] = v7;
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  *(v27 + 9) = *(v2 + 105);
  v26[5] = v10;
  v27[0] = v11;
  v26[4] = v9;
  v12 = v2[5];
  v21 = v2[4];
  v22 = v12;
  v23[0] = v2[6];
  *(v23 + 9) = *(v2 + 105);
  v13 = v2[1];
  v17 = *v2;
  v18 = v13;
  v14 = v2[3];
  v19 = v2[2];
  v20 = v14;
  sub_2455A5D68(v26, v28);
  v15 = static HIDElement.== infix(_:_:)(v24, &v17);
  v28[4] = v21;
  v28[5] = v22;
  v29[0] = v23[0];
  *(v29 + 9) = *(v23 + 9);
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  sub_2455A5DA0(v28);
  return v15 & 1;
}

uint64_t sub_2455E6788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2455E67E8()
{
  result = qword_27EE15160;
  if (!qword_27EE15160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15160);
  }

  return result;
}

uint64_t sub_2455E6848(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2455E68DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 57);
  v23 = *(v1 + 59);
  v24 = *(v1 + 58);
  report = *(v1 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15180, &qword_2455F1668);
  v11 = (*(*(v10 - 8) + 24))(v3, a1, v10);
  *v4 = (*(*v6 + 832))(v11);
  v12 = 0.0;
  if ((v8 & 1) == 0)
  {
    v13 = sub_2455EA100() * 1000.0;
    sub_2455EA100();
    v12 = v13 + v14 / 1000000.0;
  }

  v15 = v6[37];
  LOBYTE(v26) = v9;
  v16 = sub_2455A72A4(&v26);
  if (v23)
  {
    v17 = 0;
  }

  else
  {
    v17 = v24;
  }

  ReportWithCallback = IOHIDDeviceGetReportWithCallback(v15, v16, v17, report, v4, v12, sub_2455D88A4, v3);
  result = sub_2455D016C(ReportWithCallback, &v26);
  if ((v26 & 0x10000000000) == 0)
  {
    v20 = v26 | (BYTE4(v26) << 32);
    sub_2455ACA40();
    v21 = swift_allocError();
    *v22 = v20;
    *(v22 + 4) = BYTE4(v20) & 1;
    v26 = v21;
    return sub_2455E9C30();
  }

  return result;
}

unint64_t sub_2455E6B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15270, &qword_2455F1D68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15258, &qword_2455F1D50);
    v8 = sub_2455E9FC0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2455ACBA0(v10, v6, &qword_27EE15270, &qword_2455F1D68);
      result = sub_2455E347C(v6, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
      result = sub_2455E6F48(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
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

unint64_t sub_2455E6D2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15268, &qword_2455F1D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15260, &qword_2455F1D58);
    v8 = sub_2455E9FC0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2455ACBA0(v10, v6, &qword_27EE15268, &qword_2455F1D60);
      result = sub_2455E347C(v6, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
      result = sub_2455E6F48(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
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

uint64_t sub_2455E6F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2455E6FB0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

id sub_2455E6FBC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2455E6FC8(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = v1[6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A8, &qword_2455F1690);
  (*(*(v8 - 8) + 24))(v3, a1, v8);
  v9 = *(v4 + 296);
  type metadata accessor for IOHIDElement();
  v10 = sub_2455E9BD0();
  v11 = IOHIDDeviceCopyValueMultipleWithCallback(v9, v10, v6, v7, sub_2455E2D90, v3);

  result = sub_2455D016C(v11, &v15);
  if ((v17 & 1) == 0)
  {
    v13 = v15 | (v16 << 32);
    sub_2455ACA40();
    swift_allocError();
    *v14 = v13;
    *(v14 + 4) = BYTE4(v13) & 1;
    return sub_2455E9C30();
  }

  return result;
}

void sub_2455E7110(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_2455E711C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2455E7128(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_2455E7134(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = v1[5];
  v8 = *(v1 + 6);
  v7 = *(v1 + 7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  (*(*(v9 - 8) + 24))(v3, a1, v9);
  v10 = *(v4 + 296);
  v11 = *v5;
  type metadata accessor for IOHIDElement();
  type metadata accessor for IOHIDValue(0);
  sub_2455E6848(&qword_27EE14EA8, 255, type metadata accessor for IOHIDElement);

  v12 = sub_2455E9AD0();

  v13 = IOHIDDeviceSetValueMultipleWithCallback(v10, v12, v6, sub_2455E2D78, v3);

  sub_2455D016C(v13, &v19);
  if (BYTE5(v19) == 1)
  {
    v14 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v8;
    *v8 = 0x8000000000000000;
    sub_2455E5648(0, 0, v7, isUniquelyReferenced_nonNull_native);
    *v8 = v19;
  }

  else
  {
    v16 = v19 | (BYTE4(v19) << 32);
    sub_2455ACA40();
    v17 = swift_allocError();
    *v18 = v16;
    *(v18 + 4) = BYTE4(v16) & 1;
    v19 = v17;
    sub_2455E9C30();
  }
}

unint64_t sub_2455E732C()
{
  result = qword_27EE151C8;
  if (!qword_27EE151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE151C8);
  }

  return result;
}

uint64_t sub_2455E7380(uint64_t a1)
{
  result = sub_2455E6848(&qword_27EE151D0, 255, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2455E7428(uint64_t a1)
{
  result = sub_2455E6848(&qword_27EE151E0, 255, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of HIDDeviceClient.dispatchSetReportRequest(type:id:data:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v16 = *(*v7 + 896);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_2455ABFC8;

  return (v20)(a1, a2, a3, a4, a5, a6, a7 & 1);
}

uint64_t dispatch thunk of HIDDeviceClient.dispatchGetReportRequest(type:id:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *(*v5 + 904);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2455AC578;

  return (v16)(a1, a2, a3, a4, a5 & 1);
}

uint64_t dispatch thunk of HIDDeviceClient.updateElements(_:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *(*v5 + 912);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2455ABFC8;

  return (v16)(a1, a2, a3, a4, a5 & 1);
}

uint64_t getEnumTagSinglePayload for HIDDeviceClient.DeviceReference(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HIDDeviceClient.DeviceReference(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_2455E7D8C()
{
  sub_2455E7E00();
  if (v0 <= 0x3F)
  {
    sub_2455E7E88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2455E7E00()
{
  if (!qword_27EE151F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE15200, &qword_2455F1AA0);
    sub_2455E9E90();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EE151F8);
    }
  }
}

void sub_2455E7E88()
{
  if (!qword_27EE15208)
  {
    sub_2455E7ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE15208);
    }
  }
}

void sub_2455E7ED0()
{
  if (!qword_27EE15210)
  {
    type metadata accessor for HIDElement.Value();
    v0 = sub_2455E9C00();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE15210);
    }
  }
}

uint64_t sub_2455E7F50(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2455E7F88()
{
  sub_2455E8028();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2455E8028()
{
  if (!qword_27EE15218)
  {
    type metadata accessor for HIDDeviceClient.Notification(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE14FD0, &qword_2455F1620);
    v0 = sub_2455E9CA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE15218);
    }
  }
}

void sub_2455E80E4()
{
  sub_2455E9E90();
  if (v0 <= 0x3F)
  {
    sub_2455E7ED0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2455E9E90();
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

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2455E9E90();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2455E8304()
{
  sub_2455E9E90();
  if (v0 <= 0x3F)
  {
    sub_2455E8494(319, &qword_27EE15220, &type metadata for HIDElement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2455E83B4(uint64_t *a1, int a2)
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

uint64_t sub_2455E83FC(uint64_t result, int a2, int a3)
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

void sub_2455E8494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2455E8614(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  if (a3 && (a2 | 0x10) == 0xE0000110 && (a3 & 1) != 0)
  {
    if (a1)
    {
      type metadata accessor for HIDDeviceClient.Context();
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      v11 = dispatch_semaphore_create(0);
      v12 = sub_2455E9C60();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = v10;
      *(v13 + 40) = a2;
      *(v13 + 44) = -536870656;
      *(v13 + 48) = v11;

      v14 = v11;
      sub_2455A989C(0, 0, v9, &unk_2455F1DE0, v13);

      sub_2455E9CE0();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2455E87A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  if (a1)
  {
    type metadata accessor for HIDDeviceClient.Context();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = dispatch_semaphore_create(0);
    v8 = sub_2455E9C60();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;
    v9[5] = v7;

    v10 = v7;
    sub_2455A989C(0, 0, v5, &unk_2455F1DD0, v9);

    sub_2455E9CE0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2455E88F4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2455ACD88(a1, &a1[a2]);
  }

  v3 = sub_2455E9960();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2455E9900();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2455E99E0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_2455E89A4(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  if (a1)
  {
    type metadata accessor for HIDDeviceClient.Context();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = dispatch_semaphore_create(0);
    v16 = sub_2455E88F4(a3, a4);
    v18 = v17;
    v19 = sub_2455E9C60();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = v14;
    *(v20 + 40) = a2;
    *(v20 + 48) = v16;
    *(v20 + 56) = v18;
    *(v20 + 64) = a5;
    *(v20 + 72) = v15;

    sub_2455A5EE0(v16, v18);
    v21 = v15;
    sub_2455A989C(0, 0, v13, &unk_2455F1DA8, v20);

    sub_2455E9CE0();
    sub_2455A5F34(v16, v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_2455E8B50(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    type metadata accessor for HIDDeviceClient.Context();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = dispatch_semaphore_create(0);
    v18 = a2;
    type metadata accessor for IOHIDValue(0);
    v11 = v10;
    v12 = a2;
    sub_2455D06E8(&v18, v11, &v19);
    v13 = v19;
    v14 = sub_2455E9C60();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v8;
    v15[5] = v13;
    v15[6] = v9;

    v16 = v13;
    v17 = v9;
    sub_2455A989C(0, 0, v7, &unk_2455F1DB8, v15);

    sub_2455E9CE0();
  }

  else
  {
    __break(1u);
  }
}

void sub_2455E8CE8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15180, &qword_2455F1668);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v18 - v12;
  if (a1)
  {
    (*(v9 + 16))(v13, a1, v8, v11);
    sub_2455D016C(a2, v18);
    if (BYTE5(v18[0]) == 1)
    {
      v18[0] = sub_2455E88F4(a3, a4);
      v18[1] = v14;
      sub_2455E9C40();
    }

    else
    {
      v15 = LODWORD(v18[0]) | (BYTE4(v18[0]) << 32);
      sub_2455ACA40();
      v16 = swift_allocError();
      *v17 = v15;
      *(v17 + 4) = BYTE4(v15) & 1;
      v18[0] = v16;
      sub_2455E9C30();
    }

    (*(v9 + 8))(v13, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2455E8E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  if (a1)
  {
    (*(v5 + 16))(v9, a1, v4);
    sub_2455D016C(a2, &v14);
    if (v16 == 1)
    {
      sub_2455E9C40();
    }

    else
    {
      v10 = v14 | (v15 << 32);
      sub_2455ACA40();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 4) = BYTE4(v10) & 1;
      v13 = v11;
      sub_2455E9C30();
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2455E8FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A8, &qword_2455F1690);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  if (a1)
  {
    (*(v5 + 16))(v9, a1, v4, v7);
    sub_2455D016C(a2, &v14);
    if (BYTE5(v14) != 1)
    {
      v10 = v14 | (BYTE4(v14) << 32);
      sub_2455ACA40();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 4) = BYTE4(v10) & 1;
      v14 = v11;
      sub_2455E9C30();
      goto LABEL_6;
    }

    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v14 = 0;
    type metadata accessor for IOHIDElement();
    type metadata accessor for IOHIDValue(0);
    sub_2455E6848(&qword_27EE14EA8, 255, type metadata accessor for IOHIDElement);
    sub_2455E9AE0();
    if (v14)
    {
      sub_2455E9C40();
LABEL_6:
      (*(v5 + 8))(v9, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2455E91E4(const uint8_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = *(v3 + 296);
  LOBYTE(v23) = v4;
  result = sub_2455A72A4(&v23);
  if (!a1)
  {
    goto LABEL_19;
  }

  v14 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v14)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v15 = HIDWORD(v7) - v7;
      goto LABEL_12;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v15 = BYTE6(v8);
LABEL_12:
  if (v6)
  {
    v18 = 0;
  }

  else
  {
    v18 = v5;
  }

  v19 = IOHIDDeviceSetReportWithCallback(v12, result, v18, a1, v15, v9, sub_2455D8200, v11);
  result = sub_2455D016C(v19, &v23);
  if ((v23 & 0x10000000000) == 0)
  {
    v20 = v23 | (BYTE4(v23) << 32);
    sub_2455ACA40();
    v21 = swift_allocError();
    *v22 = v20;
    *(v22 + 4) = BYTE4(v20) & 1;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
    return sub_2455E9C30();
  }

  return result;
}

uint64_t sub_2455E9354()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2455E939C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2455E93E4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2455AD2F4;

  return sub_2455D7660(v4, v5, v6, v2, v3);
}

uint64_t sub_2455E947C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2455E94B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_2455A5F34(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2455E9504()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2455AD2F4;

  return sub_2455D492C(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_2455E95CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2455E961C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2455AD2F4;

  return sub_2455D4C0C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2455E96C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2455E970C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2455AD2F4;

  return sub_2455D46D8(v4, v5, v6, v2, v3);
}

uint64_t sub_2455E97A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2455E97EC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2455AD2F4;

  return sub_2455D44E4(v6, v7, v8, v2, v3, v4, v5);
}