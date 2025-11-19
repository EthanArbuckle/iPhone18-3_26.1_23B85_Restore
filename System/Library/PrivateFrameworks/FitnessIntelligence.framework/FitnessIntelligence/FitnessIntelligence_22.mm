unint64_t sub_1B4B7F020(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v24 = a2 + 64;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for FitnessContextQueryDescriptor() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      v4 = v24;
      if (((*(v24 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_1B4B7F24C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v10);
      result = sub_1B4D18EDC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for WorkoutState() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

void sub_1B4B7F41C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1B4D1879C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

unint64_t sub_1B4B7F5A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48) + 56 * v6;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v13 = *v10;
      v32 = *(v10 + 48);
      v31[1] = v12;
      v31[2] = v11;
      v31[0] = v13;
      v14 = *(v10 + 16);
      v29[8] = *v10;
      v29[9] = v14;
      v29[10] = *(v10 + 32);
      v30 = *(v10 + 48);
      sub_1B4D18E8C();
      sub_1B498B0D4(v31, v29);
      WorkoutPropertyDimensions.hash(into:)();
      v15 = sub_1B4D18EDC();
      result = sub_1B498AD54(v31);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = v17 + 56 * v3;
        v19 = (v17 + 56 * v6);
        if (v3 != v6 || v18 >= v19 + 56)
        {
          v20 = *v19;
          v21 = v19[1];
          v22 = v19[2];
          *(v18 + 48) = *(v19 + 6);
          *(v18 + 16) = v21;
          *(v18 + 32) = v22;
          *v18 = v20;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_18;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_18:
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B4B7F7BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 3 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      sub_1B4D18E8C();
      sub_1B4D18EAC();
      if (v11 != 12)
      {
        sub_1B4D1820C();
      }

      if (v12 == 7)
      {
        sub_1B4D18EAC();
        if (v13 != 2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1B4D18EAC();
        sub_1B4D1820C();

        if (v13 != 2)
        {
LABEL_11:
          sub_1B4D18EAC();
        }
      }

      sub_1B4D18EAC();
      result = sub_1B4D18EDC();
      v14 = result & v7;
      if (v3 >= v8)
      {
        v4 = v25;
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v25;
        if (v14 >= v8)
        {
          goto LABEL_17;
        }
      }

      if (v3 >= v14)
      {
LABEL_17:
        v15 = *(a2 + 48);
        v16 = v15 + 3 * v3;
        v17 = (v15 + 3 * v6);
        if (v3 != v6 || v16 >= v17 + 3)
        {
          v18 = *v17;
          *(v16 + 2) = *(v17 + 2);
          *v16 = v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B4B7FC18(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B4D18E8C();

      sub_1B4D1820C();
      v13 = sub_1B4D18EDC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for WorkoutMetadata() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t (*sub_1B4B7FE04(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6[8] = sub_1B4B805BC(v6);
  v6[9] = sub_1B4B80054(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B4B81258;
}

uint64_t (*sub_1B4B7FEA8(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6[8] = sub_1B4B805BC(v6);
  v6[9] = sub_1B4B8024C(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B4B81258;
}

uint64_t (*sub_1B4B7FF4C(uint64_t *a1, int a2))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6[8] = sub_1B4B805E4(v6);
  v6[9] = sub_1B4B80454((v6 + 4), a2 & 0xFFFFFF, isUniquelyReferenced_nonNull_native);
  return sub_1B4B7FFF0;
}

void sub_1B4B7FFF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B4B80054(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1B49E9DFC(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B4989F38();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B4986BA4(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_1B49E9DFC(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1B4B29E60();
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_1B4B8019C;
}

void sub_1B4B8019C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_1B4BA408C(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_1B4B7F41C(v6, v7);
  }

  v10 = *v1;

  free(v1);
}

void (*sub_1B4B8024C(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 64) = a2;
  *(v8 + 72) = v3;
  v10 = *v3;
  v11 = sub_1B49EA514(a2);
  *(v9 + 88) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B4989F4C();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B4986BB8(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_1B49EA514(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 80) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *(v9 + 56) = v22;
  return sub_1B4B80394;
}

void sub_1B4B80394(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 88);
  if (v2)
  {
    v4 = *(v1 + 80);
    v5 = **(v1 + 72);
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = *(v1 + 64);
      sub_1B4BA40D0(v4, v8, v2, v5);
      sub_1B498B0D4(v8, v1);
    }
  }

  else if (*(*a1 + 88))
  {
    v6 = *(v1 + 80);
    v7 = **(v1 + 72);
    sub_1B498AD54(*(v7 + 48) + 56 * v6);
    sub_1B4B7F5A8(v6, v7);
  }

  v9 = *(v1 + 56);

  free(v1);
}

unint64_t (*sub_1B4B80454(uint64_t a1, int a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1B49EA598(a2 & 0xFFFFFF);
  *(a1 + 28) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B498A0FC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B4986EEC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1B49EA598(a2 & 0xFFFFFF);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_1B4B80570;
}

unint64_t sub_1B4B80570(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 28);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 28))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1B4BA4130(*(result + 16), *(result + 24) & 0xFFFFFF, v1, v3);
    }
  }

  else if (*(result + 28))
  {
    return sub_1B4B7F7BC(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_1B4B805BC(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B4B81250;
}

uint64_t (*sub_1B4B805E4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B4B8060C;
}

unint64_t sub_1B4B80618(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for WorkoutRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  result = sub_1B4C95A10(MEMORY[0x1E69E7CC0]);
  v54 = result;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v45 = v3;
  v48 = *(v6 + 80);
  v14 = *(v6 + 72);
  v50 = (v48 + 32) & ~v48;
  v15 = a1 + v50;
  v47 = xmmword_1B4D1A800;
  v49 = v14;
  while (1)
  {
    sub_1B4B81124(v15, v11, type metadata accessor for WorkoutRecord);
    v18 = v51(v11);
    v19 = v18;
    v20 = v54;
    if (v54[2])
    {
      sub_1B49E9DFC(v18);
      if (v21)
      {
        v23 = sub_1B4B7E70C(v53, v19);
        if (*v22)
        {
          v24 = v22;
          sub_1B4B81124(v11, v46, type metadata accessor for WorkoutRecord);
          v25 = *v24;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v24 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_1B4A1D454(0, v25[2] + 1, 1, v25);
            *v24 = v25;
          }

          v28 = v25[2];
          v27 = v25[3];
          if (v28 >= v27 >> 1)
          {
            v25 = sub_1B4A1D454(v27 > 1, v28 + 1, 1, v25);
            *v24 = v25;
          }

          v25[2] = v28 + 1;
          v29 = v25 + v50;
          v14 = v49;
          sub_1B4B811EC(v46, &v29[v28 * v49]);
        }

        (v23)(v53, 0);

        sub_1B4B8118C(v11, type metadata accessor for WorkoutRecord);
        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C08, &qword_1B4D200A8);
    v30 = v50;
    v31 = swift_allocObject();
    *(v31 + 16) = v47;
    sub_1B4B81124(v11, v31 + v30, type metadata accessor for WorkoutRecord);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v20;
    v34 = sub_1B49E9DFC(v19);
    v35 = v20[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (v20[3] >= v37)
    {
      if (v32)
      {
        v41 = v53[0];
        if ((v33 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1B4989F38();
        v41 = v53[0];
        if ((v38 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1B4986BA4(v37, v32);
      v39 = sub_1B49E9DFC(v19);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_30;
      }

      v34 = v39;
      v41 = v53[0];
      if ((v38 & 1) == 0)
      {
LABEL_22:
        v41[(v34 >> 6) + 8] |= 1 << v34;
        *(v41[6] + 8 * v34) = v19;
        *(v41[7] + 8 * v34) = v31;
        sub_1B4B8118C(v11, type metadata accessor for WorkoutRecord);
        v42 = v41[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_29;
        }

        v41[2] = v44;
        goto LABEL_4;
      }
    }

    v16 = v41[7];
    v17 = *(v16 + 8 * v34);
    *(v16 + 8 * v34) = v31;

    sub_1B4B8118C(v11, type metadata accessor for WorkoutRecord);
LABEL_4:
    v54 = v41;
    v14 = v49;
LABEL_5:
    v15 += v14;
    if (!--v13)
    {
      return v54;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  sub_1B4B29E60();
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

unint64_t sub_1B4B80A54(uint64_t a1, void (*a2)(_OWORD *__return_ptr, _BYTE *))
{
  result = sub_1B4C95C90(MEMORY[0x1E69E7CC0]);
  v47 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return result;
  }

  for (i = a1 + 32; ; i += 64)
  {
    sub_1B4B6F2FC(i, v46);
    a2(v44, v46);
    v8 = v44[0];
    v9 = BYTE1(v44[0]);
    v10 = BYTE2(v44[0]);
    v11 = v47;
    v12 = LOBYTE(v44[0]) | (BYTE1(v44[0]) << 8);
    v13 = v12 | (BYTE2(v44[0]) << 16);
    if (v47[2])
    {
      sub_1B49EA598(v12 | (BYTE2(v44[0]) << 16));
      if (v14)
      {
        v16 = sub_1B4B7E7FC(v45, v13);
        if (*v15)
        {
          v17 = v15;
          sub_1B4B6F2FC(v46, v44);
          v18 = *v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v17 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_1B4A1DC00(0, *(v18 + 2) + 1, 1, v18);
            *v17 = v18;
          }

          v21 = *(v18 + 2);
          v20 = *(v18 + 3);
          if (v21 >= v20 >> 1)
          {
            v18 = sub_1B4A1DC00((v20 > 1), v21 + 1, 1, v18);
            *v17 = v18;
          }

          *(v18 + 2) = v21 + 1;
          v22 = &v18[64 * v21];
          v23 = v44[0];
          v24 = v44[1];
          v25 = v44[3];
          *(v22 + 4) = v44[2];
          *(v22 + 5) = v25;
          *(v22 + 2) = v23;
          *(v22 + 3) = v24;
        }

        (v16)(v45, 0);
        sub_1B4B6F358(v46);
        goto LABEL_5;
      }
    }

    v41 = v10;
    v43 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C50, &qword_1B4D20100);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B4D1A800;
    sub_1B4B6F2FC(v46, v26 + 32);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v44[0] = v11;
    v29 = sub_1B49EA598(v13);
    v30 = v11[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v11[3] >= v32)
    {
      if (v27)
      {
        v36 = *&v44[0];
        if ((v28 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1B498A0FC();
        v36 = *&v44[0];
        if ((v33 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1B4986EEC(v32, v27);
      v34 = sub_1B49EA598(v13);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_30;
      }

      v29 = v34;
      v36 = *&v44[0];
      if ((v33 & 1) == 0)
      {
LABEL_22:
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v37 = (v36[6] + 3 * v29);
        *v37 = v8;
        v37[1] = v9;
        v37[2] = v41;
        *(v36[7] + 8 * v29) = v26;
        sub_1B4B6F358(v46);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_29;
        }

        v36[2] = v40;
        goto LABEL_4;
      }
    }

    v6 = v36[7];
    v7 = *(v6 + 8 * v29);
    *(v6 + 8 * v29) = v26;

    sub_1B4B6F358(v46);
LABEL_4:
    v47 = v36;
    v4 = v43;
LABEL_5:
    if (!--v4)
    {
      return v47;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

unint64_t sub_1B4B80D88(uint64_t a1, void (*a2)(__int128 *__return_ptr, _BYTE *), uint64_t a3)
{
  result = sub_1B4C95B30(MEMORY[0x1E69E7CC0]);
  v53 = result;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return result;
  }

  v8 = a1 + 32;
  v58 = a3;
  while (1)
  {
    sub_1B498ADFC(v8, v52);
    a2(&v44, v52);
    v54 = v44;
    v55 = v45;
    v56 = v46;
    v57 = v47;
    v11 = v53;
    if (v53[2])
    {
      sub_1B49EA514(&v54);
      if (v12)
      {
        v14 = sub_1B4B7E784(v51, &v54);
        if (*v13)
        {
          v15 = v13;
          sub_1B498ADFC(v52, &v44);
          v16 = *v15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v15 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_1B4A1DD0C(0, *(v16 + 2) + 1, 1, v16);
            *v15 = v16;
          }

          v19 = *(v16 + 2);
          v18 = *(v16 + 3);
          if (v19 >= v18 >> 1)
          {
            v16 = sub_1B4A1DD0C((v18 > 1), v19 + 1, 1, v16);
            *v15 = v16;
          }

          *(v16 + 2) = v19 + 1;
          v20 = &v16[112 * v19];
          v21 = v44;
          v22 = v46;
          *(v20 + 3) = v45;
          *(v20 + 4) = v22;
          *(v20 + 2) = v21;
          v23 = v47;
          v24 = v48;
          v25 = v50;
          *(v20 + 7) = v49;
          *(v20 + 8) = v25;
          *(v20 + 5) = v23;
          *(v20 + 6) = v24;
          (v14)(v51, 0);
          sub_1B498AD54(&v54);
          sub_1B498AE58(v52);
        }

        else
        {
          (v14)(v51, 0);
          sub_1B498AD54(&v54);
          sub_1B498AE58(v52);
        }

        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B4D1A800;
    sub_1B498ADFC(v52, v26 + 32);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v44 = v11;
    v28 = sub_1B49EA514(&v54);
    v30 = v11[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v11[3] < v33)
    {
      sub_1B4986BB8(v33, v27);
      v28 = sub_1B49EA514(&v54);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      v36 = v44;
      if ((v34 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    if (v27)
    {
      goto LABEL_19;
    }

    v43 = v28;
    sub_1B4989F4C();
    v28 = v43;
    v36 = v44;
    if ((v34 & 1) == 0)
    {
LABEL_20:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = v36[6] + 56 * v28;
      v38 = v54;
      v39 = v55;
      v40 = v56;
      *(v37 + 48) = v57;
      *(v37 + 16) = v39;
      *(v37 + 32) = v40;
      *v37 = v38;
      *(v36[7] + 8 * v28) = v26;
      sub_1B498AE58(v52);
      v41 = v36[2];
      v32 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v36[2] = v42;
      goto LABEL_4;
    }

LABEL_3:
    v9 = v36[7];
    v10 = *(v9 + 8 * v28);
    *(v9 + 8 * v28) = v26;

    sub_1B498AD54(&v54);
    sub_1B498AE58(v52);
LABEL_4:
    v53 = v36;
LABEL_5:
    v8 += 112;
    if (!--v7)
    {
      return v53;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4B81124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B8118C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B811EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudioSynthesisVoiceAsset.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(&a1[*(v14 + 28)], v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v16 = &v13[*(v9 + 20)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = &v13[*(v9 + 24)];
    *v17 = 0;
    *(v17 + 1) = 0;
    if (v15(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4B82130(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  v18 = &v13[*(v9 + 20)];
  v19 = *(v18 + 1);
  if (!v19)
  {
    v27 = 0;
LABEL_11:
    sub_1B498C3D8();
    swift_allocError();
    *v28 = v27;
    swift_willThrow();
    sub_1B4B821EC(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    return sub_1B4B821EC(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  }

  v20 = &v13[*(v9 + 24)];
  v21 = *(v20 + 1);
  if (!v21)
  {
    v27 = 1;
    goto LABEL_11;
  }

  v22 = *v18;
  v23 = *v20;
  v24 = *(v18 + 1);

  sub_1B4B821EC(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v25 = *a1;
  sub_1B4B81578(a1, &v31);
  result = sub_1B4B821EC(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  if (v2)
  {
  }

  else
  {
    v29 = v32;
    v30 = v33;
    *a2 = v22;
    *(a2 + 8) = v19;
    *(a2 + 16) = v23;
    *(a2 + 24) = v21;
    *(a2 + 32) = v25;
    *(a2 + 40) = v31;
    *(a2 + 56) = v29;
    *(a2 + 57) = v30;
  }

  return result;
}

void sub_1B4B81578(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v36 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v32 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  if (*(a1 + 16) != 1)
  {
    sub_1B4B82198();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v21 = *(a1 + 8);
  if (!v21)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
LABEL_9:
    *(a2 + 16) = 256;
    return;
  }

  if (v21 != 1)
  {
    *a2 = xmmword_1B4D35370;
    goto LABEL_9;
  }

  v35 = a2;
  v34 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  sub_1B4974FBC(a1 + v34, v20, &qword_1EB8A8788, &qword_1B4D22448);
  v33 = *(v5 + 48);
  v22 = v33(v20, 1, v4);
  sub_1B4975024(v20, &qword_1EB8A8788, &qword_1B4D22448);
  if (v22 == 1)
  {
    v23 = v35;
    *v35 = 0;
    v23[1] = 0;
    *(v23 + 8) = 1;
  }

  else
  {
    v24 = v34;
    sub_1B4974FBC(a1 + v34, v17, &qword_1EB8A8788, &qword_1B4D22448);
    v25 = v33;
    if (v33(v17, 1, v4) == 1)
    {
      *v10 = 0;
      v10[1] = 0;
      v26 = v10 + *(v4 + 24);
      sub_1B4D17BBC();
      if (v25(v17, 1, v4) != 1)
      {
        sub_1B4975024(v17, &qword_1EB8A8788, &qword_1B4D22448);
      }
    }

    else
    {
      sub_1B4B82130(v17, v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    }

    v27 = *v10;
    sub_1B4B821EC(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    sub_1B4974FBC(a1 + v24, v14, &qword_1EB8A8788, &qword_1B4D22448);
    if (v25(v14, 1, v4) == 1)
    {
      v28 = v36;
      *v36 = 0;
      v28[1] = 0;
      v29 = v28 + *(v4 + 24);
      sub_1B4D17BBC();
      if (v25(v14, 1, v4) != 1)
      {
        sub_1B4975024(v14, &qword_1EB8A8788, &qword_1B4D22448);
      }
    }

    else
    {
      v28 = v36;
      sub_1B4B82130(v14, v36, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    }

    v30 = v28[1];
    sub_1B4B821EC(v28, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    v31 = v35;
    *v35 = v27;
    v31[1] = v30;
    *(v31 + 8) = 0;
  }
}

uint64_t AudioSynthesisVoiceAsset.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[10] = *(v0 + 42);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4B820E8(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B81A54(uint64_t a1, __int128 *a2)
{
  v28 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v24 = *(v28 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v25 = *a2;
  v26 = v12;
  v27 = v13;
  sub_1B4B820E8(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17DAC();
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v15 = *(v14 + 28);
  sub_1B4975024(a1 + v15, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4B82130(v11, a1 + v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  result = (*(v8 + 56))(a1 + v15, 0, 1, v7);
  *a1 = *(a2 + 32);
  v17 = *(a2 + 5);
  v18 = *(a2 + 56);
  if (*(a2 + 57) == 1)
  {
    if (*(a2 + 40) != 0 || *(a2 + 56))
    {
      *(a1 + 8) = 2;
    }

    else
    {
      *(a1 + 8) = 0;
    }

    *(a1 + 16) = 1;
  }

  else
  {
    *(a1 + 8) = 1;
    *(a1 + 16) = 1;
    if ((v18 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v23 - 2) = v19;
      *(&v23 - 1) = v20;
      sub_1B4B820E8(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
      v21 = v28;
      sub_1B4D17DAC();
      v22 = *(v14 + 32);
      sub_1B4975024(a1 + v22, &qword_1EB8A8788, &qword_1B4D22448);
      sub_1B4B82130(v6, a1 + v22, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
      return (*(v24 + 56))(a1 + v22, 0, 1, v21);
    }
  }

  return result;
}

_OWORD *sub_1B4B81DC0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  v13[0] = v1[2];
  *(v13 + 10) = *(v1 + 42);
  v9 = sub_1B4B5B384();
  v10 = v12;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4B820E8(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    v10 = sub_1B4D17D6C();
    sub_1B4B821EC(v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  }

  return v10;
}

double sub_1B4B81F18@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B24718(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    a3[2] = v8[0];
    result = *(v8 + 10);
    *(a3 + 42) = *(v8 + 10);
  }

  return result;
}

uint64_t sub_1B4B81F64()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[10] = *(v0 + 42);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4B820E8(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B820E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4B82130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4B82198()
{
  result = qword_1EB8AB6E0;
  if (!qword_1EB8AB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB6E0);
  }

  return result;
}

uint64_t sub_1B4B821EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4B82260()
{
  result = qword_1EB8AB6E8;
  if (!qword_1EB8AB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB6E8);
  }

  return result;
}

uint64_t WorkoutMetricsFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4B8234C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B823C0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B82414@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t WorkoutMetricsFact.SubTemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutMetricsFact.SubTemplateString.rawValue.getter()
{
  v1 = 0xD000000000000029;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000033;
    v7 = 0xD000000000000044;
    if (v2 != 10)
    {
      v7 = 0xD000000000000041;
    }

    if (v2 == 9)
    {
      v7 = 0xD000000000000033;
    }

    if (v2 == 7)
    {
      v6 = 0xD000000000000027;
    }

    if (v2 != 6)
    {
      v1 = v6;
    }

    if (*v0 <= 8u)
    {
      result = v1;
    }

    else
    {
      result = v7;
    }

    *v0;
  }

  else
  {
    v3 = 0xD000000000000031;
    if (v2 != 4)
    {
      v3 = 0xD000000000000029;
    }

    if (v2 == 3)
    {
      v3 = 0xD000000000000029;
    }

    v4 = 0xD00000000000002ELL;
    if (v2 == 1)
    {
      v4 = 0xD00000000000002CLL;
    }

    if (!*v0)
    {
      v4 = 0xD000000000000025;
    }

    if (*v0 <= 2u)
    {
      result = v4;
    }

    else
    {
      result = v3;
    }

    *v0;
  }

  return result;
}

uint64_t sub_1B4B8264C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  v4 = v3;
  if (v2 == WorkoutMetricsFact.SubTemplateString.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4B826E8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B82750()
{
  v2 = *v0;
  WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4B827B4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B82818@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutMetricsFact.SubTemplateString.init(rawValue:)(a1);
}

unint64_t sub_1B4B82824@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall WorkoutMetricsFact.separator()()
{
  v0 = 10;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t WorkoutMetricsFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutMetricsFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D35480;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B4B82EF4;
  *(v7 + 24) = v6;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000001B4D62340;
  *(v4 + 48) = sub_1B4AF87E4;
  *(v4 + 56) = v7;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  *(v4 + 80) = 0xD000000000000012;
  *(v4 + 88) = 0x80000001B4D62360;
  *(v4 + 96) = sub_1B4B8310C;
  *(v4 + 104) = v8;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  *(v4 + 128) = 0xD000000000000017;
  *(v4 + 136) = 0x80000001B4D622E0;
  *(v4 + 144) = sub_1B4B83364;
  *(v4 + 152) = v9;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v5);
  *(v4 + 176) = 0xD000000000000018;
  *(v4 + 184) = 0x80000001B4D62380;
  *(v4 + 192) = sub_1B4B835D8;
  *(v4 + 200) = v10;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v5);
  *(v4 + 224) = 0xD000000000000017;
  *(v4 + 232) = 0x80000001B4D62660;
  *(v4 + 240) = sub_1B4B83864;
  *(v4 + 248) = v11;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v5);
  *(v4 + 272) = 0xD000000000000017;
  *(v4 + 280) = 0x80000001B4D62680;
  *(v4 + 288) = sub_1B4B8387C;
  *(v4 + 296) = v12;
  *(v4 + 304) = 0;
  *(v4 + 312) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v5);
  *(v4 + 320) = 0xD000000000000016;
  *(v4 + 328) = 0x80000001B4D626A0;
  *(v4 + 336) = sub_1B4B83F44;
  *(v4 + 344) = v13;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v5);
  *(v4 + 368) = 0xD00000000000001CLL;
  *(v4 + 376) = 0x80000001B4D626C0;
  *(v4 + 384) = sub_1B4B841C4;
  *(v4 + 392) = v14;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v5);
  *(v4 + 416) = 0xD00000000000001CLL;
  *(v4 + 424) = 0x80000001B4D626E0;
  *(v4 + 432) = sub_1B4B84444;
  *(v4 + 440) = v15;
  *(v4 + 448) = 0;
  *(v4 + 456) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v5);
  *(v4 + 464) = 0xD000000000000010;
  *(v4 + 472) = 0x80000001B4D62700;
  *(v4 + 480) = sub_1B4B84918;
  *(v4 + 488) = v16;
  *(v4 + 496) = 0;
  *(v4 + 504) = 0;
  return v4;
}

uint64_t sub_1B4B82D34(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for WorkoutMetricsFact() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  v4 = *(sub_1B4D18F8C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v8 = sub_1B4BCA7BC(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9 = sub_1B4D15F5C(a2 + v3, v8);

  return v9;
}

uint64_t sub_1B4B82E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetricsFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B82F0C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = type metadata accessor for WorkoutMetricsFact();
  sub_1B4974FBC(a2 + *(v12 + 20), v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    if (*(a2 + *(v12 + 60)))
    {
      v14 = 2;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    v16 = sub_1B4D133E8(v11, *a2, v14, v15);
    (*(v8 + 8))(v11, v7);
    return v16;
  }
}

uint64_t sub_1B4B83124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for WorkoutMetricsFact();
  sub_1B4974FBC(a2 + *(v16 + 36), v7, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v18 = *(a1 + 16);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v19);
    v21 = v20;
    sub_1B4D1745C();
    v22 = sub_1B4D12160();
    v23 = sub_1B4D12A28();

    v24 = *(v9 + 8);
    v24(v12, v8);
    v24(v15, v8);
    return v23;
  }
}

uint64_t sub_1B4B8337C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for WorkoutMetricsFact();
  sub_1B4974FBC(a2 + *(v16 + 40), v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v18 = *(a1 + 16);
    FIUnitManager.userMeasurementUnitForElevation()(v19);
    v21 = v20;
    sub_1B4D1745C();
    v22 = sub_1B4D12160();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v23 = sub_1B4D1878C();

    v24 = *(v9 + 8);
    v24(v12, v8);
    v24(v15, v8);
    return v23;
  }
}

uint64_t sub_1B4B835F0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for WorkoutMetricsFact();
  sub_1B4974FBC(a2 + *(v15 + 44), v6, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v17 = sub_1B4D12160();
    v18 = [objc_opt_self() watts];
    sub_1B4D1745C();

    sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
    v19 = sub_1B4D1878C();

    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v14, v7);
    return v19;
  }
}

uint64_t sub_1B4B8387C(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutMetricsFact() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1B4B838E0(a1);
}

uint64_t sub_1B4B838E0(uint64_t a1)
{
  v31 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB748, &unk_1B4D35710);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  v21 = *(type metadata accessor for WorkoutMetricsFact() + 24);
  v30 = v1;
  sub_1B4974FBC(v1 + v21, v13, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1B4975024(v13, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    v22 = 1;
  }

  else
  {
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    v23 = *(v6 + 8);
    v23(v9, v5);
    v24 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v23(v13, v5);
    v22 = 0;
  }

  v25 = v32;
  (*(v2 + 56))(v20, v22, 1, v32);
  sub_1B4974FBC(v20, v17, &qword_1EB8AB748, &unk_1B4D35710);
  if ((*(v2 + 48))(v17, 1, v25) == 1)
  {
    sub_1B4975024(v20, &qword_1EB8AB748, &unk_1B4D35710);
    sub_1B4975024(v17, &qword_1EB8AB748, &unk_1B4D35710);
    return 0;
  }

  else
  {
    v27 = v29;
    (*(v2 + 32))(v29, v17, v25);
    v28 = sub_1B4D13D94(v27, *v30, 1);
    (*(v2 + 8))(v27, v25);
    sub_1B4975024(v20, &qword_1EB8AB748, &unk_1B4D35710);
    return v28;
  }
}

uint64_t sub_1B4B83D6C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for WorkoutMetricsFact();
  sub_1B4974FBC(a2 + *(v12 + 24), v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_1B4D13AE8(v11, *a2, 2);
    (*(v8 + 8))(v11, v7);
    return v14;
  }
}

uint64_t sub_1B4B83F5C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for WorkoutMetricsFact();
  sub_1B4974FBC(a2 + *(v15 + 48), v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v17 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    v18 = sub_1B4D14174(v11);

    v19 = *(v8 + 8);
    v19(v11, v7);
    v19(v14, v7);
    return v18;
  }
}

uint64_t sub_1B4B841DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for WorkoutMetricsFact();
  sub_1B4974FBC(a2 + *(v15 + 52), v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v17 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    v18 = sub_1B4D14174(v11);

    v19 = *(v8 + 8);
    v19(v11, v7);
    v19(v14, v7);
    return v18;
  }
}

uint64_t sub_1B4B8445C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutMetricsFact();
  result = 0;
  v5 = (a2 + *(v3 + 56));
  if ((v5[1] & 1) == 0)
  {
    v6 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E63B0];
    *(v7 + 16) = xmmword_1B4D1A800;
    v9 = MEMORY[0x1E69E6438];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = v6;
    return sub_1B4D1819C();
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for WorkoutMetricsFact();
  v2 = *(*(v1 - 1) + 80);
  v26 = *(*(v1 - 1) + 64);
  v27 = (v2 + 16) & ~v2;
  v28 = v0;
  v3 = v0 + v27;

  v4 = v1[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v27 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  v13 = v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v3 + v13, v14);
  }

  v16 = v1[10];
  if (!v7(v3 + v16, 1, v5))
  {
    (*(v6 + 8))(v3 + v16, v5);
  }

  v17 = v1[11];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v3 + v17, v18);
  }

  v20 = v1[12];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (!v23(v3 + v20, 1, v21))
  {
    (*(v22 + 8))(v3 + v20, v21);
  }

  v24 = v1[13];
  if (!v23(v3 + v24, 1, v21))
  {
    (*(v22 + 8))(v3 + v24, v21);
  }

  return MEMORY[0x1EEE6BDD0](v28, v27 + v26, v2 | 7);
}

uint64_t sub_1B4B84930(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutMetricsFact() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

char *sub_1B4B849FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v150 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v159 = &v137 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v151 = *(v6 - 8);
  v152 = v6;
  v7 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v143 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v137 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v163 = &v137 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v157 = *(v14 - 8);
  v158 = v14;
  v15 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v146 = &v137 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v155 = &v137 - v19;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v156 = *(v162 - 8);
  v20 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v145 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v137 - v24;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v154 = *(v148 - 8);
  v26 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v144 = &v137 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v140 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v139 = &v137 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v141 = &v137 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v149 = &v137 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v137 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v160 = *(v40 - 8);
  v41 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v138 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v147 = &v137 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v137 - v46;
  v165 = type metadata accessor for WorkoutMetricsFact();
  v48 = *(v0 + v165[8]);
  v49 = sub_1B4A1E8EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v51 = *(v49 + 2);
  v50 = *(v49 + 3);
  v52 = (v48 & 1) == 0;
  if (v51 >= v50 >> 1)
  {
    v49 = sub_1B4A1E8EC((v50 > 1), v51 + 1, 1, v49);
  }

  *(v49 + 2) = v51 + 1;
  v164 = v49;
  v49[v51 + 32] = v52;
  v53 = v0;
  sub_1B4974FBC(v0 + v165[5], v39, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v54 = v160;
  v153 = *(v160 + 48);
  v55 = v153(v39, 1, v40);
  v56 = v162;
  if (v55 == 1)
  {
    sub_1B4975024(v39, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_7:
    v58 = v155;
    v59 = v148;
    goto LABEL_8;
  }

  (*(v54 + 32))(v47, v39, v40);
  sub_1B4D1742C();
  if (v57 == 0.0)
  {
    (*(v54 + 8))(v47, v40);
    goto LABEL_7;
  }

  v68 = *(v164 + 2);
  v67 = *(v164 + 3);
  v58 = v155;
  v59 = v148;
  v137 = v68 + 1;
  if (v68 >= v67 >> 1)
  {
    v164 = sub_1B4A1E8EC((v67 > 1), v68 + 1, 1, v164);
  }

  (*(v160 + 8))(v47, v40);
  v69 = v164;
  *(v164 + 2) = v137;
  v69[v68 + 32] = 2;
LABEL_8:
  v60 = v165;
  sub_1B4974FBC(v53 + v165[9], v25, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v61 = v154;
  if ((*(v154 + 48))(v25, 1, v59) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v62 = v159;
    v63 = v163;
  }

  else
  {
    v64 = v58;
    v65 = v144;
    (*(v61 + 32))(v144, v25, v59);
    sub_1B4D1742C();
    if (v66 == 0.0)
    {
      (*(v61 + 8))(v65, v59);
      v62 = v159;
      v63 = v163;
      v58 = v64;
    }

    else
    {
      v71 = *(v164 + 2);
      v70 = *(v164 + 3);
      v62 = v159;
      if (v71 >= v70 >> 1)
      {
        v164 = sub_1B4A1E8EC((v70 > 1), v71 + 1, 1, v164);
      }

      v58 = v64;
      (*(v154 + 8))(v144, v59);
      v72 = v164;
      *(v164 + 2) = v71 + 1;
      v72[v71 + 32] = 3;
      v60 = v165;
      v63 = v163;
    }

    v56 = v162;
  }

  v73 = v149;
  sub_1B4974FBC(v53 + v60[10], v149, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v74 = v153(v73, 1, v40);
  v161 = v53;
  if (v74 == 1)
  {
    v75 = v151;
    sub_1B4975024(v73, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    goto LABEL_30;
  }

  v76 = v160;
  v77 = v147;
  v78 = v73;
  v79 = *(v160 + 32);
  v79(v147, v78, v40);
  sub_1B4D1742C();
  if (v80 == 0.0)
  {
    v75 = v151;
    (*(v76 + 8))(v77, v40);
LABEL_23:
    v62 = v159;
    v56 = v162;
    v63 = v163;
    goto LABEL_30;
  }

  v149 = v79;
  v154 = *(v76 + 56);
  v81 = v141;
  (v154)(v141, 1, 1, v40);
  [*v53 effectiveTypeIdentifier];
  v82 = [objc_opt_self() feet];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v83 = v139;
  sub_1B4D1741C();
  sub_1B4975024(v81, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  (v154)(v83, 0, 1, v40);
  sub_1B4B016F8(v83, v81);
  v84 = v140;
  sub_1B4974FBC(v81, v140, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v153(v84, 1, v40) == 1)
  {
    sub_1B4975024(v81, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    (*(v76 + 8))(v147, v40);
    sub_1B4975024(v84, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v75 = v151;
    v62 = v159;
    v60 = v165;
    v56 = v162;
    v63 = v163;
    v58 = v155;
  }

  else
  {
    v85 = v138;
    (v149)(v138, v84, v40);
    v86 = v85;
    sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
    v87 = v147;
    v88 = sub_1B4D1810C();
    v75 = v151;
    v60 = v165;
    v58 = v155;
    if ((v88 & 1) == 0)
    {
      v136 = *(v160 + 8);
      v136(v86, v40);
      sub_1B4975024(v81, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v136(v87, v40);
      goto LABEL_23;
    }

    v90 = *(v164 + 2);
    v89 = *(v164 + 3);
    v62 = v159;
    v91 = v160;
    v56 = v162;
    if (v90 >= v89 >> 1)
    {
      v164 = sub_1B4A1E8EC((v89 > 1), v90 + 1, 1, v164);
    }

    v92 = *(v91 + 8);
    v92(v138, v40);
    sub_1B4975024(v141, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v92(v147, v40);
    v93 = v164;
    *(v164 + 2) = v90 + 1;
    v93[v90 + 32] = 4;
    v60 = v165;
    v63 = v163;
  }

LABEL_30:
  sub_1B4974FBC(v161 + v60[11], v58, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v94 = v156;
  v95 = (*(v156 + 48))(v58, 1, v56);
  v96 = v152;
  v97 = v158;
  if (v95 == 1)
  {
    sub_1B4975024(v58, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
LABEL_34:
    v100 = v75;
    goto LABEL_35;
  }

  v98 = v145;
  (*(v94 + 32))(v145, v58, v56);
  sub_1B4D1742C();
  if (v99 == 0.0)
  {
    (*(v94 + 8))(v98, v56);
    v63 = v163;
    goto LABEL_34;
  }

  v107 = *(v164 + 2);
  v106 = *(v164 + 3);
  if (v107 >= v106 >> 1)
  {
    v164 = sub_1B4A1E8EC((v106 > 1), v107 + 1, 1, v164);
  }

  v100 = v75;
  (*(v156 + 8))(v145, v56);
  v108 = v164;
  *(v164 + 2) = v107 + 1;
  v108[v107 + 32] = 5;
  v97 = v158;
  v63 = v163;
LABEL_35:
  v101 = v161;
  sub_1B4974FBC(v161 + v60[6], v63, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v102 = v157;
  if ((*(v157 + 48))(v63, 1, v97) == 1)
  {
    sub_1B4975024(v63, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  }

  else
  {
    v103 = v63;
    v104 = v146;
    (*(v102 + 32))(v146, v103, v97);
    sub_1B4D1742C();
    if (v105 == 0.0)
    {
      (*(v102 + 8))(v104, v97);
    }

    else
    {
      v109 = [*v101 effectiveTypeIdentifier];
      v111 = *(v164 + 2);
      v110 = *(v164 + 3);
      v112 = v110 >> 1;
      v113 = v111 + 1;
      if (v109 == 13)
      {
        if (v112 <= v111)
        {
          v164 = sub_1B4A1E8EC((v110 > 1), v111 + 1, 1, v164);
        }

        (*(v157 + 8))();
        v114 = v164;
        *(v164 + 2) = v113;
        v115 = &v114[v111];
        v116 = 6;
      }

      else
      {
        if (v112 <= v111)
        {
          v164 = sub_1B4A1E8EC((v110 > 1), v111 + 1, 1, v164);
        }

        (*(v157 + 8))();
        v117 = v164;
        *(v164 + 2) = v113;
        v115 = &v117[v111];
        v116 = 7;
      }

      v115[32] = v116;
    }
  }

  sub_1B4974FBC(v101 + v60[12], v62, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v118 = *(v100 + 48);
  if (v118(v62, 1, v96) == 1)
  {
    sub_1B4975024(v62, &qword_1EB8A6CC8, &unk_1B4D464B0);
  }

  else
  {
    v119 = v142;
    (*(v100 + 32))(v142, v62, v96);
    sub_1B4D1742C();
    if (v120 == 0.0)
    {
      (*(v100 + 8))(v119, v96);
    }

    else
    {
      v122 = *(v164 + 2);
      v121 = *(v164 + 3);
      if (v122 >= v121 >> 1)
      {
        v164 = sub_1B4A1E8EC((v121 > 1), v122 + 1, 1, v164);
      }

      (*(v100 + 8))(v119, v96);
      v123 = v164;
      *(v164 + 2) = v122 + 1;
      v123[v122 + 32] = 8;
    }
  }

  v124 = v150;
  sub_1B4974FBC(v101 + v165[13], v150, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v118(v124, 1, v96) == 1)
  {
    sub_1B4975024(v124, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_61:
    v127 = v164;
    goto LABEL_62;
  }

  v125 = v143;
  (*(v100 + 32))(v143, v124, v96);
  sub_1B4D1742C();
  if (v126 == 0.0)
  {
    (*(v100 + 8))(v125, v96);
    goto LABEL_61;
  }

  v135 = *(v164 + 2);
  v134 = *(v164 + 3);
  if (v135 >= v134 >> 1)
  {
    v164 = sub_1B4A1E8EC((v134 > 1), v135 + 1, 1, v164);
  }

  (*(v100 + 8))(v125, v96);
  v127 = v164;
  *(v164 + 2) = v135 + 1;
  v127[v135 + 32] = 9;
LABEL_62:
  v128 = (v101 + v165[14]);
  if ((v128[1] & 1) == 0)
  {
    if (*v128 >= 9.0)
    {
      v130 = *(v127 + 2);
      v129 = *(v127 + 3);
      v131 = v130 + 1;
      v132 = 10;
    }

    else
    {
      if (*v128 < 7.0)
      {
        return v127;
      }

      v130 = *(v127 + 2);
      v129 = *(v127 + 3);
      v131 = v130 + 1;
      v132 = 11;
    }

    if (v130 >= v129 >> 1)
    {
      v127 = sub_1B4A1E8EC((v129 > 1), v131, 1, v127);
    }

    *(v127 + 2) = v131;
    v127[v130 + 32] = v132;
  }

  return v127;
}

unint64_t sub_1B4B85C30()
{
  result = qword_1EB8AB6F0;
  if (!qword_1EB8AB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB6F0);
  }

  return result;
}

unint64_t sub_1B4B85CCC()
{
  result = qword_1EB8AB708;
  if (!qword_1EB8AB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB708);
  }

  return result;
}

unint64_t sub_1B4B85D68()
{
  result = qword_1EB8AB720;
  if (!qword_1EB8AB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB720);
  }

  return result;
}

unint64_t sub_1B4B85DC0()
{
  result = qword_1EB8AB728;
  if (!qword_1EB8AB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB728);
  }

  return result;
}

uint64_t sub_1B4B85E14(uint64_t a1)
{
  result = sub_1B4B85F4C(&qword_1EB8A6BC0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B85E5C()
{
  result = qword_1EB8AB730;
  if (!qword_1EB8AB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB730);
  }

  return result;
}

unint64_t sub_1B4B85EB4()
{
  result = qword_1EB8AB738;
  if (!qword_1EB8AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB738);
  }

  return result;
}

uint64_t sub_1B4B85F08(uint64_t a1)
{
  result = sub_1B4B85F4C(&qword_1EB8AB740);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B85F4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutMetricsFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B85FB0()
{
  v0 = sub_1B4D173DC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B4B861A8(&qword_1EB8A7770);
  v3 = sub_1B4D173BC();

  return v3;
}

uint64_t sub_1B4B86054(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B4D173AC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4B861A8(&qword_1EB8A7780);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

uint64_t sub_1B4B8611C(void *a1)
{
  a1[1] = sub_1B4B861A8(&qword_1EB8AB750);
  a1[2] = sub_1B4B861A8(&qword_1EB8A7780);
  result = sub_1B4B861A8(&qword_1EB8A7770);
  a1[3] = result;
  return result;
}

uint64_t sub_1B4B861A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D177CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B861F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LocationContext.country.getter()
{
  v1 = (v0 + *(type metadata accessor for LocationContext() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for LocationContext()
{
  result = qword_1EB8AB758;
  if (!qword_1EB8AB758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocationContext.locality.getter()
{
  v1 = (v0 + *(type metadata accessor for LocationContext() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LocationContext.name.getter()
{
  v1 = (v0 + *(type metadata accessor for LocationContext() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *LocationContext.init(location:country:locality:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B4B863EC(a1, a8);
  result = type metadata accessor for LocationContext();
  v16 = (a8 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  v18 = (a8 + result[7]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t sub_1B4B863EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4B86478()
{
  type metadata accessor for LocationCoordinate();
  if (v0 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t HKActivitySummaryRepresentable.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v145 = &v127[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v144 = &v127[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v127[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v127[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v127[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v140 = &v127[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v127[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v138 = &v127[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v127[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v136 = &v127[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v127[-v28];
  v29 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v129 = &v127[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = &unk_1B4D3CDE0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v127[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v127[-v39];
  v41 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v133 = a1;
  v42 = *(a1 + v41);
  swift_beginAccess();
  v132 = *(v42 + 2);
  v43 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(&v42[v43], v40, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v44 = *(v30 + 48);
  v130 = v29;
  LODWORD(v29) = (v44)(v40, 1, v29);
  sub_1B4975024(v40, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v45 = 0;
  v46 = 0;
  v131 = v29;
  if (v29 != 1)
  {
    v47 = v42;
    sub_1B4974FBC(&v42[v43], v37, &qword_1EB8AB768, &unk_1B4D3CDE0);
    v48 = v130;
    if ((v44)(v37, 1, v130) == 1)
    {
      v49 = v129;
      *v129 = 0;
      v49[1] = 0;
      v50 = v49 + *(v48 + 24);
      sub_1B4D17BBC();
      if ((v44)(v37, 1, v48) != 1)
      {
        sub_1B4975024(v37, &qword_1EB8AB768, &unk_1B4D3CDE0);
      }
    }

    else
    {
      v49 = v129;
      sub_1B4B88ED0(v37, v129);
    }

    v51 = *v49;
    v52 = v49[1];
    sub_1B4B88E70(v49, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    if (v52 < v51)
    {
      __break(1u);
LABEL_46:
      swift_once();
      goto LABEL_11;
    }

    v46 = v52;
    v45 = v51;
  }

  v129 = v46;
  v130 = v45;
  v53 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  v128 = v42[v53];
  v33 = v42;
  v54 = &v42[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal];
  swift_beginAccess();
  v47 = 0x1EDC36000uLL;
  v52 = 0x1EDC36000uLL;
  if (v54[8])
  {
    v55 = 1;
    v44 = v135;
    goto LABEL_12;
  }

  v56 = *v54;
  v44 = v135;
  if (qword_1EDC36DF0 != -1)
  {
    goto LABEL_46;
  }

LABEL_11:
  v57 = *(v52 + 3576);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v58 = v57;
  sub_1B4D1741C();
  v55 = 0;
LABEL_12:
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v60 = 1;
  (*(*(v59 - 8) + 56))(v44, v55, 1, v59);
  v61 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress];
  swift_beginAccess();
  if ((v61[8] & 1) == 0)
  {
    v62 = *v61;
    if (*(v47 + 3568) != -1)
    {
      swift_once();
    }

    v63 = *(v52 + 3576);
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v64 = v63;
    sub_1B4D1741C();
    v60 = 0;
  }

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v66 = 1;
  (*(*(v65 - 8) + 56))(v136, v60, 1, v65);
  v67 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal];
  swift_beginAccess();
  if ((v67[8] & 1) == 0)
  {
    v68 = *v67;
    v69 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v66 = 0;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v71 = 1;
  (*(*(v70 - 8) + 56))(v137, v66, 1, v70);
  v72 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress];
  swift_beginAccess();
  if ((v72[8] & 1) == 0)
  {
    v73 = *v72;
    v74 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v71 = 0;
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v76 = 1;
  (*(*(v75 - 8) + 56))(v138, v71, 1, v75);
  v77 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal];
  swift_beginAccess();
  if ((v77[8] & 1) == 0)
  {
    v78 = *v77;
    v79 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v76 = 0;
  }

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v81 = 1;
  (*(*(v80 - 8) + 56))(v139, v76, 1, v80);
  v82 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress];
  swift_beginAccess();
  if ((v82[8] & 1) == 0)
  {
    v83 = *v82;
    v84 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v81 = 0;
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v86 = 1;
  (*(*(v85 - 8) + 56))(v140, v81, 1, v85);
  v87 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal];
  swift_beginAccess();
  if ((v87[8] & 1) == 0)
  {
    v88 = *v87;
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v89 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v90 = v89;
    sub_1B4D1741C();
    v86 = 0;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v92 = 1;
  (*(*(v91 - 8) + 56))(v141, v86, 1, v91);
  v93 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress];
  swift_beginAccess();
  if ((v93[8] & 1) == 0)
  {
    v94 = *v93;
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v95 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v96 = v95;
    sub_1B4D1741C();
    v92 = 0;
  }

  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v98 = 1;
  (*(*(v97 - 8) + 56))(v142, v92, 1, v97);
  v99 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount];
  swift_beginAccess();
  if ((v99[8] & 1) == 0)
  {
    v100 = *v99;
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v101 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v102 = v101;
    sub_1B4D1741C();
    v98 = 0;
  }

  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v104 = 1;
  (*(*(v103 - 8) + 56))(v143, v98, 1, v103);
  v105 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount];
  swift_beginAccess();
  if ((v105[8] & 1) == 0)
  {
    v106 = *v105;
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v107 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v108 = v107;
    sub_1B4D1741C();
    v104 = 0;
  }

  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v110 = 1;
  (*(*(v109 - 8) + 56))(v144, v104, 1, v109);
  v111 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance];
  swift_beginAccess();
  if ((v111[8] & 1) == 0)
  {
    v112 = *v111;
    v113 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    v110 = 0;
  }

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v114 - 8) + 56))(v145, v110, 1, v114);
  v115 = &v33[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode];
  swift_beginAccess();
  v116 = 0;
  v117 = v115[4];
  if ((v117 & 1) == 0)
  {
    v116 = *v115;
  }

  v118 = v131 == 1;
  v119 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  v131 = v33[v119];
  sub_1B4B88E70(v133, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v120 = type metadata accessor for HKActivitySummaryRepresentable();
  v121 = v120[19];
  v122 = v134;
  v123 = v134 + v120[18];
  v124 = v129;
  v125 = v130;
  *v134 = v132;
  v122[1] = v125;
  v122[2] = v124;
  *(v122 + 24) = v118;
  *(v122 + 25) = v128;
  sub_1B498B270(v135, v122 + v120[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v136, v122 + v120[8], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v137, v122 + v120[9], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v138, v122 + v120[10], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v139, v122 + v120[11], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v140, v122 + v120[12], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v141, v122 + v120[13], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  sub_1B498B270(v142, v122 + v120[14], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  sub_1B498B270(v143, v122 + v120[15], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  sub_1B498B270(v144, v122 + v120[16], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  result = sub_1B498B270(v145, v122 + v120[17], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  *v123 = v116;
  v123[8] = v117;
  *(v122 + v121) = v131;
  return result;
}

uint64_t HKActivitySummaryRepresentable.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  sub_1B4B88FC4(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B87604(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v296 = &v268 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v284 = *(v7 - 8);
  v285 = v7;
  v8 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v293 = &v268 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v283 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v282 = &v268 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v281 = &v268 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v279 = &v268 - v18;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v292 = *(v295 - 8);
  v19 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v295);
  v290 = &v268 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v272 = &v268 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v271 = &v268 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v280 = &v268 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v278 = &v268 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v277 = &v268 - v31;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v287 = *(v291 - 8);
  v32 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v291);
  v270 = &v268 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v269 = &v268 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v275 = &v268 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v274 = &v268 - v40;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v288 = *(v286 - 8);
  v41 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v286);
  v276 = &v268 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v273 = &v268 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v48 = &v268 - v47;
  v49 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v299 = *(v49 - 8);
  v50 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v268 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = a2;
  v53 = *a2;
  v54 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v55 = *&v54[a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *&v54[a1];
  v298 = a1;
  v294 = v54;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = a1;
    v59 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v62 = sub_1B4C3D764(v57);

    *&v54[v58] = v62;
    v57 = v62;
  }

  v63 = swift_beginAccess();
  *(v57 + 16) = v53;
  v64 = v297;
  if ((v297[3] & 1) == 0)
  {
    v65 = *(v297 + 1);
    *&v66 = MEMORY[0x1EEE9AC00](v63);
    *(&v268 - 1) = v66;
    sub_1B4B88FC4(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    v67 = v289;
    sub_1B4D17DAC();
    v289 = v67;
    v68 = v298;
    v69 = v294;
    v70 = *&v294[v298];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v72 = *&v69[v68];
    if ((v71 & 1) == 0)
    {
      v73 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      v76 = sub_1B4C3D764(v72);

      *&v69[v68] = v76;
      v72 = v76;
    }

    sub_1B4B88ED0(v52, v48);
    (*(v299 + 56))(v48, 0, 1, v49);
    v77 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
    swift_beginAccess();
    sub_1B4B8900C(v48, v72 + v77);
    swift_endAccess();
    v64 = v297;
  }

  v78 = *(v64 + 25);
  v79 = v298;
  v80 = v294;
  v81 = *&v294[v298];
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *&v80[v79];
  if ((v82 & 1) == 0)
  {
    v84 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    swift_allocObject();
    v87 = sub_1B4C3D764(v83);

    *&v80[v79] = v87;
    v83 = v87;
  }

  v88 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  *(v83 + v88) = v78;
  v299 = type metadata accessor for HKActivitySummaryRepresentable();
  v89 = v274;
  sub_1B4974FBC(v64 + *(v299 + 28), v274, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v90 = v288;
  v91 = *(v288 + 48);
  v92 = v286;
  if (v91(v89, 1, v286) == 1)
  {
    sub_1B4975024(v89, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v93 = v276;
  }

  else
  {
    v94 = v273;
    (*(v90 + 32))();
    sub_1B4D1742C();
    v96 = v95;
    v97 = v298;
    v98 = v294;
    v99 = *&v294[v298];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v90 + 8))(v94, v92);
      v100 = *&v98[v97];
    }

    else
    {
      v101 = *&v98[v97];
      v102 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();

      v100 = sub_1B4C3D764(v105);

      (*(v288 + 8))(v273, v92);

      *&v98[v97] = v100;
    }

    v93 = v276;
    v106 = v100 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
    swift_beginAccess();
    *v106 = v96;
    *(v106 + 8) = 0;
    v92 = v286;
  }

  v107 = v275;
  sub_1B4974FBC(v64 + *(v299 + 32), v275, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v91(v107, 1, v92) == 1)
  {
    sub_1B4975024(v107, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v108 = v296;
    v109 = v287;
    v110 = v293;
  }

  else
  {
    v111 = v288;
    (*(v288 + 32))(v93, v107, v92);
    v112 = v93;
    sub_1B4D1742C();
    v114 = v113;
    v115 = v298;
    v116 = v294;
    v117 = *&v294[v298];
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v287;
    if (v118)
    {
      (*(v111 + 8))(v112, v92);
      v119 = *&v116[v115];
      v110 = v293;
    }

    else
    {
      v120 = *&v116[v115];
      v121 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v122 = *(v121 + 48);
      v123 = *(v121 + 52);
      swift_allocObject();

      v119 = sub_1B4C3D764(v124);

      (*(v111 + 8))(v112, v92);
      v110 = v293;

      *&v116[v298] = v119;
    }

    v125 = v119 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
    swift_beginAccess();
    *v125 = v114;
    *(v125 + 8) = 0;
    v108 = v296;
  }

  v126 = v277;
  sub_1B4974FBC(v64 + *(v299 + 44), v277, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v127 = *(v109 + 48);
  v128 = v291;
  if (v127(v126, 1, v291) == 1)
  {
    sub_1B4975024(v126, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v129 = v278;
    v130 = v294;
  }

  else
  {
    v131 = v269;
    (*(v109 + 32))(v269, v126, v128);
    sub_1B4D1742C();
    v133 = v132;
    v134 = v298;
    v130 = v294;
    v135 = *&v294[v298];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v109 + 8))(v131, v128);
      v136 = *&v130[v134];
    }

    else
    {
      v137 = *&v130[v134];
      v138 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v139 = *(v138 + 48);
      v140 = *(v138 + 52);
      swift_allocObject();

      v136 = sub_1B4C3D764(v141);

      (*(v109 + 8))(v131, v128);
      v110 = v293;

      *&v130[v298] = v136;
    }

    v142 = v136 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
    swift_beginAccess();
    *v142 = v133;
    *(v142 + 8) = 0;
    v108 = v296;
    v64 = v297;
    v129 = v278;
  }

  sub_1B4974FBC(v64 + *(v299 + 48), v129, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v143 = v291;
  if (v127(v129, 1, v291) == 1)
  {
    sub_1B4975024(v129, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v144 = v292;
    v145 = v279;
  }

  else
  {
    v146 = v129;
    v147 = v287;
    v148 = v270;
    (*(v287 + 32))(v270, v146, v143);
    sub_1B4D1742C();
    v150 = v149;
    v151 = v298;
    v152 = *&v130[v298];
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v144 = v292;
    if (v153)
    {
      (*(v147 + 8))(v148, v143);
      v154 = *&v130[v151];
    }

    else
    {
      v155 = *&v130[v151];
      v156 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v157 = *(v156 + 48);
      v158 = *(v156 + 52);
      swift_allocObject();
      v159 = v148;
      v160 = v147;
      v161 = v151;

      v154 = sub_1B4C3D764(v162);

      (*(v160 + 8))(v159, v291);
      v110 = v293;

      *&v130[v161] = v154;
    }

    v145 = v279;
    v163 = v154 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
    swift_beginAccess();
    *v163 = v150;
    *(v163 + 8) = 0;
    v108 = v296;
  }

  v164 = v280;
  sub_1B4974FBC(v64 + *(v299 + 52), v145, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v165 = v295;
  v294 = *(v144 + 48);
  if ((v294)(v145, 1, v295) == 1)
  {
    sub_1B4975024(v145, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v166 = v290;
    v167 = v299;
    v168 = v281;
    v169 = v283;
  }

  else
  {
    (*(v144 + 32))(v164, v145, v165);
    sub_1B4D1742C();
    v171 = v170;
    v172 = v298;
    v173 = *&v130[v298];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v144 + 8))(v164, v165);
      v174 = *&v130[v172];
    }

    else
    {
      v175 = *&v130[v172];
      v176 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v177 = *(v176 + 48);
      v178 = *(v176 + 52);
      swift_allocObject();
      v179 = v172;

      v174 = sub_1B4C3D764(v180);

      (*(v144 + 8))(v164, v165);
      v110 = v293;

      *&v130[v179] = v174;
    }

    v169 = v283;
    v181 = v174 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
    swift_beginAccess();
    *v181 = v171;
    *(v181 + 8) = 0;
    v108 = v296;
    v166 = v290;
    v167 = v299;
    v168 = v281;
  }

  sub_1B4974FBC(v297 + *(v167 + 56), v168, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v182 = v295;
  if ((v294)(v168, 1, v295) == 1)
  {
    sub_1B4975024(v168, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v183 = v299;
    v184 = v282;
  }

  else
  {
    v185 = v292;
    v186 = v271;
    (*(v292 + 32))();
    sub_1B4D1742C();
    v188 = v187;
    v189 = v298;
    v190 = *&v130[v298];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v185 + 8))(v186, v182);
      v191 = *&v130[v189];
    }

    else
    {
      v192 = *&v130[v189];
      v193 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v194 = *(v193 + 48);
      v195 = *(v193 + 52);
      swift_allocObject();

      v191 = sub_1B4C3D764(v196);

      (*(v185 + 8))(v186, v182);
      v110 = v293;

      *&v130[v298] = v191;
    }

    v184 = v282;
    v197 = v191 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
    swift_beginAccess();
    *v197 = v188;
    *(v197 + 8) = 0;
    v108 = v296;
    v166 = v290;
    v183 = v299;
  }

  sub_1B4974FBC(v297 + *(v183 + 60), v184, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v198 = v295;
  if ((v294)(v184, 1, v295) == 1)
  {
    sub_1B4975024(v184, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  }

  else
  {
    v199 = v292;
    v200 = v184;
    v201 = v272;
    (*(v292 + 32))(v272, v200, v198);
    sub_1B4D1742C();
    v203 = v202;
    v204 = v298;
    v205 = *&v130[v298];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v199 + 8))(v201, v198);
      v206 = *&v130[v204];
    }

    else
    {
      v207 = *&v130[v204];
      v208 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v209 = *(v208 + 48);
      v210 = *(v208 + 52);
      swift_allocObject();

      v206 = sub_1B4C3D764(v211);

      (*(v199 + 8))(v201, v198);
      v110 = v293;

      *&v130[v298] = v206;
    }

    v212 = v206 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
    swift_beginAccess();
    *v212 = v203;
    *(v212 + 8) = 0;
    v108 = v296;
    v166 = v290;
  }

  sub_1B4974FBC(v297 + *(v299 + 64), v169, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v213 = v295;
  if ((v294)(v169, 1, v295) == 1)
  {
    sub_1B4975024(v169, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v215 = v284;
    v214 = v285;
  }

  else
  {
    v216 = v292;
    (*(v292 + 32))(v166, v169, v213);
    sub_1B4D1742C();
    v218 = v217;
    v219 = v298;
    v220 = *&v130[v298];
    v221 = swift_isUniquelyReferenced_nonNull_native();
    v222 = v166;
    v215 = v284;
    v214 = v285;
    if (v221)
    {
      (*(v216 + 8))(v222, v213);
      v223 = *&v130[v219];
    }

    else
    {
      v224 = *&v130[v219];
      v225 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v226 = *(v225 + 48);
      v227 = *(v225 + 52);
      swift_allocObject();

      v223 = sub_1B4C3D764(v228);

      (*(v216 + 8))(v222, v213);
      v110 = v293;

      *&v130[v298] = v223;
    }

    v229 = v223 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
    swift_beginAccess();
    *v229 = v218;
    *(v229 + 8) = 0;
    v108 = v296;
  }

  v230 = v297;
  sub_1B4974FBC(v297 + *(v299 + 68), v108, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v215 + 48))(v108, 1, v214) == 1)
  {
    result = sub_1B4975024(v108, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  }

  else
  {
    (*(v215 + 32))(v110, v108, v214);
    sub_1B4D1742C();
    v233 = v232;
    v234 = v298;
    v235 = *&v130[v298];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v215 + 8))(v110, v214);
      v236 = *&v130[v234];
    }

    else
    {
      v237 = v110;
      v238 = *&v130[v234];
      v239 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v240 = *(v239 + 48);
      v241 = *(v239 + 52);
      swift_allocObject();
      v242 = v234;

      v236 = sub_1B4C3D764(v243);

      (*(v215 + 8))(v237, v214);

      *&v130[v242] = v236;
    }

    v244 = v236 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
    result = swift_beginAccess();
    *v244 = v233;
    *(v244 + 8) = 0;
  }

  v246 = v298;
  v245 = v299;
  v247 = v230 + *(v299 + 72);
  if (*(v247 + 8))
  {
    goto LABEL_69;
  }

  v248 = *v247;
  if (*v247 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (v248 > 0x7FFFFFFF)
  {
LABEL_75:
    __break(1u);
    return result;
  }

  v249 = *&v130[v298];
  v250 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *&v130[v246];
  if ((v250 & 1) == 0)
  {
    v252 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v253 = *(v252 + 48);
    v254 = *(v252 + 52);
    swift_allocObject();
    v255 = v246;
    v256 = sub_1B4C3D764(v251);

    *&v130[v255] = v256;
    v251 = v256;
  }

  v257 = v251 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  *v257 = v248;
  *(v257 + 4) = 0;
  v246 = v298;
  v245 = v299;
LABEL_69:
  v258 = *(v230 + *(v245 + 76));
  if (v258 != 2)
  {
    v259 = *&v130[v246];
    v260 = swift_isUniquelyReferenced_nonNull_native();
    v261 = *&v130[v246];
    if ((v260 & 1) == 0)
    {
      v262 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v263 = *(v262 + 48);
      v264 = *(v262 + 52);
      swift_allocObject();
      v265 = v246;
      v266 = sub_1B4C3D764(v261);

      *&v130[v265] = v266;
      v261 = v266;
    }

    v267 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
    result = swift_beginAccess();
    *(v261 + v267) = v258 & 1;
  }

  return result;
}

uint64_t sub_1B4B88C30(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4B88FC4(&qword_1EB8AB778, type metadata accessor for HKActivitySummaryRepresentable);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B88FC4(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    v1 = sub_1B4D17D6C();
    sub_1B4B88E70(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  return v1;
}

uint64_t sub_1B4B88DB0()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  sub_1B4B88FC4(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B88E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B88ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B88FC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4B8900C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B8907C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, void *a10, void (*a11)(uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a12)
{
  v220 = a8;
  v230 = a7;
  v259 = a6;
  v224 = a5;
  v223 = a4;
  v260 = a3;
  v264 = a1;
  v247 = a9;
  v213 = a12;
  v214 = a11;
  v261 = a10;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D0, &qword_1B4D35948);
  v13 = *(*(v231 - 8) + 64);
  MEMORY[0x1EEE9AC00](v231);
  v215 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v235 = &v205 - v16;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  v242 = *(v226 - 8);
  v17 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v249 = &v205 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v222 = &v205 - v21;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v22 = *(v232 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v218 = &v205 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v228 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v229 = (&v205 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v241 = (&v205 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v234 = &v205 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v239 = &v205 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v240 = &v205 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v238 = (&v205 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v233 = &v205 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v262 = &v205 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v225 = &v205 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v227 = &v205 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v237 = &v205 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v236 = &v205 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v219 = &v205 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v254 = &v205 - v57;
  v58 = a2 + 64;
  v59 = 1 << *(a2 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(a2 + 64);
  v62 = (v59 + 63) >> 6;
  v256 = (v56 + 48);
  v252 = (v56 + 32);
  v251 = (v56 + 8);
  v221 = (v22 + 48);
  v217 = (v22 + 32);
  v216 = (v22 + 8);
  v244 = (v56 + 16);
  v248 = (v56 + 56);
  v263 = a2;

  v63 = 0;
  v265 = 0;
  *&v64 = 136315138;
  v253 = v64;
  v255 = v44;
  v257 = v62;
  v258 = a2 + 64;
  if (!v61)
  {
LABEL_5:
    v66 = v262;
    while (1)
    {
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v67 >= v62)
      {

        v184 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
        return (*(*(v184 - 8) + 56))(v247, 1, 1, v184);
      }

      v61 = *(v58 + 8 * v67);
      ++v63;
      if (v61)
      {
        v65 = v44;
        v63 = v67;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_113:

    v186 = v235;
    v187 = v215;
    sub_1B4974FBC(v235, v215, &qword_1EB8AB7D0, &qword_1B4D35948);
    v188 = v187 + *(v231 + 64);
    v189 = *v188;
    v190 = *(v188 + 8);
    LOBYTE(v267) = *(v187 + *(v231 + 48));
    v214(v187, &v267, v189, v190);

    sub_1B4975024(v186, &qword_1EB8AB7D0, &qword_1B4D35948);
    v191 = *v251;
    v192 = v255;
    (*v251)(v236, v255);
    sub_1B4975024(v249, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
    v191(v254, v192);
    return (v191)(v187, v192);
  }

  while (1)
  {
    v65 = v44;
    v66 = v262;
LABEL_10:
    v68 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v69 = v68 | (v63 << 6);
    v70 = *(*(v263 + 48) + v69);
    v71 = *(v263 + 56) + 24 * v69;
    v72 = *v71;
    v73 = *(v71 + 8);
    v74 = *(v71 + 16);

    v75 = v265;
    sub_1B4B8DB74(v72, v73, v74, v264, v261, v260, v259, v66);
    if (v75)
    {

      v76 = v75;
      v75 = 0;
      v44 = v65;
LABEL_64:
      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v265 = v75;
      v133 = sub_1B4D17F6C();
      __swift_project_value_buffer(v133, qword_1EDC3CED0);
      v134 = v76;
      v135 = sub_1B4D17F5C();
      v136 = sub_1B4D1873C();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v267 = v138;
        *v137 = v253;
        ErrorValue = swift_getErrorValue();
        v140 = *(*(v266 - 8) + 64);
        v141 = MEMORY[0x1EEE9AC00](ErrorValue);
        (*(v143 + 16))(&v205 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0), v141);
        v144 = sub_1B4D181AC();
        v146 = sub_1B49558AC(v144, v145, &v267);

        *(v137 + 4) = v146;
        _os_log_impl(&dword_1B4953000, v135, v136, "MilestoneFactComponents not created with error %s", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
        v147 = v138;
        v44 = v255;
        MEMORY[0x1B8C7DDA0](v147, -1, -1);
        MEMORY[0x1B8C7DDA0](v137, -1, -1);
      }

      else
      {
      }

      goto LABEL_69;
    }

    v250 = v70;
    v245 = v73;
    v246 = v72;
    v77 = *v256;
    v44 = v65;
    if ((*v256)(v66, 1, v65) != 1)
    {
      break;
    }

    v265 = 0;

    sub_1B4975024(v66, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_69:
    v62 = v257;
    v58 = v258;
    if (!v61)
    {
      goto LABEL_5;
    }
  }

  v243 = *v252;
  v243(v254, v66, v65);
  if (v264 > 1u)
  {
    if (v264 == 2)
    {
      v83 = v77;
      v84 = v233;
      sub_1B4974FBC(v224, v233, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v85 = v84;
      v77 = v83;
      if (v83(v85, 1, v65) == 1)
      {

        sub_1B4975024(v233, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }

      else
      {
        v243(v219, v233, v65);
        v105 = sub_1B4BFA890(v220 & 1);
        if (*(v105 + 16))
        {
          v106 = sub_1B49EA3C0(v250);
          if (v107)
          {
            v101 = *(*(v105 + 56) + 8 * v106);
            v265 = 0;
            v108 = *v251;

            v108(v219, v44);
            v75 = v265;

            goto LABEL_74;
          }
        }

        (*v251)(v219, v65);
      }

LABEL_62:
      LOBYTE(v267) = 0;
      sub_1B4B9462C();
      swift_willThrowTypedImpl();
      v88 = 0;
      goto LABEL_63;
    }

    v89 = [v261 userDistanceElevationUnit];
    v90 = objc_opt_self();
    v91 = &selRef_miles;
    if ((v89 - 1) <= 4)
    {
      v91 = off_1E7C11890[(v89 - 1)];
    }

    v92 = [v90 *v91];
    v93 = sub_1B4BFB398();
    if (v93[2])
    {
      v94 = sub_1B49EF0C0(v260);
      if (v95)
      {
        v96 = *(v93[7] + 8 * v94);

        if (*(v96 + 16))
        {
          v97 = sub_1B49EA3C0(v250);
          if (v98)
          {
            v99 = *(*(v96 + 56) + 8 * v97);

            v100 = *(v99 + 16);
            v267 = MEMORY[0x1E69E7CC0];
            sub_1B4BCF25C(0, v100, 0);
            v101 = v267;
            if (v100)
            {

LABEL_55:

              v44 = v255;
              goto LABEL_62;
            }

            goto LABEL_73;
          }
        }
      }
    }

    goto LABEL_58;
  }

  if (!v264)
  {
    v78 = [v261 userActiveEnergyBurnedUnit];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v79 = objc_opt_self();
    v80 = [v79 kilocalorieUnit];
    v81 = sub_1B4D187AC();

    if (v81)
    {
      v82 = [objc_opt_self() kilocalories];
    }

    else
    {
      v102 = [v79 largeCalorieUnit];
      v103 = sub_1B4D187AC();

      if (v103)
      {
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v104 = qword_1EDC36DF8;
        goto LABEL_51;
      }

      v82 = [objc_opt_self() kilojoules];
    }

    v104 = v82;
LABEL_51:
    v126 = v104;

    v127 = sub_1B4BFAE5C();
    if (*(v127 + 16))
    {
      v128 = sub_1B49EA3C0(v250);
      if (v129)
      {
        v130 = *(*(v127 + 56) + 8 * v128);

        v131 = *(v130 + 16);
        v267 = MEMORY[0x1E69E7CC0];
        sub_1B4BCF25C(0, v131, 0);
        v101 = v267;
        if (v131)
        {

          goto LABEL_55;
        }

        goto LABEL_73;
      }
    }

LABEL_58:

    v44 = v255;
    goto LABEL_62;
  }

  v265 = 0;
  v86 = v222;
  sub_1B4974FBC(v223, v222, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v87 = v232;
  if ((*v221)(v86, 1, v232) == 1)
  {

    sub_1B4975024(v86, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v88 = 1;
    LOBYTE(v267) = 1;
    sub_1B4B9462C();
    swift_willThrowTypedImpl();
    v75 = v265;
LABEL_63:
    sub_1B4B9462C();
    v76 = swift_allocError();
    *v132 = v88;
    (*v251)(v254, v44);
    goto LABEL_64;
  }

  (*v217)(v218, v86, v87);
  v109 = objc_allocWithZone(MEMORY[0x1E699C9F0]);
  v110 = v260;
  v111 = [v109 initWithActivityTypeIdentifier:v260 isIndoor:0];
  v112 = [v261 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v113 = [objc_opt_self() mileUnit];
  v114 = sub_1B4D187AC();

  v115 = objc_opt_self();
  v116 = &selRef_miles;
  if ((v114 & 1) == 0)
  {
    v116 = &selRef_kilometers;
  }

  v117 = [v115 *v116];

  v118 = sub_1B4BF9640(v117, v220 & 1);
  if (!v118[2] || (v119 = sub_1B49EF0C0(v110), (v120 & 1) == 0))
  {
    v44 = v255;
    v75 = v265;
LABEL_61:

    (*v216)(v218, v232);
    goto LABEL_62;
  }

  v121 = *(v118[7] + 8 * v119);

  v75 = v265;
  if (!*(v121 + 16) || (v122 = sub_1B49EA3C0(v250), (v123 & 1) == 0))
  {
    v44 = v255;
    goto LABEL_61;
  }

  v124 = *(*(v121 + 56) + 8 * v122);

  v125 = *(v124 + 16);
  v267 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF25C(0, v125, 0);
  v101 = v267;

  if (v125)
  {

    (*v216)(v218, v232);
    goto LABEL_58;
  }

  (*v216)(v218, v232);
LABEL_73:
  v44 = v255;
LABEL_74:
  v267 = v101;

  sub_1B4B90AAC(&v267, &qword_1EB8AB7D8, &qword_1B4D3B8B0, sub_1B4CDE264, sub_1B4B90B70);
  if (v75)
  {
    goto LABEL_123;
  }

  v148 = v267;
  v206 = *(v267 + 16);
  if (!v206)
  {
LABEL_109:
    v265 = v75;
    (*v251)(v254, v44);

    goto LABEL_69;
  }

  v149 = 0;
  v208 = v267 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
  v150 = v249;
  v151 = v240;
  v209 = v77;
  v207 = v267;
  while (v149 < *(v148 + 16))
  {
    v265 = v75;
    v152 = *(v242 + 72);
    v211 = v149;
    v75 = &qword_1EB8A6C90;
    sub_1B4974FBC(v208 + v152 * v149, v150, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
    v210 = *v244;
    v210(v151, v254, v44);
    v212 = *v248;
    v212(v151, 0, 1, v44);
    v153 = v239;
    sub_1B4974FBC(v151, v239, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v77(v153, 1, v44) == 1)
    {
      sub_1B4975024(v151, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v153, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v75 = v238;
      v154 = v250;
      v77 = v209;
      v155 = v212;
      v212(v238, 1, 1, v44);
    }

    else
    {
      v243(v237, v153, v44);
      sub_1B4D1742C();
      v157 = v156;
      sub_1B4D1742C();
      v159 = v157 / v158;
      if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_117;
      }

      v151 = v240;
      v75 = v238;
      v154 = v250;
      v77 = v209;
      v155 = v212;
      if (v159 <= -9.22337204e18)
      {
        goto LABEL_118;
      }

      if (v159 >= 9.22337204e18)
      {
        goto LABEL_119;
      }

      if (v159 <= 0)
      {
        v44 = v255;
        (*v251)(v237, v255);
        sub_1B4975024(v151, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v161 = 1;
      }

      else
      {
        v160 = v249;
        if (*(v249 + *(v226 + 28)))
        {
          v44 = v255;
          (*v251)(v237, v255);
          sub_1B4975024(v151, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v155 = v212;
          v210(v75, v160, v44);
        }

        else
        {
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          sub_1B4D173FC();
          v44 = v255;
          (*v251)(v237, v255);
          sub_1B4975024(v151, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        }

        v161 = 0;
      }

      v155(v75, v161, 1, v44);
    }

    if (v77(v75, 1, v44) == 1)
    {
      sub_1B4975024(v249, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4975024(v75, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    }

    else
    {
      v162 = v236;
      v243(v236, v75, v44);
      v163 = v162;
      v164 = *(v231 + 48);
      v165 = v235;
      v166 = v235 + *(v231 + 64);
      v210(v235, v163, v44);
      *(v165 + v164) = v154;
      v167 = v260;
      *v166 = v260;
      *(v166 + 8) = 0;
      if (!v74)
      {
        goto LABEL_113;
      }

      v168 = v234;
      v169 = v265;
      sub_1B4B8DB74(v246, v245, v74, v264, v261, v167, v230, v234);
      if (v169)
      {

        sub_1B4975024(v235, &qword_1EB8AB7D0, &qword_1B4D35948);
        v183 = *v251;
        v44 = v255;
        (*v251)(v236, v255);
        sub_1B4975024(v249, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v183(v254, v44);
        v76 = v169;
        v75 = 0;
        goto LABEL_64;
      }

      v265 = 0;
      v75 = v229;
      sub_1B4974FBC(v168, v229, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v44 = v255;
      if (v77(v75, 1, v255) == 1)
      {
        sub_1B4975024(v75, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v170 = 1;
        v171 = v236;
      }

      else
      {
        v243(v227, v75, v44);
        sub_1B4D1742C();
        v173 = v172;
        sub_1B4D1742C();
        v175 = v173 / v174;
        if ((*&v175 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_120;
        }

        if (v175 <= -9.22337204e18)
        {
          goto LABEL_121;
        }

        v171 = v236;
        if (v175 >= 9.22337204e18)
        {
          goto LABEL_122;
        }

        if (v175 <= 0)
        {
          v44 = v255;
          (*v251)(v227, v255);
          v170 = 1;
        }

        else
        {
          v176 = v249;
          if (*(v249 + *(v226 + 28)))
          {
            v44 = v255;
            (*v251)(v227, v255);
            v210(v241, v176, v44);
          }

          else
          {
            sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
            sub_1B4D173FC();
            v44 = v255;
            (*v251)(v227, v255);
          }

          v170 = 0;
        }
      }

      v177 = v241;
      v155(v241, v170, 1, v44);
      v178 = v177;
      v179 = v228;
      sub_1B4974FBC(v178, v228, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v77(v179, 1, v44) == 1)
      {

        sub_1B4975024(v179, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v193 = v235;
        v194 = v215;
        sub_1B4974FBC(v235, v215, &qword_1EB8AB7D0, &qword_1B4D35948);
        v195 = v194 + *(v231 + 64);
        v196 = *v195;
        v197 = *(v195 + 8);
        LOBYTE(v267) = *(v194 + *(v231 + 48));
        v214(v194, &v267, v196, v197);

        sub_1B4975024(v241, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v234, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v193, &qword_1EB8AB7D0, &qword_1B4D35948);
        v198 = *v251;
        (*v251)(v171, v44);
        sub_1B4975024(v249, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v198(v254, v44);
        return (v198)(v194, v44);
      }

      v180 = v225;
      v243(v225, v179, v44);
      sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      v181 = v171;
      if (sub_1B4D180EC())
      {

        v199 = v235;
        v200 = v215;
        sub_1B4974FBC(v235, v215, &qword_1EB8AB7D0, &qword_1B4D35948);
        v201 = v200 + *(v231 + 64);
        v202 = *v201;
        v203 = *(v201 + 8);
        LOBYTE(v267) = *(v200 + *(v231 + 48));
        v214(v200, &v267, v202, v203);

        v204 = *v251;
        (*v251)(v180, v44);
        sub_1B4975024(v241, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v234, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v199, &qword_1EB8AB7D0, &qword_1B4D35948);
        v204(v181, v44);
        sub_1B4975024(v249, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v204(v254, v44);
        return (v204)(v200, v44);
      }

      v182 = *v251;
      (*v251)(v180, v44);
      sub_1B4975024(v241, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v234, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v235, &qword_1EB8AB7D0, &qword_1B4D35948);
      v182(v171, v44);
      sub_1B4975024(v249, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      v151 = v240;
      v77 = v209;
    }

    v149 = v211 + 1;
    v150 = v249;
    v75 = v265;
    v148 = v207;
    if (v206 == v211 + 1)
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:

  __break(1u);
  return result;
}

uint64_t sub_1B4B8B05C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, void *a10, void (*a11)(uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a12)
{
  v220 = a8;
  v226 = a7;
  v255 = a6;
  v219 = a5;
  v218 = a4;
  v256 = a3;
  v259 = a1;
  v243 = a9;
  v208 = a12;
  v209 = a11;
  v257 = a10;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7B8, &qword_1B4D35940);
  v13 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v210 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v231 = (&v201 - v16);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  v237 = *(v222 - 8);
  v17 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v246 = &v201 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v217 = &v201 - v21;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v22 = *(v228 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v228);
  v214 = &v201 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v224 = &v201 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v225 = (&v201 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v235 = (&v201 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v230 = &v201 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v236 = &v201 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v201 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v234 = &v201 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v216 = &v201 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v258 = &v201 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v221 = &v201 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v223 = &v201 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v233 = &v201 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v232 = &v201 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v229 = &v201 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v250 = &v201 - v58;
  v59 = a2 + 64;
  v60 = 1 << *(a2 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(a2 + 64);
  v63 = (v60 + 63) >> 6;
  v252 = (v57 + 48);
  v248 = (v57 + 32);
  v215 = (v22 + 48);
  v213 = (v22 + 32);
  v212 = (v22 + 8);
  v247 = (v57 + 8);
  v240 = (v57 + 16);
  v244 = (v57 + 56);
  v260 = a2;

  v64 = 0;
  v261 = 0;
  *&v65 = 136315138;
  v249 = v65;
  v251 = v45;
  v239 = v38;
  v253 = v63;
  v254 = a2 + 64;
  if (!v62)
  {
LABEL_5:
    v67 = v258;
    while (1)
    {
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v68 >= v63)
      {

        v180 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
        return (*(*(v180 - 8) + 56))(v243, 1, 1, v180);
      }

      v62 = *(v59 + 8 * v68);
      ++v64;
      if (v62)
      {
        v66 = v45;
        v64 = v68;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_109:

    v182 = v231;
    v183 = v210;
    sub_1B4974FBC(v231, v210, &qword_1EB8AB7B8, &qword_1B4D35940);
    v184 = v183 + *(v227 + 64);
    v185 = *v184;
    v186 = *(v184 + 8);
    LOBYTE(v263) = *(v183 + *(v227 + 48));
    v209(v183, &v263, v185, v186);

    sub_1B4975024(v182, &qword_1EB8AB7B8, &qword_1B4D35940);
    v187 = *v247;
    v188 = v251;
    (*v247)(v232, v251);
    sub_1B4975024(v246, &qword_1EB8AB7C0, &unk_1B4D47180);
    v187(v250, v188);
    return (v187)(v183, v188);
  }

  while (1)
  {
    v66 = v45;
    v67 = v258;
LABEL_10:
    v69 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v70 = v69 | (v64 << 6);
    v71 = *(*(v260 + 48) + v70);
    v72 = *(v260 + 56) + 24 * v70;
    v73 = *v72;
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);

    v76 = v261;
    sub_1B4B8F29C(v73, v74, v75, v259, v257, v256, v255, v67);
    if (v76)
    {

      v77 = v76;
      v76 = 0;
      v45 = v66;
LABEL_60:
      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v261 = v76;
      v130 = sub_1B4D17F6C();
      __swift_project_value_buffer(v130, qword_1EDC3CED0);
      v131 = v77;
      v132 = sub_1B4D17F5C();
      v133 = sub_1B4D1873C();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v263 = v135;
        *v134 = v249;
        ErrorValue = swift_getErrorValue();
        v137 = *(*(v262 - 8) + 64);
        v138 = MEMORY[0x1EEE9AC00](ErrorValue);
        (*(v140 + 16))(&v201 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0), v138);
        v141 = sub_1B4D181AC();
        v143 = sub_1B49558AC(v141, v142, &v263);

        *(v134 + 4) = v143;
        _os_log_impl(&dword_1B4953000, v132, v133, "MilestoneFactComponents not created with error %s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        v144 = v135;
        v45 = v251;
        MEMORY[0x1B8C7DDA0](v144, -1, -1);
        MEMORY[0x1B8C7DDA0](v134, -1, -1);
      }

      else
      {
      }

      goto LABEL_65;
    }

    v241 = v74;
    v242 = v73;
    v245 = v71;
    v78 = *v252;
    v45 = v66;
    if ((*v252)(v67, 1, v66) != 1)
    {
      break;
    }

    v261 = 0;

    sub_1B4975024(v67, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_65:
    v63 = v253;
    v59 = v254;
    if (!v62)
    {
      goto LABEL_5;
    }
  }

  v238 = *v248;
  v238(v250, v67, v66);
  if (v259 > 1u)
  {
    if (v259 == 2)
    {
      v261 = 0;
      v84 = v217;
      sub_1B4974FBC(v219, v217, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v85 = v228;
      if ((*v215)(v84, 1, v228) == 1)
      {

        sub_1B4975024(v84, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        LOBYTE(v263) = 0;
        sub_1B4B9462C();
        swift_willThrowTypedImpl();
        v86 = 0;
        v76 = v261;
LABEL_59:
        sub_1B4B9462C();
        v77 = swift_allocError();
        *v129 = v86;
        (*v247)(v250, v45);
        goto LABEL_60;
      }

      (*v213)(v214, v84, v85);
      v102 = sub_1B4BFA890(v220 & 1);
      if (!*(v102 + 16) || (v103 = sub_1B49EA3C0(v245), (v104 & 1) == 0))
      {

        (*v212)(v214, v228);
        v76 = v261;
LABEL_58:
        LOBYTE(v263) = 0;
        sub_1B4B9462C();
        swift_willThrowTypedImpl();
        v86 = 0;
        goto LABEL_59;
      }

      v105 = *(*(v102 + 56) + 8 * v103);

      v106 = *(v105 + 16);
      v263 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF27C(0, v106, 0);
      v98 = v263;
      v76 = v261;
      if (!*(v105 + 16))
      {

        (*v212)(v214, v228);
        goto LABEL_70;
      }

      v107 = *(v105 + 16);

      if (!v107)
      {
        goto LABEL_119;
      }

      (*v212)(v214, v228);
LABEL_55:
    }

    else
    {
      v88 = [v257 userDistanceElevationUnit];
      v89 = objc_opt_self();
      v90 = &selRef_miles;
      if ((v88 - 1) <= 4)
      {
        v90 = off_1E7C11890[(v88 - 1)];
      }

      v91 = [v89 *v90];
      v92 = sub_1B4BFB398();
      if (v92[2])
      {
        v93 = sub_1B49EF0C0(v256);
        if (v94)
        {
          v95 = *(v92[7] + 8 * v93);

          if (*(v95 + 16))
          {
            v96 = sub_1B49EA3C0(v245);
            if (v97)
            {
              v98 = *(*(v95 + 56) + 8 * v96);

LABEL_67:

LABEL_70:
              v45 = v251;
              goto LABEL_71;
            }
          }
        }
      }

LABEL_56:
    }

    v45 = v251;
    goto LABEL_58;
  }

  if (!v259)
  {
    v79 = [v257 userActiveEnergyBurnedUnit];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v80 = objc_opt_self();
    v81 = [v80 kilocalorieUnit];
    v82 = sub_1B4D187AC();

    if (v82)
    {
      v83 = [objc_opt_self() kilocalories];
    }

    else
    {
      v99 = [v80 largeCalorieUnit];
      v100 = sub_1B4D187AC();

      if (v100)
      {
        v101 = v245;
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v91 = qword_1EDC36DF8;
LABEL_51:

        v124 = sub_1B4BFAE5C();
        if (!*(v124 + 16))
        {
          goto LABEL_56;
        }

        v125 = sub_1B49EA3C0(v101);
        if ((v126 & 1) == 0)
        {
          goto LABEL_56;
        }

        v127 = *(*(v124 + 56) + 8 * v125);

        v128 = *(v127 + 16);
        v263 = MEMORY[0x1E69E7CC0];
        sub_1B4BCF27C(0, v128, 0);
        v98 = v263;
        if (v128)
        {

          goto LABEL_55;
        }

        goto LABEL_67;
      }

      v83 = [objc_opt_self() kilojoules];
    }

    v91 = v83;
    v101 = v245;
    goto LABEL_51;
  }

  v261 = 0;
  v87 = v216;
  sub_1B4974FBC(v218, v216, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v78(v87, 1, v66) == 1)
  {

    sub_1B4975024(v87, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v86 = 1;
    LOBYTE(v263) = 1;
    sub_1B4B9462C();
    swift_willThrowTypedImpl();
    v76 = v261;
    goto LABEL_59;
  }

  v238(v229, v87, v66);
  v108 = objc_allocWithZone(MEMORY[0x1E699C9F0]);
  v109 = v256;
  v110 = [v108 initWithActivityTypeIdentifier:v256 isIndoor:0];
  v111 = [v257 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v112 = [objc_opt_self() mileUnit];
  v113 = sub_1B4D187AC();

  v114 = objc_opt_self();
  v115 = &selRef_miles;
  if ((v113 & 1) == 0)
  {
    v115 = &selRef_kilometers;
  }

  v116 = [v114 *v115];

  v117 = sub_1B4BF9640(v116, v220 & 1);
  if (!v117[2] || (v118 = sub_1B49EF0C0(v109), (v119 & 1) == 0))
  {
    v76 = v261;
LABEL_68:

    v45 = v251;
    (*v247)(v229, v251);
    goto LABEL_58;
  }

  v120 = *(v117[7] + 8 * v118);

  v76 = v261;
  if (!*(v120 + 16))
  {
    goto LABEL_68;
  }

  v121 = sub_1B49EA3C0(v245);
  if ((v122 & 1) == 0)
  {
    goto LABEL_68;
  }

  v123 = *(*(v120 + 56) + 8 * v121);

  v98 = v123;
  v45 = v251;
  (*v247)(v229, v251);

LABEL_71:
  v145 = v236;
  v263 = v98;

  sub_1B4B90AAC(&v263, &qword_1EB8AB7C0, &unk_1B4D47180, sub_1B4CDE2AC, sub_1B4B90CF8);
  if (v76)
  {
    goto LABEL_120;
  }

  v146 = v263;
  v202 = *(v263 + 16);
  if (!v202)
  {
LABEL_105:
    v261 = v76;
    (*v247)(v250, v45);

    goto LABEL_65;
  }

  v147 = 0;
  v204 = v263 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
  v148 = v246;
  v205 = v78;
  v203 = v263;
  while (v147 < *(v146 + 16))
  {
    v261 = v76;
    v149 = *(v237 + 72);
    v207 = v147;
    v76 = &qword_1EB8A6CC0;
    sub_1B4974FBC(v204 + v149 * v147, v148, &qword_1EB8AB7C0, &unk_1B4D47180);
    v150 = v78;
    v151 = v239;
    v206 = *v240;
    v206(v239, v250, v45);
    v211 = *v244;
    v211(v151, 0, 1, v45);
    sub_1B4974FBC(v151, v145, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (v150(v145, 1, v45) == 1)
    {
      sub_1B4975024(v151, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B4975024(v145, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v152 = 1;
      v153 = v234;
      v78 = v205;
    }

    else
    {
      v238(v233, v145, v45);
      sub_1B4D1742C();
      v155 = v154;
      sub_1B4D1742C();
      v157 = v155 / v156;
      if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_113;
      }

      v76 = v239;
      v153 = v234;
      v78 = v205;
      if (v157 <= -9.22337204e18)
      {
        goto LABEL_114;
      }

      v145 = v236;
      if (v157 >= 9.22337204e18)
      {
        goto LABEL_115;
      }

      if (v157 <= 0)
      {
        v45 = v251;
        (*v247)(v233, v251);
        sub_1B4975024(v76, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v152 = 1;
      }

      else
      {
        v158 = v246;
        if (*(v246 + *(v222 + 28)))
        {
          v45 = v251;
          (*v247)(v233, v251);
          sub_1B4975024(v76, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v206(v153, v158, v45);
        }

        else
        {
          sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
          sub_1B4D173FC();
          v45 = v251;
          (*v247)(v233, v251);
          sub_1B4975024(v76, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        }

        v152 = 0;
      }
    }

    v211(v153, v152, 1, v45);
    if (v78(v153, 1, v45) == 1)
    {
      sub_1B4975024(v246, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4975024(v153, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v76 = v261;
    }

    else
    {
      v159 = v232;
      v238(v232, v153, v45);
      v160 = v159;
      v161 = *(v227 + 48);
      v162 = v231;
      v163 = v231 + *(v227 + 64);
      v206(v231, v160, v45);
      *(v162 + v161) = v245;
      v164 = v256;
      *v163 = v256;
      *(v163 + 8) = 0;
      if (!v75)
      {
        goto LABEL_109;
      }

      v165 = v230;
      v166 = v261;
      sub_1B4B8F29C(v242, v241, v75, v259, v257, v164, v226, v230);
      if (v166)
      {

        sub_1B4975024(v231, &qword_1EB8AB7B8, &qword_1B4D35940);
        v179 = *v247;
        v45 = v251;
        (*v247)(v232, v251);
        sub_1B4975024(v246, &qword_1EB8AB7C0, &unk_1B4D47180);
        v179(v250, v45);
        v77 = v166;
        v76 = 0;
        goto LABEL_60;
      }

      v261 = 0;
      v76 = v225;
      sub_1B4974FBC(v165, v225, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v45 = v251;
      if (v78(v76, 1, v251) == 1)
      {
        sub_1B4975024(v76, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v167 = 1;
        v168 = v232;
      }

      else
      {
        v238(v223, v76, v45);
        sub_1B4D1742C();
        v170 = v169;
        sub_1B4D1742C();
        v172 = v170 / v171;
        if ((*&v172 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_116;
        }

        if (v172 <= -9.22337204e18)
        {
          goto LABEL_117;
        }

        v168 = v232;
        if (v172 >= 9.22337204e18)
        {
          goto LABEL_118;
        }

        if (v172 <= 0)
        {
          v45 = v251;
          (*v247)(v223, v251);
          v167 = 1;
        }

        else
        {
          v173 = v246;
          if (*(v246 + *(v222 + 28)))
          {
            v45 = v251;
            (*v247)(v223, v251);
            v206(v235, v173, v45);
          }

          else
          {
            sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
            sub_1B4D173FC();
            v45 = v251;
            (*v247)(v223, v251);
          }

          v167 = 0;
        }
      }

      v174 = v235;
      v211(v235, v167, 1, v45);
      v175 = v174;
      v176 = v224;
      sub_1B4974FBC(v175, v224, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      if (v78(v176, 1, v45) == 1)
      {

        sub_1B4975024(v176, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v189 = v231;
        v190 = v210;
        sub_1B4974FBC(v231, v210, &qword_1EB8AB7B8, &qword_1B4D35940);
        v191 = v190 + *(v227 + 64);
        v192 = *v191;
        v193 = *(v191 + 8);
        LOBYTE(v263) = *(v190 + *(v227 + 48));
        v209(v190, &v263, v192, v193);

        sub_1B4975024(v235, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v230, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v189, &qword_1EB8AB7B8, &qword_1B4D35940);
        v194 = *v247;
        (*v247)(v168, v45);
        sub_1B4975024(v246, &qword_1EB8AB7C0, &unk_1B4D47180);
        v194(v250, v45);
        return (v194)(v190, v45);
      }

      v177 = v221;
      v238(v221, v176, v45);
      sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
      if (sub_1B4D180EC())
      {

        v195 = v231;
        v196 = v210;
        sub_1B4974FBC(v231, v210, &qword_1EB8AB7B8, &qword_1B4D35940);
        v197 = v196 + *(v227 + 64);
        v198 = *v197;
        v199 = *(v197 + 8);
        LOBYTE(v263) = *(v196 + *(v227 + 48));
        v209(v196, &v263, v198, v199);

        v200 = *v247;
        (*v247)(v177, v45);
        sub_1B4975024(v235, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v230, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v195, &qword_1EB8AB7B8, &qword_1B4D35940);
        v200(v168, v45);
        sub_1B4975024(v246, &qword_1EB8AB7C0, &unk_1B4D47180);
        v200(v250, v45);
        return (v200)(v196, v45);
      }

      v178 = *v247;
      (*v247)(v177, v45);
      sub_1B4975024(v235, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B4975024(v230, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B4975024(v231, &qword_1EB8AB7B8, &qword_1B4D35940);
      v178(v168, v45);
      sub_1B4975024(v246, &qword_1EB8AB7C0, &unk_1B4D47180);
      v145 = v236;
      v76 = v261;
      v78 = v205;
    }

    v147 = v207 + 1;
    v148 = v246;
    v146 = v203;
    if (v202 == v207 + 1)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:

  __break(1u);
  return result;
}

unint64_t static WorkoutVoiceMilestoneWorkoutDistanceFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B928C0(v3, v1, v2);
}

uint64_t static WorkoutVoiceMilestoneWorkoutDistanceFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return sub_1B4B933AC(a1, a2, a3, a4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier.rawValue.getter()
{
  v1 = 0x6665725072657375;
  v2 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_1B4B8D224()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B8D300()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4B8D3C8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B8D4A0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier.init(rawValue:)(a1);
}

void sub_1B4B8D4AC(unint64_t *a1@<X8>)
{
  v2 = 0xEF7365636E657265;
  v3 = 0x6665725072657375;
  v4 = 0x80000001B4D4AAF0;
  v5 = 0xD000000000000019;
  if (*v1 == 2)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0x80000001B4D4AB10;
  }

  if (*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x80000001B4D4BF20;
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

int *sub_1B4B8D544@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v12 - 8) + 16))(&a5[v11], a1, v12);
  result = type metadata accessor for WorkoutState();
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = *(a3 + result[6]);
    *a5 = 1;
    a5[v10[6]] = v9;
    *&a5[v10[7]] = v14;
    *&a5[v10[8]] = a4 + 1;
    (*(*(v10 - 1) + 56))(a5, 0, 1, v10);

    return v14;
  }

  return result;
}

id WorkoutVoiceMilestoneWorkoutDistanceFact.makePrompt(promptFormatter:)()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v3 = *(v0 + v2[7]);
  v4 = sub_1B4D133E8(v0 + v2[5], v3, 0, 1);
  v6 = v5;
  [v3 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v8 = result;
    v9 = 0x7961642073696874;
    v10 = sub_1B4D1818C();
    v12 = v11;

    sub_1B4D1896C();

    strcpy(v23, "I passed the ");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x1B8C7C620](v4, v6);

    MEMORY[0x1B8C7C620](0x6F66206B72616D20, 0xEA00000000002072);
    MEMORY[0x1B8C7C620](v10, v12);
    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xEA00000000002073);
    v13 = v2[6];
    v14 = *(v1 + v13);
    if (v14 <= 1)
    {
      if (*(v1 + v13))
      {
        v15 = 0x6565772073696874;
        v16 = 0xE90000000000006BLL;
      }

      else
      {
        v16 = 0xE800000000000000;
        v15 = 0x7961642073696874;
      }
    }

    else if (v14 == 2)
    {
      v15 = 0x6E6F6D2073696874;
      v16 = 0xEA00000000006874;
    }

    else if (v14 == 3)
    {
      v15 = 0x6165792073696874;
      v16 = 0xE900000000000072;
    }

    else
    {
      v16 = 0xE400000000000000;
      v15 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v15, v16);

    MEMORY[0x1B8C7C620](46, 0xE100000000000000);
    sub_1B4D1896C();

    v17 = *(v1 + v2[8]);
    v18 = sub_1B4D18D5C();
    MEMORY[0x1B8C7C620](v18);

    MEMORY[0x1B8C7C620](32, 0xE100000000000000);
    MEMORY[0x1B8C7C620](v10, v12);

    v19 = 0xE800000000000000;
    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE800000000000000);
    if (v17 <= 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 115;
    }

    if (v17 <= 1)
    {
      v21 = 0xE000000000000000;
    }

    else
    {
      v21 = 0xE100000000000000;
    }

    MEMORY[0x1B8C7C620](v20, v21);

    MEMORY[0x1B8C7C620](32, 0xE100000000000000);
    v22 = *(v1 + v13);
    if (v22 <= 1)
    {
      if (*(v1 + v13))
      {
        v9 = 0x6565772073696874;
        v19 = 0xE90000000000006BLL;
      }
    }

    else if (v22 == 2)
    {
      v9 = 0x6E6F6D2073696874;
      v19 = 0xEA00000000006874;
    }

    else if (v22 == 3)
    {
      v9 = 0x6165792073696874;
      v19 = 0xE900000000000072;
    }

    else
    {
      v19 = 0xE400000000000000;
      v9 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v9, v19);

    MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D591D0);

    return v23[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4B8DA64(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B928C0(v3, v1, v2);
}

uint64_t sub_1B4B8DAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DD034;

  return sub_1B4B933AC(a1, a2, a3, a4);
}

uint64_t sub_1B4B8DB74@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v214 = a7;
  v215 = a6;
  v209 = a5;
  LODWORD(v218) = a4;
  v219 = a1;
  v220 = a2;
  v217 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v198 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v197 = &v185 - v13;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v213 = *(v216 - 8);
  v14 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v203 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v202 = &v185 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v205 = &v185 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v200 = &v185 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v191 = &v185 - v24;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v208 = *(v199 - 8);
  v25 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v196 = &v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v185 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v201 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v195 = &v185 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v192 = &v185 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v193 = &v185 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v190 = &v185 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v189 = &v185 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v188 = &v185 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v186 = &v185 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v187 = &v185 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v207 = &v185 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v204 = &v185 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v185 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v185 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v212 = &v185 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v211 = &v185 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7970, &unk_1B4D1F2E0);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v68 = &v185 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v210 = &v185 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = &v185 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v75);
  if (!a3)
  {
    return (*(v41 + 56))(v217, 1, 1, v40, v77);
  }

  v185 = v41;
  v206 = v40;
  if (v218 > 1u)
  {
    v94 = v216;
    if (v218 == 2)
    {
      memset(v221, 0, sizeof(v221));
      v95 = v225;
      v96 = &v185 - v76;
      result = sub_1B4CE5168(v221, a3, &v185 - v76);
      v225 = v95;
      v97 = v206;
      if (!v95)
      {
        v220 = v96;
        sub_1B4974FBC(v96, v74, &qword_1EB8A7530, &unk_1B4D40250);
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        if ((*(*(v98 - 8) + 48))(v74, 1, v98) == 1)
        {
          sub_1B4975024(v74, &qword_1EB8A7530, &unk_1B4D40250);
          v99 = v185;
          v100 = *(v185 + 56);
          v101 = v190;
          v100(v190, 1, 1, v97);
          v102 = [objc_opt_self() seconds];
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v103 = v204;
          sub_1B4D1741C();
          if ((*(v99 + 48))(v101, 1, v97) != 1)
          {
            sub_1B4975024(v101, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          }

          v104 = v185;
        }

        else
        {
          v104 = v185;
          v138 = v190;
          (*(v185 + 16))(v190, v74, v97);
          sub_1B4975024(v74, &qword_1EB8A6858, &qword_1B4D1AB70);
          v100 = *(v104 + 56);
          v100(v138, 0, 1, v97);
          v103 = v204;
          (*(v104 + 32))(v204, v138, v97);
        }

        v139 = objc_opt_self();
        v140 = [v139 seconds];
        sub_1B4D1745C();

        v141 = v193;
        sub_1B4974FBC(v214, v193, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        if ((*(v104 + 48))(v141, 1, v97) == 1)
        {
          (*(v104 + 8))(v103, v97);
          sub_1B4975024(v220, &qword_1EB8A7530, &unk_1B4D40250);
          sub_1B4975024(v141, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v142 = v217;
          (*(v104 + 32))(v217, v207, v97);
          return (v100)(v142, 0, 1, v97);
        }

        else
        {
          v218 = *(v104 + 32);
          v219 = v100;
          v174 = v186;
          v175 = v141;
          v176 = v218;
          v218(v186, v175, v97);
          v177 = v187;
          v176(v187, v174, v97);
          v178 = [v139 seconds];
          v179 = v188;
          sub_1B4D1745C();

          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v180 = v189;
          v181 = v207;
          sub_1B4D1743C();
          v182 = *(v104 + 8);
          v182(v179, v97);
          v182(v177, v97);
          v182(v181, v97);
          v182(v204, v97);
          sub_1B4975024(v220, &qword_1EB8A7530, &unk_1B4D40250);
          v183 = v217;
          v218(v217, v180, v97);
          return (v219)(v183, 0, 1, v97);
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B4D1A800;
      *(inited + 32) = v215;
      v223[0] = MEMORY[0x1E69E7CC0];
      v223[1] = MEMORY[0x1E69E7CC0];
      v223[2] = MEMORY[0x1E69E7CC0];
      v223[3] = inited;
      v223[4] = MEMORY[0x1E69E7CC0];
      v223[5] = MEMORY[0x1E69E7CC0];
      v110 = v211;
      v111 = v225;
      sub_1B4CE68B0(v223, a3, v211);

      result = swift_bridgeObjectRelease_n();
      v112 = v206;
      if (!v111)
      {
        v225 = 0;
        sub_1B4974FBC(v110, v60, &qword_1EB8A7978, &unk_1B4D1F2F0);
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        if ((*(*(v113 - 8) + 48))(v60, 1, v113) == 1)
        {
          sub_1B4975024(v60, &qword_1EB8A7978, &unk_1B4D1F2F0);
          v114 = v213;
          v115 = v197;
          (*(v213 + 56))(v197, 1, 1, v94);
          v116 = [objc_opt_self() meters];
          sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
          v117 = v200;
          sub_1B4D1741C();
          v118 = v114;
          v119 = v117;
          v120 = (*(v118 + 48))(v115, 1, v94);
          v122 = v185;
          v123 = v205;
          if (v120 != 1)
          {
            sub_1B4975024(v115, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          }
        }

        else
        {
          v143 = v213;
          v144 = v197;
          (*(v213 + 16))(v197, v60, v94);
          sub_1B4975024(v60, &qword_1EB8A6840, &unk_1B4D20FA0);
          (*(v143 + 56))(v144, 0, 1, v94);
          v119 = v200;
          (*(v143 + 32))(v200, v144, v94);
          v122 = v185;
          v123 = v205;
        }

        FIUnitManager.userMeasurementUnitForElevation()(v121);
        v146 = v145;
        sub_1B4D1745C();

        v147 = v195;
        sub_1B4974FBC(v214, v195, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v148 = (*(v122 + 48))(v147, 1, v112);
        v149 = v217;
        if (v148 == 1)
        {
          v150 = v217;
          v151 = v112;
          v152 = v147;
          v153 = *(v213 + 8);
          v153(v119, v94);
          sub_1B4975024(v211, &qword_1EB8A7978, &unk_1B4D1F2F0);
          v154 = &qword_1EB8A6C90;
          v155 = &unk_1B4D1BBD0;
          v156 = v152;
          v112 = v151;
          v149 = v150;
          v123 = v205;
        }

        else
        {
          sub_1B4975024(v147, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v153 = *(v213 + 8);
          v153(v119, v94);
          v154 = &qword_1EB8A7978;
          v155 = &unk_1B4D1F2F0;
          v156 = v211;
        }

        sub_1B4975024(v156, v154, v155);
        v153(v123, v94);
        return (*(v122 + 56))(v149, 1, 1, v112);
      }
    }
  }

  else if (v218)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v105 = swift_initStackObject();
    *(v105 + 16) = xmmword_1B4D1A800;
    v106 = v215;
    *(v105 + 32) = v215;
    v224[0] = MEMORY[0x1E69E7CC0];
    v224[1] = MEMORY[0x1E69E7CC0];
    v224[2] = MEMORY[0x1E69E7CC0];
    v224[3] = v105;
    v224[4] = MEMORY[0x1E69E7CC0];
    v224[5] = MEMORY[0x1E69E7CC0];
    v107 = v212;
    v108 = v225;
    sub_1B4CE458C(v224, a3, v212);
    v225 = v108;
    if (v108)
    {

      return swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1B4974FBC(v107, v57, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
      if ((*(*(v124 - 8) + 48))(v57, 1, v124) == 1)
      {
        sub_1B4975024(v57, &qword_1EB8A7978, &unk_1B4D1F2F0);
        v125 = v213;
        v126 = v198;
        v127 = v216;
        (*(v213 + 56))(v198, 1, 1, v216);
        v128 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v129 = v202;
        sub_1B4D1741C();
        if ((*(v125 + 48))(v126, 1, v127) != 1)
        {
          sub_1B4975024(v126, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        }
      }

      else
      {
        v157 = v213;
        v158 = v198;
        v127 = v216;
        (*(v213 + 16))(v198, v57, v216);
        sub_1B4975024(v57, &qword_1EB8A6840, &unk_1B4D20FA0);
        (*(v157 + 56))(v158, 0, 1, v127);
        v129 = v202;
        (*(v157 + 32))(v202, v158, v127);
      }

      v159 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v106 isIndoor:0];
      v160 = [v209 userDistanceHKUnitForActivityType_];
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v161 = [objc_opt_self() mileUnit];
      v162 = sub_1B4D187AC();

      v163 = objc_opt_self();
      v164 = &selRef_miles;
      if ((v162 & 1) == 0)
      {
        v164 = &selRef_kilometers;
      }

      v165 = [v163 *v164];

      v166 = v203;
      sub_1B4D1745C();

      v167 = v201;
      sub_1B4974FBC(v214, v201, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v168 = v185;
      v169 = v206;
      if ((*(v185 + 48))(v167, 1, v206) == 1)
      {
        v170 = *(v213 + 8);
        v170(v129, v127);
        sub_1B4975024(v212, &qword_1EB8A7978, &unk_1B4D1F2F0);
        v171 = &qword_1EB8A6C90;
        v172 = &unk_1B4D1BBD0;
        v173 = v167;
      }

      else
      {
        sub_1B4975024(v167, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v170 = *(v213 + 8);
        v170(v129, v127);
        v171 = &qword_1EB8A7978;
        v172 = &unk_1B4D1F2F0;
        v173 = v212;
      }

      sub_1B4975024(v173, v171, v172);
      v184 = v217;
      v170(v166, v127);
      return (*(v168 + 56))(v184, 1, 1, v169);
    }
  }

  else
  {
    memset(v222, 0, sizeof(v222));
    v78 = v210;
    v79 = v225;
    result = sub_1B4CE5D0C(v222, a3, v210);
    if (!v79)
    {
      v225 = 0;
      sub_1B4974FBC(v78, v68, &qword_1EB8A7970, &unk_1B4D1F2E0);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
      if ((*(*(v81 - 8) + 48))(v68, 1, v81) == 1)
      {
        sub_1B4975024(v68, &qword_1EB8A7970, &unk_1B4D1F2E0);
        v82 = v208;
        v83 = v191;
        v84 = v199;
        (*(v208 + 56))(v191, 1, 1, v199);
        v85 = v185;
        v86 = v192;
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v87 = qword_1EDC36DF8;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v88 = v87;
        v89 = v194;
        sub_1B4D1741C();
        v90 = (*(v82 + 48))(v83, 1, v84) == 1;
        v92 = v196;
        v93 = v83;
        v78 = v210;
        if (!v90)
        {
          sub_1B4975024(v93, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        }
      }

      else
      {
        v130 = v208;
        v131 = v191;
        v84 = v199;
        (*(v208 + 16))(v191, v68, v199);
        sub_1B4975024(v68, &qword_1EB8A6D68, &qword_1B4D208D0);
        (*(v130 + 56))(v131, 0, 1, v84);
        v89 = v194;
        (*(v130 + 32))(v194, v131, v84);
        v85 = v185;
        v92 = v196;
        v86 = v192;
      }

      FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v91);
      v133 = v132;
      sub_1B4D1745C();

      sub_1B4974FBC(v214, v86, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if ((*(v85 + 48))(v86, 1, v206) == 1)
      {
        v134 = *(v208 + 8);
        v134(v89, v84);
        sub_1B4975024(v78, &qword_1EB8A7970, &unk_1B4D1F2E0);
        v135 = &qword_1EB8A6C90;
        v136 = &unk_1B4D1BBD0;
        v137 = v86;
      }

      else
      {
        sub_1B4975024(v86, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v134 = *(v208 + 8);
        v134(v89, v84);
        v135 = &qword_1EB8A7970;
        v136 = &unk_1B4D1F2E0;
        v137 = v78;
      }

      sub_1B4975024(v137, v135, v136);
      v134(v92, v84);
      return (*(v85 + 56))(v217, 1, 1, v206);
    }
  }

  return result;
}

uint64_t sub_1B4B8F29C@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v217 = a7;
  v218 = a6;
  v213 = a5;
  v220 = a4;
  v221 = a1;
  v222 = a2;
  v219 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v223 = *(v9 - 8);
  v10 = *(v223 + 8);
  MEMORY[0x1EEE9AC00](v9);
  v188 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v189 = &v186 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v205 = &v186 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v209 = &v186 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v212 = &v186 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v206 = &v186 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v186 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v187 = &v186 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v204 = &v186 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v208 = &v186 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v197 = &v186 - v32;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v211 = *(v202 - 8);
  v33 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v186 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v200 = &v186 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v203 = &v186 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v193 = &v186 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v199 = &v186 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v192 = &v186 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v195 = &v186 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v196 = &v186 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v190 = &v186 - v52;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v210 = *(v198 - 8);
  v53 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v194 = &v186 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v191 = &v186 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v60 = &v186 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v186 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v216 = &v186 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v215 = &v186 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7970, &unk_1B4D1F2E0);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v71 = &v186 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v214 = &v186 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v77 = &v186 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v81 = &v186 - v79;
  if (!a3)
  {
    return (*(v223 + 7))(v219, 1, 1, v9, v80);
  }

  v82 = a3;
  v207 = v9;
  if (v220 <= 1u)
  {
    if (!v220)
    {
      memset(v225, 0, sizeof(v225));
      v83 = v214;
      v84 = v228;
      result = sub_1B4CE5D0C(v225, a3, v214);
      if (!v84)
      {
        v228 = 0;
        sub_1B4974FBC(v83, v71, &qword_1EB8A7970, &unk_1B4D1F2E0);
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        if ((*(*(v86 - 8) + 48))(v71, 1, v86) == 1)
        {
          sub_1B4975024(v71, &qword_1EB8A7970, &unk_1B4D1F2E0);
          v87 = v211;
          v88 = v197;
          v89 = v202;
          (*(v211 + 56))(v197, 1, 1, v202);
          v90 = v223;
          v91 = v200;
          v92 = v201;
          if (qword_1EDC36DF0 != -1)
          {
            swift_once();
          }

          v93 = qword_1EDC36DF8;
          sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
          v94 = v93;
          sub_1B4D1741C();
          v95 = (*(v87 + 48))(v88, 1, v89) == 1;
          v97 = v88;
          v83 = v214;
          if (!v95)
          {
            sub_1B4975024(v97, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          }
        }

        else
        {
          v136 = v211;
          v137 = v197;
          v89 = v202;
          (*(v211 + 16))(v197, v71, v202);
          sub_1B4975024(v71, &qword_1EB8A6D68, &qword_1B4D208D0);
          (*(v136 + 56))(v137, 0, 1, v89);
          v91 = v200;
          (*(v136 + 32))(v200, v137, v89);
          v90 = v223;
          v92 = v201;
        }

        FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v96);
        v139 = v138;
        sub_1B4D1745C();

        v140 = v195;
        sub_1B4974FBC(v217, v195, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        if ((*(v90 + 6))(v140, 1, v207) == 1)
        {
          v141 = *(v211 + 8);
          v141(v91, v89);
          sub_1B4975024(v83, &qword_1EB8A7970, &unk_1B4D1F2E0);
          v142 = &qword_1EB8A6CC0;
          v143 = &unk_1B4D1BC00;
          v144 = v140;
        }

        else
        {
          sub_1B4975024(v140, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v141 = *(v211 + 8);
          v141(v91, v89);
          v142 = &qword_1EB8A7970;
          v143 = &unk_1B4D1F2E0;
          v144 = v83;
        }

        sub_1B4975024(v144, v142, v143);
        v141(v92, v89);
        return (*(v90 + 7))(v219, 1, 1, v207);
      }

      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    v111 = v218;
    *(inited + 32) = v218;
    v227[0] = MEMORY[0x1E69E7CC0];
    v227[1] = MEMORY[0x1E69E7CC0];
    v227[2] = MEMORY[0x1E69E7CC0];
    v227[3] = inited;
    v227[4] = MEMORY[0x1E69E7CC0];
    v227[5] = MEMORY[0x1E69E7CC0];
    v112 = v216;
    v113 = v228;
    sub_1B4CE458C(v227, v82, v216);
    v114 = v207;
    if (v113)
    {

      return swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();
    sub_1B4974FBC(v112, v60, &qword_1EB8A7978, &unk_1B4D1F2F0);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    v129 = (*(*(v128 - 8) + 48))(v60, 1, v128);
    v228 = 0;
    if (v129 == 1)
    {
      sub_1B4975024(v60, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v130 = v223;
      v131 = v193;
      v222 = *(v223 + 7);
      v222(v193, 1, 1, v114);
      v132 = [objc_opt_self() meters];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v133 = v209;
      sub_1B4D1741C();
      if ((*(v130 + 6))(v131, 1, v114) != 1)
      {
        sub_1B4975024(v131, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      }

      v134 = v223;
      v135 = v205;
      v111 = v218;
    }

    else
    {
      v134 = v223;
      v161 = v193;
      (*(v223 + 2))(v193, v60, v114);
      sub_1B4975024(v60, &qword_1EB8A6840, &unk_1B4D20FA0);
      v222 = *(v134 + 7);
      v222(v161, 0, 1, v114);
      v133 = v209;
      (*(v134 + 4))(v209, v161, v114);
      v135 = v205;
    }

    v162 = v203;
    v223 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v111 isIndoor:0];
    v163 = [v213 userDistanceHKUnitForActivityType_];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v164 = [objc_opt_self() mileUnit];
    v165 = sub_1B4D187AC();

    v166 = objc_opt_self();
    v167 = &selRef_miles;
    if ((v165 & 1) == 0)
    {
      v167 = &selRef_kilometers;
    }

    v168 = [v166 *v167];

    sub_1B4D1745C();
    sub_1B4974FBC(v217, v162, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if ((*(v134 + 6))(v162, 1, v114) == 1)
    {

      (*(v134 + 1))(v133, v114);
      sub_1B4975024(v216, &qword_1EB8A7978, &unk_1B4D1F2F0);
      sub_1B4975024(v162, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v169 = v219;
      (*(v134 + 4))(v219, v135, v114);
    }

    else
    {
      v180 = v135;
      v181 = *(v134 + 4);
      v221 = v181;
      v182 = v188;
      v181(v188, v162, v114);
      v183 = v189;
      v181(v189, v182, v114);
      v184 = v206;
      sub_1B4D1745C();
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1743C();

      v185 = *(v134 + 1);
      v185(v184, v114);
      v185(v183, v114);
      v185(v180, v114);
      v185(v209, v114);
      sub_1B4975024(v216, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v169 = v219;
      v221(v219, v212, v114);
    }

    v178 = v169;
    v179 = v114;
    return (v222)(v178, 0, 1, v179);
  }

  if (v220 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v115 = swift_initStackObject();
    *(v115 + 16) = xmmword_1B4D1A800;
    *(v115 + 32) = v218;
    v226[0] = MEMORY[0x1E69E7CC0];
    v226[1] = MEMORY[0x1E69E7CC0];
    v226[2] = MEMORY[0x1E69E7CC0];
    v226[3] = v115;
    v226[4] = MEMORY[0x1E69E7CC0];
    v226[5] = MEMORY[0x1E69E7CC0];
    v116 = v215;
    v117 = v228;
    sub_1B4CE68B0(v226, a3, v215);

    result = swift_bridgeObjectRelease_n();
    if (v117)
    {
      return result;
    }

    v228 = 0;
    sub_1B4974FBC(v116, v63, &qword_1EB8A7978, &unk_1B4D1F2F0);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    if ((*(*(v118 - 8) + 48))(v63, 1, v118) == 1)
    {
      sub_1B4975024(v63, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v119 = v223;
      v120 = v192;
      v121 = v207;
      v222 = *(v223 + 7);
      v222(v192, 1, 1, v207);
      v122 = [objc_opt_self() meters];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v123 = v208;
      sub_1B4D1741C();
      v124 = (*(v119 + 6))(v120, 1, v121);
      v126 = v204;
      v127 = v199;
      if (v124 != 1)
      {
        sub_1B4975024(v120, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      }
    }

    else
    {
      v155 = v223;
      v156 = v192;
      v121 = v207;
      (*(v223 + 2))(v192, v63, v207);
      v157 = v63;
      v119 = v155;
      sub_1B4975024(v157, &qword_1EB8A6840, &unk_1B4D20FA0);
      v222 = *(v155 + 7);
      v222(v156, 0, 1, v121);
      v123 = v208;
      (*(v155 + 4))(v208, v156, v121);
      v126 = v204;
      v127 = v199;
    }

    FIUnitManager.userMeasurementUnitForElevation()(v125);
    v159 = v158;
    sub_1B4D1745C();
    sub_1B4974FBC(v217, v127, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if ((*(v119 + 6))(v127, 1, v121) == 1)
    {

      (*(v119 + 1))(v123, v121);
      sub_1B4975024(v215, &qword_1EB8A7978, &unk_1B4D1F2F0);
      sub_1B4975024(v127, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v160 = v219;
      (*(v119 + 4))(v219, v126, v121);
    }

    else
    {
      v171 = *(v119 + 4);
      v172 = v186;
      v171(v186, v127, v121);
      v173 = v171;
      v223 = v171;
      v174 = v187;
      v173(v187, v172, v121);
      v175 = v126;
      v176 = v206;
      sub_1B4D1745C();
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1743C();

      v177 = *(v119 + 1);
      v177(v176, v121);
      v177(v174, v121);
      v177(v175, v121);
      v177(v208, v121);
      sub_1B4975024(v215, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v160 = v219;
      v223(v219, v212, v121);
    }

    v178 = v160;
    v179 = v121;
    return (v222)(v178, 0, 1, v179);
  }

  memset(v224, 0, sizeof(v224));
  v98 = v228;
  result = sub_1B4CE5168(v224, a3, &v186 - v79);
  if (!v98)
  {
    v228 = 0;
    sub_1B4974FBC(v81, v77, &qword_1EB8A7530, &unk_1B4D40250);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if ((*(*(v99 - 8) + 48))(v77, 1, v99) == 1)
    {
      sub_1B4975024(v77, &qword_1EB8A7530, &unk_1B4D40250);
      v100 = v210;
      v101 = v190;
      v102 = v198;
      (*(v210 + 56))(v190, 1, 1, v198);
      v103 = [objc_opt_self() seconds];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v104 = v191;
      sub_1B4D1741C();
      v105 = v100;
      v106 = v101;
      v107 = (*(v105 + 48))(v101, 1, v102);
      v108 = v207;
      v109 = v223;
      if (v107 != 1)
      {
        sub_1B4975024(v106, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }
    }

    else
    {
      v145 = v210;
      v146 = v190;
      v102 = v198;
      (*(v210 + 16))(v190, v77, v198);
      sub_1B4975024(v77, &qword_1EB8A6858, &qword_1B4D1AB70);
      (*(v145 + 56))(v146, 0, 1, v102);
      v147 = *(v145 + 32);
      v104 = v191;
      v147(v191, v146, v102);
      v108 = v207;
      v109 = v223;
    }

    v148 = [objc_opt_self() seconds];
    v149 = v194;
    sub_1B4D1745C();

    v150 = v196;
    sub_1B4974FBC(v217, v196, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if ((*(v109 + 6))(v150, 1, v108) == 1)
    {
      v151 = *(v210 + 8);
      v151(v104, v102);
      sub_1B4975024(v81, &qword_1EB8A7530, &unk_1B4D40250);
      v152 = &qword_1EB8A6CC0;
      v153 = &unk_1B4D1BC00;
      v154 = v150;
    }

    else
    {
      sub_1B4975024(v150, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v151 = *(v210 + 8);
      v151(v104, v102);
      v152 = &qword_1EB8A7530;
      v153 = &unk_1B4D40250;
      v154 = v81;
    }

    sub_1B4975024(v154, v152, v153);
    v170 = v219;
    v151(v149, v102);
    return (*(v109 + 7))(v170, 1, 1, v207);
  }

  return result;
}

uint64_t sub_1B4B90AAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = a5(v12);
  *a1 = v9;
  return result;
}

void sub_1B4B90B70(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4B913A0(v8, v9, a1, v4, &qword_1EB8AB7D8, &qword_1B4D3B8B0, &qword_1EB8A6850, &unk_1B4D1BC10, &qword_1EDC37870, sub_1B4B91D58);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4B90E80(0, v2, 1, a1);
  }
}

void sub_1B4B90CF8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4B913A0(v8, v9, a1, v4, &qword_1EB8AB7C0, &unk_1B4D47180, &qword_1EB8A6830, &unk_1B4D1AB40, &qword_1EDC37878, sub_1B4B9230C);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4B91110(0, v2, 1, a1);
  }
}

void sub_1B4B90E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v18 = *(v8 + 72);
    v19 = v17 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_1B4974FBC(v21, v16, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4974FBC(v19, v13, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      v22 = sub_1B4D180EC();
      sub_1B4975024(v13, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4975024(v16, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_1B498B270(v21, v34, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v23, v19, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4B91110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v18 = *(v8 + 72);
    v19 = v17 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_1B4974FBC(v21, v16, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4974FBC(v19, v13, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
      v22 = sub_1B4D180EC();
      sub_1B4975024(v13, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4975024(v16, &qword_1EB8AB7C0, &unk_1B4D47180);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_1B498B270(v21, v34, &qword_1EB8AB7C0, &unk_1B4D47180);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v23, v19, &qword_1EB8AB7C0, &unk_1B4D47180);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4B913A0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unint64_t *a9, void (*a10)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v140 = a7;
  v141 = a8;
  v12 = a6;
  v14 = v11;
  v123 = a1;
  v131 = a10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v134 = *(v138 - 8);
  v17 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v126 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v120 - v24;
  v25 = *(a3 + 8);
  v128 = a3;
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_97:
    a4 = *v123;
    if (!*v123)
    {
      goto LABEL_137;
    }

    v10 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v114 = v10;
    }

    else
    {
LABEL_131:
      v114 = sub_1B4CDDE84(v10);
    }

    v145 = v114;
    v10 = *(v114 + 2);
    if (v10 >= 2)
    {
      v115 = v131;
      do
      {
        v116 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v117 = *&v114[16 * v10];
        v118 = v114;
        a3 = *&v114[16 * v10 + 24];
        v115(v116 + *(v134 + 72) * v117, v116 + *(v134 + 72) * *&v114[16 * v10 + 16], v116 + *(v134 + 72) * a3, a4);
        if (v14)
        {
          break;
        }

        if (a3 < v117)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1B4CDDE84(v118);
        }

        if (v10 - 2 >= *(v118 + 2))
        {
          goto LABEL_125;
        }

        v119 = &v118[16 * v10];
        *v119 = v117;
        *(v119 + 1) = a3;
        v145 = v118;
        sub_1B4CDDDF8(v10 - 1);
        v114 = v145;
        v10 = *(v145 + 2);
        a3 = v128;
      }

      while (v10 > 1);
    }

LABEL_109:

    return;
  }

  v26 = 0;
  v139 = a9;
  v27 = MEMORY[0x1E69E7CC0];
  v122 = a4;
  v144 = v12;
  while (1)
  {
    v127 = v27;
    if (v26 + 1 >= v25)
    {
      v38 = v26 + 1;
    }

    else
    {
      v135 = v25;
      v121 = v14;
      v130 = *a3;
      v28 = v130;
      v29 = *(v134 + 72);
      v30 = v130 + v29 * (v26 + 1);
      v31 = v12;
      v32 = v142;
      sub_1B4974FBC(v30, v142, a5, v31);
      v33 = v143;
      sub_1B4974FBC(v28 + v29 * v26, v143, a5, v31);
      v124 = v26;
      v35 = v140;
      v34 = v141;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v140, v141);
      v132 = sub_1B4B9474C(v139, v35, v34);
      LODWORD(v133) = sub_1B4D180EC();
      sub_1B4975024(v33, a5, v31);
      sub_1B4975024(v32, a5, v31);
      v36 = v124 + 2;
      v136 = v29;
      v37 = v130 + v29 * (v124 + 2);
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        v39 = v142;
        v40 = v144;
        sub_1B4974FBC(v37, v142, a5, v144);
        v41 = v143;
        sub_1B4974FBC(v30, v143, a5, v40);
        v42 = sub_1B4D180EC() & 1;
        sub_1B4975024(v41, a5, v40);
        sub_1B4975024(v39, a5, v40);
        ++v36;
        v37 += v136;
        v30 += v136;
        if ((v133 & 1) != v42)
        {
          v38 = v36 - 1;
          goto LABEL_9;
        }
      }

      v14 = v121;
      a3 = v128;
      a4 = v122;
      v26 = v124;
      if ((v133 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v38 < v124)
      {
        goto LABEL_128;
      }

      if (v124 < v38)
      {
        v43 = v136 * (v38 - 1);
        v44 = v38 * v136;
        v45 = v38;
        v46 = v124 * v136;
        do
        {
          if (v26 != --v45)
          {
            v47 = *a3;
            if (!v47)
            {
              goto LABEL_134;
            }

            v48 = v38;
            v10 = v47 + v46;
            sub_1B498B270(v47 + v46, v126, a5, v144);
            if (v46 < v43 || v10 >= v47 + v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B498B270(v126, v47 + v43, a5, v144);
            a3 = v128;
            v38 = v48;
          }

          ++v26;
          v43 -= v136;
          v44 -= v136;
          v46 += v136;
        }

        while (v26 < v45);
        v14 = v121;
        a4 = v122;
        v12 = v144;
        v26 = v124;
      }

      else
      {
LABEL_23:
        v12 = v144;
      }
    }

    v49 = *(a3 + 8);
    if (v38 < v49)
    {
      if (__OFSUB__(v38, v26))
      {
        goto LABEL_127;
      }

      if (v38 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_129;
        }

        if ((v26 + a4) >= v49)
        {
          v50 = *(a3 + 8);
        }

        else
        {
          v50 = v26 + a4;
        }

        if (v50 < v26)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v38 != v50)
        {
          break;
        }
      }
    }

    v51 = v38;
    if (v38 < v26)
    {
      goto LABEL_126;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v127;
    }

    else
    {
      v27 = sub_1B4A1D58C(0, *(v127 + 2) + 1, 1, v127);
    }

    a4 = *(v27 + 2);
    v52 = *(v27 + 3);
    v10 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      v27 = sub_1B4A1D58C((v52 > 1), a4 + 1, 1, v27);
    }

    *(v27 + 2) = v10;
    v53 = &v27[16 * a4];
    *(v53 + 4) = v26;
    *(v53 + 5) = v51;
    v54 = *v123;
    if (!*v123)
    {
      goto LABEL_136;
    }

    v129 = v51;
    if (a4)
    {
      v55 = v54;
      while (1)
      {
        v56 = v10 - 1;
        if (v10 >= 4)
        {
          break;
        }

        if (v10 == 3)
        {
          v57 = *(v27 + 4);
          v58 = *(v27 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_55:
          if (v60)
          {
            goto LABEL_115;
          }

          v73 = &v27[16 * v10];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_118;
          }

          v79 = &v27[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_122;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v10 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v83 = &v27[16 * v10];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_69:
        if (v78)
        {
          goto LABEL_117;
        }

        v86 = &v27[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v56 - 1;
        if (v56 - 1 >= v10)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v94 = v27;
        v10 = *&v27[16 * a4 + 32];
        v95 = *&v27[16 * v56 + 40];
        v131(*a3 + *(v134 + 72) * v10, *a3 + *(v134 + 72) * *&v27[16 * v56 + 32], *a3 + *(v134 + 72) * v95, v55);
        if (v14)
        {
          goto LABEL_109;
        }

        if (v95 < v10)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1B4CDDE84(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_112;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v10;
        *(v96 + 5) = v95;
        v145 = v94;
        sub_1B4CDDDF8(v56);
        v27 = v145;
        v10 = *(v145 + 2);
        v12 = v144;
        if (v10 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v27[16 * v10 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_113;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_114;
      }

      v68 = &v27[16 * v10];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_116;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_119;
      }

      if (v72 >= v64)
      {
        v90 = &v27[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_123;
        }

        if (v59 < v93)
        {
          v56 = v10 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v25 = *(a3 + 8);
    v26 = v129;
    a4 = v122;
    if (v129 >= v25)
    {
      goto LABEL_97;
    }
  }

  v121 = v14;
  v97 = *a3;
  v98 = v38;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(v140, v141);
  v100 = v98;
  v10 = v99;
  v101 = *(v134 + 72);
  v102 = v97 + v101 * (v98 - 1);
  a4 = -v101;
  v124 = v26;
  v125 = v101;
  v103 = v26 - v100;
  v136 = v97;
  v104 = v97 + v100 * v101;
  v129 = v50;
LABEL_87:
  v135 = v100;
  v130 = v104;
  v105 = v104;
  v132 = v103;
  v133 = v102;
  v106 = v103;
  v107 = v102;
  while (1)
  {
    v108 = v142;
    sub_1B4974FBC(v105, v142, a5, v12);
    v109 = v143;
    sub_1B4974FBC(v107, v143, a5, v144);
    sub_1B4B9474C(v139, v140, v141);
    v110 = sub_1B4D180EC();
    v111 = v109;
    v12 = v144;
    sub_1B4975024(v111, a5, v144);
    sub_1B4975024(v108, a5, v12);
    if ((v110 & 1) == 0)
    {
LABEL_86:
      v100 = v135 + 1;
      v102 = v133 + v125;
      v103 = v132 - 1;
      v51 = v129;
      v104 = v130 + v125;
      if (v135 + 1 != v129)
      {
        goto LABEL_87;
      }

      v14 = v121;
      a3 = v128;
      v26 = v124;
      if (v129 < v124)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (!v136)
    {
      break;
    }

    v112 = v137;
    sub_1B498B270(v105, v137, a5, v12);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B498B270(v112, v107, a5, v12);
    v107 += a4;
    v105 += a4;
    if (__CFADD__(v106++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

void sub_1B4B91D58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v53 = a1;
  v52 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v29 = v27;
      v43 = a4;
      v44 = v28;
      v47 = v8;
      v50 = a1;
      do
      {
        v41 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v45 = v30;
        v46 = v31;
        while (1)
        {
          if (v30 <= a1)
          {
            v53 = v30;
            v51 = v41;
            goto LABEL_58;
          }

          v33 = a3;
          v42 = v27;
          v34 = a3 + v28;
          v35 = v29 + v28;
          v36 = v48;
          sub_1B4974FBC(v35, v48, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          v37 = v31;
          v38 = v49;
          sub_1B4974FBC(v37, v49, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
          sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
          v39 = sub_1B4D180EC();
          sub_1B4975024(v38, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          sub_1B4975024(v36, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          if (v39)
          {
            break;
          }

          v27 = v35;
          a3 = v34;
          if (v33 < v29 || v34 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v46;
            a1 = v50;
          }

          else
          {
            v31 = v46;
            a1 = v50;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v32 = v35 > v43;
          v28 = v44;
          v30 = v45;
          if (!v32)
          {
            a2 = v45;
            goto LABEL_57;
          }
        }

        a3 = v34;
        if (v33 < v45 || v34 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          a1 = v50;
          v28 = v44;
        }

        else
        {
          a2 = v46;
          v27 = v42;
          a1 = v50;
          v28 = v44;
          if (v33 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v43);
    }

LABEL_57:
    v53 = a2;
    v51 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v51 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = v8;
      v44 = v14;
      v45 = a3;
      v20 = v49;
      do
      {
        v50 = a1;
        v21 = v48;
        v22 = a2;
        sub_1B4974FBC(a2, v48, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        sub_1B4974FBC(a4, v20, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
        v23 = sub_1B4D180EC();
        sub_1B4975024(v20, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        sub_1B4975024(v21, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        if (v23)
        {
          v24 = v44;
          a2 += v44;
          v25 = v50;
          if (v50 < v22 || v50 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v50 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v24 = v44;
          v26 = a4 + v44;
          v25 = v50;
          if (v50 < a4 || v50 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v50 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v26;
          a4 += v24;
        }

        a1 = v25 + v24;
        v53 = a1;
      }

      while (a4 < v46 && a2 < v45);
    }
  }

LABEL_58:
  sub_1B4CDDE98(&v53, &v52, &v51);
}

void sub_1B4B9230C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v53 = a1;
  v52 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v29 = v27;
      v43 = a4;
      v44 = v28;
      v47 = v8;
      v50 = a1;
      do
      {
        v41 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v45 = v30;
        v46 = v31;
        while (1)
        {
          if (v30 <= a1)
          {
            v53 = v30;
            v51 = v41;
            goto LABEL_58;
          }

          v33 = a3;
          v42 = v27;
          v34 = a3 + v28;
          v35 = v29 + v28;
          v36 = v48;
          sub_1B4974FBC(v35, v48, &qword_1EB8AB7C0, &unk_1B4D47180);
          v37 = v31;
          v38 = v49;
          sub_1B4974FBC(v37, v49, &qword_1EB8AB7C0, &unk_1B4D47180);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
          sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
          v39 = sub_1B4D180EC();
          sub_1B4975024(v38, &qword_1EB8AB7C0, &unk_1B4D47180);
          sub_1B4975024(v36, &qword_1EB8AB7C0, &unk_1B4D47180);
          if (v39)
          {
            break;
          }

          v27 = v35;
          a3 = v34;
          if (v33 < v29 || v34 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v46;
            a1 = v50;
          }

          else
          {
            v31 = v46;
            a1 = v50;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v32 = v35 > v43;
          v28 = v44;
          v30 = v45;
          if (!v32)
          {
            a2 = v45;
            goto LABEL_57;
          }
        }

        a3 = v34;
        if (v33 < v45 || v34 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          a1 = v50;
          v28 = v44;
        }

        else
        {
          a2 = v46;
          v27 = v42;
          a1 = v50;
          v28 = v44;
          if (v33 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v43);
    }

LABEL_57:
    v53 = a2;
    v51 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v51 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = v8;
      v44 = v14;
      v45 = a3;
      v20 = v49;
      do
      {
        v50 = a1;
        v21 = v48;
        v22 = a2;
        sub_1B4974FBC(a2, v48, &qword_1EB8AB7C0, &unk_1B4D47180);
        sub_1B4974FBC(a4, v20, &qword_1EB8AB7C0, &unk_1B4D47180);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
        v23 = sub_1B4D180EC();
        sub_1B4975024(v20, &qword_1EB8AB7C0, &unk_1B4D47180);
        sub_1B4975024(v21, &qword_1EB8AB7C0, &unk_1B4D47180);
        if (v23)
        {
          v24 = v44;
          a2 += v44;
          v25 = v50;
          if (v50 < v22 || v50 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v50 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v24 = v44;
          v26 = a4 + v44;
          v25 = v50;
          if (v50 < a4 || v50 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v50 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v26;
          a4 += v24;
        }

        a1 = v25 + v24;
        v53 = a1;
      }

      while (a4 < v46 && a2 < v45);
    }
  }

LABEL_58:
  sub_1B4CDDEAC(&v53, &v52, &v51);
}

unint64_t sub_1B4B928C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor();
  v7 = *(v6 - 8);
  v115 = v6;
  v116 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v112 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  Descriptor = &v93 - v22;
  v23 = type metadata accessor for WorkoutPropertiesQuery();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1B4D1777C();
  v27 = *(v118 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v35, a1, a2, v33);
  v36 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v35, v36, a2, a3);
  v38 = *(v37 + 16);
  v39 = 32;
  while (v38)
  {
    v40 = *(v37 + v39);
    v39 += 8;
    --v38;
    if (v40 == 1)
    {
      v109 = v18;
      v102 = v10;

      v41 = v23;
      v42 = v117;
      (*(a3 + 80))(a2, a3);
      v101 = v27;
      v107 = *(v27 + 16);
      v107(v26, v42, v118);
      v43 = v115;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1B4D1A800;
      v45 = *(a3 + 56);
      v103 = v35;
      v105 = a2;
      v46 = v45(a2, a3);
      v47 = [v46 effectiveTypeIdentifier];

      *(v44 + 32) = v47;
      v48 = MEMORY[0x1E69E7CC0];
      v49 = &v26[v41[5]];
      *v49 = MEMORY[0x1E69E7CC0];
      *(v49 + 1) = v48;
      *(v49 + 2) = v48;
      *(v49 + 3) = v44;
      *(v49 + 4) = v48;
      *(v49 + 5) = v48;
      *&v26[v41[6]] = &unk_1F2CBB050;
      v100 = v41;
      *&v26[v41[7]] = &unk_1F2CBB078;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF58, &qword_1B4D325E8);
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF60, &qword_1B4D325F0);
      v50 = (*(*(v113 - 8) + 80) + 32) & ~*(*(v113 - 8) + 80);
      v97 = *(*(v113 - 8) + 72);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1B4D1AA70;
      v99 = v51;
      v108 = v51 + v50;
      *(v51 + v50) = 2;
      v52 = Descriptor;
      v98 = v27 + 16;
      v107(Descriptor, v117, v118);
      swift_storeEnumTagMultiPayload();
      v53 = v26;
      v54 = v43;
      v55 = v116;
      v56 = *(v116 + 56);
      v95 = v116 + 56;
      v94 = v56;
      v56(v52, 0, 1, v43);
      v57 = v52;
      v58 = v110;
      sub_1B4974FBC(v57, v110, &qword_1EB8A67A8, &qword_1B4D1E060);
      v59 = *(v55 + 48);
      v60 = v59(v58, 1, v43);
      v104 = v30;
      v106 = v53;
      v116 = v55 + 48;
      v96 = v59;
      if (v60 == 1)
      {
        v61 = v111;
        sub_1B4B94680(v53, v111);
        if (v59(v58, 1, v54) != 1)
        {
          sub_1B4975024(v58, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v61 = v111;
        sub_1B4B946E4(v58, v111, type metadata accessor for DateRangeDescriptor);
      }

      v68 = v108;
      v69 = v108 + *(v113 + 48);
      v70 = *v49;
      v71 = *(v49 + 1);
      v73 = *(v49 + 2);
      v72 = *(v49 + 3);
      v74 = *(v49 + 4);
      v75 = *(v49 + 5);
      sub_1B4B94680(v61, v69);

      sub_1B49BFEC0(v61, type metadata accessor for DateRangeDescriptor);
      v76 = v100;
      v77 = (v69 + v100[5]);
      *v77 = v70;
      v77[1] = v71;
      v77[2] = v73;
      v77[3] = v72;
      v77[4] = v74;
      v77[5] = v75;
      *(v69 + v76[6]) = &unk_1F2CBB050;
      *(v69 + v76[7]) = &unk_1F2CBB078;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v78 = v68 + v97;
      *(v68 + v97) = 3;
      v79 = v109;
      v107(v109, v117, v118);
      v80 = v115;
      swift_storeEnumTagMultiPayload();
      v94(v79, 0, 1, v80);
      v81 = v112;
      sub_1B4974FBC(v79, v112, &qword_1EB8A67A8, &qword_1B4D1E060);
      v82 = v96;
      if (v96(v81, 1, v80) == 1)
      {
        v83 = v102;
        sub_1B4B94680(v106, v102);
        if (v82(v81, 1, v80) != 1)
        {
          sub_1B4975024(v81, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v83 = v102;
        sub_1B4B946E4(v81, v102, type metadata accessor for DateRangeDescriptor);
      }

      v84 = v78 + *(v113 + 48);
      v85 = *v49;
      v86 = *(v49 + 1);
      v87 = *(v49 + 2);
      v88 = *(v49 + 3);
      v89 = *(v49 + 4);
      v90 = *(v49 + 5);
      sub_1B4B94680(v83, v84);

      sub_1B49BFEC0(v83, type metadata accessor for DateRangeDescriptor);
      v91 = (v84 + v76[5]);
      *v91 = v85;
      v91[1] = v86;
      v91[2] = v87;
      v91[3] = v88;
      v91[4] = v89;
      v91[5] = v90;
      *(v84 + v76[6]) = &unk_1F2CBB050;
      *(v84 + v76[7]) = &unk_1F2CBB078;
      sub_1B4975024(v109, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v67 = sub_1B4C95FE8(v99);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v106, type metadata accessor for WorkoutPropertiesQuery);
      (*(v101 + 8))(v117, v118);
      v30 = v104;
      a2 = v105;
      v35 = v103;
      goto LABEL_18;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v62 = sub_1B4D17F6C();
  __swift_project_value_buffer(v62, qword_1EDC36F00);
  v63 = sub_1B4D17F5C();
  v64 = sub_1B4D1873C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v119 = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D62220, &v119);
    _os_log_impl(&dword_1B4953000, v63, v64, "%s does not support this workout state", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1B8C7DDA0](v66, -1, -1);
    MEMORY[0x1B8C7DDA0](v65, -1, -1);
  }

  v67 = sub_1B4C95FE8(MEMORY[0x1E69E7CC0]);
LABEL_18:
  (*(v30 + 8))(v35, a2);
  return v67;
}

uint64_t sub_1B4B933AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7A8, &qword_1B4D35930) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4[36] = v11;
  v12 = *(v11 - 8);
  v4[37] = v12;
  v13 = *(v12 + 64) + 15;
  v4[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v4[41] = v15;
  v16 = *(v15 - 8);
  v4[42] = v16;
  v17 = *(v16 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v19 = type metadata accessor for WorkoutState();
  v4[47] = v19;
  v20 = *(v19 - 8);
  v4[48] = v20;
  v21 = *(v20 + 64) + 15;
  v4[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B936F0, 0, 0);
}

uint64_t sub_1B4B936F0()
{
  v121 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  sub_1B4974FBC(v0[26], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[46], &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_14:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v26 = sub_1B4D17F6C();
    __swift_project_value_buffer(v26, qword_1EDC36F00);
    v27 = sub_1B4D17F5C();
    v28 = sub_1B4D1873C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v119 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D62220, &v119);
      _os_log_impl(&dword_1B4953000, v27, v28, "Context or snapshots don't exist for %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1B8C7DDA0](v30, -1, -1);
      MEMORY[0x1B8C7DDA0](v29, -1, -1);
    }

LABEL_19:
    v117 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v5 = v0[49];
  sub_1B4B946E4(v0[46], v5, type metadata accessor for WorkoutState);
  v6 = sub_1B4CAC70C(v5);
  v7 = *(v6 + 2);
  v8 = 32;
  do
  {
    if (!v7)
    {
      v24 = v0[49];
LABEL_10:

      goto LABEL_11;
    }

    v9 = *&v6[v8];
    v8 += 8;
    --v7;
  }

  while (v9 != 1);
  v116 = v4;
  v10 = v0[24];

  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v0[22] = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6808, &unk_1B4D1AB20);
  v119 = sub_1B4D181CC();
  v120 = v13;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  v114 = v0;
  MEMORY[0x1B8C7C620](0xD00000000000001DLL, 0x80000001B4D4AAF0);

  (*(v12 + 8))(v119, v120, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v11, v12);

  v14 = v0[18];
  if (!v14)
  {
    v25 = v0[49];
    goto LABEL_13;
  }

  v15 = v0[16];
  v16 = v0[17];
  v18 = v10[3];
  v17 = v10[4];
  __swift_project_boxed_opaque_existential_1(v0[24], v18);
  v0[23] = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  v119 = sub_1B4D181CC();
  v120 = v19;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v17 + 8))(v119, v120, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v18, v17);

  v20 = v0[21];
  if (!v20)
  {
    v24 = v0[49];
    goto LABEL_10;
  }

  v21 = v0[19];
  v22 = v0[20];
  v23 = v0[40];
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  sub_1B4CE458C(v0 + 10, v14, v23);
  v44 = v0[41];
  v43 = v0[42];
  v45 = v0[40];

  v46 = *(v43 + 48);
  v47 = v46(v45, 1, v44);
  if (v47 == 1)
  {
    v24 = v0[49];
    v48 = v0[40];

    sub_1B4975024(v48, &qword_1EB8A7978, &unk_1B4D1F2F0);
LABEL_11:
    v25 = v24;
LABEL_13:
    sub_1B49BFEC0(v25, type metadata accessor for WorkoutState);
    goto LABEL_14;
  }

  v49 = v0[39];
  sub_1B498B270(v0[40], v0[44], &qword_1EB8A6840, &unk_1B4D20FA0);
  sub_1B4CE458C(v0 + 10, v20, v49);
  v50 = v0[41];
  v51 = v0[39];
  if (v46(v51, 1, v50) == 1)
  {
    v52 = v0[49];
    sub_1B4975024(v0[44], &qword_1EB8A6840, &unk_1B4D20FA0);

    sub_1B4975024(v51, &qword_1EB8A7978, &unk_1B4D1F2F0);
    v25 = v52;
    goto LABEL_13;
  }

  v53 = v0[44];
  sub_1B498B270(v51, v0[43], &qword_1EB8A6840, &unk_1B4D20FA0);
  if (*(v53 + *(v50 + 28)) >= 1)
  {
    v54 = v0[44];
    v55 = v0[36];
    sub_1B4D1742C();
  }

  v56 = v0[43];
  v57 = v0[38];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v58 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  v59 = *(v56 + *(v50 + 28));
  v60 = v0[49];
  if (v59 < 1)
  {
    v75 = v0[43];
    v74 = v0[44];
    v76 = v0[37];
    v77 = v0[38];
    v78 = v0[36];

    (*(v76 + 8))(v77, v78);
    sub_1B4975024(v75, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B4975024(v74, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B49BFEC0(v60, type metadata accessor for WorkoutState);
    goto LABEL_19;
  }

  v113 = v59;
  v102 = v0[49];
  v61 = v0[47];
  v62 = v0[37];
  v63 = v20;
  v64 = v114[36];
  v65 = v114[31];
  v105 = v114[30];
  v103 = v114[38];
  v104 = v114[28];
  v106 = v114[27];
  v107 = v114[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7540, &qword_1B4D1E440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  *(inited + 32) = 3;
  v67 = inited + 32;
  *(inited + 40) = v21;
  *(inited + 48) = v22;
  *(inited + 56) = v63;
  v111 = sub_1B4C95564(inited);
  swift_setDeallocating();
  sub_1B4975024(v67, &qword_1EB8A7548, &qword_1B4D1E448);
  v109 = [*(v102 + *(v61 + 24)) effectiveTypeIdentifier];
  (*(v62 + 16))(v65, v103, v64);
  v68 = *(v62 + 56);
  v68(v65, 0, 1, v64);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v69 - 8) + 56))(v104, 1, 1, v69);
  sub_1B4974FBC(v102 + *(v61 + 60), v105, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v106, v107, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v70 = v116(v107, 1, v61);
  v71 = v114[45];
  if (v70 == 1)
  {
    v72 = v114[36];
    v73 = v114[29];
    sub_1B4975024(v71, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v68(v73, 1, 1, v72);
  }

  else
  {
    v79 = v114[45];
    sub_1B4974FBC(v71 + *(v61 + 60), v114[29], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B49BFEC0(v79, type metadata accessor for WorkoutState);
  }

  v80 = v114[49];
  v81 = v114[34];
  v118 = v114[33];
  v83 = v114[31];
  v82 = v114[32];
  v85 = v114[29];
  v84 = v114[30];
  v86 = v114[28];
  v87 = v114[25];
  v88 = swift_task_alloc();
  *(v88 + 16) = v80;
  *(v88 + 24) = v113;
  sub_1B4B8B05C(1, v111, v109, v83, v86, v84, v85, 1, v82, v87, sub_1B4B94620, v88);

  sub_1B4975024(v85, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(v84, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v0 = v114;
  sub_1B4975024(v86, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v83, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v89 = (*(v81 + 48))(v82, 1, v118);
  v90 = v114[49];
  v92 = v114[43];
  v91 = v114[44];
  v93 = v114[37];
  v94 = v114[38];
  v95 = v114[36];
  if (v89 == 1)
  {
    sub_1B4975024(v114[32], &qword_1EB8AB7A8, &qword_1B4D35930);
    (*(v93 + 8))(v94, v95);
    sub_1B4975024(v92, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B4975024(v91, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B49BFEC0(v90, type metadata accessor for WorkoutState);
    goto LABEL_19;
  }

  v97 = v114[34];
  v96 = v114[35];
  sub_1B4B946E4(v114[32], v96, type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7B0, &qword_1B4D35938);
  v98 = *(v97 + 72);
  v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1B4D1A800;
  v117 = v100;
  v101 = v100 + v99;
  v0 = v114;
  sub_1B4B946E4(v96, v101, type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact);
  (*(v93 + 8))(v94, v95);
  sub_1B4975024(v92, &qword_1EB8A6840, &unk_1B4D20FA0);
  sub_1B4975024(v91, &qword_1EB8A6840, &unk_1B4D20FA0);
  sub_1B49BFEC0(v90, type metadata accessor for WorkoutState);
LABEL_20:
  v31 = v0[49];
  v33 = v0[45];
  v32 = v0[46];
  v35 = v0[43];
  v34 = v0[44];
  v37 = v0[39];
  v36 = v0[40];
  v38 = v0[38];
  v39 = v0[35];
  v40 = v0[32];
  v108 = v0[31];
  v110 = v0[30];
  v112 = v0[29];
  v115 = v0[28];

  v41 = v0[1];

  return v41(v117);
}

unint64_t sub_1B4B94438()
{
  result = qword_1EB8AB780;
  if (!qword_1EB8AB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB780);
  }

  return result;
}

unint64_t sub_1B4B9448C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B944BC();
  result = sub_1B4B94510();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B944BC()
{
  result = qword_1EB8AB788;
  if (!qword_1EB8AB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB788);
  }

  return result;
}

unint64_t sub_1B4B94510()
{
  result = qword_1EB8AB790;
  if (!qword_1EB8AB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB790);
  }

  return result;
}

uint64_t sub_1B4B94564(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B945CC(&qword_1EB8AB798);
  result = sub_1B4B945CC(&qword_1EB8AB7A0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B945CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4B9462C()
{
  result = qword_1EB8AB7C8;
  if (!qword_1EB8AB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7C8);
  }

  return result;
}

uint64_t sub_1B4B94680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B946E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B9474C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t WorkoutVoiceLongestDistanceFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceLongestDistanceFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000008ALL;
  }

  else
  {
    result = 0xD000000000000072;
  }

  *v0;
  return result;
}

uint64_t sub_1B4B9484C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000008ALL;
  }

  else
  {
    v4 = 0xD000000000000072;
  }

  if (v3)
  {
    v5 = "ringsPropertiesAllTime";
  }

  else
  {
    v5 = "stance_milestone>.";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000008ALL;
  }

  else
  {
    v7 = 0xD000000000000072;
  }

  if (*a2)
  {
    v8 = "stance_milestone>.";
  }

  else
  {
    v8 = "ringsPropertiesAllTime";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4B948F8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B94978()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4B949E4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B94A60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4B94AC0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000008ALL;
  }

  else
  {
    v2 = 0xD000000000000072;
  }

  if (*v1)
  {
    v3 = "stance_milestone>.";
  }

  else
  {
    v3 = "ringsPropertiesAllTime";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceLongestDistanceFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1BE00;
  [*(v0 + *(v1 + 28)) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v7 = result;
    v8 = sub_1B4D1818C();
    v10 = v9;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v11;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    sub_1B4B94EA4(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v13 = swift_allocObject();
    sub_1B4B94F08(v4, v13 + v12);
    *(v5 + 80) = 0xD000000000000012;
    *(v5 + 88) = 0x80000001B4D4F0E0;
    *(v5 + 96) = sub_1B4B94F6C;
    *(v5 + 104) = v13;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v14 = *(v0 + *(v1 + 24));
    v15 = *&aThisDaythisWee_2[8 * v14];
    v16 = qword_1B4D35A90[v14];
    *(v5 + 128) = 0xD000000000000015;
    *(v5 + 136) = 0x80000001B4D4EFE0;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v17;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WorkoutVoiceLongestDistanceFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceLongestDistanceFact() + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4B94EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B94F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceLongestDistanceFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B94F6C(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutVoiceLongestDistanceFact() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B4B94D64(a1, v4);
}

unint64_t sub_1B4B94FE0()
{
  result = qword_1EB8AB7E0;
  if (!qword_1EB8AB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7E0);
  }

  return result;
}

unint64_t sub_1B4B95038()
{
  result = qword_1EB8AB7E8;
  if (!qword_1EB8AB7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB7F0, &qword_1B4D359F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7E8);
  }

  return result;
}

unint64_t sub_1B4B950A0()
{
  result = qword_1EB8AB7F8;
  if (!qword_1EB8AB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7F8);
  }

  return result;
}

unint64_t sub_1B4B950F8()
{
  result = qword_1EB8AB800;
  if (!qword_1EB8AB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB800);
  }

  return result;
}

unint64_t sub_1B4B9514C(uint64_t a1)
{
  result = sub_1B4B95174();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B95174()
{
  result = qword_1EB8AB808;
  if (!qword_1EB8AB808)
  {
    type metadata accessor for WorkoutVoiceLongestDistanceFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB808);
  }

  return result;
}

void VitalsContext.vitalsDay.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t StreamingAudioComplete.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);

  result = sub_1B4B95270(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1B4B95270(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioComplete.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  sub_1B4B9555C(&qword_1EB8A8AA0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B95388(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v12[1] = *v1;
  v12[2] = v8;
  v13 = v9;
  v10 = sub_1B4B956FC();
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_1B4B9555C(&qword_1EB8A8AA0);
    v4 = sub_1B4D17D6C();
    sub_1B4B95270(v7);
  }

  return v4;
}

uint64_t sub_1B4B954B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4B24BA4(a1, a2, v8);
  if (!v3)
  {
    v6 = v8[1];
    v7 = v9;
    *a3 = v8[0];
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t sub_1B4B9555C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B955A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  sub_1B4B9555C(&qword_1EB8A8AA0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B95644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);

  result = sub_1B4B95270(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1B4B956A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(a1 + 8);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  return result;
}

unint64_t sub_1B4B956FC()
{
  result = qword_1EB8AB810;
  if (!qword_1EB8AB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB810);
  }

  return result;
}

uint64_t static InferenceAvailability.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1B4D18DCC();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1B4B9579C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1B4D18DCC();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1B4B957E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4B95830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}