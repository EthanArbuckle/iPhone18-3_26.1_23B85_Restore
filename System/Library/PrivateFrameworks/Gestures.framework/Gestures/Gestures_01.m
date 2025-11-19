void *sub_18E68D5C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDB0, &qword_18E72F5E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDB8, &qword_18E72F5E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E68D6F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD28, &qword_18E731FD8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_18E68D800(char *a1, int64_t a2, char a3)
{
  result = sub_18E68D6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E68D820(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_18E72B518();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for AnyGestureNode();
  v5 = sub_18E68D978(&qword_1ED6F7F48);
  result = MEMORY[0x193AD1810](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AD1B60](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_18E6880B0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_18E72B518();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18E68D978(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyGestureNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_18E68D9BC(uint64_t a1, unint64_t a2)
{
  v4 = *(*v2 + 368);
  v5 = type metadata accessor for GesturePhase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v10 - v8;
  if (v4 == MEMORY[0x1E69E7CA8] + 8)
  {
    sub_18E6964A4(a2, 4u, 0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_18E682A9C(v9, 0);
    (*(v6 + 8))(v9, v5);
  }
}

void *sub_18E68DB1C(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v8;
  *v8 = *v9;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v8 + v13 + 8) & ~v13;
  v15 = (v9 + v13 + 8) & ~v13;
  (*(v11 + 40))(v14, v15);
  v16 = *(v12 + 24) + 7;
  v17 = ((v16 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18E68DC04(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_18E72B518();
      a2 = sub_18E6C6434(v4, v5);
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E69E7CD0];
    v18 = MEMORY[0x1E69E7CD0];
    sub_18E72B4D8();
    if (sub_18E72B548())
    {
      type metadata accessor for AnyGestureNode();
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (!*(a1 + 16))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 40);
        sub_18E72B888();
        v10 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v10);
        v11 = sub_18E72B8E8();
        v12 = -1 << *(a1 + 32);
        v13 = v11 & ~v12;
        v14 = v17;
        if ((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v15 = ~v12;
          while (*(*(a1 + 48) + 8 * v13) != v17)
          {
            v13 = (v13 + 1) & v15;
            if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v16 = *(v7 + 16);
          if (*(v7 + 24) <= v16)
          {
            sub_18E688420(v16 + 1);
            v14 = v17;
          }

          v7 = v18;
          sub_18E6C6B38(v14, v18);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_18E72B548());
    }

    return v7;
  }

  if (!v3)
  {
    return sub_18E68E044(a1, a2, sub_18E68E314, sub_18E68E314);
  }

LABEL_8:

  return sub_18E6A251C(a1, a2);
}

uint64_t sub_18E68DE20(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v9 = *(v5 + v7 + 32);
      v3 = *(v5 + v7 + 40);
      swift_bridgeObjectRetain_n();
      swift_unownedRetain();
      v10 = sub_18E68DC04(a1, v9);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = sub_18E72B518();

        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = *(v10 + 16);

        if (v12)
        {
LABEL_13:

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_18E6981B4(v5);
            v5 = result;
          }

          if (v8 >= *(v5 + 16))
          {
            __break(1u);
          }

          else
          {
            v19 = v5 + v7;
            v20 = *(v19 + 32);
            *(v19 + 32) = a1;

            result = swift_unownedRelease();
            if (v8 < *(v5 + 16))
            {
              v21 = *(v19 + 40);
              *(v19 + 40) = a2;
              swift_unownedRetain();
              result = swift_unownedRelease();
              v17 = v23;
              goto LABEL_18;
            }
          }

          __break(1u);
          return result;
        }
      }

      ++v8;

      swift_unownedRelease();
      v7 += 32;
    }

    while (v6 != v8);
  }

  v6 = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
  v3 = v13;
  v8 = a2;
  swift_unownedRetain();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_20:
    result = sub_18E6981C8(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v16 = *(v5 + 16);
  v15 = *(v5 + 24);
  if (v16 >= v15 >> 1)
  {
    result = sub_18E6981C8((v15 > 1), v16 + 1, 1, v5);
    v5 = result;
  }

  v17 = v23;
  *(v5 + 16) = v16 + 1;
  v18 = (v5 + 32 * v16);
  v18[4] = a1;
  v18[5] = v8;
  v18[6] = v6;
  v18[7] = v3;
LABEL_18:
  *v17 = v5;
  return result;
}

void *sub_18E68E044(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_18E6A299C(v16, v10, a2, a1, a4);

    MEMORY[0x193AD25C0](v16, -1, -1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_18E68E224(NSObject *a1, char a2)
{

  sub_18E6880B0(&v7, a1);

  v5 = *(v2 + 120);

  sub_18E719844(a1);

  if (a2)
  {

    return sub_18E69ECF0(a1);
  }

  return result;
}

uint64_t sub_18E68E2C0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18E68E314(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v46 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v48 = 0;
    v28 = 0;
    v29 = 1 << *(v5 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v5 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = v4 + 56;
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
LABEL_34:
      v37 = v34 | (v28 << 6);
      v38 = *(*(v5 + 48) + 8 * v37);
      v39 = *(v4 + 40);
      sub_18E72B888();

      v40 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v40);
      v41 = sub_18E72B8E8();
      v4 = a4;
      v42 = -1 << *(a4 + 32);
      v43 = v41 & ~v42;
      if ((*(v33 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        while (*(*(a4 + 48) + 8 * v43) != v38)
        {
          v43 = (v43 + 1) & v44;
          if (((*(v33 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(v46 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        v27 = __OFADD__(v48++, 1);
        if (v27)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
        goto LABEL_42;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v31 = (v36 - 1) & v36;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v48 = 0;
  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a3 + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v47 = (v10 - 1) & v10;
LABEL_14:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = *(v5 + 40);
    sub_18E72B888();

    v18 = sub_18E72AFA8();
    MEMORY[0x193AD1DF0](v18);
    v19 = sub_18E72B8E8();
    v20 = v5;
    v21 = -1 << *(v5 + 32);
    v22 = v19 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v12 + 8 * (v22 >> 6))) != 0)
    {
      v25 = *(v20 + 48);
      if (*(v25 + 8 * v22) != v16)
      {
        v26 = ~v21;
        do
        {
          v22 = (v22 + 1) & v26;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v12 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        while (*(v25 + 8 * v22) != v16);
      }

      v10 = v47;
      v46[v23] |= v24;
      v27 = __OFADD__(v48++, 1);
      v5 = v20;
      v4 = a4;
      if (v27)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v5 = v20;
      v4 = a4;
      v10 = v47;
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
LABEL_42:

      return sub_18E68E670(v46, a2, v48, v5);
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v47 = (v15 - 1) & v15;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_18E68E670(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
  result = sub_18E72B5A8();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_18E72B888();

    v18 = sub_18E72AFA8();
    MEMORY[0x193AD1DF0](v18);
    result = sub_18E72B8E8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_18E68E880(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    return sub_18E68ED70(a1);
  }

  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v5 <= MEMORY[0x193AD1310](*(v6 + 16) & 0x3FLL))
    {
LABEL_17:
      v13 = sub_18E68ED70(a1);
      sub_18E71A3F4(sub_18E7265C4);
      return v13;
    }

    v8 = *v2;
  }

  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *v2;
    v12 = sub_18E72ADC8();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_18E6983EC(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_18E6985E0(a1, a1 + 1, v4, (v10 + 16));

      return sub_18E68ED70(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_18E68E9DC(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v3 + 32;
  v6 = *(v3 + 16);
  if (!*v1)
  {
    if (v6)
    {
      v8 = 0;
      while (*(v5 + 8 * v8) != a1)
      {
        if (v6 == ++v8)
        {
          return 0;
        }
      }

      v12 = 0;
      return sub_18E68E880(v8, v12);
    }

    return 0;
  }

  v7 = *v1;

  v8 = sub_18E6982D4(a1, v5, v6, (v4 + 16));
  v10 = v9;
  v12 = v11;

  if (v10)
  {
    return 0;
  }

  return sub_18E68E880(v8, v12);
}

uint64_t sub_18E68EA98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_18E6B76A4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_18E68EA90(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_18E68EDFC();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_18E68F170(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_18E68EB58(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  sub_18E68EA98(0, a2);
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v28 = v3;
  while (v7)
  {
    v10 = v9;
LABEL_11:
    v11 = *(*(v28 + 48) + ((v10 << 8) | (4 * __clz(__rbit64(v7)))));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v29 = *a1;
    v15 = sub_18E68EA90(v11);
    v16 = *(v13 + 16);
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      result = sub_18E72B818();
      __break(1u);
      return result;
    }

    v19 = v14;
    if (*(v13 + 24) >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_18E68EDFC();
        if ((v19 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_18E69D8D4(v18, isUniquelyReferenced_nonNull_native);
      v20 = sub_18E68EA90(v11);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_32;
      }

      v15 = v20;
      if ((v19 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v22 = *(*(v29 + 56) + 8 * v15);
    v23 = sub_18E68EA90(v27);
    if (v24)
    {
      v25 = v23;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_18E691334();
      }

      sub_18E691498(v25, v22);
    }

    v7 &= v7 - 1;
    if (v22)
    {
      *(*(v29 + 56) + 8 * v15) = v22;
    }

    else
    {
      sub_18E68F170(v15, v29);
    }

    *a1 = v29;
    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_18E68ED70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_18E69ECDC(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    sub_18E72B638();
    return v8;
  }

  return result;
}

void *sub_18E68EDFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5D0, &unk_18E730E90);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
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

void *sub_18E68EF60(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
  v4 = type metadata accessor for GesturePhase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(*(v3 - 8) + 8))(v8, v3);
      goto LABEL_11;
    }

    (*(*(v3 - 8) + 8))(v8, v3);
    v10 = *(v1 + qword_1EAC8DC88);
    if (v10)
    {
      if ((v10 & 2) != 0)
      {
        goto LABEL_11;
      }

      v11 = v10 | 2;
    }

    else
    {
      v11 = v10 | 1;
    }

    *(v1 + qword_1EAC8DC88) = v11;
  }

LABEL_11:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    if ([result respondsToSelector_])
    {
      [v13 gestureNode:v1 didEnqueuePhase:sub_18E67D6B8()];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18E68F170(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18E68F304(uint64_t result)
{
  v3 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  for (i = 32; ; i += 32)
  {
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    v10 = *(v4 + i);
    v9 = *(v4 + i + 8);
    swift_bridgeObjectRetain_n();
    swift_unownedRetain();
    v11 = sub_18E68DC04(v6, v10);
    v2 = v11;
    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (sub_18E72B518())
    {
      goto LABEL_10;
    }

LABEL_8:
    ++v7;

    result = swift_unownedRelease();
    if (v5 == v7)
    {
      return result;
    }
  }

  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

LABEL_10:
  v12 = swift_unownedRetainStrong();
  v13 = sub_18E68CE2C(v12, v6);

  if (v13)
  {

    goto LABEL_19;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_26:
    result = sub_18E6981B4(v4);
    v4 = result;
  }

  if (v7 >= *(v4 + 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_18E6A2A34(v2);

  *v3 = v4;
  if (v7 >= *(v4 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v14 = *(v4 + i);
  if ((v14 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *(v4 + i);
    }

    v16 = sub_18E72B518();

    if (v16 <= 1)
    {
LABEL_19:
      sub_18E693424(v7);

      swift_unownedRelease();
    }
  }

  else if (*(v14 + 16) <= 1)
  {
    goto LABEL_19;
  }

  result = swift_unownedRelease();
  if (!*(*v3 + 16))
  {
    v3[1] = 0;
    v3[2] = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t destroy for FailureDependencyGraph.Subgraph(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void sub_18E68F554()
{
  if (*(v0 + 41) == 1)
  {
    v1 = *(v0 + 32);
    if (*(v1 + 16) >= 2uLL)
    {
      *(v0 + 41) = 0;
      if ((*(v0 + 40) & 1) == 0)
      {
        sub_18E69CD38((v0 + 32));
        sub_18E69D2D0();
        *(v0 + 40) = 1;
        v1 = *(v0 + 32);
      }

      v3 = *(v0 + 16);
      v2 = *(v0 + 24);
      v4 = *(v0 + 48);

      sub_18E69A2B4(v2, v1, v3, v4);
    }
  }
}

void *sub_18E68F640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
  v2 = *v0;
  v3 = sub_18E72B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_18E68F790(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_18E72B4A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_18E72B888();

        v13 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v13);
        v14 = sub_18E72B8E8();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_18E68F94C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_18E69ECDC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_18E68F9C8(v6);
  return sub_18E72B638();
}

uint64_t sub_18E68F9C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18E72B768();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AnyGestureNode();
        v6 = sub_18E72B1F8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_18E6F0760(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_18E68FACC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18E68FACC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v47 = *a4;
    v4 = (v47 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_7:
    v39 = a3;
    v6 = *(v47 + 8 * a3);
    v37 = v5;
    v38 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = *(*v6 + 304);

      v10 = &v43;
      v11 = v8(&v43, v9);
      v12 = v44;
      if (v44 == 255)
      {
        v10 = &v45;
        (*(*v6 + 296))(&v45, v11);
        v12 = v46;
      }

      v13 = *v10;
      if (v12 == 4)
      {
        sub_18E69E818(v13, 4);
        if (v13 <= 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v12)
        {
          goto LABEL_4;
        }

        sub_18E69E818(v13, v12);
      }

      v14 = &v41;
      v15 = (*(*v7 + 304))(&v41);
      v12 = v42;
      if (v42 == 255)
      {
        v14 = &v43;
        (*(*v7 + 296))(&v43, v15);
        v12 = v44;
      }

      v13 = *v14;
      if (v12 == 4)
      {
        sub_18E69E818(v13, 4);
        if (v13 <= 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v12)
        {
LABEL_4:
          sub_18E69E818(v13, v12);
LABEL_5:

LABEL_6:
          a3 = v39 + 1;
          v4 = v38 + 1;
          v5 = v37 - 1;
          if (v39 + 1 == a2)
          {
            return result;
          }

          goto LABEL_7;
        }

        sub_18E69E818(v13, v12);
      }

      v16 = (*(*v6 + 192))();
      if (!v16)
      {
        goto LABEL_28;
      }

      v18 = v16;
      v19 = v17;
      v20 = (*(*v7 + 192))();
      if (!v20)
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      ObjectType = swift_getObjectType();
      if (v18 == v22)
      {
        v40 = ObjectType;
        v25 = swift_getObjectType();
        v26 = (*(v19 + 8))(v6, v25, v19);
        if (v27)
        {

          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          goto LABEL_6;
        }

        v28 = v26;
        v29 = (*(v23 + 8))(v7, v40, v23);
        v31 = v30;

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if ((v31 & 1) != 0 || v28 >= v29)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v33 = (*(v23 + 24))(v18, v19, v6, ObjectType, v23);

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if ((v33 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_31:
      if (!v47)
      {
        __break(1u);
        return result;
      }

      v34 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v34;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_6;
      }
    }

    v16 = swift_unknownObjectRelease();
LABEL_28:
    v32 = (*(*v7 + 192))(v16);

    if (!v32)
    {
      goto LABEL_6;
    }

    result = swift_unknownObjectRelease();
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_18E68FEDC(void *a1)
{
  v2 = v1;
  a1[18] = 0;
  swift_unknownObjectUnownedAssign();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  (*(*a1 + 224))(v13);
  v4 = *(v1 + 112) + 16;
  sub_18E69009C(a1, 2);
  sub_18E689A70(a1);

  v6 = *(v2 + 64);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*(v6 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *(v2 + 64);
  }

  v8 = *(v2 + 64);

  v9 = sub_18E72B518();

  if (!v9)
  {
LABEL_7:
    if ((*(v2 + 204) & 1) == 0)
    {
      v10 = *(v2 + 200);
      v11 = *(v2 + 184);
      v12 = *(v2 + 192);
      __swift_project_boxed_opaque_existential_1((v2 + 160), v11);
      result = (*(v12 + 16))(v10, v11, v12);
      *(v2 + 200) = 0;
      *(v2 + 204) = 1;
    }
  }

  return result;
}

uint64_t sub_18E690010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E708, &qword_18E72E2F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E69009C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  result = sub_18E68D214(a1, a2, *v2, v2[1]);
  v6 = result;
  if (result >> 62)
  {
    result = sub_18E72B518();
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    LOBYTE(v8) = 0;
LABEL_17:

    return v8 & 1;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = v6 & 0xC000000000000001;
    v11 = (v3 - 1);
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x193AD1B60](v9, v6);
        if (v12 == v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = *(v6 + 8 * v9 + 32);

        if (v12 == v4)
        {
          goto LABEL_5;
        }
      }

      if ((v3 | 2) == 2)
      {
        v8 |= sub_18E690224(v12, v4);
      }

      if (v11 <= 1)
      {
        v13 = sub_18E690224(v4, v12);
        v14 = v4;
        v15 = v10;
        v16 = v7;
        v17 = v6;
        v18 = v11;
        v19 = v3;
        v20 = v13;

        v8 |= v20;
        v3 = v19;
        v11 = v18;
        v6 = v17;
        v7 = v16;
        v10 = v15;
        v4 = v14;
        goto LABEL_6;
      }

LABEL_5:

LABEL_6:
      if (v7 == ++v9)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E690224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v7 = sub_18E6879CC(a1);
    if (v8)
    {
      v16 = *(*(v4 + 56) + 8 * v7);
      v9 = v3[1];
      if (*(v9 + 16))
      {

        v10 = sub_18E6879CC(a2);
        if (v11)
        {
          v15 = *(*(v9 + 56) + 8 * v10);

          sub_18E689A70(a2);

          sub_18E689A70(a1);

          v12 = v16;
          if ((v16 & 0xC000000000000001) != 0)
          {
            if (sub_18E72B518())
            {
              goto LABEL_8;
            }
          }

          else if (*(v16 + 16))
          {
LABEL_8:

            sub_18E69038C(v12, a1);
            v13 = v15;
            if ((v15 & 0xC000000000000001) != 0)
            {
              if (sub_18E72B518())
              {
LABEL_11:

                sub_18E69038C(v13, a2);
                return 1;
              }
            }

            else if (*(v15 + 16))
            {
              goto LABEL_11;
            }

            v13 = 0;
            goto LABEL_11;
          }

          v12 = 0;
          goto LABEL_8;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18E69038C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_18E69363C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
  }

  else
  {
    v9 = *v2;
    v10 = sub_18E6879CC(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v19 = *v3;
      if (!v14)
      {
        sub_18E70CB74();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 8 * v12);

      v17 = *(*(v15 + 56) + 8 * v12);

      sub_18E690490(v12, v15);

      *v3 = v15;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18E690490(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_18E72B888();

      v11 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v11);
      v12 = sub_18E72B8E8();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_18E690714(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_18E6907B0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    v6 = *(result + 16);

    v7 = 0;
    if (v4)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v10 = *(v1 + 56) + ((v8 << 10) | (16 * v9));
        v12 = *v10;
        v11 = *(v10 + 8);

        v12(v13);

        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_18E6908E4(uint64_t a1)
{
  v1 = *(a1 + 368);
  result = type metadata accessor for GesturePhaseQueue();
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

uint64_t sub_18E690984()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_18E6909BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for GesturePhase();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for RingBuffer();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18E690A98()
{
  swift_unownedRetainStrong();
  sub_18E688698(0, 0, 2);
}

uint64_t sub_18E690AE0()
{
  v42 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x188);
  v1 = type metadata accessor for GesturePhase();
  v2 = sub_18E72B438();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - v4;
  v6 = type metadata accessor for RingBuffer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - v10;
  v12 = *(v1 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v40 = v2;
    v43 = result;
    v20 = *(v0 + qword_1EAC8DC88);
    if ((v20 & 4) != 0)
    {
      *(v0 + qword_1EAC8DC88) = v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *(v0 + qword_1EAC8DC80);
    sub_18E67DBC8(v11);
    sub_18E67DE08(v6, v5);
    (*(v7 + 8))(v11, v6);
    v22 = *(v12 + 48);
    if (v22(v5, 1, v1) == 1)
    {
      GestureNode.phase.getter(v18);
      if (v22(v5, 1, v1) != 1)
      {
        (*(v41 + 8))(v5, v40);
      }
    }

    else
    {
      (*(v12 + 32))(v18, v5, v1);
    }

    (*(v12 + 32))(v16, v18, v1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      swift_unknownObjectRelease();
      return (*(*(v42 - 8) + 8))(v16);
    }

    if (EnumCaseMultiPayload == 3)
    {
      swift_unknownObjectRelease();
      return (*(v12 + 8))(v16, v1);
    }

    if (EnumCaseMultiPayload != 4)
    {
      return swift_unknownObjectRelease();
    }

    v24 = *(v43 + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E72CA20;
    *(inited + 32) = v21;
    v45 = MEMORY[0x1E69E7CC0];

    if ((inited & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x193AD1B60](0, inited);
      v21 = v26;
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }
    }

    v27 = (*(*v21 + 168))(&v44, v26);
    if ((v44 & 1) != 0 || !(*(*v21 + 192))(v27))
    {

      v29 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_unknownObjectRelease();
      sub_18E72B628();
      v28 = *(v45 + 16);
      sub_18E72B668();
      sub_18E72B678();
      sub_18E72B638();
      v29 = v45;
    }

    swift_setDeallocating();
    v30 = *(inited + 16);
    result = swift_arrayDestroy();
    v31 = v29 < 0 || (v29 & 0x4000000000000000) != 0;
    if (v31)
    {
      result = sub_18E72B518();
      v32 = result;
      if (!result)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = *(v29 + 16);
      if (!v32)
      {
        goto LABEL_37;
      }
    }

    if (v32 >= 1)
    {
      for (i = 0; i != v32; ++i)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x193AD1B60](i, v29);
        }

        else
        {
          v34 = *(v29 + 8 * i + 32);
        }

        Strong = swift_unknownObjectUnownedLoadStrong();
        if (!Strong || (v36 = Strong, swift_unknownObjectRelease(), v36 != v24))
        {
          sub_18E69F494(v34);
        }
      }

LABEL_37:
      if (v31)
      {
        v37 = sub_18E72B518();
        result = v43;
        if (v37)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v37 = *(v29 + 16);
        result = v43;
        if (v37)
        {
LABEL_39:
          if (v37 >= 1)
          {
            for (j = 0; j != v37; ++j)
            {
              if ((v29 & 0xC000000000000001) != 0)
              {
                MEMORY[0x193AD1B60](j, v29);
                swift_unknownObjectRelease();
              }
            }

            return swift_unknownObjectRelease();
          }

LABEL_51:
          __break(1u);
          return result;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  return result;
}

uint64_t sub_18E691134(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v5[4] = v5;
    v5[5] = v4;
    v5[6] = v4;
    v5[7] = "\b";
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void GestureNode.fail(with:)(unint64_t a1)
{
  v1 = a1 | 0x8000000000000000;
  v3 = a1 | 0x8000000000000000;
  v2 = a1;
  sub_18E683A1C(&v3, 0);
  sub_18E683B98(v1);
}

uint64_t sub_18E69124C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18E69130C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void *sub_18E691334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F0, &qword_18E72EA08);
  v2 = *v0;
  v3 = sub_18E72B718();
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
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

uint64_t sub_18E691480(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_18E691498(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + v3);
        v17 = (v15 + v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_18E69163C(uint64_t a1, uint64_t a2)
{
  v46 = sub_18E691C3C(a1, a2);
  if (!v46)
  {
    return;
  }

  v45 = *(v46 + 2);
  if (!v45)
  {

    return;
  }

  v2 = 0;
LABEL_5:
  if (v2 >= *(v46 + 2))
  {
    goto LABEL_42;
  }

  v3 = &v46[32 * v2 + 32];
  v4 = *v3;
  v5 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);

  swift_unownedRetain();
  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
  _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
  if (qword_1EAC8D8D8 != -1)
  {
    swift_once();
  }

  v8 = sub_18E72AE18();
  __swift_project_value_buffer(v8, qword_1EAC99270);

  swift_unownedRetain();
  v9 = sub_18E72ADF8();
  v10 = sub_18E72B3D8();

  swift_unownedRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52 = v50;
    *v11 = 136315394;
    swift_unownedRetainStrong();
    v12 = AnyGestureNode.debugLabel.getter();
    v13 = v4;
    v14 = v5;
    v16 = v15;

    v17 = sub_18E6C5E8C(v12, v16, &v52);
    v5 = v14;
    v4 = v13;

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = _s8Gestures9TimestampV11descriptionSSvg_0();
    v20 = sub_18E6C5E8C(v18, v19, &v52);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_18E67C000, v9, v10, "[!] %s is blocking its subgraph for %s:\n", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD25C0](v50, -1, -1);
    MEMORY[0x193AD25C0](v11, -1, -1);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    sub_18E72B2D8();
    v21 = v54;
    v22 = v55;
    v23 = v56;
    v24 = v57;
    v25 = v58;
  }

  else
  {
    v26 = -1 << *(v4 + 32);
    v22 = v4 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v4 + 56);

    v24 = 0;
    v21 = v4;
  }

  v49 = v2 + 1;
  v29 = (v23 + 64) >> 6;
  v51 = v21;
  if (v21 < 0)
  {
LABEL_19:
    if (!sub_18E72B548())
    {
      goto LABEL_4;
    }

    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    v30 = v52;
    v31 = v24;
    v32 = v25;
    v21 = v51;
    if (!v52)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v33 = v24;
    v34 = v25;
    v31 = v24;
    if (!v25)
    {
      break;
    }

LABEL_26:
    v32 = (v34 - 1) & v34;
    v30 = *(*(v21 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v34)))));

    if (!v30)
    {
LABEL_4:
      sub_18E687EE8();

      swift_unownedRelease();
      v2 = v49;
      if (v49 == v45)
      {

        return;
      }

      goto LABEL_5;
    }

LABEL_27:
    swift_unownedRetainStrong();

    if (v5 == v30)
    {

      v24 = v31;
      v25 = v32;
      if (v21 < 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      (*(*v30 + 296))(&v52, v35);
      v36 = v53 & 0xFE;
      sub_18E69E818(v52, v53);
      if (v36 == 2)
      {

        v37 = sub_18E72ADF8();
        v38 = sub_18E72B3D8();

        if (!os_log_type_enabled(v37, v38))
        {

          goto LABEL_33;
        }

        v48 = v5;
        v39 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v39 = 136315138;
        v40 = AnyGestureNode.debugLabel.getter();
        v42 = v4;
        v43 = sub_18E6C5E8C(v40, v41, &v52);

        *(v39 + 4) = v43;
        v4 = v42;
        _os_log_impl(&dword_18E67C000, v37, v38, "    %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x193AD25C0](v47, -1, -1);
        v44 = v39;
        v5 = v48;
        MEMORY[0x193AD25C0](v44, -1, -1);
      }

LABEL_33:
      v24 = v31;
      v25 = v32;
      v21 = v51;
      if (v51 < 0)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
      goto LABEL_4;
    }

    v34 = *(v22 + 8 * v31);
    ++v33;
    if (v34)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

char *sub_18E691C3C(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
    if (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0())
    {
      return 0;
    }
  }

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  v7 = *v2;

  v36 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v36 = sub_18E6981B4(v7);
    v8 = *(v7 + 16);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_27:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_5:
  v9 = 0;
  v10 = v7 + 56;
  v37 = v8;
  v31 = v8 - 1;
  v11 = v36 + 56;
  v12 = MEMORY[0x1E69E7CC0];
  v34 = a1;
  v35 = a2;
  v38 = v7;
  v32 = v7 + 56;
  do
  {
    v33 = v12;
    v13 = (v10 + 32 * v9);
    v14 = &v11[32 * v9];
    v15 = v9;
    while (1)
    {
      if (v15 >= *(v7 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = *(v13 - 3);
      v16 = *(v13 - 2);
      v18 = *(v13 - 1);
      v7 = *v13;

      swift_unownedRetain();
      _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
      if ((_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) == 0)
      {

        swift_unownedRelease();
        goto LABEL_8;
      }

      swift_unownedRetainStrong();
      v19 = *(v16 + 16);

      a1 = v2;
      v20 = *(v2 + 32);
      if (!*(v20 + 16))
      {
        break;
      }

      v21 = sub_18E68EA90(v19);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = (*(v20 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      if ((_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      sub_18E72B9B8();
      _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
      _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
      if ((_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      a2 = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
      v2 = v26;

      swift_unownedRelease();
      if (v15 >= *(v36 + 2))
      {
        goto LABEL_25;
      }

      *(v14 - 1) = a2;
      *v14 = v2;
      v2 = a1;
      a1 = v34;
      a2 = v35;
LABEL_8:
      ++v15;
      v13 += 4;
      v14 += 32;
      v7 = v38;
      if (v37 == v15)
      {
        v12 = v33;
        goto LABEL_28;
      }
    }

    v12 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_18E6981C8(0, *(v33 + 2) + 1, 1, v33);
    }

    v28 = *(v12 + 2);
    v27 = *(v12 + 3);
    if (v28 >= v27 >> 1)
    {
      v12 = sub_18E6981C8((v27 > 1), v28 + 1, 1, v12);
    }

    v9 = v15 + 1;
    *(v12 + 2) = v28 + 1;
    v29 = &v12[32 * v28];
    *(v29 + 4) = v17;
    *(v29 + 5) = v16;
    *(v29 + 6) = v18;
    *(v29 + 7) = v7;
    v10 = v32;
    v2 = a1;
    a1 = v34;
    a2 = v35;
    v7 = v38;
    v11 = v36 + 56;
  }

  while (v31 != v15);
LABEL_28:

  *v2 = v36;
  if (!*(v12 + 2))
  {

    return 0;
  }

  return v12;
}

uint64_t sub_18E691F74(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_18E72B458();
  swift_unknownObjectRelease();
  sub_18E6925C4(v8, a4);
  __swift_destroy_boxed_opaque_existential_0(v8);

  return 1;
}

unint64_t sub_18E69202C()
{
  result = qword_1ED6F8548;
  if (!qword_1ED6F8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F8548);
  }

  return result;
}

uint64_t sub_18E692080()
{
  v1 = sub_18E72AE18();
  v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v43 = v0;
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 128);
  v45 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    sub_18E72B2D8();
    v5 = v54;
    v6 = v55;
    v7 = v56;
    v8 = v57;
    v9 = v58;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v8 = 0;
  }

  v47 = 0;
  v46 = v7;
  v13 = (v7 + 64) >> 6;
  while (1)
  {
    v15 = v8;
    if (v5 < 0)
    {
      break;
    }

    v16 = v8;
    v17 = v9;
    if (!v9)
    {
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {
          goto LABEL_24;
        }

        v17 = *(v6 + 8 * v8);
        ++v16;
        if (v17)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_15:
    v9 = (v17 - 1) & v17;
    v18 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v18)
    {
      goto LABEL_24;
    }

LABEL_19:
    v21 = (*v18 + 296);
    v22 = *v21;
    (*v21)(&v52, v19);
    v14 = v52;
    LOBYTE(v23) = v53;
    if (v53 != 4 || v52)
    {
      goto LABEL_9;
    }

    v24 = &v48;
    v25 = (*(*v18 + 304))(&v48);
    v23 = v49;
    if (v49 == 255)
    {
      v24 = &v50;
      v22(&v50, v25);
      v23 = v51;
    }

    v14 = *v24;
    if (v23 == 3)
    {
LABEL_9:
      sub_18E69E818(v14, v23);
    }

    else
    {
      sub_18E69E818(v14, v23);
      v26 = sub_18E698A3C(v18);

      v47 |= v26;
    }
  }

  v20 = sub_18E72B548();
  if (v20)
  {
    v50 = v20;
    type metadata accessor for AnyGestureNode();
    v19 = swift_dynamicCast();
    v18 = v52;
    if (v52)
    {
      goto LABEL_19;
    }
  }

LABEL_24:
  result = sub_18E687EE8();
  if ((v47 & 1) == 0)
  {
    return result;
  }

  if (sub_18E680FFC())
  {
    v13 = v44;
    v6 = v45;
    v9 = v42;
    v15 = v43;
    if (qword_1EAC8D8F8 == -1)
    {
LABEL_27:
      v28 = qword_1EAC8E570;
      goto LABEL_31;
    }

LABEL_36:
    swift_once();
    goto LABEL_27;
  }

  v13 = v44;
  v6 = v45;
  v9 = v42;
  v15 = v43;
  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v28 = qword_1ED6F7FA0;
LABEL_31:
  v29 = __swift_project_value_buffer(v6, v28);
  (*(v9 + 16))(v13, v29, v6);

  v30 = sub_18E72ADF8();
  v31 = sub_18E72B3E8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v33;
    *v32 = 136315138;
    v34 = *(v15 + 112);
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);

    v37 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v35);
    v39 = v38;

    v40 = sub_18E6C5E8C(v37, v39, &v52);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_18E67C000, v30, v31, "Updated failure deps:\n%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x193AD25C0](v33, -1, -1);
    MEMORY[0x193AD25C0](v32, -1, -1);

    return (*(v9 + 8))(v44, v45);
  }

  else
  {

    return (*(v9 + 8))(v13, v6);
  }
}

void sub_18E6925C4(void *a1, int a2)
{
  v36 = a2;
  v33 = a1;
  v34 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x188);
  v3 = type metadata accessor for GesturePhase();
  v4 = sub_18E72B438();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for RingBuffer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  v37 = *(v3 - 8);
  v14 = *(v37 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v35 = v2;
  v20 = *(v2 + qword_1EAC8DC80);
  sub_18E67DBC8(v13);
  sub_18E67DE08(v8, v7);
  v21 = v8;
  v22 = v37;
  (*(v9 + 8))(v13, v21);
  v23 = *(v22 + 48);
  if (v23(v7, 1, v3) == 1)
  {
    GestureNode.phase.getter(v19);
    if (v23(v7, 1, v3) != 1)
    {
      (*(v31 + 8))(v7, v32);
    }
  }

  else
  {
    (*(v22 + 32))(v19, v7, v3);
  }

  (*(v22 + 32))(v17, v19, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v22 + 8))(v17, v3);
      return;
    }
  }

  else
  {
    if (EnumCaseMultiPayload >= 2)
    {
      (*(*(v34 - 8) + 8))(v17);
      return;
    }

    (*(*(v34 - 8) + 8))(v17);
  }

  v25 = v35;
  sub_18E690AE0();
  if (*(v25 + OBJC_IVAR____TtC8Gestures18AnyGestureNodeShim_isValueless) == 1)
  {

    if (v36)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    sub_18E6964A4(v26, v27, 0);

    sub_18E69E818(v28, v27);
  }

  else
  {
    v29 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    GestureNode.update<A>(someValue:isFinalUpdate:)(v29, v36 & 1);
  }
}

void sub_18E6929F0(uint64_t a1)
{
  v2 = *v1;
  sub_18E692BB0(0, 0, a1);
  if (!*(*(v2 + 16) + 16))
  {
    v3 = CFRunLoopGetMain();
    v4 = sub_18E6931C8();
    CFRunLoopRemoveObserver(v3, v4, *MEMORY[0x1E695E8D0]);
  }
}

uint64_t sub_18E692BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_18E6953DC(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_18E68EA90(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_18E692D38();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_18E693034(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

char *gfGestureNodeCoordinatorCreate(willUpdateHandler:didUpdateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(type metadata accessor for GestureNodeCoordinatorShim()) init];
  v9 = OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator;
  v10 = *&v8[OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator];
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_18E68CB70(a1);
  sub_18E6826D0(v11);
  v13 = *&v8[v9];
  v14 = *(v13 + 48);
  v15 = *(v13 + 56);
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  sub_18E68CB70(a3);
  sub_18E6826D0(v14);
  return v8;
}

void *sub_18E692D38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5B0, &unk_18E730E68);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

char *GFGestureNodeCoordinatorCreate(const void *a1, const void *a2)
{
  v3 = _Block_copy(a1);
  v4 = _Block_copy(a2);
  v5 = v4;
  if (v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v3 = sub_18E68F550;
    if (v5)
    {
LABEL_3:
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      v5 = sub_18E68F540;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [objc_allocWithZone(type metadata accessor for GestureNodeCoordinatorShim()) init];
  v9 = OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator;
  v10 = *&v8[OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator];
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v10 + 16) = v3;
  *(v10 + 24) = v6;
  sub_18E68CB70(v3);
  sub_18E6826D0(v11);
  v13 = *&v8[v9];
  v14 = *(v13 + 48);
  v15 = *(v13 + 56);
  *(v13 + 48) = v5;
  *(v13 + 56) = v7;
  sub_18E68CB70(v5);
  sub_18E6826D0(v14);
  sub_18E6826D0(v5);
  sub_18E6826D0(v3);

  return v8;
}

uint64_t sub_18E692FF8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E693034(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

CFRunLoopObserverRef sub_18E6931C8()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_18E69078C;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18E690714;
    v9[3] = &block_descriptor;
    v5 = _Block_copy(v9);

    v2 = CFRunLoopObserverCreateWithHandler(v3, 0x20uLL, 1u, 0, v5);
    _Block_release(v5);
    v6 = *(v0 + 24);
    *(v0 + 24) = v2;
    v7 = v2;
    sub_18E695864(v6);
  }

  sub_18E6933F0(v1);
  return v2;
}

uint64_t sub_18E6932E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_18E6933F0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_18E693424(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E6981B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 + 32 * a1);
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    v11 = v6[3];
    memmove(v6, v6 + 4, 32 * (v5 - 1 - a1));
    *(v3 + 16) = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_18E6934C4(uint64_t a1, char a2, uint64_t a3)
{
  v20[3] = &type metadata for UptimeTimeSource;
  v20[4] = &protocol witness table for UptimeTimeSource;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v6 = MEMORY[0x1E69E7CD0];
  *(a3 + 48) = 0u;
  *(a3 + 64) = v6;
  *(a3 + 128) = v6;
  *(a3 + 136) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(a3 + 144) = 0;
  *(a3 + 152) = v7;
  *(a3 + 200) = 0;
  *(a3 + 204) = 1;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 208) = v7;
  *(a3 + 232) = 1;
  v8 = MEMORY[0x1E69E7CC8];
  *(a3 + 240) = MEMORY[0x1E69E7CC8];
  sub_18E69379C(v20, a3 + 72);
  sub_18E693800(a1, &v15);
  if (v16)
  {
    sub_18E689D58(&v15, &v17);
  }

  else
  {
    updated = type metadata accessor for RunLoopUpdateDriver();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = 1;
    v18 = updated;
    v19 = &off_1F01A61D0;
    *&v17 = v10;
  }

  sub_18E689D58(&v17, a3 + 160);
  type metadata accessor for FailureDependencyGraph();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v8;
  *(v11 + 32) = a2 & 1;
  *(a3 + 112) = v11;
  type metadata accessor for ExclusionPool();
  swift_allocObject();

  v13 = sub_18E6938DC(v12);
  sub_18E693A78(a1);
  __swift_destroy_boxed_opaque_existential_0(v20);
  *(a3 + 120) = v13;
  return a3;
}

uint64_t sub_18E69363C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_18E6879CC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18E69C9F0(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_18E6879CC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for AnyGestureNode();
        result = sub_18E72B818();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_18E70CB74();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

uint64_t sub_18E69379C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18E693800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA80, &unk_18E731690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E6938DC(uint64_t a1)
{
  v3 = sub_18E69399C(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = 0;
  *(v1 + 32) = v3;
  *(v1 + 40) = 1;
  type metadata accessor for ExclusionRelationCache();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC8];
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  *(v4 + 24) = v5;
  if (qword_1ED6F8480 != -1)
  {
    swift_once();
  }

  if (!dyld_program_sdk_at_least())
  {

    v4 = 0;
  }

  *(v1 + 48) = v4;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_18E69399C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_18E72B518();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_18E687D54(v3, 0);
  sub_18E71C918((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18E693A54()
{
  result = buildVersionLuckier();
  qword_1ED6F934C = result;
  return result;
}

uint64_t sub_18E693A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA80, &unk_18E731690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E693BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for RingBuffer();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18E693C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for GesturePhase();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_18E693D54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = qword_1EAC8DC80;
  v6 = *&v1[qword_1EAC8DC80];
  swift_unknownObjectUnownedAssign();
  *(*&v1[v5] + 192) = 0;
  swift_unknownObjectWeakAssign();
  v7 = *&v1[v5];
  v8 = *((v4 & v3) + 0x188);
  type metadata accessor for GestureNodeShim.Failure();
  swift_getWitnessTable();
  v9 = swift_allocError();
  *v10 = 0;
  v10[1] = 0;
  v13 = v9 | 0x8000000000000000;

  sub_18E683A1C(&v13, 0);

  sub_18E683B98(v13);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t *GestureNode.deinit()
{
  v1 = *v0;
  AnyGestureNode.deinit();
  sub_18E694018((v0 + 23));
  v2 = *(*v0 + 384);
  v3 = *(v1 + 368);
  v4 = type metadata accessor for GesturePhaseQueue();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t GestureNode.__deallocating_deinit()
{
  GestureNode.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *AnyGestureNode.deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  sub_18E694018((v0 + 7));
  sub_18E68B548((v0 + 9), &qword_1EAC8E708, &qword_18E72E2F8);
  sub_18E694040((v0 + 14));
  v3 = v0[16];
  sub_18E6826D0(v0[15]);
  sub_18E694040((v0 + 17));
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];

  v7 = v0[22];

  return v0;
}

uint64_t sub_18E694068()
{
  result = os_variant_has_internal_content();
  byte_1ED6F9348 = result;
  return result;
}

const char *sub_18E694090()
{
  result = getenv("GESTURES_LOGGING_ENABLED");
  if (result)
  {
    result = atoi(result);
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  byte_1ED6F7EF1 = v1;
  return result;
}

void sub_18E6940DC(uint64_t *a1, uint64_t a2)
{
  if (a1[3] >= 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v4 = *(a2 + 16);
  v5 = *(*(v4 - 8) + 64);
  v6 = *(*(v4 - 8) + 80) & 0xF8 | 7;
  v7 = ((a1 + v6 + 40) & ~v6);
  v8 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v5 > v8)
  {
    v8 = *(*(v4 - 8) + 64);
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = 8 * v9;
  v11 = v7[v9];
  v12 = v11 - 4;
  if (v11 >= 4)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = *v7;
    }

    else if (v13 == 2)
    {
      v14 = *v7;
    }

    else if (v13 == 3)
    {
      v14 = *v7 | (v7[2] << 16);
    }

    else
    {
      v14 = *v7;
    }

    v15 = (v14 | (v12 << v10)) + 4;
    v11 = v14 + 4;
    if (v9 < 4)
    {
      v11 = v15;
    }
  }

LABEL_22:
  v16 = ~v6;
  v28 = *(v4 - 8);
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_31;
      }

      v17 = *(v4 - 8);
      goto LABEL_30;
    }

LABEL_29:
    v17 = *(v4 - 8);
LABEL_30:
    (*(v17 + 8))(v7, v4);
    goto LABEL_31;
  }

  if (v11 == 2)
  {
    goto LABEL_29;
  }

  if (v11 == 3)
  {
    sub_18E683B98(*v7);
  }

LABEL_31:
  v18 = (((((&v7[v6 + 1 + v9] & v16) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;

  v20 = ((v18 + v6 + 8) & v16);
  v21 = v20[v9];
  v22 = v21 - 4;
  if (v21 < 4)
  {
    goto LABEL_45;
  }

  if (v9 <= 3)
  {
    v23 = v9;
  }

  else
  {
    v23 = 4;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      goto LABEL_45;
    }

    v24 = *v20;
  }

  else if (v23 == 2)
  {
    v24 = *v20;
  }

  else if (v23 == 3)
  {
    v24 = *v20 | (*(((v18 + v6 + 8) & v16) + 2) << 16);
  }

  else
  {
    v24 = *v20;
  }

  v25 = (v24 | (v22 << v10)) + 4;
  v21 = v24 + 4;
  if (v9 < 4)
  {
    v21 = v25;
  }

LABEL_45:
  if (v21 <= 1)
  {
    if (v21 >= 2)
    {
      return;
    }

    goto LABEL_53;
  }

  if (v21 == 2)
  {
LABEL_53:
    v27 = *(v28 + 8);

    v27();
    return;
  }

  if (v21 == 3)
  {
    v26 = *v20;

    sub_18E683B98(v26);
  }
}

uint64_t sub_18E6943C0()
{
  v0 = sub_18E72AE18();
  __swift_allocate_value_buffer(v0, qword_1ED6F7FA0);
  __swift_project_value_buffer(v0, qword_1ED6F7FA0);
  sub_18E6944E0();
  sub_18E72B418();
  return sub_18E72AE28();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_18E6944E0()
{
  result = qword_1ED6F7FB8;
  if (!qword_1ED6F7FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6F7FB8);
  }

  return result;
}

uint64_t sub_18E694544(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void sub_18E6945C8()
{
  v55 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x188);
  v1 = type metadata accessor for GesturePhase();
  v46 = sub_18E72B438();
  v43 = *(v46 - 8);
  v2 = *(v43 + 64);
  v3 = MEMORY[0x1EEE9AC00](v46);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - v5;
  v7 = type metadata accessor for RingBuffer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v56 = *(v1 - 8);
  v15 = *(v56 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v51 = &v42 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v45 = v0;
  v25 = *(v0 + qword_1EAC8DC80);
  sub_18E67DBC8(v14);
  sub_18E67DE08(v7, v6);
  v26 = *(v8 + 8);
  v49 = v7;
  v50 = v8 + 8;
  v27 = v7;
  v28 = v56;
  v47 = v26;
  v26(v14, v27);
  v29 = *(v28 + 48);
  v30 = v29(v6, 1, v1);
  v54 = v25;
  if (v30 == 1)
  {
    GestureNode.phase.getter(v24);
    if (v29(v6, 1, v1) != 1)
    {
      (*(v43 + 8))(v6, v46);
    }
  }

  else
  {
    (*(v28 + 32))(v24, v6, v1);
  }

  v31 = *(v28 + 32);
  v31(v22, v24, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload - 4 >= 2)
    {
      (*(v56 + 8))(v22, v1);
      return;
    }
  }

  else
  {
    (*(*(v55 - 8) + 8))(v22);
  }

  v44 = v31;
  v33 = v29;
  v34 = v48;
  sub_18E67DBC8(v48);
  v35 = v52;
  v36 = v49;
  sub_18E67DE08(v49, v52);
  v47(v34, v36);
  if (v33(v35, 1, v1) == 1)
  {
    v37 = v51;
    GestureNode.phase.getter(v51);
    v38 = v33(v35, 1, v1);
    v39 = v44;
    if (v38 != 1)
    {
      (*(v43 + 8))(v35, v46);
    }
  }

  else
  {
    v37 = v51;
    v39 = v44;
    v44(v51, v35, v1);
  }

  v40 = v53;
  v39(v53, v37, v1);
  v41 = swift_getEnumCaseMultiPayload();
  if (v41 <= 2)
  {
    (*(*(v55 - 8) + 8))(v40);
    goto LABEL_19;
  }

  if (v41 == 3)
  {
    (*(v56 + 8))(v40);
    goto LABEL_19;
  }

  if (v41 != 4)
  {
LABEL_19:
    sub_18E690AE0();
    v57 = 0xC000000000000003;
    sub_18E683A1C(&v57, 1);
  }
}

uint64_t sub_18E694C5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  if (a1 >> 62)
  {
LABEL_28:
    v6 = sub_18E72B518();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v31 = a3;
  if (v6)
  {
    v33 = MEMORY[0x1E69E7CC0];
    result = sub_18E72B658();
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_66;
    }

    v9 = 0;
    v10 = MEMORY[0x1E69E7D40];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AD1B60](v9, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      (*((*v10 & *v11) + 0x78))();
      swift_unknownObjectRelease();
      sub_18E72B628();
      v12 = *(v33 + 16);
      sub_18E72B668();
      sub_18E72B678();
      sub_18E72B638();
    }

    while (v6 != v9);
    v13 = v33;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v33 = v7;
  if (v13 >> 62)
  {
    v4 = sub_18E72B518();
    if (v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_14:
      v14 = 0;
      a3 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x193AD1B60](v14, v13);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            v19 = v33;
            a3 = v31;
            goto LABEL_31;
          }
        }

        else
        {
          if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v15 = *(v13 + 8 * v14 + 32);

          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_25;
          }
        }

        v17 = (*(*v15 + 168))(&v32);
        if ((v32 & 1) != 0 || !(*(*v15 + 192))(v17))
        {
        }

        else
        {
          swift_unknownObjectRelease();
          sub_18E72B628();
          v18 = *(v33 + 16);
          sub_18E72B668();
          sub_18E72B678();
          sub_18E72B638();
        }

        ++v14;
        if (v16 == v4)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v20 = v19 < 0 || (v19 & 0x4000000000000000) != 0;
  if (v20)
  {
    result = sub_18E72B518();
    v21 = result;
    if (result)
    {
LABEL_36:
      if (v21 >= 1)
      {
        for (i = 0; i != v21; ++i)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x193AD1B60](i, v19);
          }

          else
          {
            v23 = *(v19 + 8 * i + 32);
          }

          Strong = swift_unknownObjectUnownedLoadStrong();
          if (!Strong || (v25 = Strong, swift_unknownObjectRelease(), v25 != v5))
          {
            sub_18E69F494(v23);
          }
        }

        goto LABEL_47;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  else
  {
    v21 = *(v19 + 16);
    if (v21)
    {
      goto LABEL_36;
    }
  }

LABEL_47:
  if (v20)
  {
    result = sub_18E72B518();
    v26 = result;
    if (!result)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v26 = *(v19 + 16);
    if (!v26)
    {
LABEL_62:
    }
  }

  if (v26 >= 1)
  {
    v27 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AD1B60](v27, v19);
      }

      else
      {
        v28 = *(v19 + 8 * v27 + 32);
      }

      v29 = swift_unknownObjectUnownedLoadStrong();
      if (v29 && (v30 = v29, swift_unknownObjectRelease(), v30 == v5))
      {
        result = swift_unknownObjectUnownedLoadStrong();
        if (!result)
        {
          goto LABEL_68;
        }

        (*(a3 + 16))(a3, result);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (v26 == ++v27)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t GestureNode.container.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 64);
  return result;
}

uint64_t GFGestureNode.options.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  (*(*v1 + 168))(v1);
}

unint64_t sub_18E69516C()
{
  result = qword_1ED6F7F08;
  if (!qword_1ED6F7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7F08);
  }

  return result;
}

unint64_t sub_18E6951C4()
{
  result = qword_1ED6F7F40;
  if (!qword_1ED6F7F40)
  {
    type metadata accessor for AnyGestureNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7F40);
  }

  return result;
}

uint64_t sub_18E695240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED6F7F50 != -1)
  {
LABEL_10:
    swift_once();
  }

  v6 = dword_1ED6F7F38;
  do
  {
    v7 = (v6 + 1);
    if (v6 == -1)
    {
      __break(1u);
      goto LABEL_10;
    }

    v8 = v6;
    atomic_compare_exchange_strong_explicit(&dword_1ED6F7F38, &v8, v7, memory_order_relaxed, memory_order_relaxed);
    v9 = v8 == v6;
    v6 = v8;
  }

  while (!v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_18E6953DC(sub_18E690984, v10, v7, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v16;
  if (*(v16 + 16) == 1)
  {
    v13 = CFRunLoopGetMain();
    v14 = sub_18E6931C8();
    CFRunLoopAddObserver(v13, v14, *MEMORY[0x1E695E8D0]);
  }

  return v7;
}

uint64_t sub_18E695398()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_18E6953DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_18E68EA90(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_18E69553C(v16, a4 & 1);
      v20 = *v5;
      result = sub_18E68EA90(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_18E72B818();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_18E692D38();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_18E69553C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5B0, &unk_18E730E68);
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_18E6957E0()
{
  result = qword_1ED6F7F30;
  if (!qword_1ED6F7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7F30);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_18E695864(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_18E695874()
{
  result = qword_1ED6F7F00;
  if (!qword_1ED6F7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7F00);
  }

  return result;
}

uint64_t GFGestureNode.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  v5 = v2;
  (*(*v3 + 176))(&v5);
}

uint64_t sub_18E6959C4(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v3 + 32;
  v6 = *(v3 + 16);
  if (*v1)
  {
    v7 = *v1;

    sub_18E6982D4(a1, v5, v6, (v4 + 16));
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    v11 = 0;
    while (*(v5 + 8 * v11) != a1)
    {
      if (v6 == ++v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  sub_18E695A88();
  v12 = *(v1[1] + 16) - 1;
  return 1;
}

uint64_t sub_18E695A88()
{

  sub_18E72B628();
  v1 = *(v0[1] + 16);
  sub_18E72B668();
  sub_18E72B678();
  result = sub_18E72B638();
  v3 = *(v0[1] + 16);
  if (!*v0)
  {
    if (v3 < 0x10)
    {
      return result;
    }

    return sub_18E71A3F4(sub_18E7265C4);
  }

  if (MEMORY[0x193AD1300](*(*v0 + 16) & 0x3FLL) < v3)
  {
    return sub_18E71A3F4(sub_18E7265C4);
  }

  v4 = *v0;
  result = swift_isUniquelyReferenced_native();
  v5 = *v0;
  if ((result & 1) == 0)
  {
    if (!v5)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v6 = *v0;
    v7 = sub_18E72ADC8();

    *v0 = v7;
    v5 = v7;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v5 + 16);
  v9 = *(v0[1] + 16) + ~(*(v5 + 24) >> 6);

  return sub_18E72AD58();
}

uint64_t sub_18E695BE4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a2);
  v7 = sub_18E72B8E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_18E696C9C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_18E695CE0()
{
  result = qword_1ED6F7F28;
  if (!qword_1ED6F7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7F28);
  }

  return result;
}

uint64_t sub_18E695D34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA28, &unk_18E72C8E0);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v18);
      result = sub_18E72B8E8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_18E695F9C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x188);
  v2 = sub_18E72B438();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v39 - v6;
  v7 = type metadata accessor for GesturePhase();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v39 - v13;
  v45 = *(v1 - 8);
  v15 = *(v45 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v39 - v18;
  v19 = type metadata accessor for RingBuffer();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  v42 = v0;
  v24 = *(v0 + qword_1EAC8DC80);
  sub_18E67DBC8(&v39 - v22);
  swift_getWitnessTable();
  v25 = sub_18E72B378();
  result = (*(v20 + 8))(v23, v19);
  if (v25)
  {
    GestureNode.phase.getter(v14);
    v27 = v43;
    (*(v43 + 32))(v11, v14, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload >= 3)
    {
      v29 = v45;
      v36 = v46;
      v32 = v44;
      if (EnumCaseMultiPayload - 4 >= 2)
      {
        (*(v27 + 8))(v11, v7);
      }

      v33 = 1;
      v35 = v47;
      v34 = v48;
    }

    else
    {
      v29 = v45;
      v30 = *(v45 + 32);
      v31 = v40;
      v30(v40, v11, v1);
      v32 = v44;
      v30(v44, v31, v1);
      v33 = 0;
      v35 = v47;
      v34 = v48;
      v36 = v46;
    }

    (*(v29 + 56))(v32, v33, 1, v1);
    (*(v35 + 32))(v36, v32, v34);
    if ((*(v29 + 48))(v36, 1, v1) == 1)
    {
      return (*(v35 + 8))(v36, v34);
    }

    else
    {
      v37 = v41;
      (*(v29 + 32))(v41, v36, v1);
      v49[3] = v1;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
      (*(v29 + 16))(boxed_opaque_existential_0, v37, v1);
      sub_18E6925C4(v49, 0);
      (*(v29 + 8))(v37, v1);
      return __swift_destroy_boxed_opaque_existential_0(v49);
    }
  }

  return result;
}

void sub_18E6964A4(unint64_t a1, unsigned __int8 a2, int a3)
{
  v5 = v3;
  v54 = a3;
  v8 = sub_18E72AE18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v53 = a2;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_18E6AA03C(a1, a2);
    goto LABEL_31;
  }

  if (a2 >= 3u)
  {
    if (a2 == 3)
    {
      a2 = 3;
      sub_18E6AA03C(a1, 3);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      a2 = 4;
    }

    goto LABEL_31;
  }

  v13 = *(v3 + 192);
  sub_18E6C87AC(v3 + 200, v46);
  v44 = v13;
  v45 = v9;
  if (!v49)
  {
    v17 = v12;
    v19 = v46[5];
    v20 = v47;
    goto LABEL_19;
  }

  v14 = v49 - 1;
  if (__OFSUB__(v49, 1))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v14 < 0 || v14 >= v49)
  {
    goto LABEL_51;
  }

  v15 = v51 + v14;
  if (__OFADD__(v51, v14))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v48)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v15 != 0x8000000000000000 || v48 != -1)
  {
    v16 = v15 % v48;
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (v16 < *(v50 + 16))
      {
        v17 = v12;
        v18 = v50 + 16 * v16;
        v19 = *(v18 + 32);
        v20 = *(v18 + 40);
LABEL_19:
        sub_18E6AA03C(a1, a2);
        sub_18E6AA03C(v19, v20);
        sub_18E68B548(v46, &qword_1EAC8E738, &qword_18E72E4B8);
        if (v20 <= 1)
        {
          v9 = v45;
          swift_unknownObjectRelease();
          v12 = v17;
          goto LABEL_31;
        }

        if (v20 == 2)
        {
          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        if (v20 == 3)
        {
          swift_unknownObjectRelease();
          sub_18E69E818(v19, 3);
LABEL_25:
          v9 = v45;
          v12 = v17;
          goto LABEL_31;
        }

        v12 = v17;
        if (v19)
        {
          ObjectType = swift_getObjectType();
          v22 = (*(v44 + 2))(v3, ObjectType);
          swift_unknownObjectRelease();
          if ((v22 & 1) == 0)
          {
            sub_18E69E818(a1, a2);
            v52 = 0xC000000000000002;
            a2 = 3;
            v53 = 3;
            a1 = 0xC000000000000002;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v9 = v45;
LABEL_31:
        sub_18E697434(a1, a2);
        if (v4)
        {
          v23 = a1;
          v24 = a2;
LABEL_49:
          sub_18E69E818(v23, v24);
          return;
        }

        if ((sub_18E680FFC() & 1) == 0)
        {
          if (qword_1ED6F7F98 != -1)
          {
            swift_once();
          }

          v25 = qword_1ED6F7FA0;
          goto LABEL_39;
        }

        if (qword_1EAC8D8F8 == -1)
        {
LABEL_35:
          v25 = qword_1EAC8E570;
LABEL_39:
          v26 = __swift_project_value_buffer(v8, v25);
          (*(v9 + 16))(v12, v26, v8);

          v27 = sub_18E72ADF8();
          v28 = sub_18E72B3E8();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v44 = v12;
            v30 = v29;
            v31 = v9;
            v32 = swift_slowAlloc();
            v46[0] = v32;
            *v30 = 136315138;
            v33 = AnyGestureNode.debugLabel.getter();
            v35 = sub_18E6C5E8C(v33, v34, v46);
            v43 = v8;
            v36 = v35;

            *(v30 + 4) = v36;
            _os_log_impl(&dword_18E67C000, v27, v28, "%s enqueued phase", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            MEMORY[0x193AD25C0](v32, -1, -1);
            MEMORY[0x193AD25C0](v30, -1, -1);

            (*(v31 + 8))(v44, v43);
          }

          else
          {

            (*(v9 + 8))(v12, v8);
          }

          Strong = swift_unknownObjectUnownedLoadStrong();
          if (Strong)
          {
            v38 = Strong;

            sub_18E6880B0(v46, v3);

            v39 = *(v38 + 120);

            sub_18E6C5754(v5);

            if (v54)
            {
              sub_18E69ECF0(v5);
            }

            swift_unknownObjectRelease();
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            isa = v5[24].isa;
            v41 = swift_getObjectType();
            (*(isa + 3))(v5, &v52, v41, isa);
            swift_unknownObjectRelease();
          }

          v23 = v52;
          v24 = v53;
          goto LABEL_49;
        }

LABEL_56:
        swift_once();
        goto LABEL_35;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  __break(1u);
}

id sub_18E696A38()
{
  v0 = sub_18E696A6C();

  return v0;
}

uint64_t sub_18E696A7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA28, &unk_18E72C8E0);
  result = sub_18E72B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v17);
      result = sub_18E72B8E8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E696C9C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18E695D34(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_18E6C72D0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18E696A7C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v4);
  result = sub_18E72B8E8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18E72B808();
  __break(1u);
  return result;
}

uint64_t sub_18E696E40(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v10 + 8 * v5);
        v7 = *a3;
        sub_18E72B888();

        v8 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v8);
        result = sub_18E72B8E8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = sub_18E72AD38();

        if (v9)
        {
          while (1)
          {
            sub_18E72AD98();
          }
        }

        result = sub_18E72AD88();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18E696F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (v6 < 0xFFFFFFFF)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    (**(v6 - 8))(a1, a2);
  }

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80) & 0xF8;
  v12 = v11 | 7;
  v11 += 47;
  v13 = ((v11 + a1) & ~v12);
  v14 = ((v11 + a2) & ~v12);
  v15 = *(v10 + 64);
  v16 = v15 + 3;
  if (v15 <= ((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v15 = ((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v15 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = v15;
  }

  v18 = v14[v17];
  v19 = v18 - 4;
  if (v18 >= 4)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = *v14;
    }

    else if (v20 == 2)
    {
      v21 = *v14;
    }

    else if (v20 == 3)
    {
      v21 = *v14 | (v14[2] << 16);
    }

    else
    {
      v21 = *v14;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 4;
    v18 = v21 + 4;
    if (v17 < 4)
    {
      v18 = v22;
    }
  }

LABEL_23:
  v23 = ~v12;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      (*(v10 + 16))(v13, v14, v9);
      v24 = 2;
      goto LABEL_33;
    }

    if (v18 == 3)
    {
      v25 = *v14;
      sub_18E683B80(*v14);
      *v13 = v25;
      v24 = 3;
      goto LABEL_33;
    }

LABEL_30:
    memcpy(v13, v14, v17 + 1);
    goto LABEL_34;
  }

  if (!v18)
  {
    (*(v10 + 16))(v13, v14, v9);
    *((v13 + v16) & 0xFFFFFFFFFFFFFFFCLL) = *(&v14[v16] & 0xFFFFFFFFFFFFFFFCLL);
    *(v13 + v17) = 0;
    goto LABEL_34;
  }

  if (v18 != 1)
  {
    goto LABEL_30;
  }

  (*(v10 + 16))(v13, v14, v9);
  v24 = 1;
LABEL_33:
  *(v13 + v17) = v24;
LABEL_34:
  v26 = ((v13 + v12 + v17 + 1) & v23);
  v27 = (&v14[v12 + 1 + v17] & v23);
  *v26 = *v27;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + v12 + 8) & v23);
  v33 = ((v31 + v12 + 8) & v23);
  v34 = v33[v17];

  if (v34 < 4)
  {
    goto LABEL_49;
  }

  if (v17 <= 3)
  {
    v35 = v17;
  }

  else
  {
    v35 = 4;
  }

  if (v35 <= 1)
  {
    if (!v35)
    {
      goto LABEL_49;
    }

    v36 = *v33;
  }

  else if (v35 == 2)
  {
    v36 = *v33;
  }

  else if (v35 == 3)
  {
    v36 = *v33 | (v33[2] << 16);
  }

  else
  {
    v36 = *v33;
  }

  v37 = (v36 | ((v34 - 4) << (8 * v17))) + 4;
  v38 = v36 + 4;
  if (v17 >= 4)
  {
    v34 = v38;
  }

  else
  {
    v34 = v37;
  }

LABEL_49:
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      (*(v10 + 16))(v32, v33, v9);
      v39 = 2;
      goto LABEL_59;
    }

    if (v34 == 3)
    {
      v40 = *v33;
      sub_18E683B80(*v33);
      *v32 = v40;
      v39 = 3;
      goto LABEL_59;
    }
  }

  else
  {
    if (!v34)
    {
      (*(v10 + 16))(v32, v33, v9);
      *((v32 + v16) & 0xFFFFFFFFFFFFFFFCLL) = *(&v33[v16] & 0xFFFFFFFFFFFFFFFCLL);
      *(v32 + v17) = 0;
      goto LABEL_60;
    }

    if (v34 == 1)
    {
      (*(v10 + 16))(v32, v33, v9);
      v39 = 1;
LABEL_59:
      *(v32 + v17) = v39;
      goto LABEL_60;
    }
  }

  memcpy(v32, v33, v17 + 1);
LABEL_60:
  v41 = ((v32 + v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (&v33[v17 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  *((v41 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6973D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v2 = [Strong gestureNodeShouldActivate_];
  swift_unknownObjectRelease();
  return v2;
}

void sub_18E697434(uint64_t a1, char a2)
{
  LOBYTE(v5) = a2;
  v6 = a1;
  sub_18E697A98(a1, a2);
  if (v7)
  {
    v8 = *(v2 + 64);
    if (!v8)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v9 = *(v2 + 104);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v4 = *(v2 + 56);
    v10 = __OFADD__(v11, v4);
    v12 = v11 + v4;
    if (v10)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (!v4)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v4 == -1 && v12 == 0x8000000000000000)
    {
      goto LABEL_108;
    }

    v13 = v12 % v4;
    *(v2 + 104) = v12 % v4;
    v3 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_96;
    }

    *(v2 + 64) = v3;
    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v14 = *(v2 + 72);
    if (v13 >= *(v14 + 16))
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v3 == v4)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

  v56 = v6;
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  v17 = *(v2 + 72);
  v18 = *(v2 + 80);
  v19 = *(v2 + 88);
  v55 = v5;
  v6 = *(v2 + 96);
  v13 = *(v2 + 104);
  v58 = v18;
  v59 = v17;
  v57 = v19;
  if (v5 != 3)
  {

    sub_18E6AA03C(v18, v19);
    goto LABEL_35;
  }

  if (*(v2 + 48) != 1)
  {
    if (v4 >= 1)
    {

      sub_18E6AA03C(v18, v19);
      sub_18E6AA03C(v18, v19);
      sub_18E6AA03C(v18, v19);
      v30 = sub_18E69E760(v18, v19, v4);
      sub_18E69E818(v18, v19);

      sub_18E6AA03C(v18, v19);
      v54 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_51;
      }

      goto LABEL_112;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    v54 = sub_18E6F06E8(v54);
LABEL_51:
    v13 = 0;
    v5 = 0;
    v31 = 0;
    v32 = v59;
    v53 = 0;
    while (1)
    {
      do
      {
        if (v3-- < 1)
        {

          sub_18E69E818(v58, v57);

          sub_18E69E818(v58, v57);
          v3 = v53;
          v59 = v54;
          v6 = v5;
          goto LABEL_35;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if (v6 >= v32[2])
        {
          goto LABEL_87;
        }

        v34 = &v59[2 * v6 + 4];
        v35 = *(v34 + 8);
        v6 = (v6 + 1) % v4;
      }

      while (v35 < 3);
      if (v31 == v4)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_121;
        }

        v5 = (v5 + 1) % v4;
        v52 = v4;
      }

      else
      {
        v10 = __OFADD__(v31, 1);
        v36 = v31 + 1;
        if (v10)
        {
          goto LABEL_122;
        }

        v52 = v36;
        v53 = v36;
      }

      v37 = *v34;
      sub_18E6AA03C(*v34, v35);
      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v13 >= v54[2])
      {
        goto LABEL_114;
      }

      v38 = &v54[2 * v13 + 4];
      v39 = *v38;
      *v38 = v37;
      v40 = *(v38 + 8);
      *(v38 + 8) = v35;
      sub_18E69E818(v39, v40);
      if (v13 + 1 == v4)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      v32 = v59;
      v31 = v52;
    }

    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (!v3)
  {

    sub_18E6AA03C(v18, v19);
    goto LABEL_69;
  }

  v20 = v3 - 1;
  v21 = __OFSUB__(v3, 1);
  if (__OFSUB__(v3, 1))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (v20 < 0 || v20 >= v3)
  {
    goto LABEL_116;
  }

  v22 = v6 + v20;
  if (__OFADD__(v6, v20))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (!v4)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v22 == 0x8000000000000000 && v4 == -1)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v23 = v22 % v4;
  if (v22 % v4 < 0)
  {
    goto LABEL_119;
  }

  v24 = v17[2];
  if (v23 >= v24)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (LOBYTE(v17[2 * v23 + 5]) != 2)
  {

    sub_18E6AA03C(v58, v19);
LABEL_39:
    if (v21)
    {
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v20 < 0 || v20 >= v3)
    {
      goto LABEL_103;
    }

    v25 = v6 + v20;
    if (__OFADD__(v6, v20))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (!v4)
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v25 == 0x8000000000000000 && v4 == -1)
    {
      goto LABEL_110;
    }

    v26 = v25 % v4;
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_106;
    }

    if (v26 >= v59[2])
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v27 = &v59[2 * v26];
    v28 = v27 + 4;
    v29 = (v27 + 5);
LABEL_70:
    v41 = *v29;
    v42 = *v28;
    sub_18E6AA03C(*v28, *v29);
    if ((sub_18E697D64(v56, v55, v42, v41) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E740, &qword_18E72E4C0);
      sub_18E6C881C();
      swift_allocError();
      *v49 = v42;
      *(v49 + 8) = v41;
      *(v49 + 16) = v56;
      *(v49 + 24) = v55;
      swift_willThrow();
      sub_18E6AA03C(v56, v55);

      sub_18E69E818(v58, v57);
      return;
    }

    sub_18E69E818(v42, v41);
    v43 = *(v2 + 72);
    v44 = *(v2 + 80);
    v45 = *(v2 + 88);

    sub_18E69E818(v44, v45);
    *(v2 + 56) = v4;
    *(v2 + 64) = v3;
    v14 = v59;
    *(v2 + 72) = v59;
    *(v2 + 80) = v58;
    *(v2 + 88) = v57;
    *(v2 + 96) = v6;
    *(v2 + 104) = v13;
    v6 = v56;
    LOBYTE(v5) = v55;
    if (v3 == v4)
    {
LABEL_12:
      v15 = *(v2 + 96);
      v10 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v10)
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      if (!v4)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v4 == -1 && v16 == 0x8000000000000000)
      {
        goto LABEL_109;
      }

      *(v2 + 96) = v16 % v4;
LABEL_74:
      v3 = v14;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
LABEL_88:
        v3 = sub_18E6F06E8(v3);
        if ((v13 & 0x8000000000000000) == 0)
        {
LABEL_76:
          if (v13 < *(v3 + 16))
          {
            v46 = v3 + 16 * v13;
            v47 = *(v46 + 32);
            *(v46 + 32) = v6;
            v48 = v6;
            v6 = *(v46 + 40);
            *(v46 + 40) = v5;
            sub_18E6AA03C(v48, v5);
            sub_18E69E818(v47, v6);
            *(v2 + 72) = v3;
            if (v4)
            {
              *(v2 + 104) = (v13 + 1) % v4;
              return;
            }

            goto LABEL_91;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

LABEL_72:
    if (__OFADD__(v3, 1))
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    *(v2 + 64) = v3 + 1;
    goto LABEL_74;
  }

  v50 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v10 = __OFADD__(v50, v4);
  v51 = v50 + v4;
  if (v10)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v4 == -1 && v51 == 0x8000000000000000)
  {
    goto LABEL_127;
  }

  v13 = v51 % v4;
  if (v51 % v4 < v24)
  {

    sub_18E6AA03C(v58, v19);
    --v3;
LABEL_35:
    if (v3)
    {
      v20 = v3 - 1;
      v21 = __OFSUB__(v3, 1);
      goto LABEL_39;
    }

LABEL_69:
    v3 = 0;
    v28 = (v2 + 40);
    v29 = (v2 + 48);
    goto LABEL_70;
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void sub_18E697A98(uint64_t a1, char a2)
{
  v10 = *(v3 + 64);
  if (!v10)
  {
    return;
  }

  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v11 < 0 || v11 >= v10)
  {
    goto LABEL_39;
  }

  v8 = *(v3 + 96);
  v12 = __OFADD__(v8, v11);
  v13 = v8 + v11;
  if (v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v2 = *(v3 + 56);
  if (!v2)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = *(v3 + 72);
  if (v13 == 0x8000000000000000 && v2 == -1)
  {
    goto LABEL_44;
  }

  v14 = v13 % v2;
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (v14 >= *(v7 + 16))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a2 != 1)
  {
    return;
  }

  v9 = v7 + 32;
  v15 = v7 + 32 + 16 * v14;
  if (*(v15 + 8) != 1 || *(v3 + 48) == 1)
  {
    return;
  }

  if (v2 >= 1)
  {
    v31 = *v15;
    v6 = *(v3 + 80);
    v5 = *(v3 + 88);
    sub_18E6AA03C(v6, *(v3 + 88));
    sub_18E6AA03C(v6, v5);
    v4 = sub_18E69E760(v6, v5, v2);
    sub_18E69E818(v6, v5);

    sub_18E6AA03C(v6, v5);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  v4 = sub_18E6F06E8(v4);
LABEL_18:
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v4 + 4;
  while (1)
  {
    do
    {
      if (v10-- < 1)
      {

        sub_18E69E818(v6, v5);
        sub_18E69E818(v31, 1);

        sub_18E69E818(v6, v5);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= *(v7 + 16))
      {
        goto LABEL_37;
      }

      v21 = (v9 + 16 * v8);
      v8 = (v8 + 1) % v2;
    }

    while (*(v21 + 8) != 1);
    v22 = *v21;
    v30 = v5;
    if (v18 == v2)
    {
      if (__OFADD__(v17, 1))
      {
        goto LABEL_49;
      }

      if (v17 == 0x7FFFFFFFFFFFFFFFLL && v2 == -1)
      {
        goto LABEL_51;
      }

      v17 = (v17 + 1) % v2;
      v18 = v2;
    }

    else
    {
      v12 = __OFADD__(v18++, 1);
      if (v12)
      {
        goto LABEL_50;
      }
    }

    v29 = v6;
    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= v4[2])
    {
      goto LABEL_48;
    }

    v23 = v4;
    v24 = &v19[2 * v16];
    v25 = *v24;
    *v24 = v22;
    v26 = *(v24 + 8);
    *(v24 + 8) = 1;
    v27 = v19;
    v28 = v16;
    sub_18E69E818(v25, v26);
    v19 = v27;
    if (v28 + 1 == v2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v28 + 1;
    }

    v4 = v23;
    v6 = v29;
    v5 = v30;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_18E697D64(unint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (a2 == 4 && !a1)
      {
        v7 = a3;
        v8 = 2;
        goto LABEL_15;
      }

LABEL_35:
      sub_18E6AA03C(a3, a4);
      sub_18E6AA03C(a1, a2);
      sub_18E69E818(a3, a4);
      sub_18E69E818(a1, a2);
      return 0;
    }

    if (a4 == 3)
    {
      if (a2 == 4 && !a1)
      {
        v7 = a3;
        v8 = 3;
LABEL_15:
        sub_18E6AA03C(v7, v8);
        v11 = 0;
LABEL_16:
        v12 = 4;
LABEL_45:
        sub_18E6AA03C(v11, v12);
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    if (!a3)
    {
      if (a2 == 4 && a1 == 1)
      {
        sub_18E6AA03C(0, 4);
        v11 = 1;
        goto LABEL_16;
      }

      goto LABEL_35;
    }

    if (a2 <= 1u)
    {
      if (a2)
      {
        v9 = 1;
        v10 = 4;
        goto LABEL_38;
      }

      v19 = 1;
      v20 = 4;
      goto LABEL_42;
    }

    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_35;
      }

      v13 = 1;
      v14 = 4;
      goto LABEL_34;
    }

    v17 = 1;
    v18 = 4;
LABEL_44:
    sub_18E6AA03C(v17, v18);
    v11 = a1;
    v12 = 2;
    goto LABEL_45;
  }

  if (a4)
  {
    if (a2 == 1)
    {
      v9 = a3;
      v10 = 1;
      goto LABEL_38;
    }

    if (a2 == 2)
    {
      v17 = a3;
      v18 = 1;
      goto LABEL_44;
    }

    if (a2 != 3)
    {
      goto LABEL_35;
    }

    v13 = a3;
    v14 = 1;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_35;
        }

        v9 = a3;
        v10 = 0;
LABEL_38:
        sub_18E6AA03C(v9, v10);
        v11 = a1;
        v12 = 1;
        goto LABEL_45;
      }

      v19 = a3;
      v20 = 0;
LABEL_42:
      sub_18E6AA03C(v19, v20);
      v11 = a1;
      v12 = 0;
      goto LABEL_45;
    }

    if (a2 == 2)
    {
      v17 = a3;
      v18 = 0;
      goto LABEL_44;
    }

    if (a2 != 3)
    {
      goto LABEL_35;
    }

    v13 = a3;
    v14 = 0;
  }

LABEL_34:
  sub_18E6AA03C(v13, v14);
  sub_18E6AA03C(a1, 3);
  sub_18E69E818(a1, 3);
LABEL_46:
  sub_18E69E818(a3, a4);
  return 1;
}

uint64_t sub_18E69806C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GesturePhase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v5 + 8))(v8, v4);
    }

    return 1;
  }

  else
  {
    (*(*(a2 - 8) + 8))(v8, a2);
    return 0;
  }
}

char *sub_18E6981C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDD8, &qword_18E72F5F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18E6982D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  sub_18E72B888();
  v8 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v8);
  result = sub_18E72B8E8();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_18E72AD38();
    result = sub_18E72AD78();
    if ((v10 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_18E72AD98();
        result = sub_18E72AD78();
      }

      while ((v11 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

unint64_t sub_18E6983EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v22 = sub_18E72AD38();
  sub_18E72AD98();
  if (v22)
  {
    v7 = sub_18E72AD48();
    while (1)
    {
      result = sub_18E72AD78();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = *(v11 + 8 * result + 32);
      sub_18E72B888();

      v14 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v14);
      v15 = sub_18E72B8E8();

      v16 = 1 << *a2;
      v17 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        goto LABEL_22;
      }

      v18 = v17 & v15;
      if (v6 >= v7)
      {
        break;
      }

      if (v18 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v19 = sub_18E72AD78();
      if ((v20 & 1) == 0)
      {
        v8 = ((v17 & ((v19 - (a2[1] >> 6)) >> 63)) + v19 - (a2[1] >> 6)) ^ v17;
      }

      v6 = a1;
      sub_18E72AD58();
LABEL_5:
      sub_18E72AD98();
    }

    if (v18 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_18E72AD58();
}

uint64_t sub_18E6985E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x193AD1300](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = *(v10 + 32 + 8 * v11);
            v13 = *a4;
            sub_18E72B888();

            v14 = sub_18E72AFA8();
            MEMORY[0x193AD1DF0](v14);
            result = sub_18E72B8E8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_18E72AD38())
            {
              while (1)
              {
                v15 = sub_18E72AD78();
                if ((v16 & 1) == 0 && v15 == v11)
                {
                  break;
                }

                sub_18E72AD98();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_18E72AD88();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_18E72AD38();
      v23 = sub_18E72AD78();
      if ((v24 & 1) != 0 || v23 >= v8)
      {
LABEL_33:
        result = sub_18E72AD98();
LABEL_18:
        v17 = a4[1];
        if (__OFSUB__(v17 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v18 = 1 << *a4;
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v19)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v21 = (v20 & (((v17 >> 6) - v5) >> 63)) + (v17 >> 6) - v5;
        if (v21 < v20)
        {
          v20 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v21 - v20) << 6);
        return result;
      }

      if (!__OFADD__(v23, v5))
      {
        sub_18E72AD88();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_18E72AD38();
      v25 = sub_18E72AD78();
      if ((v26 & 1) == 0 && v25 >= v4)
      {
        v19 = __OFSUB__(v25, v5);
        result = v25 - v5;
        if (v19)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_18E72AD88();
      }

      return sub_18E72AD98();
    }

    v4 = a2;
    v22 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x193AD1300](*a4 & 0x3F);
    if (v22 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v27 = *(a3 + 32 + 8 * v4);
        v28 = *a4;
        sub_18E72B888();

        v29 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v29);
        result = sub_18E72B8E8();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_18E72AD38())
        {
          while (1)
          {
            v30 = sub_18E72AD78();
            if ((v31 & 1) == 0 && v30 == v4)
            {
              break;
            }

            sub_18E72AD98();
          }
        }

        sub_18E72AD88();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t sub_18E698A3C(uint64_t a1)
{
  v3 = *(v1 + 64);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + 64);
    }

    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    v3 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);
    v13 = *(v1 + 64);

    v8 = 0;
  }

  v20 = 0;
  v14 = (v7 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_18E72B548() || (type metadata accessor for AnyGestureNode(), swift_dynamicCast(), (v17 = v21) == 0))
    {
LABEL_22:
      sub_18E687EE8();
      return v20 & 1;
    }

LABEL_19:
    if (v17 == a1)
    {
    }

    else
    {
      v18 = sub_18E698C4C(*(v19 + 112), v17);

      v20 |= v18;
    }
  }

  v15 = v8;
  v16 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v16 - 1) & v16;
    v17 = *(*(v3 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v14)
    {
      goto LABEL_22;
    }

    v16 = *(v6 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E698C4C(uint64_t a1, uint64_t a2)
{
  if (v2 == a2)
  {
    v40 = 0;
    return v40 & 1;
  }

  v3 = v2;
  v51[0] = 2;
  LOBYTE(v52) = 2;
  result = sub_18E69917C(a2, v51, &v52);
  v49 = 0;
  v6 = 0;
  v7 = result + 56;
  v50 = result;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_11:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = (*(v50 + 48) + 3 * (v13 | (v6 << 6)));
    if (*v14 == 2)
    {
      v15 = v14[1];
      v16 = v14[2];
      v17 = (*(*a2 + 168))(v51);
      if ((v51[0] & 4) != 0)
      {
        goto LABEL_21;
      }

      v18 = (*(*v3 + 168))(v51, v17);
      if ((v51[0] & 4) != 0)
      {
        goto LABEL_21;
      }

      result = (*(*a2 + 192))(v18);
      if (result)
      {
        v43 = v19;
        v45 = result;
        v46 = (*(*v3 + 192))();
        if (v46)
        {
          v42 = v20;
          ObjectType = swift_getObjectType();
          if (v45 == v46 || (v41 = ObjectType, v22 = swift_getObjectType(), ((*(v43 + 16))(v46, v42, v3, v22) & 1) != 0))
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_21;
          }

          v44 = (*(v42 + 16))(v45, v43, a2, v41);
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (v44)
          {
LABEL_21:
            v51[0] = 2;
            v51[1] = v15;
            v51[2] = v16;
            result = (*(*v3 + 288))(&v52, v51, a2);
            if (v52 != 2 && (v52 & 1) == 0)
            {
              v51[0] = 2;
              v51[1] = v15;
              v51[2] = v16;
              result = sub_18E69C160(v51, a2);
              if ((result & 1) == 0)
              {
                v23 = v15 == 0;
                if (v15)
                {
                  v24 = a2;
                }

                else
                {
                  v24 = v3;
                }

                if (v23)
                {
                  v25 = a2;
                }

                else
                {
                  v25 = v3;
                }

                v26 = *(a1 + 16);
                v47 = *(a1 + 24);
                v27 = *(v26 + 16);

                if (!v27)
                {
                  goto LABEL_38;
                }

                v28 = sub_18E6879CC(v24);
                if ((v29 & 1) == 0)
                {
                  goto LABEL_37;
                }

                v30 = *(*(v26 + 56) + 8 * v28);
                if ((v30 & 0xC000000000000001) != 0)
                {
                  if (v30 < 0)
                  {
                    v31 = *(*(v26 + 56) + 8 * v28);
                  }

                  v32 = sub_18E72B558();

                  if (v32)
                  {
                  }

                  else
                  {
LABEL_38:
                    v33 = sub_18E69C730(v25, v24);

                    if (v33)
                    {
                      v49 = 1;
                    }
                  }
                }

                else
                {
                  if (!*(v30 + 16))
                  {
LABEL_37:

                    goto LABEL_38;
                  }

                  v34 = *(v30 + 40);
                  sub_18E72B888();

                  v35 = sub_18E72AFA8();
                  MEMORY[0x193AD1DF0](v35);
                  v36 = sub_18E72B8E8();
                  v37 = -1 << *(v30 + 32);
                  v38 = v36 & ~v37;
                  if (((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                  {
LABEL_47:

                    goto LABEL_38;
                  }

                  v39 = ~v37;
                  while (*(*(v30 + 48) + 8 * v38) != v25)
                  {
                    v38 = (v38 + 1) & v39;
                    if (((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                    {
                      goto LABEL_47;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          result = swift_unknownObjectRelease();
        }
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v40 = v49;
      return v40 & 1;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E69917C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v120[3] = *MEMORY[0x1E69E9840];
  v4 = v3[21];
  v5 = *(v4 + 16);
  if (!v5)
  {
    v21 = MEMORY[0x1E69E7CD0];
    goto LABEL_100;
  }

  v6 = *a2;
  v7 = *a3;
  v8 = v3[19];
  v9 = v3[20];
  v116 = a1;
  v118 = v4 + 32;
  v119 = v9 + 32;
  v117 = v6;
  v10 = v6 == 3;
  if (v7 != 2)
  {
    v10 = 0;
  }

  v114 = v7 != 2;
  v115 = v10;

  v110 = v8;
  v11 = v116;

  v13 = 0;
  v108 = 0;
  v111 = v4;
  v112 = v9;
  while (1)
  {
    if (v13 >= *(v9 + 16))
    {
      goto LABEL_102;
    }

    if (v13 >= v5)
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
    }

    v17 = v119 + 24 * v13;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v118 + 8 * v13);
    if (v20 <= 1)
    {
      if (!v20)
      {
        v22 = *(v11 + 16);
        v12 = sub_18E67EEC4(v19, v18, 0);
        if (v22 == v19)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      v27 = *(v11 + 32);
      if (v27)
      {
        if (v19 != *(v11 + 24) || v18 != v27)
        {
          v29 = sub_18E72B7C8();
          sub_18E67EEC4(v19, v18, 1);

          v26 = sub_18E682A3C(v19, v18, 1);
          if ((v29 & 1) == 0)
          {
            goto LABEL_86;
          }

          goto LABEL_61;
        }

        sub_18E67EEC4(v19, v18, 1);

        v58 = v19;
        v59 = v18;
        v60 = 1;
        goto LABEL_49;
      }

      sub_18E67EEC4(v19, v18, 1);
      v14 = v19;
      v15 = v18;
      v16 = 1;
      goto LABEL_6;
    }

    if (v20 == 2)
    {
      v23 = *(v11 + 40);
      if (v23)
      {
        v120[0] = v19;
        v120[1] = v23;
        sub_18E67EEC4(v19, v18, 2);

        v24 = GestureTraitCollection.containsSubtraits(from:)(v120);

        if (v24)
        {
          if (v18)
          {
            if (v18 == 1)
            {
              v25 = _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(v11, v113);
              v26 = sub_18E682A3C(v19, v18, 2);
              if ((v25 & 1) == 0)
              {
                goto LABEL_86;
              }
            }

            else
            {

              v64 = _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(v63, v116);
              sub_18E682A3C(v19, v18, 2);
              v11 = v116;

              if ((v64 & 1) == 0)
              {
                goto LABEL_86;
              }
            }

            goto LABEL_61;
          }

          v58 = v19;
          v59 = v18;
          v60 = 2;
LABEL_49:
          v26 = sub_18E682A3C(v58, v59, v60);
          goto LABEL_61;
        }
      }

      else
      {
        sub_18E67EEC4(v19, v18, 2);
      }

      v14 = v19;
      v15 = v18;
      v16 = 2;
LABEL_6:
      v12 = sub_18E682A3C(v14, v15, v16);
      goto LABEL_7;
    }

    if (!v19)
    {
      sub_18E67EEC4(v19, v18, 3);
LABEL_37:

      goto LABEL_61;
    }

    if (v19 == 1)
    {
      break;
    }

    v43 = (*(*v113 + 192))(v12);
    if (v43)
    {
      v45 = v43;
      v109 = v44;
      v46 = v116;
      v47 = (*(*v116 + 192))();
      if (v47)
      {
        v49 = v47;
        v50 = v48;
        ObjectType = swift_getObjectType();
        v52 = ObjectType;
        v107 = v50;
        if (v45 == v49)
        {
          v104 = ObjectType;
          v53 = swift_getObjectType();
          v54 = v109;
          v105 = *(v109 + 8);
          v106 = v53;
          sub_18E67EEC4(v19, v18, 3);

          v56 = (v105)(v55, v106, v54);
          if (v57)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_88;
          }

          v91 = v56;
          v92 = (*(v107 + 8))(v116, v104);
          v96 = v95;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          if (v96)
          {
            goto LABEL_88;
          }

LABEL_90:
          v97 = v91 < v92;
          v4 = v111;
          v9 = v112;
          v11 = v116;
          if (!v97)
          {
LABEL_86:

            goto LABEL_7;
          }
        }

        else
        {
          v106 = *(v50 + 24);
          sub_18E67EEC4(v19, v18, 3);

          v89 = v113;

          v90 = v106(v45, v109, v89, v52, v107);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v4 = v111;
          v9 = v112;
          v11 = v116;
          if ((v90 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_61;
      }

      LODWORD(v109) = v7;
      sub_18E67EEC4(v19, v18, 3);

      v62 = swift_unknownObjectRelease();
      v4 = v111;
    }

    else
    {
      LODWORD(v109) = v7;
      sub_18E67EEC4(v19, v18, 3);
      v46 = v116;
    }

    v9 = v112;
    v65 = (*(*v46 + 192))(v62);

    if (v65)
    {
      v26 = swift_unknownObjectRelease();
      v7 = v109;
      goto LABEL_61;
    }

    v11 = v116;
    v7 = v109;
LABEL_7:
    ++v13;
    v5 = *(v4 + 16);
    if (v13 >= v5)
    {

      v21 = MEMORY[0x1E69E7CD0];
      goto LABEL_99;
    }
  }

  v30 = (*(*v11 + 192))(v12);
  if (!v30)
  {
    sub_18E67EEC4(v19, v18, 3);

LABEL_53:
    v9 = v112;
    if ((*(*v113 + 192))(v61))
    {
      v26 = swift_unknownObjectRelease();
      goto LABEL_61;
    }

    v11 = v116;
    goto LABEL_7;
  }

  v32 = v30;
  v109 = v31;
  v33 = (*(*v113 + 192))();
  if (!v33)
  {
    sub_18E67EEC4(v19, v18, 3);

    v61 = swift_unknownObjectRelease();
    v4 = v111;
    goto LABEL_53;
  }

  v35 = v33;
  v36 = v34;
  v37 = swift_getObjectType();
  v38 = v37;
  if (v32 == v35)
  {
    v104 = v37;
    v105 = v36;
    v39 = swift_getObjectType();
    v40 = v109;
    v106 = *(v109 + 8);
    v107 = v39;
    sub_18E67EEC4(v19, v18, 3);

    v41 = (v106)(v116, v107, v40);
    if (v42)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_88:

      v4 = v111;
      v9 = v112;
      v11 = v116;
      goto LABEL_7;
    }

    v91 = v41;
    v92 = (*(v105 + 8))(v113, v104);
    v94 = v93;
    swift_unknownObjectRelease();
    v26 = swift_unknownObjectRelease();
    if (v94)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  v107 = *(v36 + 24);
  sub_18E67EEC4(v19, v18, 3);

  v11 = v116;
  v66 = (v107)(v32, v109, v116, v38, v36);
  swift_unknownObjectRelease();
  v26 = swift_unknownObjectRelease();
  v4 = v111;
  v9 = v112;
  if ((v66 & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_61:
  if (v115)
  {
    goto LABEL_98;
  }

  v67 = MEMORY[0x1EEE9AC00](v26);
  v103[16] = v117;
  v103[17] = v7;
  v68 = *(v21 + 32);
  v69 = ((1 << v68) + 63) >> 6;
  if ((v68 & 0x3Fu) <= 0xD)
  {
    goto LABEL_63;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    v4 = v111;
    v9 = v112;
LABEL_63:
    MEMORY[0x1EEE9AC00](v67);
    v71 = &v103[-((v70 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v71, v70);
    v72 = 0;
    v73 = 0;
    v74 = 1 << *(v21 + 32);
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    else
    {
      v75 = -1;
    }

    v76 = v75 & *(v21 + 56);
    v77 = (v74 + 63) >> 6;
    v78 = v114;
    v79 = v117;
    while (1)
    {
      if (v76)
      {
        v80 = __clz(__rbit64(v76));
        v76 &= v76 - 1;
        v81 = v80 | (v73 << 6);
        goto LABEL_75;
      }

      v82 = v73;
      do
      {
        v73 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        if (v73 >= v77)
        {
          v88 = sub_18E699C28(v71, v69, v72, v21);
          goto LABEL_83;
        }

        v83 = *(v21 + 56 + 8 * v73);
        ++v82;
      }

      while (!v83);
      v76 = (v83 - 1) & v83;
      v81 = __clz(__rbit64(v83)) | (v73 << 6);
LABEL_75:
      v84 = (*(v21 + 48) + 3 * v81);
      v85 = v84[1];
      if (v79 != 3)
      {
        v86 = *v84;
        if (v86 == 3 || v86 != v79)
        {
          continue;
        }
      }

      if ((v78 & (v85 ^ v7) & 1) == 0)
      {
        *&v71[(v81 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v81;
        if (__OFADD__(v72++, 1))
        {
          goto LABEL_104;
        }
      }
    }
  }

  v98 = swift_slowAlloc();

  v99 = v108;
  v100 = sub_18E725B20(v98, v69, v21, sub_18E72A860);
  v108 = v99;
  swift_bridgeObjectRelease_n();
  MEMORY[0x193AD25C0](v98, -1, -1);
  v88 = v100;
  v4 = v111;
  v9 = v112;
LABEL_83:
  v11 = v116;
  if (!*(v88 + 16))
  {

    goto LABEL_7;
  }

  v21 = v88;
LABEL_98:

LABEL_99:

LABEL_100:
  v101 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t sub_18E699C28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA20, &qword_18E72C8D8);
  result = sub_18E72B5A8();
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
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 3 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = *(v9 + 40);
    sub_18E72B888();
    MEMORY[0x193AD1DF0](v17);
    MEMORY[0x193AD1DF0](v18);
    sub_18E72B8A8();
    if (v19 != 2)
    {
      MEMORY[0x193AD1DF0](v19 & 1);
    }

    result = sub_18E72B8E8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 3 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v4 = v31;
    v10 = v32;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v32 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_18E699EC8(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRetain();
      v9 = [v8 *a2];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRelease();
  return v9;
}

char *sub_18E69A038@<X0>(char *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = result[2];
  if (v5 == 2)
  {
    v7 = *result;
    v8 = result[1];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v3 + 192);
      ObjectType = swift_getObjectType();
      v12 = v7;
      v11 = v8;
      (*(v9 + 40))(v3, &v12, &v11, a2, ObjectType, v9);
      return swift_unknownObjectRelease();
    }

    LOBYTE(v5) = 2;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_18E69A0FC@<X0>(unsigned __int8 *a1@<X1>, unsigned __int8 *a2@<X2>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v16 = 2;
LABEL_21:
    *a3 = v16;
    return result;
  }

  v8 = result;
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    v16 = 2;
    goto LABEL_20;
  }

  v10 = 2;
  if (v6)
  {
    v10 = 3;
  }

  v11 = 4;
  if (v6)
  {
    v11 = 5;
  }

  if (v5 != 1)
  {
    v10 = v11;
  }

  if (v5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v13 = [v8 gestureNode:v3 roleForRelationType:v12 relatedNode:Strong];
  if (!v13)
  {
    swift_unknownObjectRelease();
    v16 = 2;
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 integerValue];
  if (!v15)
  {
    swift_unknownObjectRelease();

    v16 = 0;
LABEL_20:
    result = swift_unknownObjectRelease();
    goto LABEL_21;
  }

  if (v15 == 1)
  {
    swift_unknownObjectRelease();

    v16 = 1;
    goto LABEL_20;
  }

  v17 = v15;
  sub_18E72B5C8();

  v18 = GFGestureRelationRole.description.getter(v17);
  MEMORY[0x193AD15C0](v18);

  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t sub_18E69A2B4(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v9 = v8 * v8;
  if ((v8 * v8) >> 64 != (v8 * v8) >> 63)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v10 = v9 + 63;
  if (__OFADD__(v9, 63))
  {
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    swift_once();
    goto LABEL_59;
  }

  v11 = v9 + 126;
  if (v10 >= 0)
  {
    v11 = v9 + 63;
  }

  if (v10 < -63)
  {
    goto LABEL_193;
  }

  v6 = a2;
  v5 = a1;
  if (v10 < 64)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_10:
    v4 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v12 = v11 >> 6;
  v13 = sub_18E72B1F8();
  *(v13 + 16) = v12;
  bzero((v13 + 32), 8 * v12);
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = sub_18E72B1F8();
  v7[2] = v8;
  bzero(v7 + 4, 8 * v8);
  v4 = sub_18E72B1F8();
  *(v4 + 16) = v8;
  bzero((v4 + 32), 8 * v8);
LABEL_11:
  v96 = v8;
  v97 = v8 * v8;
  v98 = v13;
  v99 = v7;
  v100 = v4;
  v101 = 0;

  v93 = v6;
  if (!v8)
  {
    v81 = 0;
    goto LABEL_58;
  }

  v14 = 0;
  v81 = 0;
  v82 = v5;
  v83 = v6 + 32;
  v15 = v7;
  v16 = v4;
  while (2)
  {
    v87 = v14;
    v88 = v15;
    v17 = *(v83 + 8 * v14);
    v84 = v14 + 1;

    v18 = 0;
    v15 = v7;
    v19 = v4;
    while (2)
    {
      v85 = v19;
      v86 = v15;
      v7 = (v98 + 32);
      v5 = v18 + 4;
      while (1)
      {
        v6 = v5 - 4;
        if (v5 - 4 >= v8)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v18 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_153;
        }

        v4 = *(v93 + 8 * v5);

        if (sub_18E69ACF8(v17, a3, a4))
        {
          if (*(v88 + 16) != v8)
          {
            goto LABEL_156;
          }

          if (*(v16 + 16) != v8)
          {
            goto LABEL_157;
          }

          v20 = v6 * v8;
          if ((v6 * v8) >> 64 != (v6 * v8) >> 63)
          {
            goto LABEL_158;
          }

          v21 = v20 + v87;
          if (__OFADD__(v20, v87))
          {
            goto LABEL_159;
          }

          if (v21 >= 0)
          {
            v22 = v20 + v87;
          }

          else
          {
            v22 = v21 + 63;
          }

          v23 = v21 - (v22 & 0xC0);
          if ((v21 - (v22 & 0xFFFFFFFFFFFFFFC0)) < 0)
          {
            goto LABEL_160;
          }

          if (v21 < -63)
          {
            goto LABEL_161;
          }

          v24 = v22 >> 6;
          if (v24 >= *(v98 + 16))
          {
            goto LABEL_162;
          }

          if ((v7[v24] & (1 << v23)) == 0)
          {
            break;
          }
        }

        ++v5;
        if (v18 == v8)
        {
          v19 = v16;
          v15 = v88;
          v4 = v85;
          v7 = v86;
          goto LABEL_55;
        }
      }

      sub_18E69E83C(1, v21);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v25 = v16;
      }

      else
      {
        v25 = sub_18E6F0724(v16);
      }

      v15 = v88;
      if (v6 >= *(v25 + 2))
      {
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v26 = *&v25[8 * v5];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
        goto LABEL_186;
      }

      *&v25[8 * v5] = v28;
      v16 = v25;
      v100 = v25;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_18E6F0724(v88);
        v15 = result;
      }

      v30 = v15[2];
      if (v87 >= v30)
      {
        goto LABEL_185;
      }

      v31 = v15 + 4;
      v32 = v15[v87 + 4];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v31[v87] = v33;
      v99 = v15;
      if (v6 >= v30)
      {
        goto LABEL_187;
      }

      if (v15[v5])
      {
        v34 = v16;
      }

      else
      {
        if (v6 >= *(v16 + 16))
        {
          goto LABEL_194;
        }

        v34 = v16;
        if (*(v16 + 8 * v5) == 1)
        {
          v35 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_198;
          }

          ++v81;
          v101 = v35;
        }
      }

      if (v31[v87] == 1)
      {
        if (v87 < *(v34 + 16))
        {
          v36 = *(v34 + 32 + 8 * v87);

          if (v36 > 0)
          {
            v37 = v81 - 1;
            if (__OFSUB__(v81, 1))
            {
              goto LABEL_195;
            }

            --v81;
            v101 = v37;
          }

          goto LABEL_51;
        }

LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

LABEL_51:
      v88 = v15;
      v19 = v16;
      v4 = v16;
      v7 = v15;
      if (v18 != v8)
      {
        continue;
      }

      break;
    }

LABEL_55:
    v16 = v19;

    v6 = v93;

    v5 = v82;

    v14 = v84;
    if (v84 != v8)
    {
      continue;
    }

    break;
  }

LABEL_58:

  if (qword_1ED6F7F10 != -1)
  {
    goto LABEL_196;
  }

LABEL_59:
  v38 = qword_1ED6F9340;
  v39 = sub_18E72B3E8();
  result = os_log_type_enabled(v38, v39);
  if (result)
  {
    result = sub_18E69B7D8(v5, v6, v8, v98, v7, v4);
  }

  v40 = v81;
  if (!v81)
  {
LABEL_138:
    if (v8)
    {
      v4 = v6 + 32;
      v5 = v8 - 2;
      v6 += 8 * v8 + 16;
      do
      {
        v77 = v8--;
        if (v77 <= v96)
        {
          if (v77 > *(v99 + 2))
          {
            goto LABEL_155;
          }

          if (*&v99[8 * v8 + 32] > 0)
          {
            if (!v8)
            {
              break;
            }

            v78 = v6;
            v79 = v5;
            do
            {
              if (sub_18E69F810(v8, v79))
              {
                v80 = *v78;
                sub_18E69E93C(*(v4 + 8 * v8));
                sub_18E69FABC(v79, 1);
              }

              --v79;
              --v78;
            }

            while (v79 != -1);
          }
        }

        --v5;
        v6 -= 8;
      }

      while (v8);
    }
  }

  v90 = v6 + 32;
  v5 = MEMORY[0x1E69E7CD0];
  v7 = &qword_18E72E030;
  while (1)
  {
    v81 = v40;
    if (v8)
    {
      break;
    }

LABEL_137:
    v40 = v101;
    v6 = v93;
    if (v81 == v101)
    {
      goto LABEL_138;
    }
  }

  v4 = 0;
  while (2)
  {
    if (v4 >= v96)
    {
LABEL_69:
      v6 = 0;
      v92 = v4;
      while (1)
      {
        v41 = v99;
        v42 = *(v99 + 2);
        if (v42 != v96)
        {
          goto LABEL_168;
        }

        v43 = v100;
        if (*(v100 + 16) != v42)
        {
          goto LABEL_169;
        }

        v44 = v4 * v42;
        if ((v4 * v42) >> 64 != (v4 * v42) >> 63)
        {
          goto LABEL_170;
        }

        v45 = v44 + v6;
        if (__OFADD__(v44, v6))
        {
          goto LABEL_171;
        }

        if (v45 >= 0)
        {
          v46 = v44 + v6;
        }

        else
        {
          v46 = v45 + 63;
        }

        v47 = v45 - (v46 & 0xC0);
        if ((v45 - (v46 & 0xFFFFFFFFFFFFFFC0)) < 0)
        {
          goto LABEL_172;
        }

        if (v45 < -63)
        {
          goto LABEL_173;
        }

        v48 = v46 >> 6;
        if (v48 >= *(v98 + 16))
        {
          goto LABEL_174;
        }

        if ((*(v98 + 8 * v48 + 32) & (1 << v47)) != 0)
        {
          break;
        }

LABEL_71:
        if (++v6 == v8)
        {
          goto LABEL_65;
        }
      }

      sub_18E69E83C(0, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_18E6F0724(v43);
      }

      if (v4 >= *(v43 + 2))
      {
        goto LABEL_175;
      }

      v49 = v43 + 32;
      v50 = *&v43[8 * v4 + 32];
      v27 = __OFSUB__(v50, 1);
      v51 = v50 - 1;
      if (v27)
      {
        goto LABEL_176;
      }

      *&v49[8 * v4] = v51;
      v100 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_18E6F0724(v41);
      }

      v52 = *(v41 + 2);
      if (v6 >= v52)
      {
        goto LABEL_177;
      }

      v53 = v41 + 32;
      v54 = *&v41[8 * v6 + 32];
      v27 = __OFSUB__(v54, 1);
      v55 = v54 - 1;
      if (v27)
      {
        goto LABEL_178;
      }

      *&v53[8 * v6] = v55;
      v99 = v41;
      if (v4 >= v52)
      {
        goto LABEL_179;
      }

      if (*&v53[8 * v4])
      {
        goto LABEL_95;
      }

      if (v4 >= *(v43 + 2))
      {
        goto LABEL_181;
      }

      if (*&v49[8 * v4])
      {
LABEL_95:
        if (v55)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (__OFSUB__(v101, 1))
        {
          goto LABEL_190;
        }

        --v101;
        if (v55)
        {
LABEL_102:
          v56 = *(v90 + 8 * v6);
          sub_18E69E93C(*(v90 + 8 * v4));
          v57 = v98;
          v95 = v5;
          if (v42)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5D0, &qword_18E72E030);
            v58 = swift_allocObject();
            v59 = _swift_stdlib_malloc_size(v58);
            v60 = 0;
            v61 = v59 - 32;
            if (v59 < 32)
            {
              v61 = v59 - 25;
            }

            v58[2] = v42;
            v58[3] = 2 * (v61 >> 3);
            while (1)
            {
              v58[v60 + 4] = v60;
              if (v42 - 1 == v60)
              {
                break;
              }

              if (__OFADD__(++v60, 1))
              {
                goto LABEL_154;
              }
            }
          }

          else
          {
            v58 = MEMORY[0x1E69E7CC0];
          }

          v4 = v58[2];
          if (v4)
          {
            v62 = v6 * v42;
            v63 = (v6 * v42) >> 64 != (v6 * v42) >> 63;
            v7 = (v57 + 32);
            v5 = 32;
            do
            {
              v64 = *(v58 + v5);
              if (v64 != v6)
              {
                if (v63)
                {
                  goto LABEL_163;
                }

                v65 = v62 + v64;
                if (__OFADD__(v62, v64))
                {
                  goto LABEL_164;
                }

                if (v65 >= 0)
                {
                  v66 = v62 + v64;
                }

                else
                {
                  v66 = v65 + 63;
                }

                if ((v65 - (v66 & 0xFFFFFFFFFFFFFFC0)) < 0)
                {
                  goto LABEL_165;
                }

                if (v65 < -63)
                {
                  goto LABEL_166;
                }

                if (v66 >> 6 >= *(v57 + 16))
                {
                  goto LABEL_167;
                }

                if ((v7[v66 >> 6] & (1 << (v65 - (v66 & 0xC0u)))) != 0)
                {
                  sub_18E69FF50(&v94, v64);
                }
              }

              v5 += 8;
              --v4;
            }

            while (v4);

            v67 = v95;
            v5 = MEMORY[0x1E69E7CD0];
            v7 = &qword_18E72E030;
            v68 = *(v95 + 16);
            if (v68)
            {
LABEL_126:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5D0, &qword_18E72E030);
              v69 = swift_allocObject();
              v70 = _swift_stdlib_malloc_size(v69);
              v71 = v70 - 32;
              if (v70 < 32)
              {
                v71 = v70 - 25;
              }

              v69[2] = v68;
              v69[3] = 2 * (v71 >> 3);
              v72 = sub_18E6A0340(&v94, v69 + 4, v68, v67);
              sub_18E687EE8();
              if (v72 != v68)
              {
                goto LABEL_180;
              }

              v73 = v69[2];
              if (!v73)
              {
                goto LABEL_70;
              }

              goto LABEL_133;
            }
          }

          else
          {

            v67 = v5;
            v68 = *(v5 + 16);
            if (v68)
            {
              goto LABEL_126;
            }
          }

          v69 = MEMORY[0x1E69E7CC0];
          v73 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v73)
          {
LABEL_70:

            v4 = v92;
            goto LABEL_71;
          }

LABEL_133:
          v74 = v69 + 4;
          do
          {
            v76 = *v74++;
            v75 = v76;
            if (v6 != v76)
            {
              sub_18E69F810(v6, v75);
            }

            --v73;
          }

          while (v73);
          goto LABEL_70;
        }
      }

      if (v6 >= *(v43 + 2))
      {
        goto LABEL_182;
      }

      if (*&v49[8 * v6] >= 1)
      {
        if (__OFADD__(v101, 1))
        {
          goto LABEL_188;
        }

        ++v101;
      }

      goto LABEL_102;
    }

    if (v4 < *(v99 + 2))
    {
      if (*&v99[8 * v4 + 32] <= 0)
      {
        goto LABEL_69;
      }

LABEL_65:
      if (++v4 == v8)
      {
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_18E69ACF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3 == a1)
  {
    goto LABEL_34;
  }

  v4 = v3;
  v7 = &v61;
  v8 = (*(*v3 + 304))(&v61);
  v9 = v62;
  if (v62 == 255)
  {
    v7 = &v63;
    (*(*v4 + 296))(&v63, v8);
    v9 = v64;
  }

  sub_18E69E818(*v7, v9);
  if (v9 > 2)
  {
    goto LABEL_34;
  }

  v10 = *(v4 + 22);
  v11 = *(a1 + 176);

  v13 = sub_18E69B23C(v12, v10);

  v14 = v13[2];

  if (!v14)
  {
    goto LABEL_34;
  }

  v16 = (*a1 + 296);
  v17 = *v16;
  v18 = v16;
  v19 = (*v16)(&v63, v15);
  if (v64 == 1 || (sub_18E69E818(v63, v64), v19 = (v17)(&v61), v62 == 2))
  {
    (*(*v4 + 168))(&v63, v19);
    if ((v63 & 2) != 0 && sub_18E68B020(v4))
    {
      goto LABEL_10;
    }

    if (a3)
    {
      sub_18E69D38C(a3 + 24, v4[4], *(a1 + 16), &v63);
      if (v63 != 2)
      {
        if ((v63 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v20 = sub_18E69D400(a1, v4, 1);
      v21 = v4[4];
      v22 = *(a1 + 16);
      v23 = *(a3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *(a3 + 24);
      v25 = v63;
      *(a3 + 24) = 0x8000000000000000;
      v27 = sub_18E68EA90(v21);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
      }

      else
      {
        v18 = v26;
        if (*(v25 + 24) < v30)
        {
          sub_18E69D8D4(v30, isUniquelyReferenced_nonNull_native);
          v25 = v63;
          v31 = sub_18E68EA90(v21);
          if ((v18 & 1) == (v32 & 1))
          {
            v27 = v31;
            goto LABEL_31;
          }

          goto LABEL_47;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_31:
          v46 = *(a3 + 24);
          *(a3 + 24) = v25;

          v47 = *(a3 + 24);
          if ((v18 & 1) == 0)
          {
            v48 = sub_18E69DBD0(MEMORY[0x1E69E7CC0]);
            sub_18E69DCB0(v27, v21, v48, v47);
          }

          v49 = v47[7];
          v50 = *(v49 + 8 * v27);
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v63 = *(v49 + 8 * v27);
          *(v49 + 8 * v27) = 0x8000000000000000;
          sub_18E69DCF4(v20 & 1, v22, v51);
          v52 = *(v49 + 8 * v27);
          *(v49 + 8 * v27) = v63;

          if ((v20 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_29:
          v33 = 1;
          return v33 & 1;
        }
      }

      sub_18E68EDFC();
      v25 = v63;
      goto LABEL_31;
    }

    v33 = 1;
    if ((sub_18E69D400(a1, v4, 1) & 1) == 0)
    {
      goto LABEL_34;
    }

    return v33 & 1;
  }

  sub_18E69E818(v61, v62);
  if (sub_18E69D0A4(v4, a1))
  {
    goto LABEL_34;
  }

  (*(*v4 + 168))(&v63);
  if ((v63 & 2) != 0 && sub_18E68B020(v4))
  {
LABEL_10:

LABEL_34:
    v33 = 0;
    return v33 & 1;
  }

  if (a3)
  {
    sub_18E69D38C(a3 + 16, v4[4], *(a1 + 16), &v63);
    v33 = v63;
    if (v63 != 2)
    {
      return v33 & 1;
    }

    v33 = sub_18E69D400(a1, v4, 0);
    v34 = v4[4];
    v35 = *(a1 + 16);
    v36 = *(a3 + 16);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(a3 + 16);
    v38 = v63;
    *(a3 + 16) = 0x8000000000000000;
    v40 = sub_18E68EA90(v34);
    v41 = *(v38 + 16);
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      __break(1u);
    }

    else
    {
      v18 = v39;
      if (*(v38 + 24) < v43)
      {
        sub_18E69D8D4(v43, v37);
        v38 = v63;
        v44 = sub_18E68EA90(v34);
        if ((v18 & 1) != (v45 & 1))
        {
LABEL_47:
          result = sub_18E72B818();
          __break(1u);
          return result;
        }

        v40 = v44;
LABEL_40:
        v54 = *(a3 + 16);
        *(a3 + 16) = v38;

        v55 = *(a3 + 16);
        if ((v18 & 1) == 0)
        {
          v56 = sub_18E69DBD0(MEMORY[0x1E69E7CC0]);
          sub_18E69DCB0(v40, v34, v56, v55);
        }

        v57 = v55[7];
        v58 = *(v57 + 8 * v40);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v57 + 8 * v40);
        *(v57 + 8 * v40) = 0x8000000000000000;
        sub_18E69DCF4(v33 & 1, v35, v59);
        v60 = *(v57 + 8 * v40);
        *(v57 + 8 * v40) = v63;

        return v33 & 1;
      }

      if (v37)
      {
        goto LABEL_40;
      }
    }

    sub_18E68EDFC();
    v38 = v63;
    goto LABEL_40;
  }

  return sub_18E69D400(a1, v4, 0);
}