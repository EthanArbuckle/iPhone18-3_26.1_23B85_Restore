unint64_t sub_1D174FF34(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D1E686AC();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      sub_1D17579AC();
      v23 = sub_1D1E676DC();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D17501EC(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D1E686AC();
    v15 = v13;
    v41 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v42 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = v17;
    do
    {
      v18 = v10;
      v19 = v42 * v12;
      v20 = v15;
      v21 = v16;
      v40(v9, *(a2 + 48) + v42 * v12, v4);
      v22 = *(a2 + 40);
      sub_1D17579AC();
      v23 = sub_1D1E676DC();
      result = (*v39)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v42 * a1;
          v28 = v27 + v19 + v42;
          v29 = v42 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v42 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v12);
          if (a1 != v12 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1D17504B0(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D1E686AC();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_1D17579AC();
      v23 = sub_1D1E676DC();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v40 * a1;
          v29 = v27 + v19 + v40;
          v30 = v40 * a1 < v19 || v28 >= v29;
          v16 = v21;
          if (v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v31 = v40 * a1 == v19;
            v10 = v18;
            if (!v31)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v32 = *(a2 + 56);
          result = (v32 + (a1 << 7));
          v33 = (v32 + (v12 << 7));
          if (a1 != v12 || result >= v33 + 128)
          {
            result = memmove(result, v33, 0x80uLL);
            v15 = v20;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D175076C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 4 * v6);
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v13 = result & v7;
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
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (40 * v3 < (40 * v6) || v18 >= v19 + 40 || v3 != v6)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
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

uint64_t sub_1D1750920(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 4 * v6);
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1750AB4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1D1E6920C();
      v11 = dword_1D1E6F934[v10];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + v3);
      v15 = (v13 + v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for StaticCluster() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
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

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_1D1750CA4(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D1E686AC();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_1D17579AC();
      v23 = sub_1D1E676DC();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1750F5C(int64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D1E686AC();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_1D17579AC();
      v23 = sub_1D1E676DC();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1751214(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1D1E691FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for StaticMatterDevice() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D17513C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_1D1E6920C();
      v12 = v11 >> 5;
      if (v11 >> 5 <= 1)
      {
        if (!v12)
        {
          v14 = 0;
LABEL_12:
          MEMORY[0x1D3892850](v14);
          goto LABEL_16;
        }

        v13 = 1;
      }

      else
      {
        if (v12 == 2)
        {
          v11 &= 0x1Fu;
          v14 = 2;
          goto LABEL_12;
        }

        if (v12 == 3)
        {
          v13 = 3;
        }

        else
        {
          v13 = 4;
        }
      }

      MEMORY[0x1D3892850](v13);
      v11 &= 1u;
LABEL_16:
      MEMORY[0x1D3892850](v11);
      result = sub_1D1E6926C();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_21;
      }

      if (v3 >= v15)
      {
LABEL_21:
        v16 = *(a2 + 48);
        v17 = (v16 + v3);
        v18 = (v16 + v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
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

unint64_t sub_1D17515CC(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1D1E686AC() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 2 * v7);
      result = MEMORY[0x1D3892820](*(a2 + 40), *v12, 2);
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 2 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D1751784(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1D1E691FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

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

uint64_t sub_1D17518F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v11 = 8 * v6;
      v12 = *(a2 + 40);
      v13 = (*(a2 + 48) + 8 * v6);
      v14 = *v13;
      v15 = *(v13 + 4);
      sub_1D1E6920C();
      sub_1D1E6924C();
      v16 = dword_1D1E6F934[v15];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v17 = result & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + v11);
        if (8 * v3 != v11 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 40 * v3;
        v23 = (v21 + 40 * v6);
        if (40 * v3 < (40 * v6) || v22 >= v23 + 40 || v3 != v6)
        {
          v9 = *v23;
          v10 = v23[1];
          *(v22 + 32) = *(v23 + 4);
          *v22 = v9;
          *(v22 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

uint64_t sub_1D1751AD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_1D1E6920C();
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1751C94(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v43 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_1D1E686AC();
    v16 = v14;
    v46 = (v15 + 1) & v14;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v47 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    do
    {
      v19 = v11;
      v20 = v47 * v13;
      v21 = v16;
      v22 = v17;
      v45(v10, *(a2 + 48) + v47 * v13, v5);
      v23 = *(a2 + 40);
      sub_1D17579AC();
      v24 = sub_1D1E676DC();
      result = (*v44)(v10, v5);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v46)
      {
        if (v25 >= v46 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          v29 = v28 + v47 * a1;
          v30 = v28 + v20 + v47;
          v31 = v47 * a1 < v20 || v29 >= v30;
          v17 = v22;
          if (v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v11 = v19;
          }

          else
          {
            v11 = v19;
            if (v47 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = *(a2 + 56);
          v33 = *(*(v43(0) - 8) + 72);
          v34 = v33 * a1;
          result = v32 + v33 * a1;
          v35 = v33 * v13;
          v36 = v32 + v33 * v13 + v33;
          if (v34 < v35 || result >= v36)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v38 = v34 == v35;
            v16 = v21;
            if (!v38)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v46 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D1751FA0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1D1E6920C();
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
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
      v16 = *(*(type metadata accessor for StaticCharacteristic() - 8) + 72);
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

unint64_t sub_1D1752188(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D1E6920C();

      sub_1D1E678EC();
      v13 = sub_1D1E6926C();

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
      v19 = *(*(type metadata accessor for RoomType(0) - 8) + 72);
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

uint64_t sub_1D1752374(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D1E686AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1D1E691FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
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
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

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

id sub_1D17524E4(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1D171D228(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_1D1733C14();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1D1720648(v15, a4 & 1);
    v19 = *v5;
    v10 = sub_1D171D228(a3);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v16)
  {
    v22 = v21[7] + 16 * v10;
    v23 = *v22;
    *v22 = a1;
    v24 = *(v22 + 8);
    *(v22 + 8) = a2;

    return sub_1D1757AE8(v23, v24);
  }

  else
  {
    sub_1D19DB054(v10, a3, a1, a2, v21);

    return a3;
  }
}

uint64_t sub_1D175263C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D1734030();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1720CD0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_1D1E690FC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1D19DB0A0(v11, a2, a3, a1, v22);
}

uint64_t sub_1D1752780(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1D173419C();
      goto LABEL_7;
    }

    sub_1D1720F88(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1D1742188(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1D19DB0E8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_1D1E669FC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_1D17529C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D17420B0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D1734858();
      goto LABEL_7;
    }

    sub_1D172190C(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1D17420B0(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D19DB1DC(v10, a2, a1, v16);
}

_OWORD *sub_1D1752BCC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D171D368(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D1734B04();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D1721C9C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1D171D368(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1D16EEE38(a1, v20);
  }

  else
  {
    sub_1D19DB294(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1D1752D1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticService(0);
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticService);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D1735934();
    goto LABEL_7;
  }

  sub_1D1723194(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DB2FC(v15, v12, a1, v21);
}

uint64_t sub_1D1752EF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticMediaSystem();
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticMediaSystem);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D1735C60();
    goto LABEL_7;
  }

  sub_1D1723634(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DB328(v15, v12, a1, v21);
}

uint64_t sub_1D17530C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticMediaProfile();
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticMediaProfile);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D1735F8C();
    goto LABEL_7;
  }

  sub_1D1723AD4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DB448(v15, v12, a1, v21);
}

uint64_t sub_1D1753298(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticAccessory(0);
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticAccessory);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D17362B8();
    goto LABEL_7;
  }

  sub_1D1723F74(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DB474(v15, v12, a1, v21);
}

uint64_t sub_1D175346C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticHH2Update(0);
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticHH2Update);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D17365E4();
    goto LABEL_7;
  }

  sub_1D1724414(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DB4A0(v15, v12, a1, v21);
}

uint64_t sub_1D1753640(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D408(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D1736C3C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1724D54(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D171D408(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D19DD7E4(v9, a2, a1, v20);
  }
}

uint64_t sub_1D1753764(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StateSnapshot(0);
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StateSnapshot);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D17375D4();
    goto LABEL_7;
  }

  sub_1D1725B48(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DB4CC(v15, v12, a1, v21);
}

id sub_1D1753978(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1D171D368(a5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_1D1737AA0();
      v14 = v22;
      goto LABEL_8;
    }

    sub_1D172629C(v19, a6 & 1);
    v23 = *v7;
    v14 = sub_1D171D368(a5);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v20)
  {
    v26 = v25[7] + 32 * v14;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
    v30 = *(v26 + 24);
    *(v26 + 24) = a4;

    return sub_1D1757A60(v27, v28, v29, v30);
  }

  else
  {
    sub_1D19DB4F8(v14, a5, a1, a2, a3, a4, v25);

    return a5;
  }
}

unint64_t sub_1D1753B88(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D1A4(a3 & 0xFFFFFFFFFFLL);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D1737C6C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1726570(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D171D1A4(a3 & 0xFFFFFFFFFFLL);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;
    v24 = *v23;
    *v23 = a1;
    v25 = *(v23 + 8);
    *(v23 + 8) = a2;

    return sub_1D1757AE8(v24, v25);
  }

  else
  {

    return sub_1D19DB548(v11, a3 & 0xFFFFFFFFFFLL, a1, a2, v22);
  }
}

_OWORD *sub_1D1753CC8(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D63C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D1737E04();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1726860(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D171D63C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_1D16EEE38(a1, v21);
  }

  else
  {

    return sub_1D19DD7E0(v9, a2, a1, v20);
  }
}

uint64_t sub_1D1753DF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D15C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D1738130();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1726EEC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D171D15C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D19DD7DC(v9, a2, a1, v20);
  }
}

_OWORD *sub_1D1753F18(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D1738144();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1726F00(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1D16EEE38(a1, v23);
  }

  else
  {
    sub_1D19DB5E8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1D1754068(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D171D710(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for IconTextValueStringDataHolder();
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for IconTextValueStringDataHolder);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D173859C();
    goto LABEL_7;
  }

  sub_1D17276DC(v17, a3 & 1);
  v24 = *v4;
  v25 = sub_1D171D710(a2);
  if ((v18 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v25;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D1757B28(a2, v11, type metadata accessor for StaticServiceCharacteristicDoublet);
  return sub_1D19DB654(v14, v11, a1, v20);
}

void sub_1D1754214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1D1742188(a5);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_1D1738888();
      goto LABEL_7;
    }

    sub_1D1727BC0(v21, a6 & 1);
    v33 = *v7;
    v34 = sub_1D1742188(a5);
    if ((v22 & 1) == (v35 & 1))
    {
      v18 = v34;
      v24 = *v7;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v15, a5, v11);
      sub_1D19DB740(v18, v15, a1, v37, v38, v39, v24);
      return;
    }

LABEL_15:
    sub_1D1E690FC();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v7;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (v24[7] + 32 * v18);
  v27 = *v25;
  v26 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v30 = v37;
  v31 = v38;
  *v25 = a1;
  v25[1] = v30;
  v32 = v39;
  v25[2] = v31;
  v25[3] = v32;

  sub_1D1757B18(v28);

  sub_1D1757B18(v29);
}

uint64_t sub_1D17544A0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1[1];
  *&v48 = *a1;
  *(&v48 + 1) = v7;
  v8 = a1[3];
  v49 = a1[2];
  v50 = v8;
  v9 = a1[5];
  v51 = a1[4];
  v52 = v9;
  v10 = a1[7];
  v53 = a1[6];
  v54 = v10;
  v11 = a1[9];
  v55 = a1[8];
  v56 = v11;
  v12 = a1[11];
  v57 = a1[10];
  v58 = v12;
  v13 = a1[13];
  v59 = a1[12];
  v60 = v13;
  v14 = a1[15];
  v61 = a1[14];
  v62 = v14;
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v3;
  v22 = sub_1D1742188(a2);
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v21;
  v27 = *(v20 + 24);
  if (v27 >= v25 && (a3 & 1) != 0)
  {
LABEL_7:
    v28 = v62;
    if (v26)
    {
LABEL_8:
      v29 = *(*v4 + 56) + (v22 << 7);
      v30 = *(v29 + 48);
      v32 = *v29;
      v31 = *(v29 + 16);
      v63[2] = *(v29 + 32);
      v63[3] = v30;
      v63[0] = v32;
      v63[1] = v31;
      v33 = *(v29 + 112);
      v35 = *(v29 + 64);
      v34 = *(v29 + 80);
      v63[6] = *(v29 + 96);
      v63[7] = v33;
      v63[4] = v35;
      v63[5] = v34;
      v36 = *(&v48 + 1);
      *v29 = v48;
      *(v29 + 8) = v36;
      v37 = v50;
      *(v29 + 16) = v49;
      *(v29 + 24) = v37;
      v38 = v52;
      *(v29 + 32) = v51;
      *(v29 + 40) = v38;
      v39 = v54;
      *(v29 + 48) = v53;
      *(v29 + 56) = v39;
      v40 = v56;
      *(v29 + 64) = v55;
      *(v29 + 72) = v40;
      v41 = v58;
      *(v29 + 80) = v57;
      *(v29 + 88) = v41;
      v42 = v60;
      *(v29 + 96) = v59;
      *(v29 + 104) = v42;
      *(v29 + 112) = v61;
      *(v29 + 120) = v28;
      return sub_1D1741A30(v63, &qword_1EC642C30, &qword_1D1E6E980);
    }

    goto LABEL_11;
  }

  if (v27 >= v25 && (a3 & 1) == 0)
  {
    sub_1D1738E4C();
    goto LABEL_7;
  }

  sub_1D172844C(v25, a3 & 1);
  v44 = *v4;
  v45 = sub_1D1742188(a2);
  if ((v26 & 1) != (v46 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v22 = v45;
  v28 = v62;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_11:
  v47 = *v4;
  (*(v16 + 16))(v19, a2, v15);
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v77 = v61;
  v78 = v28;
  return sub_1D19DB814(v22, v19, &v64, v47);
}

uint64_t sub_1D1754740(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D17392C8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1728BF8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1D19DB0A0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1D1754888(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D4E0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D17392DC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1728C0C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D171D4E0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for MTRAttributeIDType(0);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 40 * v9;

    return sub_1D1757A04(a1, v21);
  }

  else
  {

    return sub_1D19DB94C(v9, a2, a1, v20);
  }
}

_OWORD *sub_1D17549AC(_OWORD *a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D4E0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173946C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1728EBC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D171D4E0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for MTRAttributeIDType(0);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_1D16EEE38(a1, v21);
  }

  else
  {

    return sub_1D19DB9A4(v9, a2, a1, v20);
  }
}

uint64_t sub_1D1754AD8(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D278(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticCluster();
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticCluster);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D1739780();
    goto LABEL_7;
  }

  sub_1D1729800(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D171D278(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBA58(v10, a2, a1, v16);
}

uint64_t sub_1D1754C2C(uint64_t a1, __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D15C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticEndpoint();
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticEndpoint);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D17399B4();
    goto LABEL_7;
  }

  sub_1D1729B68(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D171D15C(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBA84(v10, a2, a1, v16);
}

void sub_1D1754D80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BatchRequestError.ID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D171D54C(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D1739BE8();
      goto LABEL_7;
    }

    sub_1D1729EB4(v17, a3 & 1);
    v23 = *v4;
    v24 = sub_1D171D54C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D1757B28(a2, v11, type metadata accessor for BatchRequestError.ID);
      sub_1D19DBAB0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1D1E690FC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1D1754F24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_1D1742188(a3);
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
      sub_1D1739E50();
      goto LABEL_9;
    }

    sub_1D172A2E4(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_1D1742188(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    *v27 = v31;
    v27[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_1D19DBB64(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_1D1755100(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D17420B0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticMatterDevice();
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticMatterDevice);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D173A0D0();
    goto LABEL_7;
  }

  sub_1D172A6BC(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D17420B0(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBC24(v10, a2, a1, v16);
}

uint64_t sub_1D1755254(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for MatterStateSnapshot();
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for MatterStateSnapshot);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D173A304();
    goto LABEL_7;
  }

  sub_1D172AA04(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DBCCC(v15, v12, a1, v21);
}

_OWORD *sub_1D1755428(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171DB60(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173A884();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D172B434(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D171DB60(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_1D16EEE38(a1, v21);
  }

  else
  {

    return sub_1D19DBD24(v9, a2, a1, v20);
  }
}

uint64_t sub_1D1755554(uint64_t a1, __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D15C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ActionEndpoint();
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ActionEndpoint);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D173AA00();
    goto LABEL_7;
  }

  sub_1D172B738(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D171D15C(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBD8C(v10, a2, a1, v16);
}

uint64_t sub_1D17556A8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D173AD98();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D172BCF8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 32 * v11;

    return sub_1D1757A78(a1, v23);
  }

  else
  {
    sub_1D19DBE60(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1D17557EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D1A4(a2 & 0xFFFFFFFFFFLL);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173AF4C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D172BFC0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D171D1A4(a2 & 0xFFFFFFFFFFLL);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 40 * v9;

    return sub_1D1757A04(a1, v21);
  }

  else
  {

    return sub_1D19DBEB0(v9, a2 & 0xFFFFFFFFFFLL, a1, v20);
  }
}

id sub_1D1755910(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D171DC34(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D173B6E8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D172CC34(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1D171DC34(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_1D19DBF58(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1D1755AAC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t *), uint64_t (*a7)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  v15 = sub_1D171D140(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      a4();
      v15 = v23;
      goto LABEL_8;
    }

    a5(v20, a3 & 1);
    v24 = *v10;
    v15 = sub_1D171D140(a2);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v10;
  if (v21)
  {
    v27 = (*(v26 + 56) + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return a6(a1, v27);
  }

  else
  {

    return a7(v15, a2, a1, v26);
  }
}

unint64_t sub_1D1755C14(__int16 a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1D171D3B8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_1D173BB28();
      result = v16;
      goto LABEL_8;
    }

    sub_1D172D590(v13, a3 & 1);
    v17 = *v4;
    result = sub_1D171D3B8(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_14:
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 2 * result) = a1;
  }

  else
  {
    sub_1D19DC008(result, a2, a1, v19);

    return a2;
  }

  return result;
}

uint64_t sub_1D1755D44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for HomeState();
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for HomeState);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D173BC84();
    goto LABEL_7;
  }

  sub_1D172D7F4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DC04C(v15, v12, a1, v21);
}

uint64_t sub_1D1755F18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticMatterDevice();
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticMatterDevice);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D1736F7C();
    goto LABEL_7;
  }

  sub_1D1725208(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DC078(v15, v12, a1, v21);
}

uint64_t sub_1D17560EC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1D173BFC4();
    goto LABEL_7;
  }

  sub_1D172DCA8(result, a3 & 1);
  v22 = *v4;
  result = sub_1D1742188(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DC0A4(v15, v12, a1, v21);
}

uint64_t sub_1D175635C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v7 = v6;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1D1742188(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v33();
      goto LABEL_9;
    }

    v34();
    v24 = *v7;
    v25 = sub_1D1742188(a2);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a1;
  v28 = *v7;
  if (v22)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v18);
    *(v29 + 8 * v18) = v27;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    return v35(v18, v15, v27, v28);
  }
}

uint64_t sub_1D175654C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D171DF0C(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D173CC68();
      goto LABEL_7;
    }

    sub_1D172F3C4(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1D171DF0C(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D1757B28(a2, v11, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
      return sub_1D19DC214(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1D17566F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticTelevisionProfile();
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticTelevisionProfile);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D173D168();
    goto LABEL_7;
  }

  sub_1D17301D4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DC330(v15, v12, a1, v21);
}

uint64_t sub_1D17568C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for StaticLightProfile();
      return sub_1D1757B90(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for StaticLightProfile);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1D173D494();
    goto LABEL_7;
  }

  sub_1D1730674(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1D1742188(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D19DC35C(v15, v12, a1, v21);
}

uint64_t sub_1D1756A98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D140(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticCharacteristic();
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticCharacteristic);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D173DAEC();
    goto LABEL_7;
  }

  sub_1D1730FB4(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D171D140(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DC388(v10, a2, a1, v16);
}

uint64_t sub_1D1756BEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D171D2F0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RoomType(0);
      return sub_1D1757B90(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RoomType);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D173E2D0();
    goto LABEL_7;
  }

  sub_1D1731F64(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1D171D2F0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D19DC45C(v12, a2, a3, a1, v18);
}

uint64_t sub_1D1756D98(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v7 = v6;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1D1742188(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  result = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 >= result && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v23 >= result && (a3 & 1) == 0)
  {
    result = v29();
    goto LABEL_9;
  }

  v30();
  v24 = *v7;
  result = sub_1D1742188(a2);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v18 = result;
LABEL_9:
  v26 = a1;
  v27 = *v7;
  if (v22)
  {
    *(*(v27 + 56) + 8 * v18) = v26;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    return v31(v18, v15, v26, v27);
  }

  return result;
}

unint64_t sub_1D1756F58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D17420B0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173E7AC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D17326B0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D17420B0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D19DBF58(v9, a2, a1, v20);
  }
}

uint64_t sub_1D17570D0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v8 = v7;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_1D1742188(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      v34();
      goto LABEL_9;
    }

    v35();
    v25 = *v8;
    v26 = sub_1D1742188(a2);
    if ((v23 & 1) == (v27 & 1))
    {
      v19 = v26;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = a1;
  v29 = *v8;
  if (v23)
  {
    v30 = *(v29 + 56);
    v31 = *(v30 + 8 * v19);
    *(v30 + 8 * v19) = v28;
    v32 = v36;

    return v32(v31);
  }

  else
  {
    (*(v13 + 16))(v16, a2, v12);
    return v37(v19, v16, v28, v29);
  }
}

unint64_t sub_1D17572C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D17420B0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173EE04();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D17330D0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D17420B0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 40 * v9;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 32);
    v25 = *(a1 + 16);
    *v21 = *a1;
    *(v21 + 16) = v25;
    *(v21 + 32) = *(a1 + 32);

    swift_unknownObjectRelease();
  }

  else
  {

    return sub_1D19DC508(v9, a2, a1, v20);
  }
}

void sub_1D1757410(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D1742188(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1D173EFA0();
      goto LABEL_7;
    }

    sub_1D173338C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1D1742188(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1D19DD7D8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_1D1E690FC();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = *(v21 + 56);
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

id sub_1D17575DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1D1757628(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_1D171D2F0(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_1D1734030();
      }
    }

    else
    {
      v32 = v51;
      sub_1D1720CD0(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_1D171D2F0(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1D1716918();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D17579AC()
{
  result = qword_1EE07DD78[0];
  if (!qword_1EE07DD78[0])
  {
    sub_1D1E66A7C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07DD78);
  }

  return result;
}

uint64_t sub_1D1757A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_1D1757A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1757AE8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 3 <= 1)
  {
  }

  return result;
}

double sub_1D1757B00(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1D1757B18(id a1)
{
  if (a1 >= 6)
  {
  }
}

uint64_t sub_1D1757B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1757B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1757BF8(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1757C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

unint64_t sub_1D1757D20()
{
  result = qword_1EE07A030;
  if (!qword_1EE07A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A030);
  }

  return result;
}

unint64_t sub_1D1757D74()
{
  result = qword_1EE07A008;
  if (!qword_1EE07A008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC642E68, &unk_1D1E717F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A008);
  }

  return result;
}

uint64_t static FacesCache.cacheConfiguration<A>(configEvent:fileManager:)(uint64_t a1, void *a2, uint64_t a3, uint8_t *a4)
{
  v109 = a1;
  v110 = a4;
  v100 = a2;
  v5 = sub_1D1E6702C();
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = *(v95 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v94 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a3;
  v93 = *(a3 - 8);
  v9 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v92 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E669FC();
  v102 = *(v11 - 8);
  v103 = v11;
  v12 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v108 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v91 - v16;
  v18 = sub_1D1E6680C();
  v113 = *(v18 - 8);
  v19 = *(v113 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v107 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v97 = v91 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v106 = v91 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v104 = v91 - v26;
  v111 = sub_1D1E66FDC();
  v27 = *(v111 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v111);
  v101 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v91 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v91 - v34;
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v112 = v18;
  v36 = sub_1D1E6701C();
  v37 = __swift_project_value_buffer(v36, qword_1EC642E90);
  sub_1D1E66FCC();
  v98 = v37;
  v38 = sub_1D1E66FFC();
  v39 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v38, v39, v41, "cacheConfigStartToEnd", "", v40, 2u);
    MEMORY[0x1D3893640](v40, -1, -1);
  }

  v42 = v111;
  (*(v27 + 16))(v33, v35, v111);
  v43 = sub_1D1E6705C();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_1D1E6704C();
  v48 = *(v27 + 8);
  v47 = (v27 + 8);
  v99 = v48;
  v48(v35, v42);
  v49 = v110;
  v50 = v105;
  v51 = AnalyticsEvent.effectiveEventName.getter(v105, *(v110 + 1));
  v53 = v52;
  v54 = objc_opt_self();
  v55 = [v54 defaultManager];
  sub_1D1758884(v51, v53, v55, v17);

  v56 = v112;
  v57 = v113;
  if ((*(v113 + 48))(v17, 1, v112) == 1)
  {

    return sub_1D1759EB0(v17);
  }

  else
  {
    v91[0] = v54;
    v91[1] = v46;
    v91[2] = v47;
    v59 = v49;
    v60 = v104;
    (*(v57 + 32))(v104, v17, v56);
    v61 = v97;
    v62 = v57;
    sub_1D1E667AC();
    v63 = v50;
    v64 = v106;
    sub_1D1E667BC();
    v65 = *(v62 + 8);
    v65(v61, v56);
    (*(v59 + 3))(v63, v59);
    sub_1D1E667AC();

    sub_1D1E667BC();
    v113 = v62 + 8;
    v97 = v65;
    v65(v61, v56);
    v66 = v108;
    _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
    sub_1D1E667EC();
    v67 = sub_1D1E677EC();

    v68 = v100;
    v69 = [v100 fileExistsAtPath_];

    if (v69)
    {
      DynamicType = swift_getDynamicType();
      v71 = [v91[0] defaultManager];
      sub_1D175B048(v60, v64, v66, DynamicType, v63, v110);
    }

    else
    {
      v72 = [v91[0] defaultManager];
      sub_1D175A654(v60, v72);

      sub_1D175A98C(v64, v66);
    }

    v73 = v107;
    sub_1D1E667EC();
    v74 = sub_1D1E677EC();

    v75 = [v68 fileExistsAtPath_];

    if ((v75 & 1) == 0)
    {
      v76 = v93;
      v77 = v92;
      (*(v93 + 16))(v92, v109, v63);
      sub_1D1759F18(v73, v77, v63, v110);
      (*(v76 + 8))(v77, v63);
    }

    v78 = sub_1D1E66FFC();
    v79 = v101;
    sub_1D1E6703C();
    v80 = sub_1D1E683DC();
    if (sub_1D1E6855C())
    {

      v81 = v94;
      sub_1D1E6706C();

      v83 = v95;
      v82 = v96;
      if ((*(v95 + 88))(v81, v96) == *MEMORY[0x1E69E93E8])
      {
        v84 = "[Error] Interval already ended";
      }

      else
      {
        (*(v83 + 8))(v81, v82);
        v84 = "";
      }

      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v78, v80, v88, "cacheConfigStartToEnd", v84, v87, 2u);
      MEMORY[0x1D3893640](v87, -1, -1);

      v99(v79, v111);
      (*(v102 + 8))(v108, v103);
      v89 = v112;
      v90 = v97;
      (v97)(v73, v112);
      v90(v106, v89);
      return (v90)(v104, v89);
    }

    else
    {

      v99(v79, v111);
      (*(v102 + 8))(v108, v103);
      v85 = v112;
      v86 = v97;
      (v97)(v73, v112);
      v86(v106, v85);
      return (v86)(v60, v85);
    }
  }
}

const char *FacesCache.SignpostType.name.getter()
{
  v1 = "sendingEvents";
  v2 = "writingToCache";
  if (*v0 != 2)
  {
    v2 = "cacheConfigStartToEnd";
  }

  if (*v0)
  {
    v1 = "readingFromCache";
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

uint64_t sub_1D1758884@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - v10;
  v12 = sub_1D1E6680C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = [objc_opt_self() defaultManager];
  sub_1D17598E0(v20, v11);

  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v44 = *(v13 + 32);
    v44(v19, v11, v12);
    v43 = a1;
    sub_1D1E6679C();
    sub_1D1E667DC();
    v22 = sub_1D1E677EC();

    v23 = [a3 fileExistsAtPath_];

    if ((v23 & 1) == 0)
    {
      v24 = sub_1D1E6677C();
      v45[0] = 0;
      v25 = [a3 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v45];

      if (v25)
      {
        v26 = *(v13 + 8);
        v27 = v45[0];
        v26(v19, v12);
        goto LABEL_7;
      }

      v30 = v45[0];
      v31 = sub_1D1E6656C();

      swift_willThrow();
      if (qword_1EC642118 != -1)
      {
        swift_once();
      }

      v32 = sub_1D1E6709C();
      __swift_project_value_buffer(v32, qword_1EC642E78);

      v33 = sub_1D1E6707C();
      v34 = sub_1D1E6833C();

      v42 = v33;
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v41 = v31;
        v37 = v36;
        v45[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1D1B1312C(v43, a2, v45);
        v38 = v34;
        v39 = v42;
        _os_log_impl(&dword_1D16EC000, v42, v38, "FacesCache - facesCacheDirectory(): Failed to create directory in cachesDirectory for %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1D3893640](v37, -1, -1);
        MEMORY[0x1D3893640](v35, -1, -1);
      }

      else
      {
      }
    }

    (*(v13 + 8))(v19, v12);
LABEL_7:
    v44(a4, v17, v12);
    v21 = 0;
    goto LABEL_8;
  }

  sub_1D1759EB0(v11);
  v21 = 1;
LABEL_8:
  result = (*(v13 + 56))(a4, v21, 1, v12);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1758CE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint8_t *a5)
{
  v114 = a2;
  v125 = a1;
  v132[1] = *MEMORY[0x1E69E9840];
  v115 = a4;
  v7 = *(a4 - 8);
  v8 = *(v7 + 8);
  MEMORY[0x1EEE9AC00](a1);
  v113 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1D1E6702C();
  v10 = *(v108 - 8);
  v11 = *(v10 + 8);
  v12 = MEMORY[0x1EEE9AC00](v108);
  v106 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v98 - v14;
  v122 = sub_1D1E6680C();
  v131 = *(v122 - 8);
  v15 = *(v131 + 8);
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E66FDC();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v107 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v121 = &v98 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v120 = &v98 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v124 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v98 - v28;
  if (qword_1EC642120 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v30 = sub_1D1E6701C();
    v31 = __swift_project_value_buffer(v30, qword_1EC642E90);
    sub_1D1E66FCC();
    v129 = v31;
    v32 = sub_1D1E66FFC();
    v33 = sub_1D1E683EC();
    v34 = sub_1D1E6855C();
    v116 = a5;
    if (v34)
    {
      a5 = swift_slowAlloc();
      *a5 = 0;
      v35 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v32, v33, v35, "sendingEvents", "", a5, 2u);
      MEMORY[0x1D3893640](a5, -1, -1);
    }

    v118 = v18[2];
    v119 = v18 + 2;
    v118(v124, v29, v17);
    v36 = sub_1D1E6705C();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v117 = v36;
    swift_allocObject();
    v105 = sub_1D1E6704C();
    v39 = v18[1];
    ++v18;
    v130 = v39;
    v39(v29, v17);
    sub_1D1E667EC();
    v40 = sub_1D1E677EC();

    v132[0] = 0;
    v29 = [a3 contentsOfDirectoryAtPath:v40 error:v132];

    v41 = v132[0];
    if (!v29)
    {
      break;
    }

    v42 = v7;
    v104 = v10;
    v43 = sub_1D1E67C1C();
    v44 = v41;

    v123 = v43;
    v112 = *(v43 + 16);
    if (!v112)
    {
LABEL_23:

      v10 = v104;
      goto LABEL_30;
    }

    v45 = 0;
    v7 = 0;
    v101 = (v104 + 88);
    v100 = *MEMORY[0x1E69E93E8];
    v99 = (v104 + 8);
    v109 = (v42 + 8);
    v111 = (v131 + 8);
    v46 = (v123 + 40);
    v103 = v17;
    v102 = v18;
    while (v45 < *(v123 + 16))
    {
      v47 = *(v46 - 1) == 0x7478742E65746164 && *v46 == 0xE800000000000000;
      if (v47)
      {
        goto LABEL_23;
      }

      v48 = *(v46 - 1);
      v49 = *v46;
      if (sub_1D1E6904C())
      {
        goto LABEL_23;
      }

      v126 = v46;
      v127 = v45;

      v50 = v120;
      sub_1D1E66FCC();
      v51 = sub_1D1E66FFC();
      v52 = sub_1D1E683EC();
      if (sub_1D1E6855C())
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v51, v52, v54, "readingFromCache", "", v53, 2u);
        MEMORY[0x1D3893640](v53, -1, -1);
      }

      v118(v124, v50, v17);
      v55 = *(v117 + 48);
      v56 = *(v117 + 52);
      swift_allocObject();
      sub_1D1E6704C();
      v130(v50, v17);
      sub_1D1E667AC();

      v57 = sub_1D1E6682C();
      v59 = v121;
      v131 = v7;
      if (v7)
      {
        (*v111)(v128, v122);

        v10 = v104;
        goto LABEL_25;
      }

      v29 = v57;
      v60 = v58;
      v61 = sub_1D1E66FFC();
      sub_1D1E6703C();
      v62 = sub_1D1E683DC();
      if (sub_1D1E6855C())
      {

        v63 = v110;
        sub_1D1E6706C();

        v64 = v63;
        v65 = v108;
        v66 = (*v101)(v64, v108);
        v67 = "[Error] Interval already ended";
        if (v66 != v100)
        {
          (*v99)(v110, v65);
          v67 = "";
        }

        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v61, v62, v69, "readingFromCache", v67, v68, 2u);
        MEMORY[0x1D3893640](v68, -1, -1);
        v17 = v103;
        v18 = v102;
      }

      v70 = v59;
      a3 = v17;
      v71 = v17;
      v72 = v18;
      v130(v70, v71);
      v73 = sub_1D1E65F1C();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      sub_1D1E65F0C();
      v76 = v115;
      a5 = v116;
      v77 = *(v116 + 2);
      v10 = v113;
      v78 = v131;
      sub_1D1E65EFC();
      v131 = v78;
      if (v78)
      {
        (*v111)(v128, v122);

        sub_1D174E7C4(v29, v60);

        v10 = v104;
        v17 = a3;
        goto LABEL_25;
      }

      v79 = v127 + 1;

      v80 = *(a5 + 1);
      AnalyticsEvent.sendLazy()();
      v45 = v79;
      sub_1D174E7C4(v29, v60);

      (*v109)(v10, v76);
      (*v111)(v128, v122);
      v46 = v126 + 2;
      v47 = v112 == v79;
      v18 = v72;
      v17 = a3;
      v7 = v131;
      if (v47)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v81 = v132[0];
  v82 = sub_1D1E6656C();

  v131 = v82;
  swift_willThrow();
LABEL_25:
  if (qword_1EC642118 != -1)
  {
    swift_once();
  }

  v83 = sub_1D1E6709C();
  __swift_project_value_buffer(v83, qword_1EC642E78);
  v84 = sub_1D1E6707C();
  v85 = sub_1D1E6833C();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1D16EC000, v84, v85, "FacesCache - sendEvents(): Failed to read files in directory and send events", v86, 2u);
    MEMORY[0x1D3893640](v86, -1, -1);
  }

LABEL_30:
  v87 = sub_1D1E66FFC();
  v88 = v107;
  sub_1D1E6703C();
  v89 = sub_1D1E683DC();
  v90 = sub_1D1E6855C();
  v91 = v106;
  if (v90)
  {

    sub_1D1E6706C();

    v92 = v108;
    if ((*(v10 + 11))(v91, v108) == *MEMORY[0x1E69E93E8])
    {
      v93 = "[Error] Interval already ended";
    }

    else
    {
      (*(v10 + 1))(v91, v92);
      v93 = "";
    }

    v94 = swift_slowAlloc();
    *v94 = 0;
    v95 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v87, v89, v95, "sendingEvents", v93, v94, 2u);
    MEMORY[0x1D3893640](v94, -1, -1);
  }

  result = (v130)(v88, v17);
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D17598E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E6680C();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 URLsForDirectory:13 inDomains:1];
  v9 = sub_1D1E67C1C();

  if (*(v9 + 16))
  {
    (*(v17 + 16))(v7, v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v4);

    (*(v17 + 32))(a2, v7, v4);
    return (*(v17 + 56))(a2, 0, 1, v4);
  }

  else
  {

    if (qword_1EC642118 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC642E78);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D16EC000, v12, v13, "FacesCache - cacheDirectory(): Failed to find cachesDirectory in FileManager.default", v14, 2u);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v15 = *(v17 + 56);

    return v15(a2, 1, 1, v4);
  }
}

uint64_t sub_1D1759B50()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC642E78);
  __swift_project_value_buffer(v0, qword_1EC642E78);
  return sub_1D1E6708C();
}

uint64_t sub_1D1759C10()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v5, qword_1EC642E90);
  __swift_project_value_buffer(v5, qword_1EC642E90);
  if (qword_1EC642118 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC642E78);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1D1E66FEC();
}

uint64_t sub_1D1759D84@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t FacesCache.SignpostType.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1759EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1759F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = sub_1D1E6680C();
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D1E6702C();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66FDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v60 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  v63 = a3;
  v64 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v23 = sub_1D1E6701C();
  v24 = __swift_project_value_buffer(v23, qword_1EC642E90);
  sub_1D1E66FCC();
  v57 = v24;
  v25 = sub_1D1E66FFC();
  v26 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v27 = v9;
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v25, v26, v29, "writingToCache", "", v28, 2u);
    v30 = v28;
    v9 = v27;
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  (*(v13 + 16))(v19, v21, v12);
  v31 = sub_1D1E6705C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1D1E6704C();
  v34 = *(v13 + 8);
  v61 = v12;
  v34(v21, v12);
  v35 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v36 = sub_1D1E65F8C();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  v39 = *(*(v35 + 8) + 8);
  v40 = sub_1D1E65F6C();
  v42 = v41;

  sub_1D1E668DC();
  sub_1D174E7C4(v40, v42);
  v51 = v61;
  v52 = v59;
  v43 = sub_1D1E66FFC();
  v44 = v60;
  sub_1D1E6703C();
  v45 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    sub_1D1E6706C();

    v46 = v54;
    if ((*(v9 + 88))(v52, v54) == *MEMORY[0x1E69E93E8])
    {
      v47 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v52, v46);
      v47 = "";
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v43, v45, v49, "writingToCache", v47, v48, 2u);
    MEMORY[0x1D3893640](v48, -1, -1);
  }

  v34(v44, v51);
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

void sub_1D175A654(void *a1, void *a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29 = sub_1D1E6680C();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E667EC();
  v8 = sub_1D1E677EC();

  v30[0] = 0;
  v9 = [a2 contentsOfDirectoryAtPath:v8 error:v30];

  v10 = v30[0];
  if (v9)
  {
    v11 = sub_1D1E67C1C();
    v12 = v10;

    v13 = *(v11 + 16);
    if (!v13)
    {
LABEL_7:

      goto LABEL_14;
    }

    v14 = 0;
    v15 = (v4 + 8);
    v16 = (v11 + 40);
    while (v14 < *(v11 + 16))
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      sub_1D1E667AC();

      v19 = sub_1D1E6677C();
      v30[0] = 0;
      LODWORD(v18) = [a2 removeItemAtURL:v19 error:v30];

      if (!v18)
      {
        v23 = v30[0];

        a1 = sub_1D1E6656C();

        swift_willThrow();
        (*v15)(v7, v29);
        goto LABEL_10;
      }

      ++v14;
      v20 = *v15;
      v21 = v30[0];
      v20(v7, v29);
      v16 += 2;
      if (v13 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = v30[0];
    a1 = sub_1D1E6656C();

    swift_willThrow();
LABEL_10:
    if (qword_1EC642118 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v24 = sub_1D1E6709C();
  __swift_project_value_buffer(v24, qword_1EC642E78);
  v25 = sub_1D1E6707C();
  v26 = sub_1D1E6833C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D16EC000, v25, v26, "FacesCache - clearCache(): Failed to clear cache", v27, 2u);
    MEMORY[0x1D3893640](v27, -1, -1);
  }

LABEL_14:
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D175A98C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v47 = a1;
  v48 = sub_1D1E6680C();
  v45 = *(v48 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v3 = sub_1D1E6702C();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E66FDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6701C();
  v17 = __swift_project_value_buffer(v16, qword_1EC642E90);
  sub_1D1E66FCC();
  v43 = v17;
  v18 = sub_1D1E66FFC();
  v19 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v18, v19, v21, "writingToCache", "", v20, 2u);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  (*(v7 + 16))(v13, v15, v6);
  v22 = sub_1D1E6705C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v44 = sub_1D1E6704C();
  v25 = *(v7 + 8);
  v25(v15, v6);
  v26 = sub_1D1E65F8C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D1E669FC();
  sub_1D175BA58(&qword_1EC642EC8, MEMORY[0x1E6969530]);
  v29 = sub_1D1E65F6C();
  v31 = v30;

  sub_1D1E668DC();
  sub_1D174E7C4(v29, v31);
  v39 = v46;
  v32 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v33 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    sub_1D1E6706C();

    v34 = v41;
    if ((*(v41 + 88))(v39, v3) == *MEMORY[0x1E69E93E8])
    {
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v39, v3);
      v35 = "";
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v32, v33, v37, "writingToCache", v35, v36, 2u);
    MEMORY[0x1D3893640](v36, -1, -1);
  }

  return (v25)(v49, v6);
}

uint64_t sub_1D175B048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint8_t *a6)
{
  v78 = a5;
  v79 = a6;
  v77 = a4;
  v84 = a3;
  v80 = a1;
  v7 = sub_1D1E6680C();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D1E6702C();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1D1E669FC();
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1D1E66FDC();
  v87 = *(v16 - 8);
  v17 = *(v87 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v69[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v69[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v69[-v23];
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v25 = sub_1D1E6701C();
  v26 = __swift_project_value_buffer(v25, qword_1EC642E90);
  sub_1D1E66FCC();
  v81 = v26;
  v27 = sub_1D1E66FFC();
  v28 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v29 = swift_slowAlloc();
    v73 = v16;
    v30 = v15;
    v31 = v12;
    v32 = a2;
    v33 = v29;
    *v29 = 0;
    v34 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v27, v28, v34, "readingFromCache", "", v33, 2u);
    v35 = v33;
    a2 = v32;
    v12 = v31;
    v15 = v30;
    v16 = v73;
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  v36 = v87;
  (*(v87 + 16))(v22, v24, v16);
  v37 = sub_1D1E6705C();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_1D1E6704C();
  v41 = *(v36 + 8);
  v41(v24, v16);
  v42 = sub_1D1E6682C();
  v73 = v40;
  v87 = v36 + 8;
  v43 = v42;
  v45 = v44;
  v46 = sub_1D1E65F1C();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  sub_1D1E65F0C();
  sub_1D175BA58(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E65EFC();
  v72 = v43;
  v85 = v45;
  v86 = v15;

  v49 = sub_1D1E66FFC();
  v50 = v82;
  sub_1D1E6703C();
  v51 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v70 = v51;
    v81 = v12;

    v52 = v74;
    sub_1D1E6706C();

    v54 = v75;
    v53 = v76;
    v55 = (*(v75 + 88))(v52, v76);
    v56 = *MEMORY[0x1E69E93E8];
    v71 = a2;
    if (v55 == v56)
    {
      v57 = "[Error] Interval already ended";
    }

    else
    {
      (*(v54 + 8))(v52, v53);
      v57 = "";
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v49, v70, v59, "readingFromCache", v57, v58, 2u);
    MEMORY[0x1D3893640](v58, -1, -1);
    a2 = v71;
    v12 = v81;
  }

  v41(v50, v16);
  v60 = v86;
  v61 = v84;
  sub_1D1E6692C();
  if (v62 >= 86400.0)
  {
    v64 = objc_opt_self();
    v65 = [v64 defaultManager];
    v66 = v12;
    v67 = v80;
    sub_1D1758CE8(v80, v77, v65, v78, v79);

    v68 = [v64 defaultManager];
    sub_1D175A654(v67, v68);

    sub_1D175A98C(a2, v61);
    sub_1D174E7C4(v72, v85);

    return (*(v83 + 8))(v60, v66);
  }

  else
  {
    (*(v83 + 8))(v60, v12);
    sub_1D174E7C4(v72, v85);
  }
}

unint64_t sub_1D175B8B0()
{
  result = qword_1EC642EB0;
  if (!qword_1EC642EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAnalyticsUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HomeAnalyticsUtilities(_WORD *result, int a2, int a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D175BA58(unint64_t *a1, void (*a2)(uint64_t))
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

HomeDataModel::HomeAnalyticsUtilities::TileInteractionArea_optional __swiftcall HomeAnalyticsUtilities.TileInteractionArea.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D175BB70()
{
  result = qword_1EC642ED0;
  if (!qword_1EC642ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642ED0);
  }

  return result;
}

unint64_t sub_1D175BBC8()
{
  result = qword_1EC642ED8;
  if (!qword_1EC642ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642ED8);
  }

  return result;
}

unint64_t sub_1D175BCFC()
{
  result = qword_1EC642EE0;
  if (!qword_1EC642EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EE0);
  }

  return result;
}

unint64_t sub_1D175BD50()
{
  result = qword_1EC642EE8;
  if (!qword_1EC642EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EE8);
  }

  return result;
}

unint64_t HomeAnalyticsUtilities.DisplayedTileContext.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D175BDD4()
{
  result = qword_1EC642EF0;
  if (!qword_1EC642EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EF0);
  }

  return result;
}

uint64_t _s20DisplayedTileContextOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20DisplayedTileContextOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D175C030()
{
  result = qword_1EC642EF8;
  if (!qword_1EC642EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EF8);
  }

  return result;
}

uint64_t HomeAnalyticsUtilities.HomeElementType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 68;
  switch(result)
  {
    case 0:
      goto LABEL_85;
    case 1:
      v2 = 1;
      goto LABEL_85;
    case 2:
      v2 = 2;
      goto LABEL_85;
    case 3:
      v2 = 3;
      goto LABEL_85;
    case 4:
      v2 = 4;
      goto LABEL_85;
    case 5:
      v2 = 5;
      goto LABEL_85;
    case 6:
      v2 = 6;
      goto LABEL_85;
    case 7:
      v2 = 7;
      goto LABEL_85;
    case 8:
      v2 = 8;
      goto LABEL_85;
    case 9:
      v2 = 9;
      goto LABEL_85;
    case 10:
      v2 = 10;
      goto LABEL_85;
    case 11:
      v2 = 11;
      goto LABEL_85;
    case 12:
      v2 = 12;
      goto LABEL_85;
    case 13:
      v2 = 13;
      goto LABEL_85;
    case 14:
      v2 = 14;
      goto LABEL_85;
    case 15:
      v2 = 15;
      goto LABEL_85;
    case 16:
      v2 = 16;
      goto LABEL_85;
    case 17:
      v2 = 17;
      goto LABEL_85;
    case 18:
      v2 = 18;
      goto LABEL_85;
    case 19:
      v2 = 19;
      goto LABEL_85;
    case 20:
      v2 = 20;
      goto LABEL_85;
    case 21:
      v2 = 21;
      goto LABEL_85;
    case 22:
      v2 = 22;
      goto LABEL_85;
    case 23:
      v2 = 23;
      goto LABEL_85;
    case 24:
      v2 = 24;
      goto LABEL_85;
    case 25:
      v2 = 25;
      goto LABEL_85;
    case 26:
      v2 = 26;
      goto LABEL_85;
    case 27:
      v2 = 27;
      goto LABEL_85;
    case 28:
      v2 = 28;
      goto LABEL_85;
    case 29:
      v2 = 29;
      goto LABEL_85;
    case 30:
      v2 = 30;
      goto LABEL_85;
    case 31:
      v2 = 31;
      goto LABEL_85;
    case 32:
      v2 = 32;
      goto LABEL_85;
    case 33:
      v2 = 33;
      goto LABEL_85;
    case 34:
      v2 = 34;
      goto LABEL_85;
    case 35:
      v2 = 35;
      goto LABEL_85;
    case 36:
      v2 = 36;
      goto LABEL_85;
    case 37:
      v2 = 37;
      goto LABEL_85;
    case 38:
      v2 = 38;
      goto LABEL_85;
    case 39:
      v2 = 39;
      goto LABEL_85;
    case 40:
      v2 = 40;
      goto LABEL_85;
    case 41:
      v2 = 41;
      goto LABEL_85;
    case 42:
      v2 = 42;
      goto LABEL_85;
    case 43:
      v2 = 43;
      goto LABEL_85;
    case 44:
      v2 = 44;
      goto LABEL_85;
    case 45:
      v2 = 45;
      goto LABEL_85;
    case 46:
      v2 = 46;
      goto LABEL_85;
    case 47:
      v2 = 47;
      goto LABEL_85;
    case 48:
      v2 = 48;
      goto LABEL_85;
    case 49:
      v2 = 49;
      goto LABEL_85;
    case 50:
      v2 = 50;
      goto LABEL_85;
    case 51:
      v2 = 51;
      goto LABEL_85;
    case 52:
      v2 = 52;
      goto LABEL_85;
    case 53:
      v2 = 53;
      goto LABEL_85;
    case 54:
      v2 = 54;
      goto LABEL_85;
    case 55:
      v2 = 55;
      goto LABEL_85;
    case 56:
      v2 = 56;
      goto LABEL_85;
    case 66:
      v2 = 57;
      goto LABEL_85;
    case 67:
      v2 = 58;
      goto LABEL_85;
    case 68:
      v2 = 59;
      goto LABEL_85;
    case 69:
      v2 = 60;
      goto LABEL_85;
    case 71:
      v2 = 61;
      goto LABEL_85;
    case 72:
      v2 = 62;
      goto LABEL_85;
    case 73:
      v2 = 63;
      goto LABEL_85;
    case 74:
      v2 = 64;
      goto LABEL_85;
    case 75:
      v2 = 65;
      goto LABEL_85;
    case 76:
      v2 = 66;
      goto LABEL_85;
    case 250:
      v2 = 67;
LABEL_85:
      v3 = v2;
      goto LABEL_86;
    case 251:
LABEL_86:
      *a2 = v3;
      break;
    case 252:
      *a2 = 69;
      break;
    case 253:
      *a2 = 70;
      break;
    case 254:
      *a2 = 71;
      break;
    case 255:
      *a2 = 72;
      break;
    case 256:
      *a2 = 73;
      break;
    case 257:
      *a2 = 74;
      break;
    case 258:
      *a2 = 75;
      break;
    case 259:
      *a2 = 76;
      break;
    case 300:
      *a2 = 77;
      break;
    case 301:
      *a2 = 78;
      break;
    case 302:
      *a2 = 79;
      break;
    case 303:
      *a2 = 80;
      break;
    case 304:
      *a2 = 81;
      break;
    case 305:
      *a2 = 82;
      break;
    case 307:
      *a2 = 83;
      break;
    case 308:
      *a2 = 84;
      break;
    case 309:
      *a2 = 85;
      break;
    default:
      *a2 = 86;
      break;
  }

  return result;
}

uint64_t sub_1D175C3E8()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](qword_1D1E70068[v1]);
  return sub_1D1E6926C();
}

uint64_t sub_1D175C470()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](qword_1D1E70068[v1]);
  return sub_1D1E6926C();
}

uint64_t HomeAnalyticsUtilities.HomeElementType.init(accessoryCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *MEMORY[0x1E696C998];
  if (sub_1D1E6781C() == a1 && v7 == a2)
  {
    v10 = 17;
    goto LABEL_8;
  }

  v9 = sub_1D1E6904C();

  if ((v9 & 1) == 0)
  {
    v12 = *MEMORY[0x1E696C9E8];
    if (sub_1D1E6781C() == a1 && v13 == a2)
    {
      v10 = 36;
    }

    else
    {
      v15 = sub_1D1E6904C();

      if (v15)
      {
        v10 = 36;
        goto LABEL_9;
      }

      v16 = *MEMORY[0x1E696C9D0];
      if (sub_1D1E6781C() != a1 || v17 != a2)
      {
        v19 = sub_1D1E6904C();

        if (v19)
        {
          v10 = 35;
          goto LABEL_9;
        }

        v20 = *MEMORY[0x1E696CA10];
        if (sub_1D1E6781C() == a1 && v21 == a2)
        {
          v10 = 42;
          goto LABEL_8;
        }

        v22 = sub_1D1E6904C();

        if (v22)
        {
          v10 = 42;
          goto LABEL_9;
        }

        v23 = *MEMORY[0x1E696C9C0];
        if (sub_1D1E6781C() == a1 && v24 == a2)
        {
          v10 = 29;
          goto LABEL_8;
        }

        v25 = sub_1D1E6904C();

        if (v25)
        {
          v10 = 29;
          goto LABEL_9;
        }

        v26 = *MEMORY[0x1E696C990];
        if (sub_1D1E6781C() == a1 && v27 == a2)
        {
          v10 = 31;
          goto LABEL_8;
        }

        v28 = sub_1D1E6904C();

        if (v28)
        {
          v10 = 31;
          goto LABEL_9;
        }

        v29 = *MEMORY[0x1E696CA38];
        if (sub_1D1E6781C() == a1 && v30 == a2)
        {
          v10 = 47;
          goto LABEL_8;
        }

        v31 = sub_1D1E6904C();

        if (v31)
        {
          v10 = 47;
          goto LABEL_9;
        }

        v32 = *MEMORY[0x1E696C9A8];
        if (sub_1D1E6781C() == a1 && v33 == a2)
        {
          v10 = 20;
          goto LABEL_8;
        }

        v34 = sub_1D1E6904C();

        if (v34)
        {
          v10 = 20;
          goto LABEL_9;
        }

        v35 = *MEMORY[0x1E696C988];
        if (sub_1D1E6781C() == a1 && v36 == a2)
        {
          v10 = 15;
          goto LABEL_8;
        }

        v37 = sub_1D1E6904C();

        if (v37)
        {
          v10 = 15;
          goto LABEL_9;
        }

        v38 = *MEMORY[0x1E696CA50];
        if (sub_1D1E6781C() == a1 && v39 == a2)
        {
          v10 = 52;
          goto LABEL_8;
        }

        v40 = sub_1D1E6904C();

        if (v40)
        {
          v10 = 52;
          goto LABEL_9;
        }

        v41 = *MEMORY[0x1E696CA58];
        if (sub_1D1E6781C() == a1 && v42 == a2)
        {
          v10 = 53;
          goto LABEL_8;
        }

        v43 = sub_1D1E6904C();

        if (v43)
        {
          v10 = 53;
          goto LABEL_9;
        }

        v44 = *MEMORY[0x1E696C9D8];
        if (sub_1D1E6781C() == a1 && v45 == a2)
        {
          v10 = 41;
          goto LABEL_8;
        }

        v46 = sub_1D1E6904C();

        if (v46)
        {
          v10 = 41;
          goto LABEL_9;
        }

        v47 = *MEMORY[0x1E696C9F0];
        if (sub_1D1E6781C() == a1 && v48 == a2)
        {
          v10 = 60;
          goto LABEL_8;
        }

        v49 = sub_1D1E6904C();

        if (v49)
        {
          v10 = 60;
          goto LABEL_9;
        }

        v50 = *MEMORY[0x1E696C9B8];
        if (sub_1D1E6781C() == a1 && v51 == a2)
        {
          v10 = 56;
          goto LABEL_8;
        }

        v52 = sub_1D1E6904C();

        if (v52)
        {
          v10 = 56;
          goto LABEL_9;
        }

        v53 = *MEMORY[0x1E696C968];
        if (sub_1D1E6781C() == a1 && v54 == a2)
        {
          v10 = 4;
          goto LABEL_8;
        }

        v55 = sub_1D1E6904C();

        if (v55)
        {
          v10 = 4;
          goto LABEL_9;
        }

        v56 = *MEMORY[0x1E696C950];
        if (sub_1D1E6781C() == a1 && v57 == a2)
        {
LABEL_86:
          v10 = 21;
          goto LABEL_8;
        }

        v58 = sub_1D1E6904C();

        if (v58)
        {
          goto LABEL_91;
        }

        v59 = *MEMORY[0x1E696C940];
        if (sub_1D1E6781C() == a1 && v60 == a2)
        {
          goto LABEL_86;
        }

        v61 = sub_1D1E6904C();

        if (v61)
        {
LABEL_91:
          v10 = 21;
          goto LABEL_9;
        }

        v62 = *MEMORY[0x1E696C958];
        if (sub_1D1E6781C() == a1 && v63 == a2)
        {
LABEL_94:
          v10 = 22;
          goto LABEL_8;
        }

        v64 = sub_1D1E6904C();

        if (v64)
        {
          goto LABEL_99;
        }

        v65 = *MEMORY[0x1E696C948];
        if (sub_1D1E6781C() == a1 && v66 == a2)
        {
          goto LABEL_94;
        }

        v67 = sub_1D1E6904C();

        if (v67)
        {
LABEL_99:
          v10 = 22;
          goto LABEL_9;
        }

        v68 = *MEMORY[0x1E696CA08];
        if (sub_1D1E6781C() == a1 && v69 == a2)
        {
          v10 = 25;
          goto LABEL_8;
        }

        v70 = sub_1D1E6904C();

        if (v70)
        {
          v10 = 25;
          goto LABEL_9;
        }

        v71 = *MEMORY[0x1E696C9A0];
        if (sub_1D1E6781C() == a1 && v72 == a2)
        {
LABEL_107:
          v10 = 18;
          goto LABEL_8;
        }

        v73 = sub_1D1E6904C();

        if (v73)
        {
          goto LABEL_112;
        }

        v74 = *MEMORY[0x1E696C9F8];
        if (sub_1D1E6781C() == a1 && v75 == a2)
        {
          goto LABEL_107;
        }

        v76 = sub_1D1E6904C();

        if (v76)
        {
LABEL_112:
          v10 = 18;
          goto LABEL_9;
        }

        v77 = *MEMORY[0x1E696CA20];
        if (sub_1D1E6781C() == a1 && v78 == a2)
        {
LABEL_115:
          v10 = 45;
          goto LABEL_8;
        }

        v79 = sub_1D1E6904C();

        if (v79)
        {
          goto LABEL_123;
        }

        v80 = *MEMORY[0x1E696CA28];
        if (sub_1D1E6781C() == a1 && v81 == a2)
        {
          goto LABEL_115;
        }

        v82 = sub_1D1E6904C();

        if (v82)
        {
          goto LABEL_123;
        }

        v83 = *MEMORY[0x1E696CA30];
        if (sub_1D1E6781C() == a1 && v84 == a2)
        {
          goto LABEL_115;
        }

        v85 = sub_1D1E6904C();

        if (v85)
        {
          goto LABEL_123;
        }

        v86 = *MEMORY[0x1E696C970];
        if (sub_1D1E6781C() == a1 && v87 == a2)
        {
          v10 = 58;
          goto LABEL_8;
        }

        v88 = sub_1D1E6904C();

        if (v88)
        {
          v10 = 58;
          goto LABEL_9;
        }

        v89 = *MEMORY[0x1E696C9B0];
        if (sub_1D1E6781C() == a1 && v90 == a2)
        {
          v10 = 59;
          goto LABEL_8;
        }

        v91 = sub_1D1E6904C();

        if (v91)
        {
          v10 = 59;
          goto LABEL_9;
        }

        v92 = *MEMORY[0x1E696CA18];
        if (sub_1D1E6781C() == a1 && v93 == a2)
        {
          goto LABEL_115;
        }

        v94 = sub_1D1E6904C();

        if (v94)
        {
LABEL_123:
          v10 = 45;
          goto LABEL_9;
        }

        v95 = *MEMORY[0x1E696CA00];
        if (sub_1D1E6781C() == a1 && v96 == a2)
        {
LABEL_142:
          v10 = 39;
          goto LABEL_8;
        }

        v97 = sub_1D1E6904C();

        if (v97)
        {
          goto LABEL_144;
        }

        v98 = *MEMORY[0x1E696C978];
        if (sub_1D1E6781C() == a1 && v99 == a2)
        {
          goto LABEL_142;
        }

        v100 = sub_1D1E6904C();

        if (v100)
        {
LABEL_144:
          v10 = 39;
          goto LABEL_9;
        }

        v101 = *MEMORY[0x1E696CA48];
        if (sub_1D1E6781C() != a1 || v102 != a2)
        {
          v103 = sub_1D1E6904C();

          if ((v103 & 1) == 0)
          {
            v104 = *MEMORY[0x1E696C960];
            if (sub_1D1E6781C() == a1 && v105 == a2)
            {
              goto LABEL_153;
            }

            v106 = sub_1D1E6904C();

            if ((v106 & 1) == 0)
            {
              v107 = *MEMORY[0x1E696C9E0];
              if (sub_1D1E6781C() == a1 && v108 == a2)
              {
                goto LABEL_153;
              }

              v109 = sub_1D1E6904C();

              if ((v109 & 1) == 0)
              {
                v110 = *MEMORY[0x1E696CA40];
                if (sub_1D1E6781C() == a1 && v111 == a2)
                {
                  v10 = 61;
                }

                else
                {
                  v112 = sub_1D1E6904C();

                  if (v112)
                  {
                    v10 = 61;
                    goto LABEL_9;
                  }

                  v113 = *MEMORY[0x1E696C980];
                  if (sub_1D1E6781C() == a1 && v114 == a2)
                  {
                    v10 = 62;
                  }

                  else
                  {
                    v115 = sub_1D1E6904C();

                    if (v115)
                    {
                      v10 = 62;
                      goto LABEL_9;
                    }

                    v116 = *MEMORY[0x1E696C9C8];
                    if (sub_1D1E6781C() != a1 || v117 != a2)
                    {
                      sub_1D1E6904C();
                    }

                    v10 = 0;
                  }
                }

                goto LABEL_8;
              }
            }
          }

          v10 = 50;
          goto LABEL_9;
        }

LABEL_153:
        v10 = 50;
        goto LABEL_8;
      }

      v10 = 35;
    }

LABEL_8:

    goto LABEL_9;
  }

  v10 = 17;
LABEL_9:

  *a3 = v10;
  return result;
}

unint64_t sub_1D175D1D0()
{
  result = qword_1EC642F00;
  if (!qword_1EC642F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F00);
  }

  return result;
}

uint64_t _s15HomeElementTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15HomeElementTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
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
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D175D374()
{
  result = qword_1EC642F08;
  if (!qword_1EC642F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F08);
  }

  return result;
}

HomeDataModel::LaunchSheet_optional __swiftcall LaunchSheet.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::CameraAvailability_optional __swiftcall CameraAvailability.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t Double.metricsDuration.getter(double a1)
{
  if (a1 < 0.0)
  {
    return 0;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 1.84467441e19)
  {
    return a1;
  }

LABEL_9:
  __break(1u);
  return result;
}

float Double.metricsTimeToStartStream.getter(double a1)
{
  if (a1 <= 0.0)
  {
    return 0.0;
  }

  return a1;
}

unint64_t sub_1D175D5E0()
{
  result = qword_1EC642F10;
  if (!qword_1EC642F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F10);
  }

  return result;
}

unint64_t sub_1D175D638()
{
  result = qword_1EC642F18;
  if (!qword_1EC642F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchSheet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaunchSheet(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CameraAvailability(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CameraAvailability(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D175D92C()
{
  result = qword_1EC642F20;
  if (!qword_1EC642F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F20);
  }

  return result;
}

unint64_t sub_1D175D980()
{
  result = qword_1EC642F28;
  if (!qword_1EC642F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F28);
  }

  return result;
}

HomeDataModel::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::TileGenericItemType_optional __swiftcall TileGenericItemType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::TileItemName_optional __swiftcall TileItemName.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0;
  v3 = 54;
  switch(rawValue)
  {
    case 0uLL:
      goto LABEL_72;
    case 1uLL:
      v2 = 1;
      goto LABEL_72;
    case 2uLL:
      v2 = 2;
      goto LABEL_72;
    case 3uLL:
      v2 = 3;
      goto LABEL_72;
    case 4uLL:
      v2 = 4;
      goto LABEL_72;
    case 5uLL:
      v2 = 5;
      goto LABEL_72;
    case 6uLL:
      v2 = 6;
      goto LABEL_72;
    case 7uLL:
      v2 = 7;
      goto LABEL_72;
    case 8uLL:
      v2 = 8;
      goto LABEL_72;
    case 9uLL:
      v2 = 9;
      goto LABEL_72;
    case 0xAuLL:
      v2 = 10;
      goto LABEL_72;
    case 0xBuLL:
      v2 = 11;
      goto LABEL_72;
    case 0xCuLL:
      v2 = 12;
      goto LABEL_72;
    case 0xDuLL:
      v2 = 13;
      goto LABEL_72;
    case 0xEuLL:
      v2 = 14;
      goto LABEL_72;
    case 0xFuLL:
      v2 = 15;
      goto LABEL_72;
    case 0x10uLL:
      v2 = 16;
      goto LABEL_72;
    case 0x11uLL:
      v2 = 17;
      goto LABEL_72;
    case 0x12uLL:
      v2 = 18;
      goto LABEL_72;
    case 0x13uLL:
      v2 = 19;
      goto LABEL_72;
    case 0x14uLL:
      v2 = 20;
      goto LABEL_72;
    case 0x15uLL:
      v2 = 21;
      goto LABEL_72;
    case 0x16uLL:
      v2 = 22;
      goto LABEL_72;
    case 0x17uLL:
      v2 = 23;
      goto LABEL_72;
    case 0x18uLL:
      v2 = 24;
      goto LABEL_72;
    case 0x19uLL:
      v2 = 25;
      goto LABEL_72;
    case 0x1AuLL:
      v2 = 26;
      goto LABEL_72;
    case 0x1BuLL:
      v2 = 27;
      goto LABEL_72;
    case 0x1CuLL:
      v2 = 28;
      goto LABEL_72;
    case 0x1DuLL:
      v2 = 29;
      goto LABEL_72;
    case 0x1EuLL:
      v2 = 30;
      goto LABEL_72;
    case 0x1FuLL:
      v2 = 31;
      goto LABEL_72;
    case 0x20uLL:
      v2 = 32;
      goto LABEL_72;
    case 0x21uLL:
      v2 = 33;
      goto LABEL_72;
    case 0x22uLL:
      v2 = 34;
      goto LABEL_72;
    case 0x23uLL:
      v2 = 35;
      goto LABEL_72;
    case 0x24uLL:
      v2 = 36;
      goto LABEL_72;
    case 0x25uLL:
      v2 = 37;
      goto LABEL_72;
    case 0x26uLL:
      v2 = 38;
      goto LABEL_72;
    case 0x27uLL:
      v2 = 39;
      goto LABEL_72;
    case 0x28uLL:
      v2 = 40;
      goto LABEL_72;
    case 0x29uLL:
      v2 = 41;
      goto LABEL_72;
    case 0x2AuLL:
      v2 = 42;
      goto LABEL_72;
    case 0x2BuLL:
      v2 = 43;
      goto LABEL_72;
    case 0x2CuLL:
      v2 = 44;
      goto LABEL_72;
    case 0x2DuLL:
      v2 = 45;
      goto LABEL_72;
    case 0x2EuLL:
      v2 = 46;
      goto LABEL_72;
    case 0x2FuLL:
      v2 = 47;
      goto LABEL_72;
    case 0x30uLL:
      v2 = 48;
      goto LABEL_72;
    case 0x31uLL:
      v2 = 49;
      goto LABEL_72;
    case 0x32uLL:
      v2 = 50;
      goto LABEL_72;
    case 0x33uLL:
      v2 = 51;
      goto LABEL_72;
    case 0x34uLL:
      v2 = 52;
      goto LABEL_72;
    case 0x35uLL:
      v2 = 53;
LABEL_72:
      v3 = v2;
      goto LABEL_73;
    case 0x36uLL:
LABEL_73:
      *v1 = v3;
      break;
    case 0x37uLL:
      *v1 = 55;
      break;
    case 0x38uLL:
      *v1 = 56;
      break;
    case 0x39uLL:
      *v1 = 57;
      break;
    case 0x3AuLL:
      *v1 = 58;
      break;
    case 0x3BuLL:
      *v1 = 59;
      break;
    case 0x3CuLL:
      *v1 = 60;
      break;
    case 0x3DuLL:
      *v1 = 61;
      break;
    case 0x3EuLL:
      *v1 = 62;
      break;
    case 0x3FuLL:
      *v1 = 63;
      break;
    case 0x40uLL:
      *v1 = 64;
      break;
    case 0x41uLL:
      *v1 = 65;
      break;
    case 0x42uLL:
      *v1 = 66;
      break;
    case 0x43uLL:
      *v1 = 67;
      break;
    case 0x44uLL:
      *v1 = 68;
      break;
    case 0x45uLL:
      *v1 = 69;
      break;
    case 0x46uLL:
      *v1 = 70;
      break;
    case 0x47uLL:
      *v1 = 71;
      break;
    default:
      *v1 = 72;
      break;
  }

  return rawValue;
}

HomeDataModel::TileInteractionRoomContext_optional __swiftcall TileInteractionRoomContext.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TileInteractionContext.genericContext.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TileInteractionContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D175E270(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      result = sub_1D175EE34(v7, type metadata accessor for TileInteractionContext);
      v9 = 1;
    }
  }

  else if (result > 4)
  {
    if (result == 5)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }
  }

  else if (result == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  *a1 = v9;
  return result;
}

uint64_t type metadata accessor for TileInteractionContext()
{
  result = qword_1EC642F68;
  if (!qword_1EC642F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D175E270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileInteractionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TileInteractionContext.categoryContext.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TileInteractionContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D175E270(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = 0x907060504030201uLL >> (8 * *v7);
  }

  else
  {
    result = sub_1D175EE34(v7, type metadata accessor for TileInteractionContext);
    LOBYTE(v9) = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t TileInteractionContext.roomContext.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoomType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TileInteractionContext();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D175E270(v2, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1D175EE34(v11, type metadata accessor for TileInteractionContext);
    v13 = 0;
  }

  else
  {
    sub_1D175E564(v11, v7);
    v14 = sub_1D1E66A7C();
    result = (*(*(v14 - 8) + 48))(v7, 4, v14);
    if (result <= 1)
    {
      if (result)
      {
        v13 = 1;
      }

      else
      {
        result = sub_1D175EE34(v7, type metadata accessor for RoomType);
        v13 = 5;
      }
    }

    else if (result == 2)
    {
      v13 = 2;
    }

    else if (result == 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1D175E564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TileInfoBearer.metricsGenericItemName.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticCameraProfile();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticActionSet();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v3, a1);
  if (swift_dynamicCast())
  {
    sub_1D175EE34(v14, type metadata accessor for StaticActionSet);
    v19 = 1;
  }

  else if (swift_dynamicCast())
  {
    sub_1D175EE34(v9, type metadata accessor for StaticCameraProfile);
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  result = (*(v15 + 8))(v18, a1);
  *a2 = v19;
  return result;
}

uint64_t TileInfoBearer.metricsItemName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v40 = type metadata accessor for StaticEndpoint();
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for StaticMediaSystem();
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for StaticMediaProfile();
  v11 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StaticCameraProfile();
  v13 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for StaticActionSet();
  v15 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticServiceGroup();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StaticService(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StaticAccessory(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v33 = &v39 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33, v3, a1);
  if (swift_dynamicCast())
  {
    (*(v52 + 104))(&v54, a1);
    ServiceKind.metricsItemName.getter(&v54 + 2);
    v34 = type metadata accessor for StaticAccessory;
    v35 = v29;
  }

  else
  {
    v36 = v52;
    if (swift_dynamicCast())
    {
      (*(v36 + 104))(&v54 + 1, a1, v36);
      ServiceKind.metricsItemName.getter(&v54 + 2);
      v34 = type metadata accessor for StaticService;
      v35 = v24;
    }

    else
    {
      if (swift_dynamicCast())
      {
        BYTE2(v54) = 1;
        v37 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v20 = v51;
        if (swift_dynamicCast())
        {
          BYTE2(v54) = 2;
          v37 = type metadata accessor for StaticActionSet;
        }

        else
        {
          v20 = v49;
          if (swift_dynamicCast())
          {
            BYTE2(v54) = 3;
            v37 = type metadata accessor for StaticCameraProfile;
          }

          else
          {
            v20 = v47;
            if (swift_dynamicCast())
            {
              BYTE2(v54) = 4;
              v37 = type metadata accessor for StaticMediaProfile;
            }

            else
            {
              v20 = v45;
              if (swift_dynamicCast())
              {
                BYTE2(v54) = 5;
                v37 = type metadata accessor for StaticMediaSystem;
              }

              else
              {
                v20 = v43;
                if (swift_dynamicCast())
                {
                  BYTE2(v54) = 6;
                  v37 = type metadata accessor for StaticMatterDevice;
                }

                else
                {
                  v20 = v41;
                  if (!swift_dynamicCast())
                  {
                    BYTE2(v54) = 8;
                    goto LABEL_21;
                  }

                  BYTE2(v54) = 7;
                  v37 = type metadata accessor for StaticEndpoint;
                }
              }
            }
          }
        }
      }

      v34 = v37;
      v35 = v20;
    }
  }

  sub_1D175EE34(v35, v34);
LABEL_21:
  result = (*(v30 + 8))(v33, a1);
  *v53 = BYTE2(v54);
  return result;
}

uint64_t sub_1D175EE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

HomeDataModel::CameraFaceLayout __swiftcall CameraFaceLayout.init(count:)(Swift::UInt count)
{
  if (count - 1 < 9)
  {
    v2 = count;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return count;
}

HomeDataModel::CameraFaceLayout_optional __swiftcall CameraFaceLayout.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D175EEC0()
{
  result = qword_1EC642F30;
  if (!qword_1EC642F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F30);
  }

  return result;
}

unint64_t sub_1D175EF18()
{
  result = qword_1EC642F38;
  if (!qword_1EC642F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F38);
  }

  return result;
}

unint64_t sub_1D175EF70()
{
  result = qword_1EC642F40;
  if (!qword_1EC642F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F40);
  }

  return result;
}

unint64_t sub_1D175EFC8()
{
  result = qword_1EC642F48;
  if (!qword_1EC642F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F48);
  }

  return result;
}

unint64_t sub_1D175F020()
{
  result = qword_1EC642F50;
  if (!qword_1EC642F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F50);
  }

  return result;
}

unint64_t sub_1D175F078()
{
  result = qword_1EC642F58;
  if (!qword_1EC642F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F58);
  }

  return result;
}

unint64_t sub_1D175F0D0()
{
  result = qword_1EC642F60;
  if (!qword_1EC642F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TileItemName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB9)
  {
    goto LABEL_17;
  }

  if (a2 + 71 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 71) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 71;
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

      return (*a1 | (v4 << 8)) - 71;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 71;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v8 = v6 - 72;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TileItemName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB9)
  {
    v4 = 0;
  }

  if (a2 > 0xB8)
  {
    v5 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
    *result = a2 + 71;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D175F3C4()
{
  result = type metadata accessor for RoomType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModeClusterSemanticTag.Common(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModeClusterSemanticTag.Common(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D175F57C()
{
  result = qword_1EC642F78;
  if (!qword_1EC642F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F78);
  }

  return result;
}

unint64_t sub_1D175F5D0()
{
  result = qword_1EC642F80;
  if (!qword_1EC642F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F80);
  }

  return result;
}

unint64_t sub_1D175F624()
{
  result = qword_1EC642F88;
  if (!qword_1EC642F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F88);
  }

  return result;
}

unint64_t sub_1D175F678()
{
  result = qword_1EC642F90;
  if (!qword_1EC642F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F90);
  }

  return result;
}

unint64_t sub_1D175F6CC()
{
  result = qword_1EC642F98;
  if (!qword_1EC642F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F98);
  }

  return result;
}

unint64_t sub_1D175F720()
{
  result = qword_1EC642FA0;
  if (!qword_1EC642FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FA0);
  }

  return result;
}

unint64_t sub_1D175F774()
{
  result = qword_1EC642FA8;
  if (!qword_1EC642FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FA8);
  }

  return result;
}

uint64_t OSSignposter.withInterval<A>(_:id:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = sub_1D1E66FDC();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D175F8C8, 0, 0);
}

uint64_t sub_1D175F8C8()
{
  v1 = *(v0 + 72);
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v8, v5, "", v7, 2u);
        MEMORY[0x1D3893640](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  v10 = sub_1D1E6705C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_1D1E6704C();
  v17 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1D175FAD8;
  v15 = *(v0 + 64);
  v16 = *(v0 + 24);

  return v17(v16);
}

uint64_t sub_1D175FAD8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D175FC70;
  }

  else
  {
    v3 = sub_1D175FBEC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D175FBEC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1D175FF20(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D175FC70()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1D175FF20(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3();
}

uint64_t OSSignposter.withInterval<A>(_:id:_:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v8 = v7;
  v26 = a7;
  v27 = a6;
  LODWORD(v10) = a3;
  v29 = a2;
  v30 = a1;
  v11 = sub_1D1E66FDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D1E66FFC();
  v17 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v12 + 16))(v15, a4, v11);
    v21 = sub_1D1E6705C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1D1E6704C();
    v28();
    sub_1D175FF20(v8, v30, v29, v10);
  }

  v25 = v10;
  v24 = v7;
  if ((v10 & 1) == 0)
  {
    if (v30)
    {
      v19 = v30;
LABEL_10:
      v10 = swift_slowAlloc();
      *v10 = 0;
      v20 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v16, v17, v20, v19, "", v10, 2u);
      MEMORY[0x1D3893640](v10, -1, -1);

      LOBYTE(v10) = v25;
      v8 = v24;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v30 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v19 = &v31;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D175FF20(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1D1E6702C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v22 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1D1E6706C();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1D3893640](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D17601BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 120) = a3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_1D1E66FDC();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1760288, 0, 0);
}

uint64_t sub_1D1760288()
{
  v1 = *(v0 + 48);
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(v0 + 24);
  if (*(v0 + 120))
  {
LABEL_5:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v6 = *(v0 + 40);
  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v8, v5, "", v7, 2u);
  MEMORY[0x1D3893640](v7, -1, -1);
LABEL_10:

  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 40), *(v0 + 72));
  v9 = sub_1D1E6705C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_1D1E6704C();
  if (qword_1EE07B1C0 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_1D1760474;
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);

  return sub_1D1DD18C0(v14, v13);
}

uint64_t sub_1D1760474(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1760574, 0, 0);
}

uint64_t sub_1D1760574()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_1D175FF20(*(v0 + 48), *(v0 + 24), *(v0 + 32), *(v0 + 120));

  v3 = *(v0 + 8);
  v4 = *(v0 + 112);

  return v3(v4);
}

uint64_t sub_1D17605FC(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = a6;
  v27 = a2;
  LODWORD(v9) = a3;
  v29 = a1;
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a5;
  v15 = sub_1D1E66FFC();
  v16 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v11 + 16))(v14, a4, v10);
    v20 = sub_1D1E6705C();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1D1E6704C();
    v23 = [v26 userActionPredictionController];
    sub_1D175FF20(v28, v29, v27, v9);

    return v23;
  }

  v25 = v6;
  HIDWORD(v24) = v9;
  if ((v9 & 1) == 0)
  {
    if (v29)
    {
      v9 = v29;
LABEL_10:
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v16, v19, v9, "", v18, 2u);
      MEMORY[0x1D3893640](v18, -1, -1);

      LOBYTE(v9) = BYTE4(v24);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v29 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {
      v9 = &v30;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t Action.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for Action.NaturalLightAction(0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for Action.CharacteristicAction(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Action();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1771BF4(v1, v21, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D1771B6C(v21, v6, type metadata accessor for Action.NaturalLightAction);
      MEMORY[0x1D3892850](2);
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v26 = &v6[v3[5]];
      sub_1D1E676EC();
      sub_1D176D4E8(a1, *&v6[v3[6]]);
      v27 = v6[v3[7]];
      sub_1D1E6922C();
      v28 = &v6[v3[8]];
      if (*(v28 + 1))
      {
        v29 = *v28;
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      v41 = type metadata accessor for Action.NaturalLightAction;
      v42 = v6;
      return sub_1D1771C5C(v42, v41);
    }

    v35 = *v21;
    v36 = *(v21 + 1);
    MEMORY[0x1D3892850](3);
    sub_1D1E6922C();
    sub_1D176F5DC(a1, v36);
  }

  if (EnumCaseMultiPayload)
  {
    v30 = *v21;
    v31 = v21[8];
    v32 = *(v21 + 2);
    v33 = v21[24];
    v34 = *(v21 + 4);
    MEMORY[0x1D3892850](1);
    *&v45 = v30;
    BYTE8(v45) = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    Action.MediaPlaybackAction.hash(into:)(a1);
  }

  sub_1D1771B6C(v21, v17, type metadata accessor for Action.CharacteristicAction);
  MEMORY[0x1D3892850](0);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  LOBYTE(v45) = v17[v14[5]];
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v23 = &v17[v14[6]];
  v24 = v23[16];
  v45 = *v23;
  LOBYTE(v46) = v24;
  CharacteristicKind.Value.hash(into:)();
  sub_1D1741C08(&v17[v14[7]], v13, &qword_1EC642590, qword_1D1E71260);
  v25 = v44;
  if ((*(v44 + 48))(v13, 1, v7) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v38 = v43;
    (*(v25 + 32))(v43, v13, v7);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v25 + 8))(v38, v7);
  }

  v39 = &v17[v14[8]];
  if (*(v39 + 1))
  {
    v40 = *v39;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v41 = type metadata accessor for Action.CharacteristicAction;
  v42 = v17;
  return sub_1D1771C5C(v42, v41);
}