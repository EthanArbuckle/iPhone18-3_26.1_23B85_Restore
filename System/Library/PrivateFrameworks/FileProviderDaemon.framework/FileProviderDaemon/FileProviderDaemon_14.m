uint64_t sub_1CF1CF3E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = 16 * v6;
      v11 = *(a2 + 40);
      v12 = *(a2 + 48) + 16 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      sub_1CF9E81D8();
      if (v14)
      {
        if (v14 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v13);
        }

        else
        {
          if (v13)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          MEMORY[0x1D386A470](v15);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v16 = result & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v16)
      {
LABEL_18:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + v10);
        if (16 * v3 != v10 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 32 * v3);
        v22 = (v20 + 32 * v6);
        if (v3 != v6 || v21 >= v22 + 2)
        {
          v9 = v22[1];
          *v21 = *v22;
          v21[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_1CF1CF5D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1CF9E81D8();
      if (v13)
      {
        if (v13 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v12);
        }

        else
        {
          if (v12)
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          MEMORY[0x1D386A470](v14);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
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
        goto LABEL_18;
      }

      if (v3 >= v15)
      {
LABEL_18:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + v9);
        if (16 * v3 != v9 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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

uint64_t sub_1CF1CF7C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();

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

unint64_t sub_1CF1CF978(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();

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
      v19 = *(*(sub_1CF9E5A58() - 8) + 72);
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

uint64_t sub_1CF1CFB68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1CF9E81D8();
      if (v13)
      {
        if (v13 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v12);
        }

        else
        {
          if (v12)
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          MEMORY[0x1D386A470](v14);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
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
        goto LABEL_18;
      }

      if (v3 >= v15)
      {
LABEL_18:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + v9);
        if (16 * v3 != v9 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 4 * v3);
        v21 = (v19 + 4 * v6);
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

void sub_1CF1CFD5C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      v11 = v10;
      sub_1CF9E69C8();
      v12 = sub_1CF9E8228();

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
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v18 >= v19 + 1))
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
}

void sub_1CF1CFF30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      v12 = v11;
      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();

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
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 24 * v3;
        v20 = (v18 + 24 * v6);
        if (v3 != v6 || v19 >= v20 + 24)
        {
          v9 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v9;
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
}

uint64_t sub_1CF1D0104(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1CF9E81D8();
      if (v13)
      {
        if (v13 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v12);
        }

        else
        {
          if (v12)
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          MEMORY[0x1D386A470](v14);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
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
        goto LABEL_18;
      }

      if (v3 >= v15)
      {
LABEL_18:
        v16 = *(a2 + 48);
        v17 = 16 * v3;
        v18 = (v16 + 16 * v3);
        v19 = (v16 + v9);
        if (16 * v3 != v9 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + v17);
        v22 = (v20 + v9);
        if (v17 != v9 || (v3 = v6, v21 >= v22 + 1))
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
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

void sub_1CF1D0310(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      v11 = v10;
      sub_1CF9E69C8();
      v12 = sub_1CF9E8228();

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
}

void sub_1CF1D04D8(int64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1CF9E77D8();
    v14 = v12;
    v39 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = v16;
    do
    {
      v17 = v9;
      v18 = v40 * v11;
      v19 = v14;
      v20 = v15;
      v38(v8, *(a2 + 48) + v40 * v11, v4);
      v21 = *(a2 + 40);
      sub_1CF1D57C0();
      v22 = sub_1CF9E6748();
      (*v37)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v39)
      {
        if (v23 >= v39 && a1 >= v23)
        {
LABEL_15:
          v26 = *(a2 + 48);
          v27 = v26 + v40 * a1;
          v28 = v26 + v18 + v40;
          v29 = v40 * a1 < v18 || v27 >= v28;
          v15 = v20;
          if (v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v30 = v40 * a1 == v18;
            v9 = v17;
            if (!v30)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v39 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

unint64_t sub_1CF1D0790(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1CF9E81C8();
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
      result = v17 + 16 * v3;
      if (v3 < v6 || result >= v17 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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

unint64_t sub_1CF1D0920(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v40 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v45);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40 - v16;
  v18 = a2 + 64;
  v19 = -1 << *(a2 + 32);
  v20 = (a1 + 1) & ~v19;
  if ((*(a2 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = sub_1CF9E77D8();
    v46 = v21;
    v43 = a2 + 64;
    v44 = (v22 + 1) & v21;
    v23 = *(v10 + 72);
    v42 = v23;
    do
    {
      v24 = v23 * v20;
      sub_1CEFCCBDC(*(a2 + 48) + v23 * v20, v17, &unk_1EC4BF650, &unk_1CF9FCB40);
      v25 = *(a2 + 40);
      sub_1CF9E81D8();
      sub_1CEFCCBDC(v17, v14, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v41;
        sub_1CEFE55D0(v14, v41, &unk_1EC4BFD70, &qword_1CFA12AC0);
        MEMORY[0x1D386A470](1);
        sub_1CF1CE0C8();
        v27 = v26;
        v28 = &unk_1EC4BFD70;
        v29 = &qword_1CFA12AC0;
      }

      else
      {
        v30 = v40;
        sub_1CEFE55D0(v14, v40, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        MEMORY[0x1D386A470](0);
        sub_1CF1CDC08();
        v27 = v30;
        v28 = &unk_1EC4BFCC0;
        v29 = &unk_1CF9FCB50;
      }

      sub_1CEFCCC44(v27, v28, v29);
      v31 = sub_1CF9E8228();
      result = sub_1CEFCCC44(v17, &unk_1EC4BF650, &unk_1CF9FCB40);
      v32 = v31 & v46;
      if (a1 >= v44)
      {
        v23 = v42;
        v18 = v43;
        if (v32 < v44)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v23 = v42;
        v18 = v43;
        if (v32 >= v44)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        v33 = *(a2 + 48);
        result = v33 + v23 * a1;
        if (v23 * a1 < v24 || result >= v33 + v24 + v23)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23 * a1 != v24)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v34 = *(a2 + 56);
        v35 = (v34 + 8 * a1);
        v36 = (v34 + 8 * v20);
        if (a1 != v20 || v35 >= v36 + 1)
        {
          *v35 = *v36;
          a1 = v20;
        }
      }

LABEL_4:
      v20 = (v20 + 1) & v46;
    }

    while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  *(v18 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CF1D0D74(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (sub_1CF9E77D8() + 1) & ~v7;
    while (1)
    {
      v12 = 16 * v8;
      v13 = *(a2 + 40);
      v14 = *(a2 + 48) + 16 * v8;
      v15 = *v14;
      v16 = *(v14 + 8);
      sub_1CF9E81D8();
      if (v16)
      {
        if (v16 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v15);
        }

        else
        {
          v17 = v15 ? 3 : 2;
          MEMORY[0x1D386A470](v17);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v18 = result & v10;
      if (v5 >= v11)
      {
        break;
      }

      if (v18 < v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v5);
      v21 = (v19 + v12);
      if (16 * v5 != v12 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v24 = v23 * v5;
      result = v22 + v23 * v5;
      v25 = v23 * v8;
      v26 = v22 + v23 * v8 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v10;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v18 < v11)
    {
      goto LABEL_5;
    }

LABEL_18:
    if (v5 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_28:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CF1D0FB4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1CF9E81C8();
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
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20) - 8) + 72);
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

uint64_t sub_1CF1D1178(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E81D8();
      v12 = v11;
      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();

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
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v19 >= v20 + 2))
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
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

uint64_t sub_1CF1D134C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = 16 * v6;
      v11 = *(a2 + 40);
      v12 = *(a2 + 48) + 16 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      sub_1CF9E81D8();
      if (v14)
      {
        if (v14 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v13);
        }

        else
        {
          if (v13)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          MEMORY[0x1D386A470](v15);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v16 = result & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v16)
      {
LABEL_18:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + v10);
        if (16 * v3 != v10 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 32 * v3);
        v22 = (v20 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v21 >= v22 + 2))
        {
          v9 = v22[1];
          *v21 = *v22;
          v21[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

_OWORD *sub_1CF1D154C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
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
      sub_1CF7CF1E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1CF7C3178(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1CEFE4328(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1CF9E8108();
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

    return sub_1CEFE9EB8(a1, v23);
  }

  else
  {
    sub_1CF1D4DD8(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1CF1D169C(__int128 *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1CF7BF13C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1CF7CF398();
    result = v17;
    goto LABEL_8;
  }

  sub_1CF7C37F4(v14, a2 & 1);
  v18 = *v4;
  result = sub_1CF7BF13C(a1);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a3;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    v21 = (v20[6] + 48 * result);
    v22 = *a1;
    v23 = a1[2];
    v21[1] = a1[1];
    v21[2] = v23;
    *v21 = v22;
    *(v20[7] + 8 * result) = a3;
    v24 = v20[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v20[2] = v25;
      return sub_1CF1A8F60(a1, &v26);
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

unint64_t sub_1CF1D17EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1CEFE4328(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CF7C3BDC(v16, a4 & 1);
      v20 = *v5;
      result = sub_1CEFE4328(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1CF7CF6B0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1CF1D19D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CEFE4328(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1CF7C4200(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1CEFE4328(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1CF7CF854();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_1CF1D1B58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1CF7D52B0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1CF7CF9CC();
    result = v17;
    goto LABEL_8;
  }

  sub_1CF7C44C0(v14, a3 & 1);
  v18 = *v4;
  result = sub_1CF7D52B0(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF1D1C7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CF7BF4F4(a2);
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
      sub_1CF7CFBE4();
      goto LABEL_7;
    }

    sub_1CF7C4B2C(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1CF7BF4F4(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for SyncState() - 8) + 72) * v10;

    return sub_1CF1D5818(a1, v18);
  }

LABEL_13:

  return sub_1CF1D4E9C(v10, a2, a1, v16);
}

unint64_t sub_1CF1D1DC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_1CF7BF2C0(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1CF7C4FE4(v22, a7 & 1);
      v26 = *v8;
      result = sub_1CF7BF2C0(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      sub_1CF7CFE1C();
      result = v25;
    }
  }

  v28 = *v8;
  if ((v23 & 1) == 0)
  {
    v28[(result >> 6) + 8] |= 1 << result;
    v31 = v28[6] + 16 * result;
    *v31 = a5;
    *(v31 + 8) = a6;
    v32 = v28[7] + 32 * result;
    *v32 = a1;
    *(v32 + 8) = a2;
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    v33 = v28[2];
    v21 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v21)
    {
      v28[2] = v34;
      return result;
    }

    goto LABEL_15;
  }

  v29 = v28[7] + 32 * result;
  v30 = *(v29 + 24);
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
}

void sub_1CF1D1F60(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF7BF2C0(a2, a3);
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
      sub_1CF7C5300(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1CF7BF2C0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7CFFA8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v25 = v22[6] + 16 * v11;
    *v25 = a2;
    *(v25 + 8) = a3;
    *(v22[7] + 8 * v11) = a1;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  v23 = v22[7];
  v24 = *(v23 + 8 * v11);
  *(v23 + 8 * v11) = a1;
}

void sub_1CF1D214C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
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
      sub_1CF7C59C0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1CEFE4328(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7D02E0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
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

uint64_t sub_1CF1D22C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1CEFE4328(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1CF7D0464();
      goto LABEL_7;
    }

    sub_1CF7C5C7C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1CEFE4328(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1CF9E5A58();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1CF1D4FC4(v12, a2, a3, a1, v18);
}

id sub_1CF1D2448(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CF7BF928(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7C5FFC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1CF7BF928(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D06E4();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    return sub_1CEFDA9E0(a1, v19[7] + (v8 << 6), &unk_1EC4BF250, &unk_1CFA01B50);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  v21 = (v19[7] + (v8 << 6));
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[3];
  v21[2] = a1[2];
  v21[3] = v24;
  *v21 = v22;
  v21[1] = v23;
  v25 = v19[2];
  v12 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v26;

  return a2;
}

void sub_1CF1D262C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1CEFE4328(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1CEFE4328(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_1CF1D27C0(int a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1CF7BF2C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1CF7D0A44();
    result = v19;
    goto LABEL_8;
  }

  sub_1CF7C68A4(v16, a4 & 1);
  v20 = *v5;
  result = sub_1CF7BF2C0(a2, a3);
  if ((v17 & 1) == (v21 & 1))
  {
LABEL_8:
    v22 = *v5;
    if (v17)
    {
      *(v22[7] + 4 * result) = a1;
      return result;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    v23 = v22[6] + 16 * result;
    *v23 = a2;
    *(v23 + 8) = a3;
    *(v22[7] + 4 * result) = a1;
    v24 = v22[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v22[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

id sub_1CF1D2958(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_1CEFE863C(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v21 = *v8;
      v12 = sub_1CEFE863C(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        type metadata accessor for FPProviderDomainID(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  return a2;
}

uint64_t sub_1CF1D2AE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
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
      sub_1CF7C6EBC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1CEFE4328(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7D0D70();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_1CF1D2C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  result = sub_1CEFE4328(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      result = sub_1CEFE4328(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    *(v26[7] + 8 * result) = a1;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  v27 = (v26[6] + 16 * result);
  *v27 = a2;
  v27[1] = a3;
  *(v26[7] + 8 * result) = a1;
  v28 = v26[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26[2] = v29;
}

void sub_1CF1D2E34(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_1CEFE863C(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v21 = *v8;
      v12 = sub_1CEFE863C(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;

    return;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v26 = v23[2];
  v16 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;

  v28 = a2;
}

uint64_t sub_1CF1D2FB8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CF7BFC48(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1CF7C8C2C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1CF7BFC48(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A0, &unk_1CFA17130);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1CF7D192C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(v13 >> 6) + 8] |= 1 << v13;
    v29 = (v24[6] + 48 * v13);
    v30 = *a4;
    v31 = a4[1];
    *(v29 + 27) = *(a4 + 27);
    *v29 = v30;
    v29[1] = v31;
    v32 = (v24[7] + 24 * v13);
    *v32 = a1;
    v32[1] = a2;
    v32[2] = a3;
    v33 = v24[2];
    v17 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v17)
    {
      v24[2] = v34;
      return sub_1CEFCCBDC(a4, &v35, &qword_1EC4BE1A0, &unk_1CFA17130);
    }

    goto LABEL_15;
  }

  v25 = (v24[7] + 24 * v13);
  v26 = *v25;
  v27 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
}

id sub_1CF1D3180(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CEFF4768(a3, a4 & 0x1FF);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1CF7D1B08();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1CF7C9130(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1CEFF4768(a3, a4 & 0x1FF);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1CF1D50B8(v13, a3, a4 | (((a4 >> 8) & 1) << 8), a1, a2, v24);

    return sub_1CEFD0988(a3, a4, BYTE1(a4) & 1);
  }
}

uint64_t sub_1CF1D3310(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
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
      sub_1CF7C949C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1CEFE4328(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7D1C90();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

id sub_1CF1D348C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7CA84C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D2808();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

unint64_t sub_1CF1D3624(uint64_t a1, uint64_t a2, char a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  result = sub_1CF7BF2C0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      result = sub_1CF7BF2C0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v26 = *v9;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    v29 = v26[6] + 16 * result;
    *v29 = a2;
    *(v29 + 8) = a3;
    *(v26[7] + 8 * result) = a1;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

uint64_t sub_1CF1D37AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1CF7BFCDC(a2);
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
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1CF7D2980();
    goto LABEL_7;
  }

  sub_1CF7CAB28(result, a3 & 1);
  v22 = *v4;
  result = sub_1CF7BFCDC(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1CF9E8108();
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
  return sub_1CF1D5114(v15, v12, a1, v21);
}

void sub_1CF1D3948(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF7BF2C0(a2, a3);
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
      sub_1CF7CB290(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1CF7BF2C0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7D2E60();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v25 = v22[6] + 16 * v11;
    *v25 = a2;
    *(v25 + 8) = a3;
    *(v22[7] + 8 * v11) = a1;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  v23 = v22[7];
  v24 = *(v23 + 8 * v11);
  *(v23 + 8 * v11) = a1;
}

void sub_1CF1D3AB0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7CC16C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D3654();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  v24 = a2;
}

unint64_t sub_1CF1D3C18(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7CC430(v13, a3 & 1);
      v17 = *v4;
      result = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1CF7D37B4();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 8 * result) = a1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

uint64_t sub_1CF1D3D6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1CF7BF380(a2);
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
      sub_1CF7D3910();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1CF7CC6EC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1CF7BF380(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 16 * v9;

    return sub_1CF1D5674(a1, v21);
  }

  else
  {

    return sub_1CF1D5284(v9, a2, a1, v20);
  }
}

_OWORD *sub_1CF1D3EE0(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a5();
      v16 = v24;
      goto LABEL_8;
    }

    a6(v21, a3 & 1);
    v25 = *v12;
    v16 = a4(a2);
    if ((v22 & 1) != (v26 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v12;
  if (v22)
  {
    v28 = (v27[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v28);

    return sub_1CEFE9EB8(a1, v28);
  }

  else
  {
    sub_1CF1D52EC(v16, a2, a1, v27);

    return a2;
  }
}

void sub_1CF1D40B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7CCC54(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D3C24();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  v24 = a2;
}

void sub_1CF1D421C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *v3;
  v14 = sub_1CF7BF520(a2);
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
      sub_1CF7D3FDC();
      goto LABEL_7;
    }

    sub_1CF7CD440(v17, a3 & 1);
    v23 = *v4;
    v24 = sub_1CF7BF520(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1CEFCCBDC(a2, v11, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF1D5354(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1CF9E8108();
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

uint64_t sub_1CF1D43C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = *v3;
  v14 = sub_1CF7BF520(a2);
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
      sub_1CF7D4234();
      goto LABEL_7;
    }

    sub_1CF7CD964(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1CF7BF520(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1CEFCCBDC(a2, v11, &unk_1EC4BF650, &unk_1CF9FCB40);
      return sub_1CF1D5354(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1CF9E8108();
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

_OWORD *sub_1CF1D456C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CF0271B0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1CF7D45F0();
      goto LABEL_7;
    }

    sub_1CF7CE0F8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1CF0271B0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1CF0272BC(a2, v22);
      return sub_1CF1D5418(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1CEFE9EB8(a1, v17);
}

uint64_t sub_1CF1D46B8(uint64_t a1, uint64_t a2, char a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1CF7BF2C0(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
  }

  else
  {
    v22 = v17;
    v23 = v16[3];
    if (v23 >= v21 && (a4 & 1) != 0)
    {
LABEL_7:
      v24 = *v11;
      if (v22)
      {
LABEL_8:
        v25 = v24[7];
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
        return sub_1CEFDA9E0(a1, v25 + *(*(v26 - 8) + 72) * v18, a7, a8);
      }

      return sub_1CF1D51CC(v18, a2, a3, a1, v24, a7, a8);
    }

    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v28 = *v11;
    v29 = sub_1CF7BF2C0(a2, a3);
    if ((v22 & 1) == (v30 & 1))
    {
      v18 = v29;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      return sub_1CF1D51CC(v18, a2, a3, a1, v24, a7, a8);
    }
  }

  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF1D4828(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CF7BF380(a2);
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
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
      return sub_1CEFDA9E0(a1, v17 + *(*(v18 - 8) + 72) * v10, &unk_1EC4C04B0, &unk_1CF9FCB20);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1CF7D49F4();
    goto LABEL_7;
  }

  sub_1CF7CE3D4(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1CF7BF380(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1CF9E8108();
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

  return sub_1CF1D54A8(v10, a2, a1, v16);
}

uint64_t sub_1CF1D4984(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1CF7BF2C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  result = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 >= result && (a4 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v17 >= result && (a4 & 1) == 0)
  {
    result = sub_1CF7D4C40();
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = *(v19 + 8 * v12);

      *(v19 + 8 * v12) = a1;
      return result;
    }

LABEL_11:
    v18[(v12 >> 6) + 8] |= 1 << v12;
    v23 = v18[6] + 16 * v12;
    *v23 = a2;
    *(v23 + 8) = a3;
    *(v18[7] + 8 * v12) = a1;
    v24 = v18[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      v18[2] = v26;
      return result;
    }

    goto LABEL_14;
  }

  sub_1CF7CE718(result, a4 & 1);
  v21 = *v5;
  result = sub_1CF7BF2C0(a2, a3);
  if ((v16 & 1) == (v22 & 1))
  {
    v12 = result;
    v18 = *v5;
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_15:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

unint64_t sub_1CF1D4ACC(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  result = sub_1CEFE863C(a5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_1CF7CEA10(v19, a6 & 1);
      v23 = *v7;
      result = sub_1CEFE863C(a5);
      if ((v20 & 1) != (v24 & 1))
      {
LABEL_16:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = result;
      sub_1CF7D4DB4();
      result = v22;
    }
  }

  v25 = *v7;
  if (v20)
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
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v29;

  return a5;
}

unint64_t sub_1CF1D4C68(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_1CF7BF2C0(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = result;
      sub_1CF7D4F34();
      result = v25;
      goto LABEL_8;
    }

    sub_1CF7CED04(v22, a7 & 1);
    v26 = *v8;
    result = sub_1CF7BF2C0(a5, a6);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_14:
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v8;
  if (v23)
  {
    v29 = v28[7] + 32 * result;
    *v29 = a1;
    *(v29 + 8) = a2 & 1;
    *(v29 + 16) = a3;
    *(v29 + 24) = a4 & 1;
  }

  else
  {

    return sub_1CF1D55B8(result, a5, a6, a1, a2 & 1, a3, a4 & 1, v28);
  }

  return result;
}

_OWORD *sub_1CF1D4DD8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CEFE9EB8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1CF1D4E44(unint64_t result, _OWORD *a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v4 = (a3[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a3[7] + 8 * result) = a4;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_1CF1D4E9C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for SyncState();
  result = sub_1CF04DC10(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1CF1D4F30(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1CF1D4F7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1CF1D4FC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1CF9E5A58();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1CF1D5074(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1CF1D50B8(unint64_t result, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 16 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 9) = HIBYTE(a3) & 1;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1CF1D5114(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1CF9E5A58();
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

uint64_t sub_1CF1D51CC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6] + 16 * a1;
  *v12 = a2;
  *(v12 + 8) = a3;
  v13 = a5[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_1CEFE55D0(a4, v13 + *(*(v14 - 8) + 72) * a1, a6, a7);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1CF1D5284(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1CEFF701C(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1CF1D52EC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1CEFE9EB8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1CF1D5354(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  result = sub_1CEFE55D0(a2, v8 + *(*(v9 - 8) + 72) * a1, &unk_1EC4BF650, &unk_1CF9FCB40);
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

_OWORD *sub_1CF1D5418(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1CEFE9EB8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1CF1D54A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  result = sub_1CEFE55D0(a3, v7 + *(*(v8 - 8) + 72) * a1, &unk_1EC4C04B0, &unk_1CF9FCB20);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1CF1D5560(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_1CF1D55B8(unint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = a8[6] + 16 * result;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5 & 1;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1CF1D56D0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 != 1)
  {
    sub_1CEFE4714(result, a2);

    sub_1CEFE4714(a4, a5);
  }

  return result;
}

uint64_t sub_1CF1D5750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = a9;
  if (a9)
  {
  }

  return result;
}

unint64_t sub_1CF1D57C0()
{
  result = qword_1EDEAB418;
  if (!qword_1EDEAB418)
  {
    sub_1CF9E5A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB418);
  }

  return result;
}

uint64_t sub_1CF1D5818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SnapshotItemSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 34;
  if (a2 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 34;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 34;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x1C)
  {
    v8 = v7 - 27;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SnapshotItemSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 34;
  if (a3 + 34 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xDE)
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1CF1D59D4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x1C)
  {
    return v1 - 27;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1CF1D59E8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 27;
  }

  return result;
}

unint64_t sub_1CF1D5A18()
{
  v1 = *v0;
  v2 = 0x7461447472617473;
  v3 = 0x426E656553736168;
  v4 = 0x66666F6B636162;
  if (v1 != 3)
  {
    v4 = 0x656C6174537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF1D5AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF1D6EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1D5AEC(uint64_t a1)
{
  v2 = sub_1CF1D6C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1D5B28(uint64_t a1)
{
  v2 = sub_1CF1D6C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF1D5B64(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1CF1D5BB4(a1);
  return v5;
}

uint64_t sub_1CF1D5BB4(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v32 - v6;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE210, &qword_1CF9FCCE8);
  v34 = *(v38 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v32 - v12;
  v14 = *(v8 + 56);
  v40 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  v14(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate, 1, 1, v7);
  v15 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale;
  *(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale) = 2;
  v16 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff;
  *(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff) = 100000000;
  v17 = a1[3];
  v18 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CF1D6C48();
  v37 = v13;
  v19 = v39;
  sub_1CF9E8298();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_1CEFD9E84(v2 + v40);
    type metadata accessor for VFSLookupItemContinuation();
    v24 = *(*v2 + 48);
    v25 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v16;
    v33 = v15;
    v21 = v34;
    v20 = v35;
    LOBYTE(v41[0]) = 0;
    sub_1CF1D6D6C(&unk_1EDEAB3A0);
    v23 = v36;
    v22 = v37;
    sub_1CF9E7D88();
    (*(v8 + 32))(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate, v23, v7);
    LOBYTE(v41[0]) = 1;
    sub_1CF9E7CF8();
    v27 = v40;
    swift_beginAccess();
    sub_1CEFE4804(v20, v2 + v27);
    swift_endAccess();
    LOBYTE(v41[0]) = 2;
    v28 = sub_1CF9E7D58();
    *(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_hasSeenBusy) = v28 & 1;
    LOBYTE(v41[0]) = 3;
    v29 = sub_1CF9E7CD8();
    v31 = 100000000;
    if ((v30 & 1) == 0)
    {
      v31 = v29;
    }

    *(v2 + v39) = v31;
    LOBYTE(v41[0]) = 4;
    *(v2 + v33) = sub_1CF9E7CC8();
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v21 + 8))(v22, v38);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return v2;
}

uint64_t sub_1CF1D60A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F8, &qword_1CF9FCCD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1D6C48();
  sub_1CF9E82A8();
  LOBYTE(v29[0]) = 0;
  sub_1CF9E5CF8();
  sub_1CF1D6D6C(&qword_1EDEAB3D0);
  v27 = v2;
  v18 = v28;
  sub_1CF9E7F08();
  if (v18)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v28 = v7;
  v19 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  v20 = v27;
  swift_beginAccess();
  sub_1CF06EAD4(v20 + v19, v11);
  LOBYTE(v29[0]) = 1;
  sub_1CF9E7E68();
  sub_1CEFD9E84(v11);
  v21 = *(v27 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_hasSeenBusy);
  LOBYTE(v29[0]) = 2;
  sub_1CF9E7EC8();
  v22 = *(v27 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff);
  LOBYTE(v29[0]) = 3;
  sub_1CF9E7EE8();
  LOBYTE(v29[0]) = *(v27 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale);
  v30 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  sub_1CF1D6C9C();
  sub_1CF9E7F08();
  sub_1CF9E7E28();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1CF1D6D18();
  v23 = v28;
  sub_1CF9E82A8();
  (*(v25 + 8))(v23, v26);
  (*(v13 + 8))(v16, v12);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1CF1D64D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  swift_beginAccess();
  sub_1CF06EAD4(v0 + v5, v4);
  v6 = sub_1CF9E5CF8();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1CEFD9E84(v4);
  if (v5 != 1 && (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_hasSeenBusy) & 1) != 0)
  {
    return 2200000000;
  }

  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff) >= 10000000000)
  {
    return 10000000000;
  }

  return *(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff);
}

uint64_t sub_1CF1D6608()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v39 = 0x3A7472617473;
  v40 = 0xE600000000000000;
  v14 = *(v7 + 16);
  v14(&v32 - v12, v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate, v6);
  sub_1CF9E5C98();
  v16 = v15;
  v34 = *(v7 + 8);
  result = v34(v13, v6);
  v18 = v16 * 1000000000.0;
  if (COERCE__INT64(fabs(v16 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v14;
  v33 = v11;
  v41 = v18;
  sub_1CF064F48();
  v19 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v19);

  v41 = v39;
  v42 = v40;
  v20 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  swift_beginAccess();
  sub_1CF06EAD4(v1 + v20, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v21 = v33;
    (*(v7 + 32))(v33, v5, v6);
    v37 = 0x3A746E656F6E6520;
    v38 = 0xE800000000000000;
    v32(v13, v21, v6);
    sub_1CF9E5C98();
    v23 = v22;
    v24 = v34;
    result = v34(v13, v6);
    v25 = v23 * 1000000000.0;
    if (COERCE__INT64(fabs(v23 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v25 > -9.22337204e18)
      {
        if (v25 < 9.22337204e18)
        {
          v35 = v25;
          v26 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v26);

          MEMORY[0x1D3868CC0](v37, v38);

          v24(v21, v6);
          goto LABEL_10;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1CEFD9E84(v5);
LABEL_10:
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_hasSeenBusy) == 1)
  {
    MEMORY[0x1D3868CC0](0x7973756220, 0xE500000000000000);
  }

  v27 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale);
  if (v27 != 2 && (v27 & 1) != 0)
  {
    MEMORY[0x1D3868CC0](0x656C61747320, 0xE600000000000000);
  }

  v37 = 0x66666F6B63616220;
  v38 = 0xE90000000000003ALL;
  result = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff);
  if ((result & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
LABEL_19:
    v31 = sub_1CF04F854(result);
    v35 = v28;
    v36 = v29;
    MEMORY[0x1D3868CC0](v31);

    MEMORY[0x1D3868CC0](v35, v36);

    MEMORY[0x1D3868CC0](v37, v38);

    return v41;
  }

  v30 = __OFSUB__(0, result);
  result = -result;
  if (!v30)
  {
    v29 = 0xE100000000000000;
    v28 = 45;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CF1D6AB8()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate;
  v2 = sub_1CF9E5CF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;

  return sub_1CEFD9E84(v3);
}

void sub_1CF1D6B38()
{
  v0 = sub_1CF9E5CF8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CF1A694C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1CF1D6C48()
{
  result = qword_1EC4BE200;
  if (!qword_1EC4BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE200);
  }

  return result;
}

unint64_t sub_1CF1D6C9C()
{
  result = qword_1EC4BE208;
  if (!qword_1EC4BE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE208);
  }

  return result;
}

unint64_t sub_1CF1D6D18()
{
  result = qword_1EDEA8858;
  if (!qword_1EDEA8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8858);
  }

  return result;
}

uint64_t sub_1CF1D6D6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CF9E5CF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF1D6DC4()
{
  result = qword_1EC4BE218;
  if (!qword_1EC4BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE218);
  }

  return result;
}

unint64_t sub_1CF1D6E1C()
{
  result = qword_1EC4BE220;
  if (!qword_1EC4BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE220);
  }

  return result;
}

unint64_t sub_1CF1D6E74()
{
  result = qword_1EC4BE228;
  if (!qword_1EC4BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE228);
  }

  return result;
}

uint64_t sub_1CF1D6EC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFA2EDC0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x426E656553736168 && a2 == 0xEB00000000797375 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66666F6B636162 && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C6174537369 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1CF1D70E0()
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1CF680B7C(0, 28, 0);
  v0 = 0;
  v1 = v6;
  v2 = *(v6 + 16);
  do
  {
    v3 = byte_1F4BEAD78[v0 + 32];
    v7 = v1;
    v4 = *(v1 + 24);
    if (v2 >= v4 >> 1)
    {
      sub_1CF680B7C((v4 > 1), v2 + 1, 1);
      v1 = v7;
    }

    ++v0;
    *(v1 + 16) = v2 + 1;
    *(v1 + v2++ + 32) = v3;
  }

  while (v0 != 28);
  result = sub_1CF1E8B78(v1);
  qword_1EC4EBC90 = &unk_1F4BEAF50;
  return result;
}

uint64_t sub_1CF1D71E8()
{
  v1 = *v0;
  sub_1CF9E81D8();
  if (v1 == 29)
  {
    MEMORY[0x1D386A470](1);
  }

  else if (v1 == 28)
  {
    MEMORY[0x1D386A470](0);
  }

  else
  {
    MEMORY[0x1D386A470](2);
    sub_1CF07FC44(v1);
    sub_1CF9E69C8();
  }

  return sub_1CF9E8228();
}

uint64_t sub_1CF1D7280()
{
  v1 = *v0;
  if (v1 == 29)
  {
    v2 = 1;
    return MEMORY[0x1D386A470](v2);
  }

  if (v1 == 28)
  {
    v2 = 0;
    return MEMORY[0x1D386A470](v2);
  }

  MEMORY[0x1D386A470](2);
  sub_1CF07FC44(v1);
  sub_1CF9E69C8();
}

uint64_t sub_1CF1D7320()
{
  v1 = *v0;
  sub_1CF9E81D8();
  if (v1 == 29)
  {
    MEMORY[0x1D386A470](1);
  }

  else if (v1 == 28)
  {
    MEMORY[0x1D386A470](0);
  }

  else
  {
    MEMORY[0x1D386A470](2);
    sub_1CF07FC44(v1);
    sub_1CF9E69C8();
  }

  return sub_1CF9E8228();
}

uint64_t sub_1CF1D73B4()
{
  v1 = *v0;
  if (v1 == 28)
  {
    return 0x695F746E65726170;
  }

  if (v1 == 29)
  {
    return 0x656D616E656C6966;
  }

  v3 = sub_1CF07FC44(v1);
  MEMORY[0x1D3868CC0](v3);

  return 0x617461646174656DLL;
}

uint64_t sub_1CF1D7454(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 29)
  {
    return v3 == 29;
  }

  if (v2 == 28)
  {
    return v3 == 28;
  }

  if ((v3 & 0xFE) == 0x1C)
  {
    return 0;
  }

  v5 = sub_1CF07FC44(v2);
  v7 = v6;
  if (v5 != sub_1CF07FC44(v3) || v7 != v8)
  {
    v10 = sub_1CF9E8048();

    return v10 & 1;
  }

  return 1;
}

uint64_t sub_1CF1D7528(char a1, void *a2, uint64_t a3)
{
  if (a1 == 29)
  {
    v5 = (v3 + *(a3 + 36));
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      v8 = v5[1];

      v9 = MEMORY[0x1E69E6158];
    }

    else
    {

      v7 = 0;
      v9 = 0;
      v14[2] = 0;
    }

    v14[0] = v7;
    v14[1] = v6;
    v14[3] = v9;
    v11 = sub_1CEFF8EA0(v14);
    v13 = v12;
    sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v13)
    {
      return v11;
    }

    else
    {
      result = sub_1CF9E7B68();
      __break(1u);
    }
  }

  else if (a1 == 28)
  {
    return (*(*(*(a3 + 24) + 8) + 32))(a2, *(a3 + 16));
  }

  else
  {
    v10 = v3 + *(a3 + 40);
    return sub_1CF073E1C(a1, a2);
  }

  return result;
}

void sub_1CF1D7680(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a2 == 29)
  {
    a6[3] = &type metadata for Filename;
    v14 = [a1 stringAtIndex_];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    *a6 = v15;
    a6[1] = v17;
  }

  else if (a2 == 28)
  {
    v8 = *(a5 + 8);
    v9 = *(v8 + 16);
    a6[3] = a4;
    __swift_allocate_boxed_opaque_existential_0(a6);
    v9(a1, a3, a4, v8);
    if (v6)
    {
      __swift_deallocate_boxed_opaque_existential_0(a6);
    }
  }

  else
  {
    sub_1CF07F730(a2, a1, a3, a6);
  }
}

uint64_t sub_1CF1D7790@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a5;
  v35 = a3;
  v39 = &_s9SQLFieldsON;
  v40 = a2;
  v37 = sub_1CF080DBC();
  v41 = v37;
  v42 = a4;
  v9 = type metadata accessor for SQLCodableAccessorWrapper();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ItemMetadata();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v39) = 28;
  v21 = sub_1CF0230AC(a2, a1);
  result = sub_1CF0230B4(&v39, v21, a2, a1, a4);
  if (!v5)
  {
    v32 = v20;
    v33 = a1;
    v30 = v17;
    v31 = v9;
    v23 = v37;
    LOBYTE(v38[0]) = 29;
    sub_1CF0230AC(a2, &type metadata for Filename);
    sub_1CF0230B4(v38, &type metadata for Filename, a2, &type metadata for Filename, a4);
    v38[0] = v39;
    v38[1] = v40;
    v24 = v12;
    sub_1CF021034(sub_1CEFED334, 0, a2, &_s9SQLFieldsON, a4, v23, v12);
    v25 = v31;
    WitnessTable = swift_getWitnessTable();
    v27 = v30;
    sub_1CF080E10(v12, v25, WitnessTable, v30);
    v29 = v32;
    v28 = v33;
    (*(v36 + 8))(v24, v25);
    return sub_1CF67E0DC(v29, v38, v27, v28, v34);
  }

  return result;
}

uint64_t sub_1CF1D7B44(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001CFA2C3F0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001CFA2C3F0;
  }

  else
  {
    v6 = 0x80000001CFA2C410;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574617473;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000012;
    v4 = 0x80000001CFA2C410;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6574617473;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CF9E8048();
  }

  return v11 & 1;
}

uint64_t sub_1CF1D7C20()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF1D7CC4()
{
  *v0;
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF1D7D54()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF1D7DF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF1DA934();
  *a2 = result;
  return result;
}

void sub_1CF1D7E24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000001CFA2C3F0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001CFA2C410;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6574617473;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1CF1D7E94()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_1CF1D7EF0@<X0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      *(a4 + 24) = &type metadata for JobWaitCondition;
      result = [a1 longAtIndex_];
      *a4 = result;
    }

    else
    {
      result = [a1 isNullAtIndex_];
      if (result)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        result = sub_1CF1DFFC4(a3);
        if (!v4)
        {
          v8 = result;
          result = type metadata accessor for Continuation();
          *(a4 + 24) = result;
          *a4 = v8;
        }
      }
    }
  }

  else
  {
    result = [a1 longAtIndex_];
    *(a4 + 24) = MEMORY[0x1E69E6530];
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF1D8010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1CF023980(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t sub_1CF1D8040(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D617473656D6974;
  }

  else
  {
    v4 = 0x797469726F697270;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000070;
  }

  if (*a2)
  {
    v6 = 0x6D617473656D6974;
  }

  else
  {
    v6 = 0x797469726F697270;
  }

  if (*a2)
  {
    v7 = 0xE900000000000070;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();
  }

  return v9 & 1;
}

uint64_t sub_1CF1D80EC()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8174()
{
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF1D81E8()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF1D826C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CF9E7C78();

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

void sub_1CF1D82CC(uint64_t *a1@<X8>)
{
  v2 = 0x797469726F697270;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CF1D8320()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x797469726F697270;
  }

  *v0;
  return result;
}

id sub_1CF1D8380@<X0>(id a1@<X1>, _BYTE *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2 == 0;
  if (*a2)
  {
    v5 = &type metadata for NSecTimestamp;
  }

  else
  {
    v5 = &type metadata for JobSchedulingPriority;
  }

  a3[3] = v5;
  v6 = &selRef_longAtIndex_;
  if (v4)
  {
    v6 = &selRef_unsignedLongAtIndex_;
  }

  result = [a1 *v6];
  *a3 = result;
  return result;
}

uint64_t sub_1CF1D83F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF023F08(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1CF1D841C(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 1)
  {
    if (a1 >> 5)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        v5 = 0x6D617473656D6974;
      }

      else
      {
        v5 = 0x797469726F697270;
      }

      if (v9)
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v6 = 0xE900000000000070;
      }
    }

    else
    {
      v4 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v5 = 0xD000000000000010;
        }

        else
        {
          v5 = 0xD000000000000012;
        }

        if (v4 == 1)
        {
          v6 = 0x80000001CFA2C3F0;
        }

        else
        {
          v6 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v6 = 0xE500000000000000;
        v5 = 0x6574617473;
      }
    }

    MEMORY[0x1D3868CC0](v5, v6);

    return 0x696C756465686373;
  }

  else if (v1 == 4)
  {
    if (a1 == 128)
    {
      return 0x7366666964;
    }

    else
    {
      return 0x765F6E69616D6F64;
    }
  }

  else if (v1 == 3)
  {
    v2 = 0x695F746567726174;
    if (a1 != 96)
    {
      v2 = 0x665F746567726174;
    }

    if (a1 <= 0x61u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v7 = 25705;
    v8 = 0x695F656372756F73;
    if (a1 != 66)
    {
      v8 = 0xD000000000000017;
    }

    if (a1 != 64)
    {
      v7 = 0x6E6F73616572;
    }

    if (a1 <= 0x41u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }
}

uint64_t sub_1CF1D86AC()
{
  v0 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  sub_1CF680B4C(0, 3, 0);
  v1 = v14;
  v3 = *(v14 + 16);
  v2 = *(v14 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    sub_1CF680B4C((v2 > 1), v3 + 1, 1);
    v1 = v14;
    v2 = *(v14 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  *(v1 + v3 + 32) = 0;
  v6 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    sub_1CF680B4C((v2 > 1), v3 + 2, 1);
    v1 = v14;
    v2 = *(v14 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v6;
  *(v1 + v5 + 32) = 1;
  if (v4 < (v3 + 3))
  {
    sub_1CF680B4C((v2 > 1), v3 + 3, 1);
  }

  *(v14 + 16) = v3 + 3;
  *(v14 + v6 + 32) = 2;
  sub_1CF1E8B64(v14);
  sub_1CF680B4C(0, 2, 0);
  v7 = v0;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    sub_1CF680B4C((v8 > 1), v9 + 1, 1);
    v7 = v0;
    v8 = *(v0 + 24);
    v10 = v8 >> 1;
  }

  *(v7 + 16) = v11;
  *(v7 + v9 + 32) = 32;
  v12 = v9 + 2;
  if (v10 < v12)
  {
    sub_1CF680B4C((v8 > 1), v12, 1);
    v7 = v0;
  }

  *(v7 + 16) = v12;
  *(v7 + v11 + 32) = 33;
  sub_1CF1E8B64(v7);
  result = sub_1CF1E8B64(&unk_1F4BEAE80);
  qword_1EDEBBD68 = &unk_1F4BEAE58;
  return result;
}

uint64_t sub_1CF1D88B0(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 1)
  {
    if (a2 >> 5)
    {
      MEMORY[0x1D386A470](2);
    }

    else
    {
      MEMORY[0x1D386A470](1);
    }

    sub_1CF9E69C8();
  }

  else
  {
    if (v2 == 4)
    {
      if (a2 == 128)
      {
        v3 = 10;
      }

      else
      {
        v3 = 11;
      }
    }

    else if (v2 == 3)
    {
      if (a2 > 0x61u)
      {
        if (a2 == 98)
        {
          v3 = 8;
        }

        else
        {
          v3 = 9;
        }
      }

      else if (a2 == 96)
      {
        v3 = 6;
      }

      else
      {
        v3 = 7;
      }
    }

    else if (a2 > 0x41u)
    {
      if (a2 == 66)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }
    }

    else if (a2 == 64)
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }

    return MEMORY[0x1D386A470](v3);
  }
}

uint64_t sub_1CF1D8A78@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_1CF1D8AD8()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF1D88B0(v3, v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8B28()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF1D88B0(v3, v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8BA4()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CF9FD650[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8C2C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CF9FD650[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8C78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF043D7C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1CF1D8D80()
{
  result = qword_1EC4BE238;
  if (!qword_1EC4BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE238);
  }

  return result;
}

void sub_1CF1D8E0C(unsigned __int8 a1, id a2)
{
  v3 = a1 >> 5;
  if (!(a1 >> 5))
  {
    v9 = *(v2 + 96);
    v10 = *(v2 + 104);
    v11 = *(v2 + 112);
    sub_1CF03C530(v9, v10, v11);
    sub_1CF086728(a1, a2, v9, v10, v11);
    sub_1CF03D7A8(v9, v10, v11);
    return;
  }

  if (v3 == 1)
  {
    sub_1CF08692C(a1 & 1, a2, *(v2 + 120), *(v2 + 128));
    return;
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  if (a1 == 64)
  {
    swift_beginAccess();
    sub_1CF053478(v2 + 56, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      if (swift_dynamicCast())
      {
        v7 = [a2 bindLongParameter_];
        goto LABEL_9;
      }
    }

    else
    {
      sub_1CEFCCC44(v16, &unk_1EC4C1BE0, &unk_1CF9FD400);
    }

    v7 = [a2 bindObjectParameter_];
    goto LABEL_9;
  }

  if (a1 != 65)
  {
LABEL_8:
    v7 = [a2 bindObjectParameter_];
LABEL_9:
    v8 = v7;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return;
  }

  v4 = *(v2 + 136);
  v17 = MEMORY[0x1E69E6810];
  v16[0] = v4;
  sub_1CEFF8EA0(v16);
  v6 = v5;
  sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

uint64_t sub_1CF1D90A0@<X0>(id a1@<X1>, uint64_t result@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result >> 5;
  if (result >> 5)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
LABEL_7:
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return result;
      }

      if (result != 64)
      {
        if (result == 65)
        {
          *(a4 + 24) = &type metadata for JobReason;
          result = [a1 unsignedLongAtIndex_];
          *a4 = result;
          return result;
        }

        goto LABEL_7;
      }

      goto LABEL_14;
    }

    if ((result & 1) == 0)
    {
      *(a4 + 24) = &type metadata for JobSchedulingPriority;
      result = [a1 unsignedLongAtIndex_];
      goto LABEL_16;
    }

    v7 = &type metadata for NSecTimestamp;
LABEL_13:
    *(a4 + 24) = v7;
    result = [a1 longAtIndex_];
LABEL_16:
    *a4 = result;
    return result;
  }

  if (!result)
  {
LABEL_14:
    result = [a1 longAtIndex_];
    *(a4 + 24) = MEMORY[0x1E69E6530];
    *a4 = result;
    return result;
  }

  if (result == 1)
  {
    v7 = &type metadata for JobWaitCondition;
    goto LABEL_13;
  }

  result = [a1 isNullAtIndex_];
  if (result)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    result = sub_1CF1DFFC4(a3);
    if (!v4)
    {
      v9 = result;
      result = type metadata accessor for Continuation();
      *(a4 + 24) = result;
      *a4 = v9;
    }
  }

  return result;
}

uint64_t sub_1CF1D9214(unsigned __int8 a1)
{
  v1 = a1 >> 2;
  if (v1 == 63)
  {
    return 1701079411;
  }

  if (v1 == 55)
  {
    return 1701869940;
  }

  return sub_1CF1D841C(a1);
}

uint64_t sub_1CF1D9264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v8 = _s9SQLFieldsOMa_2();
  sub_1CF9E7FA8();
  swift_allocObject();
  v9 = sub_1CF9E6D68();
  *v10 = -8964;
  v11 = sub_1CF045898(v9);
  if (qword_1EDEAE328 != -1)
  {
    v11 = swift_once();
  }

  v18 = qword_1EDEBBD68;
  MEMORY[0x1EEE9AC00](v11);
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A8, &qword_1CF9FCAE8);
  v13 = sub_1CEFCCCEC(&qword_1EC4BE2C0, &qword_1EC4BE1A8, &qword_1CF9FCAE8);
  sub_1CF054A5C(sub_1CEFED338, v17, v12, v8, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  v15 = sub_1CF9E6D98();

  return v15;
}

BOOL sub_1CF1D9434(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 2;
  if (v2 == 55)
  {
    return (a2 & 0xFC) == 0xDC;
  }

  if (v2 == 63)
  {
    return a2 > 0xFBu;
  }

  if ((((a2 & 0xFC) >> 2) | 8) == 0x3F)
  {
    return 0;
  }

  return sub_1CF1DA680(a1, a2);
}

uint64_t sub_1CF1D9490(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 >> 2;
  if (v3 == 55)
  {
    v4 = 1;
    return MEMORY[0x1D386A470](v4);
  }

  if (v3 == 63)
  {
    v4 = 0;
    return MEMORY[0x1D386A470](v4);
  }

  MEMORY[0x1D386A470](2);

  return sub_1CF1D88B0(a1, a2);
}

uint64_t sub_1CF1D9504(unsigned __int8 a1)
{
  sub_1CF9E81D8();
  sub_1CF1D9490(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D954C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF1D9264(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

uint64_t sub_1CF1D9590()
{
  sub_1CF9E81D8();
  sub_1CF1D9490(v2, *v0);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D95E4(unsigned __int8 a1, void *a2, unint64_t a3)
{
  v5 = a1 >> 2;
  if (v5 == 55)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      v11 = *(a3 & 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v9 = *a3;
    }

    v12 = sub_1CF057C00();
    v7 = MEMORY[0x1E69E6530];
    v8 = qword_1CF9FD650[v12];
  }

  else
  {
    if (v5 != 63)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        v10 = a3 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = a3;
      }

      sub_1CF1DABD8(a1, v10, a2);
      if (!v3)
      {
        return v15;
      }

      return a2;
    }

    v6 = sub_1CF946E50(a3);
    v7 = MEMORY[0x1E69E6530];
    v8 = v6 & 1;
  }

  v17[3] = v7;
  v17[0] = v8;
  a2 = sub_1CEFF8EA0(v17);
  v14 = v13;
  sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v14)
  {
    return a2;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t *sub_1CF1D9764@<X0>(id a1@<X1>, uint64_t *result@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result >> 2;
  if (v5 == 55)
  {
    *(a4 + 24) = &type metadata for JobCode;
    result = sub_1CF043D7C([a1 longAtIndex_]);
    if (result == 89)
    {
LABEL_7:
      sub_1CF1DA5D8();
      swift_allocError();
      *v6 = 0;
      swift_willThrow();
      return __swift_deallocate_boxed_opaque_existential_0(a4);
    }

    *a4 = result;
  }

  else if (v5 == 63)
  {
    *(a4 + 24) = &type metadata for FileTreeSide;
    result = [a1 longAtIndex_];
    if (result != 1)
    {
      if (!result)
      {
        *a4 = 0;
        return result;
      }

      goto LABEL_7;
    }

    *a4 = 1;
  }

  else if (result == 64)
  {
    *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
    *a4 = a1;
    *(a4 + 8) = a3;
    return a1;
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1CF1D98A0(char a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for Job();
  sub_1CF05194C(a1);
  v24 = a7;
  v25 = a6;
  v26 = a11;
  v27 = a10;
  Item = type metadata accessor for Propagation.CreateItem();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  v24 = a7;
  v25 = a6;
  v26 = a11;
  v27 = a10;
  Item = type metadata accessor for Propagation.UpdateItem();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  v24 = a7;
  v25 = a6;
  v26 = a11;
  v27 = a10;
  Item = type metadata accessor for Propagation.DeleteItem();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  v24 = a6;
  v25 = a7;
  v26 = a10;
  v27 = a11;
  Item = type metadata accessor for Bouncing.BounceItem();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  v24 = a6;
  v25 = a7;
  v26 = a10;
  v27 = a11;
  Item = type metadata accessor for Ingestion.CollectCapturedContent();
  if (swift_dynamicCastMetatype() || (v24 = a6, v25 = a7, v26 = a10, v27 = a11, Item = type metadata accessor for Ingestion.MergeItems(), swift_dynamicCastMetatype()))
  {
LABEL_7:
    WitnessTable = swift_getWitnessTable();
    v19 = a2;
    v20 = a3;
    v21 = Item;
  }

  else
  {
    v24 = a6;
    v25 = a7;
    v26 = a10;
    v27 = a11;
    v23 = type metadata accessor for Ingestion.UnlinkOldVersion();
    if (!swift_dynamicCastMetatype())
    {
      result = sub_1CF9E7B68();
      __break(1u);
      return result;
    }

    WitnessTable = swift_getWitnessTable();
    v19 = a2;
    v20 = a3;
    v21 = v23;
  }

  result = sub_1CF01E03C(v19, v20, v21, WitnessTable, &v24);
  if (!v11)
  {
    return v24;
  }

  return result;
}

void sub_1CF1D9B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 64;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
  sub_1CF0230B4(&v17, v14, a4, v14, a7);
  if (!v7)
  {
    v17 = -36;
    sub_1CF0230B4(&v17, &type metadata for JobCode, a4, &type metadata for JobCode, a7);
    v17 = -4;
    sub_1CF0230B4(&v17, &type metadata for FileTreeSide, a4, &type metadata for FileTreeSide, a7);
    if (v15)
    {
      sub_1CF1D98A0(v15, v15, v16, a2, a3, a3, a2, a5, a6, a6, a5);
    }

    else
    {
      sub_1CF1D98A0(v15, v15, v16, a2, a3, a2, a3, a5, a6, a5, a6);
    }
  }
}

uint64_t sub_1CF1D9D04(unsigned __int8 *a1, void *a2, void *a3)
{
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  return sub_1CF1D95E4(*a1, a2, *v3);
}

void sub_1CF1D9D4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  sub_1CF1D9B58(a1, a4[2], a4[3], a2, a4[4], a4[5], a3);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1CF1D9D8C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CF1D9E08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1D9E48()
{
  result = qword_1EDEA8758;
  if (!qword_1EDEA8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8758);
  }

  return result;
}

unint64_t sub_1CF1D9F0C()
{
  result = qword_1EDEA8760;
  if (!qword_1EDEA8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8760);
  }

  return result;
}

unint64_t sub_1CF1D9F60()
{
  result = qword_1EDEA8778[0];
  if (!qword_1EDEA8778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA8778);
  }

  return result;
}

unint64_t sub_1CF1D9FB8()
{
  result = qword_1EDEA8770;
  if (!qword_1EDEA8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8770);
  }

  return result;
}

unint64_t sub_1CF1DA080()
{
  result = qword_1EDEAD440;
  if (!qword_1EDEAD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD440);
  }

  return result;
}

unint64_t sub_1CF1DA0D4()
{
  result = qword_1EDEAD450[0];
  if (!qword_1EDEAD450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAD450);
  }

  return result;
}

unint64_t sub_1CF1DA12C()
{
  result = qword_1EDEAD448;
  if (!qword_1EDEAD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD448);
  }

  return result;
}

unint64_t sub_1CF1DA180(uint64_t a1)
{
  result = sub_1CF1DA1A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1DA1A8()
{
  result = qword_1EC4BE248;
  if (!qword_1EC4BE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE248);
  }

  return result;
}

unint64_t sub_1CF1DA270()
{
  result = qword_1EDEAD420;
  if (!qword_1EDEAD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD420);
  }

  return result;
}

unint64_t sub_1CF1DA2C8()
{
  result = qword_1EDEAD428;
  if (!qword_1EDEAD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD428);
  }

  return result;
}

unint64_t sub_1CF1DA31C(uint64_t a1)
{
  result = sub_1CF1DA344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1DA344()
{
  result = qword_1EC4BE258;
  if (!qword_1EC4BE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE258);
  }

  return result;
}

unint64_t sub_1CF1DA39C()
{
  result = qword_1EC4BE260;
  if (!qword_1EC4BE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE260);
  }

  return result;
}

uint64_t sub_1CF1DA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF1DA49C()
{
  result = qword_1EC4BE278;
  if (!qword_1EC4BE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE278);
  }

  return result;
}

unint64_t sub_1CF1DA4F0()
{
  result = qword_1EC4BE280;
  if (!qword_1EC4BE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE280);
  }

  return result;
}

unint64_t sub_1CF1DA548()
{
  result = qword_1EC4BE288;
  if (!qword_1EC4BE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE288);
  }

  return result;
}

uint64_t sub_1CF1DA59C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF1DA5D8()
{
  result = qword_1EC4BE290;
  if (!qword_1EC4BE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE290);
  }

  return result;
}

unint64_t sub_1CF1DA62C()
{
  result = qword_1EC4BE298;
  if (!qword_1EC4BE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE298);
  }

  return result;
}

BOOL sub_1CF1DA680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 5;
  if (v2 > 1)
  {
    if (v2 == 4)
    {
      if (a1 == 128)
      {
        return a2 == 128;
      }

      if (a2 == 129)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (a1 <= 0x61u)
      {
        if (a1 == 96)
        {
          if (a2 != 96)
          {
            return 0;
          }
        }

        else if (a2 != 97)
        {
          return 0;
        }

        return 1;
      }

      if (a1 == 98)
      {
        return a2 == 98;
      }

      if (a2 == 99)
      {
        return 1;
      }
    }

    else
    {
      if (a1 > 0x41u)
      {
        if (a1 == 66)
        {
          if (a2 != 66)
          {
            return 0;
          }
        }

        else if (a2 != 67)
        {
          return 0;
        }

        return 1;
      }

      if (a1 != 64)
      {
        return a2 == 65;
      }

      if (a2 == 64)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a1 >> 5)
  {
    if ((a2 & 0xE0) != 0x20)
    {
      return 0;
    }

    v9 = (a1 & 1) == 0;
    if (a1)
    {
      v10 = 0x6D617473656D6974;
    }

    else
    {
      v10 = 0x797469726F697270;
    }

    if (v9)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE900000000000070;
    }

    if (a2)
    {
      v12 = 0x6D617473656D6974;
    }

    else
    {
      v12 = 0x797469726F697270;
    }

    if (a2)
    {
      v13 = 0xE900000000000070;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    if (v10 != v12 || v11 != v13)
    {
      goto LABEL_70;
    }

LABEL_69:

    return 1;
  }

  if (a2 > 0x1Fu)
  {
    return 0;
  }

  v3 = a1;
  if (!a1)
  {
    v5 = 0xE500000000000000;
    v4 = 0x6574617473;
    v6 = a2;
    if (a2)
    {
      goto LABEL_18;
    }

LABEL_67:
    v8 = 0xE500000000000000;
    if (v4 != 0x6574617473)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v5 = 0x80000001CFA2C3F0;
  }

  else
  {
    v5 = 0x80000001CFA2C410;
  }

  v6 = a2;
  if (!a2)
  {
    goto LABEL_67;
  }

LABEL_18:
  if (v6 == 1)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v6 == 1)
  {
    v8 = 0x80000001CFA2C3F0;
  }

  else
  {
    v8 = 0x80000001CFA2C410;
  }

  if (v4 != v7)
  {
    goto LABEL_70;
  }

LABEL_68:
  if (v5 == v8)
  {
    goto LABEL_69;
  }

LABEL_70:
  v15 = sub_1CF9E8048();

  return v15 & 1;
}

uint64_t sub_1CF1DA934()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF1DA980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1CF022A90();
  v34 = &_s9SQLFieldsON_0;
  v35 = a2;
  v36 = v8;
  v37 = a3;
  v9 = type metadata accessor for SQLCodableAccessorWrapper();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v39 = 64;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
  sub_1CF0230B4(&v39, v14, a2, v14, a3);
  if (!v4)
  {
    v30 = v10;
    v31 = 0;
    if (v33)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v15 = v32;
      v16 = &type metadata for SQLJobID;
      v17 = sub_1CF1DAE84();
    }

    v34 = v15;
    v37 = v16;
    v38 = v17;
    swift_beginAccess();
    sub_1CF03E0D8(&v34, v3 + 56);
    swift_endAccess();
    sub_1CF021034(sub_1CEFED334, 0, a2, &_s9SQLFieldsON_0, a3, v8, v13);
    WitnessTable = swift_getWitnessTable();
    v19 = v31;
    v20 = sub_1CF023980(v13, v9, WitnessTable);
    if (v19)
    {
      (*(v30 + 8))(v13, v9);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;
      (*(v30 + 8))(v13, v9);
      v26 = *(v5 + 96);
      v27 = *(v5 + 104);
      *(v5 + 96) = v23;
      *(v5 + 104) = v24;
      v28 = *(v5 + 112);
      *(v5 + 112) = v25;
      sub_1CF03D7A8(v26, v27, v28);
    }
  }

  return v5;
}

void sub_1CF1DABD8(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 104);
  v8 = *(*a2 + 96);
  type metadata accessor for Propagation.CreateItem();
  if (swift_dynamicCastClass())
  {
    sub_1CF1E6534(a1, a3);
  }

  else
  {
    type metadata accessor for Propagation.UpdateItem();
    if (swift_dynamicCastClass())
    {
      sub_1CF1E66F4(a1, a3);
    }

    else
    {
      type metadata accessor for Propagation.DeleteItem();
      if (swift_dynamicCastClass())
      {
        sub_1CF1E6964(a1, a3);
      }

      else
      {
        type metadata accessor for Bouncing.BounceItem();
        if (swift_dynamicCastClass())
        {
          sub_1CF1FE944(a1, a3);
        }

        else
        {
          type metadata accessor for Ingestion.CollectCapturedContent();
          if (swift_dynamicCastClass())
          {
            sub_1CF1FEC64(a1, a3);
          }

          else
          {
            type metadata accessor for Ingestion.MergeItems();
            if (swift_dynamicCastClass())
            {
              sub_1CF1FECF4(a1, a3);
            }

            else
            {
              type metadata accessor for Ingestion.UnlinkOldVersion();
              if (swift_dynamicCastClass())
              {
                sub_1CF1FEE18(a1, a3);
              }

              else
              {
                sub_1CF9E7B68();
                __break(1u);
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1CF1DAE84()
{
  result = qword_1EDEA42C8;
  if (!qword_1EDEA42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA42C8);
  }

  return result;
}

unint64_t sub_1CF1DAED8()
{
  result = qword_1EC4BE2B8;
  if (!qword_1EC4BE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE2B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemStateSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_20;
  }

  v2 = a2 + 29;
  if (a2 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 29;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 29;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x1C)
  {
    v8 = v7 - 27;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ItemStateSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 29;
  if (a3 + 29 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE3)
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JobSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3C)
  {
    goto LABEL_17;
  }

  if (a2 + 196 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 196) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 196;
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

      return (*a1 | (v4 << 8)) - 196;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 196;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7))) ^ 0x3F;
  if (v6 >= 0x3B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for JobSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 196 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 196) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3C)
  {
    v4 = 0;
  }

  if (a2 > 0x3B)
  {
    v5 = ((a2 - 60) >> 8) + 1;
    *result = a2 - 60;
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
    *result = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF1DB238(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 3 | (4 * (v1 >> 5))) - 6;
  }
}

_BYTE *sub_1CF1DB268(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (32 * a2);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (32 * ((a2 - 2) >> 2))) + 64;
  }

  return result;
}

uint64_t sub_1CF1DB2AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3A)
  {
    goto LABEL_20;
  }

  v2 = a2 + 198;
  if (a2 + 198 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 198;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 198;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 198;
    }
  }

LABEL_20:
  v7 = (*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7));
  v8 = v7 ^ 0x3F;
  v9 = 64 - v7;
  if (v8 >= 0x3B)
  {
    v9 = 0;
  }

  if (v9 >= 3)
  {
    return v9 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF1DB360(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 198;
  if (a3 + 198 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0x3A)
  {
    v5 = 0;
  }

  if (a2 > 0x39)
  {
    v6 = ((a2 - 58) >> 8) + 1;
    *result = a2 - 58;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = ((62 - a2) >> 1) & 0x1C | (32 * (62 - a2));
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1CF1DB428(unsigned __int8 *a1)
{
  v1 = (*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7));
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

_BYTE *sub_1CF1DB450(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x3B)
  {
    LOBYTE(v2) = a2 - 60;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 4 * (((-a2 >> 3) & 7) - 8 * a2);
  }

  *result = v2;
  return result;
}

uint64_t sub_1CF1DB5A8(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v4);
  if (!v5)
  {
    v3 = 0x284449636F64;
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v3 = 0x284449656C6966;
LABEL_5:
    v1 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v1);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v3;
  }

  if (v4)
  {
    return 0x6873617274;
  }

  else
  {
    return 1953460082;
  }
}

uint64_t sub_1CF1DB6A4(void (*a1)(void **__return_ptr))
{
  a1(&v4);
  v1 = v4;
  v2 = NSFileProviderItemIdentifier.description.getter();

  return v2;
}

uint64_t sub_1CF1DB750(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v17 - v12;
  v14 = a1(v11);
  v15 = a5(v14);
  sub_1CEFCCC44(v13, a3, a4);
  return v15;
}

double sub_1CF1DB810(uint64_t a1)
{
  *a1 = 8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

BOOL sub_1CF1DB848(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a1 + 8);
  v11 = *a2;
  v10 = a2[1];
  if (v9 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_32;
    }

    if (v8)
    {
      if ((*(a3 + 48) & 1) == 0)
      {
        v8 = *(a3 + 40);
        goto LABEL_7;
      }

      __break(1u);
LABEL_32:
      sub_1CF5105CC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree+Lookup.swift", 130, 2, 582, v8, 0);
    }

    v8 = *(a3 + 24);
  }

LABEL_7:
  v12 = a2[1];

  v14 = *(a3 + 16);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v34 = 0;
  v36 = 0u;
  v37 = 0;
  v35 = v8;
  DWORD1(v36) = 0;
  if (!v10)
  {
    v29 = 0;
    v30 = v8;
    v31 = 0uLL;
    LODWORD(v27[0]) = -1;
    v17 = fpfs_openfdbyhandle();
    if (v17 < 0)
    {
      v24 = MEMORY[0x1D38683F0]();
      v33.st_dev = 0;
      LOBYTE(v33.st_mode) = 1;
      LOBYTE(v33.st_atimespec.tv_nsec) = 0;
      v25 = sub_1CF19BBE4(v24, &v33.st_dev);
      sub_1CF1969CC(&v33);
      swift_willThrow();

LABEL_27:
      result = 0;
      goto LABEL_28;
    }

LABEL_16:
    v19 = v17;

    goto LABEL_17;
  }

  MEMORY[0x1EEE9AC00](v15);
  if ((v10 & 0x1000000000000000) == 0)
  {
    if ((v10 & 0x2000000000000000) != 0)
    {
      v27[0] = v11;
      v27[1] = v10 & 0xFFFFFFFFFFFFFFLL;
      *(&v36 + 1) = v27;
      v29 = 0;
      *&v30 = v8;
      *(&v30 + 1) = v16;
      *&v31 = v27;
      *(&v31 + 1) = v16;
      v17 = fpfs_openfdbyhandle();
      if (v17 < 0)
      {
        v18 = MEMORY[0x1D38683F0]();
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      *(&v36 + 1) = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v29 = 0;
      *&v30 = v8;
      *(&v30 + 1) = v16;
      *&v31 = *(&v36 + 1);
      *(&v31 + 1) = v16;
      LODWORD(v27[0]) = -1;
      v17 = fpfs_openfdbyhandle();
      if (v17 < 0)
      {
        v18 = MEMORY[0x1D38683F0]();
LABEL_25:
        v33.st_dev = 0;
        LOBYTE(v33.st_mode) = 1;
        LOBYTE(v33.st_atimespec.tv_nsec) = 0;
        v5 = sub_1CF19BBE4(v18, &v33.st_dev);
        sub_1CF1969CC(&v33);
        swift_willThrow();
LABEL_26:

        goto LABEL_27;
      }

      goto LABEL_16;
    }
  }

  sub_1CF9E7938();
  if (v4)
  {
    goto LABEL_26;
  }

  v19 = v28;
LABEL_17:
  memset(&v33, 0, sizeof(v33));
  if (fstat(v19, &v33) < 0)
  {
    v22 = MEMORY[0x1D38683F0]();
    v29 = 3;
    v30 = 0u;
    v31 = 0u;
    v32 = 19;
    v23 = sub_1CF19BBE4(v22, &v29);
    sub_1CF1969CC(&v29);
    swift_willThrow();
    if ((v19 & 0x80000000) == 0)
    {
      close(v19);
    }

    goto LABEL_27;
  }

  result = v33.st_ino == a4;
  if ((v19 & 0x80000000) == 0)
  {
    v21 = v33.st_ino == a4;
    close(v19);
    result = v21;
  }

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1DBC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF1DBCF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1CF1DBDD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v35 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v35 - v17);
  v19 = *(a1 + 24);
  if (!v19)
  {
    sub_1CEFDB034();
    v27 = swift_allocError();
    *v28 = 2;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    *(v28 + 40) = 19;
    *v18 = v27;
    swift_storeEnumTagMultiPayload();
    v29 = v18;
    v30 = a2;
LABEL_6:
    sub_1CF1DEF00(v29, v30);
    return 0;
  }

  v35[0] = a2;
  v20 = strlen(v19);
  if (v20 <= 0)
  {
    sub_1CEFDB034();
    v31 = swift_allocError();
    *v32 = 2;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 19;
    *v18 = v31;
    swift_storeEnumTagMultiPayload();
    v29 = v18;
    v30 = v35[0];
    goto LABEL_6;
  }

  v21 = v20;
  v22 = [objc_opt_self() defaultManager];
  v23 = [v22 stringWithFileSystemRepresentation:v19 length:v21];

  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  a3(a1, v24, v26);
  swift_storeEnumTagMultiPayload();
  sub_1CEFE55D0(v10, v13, &unk_1EC4BF310, &unk_1CF9FDB30);
  v33 = v35[0];
  sub_1CEFE55D0(v13, v16, &unk_1EC4BF310, &unk_1CF9FDB30);
  sub_1CF1DEF00(v16, v33);

  return 0;
}

uint64_t sub_1CF1DC0A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001CFA2F2A0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFA2F2C0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFA2F2E0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CFA2F300 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEE0074657366664FLL || (sub_1CF9E8048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1CF9E8048();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1CF1DC2C8(unsigned __int8 a1)
{
  v1 = 0x6E6F697469736F70;
  v2 = 0xD000000000000013;
  if (a1 != 4)
  {
    v1 = 0x74696D696CLL;
  }

  if (a1 == 3)
  {
    v1 = 0xD000000000000013;
  }

  v3 = 0xD000000000000017;
  if (a1 != 1)
  {
    v3 = 0xD000000000000011;
  }

  if (a1)
  {
    v2 = v3;
  }

  if (a1 <= 2u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1CF1DC38C()
{
  swift_getWitnessTable();

  return sub_1CF9E8088();
}

uint64_t sub_1CF1DC400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CF1DC46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF1DC4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1CF1DC54C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  result = sub_1CEFEBB18(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1DC57C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_1CF1DC2C0(*v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CF1DC5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1CF1DC0A8(a1, a2);
  *a4 = result;
  return result;
}

unint64_t sub_1CF1DC608@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  result = sub_1CEFEBB18(a1);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1DC634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF1DC688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF1DC6DC()
{
  swift_beginAccess();
  v6 = *(v0 + 24);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](64, 0xE100000000000000);
  LODWORD(v6) = *(v0 + 32);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  sub_1CF9E7948();

  LODWORD(v6) = *(v0 + 36);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x3A646165726E7520, 0xE800000000000000);
  LODWORD(v6) = *(v0 + 40);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x3A64616572, 0xE500000000000000);

  return 980576612;
}

uint64_t sub_1CF1DC8B4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1CF1DCF6C(a1);
  return v2;
}

uint64_t sub_1CF1DC904(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3D8, &qword_1CF9FDB40);
  v20 = *(v4 - 8);
  v21 = v4;
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v8 = a1[3];
  v9 = a1[4];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3E0, &qword_1CF9FDB48);
  sub_1CF1DEFFC(qword_1EC4BE3E8, &qword_1EC4BE3E0, &qword_1CF9FDB48);
  sub_1CF9E8298();
  if (v2)
  {
    v10 = v1;
    __swift_destroy_boxed_opaque_existential_1(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDA0, &unk_1CF9FDB50);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v20;
    v12 = v21;
    LOBYTE(v22[0]) = 0;
    v10 = v1;
    v13 = sub_1CF9E7DE8();
    LOBYTE(v22[0]) = 1;
    v14 = sub_1CF9E7DD8();
    LOBYTE(v22[0]) = 2;
    v15 = sub_1CF9E7D98();
    LOBYTE(v22[0]) = 3;
    v16 = sub_1CF9E7D98();
    *(v1 + 16) = 0;
    *(v1 + 24) = v13;
    *(v1 + 32) = v14;
    *(v1 + 36) = v15;
    *(v1 + 40) = v16;
    *(v1 + 44) = 1;
    LOBYTE(v22[0]) = 5;
    v18 = sub_1CF9E7D08();
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 0x7FFFFFFF;
    }

    else
    {
      v19 = v18;
    }

    *(v1 + 56) = v19;
    swift_beginAccess();
    *(v1 + 52) = -1;
    *(v1 + 60) = 0;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v22);
    (*(v11 + 8))(v7, v12);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return v10;
}

uint64_t sub_1CF1DCC38(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3B8, &qword_1CF9FDB10);
  v20 = *(v4 - 8);
  v21 = v4;
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v8 = a1[3];
  v9 = a1[4];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3C0, &qword_1CF9FDB18);
  sub_1CF1DEFFC(&qword_1EC4BE3C8, &qword_1EC4BE3C0, &qword_1CF9FDB18);
  sub_1CF9E8298();
  if (v2)
  {
    v10 = v1;
    __swift_destroy_boxed_opaque_existential_1(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3D0, &unk_1CF9FDB20);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v20;
    v12 = v21;
    LOBYTE(v22[0]) = 0;
    v10 = v1;
    v13 = sub_1CF9E7DE8();
    LOBYTE(v22[0]) = 1;
    v14 = sub_1CF9E7DD8();
    LOBYTE(v22[0]) = 2;
    v15 = sub_1CF9E7D98();
    LOBYTE(v22[0]) = 3;
    v16 = sub_1CF9E7D98();
    *(v1 + 16) = 0;
    *(v1 + 24) = v13;
    *(v1 + 32) = v14;
    *(v1 + 36) = v15;
    *(v1 + 40) = v16;
    *(v1 + 44) = 1;
    LOBYTE(v22[0]) = 5;
    v18 = sub_1CF9E7D08();
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 0x7FFFFFFF;
    }

    else
    {
      v19 = v18;
    }

    *(v1 + 56) = v19;
    swift_beginAccess();
    *(v1 + 52) = -1;
    *(v1 + 60) = 0;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v22);
    (*(v11 + 8))(v7, v12);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return v10;
}

uint64_t sub_1CF1DCF6C(uint64_t *a1)
{
  v19[9] = *(*v1 + 112);
  type metadata accessor for FSDirectoryLister.CodingKeys();
  swift_getWitnessTable();
  v18 = sub_1CF9E7E08();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v17 - v6;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for FSDirectoryLister();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v9 = sub_1CF9E7DE8();
    LOBYTE(v19[0]) = 1;
    v10 = sub_1CF9E7DD8();
    LOBYTE(v19[0]) = 2;
    v12 = sub_1CF9E7D98();
    LOBYTE(v19[0]) = 3;
    v13 = sub_1CF9E7D98();
    *(v1 + 16) = 0;
    *(v1 + 24) = v9;
    *(v1 + 32) = v10;
    *(v1 + 36) = v12;
    *(v1 + 40) = v13;
    *(v1 + 44) = 1;
    LOBYTE(v19[0]) = 5;
    v14 = v18;
    v15 = sub_1CF9E7D08();
    if ((v15 & 0x100000000) != 0)
    {
      v16 = 0x7FFFFFFF;
    }

    else
    {
      v16 = v15;
    }

    *(v1 + 56) = v16;
    swift_beginAccess();
    *(v1 + 52) = -1;
    *(v1 + 60) = 0;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v19);
    (*(v4 + 8))(v7, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1CF1DD2A4(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v25 - v7;
  v8 = *(v4 + 112);
  type metadata accessor for FSDirectoryLister.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_1CF9E7F78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  swift_beginAccess();
  v15 = v2[3];
  LOBYTE(v29[0]) = 0;
  v16 = v30;
  sub_1CF9E7F68();
  if (v16)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = *(v2 + 8);
  LOBYTE(v29[0]) = 1;
  sub_1CF9E7F58();
  v21 = *(v2 + 9);
  LOBYTE(v29[0]) = 2;
  sub_1CF9E7F18();
  v22 = *(v2 + 10);
  LOBYTE(v29[0]) = 3;
  sub_1CF9E7F18();
  v23 = *(v2 + 14);
  LOBYTE(v29[0]) = 5;
  sub_1CF9E7F18();
  sub_1CF9E7E28();
  v30 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  (*(v18 + 8))(v17, v19);
  (*(v10 + 8))(v13, v9);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void sub_1CF1DD628()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  v2 = *(v0 + 64);
}

uint64_t sub_1CF1DD65C()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  return v0;
}

uint64_t sub_1CF1DD688()
{
  sub_1CF1DD65C();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF1DD6F8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1CF1DD744(a1);
}

uint64_t sub_1CF1DD744(uint64_t a1)
{
  v36 = a1;
  v2 = sub_1CF9E5868();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = &v28 - v7;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[12] = 0;
  v1[13] = 0;
  if (qword_1EC4BCD90 != -1)
  {
    swift_once();
  }

  v13 = *algn_1EC4EBF38;
  v32 = qword_1EC4EBF30;
  v34 = byte_1EC4EBF49;
  v35 = byte_1EC4EBF48;
  v33 = byte_1EC4EBF4A;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v14 = *(v9 + 72);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CF9FA450;
  v17 = qword_1EC4EBF40;
  sub_1CF9E58C8();
  sub_1CF9E58C8();
  v18 = type metadata accessor for VFSLookupScope();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 40) = 0;
  *(v21 + 48) = 1;
  *(v21 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = &unk_1F4BEC9D8;
  *(v21 + 40) = 0;
  *(v21 + 48) = 1;
  *(v21 + 56) = 0;
  *(v21 + 64) = v32;
  *(v21 + 72) = v13;
  *(v21 + 80) = v17;
  v22 = v34;
  *(v21 + 88) = v35;
  *(v21 + 89) = v22;
  *(v21 + 90) = v33;
  v23 = *(v16 + 16);

  if (v23)
  {
    (*(v9 + 16))(v21 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v16 + v15, v8);
  }

  else
  {
    (*(v9 + 56))(v28, 1, 1, v8);
    (*(v30 + 104))(v29, *MEMORY[0x1E6968F70], v31);
    sub_1CF9E5A38();
  }

  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v16;
  (*(v9 + 32))(v21 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v12, v8);
  *(v21 + 49) = 0;
  v1[10] = 0;
  v1[11] = 0;
  v1[9] = v21;
  (*(v9 + 56))(v1 + qword_1EDEBBC00, 1, 1, v8);
  v24 = (v1 + qword_1EDEBBC08);
  *v24 = 0;
  v24[1] = 0;
  v25 = v36;
  sub_1CF1A91AC(v36, v37);
  v26 = sub_1CF1DC904(v37);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v26;
}

uint64_t sub_1CF1DDB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v6 = *(*(v55 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v55);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v47 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v47 - v13);
  v58 = -1;
  v56 = a1;
  if (!*(a1 + 24))
  {
LABEL_23:
    __break(1u);
  }

  sub_1CF9E6A58();
  swift_beginAccess();
  v15 = *(v2 + 52);
  sub_1CF9E6978();
  v16 = openat_s();

  if ((v16 & 0x80000000) != 0)
  {
    v42 = MEMORY[0x1D38683F0](v17);
    v61 = 0;
    aBlock = 0u;
    v60 = 0u;
    LOBYTE(v62) = 19;
    v43 = sub_1CF19BBE4(v42, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    swift_endAccess();

    v44 = v56;
    if (sub_1CF1DEF70(v43, v56))
    {
      v45 = objc_opt_self();
      if ((v44[52] & 0x80000000) != 0)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      [v45 fp_errorForDataProtectionClass_];
      swift_willThrow();

      result = v58;
      if ((v58 & 0x80000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      swift_willThrow();
      result = v58;
      if ((v58 & 0x80000000) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    result = close(result);
    goto LABEL_20;
  }

  v54 = v14;
  v48 = v12;
  v52 = v9;
  v47[0] = a2;
  v47[1] = v3;
  swift_endAccess();

  if ((v58 & 0x80000000) == 0)
  {
    close(v58);
  }

  v58 = v16;
  v18 = *(v2 + 72);
  os_unfair_lock_lock((v18 + 56));
  v19 = *(v18 + 64);
  v20 = *(v18 + 72);
  v21 = *(v18 + 88);
  v22 = *(v18 + 89);
  v23 = *(v18 + 90);

  v53 = &v60;
  v24 = *(v18 + 80);
  os_unfair_lock_unlock((v18 + 56));
  v50 = v47;
  MEMORY[0x1EEE9AC00](v25);
  v47[-2] = v2;
  v47[-1] = &v58;
  v61 = v19;
  v62 = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_1CEFDB088;
  *(&v60 + 1) = &block_descriptor_6;
  v26 = _Block_copy(&aBlock);
  v51 = v20;

  v49 = v26;
  v63 = v26;
  v64 = v24;
  v65 = v21;
  v66 = v22;
  v67 = v23;
  sub_1CEFDB034();
  v27 = swift_allocError();
  *v28 = 7;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 19;
  v29 = v54;
  *v54 = v27;
  swift_storeEnumTagMultiPayload();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = sub_1CF1DEED8;
  v30[4] = &v47[-4];
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1CF1DEEF4;
  *(v31 + 24) = v30;
  v61 = sub_1CEFDB240;
  v62 = v31;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_1CEFDB270;
  *(&v60 + 1) = &block_descriptor_52;
  v32 = _Block_copy(&aBlock);

  v33 = fpfs_load_additional_attrs();
  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v33)
  {
    swift_getErrorValue();
    v34 = v57;
    v35 = swift_allocError();
    *v36 = 7;
    *(v36 + 8) = 0u;
    *(v36 + 24) = 0u;
    *(v36 + 40) = 19;
    v37 = v33;
    v38 = sub_1CF199074(v35, v34);

    v39 = v48;
    *v48 = v38;
    swift_storeEnumTagMultiPayload();
    sub_1CF1DEF00(v39, v29);
  }

  v40 = v52;
  sub_1CEFCCBDC(v29, v52, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&aBlock = *v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v29, &unk_1EC4BF310, &unk_1CF9FDB30);

    _Block_release(v49);

    result = v58;
    if ((v58 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  sub_1CEFE55D0(v40, v47[0], &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCC44(v29, &unk_1EC4BF310, &unk_1CF9FDB30);

  _Block_release(v49);

  result = v58;
  if ((v58 & 0x80000000) == 0)
  {
    result = close(v58);
  }

LABEL_20:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1DE258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, void *a6@<X8>)
{
  v91 = a6;
  v88 = a1;
  v89 = a5;
  v86 = a2;
  v87 = a3;
  v7 = sub_1CF9E6118();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v78 - v11;
  v12 = sub_1CF9E5868();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E53C8();
  v83 = *(v16 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v78 - v22;
  v24 = sub_1CF9E5A58();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v78 - v29;
  v90 = a4;
  v31 = a4 + qword_1EDEBBC00;
  v33 = v32;
  v35 = v34;
  sub_1CEFCCBDC(v31, v23, &unk_1EC4BE310, qword_1CF9FCBE0);
  v93 = v35;
  v36 = *(v35 + 48);
  v95 = v33;
  if (v36(v23, 1, v33) == 1)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BE310, qword_1CF9FCBE0);
    LODWORD(v94[0]) = 5;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v83 + 8))(v19, v16);
    return swift_willThrow();
  }

  (*(v93 + 32))(v30, v23, v95);
  v39 = v87;
  v38 = v88;
  v40 = *(v88 + 40) & 0xFFFFFFFE;
  v41 = v84;
  v42 = v85;
  v43 = *(v84 + 104);
  v44 = v86;
  v94[0] = v86;
  v94[1] = v87;
  if (v40 == 2)
  {
    v45 = MEMORY[0x1E6968F58];
  }

  else
  {
    v45 = MEMORY[0x1E6968F68];
  }

  v43(v15, *v45, v85);
  sub_1CEFE4E68();
  sub_1CF9E5A48();
  (*(v41 + 8))(v15, v42);
  v46 = *(v38 + 64);
  if (fpfs_is_busy_date())
  {
    v47 = sub_1CF9E5928();
    v48 = *v89;
    if (*(v90 + qword_1EDEBBC08 + 8))
    {
      v49 = *(v90 + qword_1EDEBBC08);
      v50 = sub_1CF9E6888();
    }

    else
    {
      v50 = 0;
    }

    v57 = [v47 fp:v48 deleteStaleBusyFileWithFileDescriptor:v50 coordinatorPurposeIdentifier:?];

    v58 = fpfs_current_or_default_log();
    if (v57)
    {
      v59 = v79;
      sub_1CF9E6128();

      v60 = sub_1CF9E6108();
      LOBYTE(v61) = sub_1CF9E7298();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v44;
        v65 = v93;
        v66 = v63;
        v94[0] = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_1CEFD0DF0(v64, v39, v94);
        v67 = "🏗 Removed stale busy file %s";
LABEL_17:
        _os_log_impl(&dword_1CEFC7000, v60, v61, v67, v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x1D386CDC0](v66, -1, -1);
        MEMORY[0x1D386CDC0](v62, -1, -1);

        (*(v81 + 8))(v59, v82);
        v70 = *(v65 + 8);
        v71 = v95;
        v70(v28, v95);
        v70(v30, v71);
LABEL_19:
        v74 = 1;
        v54 = v91;
        goto LABEL_21;
      }
    }

    else
    {
      v59 = v80;
      sub_1CF9E6128();

      v60 = sub_1CF9E6108();
      v61 = sub_1CF9E7298();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v44;
        v65 = v93;
        v66 = v68;
        v94[0] = v68;
        *v62 = 136315138;
        *(v62 + 4) = sub_1CEFD0DF0(v69, v39, v94);
        v67 = "🏗 Ignoring the busy file %s from enumeration";
        goto LABEL_17;
      }
    }

    (*(v81 + 8))(v59, v82);
    v72 = *(v93 + 8);
    v73 = v95;
    v72(v28, v95);
    v72(v30, v73);
    goto LABEL_19;
  }

  type metadata accessor for VFSFileTree(0);
  v51 = v90[10];
  v52 = v90[11];
  v54 = v91;
  v53 = v92;
  sub_1CEFE1E30(*v89, v38, 2, v28, v90[9], v91, 0);
  if (v53)
  {
    v55 = *(v93 + 8);
    v56 = v95;
    v55(v28, v95);
    return (v55)(v30, v56);
  }

  v75 = *(v93 + 8);
  v76 = v95;
  v75(v28, v95);
  v75(v30, v76);
  v74 = 0;
LABEL_21:
  v77 = type metadata accessor for VFSItem(0);
  return (*(*(v77 - 8) + 56))(v54, v74, 1, v77);
}

uint64_t sub_1CF1DEA44()
{
  v1 = v0[9];

  v2 = v0[10];
  swift_unknownObjectRelease();
  v3 = v0[13];

  sub_1CEFCCC44(v0 + qword_1EDEBBC00, &unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(v0 + qword_1EDEBBC08 + 8);
}

uint64_t sub_1CF1DEAB0()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 104);

  sub_1CEFCCC44(v0 + qword_1EDEBBC00, &unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(v0 + qword_1EDEBBC08 + 8);

  return v0;
}

uint64_t sub_1CF1DEB28()
{
  sub_1CF1DEAB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CF1DEBA0()
{
  sub_1CF1DEC4C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_1CF1DEC4C()
{
  if (!qword_1EDEAFE20)
  {
    sub_1CF9E5A58();
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAFE20);
    }
  }
}

uint64_t sub_1CF1DECA4@<X0>(uint64_t a1@<X8>)
{
  v2 = fpfs_fileattrs_fullpath();
  if (v2 && (v3 = v2, v4 = strlen(v2), v4 >= 1))
  {
    v5 = v4;
    v6 = [objc_opt_self() defaultManager];
    v7 = [v6 stringWithFileSystemRepresentation:v3 length:v5];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    sub_1CF9E58C8();
    swift_bridgeObjectRelease_n();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1CF9E5A58();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_1CF1DEDC4(uint64_t *a1)
{
  swift_allocObject();
  sub_1CF1A91AC(a1, v4);
  v2 = sub_1CF1DCC38(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF1DEE3C()
{
  v1 = *(v0 + 52);
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1CF1DEF00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1CF1DEF70(uint64_t a1, _DWORD *a2)
{
  sub_1CF9E52B8();
  sub_1CF196978();
  if ((sub_1CF9E5658() & 1) == 0 || a2[10] != 1 || (a2[52] - 1) > 1)
  {
    return 0;
  }

  v3 = a2[53];
  return v3 == geteuid();
}

uint64_t sub_1CF1DEFFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for EvictionUrgency(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1CF1DF1A8(uint64_t a1, char a2)
{
  v13[4] = a1;
  v14 = a2 & 1;
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E6530];
  }

  v13[0] = a1;
  v13[3] = v2;
  v3 = sub_1CEFF8EA0(v13);
  v5 = v4;
  sub_1CEFCCC44(v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    v6 = sub_1CF9E56C8();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
    sub_1CF1E13A4();
    v9 = sub_1CF9E56A8();
    v11 = v10;
    v3 = sub_1CF04E5D8(v9, v10);

    sub_1CEFE4714(v9, v11);
  }

  return v3;
}

uint64_t sub_1CF1DF344(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v21 = a4;
  if ((a4 >> 8))
  {
    v4 = 0;
    v5 = 0;
    v20[1] = 0;
    v20[2] = 0;
  }

  else
  {
    v6 = a4;
    v8 = a2;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = v8;
    *(v4 + 32) = a3;
    *(v4 + 40) = v6 & 1;
    v5 = &type metadata for VFSVersion;
  }

  v20[0] = v4;
  v20[3] = v5;
  v10 = sub_1CEFF8EA0(v20);
  v12 = v11;
  sub_1CEFCCC44(v20, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v12)
  {
    v13 = sub_1CF9E56C8();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE510, &qword_1CF9FDDC8);
    sub_1CF04EE34(&qword_1EC4BE518, &qword_1EC4BE510, &qword_1CF9FDDC8, sub_1CF1E1070);
    v16 = sub_1CF9E56A8();
    v18 = v17;
    v10 = sub_1CF04E5D8(v16, v17);

    sub_1CEFE4714(v16, v18);
  }

  return v10;
}

uint64_t sub_1CF1DF550(uint64_t a1)
{
  v14[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v3;
  v14[3] = v2;

  v4 = sub_1CEFF8EA0(v14);
  v6 = v5;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    v7 = sub_1CF9E56C8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE498, &qword_1CF9FDDB0);
    sub_1CF1E0E04();
    v10 = sub_1CF9E56A8();
    v12 = v11;
    v4 = sub_1CF04E5D8(v10, v11);

    sub_1CEFE4714(v10, v12);
  }

  return v4;
}

uint64_t sub_1CF1DF708(uint64_t a1)
{
  v14[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v3;
  v14[3] = v2;

  v4 = sub_1CEFF8EA0(v14);
  v6 = v5;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    v7 = sub_1CF9E56C8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE508, &qword_1CF9FDDC0);
    sub_1CF1E0FC0();
    v10 = sub_1CF9E56A8();
    v12 = v11;
    v4 = sub_1CF04E5D8(v10, v11);

    sub_1CEFE4714(v10, v12);
  }

  return v4;
}

uint64_t sub_1CF1DF938(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v21[4] = a1;
  if (a1)
  {
    v9 = a2(0);
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v10;
  v21[3] = v9;

  v11 = sub_1CEFF8EA0(v21);
  v13 = v12;
  sub_1CEFCCC44(v21, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v13)
  {
    v14 = sub_1CF9E56C8();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    a5();
    v17 = sub_1CF9E56A8();
    v19 = v18;
    v11 = sub_1CF04E5D8(v17, v18);

    sub_1CEFE4714(v17, v19);
  }

  return v11;
}

uint64_t sub_1CF1DFAEC(char a1)
{
  v13 = a1;
  if (a1 == 2)
  {
    v1 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    LOBYTE(v12[0]) = a1 & 1;
    v1 = MEMORY[0x1E69E6370];
  }

  v12[3] = v1;
  v2 = sub_1CEFF8EA0(v12);
  v4 = v3;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v4)
  {
    v5 = sub_1CF9E56C8();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    sub_1CF1D6C9C();
    v8 = sub_1CF9E56A8();
    v10 = v9;
    v2 = sub_1CF04E5D8(v8, v9);

    sub_1CEFE4714(v8, v10);
  }

  return v2;
}