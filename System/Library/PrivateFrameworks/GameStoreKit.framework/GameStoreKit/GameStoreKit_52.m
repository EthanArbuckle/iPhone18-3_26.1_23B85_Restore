void sub_24EB52DDC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_24F92B0D8();
      sub_24F92D068();
      v10 = v9;
      sub_24F92B218();
      v11 = sub_24F92D0B8();

      v12 = v11 & v7;
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
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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
}

char *sub_24EB52FBC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24E772724(*(a2 + 48) + 40 * v6, v21);
      sub_24F92D068();
      _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      v9 = sub_24F92D0B8();
      result = sub_24E772780(v21);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = v11 + 40 * v3;
        v13 = (v11 + 40 * v6);
        if (v3 != v6 || v12 >= v13 + 40)
        {
          v14 = *v13;
          v15 = v13[1];
          *(v12 + 32) = *(v13 + 4);
          *v12 = v14;
          *(v12 + 16) = v15;
        }

        v16 = *(a2 + 56);
        result = (v16 + 88 * v3);
        v17 = (v16 + 88 * v6);
        if (v3 != v6 || result >= v17 + 88)
        {
          result = memmove(result, v17, 0x58uLL);
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

char *sub_24EB53178(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      v9 = sub_24F92D0B8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v15 + 72 || v3 != v6)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24EB53354(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      v9 = sub_24F92D0B8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_24EB53518(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_24F92C6C8();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_24E602068(&qword_27F21BCC0, &qword_27F21BCB8);
      v21 = sub_24F92AEE8();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for Game() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_24EB53874(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_24F92C6C8() + 1) & ~v6;
    while (1)
    {
      sub_24F92D068();

      sub_24F92B218();
      v11 = sub_24F92D0B8();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_24EB53A78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24E65864C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_24F92C7B8();
      result = sub_24E6585F8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
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
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

uint64_t sub_24EB53C20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      v9 = sub_24F92D0B8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_24EB53DD0(int64_t a1, uint64_t a2)
{
  v38 = sub_24F929598();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_24F92C6C8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_24EB5B300(&qword_27F21BCE8, MEMORY[0x277D21F50]);
      v22 = sub_24F92AEE8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_24EB540F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24E65864C(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_24F92C7B8();
      result = sub_24E6585F8(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
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

      else if (v10 >= v8 || v3 >= v10)
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

  return result;
}

uint64_t sub_24EB54298(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24EB545B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      v10 = sub_24F92D0B8();

      v11 = v10 & v7;
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
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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

uint64_t sub_24EB5476C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      v11 = sub_24F92D0B8();

      v12 = v11 & v7;
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
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
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

uint64_t sub_24EB54928(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();
      v10 = [swift_unknownObjectRetain() hash];
      MEMORY[0x253052A00](v10);
      v11 = sub_24F92D0B8();
      result = swift_unknownObjectRelease();
      v12 = v11 & v7;
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
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
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

uint64_t sub_24EB54AE8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24E65864C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_24F92C7B8();
      result = sub_24E6585F8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 24 * v3;
          v21 = (v19 + 24 * v6);
          if (v3 != v6 || v20 >= v21 + 24)
          {
            v9 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

uint64_t sub_24EB54CB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      sub_24F92B218();
      v9 = sub_24F92D0B8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
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

uint64_t sub_24EB54E88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24E65864C(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_24F92C7B8();
      result = sub_24E6585F8(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
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

  return result;
}

uint64_t sub_24EB5502C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_24F92D058();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
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

uint64_t sub_24EB551D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      v12 = sub_24F92D0B8();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 != v6 || v18 >= v19 + 4)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
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

uint64_t sub_24EB55388(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      v12 = *(*(a2 + 48) + v6);
      sub_24F92D068();
      MEMORY[0x253052A00](v12);
      result = sub_24F92D0B8();
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
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 != v6 || v18 >= v19 + 4)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
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

uint64_t sub_24EB55524(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = 32 * v6;
      v10 = v2;
      v11 = *(*(v2 + 48) + 32 * v6 + 16);
      v12 = v8;
      sub_24F92D068();

      sub_24F92B218();
      MEMORY[0x253052A00](v11);
      sub_24F92D088();
      v13 = sub_24F92D0B8();

      v8 = v12;
      v14 = v13 & v7;
      if (v3 >= v12)
      {
        if (v14 < v12)
        {
          v4 = v25;
          v2 = v10;
        }

        else
        {
          v4 = v25;
          v2 = v10;
          if (v3 >= v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v25;
        v2 = v10;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_11:
          v15 = *(v2 + 48);
          v16 = (v15 + 32 * v3);
          v17 = (v15 + v9);
          if (32 * v3 != v9 || v16 >= v17 + 2)
          {
            v18 = v17[1];
            *v16 = *v17;
            v16[1] = v18;
          }

          v19 = *(v2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(v2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v24;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_24EB55734(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();

      sub_24F92B218();
      v9 = sub_24F92D0B8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = v11 + 24 * v3;
        v13 = (v11 + 24 * v6);
        if (v3 != v6 || v12 >= v13 + 24)
        {
          v14 = *v13;
          *(v12 + 16) = *(v13 + 2);
          *v12 = v14;
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

void sub_24EB55978(int64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_24F92C6C8();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_24EB5B300(&qword_27F2551B0, MEMORY[0x277CC95F0]);
      v21 = sub_24F92AEE8();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E10) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_24EB55CC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_24F92D058();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
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
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

unint64_t sub_24EB55E50(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_24F92D058();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 88 * v3;
          v16 = (v15 + 88 * v6);
          if (v3 != v6 || result >= v16 + 88)
          {
            result = memmove(result, v16, 0x58uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24EB55FC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_24F92D058();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 48 * v3);
          v19 = (v17 + 48 * v6);
          if (v3 != v6 || v18 >= v19 + 3)
          {
            v9 = *v19;
            v10 = v19[2];
            v18[1] = v19[1];
            v18[2] = v10;
            *v18 = v9;
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

unint64_t sub_24EB56154(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_24F92C6C8() + 1) & ~v6;
    do
    {
      sub_24E65864C(*(a2 + 48) + 40 * v7, v29);
      v11 = sub_24F92C7B8();
      result = sub_24E6585F8(v29);
      v12 = v11 & v9;
      if (v4 >= v10)
      {
        if (v12 < v10 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v10 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = v15 + 40 * v4;
      v17 = (v15 + 40 * v7);
      if (v4 != v7 || v16 >= v17 + 40)
      {
        v18 = *v17;
        v19 = v17[1];
        *(v16 + 32) = *(v17 + 4);
        *v16 = v18;
        *(v16 + 16) = v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
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

unint64_t sub_24EB56344(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    while (1)
    {
      sub_24F92D068();

      sub_24F92B218();
      sub_24F92B218();
      v9 = sub_24F92D0B8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 32 * v3);
      v13 = (v11 + 32 * v6);
      if (v3 != v6 || v12 >= v13 + 2)
      {
        v14 = v13[1];
        *v12 = *v13;
        v12[1] = v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for PaginatedShelfContent() - 8) + 72);
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

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
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

unint64_t sub_24EB56570(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_24F92C6C8() + 1) & ~v6;
    while (1)
    {
      sub_24F92D068();

      sub_24F92B218();
      v11 = sub_24F92D0B8();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_24EB56764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_24E6541E4;

  return sub_24EB4A864(a1, a2, a3, a4, v14, a6, a7, a8);
}

uint64_t sub_24EB5685C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16) && (sub_24E7728F0(*a2, a2[1]), (v4 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_24EB568B0@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);

  a1(&v8, &v7);

  *a3 = v8;
  return result;
}

uint64_t sub_24EB56944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24E614970;

  return sub_24EB4C7B4(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_24EB56A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a3;

  return sub_24E98A11C(v5, v3, v4);
}

uint64_t sub_24EB56AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_24E6541E4;

  return sub_24EB4D700(a1, a2, a3, a4, v14, a6, a7, a8);
}

uint64_t sub_24EB56B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a5;
  v12 = a5[1];
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_24E6541E4;

  return sub_24EB4E444(a1, a2, a3, a4, v11, v12, a6, a7);
}

uint64_t sub_24EB56C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v15;
  *(v8 + 48) = a5[2];
  v16 = swift_task_alloc();
  *(v8 + 64) = v16;
  *v16 = v8;
  v16[1] = sub_24E7AF58C;

  return sub_24EB4EA1C(a1, a2, a3, a4, (v8 + 16), a6, a7, a8);
}

uint64_t sub_24EB56DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = a5[1];
  v10 = a5[2];
  v11 = a5[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24E6541E4;

  return sub_24EB4FE90(a1, a2, a3, a4, v8, v9, v10, v11);
}

uint64_t sub_24EB56EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v16 = a5[9];
  *(v14 + 144) = a5[8];
  *(v14 + 160) = v16;
  v17 = a5[11];
  *(v14 + 176) = a5[10];
  *(v14 + 192) = v17;
  v18 = a5[5];
  *(v14 + 80) = a5[4];
  *(v14 + 96) = v18;
  v19 = a5[7];
  *(v14 + 112) = a5[6];
  *(v14 + 128) = v19;
  v20 = a5[1];
  *(v14 + 16) = *a5;
  *(v14 + 32) = v20;
  v21 = a5[3];
  *(v14 + 48) = a5[2];
  *(v14 + 64) = v21;
  v22 = swift_task_alloc();
  *(v14 + 208) = v22;
  *v22 = v14;
  v22[1] = sub_24EB56FE4;

  return sub_24EB50800(a1, a2, a3, a4, (v14 + 16), a6, a7, a8);
}

uint64_t sub_24EB56FE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24EB570D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_24E6541E4;

  return sub_24EB50FA8(a1, a2, a3, a4, v14, a6, a7, a8);
}

uint64_t sub_24EB571D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24E6541E4;

  return sub_24EB5161C(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_24EB572DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24E6541E4;

  return sub_24EB51964(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_24EB573E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = *(a5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24E6541E4;

  return sub_24EB51C38(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_24EB574F4()
{

  return swift_deallocObject();
}

uint64_t sub_24EB57558()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24EB57648()
{
  v1 = type metadata accessor for SocialMenuIntent();
  v2 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + ((v2 + 40) & ~v2) + *(v1 + 20);
  v4 = type metadata accessor for Game();
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {

    v5 = v4[18];
    v6 = sub_24F9289E8();
    v7 = *(v6 - 8);
    v13 = *(v7 + 8);
    v13(v3 + v5, v6);
    v8 = v4[19];
    if (!(*(v7 + 48))(v3 + v8, 1, v6))
    {
      v13(v3 + v8, v6);
    }

    v9 = v4[21];
    v10 = sub_24F920818();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v3 + v9, 1, v10))
    {
      (*(v11 + 8))(v3 + v9, v10);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24EB57900(uint64_t a1)
{
  v3 = *(type metadata accessor for SocialMenuIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4C1BC(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

void sub_24EB57A80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB56764);
}

unint64_t sub_24EB57B88()
{
  result = qword_27F2295A8;
  if (!qword_27F2295A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2295A8);
  }

  return result;
}

void sub_24EB57BDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB56AA0);
}

unint64_t sub_24EB57CE4()
{
  result = qword_27F2295B8;
  if (!qword_27F2295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2295B8);
  }

  return result;
}

uint64_t sub_24EB57D38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EB57D90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB573E8);
}

void sub_24EB57E98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB572DCLL);
}

unint64_t sub_24EB57FA0()
{
  result = qword_27F2295D0;
  if (!qword_27F2295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2295D0);
  }

  return result;
}

void sub_24EB57FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB571D0);
}

unint64_t sub_24EB580FC()
{
  result = qword_27F2295E0;
  if (!qword_27F2295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2295E0);
  }

  return result;
}

uint64_t sub_24EB581AC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_24EB5824C(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB4B0C4(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_24EB5834C()
{
  result = qword_27F2295F0;
  if (!qword_27F2295F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2295F0);
  }

  return result;
}

uint64_t objectdestroy_20Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EB583F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB570D8);
}

unint64_t sub_24EB58500()
{
  result = qword_27F2295F8;
  if (!qword_27F2295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2295F8);
  }

  return result;
}

uint64_t sub_24EB585B0(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB50E04(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_24EB586B0()
{
  result = qword_27F229608;
  if (!qword_27F229608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229608);
  }

  return result;
}

uint64_t sub_24EB58704()
{
  swift_unknownObjectRelease();

  if (*(v0 + 168) != 1)
  {

    sub_24E7B6564(*(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

void sub_24EB587C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB56EB4);
}

unint64_t sub_24EB5892C()
{
  result = qword_27F229610;
  if (!qword_27F229610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229610);
  }

  return result;
}

uint64_t sub_24EB58998(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB5061C(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB58B70()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_24EB58BF0(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB50478(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_24EB58CF0()
{
  result = qword_27F229630;
  if (!qword_27F229630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229630);
  }

  return result;
}

uint64_t sub_24EB58D44(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB527AC(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

uint64_t sub_24EB58E58(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229650) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB52218(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB58FF8(uint64_t a1)
{
  v3 = *(type metadata accessor for ArcadePageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24EB4D0FC(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_72Tm_0(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v2[7];
  v5 = sub_24F91F4A8();
  (*(*(v5 - 8) + 8))(v1 + v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24EB592C0(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseInstallPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4F000(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB5943C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EB59494()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB56B98);
}

unint64_t sub_24EB5959C()
{
  result = qword_27F229688;
  if (!qword_27F229688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229688);
  }

  return result;
}

uint64_t sub_24EB595F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EB59650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB56DA0);
}

unint64_t sub_24EB59758()
{
  result = qword_27F229698;
  if (!qword_27F229698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229698);
  }

  return result;
}

uint64_t objectdestroy_82Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24EB59864(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB4BC70(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_24EB59964()
{
  result = qword_27F2296A0;
  if (!qword_27F2296A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2296A0);
  }

  return result;
}

uint64_t sub_24EB599B8()
{
  v1 = (type metadata accessor for ArticlePageIntent() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = v1[7];
  v5 = sub_24F91F4A8();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24EB59AE4(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticlePageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4DCD4(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_61Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_24EB59D20(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB4A2AC(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

uint64_t sub_24EB59E38(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4CD90(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB5A010(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB4F1E4(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_24EB5A110()
{
  result = qword_27F2296D8;
  if (!qword_27F2296D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2296D8);
  }

  return result;
}

uint64_t sub_24EB5A164()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EB5A1CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB56C94);
}

uint64_t sub_24EB5A330(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB4FCA4(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

uint64_t sub_24EB5A444(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296F8) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4FAB8(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB5A628(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB4F56C(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_24EB5A728()
{
  result = qword_27F229710;
  if (!qword_27F229710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229710);
  }

  return result;
}

uint64_t objectdestroy_129Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v2[7];
  v5 = sub_24F91F4A8();
  (*(*(v5 - 8) + 8))(v1 + v3 + v4, v5);
  v6 = v1 + v3 + v2[9];
  if (*(v6 + 8) != 1)
  {

    sub_24E7B6564(*(v6 + 32), *(v6 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_24EB5A8F4(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4E260(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB5AA70()
{
  v1 = (type metadata accessor for MSOPageIntent() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB5ABB8(uint64_t a1)
{
  v3 = *(type metadata accessor for MSOPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4F388(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB5AD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_92Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB5AECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EB5AF34(uint64_t a1)
{
  v3 = *(type metadata accessor for TopChartsPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB49D20(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_38Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EB5B164()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  JUMPOUT(0x24EB56944);
}

unint64_t sub_24EB5B26C()
{
  result = qword_27F229748;
  if (!qword_27F229748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229748);
  }

  return result;
}

uint64_t sub_24EB5B2C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EB5B300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EB5B348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EB5B454(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4B6C8(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_24EB5B5DC(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EB4ADC4(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

uint64_t objectdestroy_87Tm(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB5B7FC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222720) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24EB4A564(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

char *LockupCollectionSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v95 = sub_24F91F6B8();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v100 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v85 - v8;
  MEMORY[0x28223BE20](v9);
  v103 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v107 = &v85 - v14;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v96 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v85 - v19;
  MEMORY[0x28223BE20](v21);
  v102 = &v85 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v85 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  v110 = a1;
  sub_24F928398();
  v97 = sub_24F928348();
  v30 = v29;
  v33 = *(v16 + 8);
  v31 = v16 + 8;
  v32 = v33;
  v33(v28, v15);
  if (!v30)
  {
    v51 = sub_24F92AC38();
    sub_24EB5CD64(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v52 = 0x676E6964616568;
    v53 = v108;
    v52[1] = 0xE700000000000000;
    v52[2] = v53;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D22530], v51);
    swift_willThrow();
    (*(v5 + 8))(v109, v4);
LABEL_7:
    v32(v110, v15);
    return v20;
  }

  v34 = v108;
  v98 = v30;
  v106 = v5;
  v105 = v4;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v32(v25, v15);
  if (!v37)
  {

    v54 = sub_24F92AC38();
    sub_24EB5CD64(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v55 = 0x656C746974;
    v55[1] = 0xE500000000000000;
    v55[2] = v34;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v106 + 8))(v109, v105);
    goto LABEL_7;
  }

  v87 = v35;
  v90 = v37;
  v91 = v32;
  v92 = v31;
  v108 = v15;
  sub_24F929608();
  v38 = v102;
  v88 = v20;
  sub_24F928398();
  v40 = (v106 + 16);
  v39 = *(v106 + 16);
  v41 = v103;
  v42 = v109;
  v43 = v105;
  v39(v103, v109, v105);
  sub_24F929548();
  v44 = v104;
  v45 = v42;
  v46 = v38;
  v39(v104, v45, v43);
  type metadata accessor for Artwork();
  sub_24F928398();
  v39(v41, v44, v43);
  sub_24EB5CD64(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v89 = v118[0];
  v47 = v44;
  sub_24F928398();
  v39(v100, v44, v43);
  type metadata accessor for Lockup();
  sub_24EB5CD64(&qword_27F221FB8, type metadata accessor for Lockup);
  v48 = v101;
  v49 = sub_24F92B678();
  if (v48)
  {

    v20 = (v106 + 8);
    v50 = *(v106 + 8);
    v50(v109, v43);
    v91(v110, v108);
    v50(v47, v43);
    sub_24E601704(v107, &qword_27F213E68);
  }

  else
  {
    v86 = v49;
    v88 = v39;
    v100 = v40;
    v101 = 0;
    type metadata accessor for Action();
    v57 = v110;
    sub_24F928398();
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v46, v47);
    v58 = v108;
    v59 = v91;
    v91(v46, v108);
    v60 = v96;
    sub_24F928398();
    v61 = sub_24F928348();
    if (v62)
    {
      v116 = v61;
      v117 = v62;
    }

    else
    {
      v63 = v93;
      sub_24F91F6A8();
      v64 = sub_24F91F668();
      v66 = v65;
      (*(v94 + 8))(v63, v95);
      v116 = v64;
      v117 = v66;
    }

    sub_24F92C7F8();
    v59(v60, v58);
    v67 = v106;
    v68 = v109;
    v69 = v103;
    v70 = v99;
    sub_24E60169C(v107, v99, &qword_27F213E68);
    type metadata accessor for SearchAdOpportunity();
    v71 = v57;
    sub_24F928398();
    v88(v69, v68, v105);
    sub_24EB5CD64(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
    sub_24F929548();
    v106 = v118[7];
    type metadata accessor for LockupCollectionSearchResult();
    v20 = swift_allocObject();
    v72 = &v20[OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_heading];
    v73 = v98;
    *v72 = v97;
    v72[1] = v73;
    *&v20[OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_headingArtwork] = v89;
    v74 = &v20[OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_title];
    v75 = v90;
    *v74 = v87;
    *(v74 + 1) = v75;
    *&v20[OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_items] = v86;
    *&v20[OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_detailAction] = v85;
    sub_24E60169C(v118, &v116, &qword_27F235830);
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 12) = 0;
    sub_24E60169C(v70, &v20[OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics], &qword_27F213E68);
    *&v20[OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity] = 0;
    sub_24E60169C(&v116, &v113, &qword_27F235830);
    v76 = v104;
    if (*(&v114 + 1))
    {
      v77 = v114;
      *(v20 + 24) = v113;
      *(v20 + 40) = v77;
      *(v20 + 7) = v115;
    }

    else
    {
      v78 = v93;
      sub_24F91F6A8();
      v79 = sub_24F91F668();
      v81 = v80;
      (*(v94 + 8))(v78, v95);
      v111 = v79;
      v112 = v81;
      sub_24F92C7F8();
      sub_24E601704(&v113, &qword_27F235830);
    }

    v82 = *(v67 + 8);
    v83 = v105;
    v82(v68, v105);
    v91(v71, v108);
    sub_24E601704(&v116, &qword_27F235830);
    sub_24E601704(v99, &qword_27F213E68);
    sub_24E601704(v118, &qword_27F235830);
    v82(v76, v83);
    sub_24E601704(v107, &qword_27F213E68);
    *(v20 + 8) = 1281;
    v84 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *&v20[v84] = v106;
  }

  return v20;
}

uint64_t LockupCollectionSearchResult.__allocating_init(id:heading:headingArtwork:title:items:detailAction:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a8;
  v32 = a10;
  v17 = sub_24F91F6B8();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_heading);
  *v21 = a2;
  v21[1] = a3;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_headingArtwork) = a4;
  v22 = (v20 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_title);
  *v22 = a5;
  v22[1] = a6;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_items) = a7;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_detailAction) = v31;
  sub_24E60169C(a1, v38, &qword_27F235830);
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0;
  sub_24E60169C(a9, v20 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v38, &v35, &qword_27F235830);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *(v20 + 24) = v35;
    *(v20 + 40) = v23;
    *(v20 + 56) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v29 + 8))(v19, v30);
    v33 = v24;
    v34 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  sub_24E601704(a9, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v38, &qword_27F235830);
  *(v20 + 16) = 1281;
  v27 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v20 + v27) = v32;
  return v20;
}

uint64_t LockupCollectionSearchResult.init(id:heading:headingArtwork:title:items:detailAction:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v33 = sub_24F91F6B8();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v32 - v21;
  v23 = (v11 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_heading);
  *v23 = a2;
  v23[1] = a3;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_headingArtwork) = a4;
  v24 = (v11 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_title);
  *v24 = a5;
  v24[1] = a6;
  v25 = v35;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_items) = v34;
  *(v11 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_detailAction) = v25;
  sub_24E60169C(a1, v45, &qword_27F235830);
  sub_24E60169C(a9, v22, &qword_27F213E68);
  *(v11 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v45, &v39, &qword_27F235830);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v28 = v27;
    (*(v32 + 8))(v19, v33);
    v37 = v26;
    v38 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(a9, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v45, &qword_27F235830);
  v29 = v43;
  *(v11 + 24) = v42;
  *(v11 + 40) = v29;
  *(v11 + 56) = v44;
  *(v11 + 96) = 0;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  sub_24E65E0D4(v22, v11 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v11 + 16) = 1281;
  v30 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v11 + v30) = v36;

  return v11;
}

uint64_t sub_24EB5CD64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LockupCollectionSearchResult()
{
  result = qword_27F229770;
  if (!qword_27F229770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LockupCollectionSearchResult.__allocating_init(from:withItems:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = sub_24F91F6B8();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  sub_24E65864C(a1 + 24, v36);
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_heading);
  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_heading + 8);
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_headingArtwork);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_title);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_title + 8);
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_detailAction);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, v6, &qword_27F213E68);
  v13 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  v29 = *(a1 + v13);
  type metadata accessor for LockupCollectionSearchResult();
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_heading);
  *v15 = v7;
  v15[1] = v8;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_headingArtwork) = v9;
  v16 = (v14 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_title);
  *v16 = v10;
  v16[1] = v11;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_items) = v28;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_detailAction) = v12;
  sub_24E60169C(v36, v35, &qword_27F235830);
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0;
  sub_24E60169C(v6, v14 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v35, &v32, &qword_27F235830);
  if (*(&v33 + 1))
  {
    v17 = v33;
    *(v14 + 24) = v32;
    *(v14 + 40) = v17;
    *(v14 + 56) = v34;
    v18 = v29;
  }

  else
  {
    v18 = v29;

    v19 = v25;
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v26 + 8))(v19, v27);
    v30 = v20;
    v31 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  sub_24E601704(v35, &qword_27F235830);
  sub_24E601704(v6, &qword_27F213E68);
  sub_24E601704(v36, &qword_27F235830);
  *(v14 + 16) = 1281;
  v23 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v14 + v23) = v18;
  return v14;
}

uint64_t LockupCollectionSearchResult.heading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_heading);

  return v1;
}

uint64_t LockupCollectionSearchResult.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28LockupCollectionSearchResult_title);

  return v1;
}

uint64_t sub_24EB5D2A4()
{
}

uint64_t LockupCollectionSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t LockupCollectionSearchResult.__deallocating_deinit()
{
  LockupCollectionSearchResult.deinit();

  return swift_deallocClassInstance();
}

__n128 ActionLayout.init(metrics:artworkView:labelView:accessoryView:searchAdButton:artworkBaselineOffsetFromBottom:isDisplayingSearchTrendingItem:restrictArtworkSizeToMetrics:in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v19 = type metadata accessor for ActionLayout(0);
  sub_24EB5D6D4(a1, a9 + *(v19 + 40));
  if (a10)
  {
    sub_24E94275C(a2, v28);
    if (v29)
    {
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v20 = *a1;
      v27 = a11;
      (*(*v20 + 104))(&v30, &v27);
      sub_24F922268();
      swift_unknownObjectRelease();
      sub_24E942EA8(a2);
      sub_24EB5D758(a1);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_24E942EA8(a2);
      sub_24EB5D758(a1);
      sub_24E942EA8(v28);
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
    }

    v22 = v31;
    *a9 = v30;
    *(a9 + 16) = v22;
    *(a9 + 32) = v32;
  }

  else
  {
    sub_24EB5D758(a1);
    swift_unknownObjectRelease();
    v21 = *(a2 + 16);
    *a9 = *a2;
    *(a9 + 16) = v21;
    *(a9 + 32) = *(a2 + 32);
  }

  sub_24E612C80(a3, a9 + 40);
  v23 = *(a4 + 16);
  *(a9 + 80) = *a4;
  *(a9 + 96) = v23;
  result = *a5;
  v25 = *(a5 + 16);
  *(a9 + 120) = *a5;
  *(a9 + 112) = *(a4 + 32);
  *(a9 + 136) = v25;
  *(a9 + 152) = *(a5 + 32);
  *(a9 + 160) = a6;
  *(a9 + 168) = a7 & 1;
  *(a9 + 169) = a8 & 1;
  return result;
}

uint64_t sub_24EB5D6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB5D758(uint64_t a1)
{
  v2 = type metadata accessor for ActionLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionLayout.Metrics.init(artworkSize:maxArtworkSize:artworkMargin:artworkLeadingMargin:labelWithArtworkLeadingMargin:accessoryMargin:labelFontSource:labelVerticalMargin:searchAdButtonTopMargin:searchAdButtonLeadingMargin:shouldLabelFitAvailableWidth:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, char *a9@<X8>, __int128 *a10, __int128 *a11, char a12)
{
  v18 = *a2;
  *a9 = *a1;
  *(a9 + 1) = v18;
  sub_24E612C80(a3, (a9 + 16));
  sub_24E612C80(a4, (a9 + 56));
  v19 = type metadata accessor for ActionLayout.Metrics(0);
  sub_24E612C80(a5, &a9[v19[14]]);
  sub_24E612C80(a6, (a9 + 96));
  v20 = v19[9];
  v21 = sub_24F922118();
  (*(*(v21 - 8) + 32))(&a9[v20], a7, v21);
  sub_24E612C80(a8, &a9[v19[10]]);
  sub_24E612C80(a10, &a9[v19[11]]);
  result = sub_24E612C80(a11, &a9[v19[12]]);
  a9[v19[13]] = a12;
  return result;
}

uint64_t ActionLayout.Metrics.artworkSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ActionLayout.Metrics.maxArtworkSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t ActionLayout.Metrics.artworkMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t ActionLayout.Metrics.artworkLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t ActionLayout.Metrics.accessoryMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return sub_24E612C80(a1, v1 + 96);
}

uint64_t ActionLayout.Metrics.labelFontSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 36);
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionLayout.Metrics.labelFontSource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 36);
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActionLayout.Metrics.labelVerticalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 40);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ActionLayout.Metrics.searchAdButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 44);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ActionLayout.Metrics.searchAdButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 48);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ActionLayout.Metrics.shouldLabelFitAvailableWidth.setter(char a1)
{
  result = type metadata accessor for ActionLayout.Metrics(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ActionLayout.Metrics.labelWithArtworkLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 56);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ActionLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionLayout(0) + 40);

  return sub_24EB5D6D4(v3, a1);
}

double ActionLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + *(type metadata accessor for ActionLayout(0) + 40));
  v11 = type metadata accessor for ActionLayout.Metrics(0);
  __swift_project_boxed_opaque_existential_1((v10 + *(v11 + 40)), *(v10 + *(v11 + 40) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v34 = *(v7 + 8);
  v34(v9, v6);
  sub_24E94275C(v2, &v36);
  v33 = a2;
  if (v37)
  {
    sub_24E612C80(&v36, v38);
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_24F922288();
    v13 = a2 - v12;
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v15 = v14;
    v34(v9, v6);
    v16 = v13 - v15;
    __swift_project_boxed_opaque_existential_1(v10 + 7, v10[10]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v18 = v17;
    v34(v9, v6);
    a2 = v16 - v18;
    v19 = *v10;
    v35 = a1;
    (*(*v19 + 104))(&v36, &v35);
    v32 = *(&v36 + 1);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24E942EA8(&v36);
    v32 = 0;
  }

  sub_24E94275C(v3 + 80, &v36);
  if (v37)
  {
    sub_24E612C80(&v36, v38);
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_24F922298();
    v21 = a2 - v20;
    __swift_project_boxed_opaque_existential_1(v10 + 12, v10[15]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v23 = v22;
    v34(v9, v6);
    a2 = v21 - v23;
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24E942EA8(&v36);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_24F922288();
  v25 = v24;
  sub_24E94275C(v3 + 120, &v36);
  if (v37)
  {
    sub_24E612C80(&v36, v38);
    __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
    v26 = sub_24F9224B8();
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_24F922298();
    if (a2 < v25 + v27 || v26 >= 2)
    {
      __swift_project_boxed_opaque_existential_1((v10 + *(v11 + 44)), *(v10 + *(v11 + 44) + 24));
      sub_24E8ED7D8();
      sub_24F9223A8();
      v34(v9, v6);
    }

    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24E942EA8(&v36);
    return v33;
  }

  return v29;
}

uint64_t ActionLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v108 = a1;
  v100 = a2;
  v11 = sub_24F9221D8();
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x28223BE20](v11);
  v96 = &MinX - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &MinX - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v6 + *(type metadata accessor for ActionLayout(0) + 40));
  v18 = COERCE_DOUBLE(type metadata accessor for ActionLayout.Metrics(0));
  __swift_project_boxed_opaque_existential_1((v17 + *(*&v18 + 44)), *(v17 + *(*&v18 + 44) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v93 = v19;
  v20 = *(v14 + 8);
  v20(v16, v13);
  Width = v18;
  v21 = *(*&v18 + 48);
  v103 = v17;
  __swift_project_boxed_opaque_existential_1((v17 + v21), *(v17 + v21 + 24));
  sub_24E8ED7D8();
  v22 = v108;
  sub_24F9223A8();
  v94 = v23;
  v104 = v16;
  v105 = v20;
  v106 = v14 + 8;
  v107 = v13;
  v20(v16, v13);
  v24 = v102;
  v25 = [v22 traitCollection];
  v26 = sub_24F92BF88();

  sub_24E94275C(v24 + 120, &v119);
  if (v120)
  {
    sub_24E612C80(&v119, &v114);
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    v27 = v108;
    sub_24F922288();
    v29 = v28;
    v31 = v30;
    v87 = v32;
    v92 = sub_24EB5F684(v27, v28, v30, a5);
    v95 = !v92;
    __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
    sub_24F922258();
    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  else
  {
    sub_24E942EA8(&v119);
    v33 = *(v24 + 64);
    v34 = *(v24 + 72);
    v35 = __swift_project_boxed_opaque_existential_1((v24 + 40), v33);
    v120 = v33;
    v121 = *(v34 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v119);
    (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
    v92 = 0;
    v95 = 0;
    v31 = 0.0;
    v29 = 0.0;
    v87 = 0;
  }

  v99 = v29;
  v91 = v31;
  v37 = Width;
  v38 = v103;
  v39 = (v103 + *(*&Width + 40));
  v40 = v39[3];
  v90 = v39;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v41 = v104;
  sub_24E8ED7D8();
  sub_24F9223A8();
  v105(v41, v107);
  LOBYTE(v40) = *(v38 + *(*&v37 + 52));
  sub_24E615E00(&v119, &v114);
  BYTE8(v116) = 0;
  BYTE9(v116) = v40;
  v42 = *(MEMORY[0x277D768C8] + 16);
  v117 = *MEMORY[0x277D768C8];
  v118 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788);
  inited = swift_initStackObject();
  v45 = v117;
  v44 = v118;
  inited[3] = v116;
  inited[4] = v45;
  inited[5] = v44;
  v46 = v115;
  inited[1] = v114;
  inited[2] = v46;
  sub_24E94275C(v24, &v110);
  if (v111)
  {
    sub_24E612C80(&v110, v112);
    __swift_project_boxed_opaque_existential_1(v112, v113);
    sub_24F922288();
    if (fabs(v48) >= COERCE_DOUBLE(1) && fabs(v47) >= COERCE_DOUBLE(1))
    {
      v49 = v103;
      __swift_project_boxed_opaque_existential_1(v103 + 7, v103[10]);
      v88 = v26;
      v50 = v104;
      sub_24E8ED7D8();
      v51 = v108;
      sub_24F9223A8();
      v52 = v107;
      v89 = inited;
      v53 = v105;
      v105(v50, v107);
      __swift_project_boxed_opaque_existential_1((v49 + *(*&Width + 56)), *(v49 + *(*&Width + 56) + 24));
      sub_24E8ED7D8();
      sub_24F9223A8();
      v54 = v50;
      v26 = v88;
      v53(v54, v52);
      v24 = v102;
      inited = v89;
      v122.origin.x = a3;
      v122.origin.y = a4;
      v122.size.width = a5;
      v122.size.height = a6;
      CGRectGetMinX(v122);
      v55 = *v49;
      v109 = v51;
      (*(*v55 + 104))(&v110, &v109);
      v123.origin.x = a3;
      v123.origin.y = a4;
      v123.size.width = a5;
      v123.size.height = a6;
      CGRectGetMidY(v123);
      __swift_project_boxed_opaque_existential_1(v112, v113);
      sub_24F922228();
    }

    __swift_destroy_boxed_opaque_existential_1(v112);
  }

  else
  {
    sub_24E942EA8(&v110);
  }

  sub_24E94275C(v24 + 80, &v110);
  if (v111)
  {
    sub_24E612C80(&v110, v112);
    __swift_project_boxed_opaque_existential_1(v112, v113);
    sub_24F922288();
    v124.origin.x = a3;
    v124.origin.y = a4;
    v124.size.width = a5;
    v124.size.height = a6;
    CGRectGetMaxX(v124);
    v125.origin.x = a3;
    v125.origin.y = a4;
    v125.size.width = a5;
    v125.size.height = a6;
    CGRectGetMidY(v125);
    __swift_project_boxed_opaque_existential_1(v112, v113);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v112);
  }

  else
  {
    sub_24E942EA8(&v110);
  }

  sub_24E94275C(v24, v112);
  if (v113)
  {
    __swift_project_boxed_opaque_existential_1(v112, v113);
    sub_24F922218();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1(v112);
    v126.origin.x = v57;
    v126.origin.y = v59;
    v126.size.width = v61;
    v126.size.height = v63;
    if (!CGRectIsEmpty(v126))
    {
      v88 = v26;
      v89 = inited;
      v127.origin.x = a3;
      v127.origin.y = a4;
      v127.size.width = a5;
      v127.size.height = a6;
      MinX = CGRectGetMinX(v127);
      v64 = v103;
      v65 = (v103 + *(*&Width + 56));
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      v66 = v104;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v67 = v107;
      v68 = v105;
      v105(v66, v107);
      v128.origin.x = a3;
      v128.origin.y = a4;
      v128.size.width = a5;
      v128.size.height = a6;
      Width = CGRectGetWidth(v128);
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      sub_24E8ED7D8();
      sub_24F9223A8();
      v68(v66, v67);
      __swift_project_boxed_opaque_existential_1(v64 + 12, v64[15]);
      sub_24E8ED7D8();
      v24 = v102;
      sub_24F9223A8();
      v68(v66, v67);
      sub_24E94275C(v24 + 80, v112);
      if (v113)
      {
        __swift_project_boxed_opaque_existential_1(v112, v113);
        sub_24F922218();
        CGRectGetWidth(v129);
        __swift_destroy_boxed_opaque_existential_1(v112);
      }

      else
      {
        sub_24E942EA8(v112);
      }

      inited = v89;
      LOBYTE(v26) = v88;
      goto LABEL_21;
    }
  }

  else
  {
    sub_24E942EA8(v112);
  }

  v130.origin.x = a3;
  v130.origin.y = a4;
  v130.size.width = a5;
  v130.size.height = a6;
  CGRectGetMinX(v130);
  v131.origin.x = a3;
  v131.origin.y = a4;
  v131.size.width = a5;
  v131.size.height = a6;
  CGRectGetWidth(v131);
LABEL_21:
  __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
  v132.origin.x = a3;
  v132.origin.y = a4;
  v132.size.width = a5;
  v132.size.height = a6;
  CGRectGetHeight(v132);
  sub_24F922288();
  v133.origin.x = a3;
  v133.origin.y = a4;
  v133.size.width = a5;
  v133.size.height = a6;
  CGRectGetMidY(v133);
  v134.origin.x = a3;
  v134.origin.y = a4;
  v134.size.width = a5;
  v134.size.height = a6;
  CGRectGetHeight(v134);
  sub_24F92C1D8();
  v112[0] = inited;
  v69 = v96;
  _FrameLayout.placeChildren(relativeTo:in:)();
  (*(v97 + 8))(v69, v98);
  sub_24E94275C(v24, v112);
  if (v113 && (__swift_project_boxed_opaque_existential_1(v112, v113), sub_24F922218(), __swift_destroy_boxed_opaque_existential_1(v112), sub_24E94275C(v24, v112), v113))
  {
    __swift_project_boxed_opaque_existential_1(v112, v113);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v112);
  }

  else
  {
    sub_24E942EA8(v112);
  }

  sub_24E94275C(v24 + 80, v112);
  if (v113 && (__swift_project_boxed_opaque_existential_1(v112, v113), sub_24F922218(), __swift_destroy_boxed_opaque_existential_1(v112), sub_24E94275C(v24 + 80, v112), v113))
  {
    __swift_project_boxed_opaque_existential_1(v112, v113);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v112);
  }

  else
  {
    sub_24E942EA8(v112);
  }

  if (*(v24 + 169) == 1)
  {
    sub_24E94275C(v24, &v110);
    if (v111)
    {
      sub_24E612C80(&v110, v112);
      ActionLayout.measurements(fitting:in:)(v108, a5);
      Width = v70;
      __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      v71 = v104;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v99 = v72;
      v105(v71, v107);
      __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
      sub_24F922218();
      v135.origin.x = a3;
      v135.origin.y = a4;
      v135.size.width = a5;
      v135.size.height = a6;
      CGRectGetMidY(v135);
      __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
      sub_24F922218();
      __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
      sub_24F922218();
      __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
      sub_24F922228();
      if (*(v24 + 168))
      {
LABEL_47:
        __swift_destroy_boxed_opaque_existential_1(v112);
        goto LABEL_49;
      }

      v73 = *(v24 + 160);
      v74 = Width - v99;
      v75 = *v103;
      v109 = v108;
      (*(*v75 + 104))(&v110, &v109);
      v76 = *(&v110 + 1);
      __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
      sub_24F922218();
      floor(v74 + CGRectGetMinY(v136) - (v76 - v73));
      __swift_project_boxed_opaque_existential_1(v112, v113);
      __swift_project_boxed_opaque_existential_1(v112, v113);
      sub_24F922218();
      CGRectGetMinX(v137);
LABEL_46:
      sub_24F922228();
      goto LABEL_47;
    }

    sub_24E942EA8(&v110);
  }

  if (v95)
  {
    __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
    sub_24F922218();
    if (v26)
    {
      CGRectGetMinX(*&v77);
    }

    else
    {
      CGRectGetMaxX(*&v77);
    }

    sub_24E94275C(v24 + 120, v112);
    if (v113)
    {
      __swift_project_boxed_opaque_existential_1(v112, v113);
      __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
      sub_24F922218();
      CGRectGetMidY(v138);
      goto LABEL_46;
    }

LABEL_48:
    sub_24E942EA8(v112);
    goto LABEL_49;
  }

  if (v92)
  {
    __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
    sub_24F922218();
    if (v26)
    {
      CGRectGetMaxX(*&v81);
    }

    else
    {
      CGRectGetMinX(*&v81);
    }

    sub_24E94275C(v24 + 120, v112);
    if (v113)
    {
      __swift_project_boxed_opaque_existential_1(v112, v113);
      __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
      sub_24F922218();
      CGRectGetMaxY(v139);
      goto LABEL_46;
    }

    goto LABEL_48;
  }

LABEL_49:
  sub_24F922128();
  swift_setDeallocating();
  sub_24EB5FB10((inited + 1));
  return __swift_destroy_boxed_opaque_existential_1(&v119);
}

BOOL sub_24EB5F684(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C(v4, v28);
  v13 = v29;
  sub_24E942EA8(v28);
  v14 = a4;
  if (v13)
  {
    v15 = (v5 + *(type metadata accessor for ActionLayout(0) + 40));
    v16 = *v15;
    *&v26 = a1;
    (*(*v16 + 104))(v28, &v26);
    v17 = *v28;
    __swift_project_boxed_opaque_existential_1(v15 + 2, v15[5]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v14 = a4 - (v17 - v19);
  }

  sub_24E94275C(v5 + 80, &v26);
  if (v27)
  {
    sub_24E612C80(&v26, v28);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_24F922298();
    v14 = v14 - v20;
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_24E942EA8(&v26);
  }

  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  sub_24F922288();
  v22 = v21;
  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  v23 = sub_24F9224B8();
  return v14 < v22 + a2 || v23 > 1;
}

double _s12GameStoreKit12ActionLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *a1, void *a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionLayout.Metrics(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v10 + 40)), *(a1 + *(v10 + 40) + 24));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v7 + 8))(v9, v6);
  v11 = [a2 traitCollection];
  v12 = sub_24F922108();

  v13 = *a1;
  v16 = a2;
  (*(*v13 + 104))(&v17, &v16);
  [v12 lineHeight];

  return a3;
}

unint64_t sub_24EB5FB68()
{
  result = qword_27F229790;
  if (!qword_27F229790)
  {
    type metadata accessor for ActionLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229790);
  }

  return result;
}

uint64_t sub_24EB5FBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EB5FC94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EB5FD38()
{
  sub_24E8EF898(319, &qword_27F2297B0, &unk_27F235730);
  if (v0 <= 0x3F)
  {
    sub_24E8EFB54(319, &qword_27F2297C0);
    if (v1 <= 0x3F)
    {
      sub_24EB5FE28();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ActionLayout.Metrics(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EB5FE28()
{
  if (!qword_27F215E08)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F215E08);
    }
  }
}

uint64_t sub_24EB5FE8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F922118();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24EB5FF4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922118();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EB5FFF0()
{
  sub_24EB600EC();
  if (v0 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F2297E8, &qword_27F2297F0);
    if (v1 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F237A40);
      if (v2 <= 0x3F)
      {
        sub_24F922118();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EB600EC()
{
  if (!qword_27F2297D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2297E0);
    type metadata accessor for CGSize(255);
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2297D8);
    }
  }
}

uint64_t sub_24EB60160(uint64_t a1)
{
  *(v1 + 50) = 512;
  *(v1 + 24) = a1 | 0x8000000000000000;
  *(v1 + 16) = 0;
  v2 = *(a1 + 64);

  *(v1 + 40) = v2;
  *(v1 + 48) = 1;

  return v1;
}

uint64_t sub_24EB601DC()
{

  return swift_deallocClassInstance();
}

uint64_t TodayCardMediaArtwork.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v57 = *v2;
  v74 = sub_24F9285B8();
  v5 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v70 = sub_24F928388();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  sub_24F929608();

  sub_24F928398();
  v69 = v5;
  v71 = *(v5 + 16);
  v63 = v11;
  v19 = v11;
  v20 = a2;
  v21 = a2;
  v22 = v74;
  v71(v19, v21, v74);
  v66 = v18;
  v64 = v15;
  sub_24F929548();
  v23 = v73;
  v68 = v20;
  v24 = v71;
  v71(v73, v20, v22);
  v72 = a1;
  sub_24F928398();
  v25 = v63;
  v24(v63, v23, v22);
  type metadata accessor for Artwork();
  sub_24E9E1210(&qword_27F219660, type metadata accessor for Artwork);
  v26 = v25;
  v27 = sub_24F92B698();
  v28 = OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_artworks;
  v29 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_artworks) = v27;
  sub_24F928398();
  v30 = v25;
  v31 = v74;
  v24(v30, v23, v74);
  type metadata accessor for Video();
  sub_24E9E1210(&qword_27F221590, type metadata accessor for Video);
  v32 = sub_24F92B698();
  v58 = OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_videos;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_videos) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980);
  sub_24F928398();
  v59 = v5 + 16;
  v24(v26, v73, v31);
  sub_24E9E115C();
  sub_24F929548();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_artworkLayoutsWithMetrics) = v75;
  v33 = *(v29 + v28);
  if (v33 >> 62)
  {
    v34 = sub_24F92C738();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v67;
  if (v34)
  {
  }

  else
  {
    v37 = *(v29 + v58);
    if (v37 >> 62)
    {
      v38 = sub_24F92C738();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v38)
    {
      v52 = sub_24F92AC38();
      sub_24E9E1210(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v53 = 0x736B726F77747261;
      v53[1] = 0xE800000000000000;
      v53[2] = v57;
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D22530], v52);
      swift_willThrow();
      v54 = *(v69 + 8);
      v55 = v36;
      v56 = v74;
      v54(v68, v74);
      (*(v55 + 8))(v72, v70);
      v54(v73, v56);
      sub_24E601704(v66, &qword_27F213E68);

      return swift_deallocPartialClassInstance();
    }
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v41 = v60;
  v42 = v72;
  v39(v60, v72, v35);
  v43 = v61;
  v44 = v68;
  v45 = v74;
  v71(v61, v68, v74);
  v46 = v62;
  v47 = TodayCardMedia.init(deserializing:using:)(v41, v43);
  if (v46)
  {
    v48 = *(v69 + 8);
    v48(v44, v45);
    (*(v40 + 8))(v42, v35);
    v48(v73, v45);
    return sub_24E601704(v66, &qword_27F213E68);
  }

  else
  {
    v50 = *(v69 + 8);
    v51 = v47;
    v50(v44, v45);
    (*(v40 + 8))(v42, v35);
    v50(v73, v45);
    sub_24E601704(v66, &qword_27F213E68);
    return v51;
  }
}

uint64_t TodayCardMediaArtwork.__allocating_init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_artworks) = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_videos) = a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_artworkLayoutsWithMetrics) = a3;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_24E60169C(a4, v12 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v22, &v19, &qword_27F235830);
  if (*(&v20 + 1))
  {
    v13 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v13;
    *(v12 + 64) = v21;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v18[1] = v14;
    v18[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v19, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(v22, &qword_27F235830);
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  return v12;
}

uint64_t TodayCardMediaArtwork.init(artworks:videos:artworkLayoutsWithMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v21[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_artworks) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_videos) = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit21TodayCardMediaArtwork_artworkLayoutsWithMetrics) = a3;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24E60169C(a4, v21 - v14, &qword_27F213E68);
  sub_24E60169C(v28, &v22, &qword_27F235830);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v18 = v17;
    (*(v21[0] + 8))(v12, v10);
    v21[1] = v16;
    v21[2] = v18;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(v28, &qword_27F235830);
  v19 = v26;
  *(v5 + 32) = v25;
  *(v5 + 48) = v19;
  *(v5 + 64) = v27;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  return v5;
}

uint64_t sub_24EB60F98()
{
}

uint64_t TodayCardMediaArtwork.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaArtwork.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaArtwork()
{
  result = qword_27F2297F8;
  if (!qword_27F2297F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB6124C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_24F9215A8();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221510);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221518);
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221520);
  v2[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221528);
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221530);
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221538);
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB6151C, 0, 0);
}

uint64_t sub_24EB6151C()
{
  v1 = v0[34];
  sub_24F92BDE8();
  v2 = sub_24F92A788();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_24E601704(v0[34], &qword_27F221538);
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92AAE8();
    sub_24F92A5A8();

    v7 = v0[1];

    return v7(1);
  }

  v4 = v0[34];
  swift_getKeyPath();
  sub_24F92A778();

  v5 = v0[13];
  v0[35] = v5;
  (*(v3 + 8))(v4, v2);
  if (!v5)
  {
    goto LABEL_5;
  }

  sub_24F9215C8();
  v6 = sub_24F9215B8();
  sub_24F921598();
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];

  sub_24F921578();
  (*(v10 + 8))(v9, v11);
  v12 = sub_24EB61EE8();
  v13 = swift_task_alloc();
  v0[36] = v13;
  *v13 = v0;
  v13[1] = sub_24EB619E4;
  v14 = v0[31];
  v15 = v0[27];

  return MEMORY[0x282200308](v15, v14, v12);
}

uint64_t sub_24EB619E4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_24EB61E58;
  }

  else
  {
    v2 = sub_24EB61AF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB61B14()
{
  v1 = *(v0 + 216);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    v2 = *(v0 + 280);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

LABEL_5:
    v13 = 1;
    goto LABEL_7;
  }

  sub_24EB61F4C(v1, *(v0 + 208));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 208);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v19 = *(v0 + 248);
    v11 = *(v0 + 144);
    (*(v9 + 32))(v10, v8, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    *(v0 + 72) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    (*(v9 + 16))(boxed_opaque_existential_1, v10, v11);
    sub_24F928438();
    sub_24E601704(v0 + 48, &qword_27F2129B0);
    sub_24F92AAE8();
    sub_24F92A5A8();

    (*(v9 + 8))(v10, v11);
    (*(v6 + 8))(v5, v19);
    goto LABEL_5;
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 168);
  (*(v14 + 32))(v15, v8, v16);
  sub_24F921588();

  (*(v14 + 8))(v15, v16);
  (*(v6 + 8))(v5, v7);
  v13 = (*(v0 + 304) == 2) | *(v0 + 304);
LABEL_7:

  v17 = *(v0 + 8);

  return v17(v13 & 1);
}

uint64_t sub_24EB61E58()
{
  *(v0 + 120) = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

unint64_t sub_24EB61EE8()
{
  result = qword_27F221540;
  if (!qword_27F221540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221540);
  }

  return result;
}

uint64_t sub_24EB61F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JSError.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v28 = sub_24F928388();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  sub_24F928398();
  v16 = sub_24F928348();
  v18 = v17;
  v19 = *(v4 + 8);
  v20 = v15;
  v21 = v28;
  v19(v20, v28);
  if (v18)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v18)
  {
    v23 = v18;
  }

  v30 = v23;
  v31 = v22;
  sub_24F928398();
  v29 = sub_24F928258();
  v27[3] = v24;
  v19(v12, v21);
  sub_24F928398();
  sub_24F928258();
  v19(v9, v21);
  sub_24F928398();
  sub_24F928348();
  v19(v6, v21);
  sub_24F92A808();
  v25 = sub_24F9285B8();
  (*(*(v25 - 8) + 8))(v33, v25);
  return (v19)(a1, v21);
}

uint64_t AdvertRotationControllerProvider.advertController(for:asPartOf:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_24F928D68();
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_24E76D934(v11), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();

    sub_24E6585F8(v11);
  }

  else
  {
    swift_endAccess();
    sub_24E6585F8(v11);
    v8 = sub_24EB62610(a1, a2);
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      sub_24F928D68();
      swift_beginAccess();
      v9 = swift_retain_n();
      sub_24E9895A0(v9, v11);
      swift_endAccess();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t AdvertRotationControllerProvider.__allocating_init(supportsAdvertRotation:advertLifecycleMetricsReporter:)(char a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24E60D5A8(MEMORY[0x277D84F90]);
  *(v4 + 72) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229808);
  swift_allocObject();
  *(v4 + 80) = sub_24F92ADA8();
  swift_allocObject();
  *(v4 + 88) = sub_24F92ADA8();
  *(v4 + 24) = a1;
  sub_24E612C80(a2, v4 + 32);
  return v4;
}

uint64_t AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)(char a1, __int128 *a2)
{
  *(v2 + 16) = sub_24E60D5A8(MEMORY[0x277D84F90]);
  *(v2 + 72) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229808);
  swift_allocObject();
  *(v2 + 80) = sub_24F92ADA8();
  swift_allocObject();
  *(v2 + 88) = sub_24F92ADA8();
  *(v2 + 24) = a1;
  sub_24E612C80(a2, v2 + 32);
  return v2;
}

uint64_t sub_24EB62610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E8E7F4C(a1, v8);
  sub_24E615E00(v3 + 32, v17);
  type metadata accessor for ItemAdvertRotationController();
  v9 = swift_allocObject();
  sub_24E8E7F4C(v8, v9 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v10 = sub_24EB3DBE4();
  sub_24E60169C(v17, v16, &qword_27F229490);

  v11 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v10, v16, 1, a2);
  sub_24E601704(v17, &qword_27F229490);
  sub_24EB648D8(v8, type metadata accessor for ItemLayoutContext);
  if (v11)
  {
    if (*(v3 + 24))
    {
      v12 = v11 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
      swift_beginAccess();
      *(v12 + 8) = &protocol witness table for AdvertRotationControllerProvider;
      swift_unknownObjectWeakAssign();
    }

    v13 = *(v3 + 72);

    if (v13 <= 2)
    {
      if (v13)
      {
        if (v13 == 1)
        {
          sub_24EC49500();
        }

        else
        {
          sub_24EC49690();
        }
      }

      else
      {
        sub_24EC492B0();
      }
    }

    else if (v13 > 4)
    {
      if (v13 == 5)
      {
        sub_24EC4A1B8();
      }
    }

    else if (v13 == 3)
    {
      sub_24EC49904();
    }

    else
    {
      sub_24EC4A01C();
    }

    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F92A588();
  }

  return v11;
}

uint64_t AdvertRotationControllerProvider.advertController(for:asPartOf:createIfRequired:)(void *a1, uint64_t a2, char a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F928D68();
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_24E76D934(v13), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    sub_24E6585F8(v13);
  }

  else
  {
    swift_endAccess();
    sub_24E6585F8(v13);
    if (a3)
    {
      v10 = sub_24EB62AAC(a1, a2);
      if (v10)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_24F928D68();
        swift_beginAccess();
        v11 = swift_retain_n();
        sub_24E9895A0(v11, v13);
        swift_endAccess();
      }
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_24EB62AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24E615E00(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090);
  if (swift_dynamicCast())
  {
    sub_24E8EA128(v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24F93DE60;
    sub_24E8F997C(v15, v5 + 32);
    sub_24E615E00(v3 + 32, v13);
    type metadata accessor for AdvertRotationController();
    swift_allocObject();

    v6 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v5, v13, 1, a2);
    if (v6)
    {
      if (*(v3 + 24))
      {
        v7 = v6 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
        v8 = v6;
        swift_beginAccess();
        *(v7 + 8) = &protocol witness table for AdvertRotationControllerProvider;
        swift_unknownObjectWeakAssign();
        v6 = v8;
      }

      v9 = *(v3 + 72);
      if (v9 <= 2)
      {
        v10 = v6;
        if (*(v3 + 72))
        {
          if (v9 == 1)
          {
            sub_24EC49500();
          }

          else
          {
            sub_24EC49690();
          }
        }

        else
        {
          sub_24EC492B0();
        }
      }

      else if (*(v3 + 72) > 4u)
      {
        v10 = v6;
        if (v9 == 5)
        {
          sub_24EC4A1B8();
        }
      }

      else
      {
        v10 = v6;
        if (v9 == 3)
        {
          sub_24EC49904();
        }

        else
        {
          sub_24EC4A01C();
        }
      }

      if (qword_27F2105A0 != -1)
      {
        swift_once();
      }

      v12 = sub_24F92AAE8();
      __swift_project_value_buffer(v12, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();

      __swift_destroy_boxed_opaque_existential_1(v15);
      return v10;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      return 0;
    }
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    sub_24E601704(v13, &qword_27F2294B0);
    return 0;
  }
}

uint64_t AdvertRotationControllerProvider.advertController(for:)(void *a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_24E65864C(*(v2 + 48) + 40 * v10, v17);
    *(&v18 + 1) = *(*(v2 + 56) + 8 * v10);
    v14 = v17[0];
    v15 = v17[1];
    v16 = v18;
    sub_24E60169C(&v14, &v19, &qword_27F229810);
    Strong = swift_unknownObjectWeakLoadStrong();

    sub_24E6585F8(&v19);
    if (Strong)
    {

      if (Strong == a1)
      {

        v19 = v14;
        v20 = v15;
        v21 = v16;

        if (*(&v20 + 1))
        {
          v12 = *(&v21 + 1);
          sub_24E6585F8(&v19);
          return v12;
        }

        else
        {
LABEL_15:
          sub_24E601704(&v19, &qword_27F229818);
          return 0;
        }
      }
    }

    v5 &= v5 - 1;
    result = sub_24E601704(&v14, &qword_27F229810);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v19 = 0u;
      v20 = 0u;
      v21 = 0u;

      goto LABEL_15;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t AdvertRotationControllerProvider.performAdvertRotation(for:from:to:in:withDelay:asPartOf:)(void *a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v39 = a6;
  v37 = a5;
  v40 = a3;
  v38 = type metadata accessor for AdvertRotationControllerProvider.AdvertRotation();
  MEMORY[0x28223BE20](v38);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ItemLayoutContext();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a4, v13, &qword_27F2294A8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27F2294A8;
    v19 = v13;
    return sub_24E601704(v19, v18);
  }

  sub_24EB64874(v13, v17);
  v42 = a1;
  sub_24E8E7C80();
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229820);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24EB648D8(v17, type metadata accessor for ItemLayoutContext);
    memset(v41, 0, sizeof(v41));
    v18 = &unk_27F229828;
    v19 = v41;
    return sub_24E601704(v19, v18);
  }

  sub_24E612C80(v41, v43);
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v23 = v40;
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  if (DynamicType == swift_getDynamicType())
  {
    v36 = v44;
    v34 = v45;
    v35 = __swift_project_boxed_opaque_existential_1(v43, v44);
    v33 = *(v23 + 3);
    v24 = v33;
    v25 = __swift_project_boxed_opaque_existential_1(v23, v33);
    *&v41[24] = v33;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v25, v24);
    v27 = [v20 traitCollection];
    v28 = ASKDeviceTypeGetCurrent();
    type metadata accessor for ArtworkLoader();
    sub_24F928FD8();
    v29 = v39;
    sub_24F92A758();
    (*(v34 + 8))(v41, v27, v28, v42, v29, v37 & 1, v36);

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_24E8E7F4C(v17, v10);
    v30 = v38;
    sub_24E8F997C(v23, &v10[*(v38 + 24)]);
    sub_24E8F997C(v21, &v10[v30[7]]);
    *&v10[v30[5]] = v20;
    *&v10[v30[8]] = v29;
    v31 = v20;

    sub_24F92AD88();
    sub_24EB648D8(v10, type metadata accessor for AdvertRotationControllerProvider.AdvertRotation);
  }

  sub_24EB648D8(v17, type metadata accessor for ItemLayoutContext);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

Swift::Void __swiftcall AdvertRotationControllerProvider.didScroll(in:)(UIScrollView *in)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    if (*(v10 + 16))
    {
      v11 = *(v10 + 128);

      [(UIScrollView *)in safeAreaInsets];
      v16 = *(v11 + 48);
      v17 = *(v11 + 64);
      v18 = *(v11 + 80);
      *(v11 + 48) = v12.f64[0];
      *(v11 + 56) = v13;
      *(v11 + 64) = v14.f64[0];
      *(v11 + 72) = v15;
      *(v11 + 80) = 0;
      if ((v18 & 1) != 0 || (v12.f64[1] = v13, v14.f64[1] = v15, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12, v16), vceqq_f64(v14, v17)))) & 1) == 0))
      {
        v29 = 5;
        sub_24F031124(&v29);
      }
    }

    else
    {
    }

    v19 = *(v10 + 128);
    if (*(v19 + 105) == 1 && (*(v19 + 104) & 1) != 0)
    {
      sub_24F0313B4(&v29);
      v20 = v29;
      v21 = *(v19 + 81);
      if (v29 == 4)
      {
        if (v21 == 4)
        {
          goto LABEL_5;
        }
      }

      else if (v29 == v21)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = in;
        v22 = *(v19 + 96);
        ObjectType = swift_getObjectType();
        v29 = *(v19 + 81);
        v28 = v20;
        v27 = 2;
        v24 = *(v22 + 8);
        v25 = v22;
        in = v26;
        v24(v19, &v29, &v28, &v27, ObjectType, v25);
        swift_unknownObjectRelease();
      }

      *(v19 + 81) = v20;
    }

LABEL_5:
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall AdvertRotationControllerProvider.viewControllerWillBeReloaded()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v9 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));

    sub_24EC49BC4();
    swift_beginAccess();
    sub_24E8F997C(v9 + 48, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_24F928D68();
    swift_beginAccess();
    v10 = sub_24E76D934(v15);
    if (v11)
    {
      v12 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v1 + 16);
      *(v1 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24E8B02DC();
      }

      sub_24E6585F8(*(v14 + 48) + 40 * v12);

      sub_24EB53A74(v12, v14);
      *(v1 + 16) = v14;
    }

    v5 &= v5 - 1;
    swift_endAccess();

    sub_24E6585F8(v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t AdvertRotationControllerProvider.viewControllerWillRemoveItems(_:asPartOf:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = result + 32;
    do
    {
      sub_24E615E00(v4, v12);
      __swift_project_boxed_opaque_existential_1(v12, v13);
      sub_24F928D68();
      swift_beginAccess();
      if (*(*(v3 + 16) + 16) && (sub_24E76D934(v11), (v5 & 1) != 0))
      {
        swift_endAccess();

        sub_24E6585F8(v11);
        sub_24EC49904();
        __swift_project_boxed_opaque_existential_1(v12, v13);
        sub_24F928D68();
        swift_beginAccess();
        v6 = sub_24E76D934(v11);
        if (v7)
        {
          v8 = v6;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v10 = *(v3 + 16);
          *(v3 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24E8B02DC();
          }

          sub_24E6585F8(*(v10 + 48) + 40 * v8);
          sub_24EB53A74(v8, v10);
          *(v3 + 16) = v10;
        }

        swift_endAccess();
      }

      else
      {
        swift_endAccess();
      }

      sub_24E6585F8(v11);
      result = __swift_destroy_boxed_opaque_existential_1(v12);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Void __swiftcall AdvertRotationControllerProvider.advertRotationStateDidChange(to:)(GameStoreKit::AdvertRotationControllerProvider::AdvertDisplayingViewControllerState to)
{
  v2 = v1;
  *(v1 + 72) = *to;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();

  v9 = 0;
  v44 = v3;
  v45 = v1;
  while (v7)
  {
LABEL_13:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v3 + 56) + ((v9 << 9) | (8 * v12)));
    v14 = *(v2 + 72);
    if (v14 <= 2)
    {
      if (*(v2 + 72))
      {
        if (v14 == 1)
        {
          v15 = qword_27F2105A0;

          if (v15 != -1)
          {
            swift_once();
          }

          v16 = sub_24F92AAE8();
          __swift_project_value_buffer(v16, qword_27F39C440);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = xmmword_24F93A400;
          sub_24F928448();
          sub_24F9283A8();
          sub_24F92A588();

          if (*(v13 + 112) == 1)
          {
            v17 = *(v13 + 128);
            v18 = *(v17 + 104);
            *(v17 + 104) = 1;
            v3 = v44;
            v2 = v45;
            if (v18 == 1)
            {
              goto LABEL_51;
            }

            v19 = 3;
            goto LABEL_50;
          }
        }

        else
        {
          v31 = qword_27F2105A0;

          if (v31 != -1)
          {
            swift_once();
          }

          v32 = sub_24F92AAE8();
          __swift_project_value_buffer(v32, qword_27F39C440);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = xmmword_24F93A400;
          sub_24F928448();
          sub_24F9283A8();
          sub_24F92A588();

          if (*(v13 + 112) == 1)
          {
            v33 = *(v13 + 128);
            v34 = *(v33 + 104);
            *(v33 + 104) = 0;
            if (v34 == 1)
            {
              LOBYTE(v46[0]) = 3;
              sub_24F031124(v46);
            }

            swift_beginAccess();
            sub_24E8F997C(v13 + 48, v46);
            v35 = v47;
            v36 = v48;
            __swift_project_boxed_opaque_existential_1(v46, v47);
            v37 = (*(v36 + 8))(v35, v36);
            if (!v37)
            {
              goto LABEL_6;
            }

            v38 = v37;
            __swift_destroy_boxed_opaque_existential_1(v46);
            sub_24E60169C(v13 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v46, &qword_27F229490);
            v39 = v47;
            if (v47)
            {
              v40 = v48;
              __swift_project_boxed_opaque_existential_1(v46, v47);
              (*(v40 + 16))(v38, v39, v40);
              goto LABEL_5;
            }

LABEL_52:

            sub_24E601704(v46, &qword_27F229490);
          }
        }
      }

      else
      {
        v24 = qword_27F2105A0;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = sub_24F92AAE8();
        __swift_project_value_buffer(v25, qword_27F39C440);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F928448();
        sub_24F9283A8();
        sub_24F92A588();

        if (*(v13 + 112) == 1)
        {
          swift_beginAccess();
          sub_24E8F997C(v13 + 48, v46);
          v26 = v47;
          v27 = v48;
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v28 = (*(v27 + 8))(v26, v27);
          if (!v28)
          {
            goto LABEL_6;
          }

          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(v46);
          sub_24E60169C(v13 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_lifecycleMetricsReporter, v46, &qword_27F229490);
          v30 = v47;
          if (v47)
          {
            v10 = v48;
            __swift_project_boxed_opaque_existential_1(v46, v47);
            (*(v10 + 8))(v29, v30, v10);
LABEL_5:

LABEL_6:
            __swift_destroy_boxed_opaque_existential_1(v46);
            goto LABEL_7;
          }

          goto LABEL_52;
        }
      }

LABEL_7:

      v3 = v44;
      v2 = v45;
    }

    else
    {
      if (*(v2 + 72) <= 4u)
      {
        if (v14 == 3)
        {

          sub_24EC49904();
          goto LABEL_51;
        }

        v41 = qword_27F2105A0;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = sub_24F92AAE8();
        __swift_project_value_buffer(v42, qword_27F39C440);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F928448();
        sub_24F9283A8();
        sub_24F92A588();

        if (*(v13 + 112) == 1)
        {
          v22 = *(v13 + 128);
          v43 = *(v22 + 105);
          *(v22 + 105) = 1;
          v3 = v44;
          v2 = v45;
          if (v43 == 1)
          {
            goto LABEL_51;
          }

LABEL_48:
          if ((*(v22 + 104) & 1) == 0)
          {
            goto LABEL_51;
          }

          v19 = 4;
LABEL_50:
          LOBYTE(v46[0]) = v19;
          sub_24F031124(v46);
          goto LABEL_51;
        }

        goto LABEL_7;
      }

      if (v14 == 5)
      {
        v20 = qword_27F2105A0;

        if (v20 != -1)
        {
          swift_once();
        }

        v21 = sub_24F92AAE8();
        __swift_project_value_buffer(v21, qword_27F39C440);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F928448();
        sub_24F9283A8();
        sub_24F92A588();

        if (*(v13 + 112) != 1)
        {
          goto LABEL_7;
        }

        v22 = *(v13 + 128);
        v23 = *(v22 + 105);
        *(v22 + 105) = 0;
        v3 = v44;
        v2 = v45;
        if (v23 == 1)
        {
          goto LABEL_48;
        }

LABEL_51:
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t AdvertRotationControllerProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t AdvertRotationControllerProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24EB6452C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v26 = a2;
  v7 = type metadata accessor for AdvertRotationControllerProvider.AdvertRotation();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ItemLayoutContext();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a4, v12, &qword_27F2294A8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_24E601704(v12, &qword_27F2294A8);
  }

  sub_24EB64874(v12, v16);
  v28 = a1;
  sub_24E8E7C80();
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229820);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    DynamicType = swift_getDynamicType();
    v21 = v25;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    if (DynamicType == swift_getDynamicType())
    {
      sub_24E8E7F4C(v16, v9);
      sub_24E8F997C(v21, &v9[v7[6]]);
      sub_24E8F997C(v19, &v9[v7[7]]);
      *&v9[v7[5]] = v18;
      *&v9[v7[8]] = v24;
      v22 = v18;

      sub_24F92AD88();
      sub_24EB648D8(v9, type metadata accessor for AdvertRotationControllerProvider.AdvertRotation);
    }
  }

  return sub_24EB648D8(v16, type metadata accessor for ItemLayoutContext);
}

uint64_t type metadata accessor for AdvertRotationControllerProvider.AdvertRotation()
{
  result = qword_27F229838;
  if (!qword_27F229838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB64874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB648D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EB64938()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(*(v1 + 56) + ((v7 << 9) | (8 * v9))) + 128);
    if (*(v10 + 105) == 1 && *(v10 + 104) == 1)
    {

      sub_24F0313B4(&v17);
      v11 = v17;
      v12 = *(v10 + 81);
      if (v17 == 4)
      {
        if (v12 == 4)
        {
          goto LABEL_18;
        }
      }

      else if (v17 == v12)
      {
        goto LABEL_18;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v10 + 96);
        ObjectType = swift_getObjectType();
        v17 = *(v10 + 81);
        v16 = v11;
        v15 = 2;
        (*(v13 + 8))(v10, &v17, &v16, &v15, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      *(v10 + 81) = v11;
LABEL_18:
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24EB64AFC()
{
  result = qword_27F229830;
  if (!qword_27F229830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229830);
  }

  return result;
}

uint64_t sub_24EB64BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ItemLayoutContext();
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

uint64_t sub_24EB64C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ItemLayoutContext();
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

unint64_t sub_24EB64D3C()
{
  result = type metadata accessor for ItemLayoutContext();
  if (v1 <= 0x3F)
  {
    result = sub_24E8E7C80();
    if (v2 <= 0x3F)
    {
      result = sub_24EB64DF0();
      if (v3 <= 0x3F)
      {
        result = sub_24F928FD8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_24EB64DF0()
{
  result = qword_27F229848;
  if (!qword_27F229848)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F229848);
  }

  return result;
}

uint64_t sub_24EB64E6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = 0;
  if (result && a2)
  {
    type metadata accessor for AdvertsSearchResult();
    result = swift_dynamicCastClass();
    v4 = result == 0;
  }

  *a3 = v4;
  return result;
}

uint64_t SearchResultsDecorationsProvider.SeparatorType.separator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922CE8();
  v6 = MEMORY[0x28223BE20](v3);
  if (*v1)
  {
    (*(v5 + 104))(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D22A08], v6);
    v11[4] = MEMORY[0x277D839F8];
    v11[5] = MEMORY[0x277D22A30];
    v11[1] = 0x4034000000000000;
    sub_24F922CF8();
    v7 = sub_24F922D18();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_24F922D18();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t SearchResultsDecorationsProvider.SeparatorType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EB65108()
{
  result = qword_27F229850;
  if (!qword_27F229850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229850);
  }

  return result;
}

uint64_t sub_24EB651E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24F928AD8();
    v10 = *(*(v9 - 8) + 48);
    v11 = &a1[*(a3 + 28)];

    return v10(v11, a2, v9);
  }
}

_BYTE *sub_24EB652B4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for UpdateImpedimentCompletionStatesAction()
{
  result = qword_27F229858;
  if (!qword_27F229858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB653A0()
{
  sub_24E7CA640();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EB6542C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229878);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB65B04();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCB8();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CCB8();
    v8[13] = 2;
    sub_24F92CCB8();
    type metadata accessor for UpdateImpedimentCompletionStatesAction();
    v8[12] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EB65654@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_24F928AD8();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229868);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  updated = type metadata accessor for UpdateImpedimentCompletionStatesAction();
  MEMORY[0x28223BE20](updated);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB65B04();
  v12 = v26;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v11;
    v26 = updated;
    v14 = v5;
    v30 = 0;
    v15 = v24;
    *v13 = sub_24F92CBD8();
    v29 = 1;
    v16 = v15;
    v13[1] = sub_24F92CBD8();
    v28 = 2;
    v18 = v13;
    v13[2] = sub_24F92CBD8();
    v27 = 3;
    sub_24E674184(&qword_27F254CB0);
    v19 = v14;
    v20 = v25;
    sub_24F92CC68();
    (*(v16 + 8))(v8, v20);
    (*(v22 + 32))(v18 + *(v26 + 28), v19, v3);
    sub_24EB65B58(v18, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24EB659A0()
{
  v1 = 0x654D6E6F69746361;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000018;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24EB65A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EB65CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EB65A5C(uint64_t a1)
{
  v2 = sub_24EB65B04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EB65A98(uint64_t a1)
{
  v2 = sub_24EB65B04();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EB65B04()
{
  result = qword_27F229870;
  if (!qword_27F229870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229870);
  }

  return result;
}

uint64_t sub_24EB65B58(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateImpedimentCompletionStatesAction();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

unint64_t sub_24EB65BD0()
{
  result = qword_27F229880;
  if (!qword_27F229880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229880);
  }

  return result;
}

unint64_t sub_24EB65C28()
{
  result = qword_27F229888;
  if (!qword_27F229888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229888);
  }

  return result;
}

unint64_t sub_24EB65C80()
{
  result = qword_27F229890;
  if (!qword_27F229890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229890);
  }

  return result;
}

uint64_t sub_24EB65CD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA541F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA54210 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA54230 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

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

double sub_24EB65F14@<D0>(double *a1@<X8>)
{
  sub_24EB68F4C();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

void ShelfDisplayStyleViewModifier.init(displayStyle:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a1;
  v6 = *a1 >> 62;
  if (v6)
  {
    if (v6 != 1)
    {
      v13 = 0uLL;
      v7 = 0.0;
      _Q0 = 0uLL;
      goto LABEL_13;
    }

    v16 = *a1;
    if (v5)
    {
      v7 = 14.0;
    }

    else
    {
      v7 = 0.0;
    }

    sub_24EB66094(v19);
    *&_Q0 = v20;
  }

  else
  {
    v16 = *a1;
    if (v5)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 12.0;
    }

    sub_24EB66094(v19);
    __asm { FMOV            V0.2D, #12.0 }

    *&_Q0 = v20;
  }

  v15 = _Q0;
  sub_24EB66094(v17);
  v13 = v15;
  v3 = v16;
  __asm { FMOV            V0.2D, #24.0 }

  *&_Q0 = v18;
LABEL_13:
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v7;
  *(a2 + 32) = v13;
  *(a2 + 48) = _Q0;
}

void sub_24EB66094(uint64_t a1@<X8>)
{
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 != 1)
  {
    v8 = 40.0;
    v5 = 374.0;
    v4 = 374.0;
    goto LABEL_21;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = 1580.0;
  if (v4 <= 1580.0)
  {
    v5 = v4;
  }

  if ((byte_27F2301A8 & 1) == 0)
  {
    *&v9 = 40.0;
LABEL_20:
    v8 = *&v9;
    goto LABEL_21;
  }

  if (v5 >= 0.0 && v5 < 376.0)
  {
    *&v9 = 44.0;
    goto LABEL_20;
  }

  v7 = v5 >= 428.0 || v5 < 376.0;
  v8 = 46.0;
  if (!v7)
  {
    v8 = 38.0;
  }

LABEL_21:
  *a1 = v4;
  *(a1 + 8) = 0x4098B00000000000;
  *(a1 + 16) = v5;
  *(a1 + 24) = v5 - (v8 + v8);
  *(a1 + 32) = v8;
  *(a1 + 40) = v8 + (v4 - v5) * 0.5;
}

uint64_t ShelfDisplayStyleViewModifier.body(content:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a1;
  v142 = a2;
  *&v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229898);
  MEMORY[0x28223BE20](v136);
  v4 = v130 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298A0);
  MEMORY[0x28223BE20](v5);
  v7 = v130 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298A8);
  MEMORY[0x28223BE20](v8);
  v10 = v130 - v9;
  v138.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298B0);
  MEMORY[0x28223BE20](v138.i64[0]);
  v12 = v130 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298B8);
  MEMORY[0x28223BE20](v141);
  v14 = v130 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298C0);
  MEMORY[0x28223BE20](v135);
  v16 = v130 - v15;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298C8);
  MEMORY[0x28223BE20](v140);
  *&v137 = v130 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D0);
  MEMORY[0x28223BE20](v18);
  v22 = v130 - v21;
  v23 = v2[1];
  *v152 = *v2;
  *&v152[16] = v23;
  v24 = v2[3];
  *&v152[32] = v2[2];
  *&v152[48] = v24;
  if (!(*v152 >> 62))
  {
    v76 = v19;
    v132 = v19;
    v77 = sub_24F925818();
    sub_24F923318();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D8);
    (*(*(v86 - 8) + 16))(v10, v139, v86);
    v87 = &v10[*(v76 + 36)];
    *v87 = v77;
    *(v87 + 1) = v79;
    *(v87 + 2) = v81;
    *(v87 + 3) = v83;
    *(v87 + 4) = v85;
    v87[40] = 0;
    v88 = sub_24F925828();
    sub_24F923318();
    *&v131 = v8;
    v89 = &v10[*(v8 + 36)];
    *v89 = v88;
    *(v89 + 1) = v90;
    *(v89 + 2) = v91;
    *(v89 + 3) = v92;
    *(v89 + 4) = v93;
    v89[40] = 0;
    v94 = sub_24F927558();
    v139 = v130;
    MEMORY[0x28223BE20](v94);
    MEMORY[0x28223BE20](v95);
    *&v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299A8);
    v130[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299B0);
    sub_24EB67C78();
    v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B8);
    v133 = v14;
    v97 = v96;
    v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299C0);
    v99 = sub_24EB685AC();
    v100 = sub_24E6A4C1C();
    v134 = v5;
    v101 = v100;
    v102 = sub_24EB686C0();
    *&v149 = v97;
    *(&v149 + 1) = &type metadata for GameOverlayViewPredicate;
    *&v150 = v98;
    *(&v150 + 1) = v99;
    *&v151 = v101;
    *(&v151 + 1) = v102;
    swift_getOpaqueTypeConformance2();
    sub_24EB6874C();
    sub_24F926AF8();
    sub_24E601704(v10, &qword_27F2298A8);
    KeyPath = swift_getKeyPath();
    v104 = swift_allocObject();
    v105 = *&v152[16];
    v104[1] = *v152;
    v104[2] = v105;
    v106 = *&v152[48];
    v104[3] = *&v152[32];
    v104[4] = v106;
    v107 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299A0) + 36)];
    *v107 = KeyPath;
    v107[1] = sub_24EB68CD0;
    v107[2] = v104;
    LOBYTE(KeyPath) = sub_24F925838();
    sub_24F923318();
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v116 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229990) + 36)];
    *v116 = KeyPath;
    *(v116 + 1) = v109;
    *(v116 + 2) = v111;
    *(v116 + 3) = v113;
    *(v116 + 4) = v115;
    v116[40] = 0;
    LOBYTE(KeyPath) = sub_24F925858();
    sub_24F923318();
    v117 = &v12[*(v138.i64[0] + 36)];
    *v117 = KeyPath;
    *(v117 + 1) = v118;
    *(v117 + 2) = v119;
    *(v117 + 3) = v120;
    *(v117 + 4) = v121;
    v117[40] = 0;
    sub_24E60169C(v12, v16, &qword_27F2298B0);
    swift_storeEnumTagMultiPayload();
    sub_24EB67D04();
    sub_24EB682B0();
    v122 = v137;
    sub_24F924E28();
    sub_24E60169C(v122, v133, &qword_27F2298C8);
    swift_storeEnumTagMultiPayload();
    sub_24EB68224();
    sub_24EB688BC();
    sub_24F924E28();
    sub_24E601704(v122, &qword_27F2298C8);
    v74 = v12;
    v75 = &qword_27F2298B0;
    return sub_24E601704(v74, v75);
  }

  if (*v152 >> 62 == 1)
  {
    v25 = *&v152[8];
    v26 = 0uLL;
    v134 = v5;
    v133 = v14;
    v27 = v19;
    if (*&v152[8] >= 1 && *&v152[16] >= 1)
    {
      if (qword_27F210D78 != -1)
      {
        v138 = *&v152[8];
        swift_once();
        v25 = v138;
      }

      *&v20 = qword_27F39D310;
      if (qword_27F210D68 != -1)
      {
        v138 = v25;
        v137 = v20;
        swift_once();
        *&v20 = v137;
        v25 = v138;
      }

      v28.i64[0] = -1;
      v28.i64[1] = -1;
      v26 = vaddq_f64(vmulq_n_f64(vcvtq_f64_u64(v25), *&v20), vmulq_n_f64(vcvtq_f64_u64(vaddq_s64(v25, v28)), *&qword_27F39D308));
    }

    v138 = v26;
    v29 = sub_24F925818();
    sub_24F923318();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D8);
    (*(*(v38 - 8) + 16))(v4, v139, v38);
    v39 = &v4[*(v27 + 36)];
    *v39 = v29;
    *(v39 + 1) = v31;
    *(v39 + 2) = v33;
    *(v39 + 3) = v35;
    *(v39 + 4) = v37;
    v39[40] = 0;
    v40 = sub_24F925828();
    sub_24F923318();
    v41 = &v4[*(v8 + 36)];
    *v41 = v40;
    *(v41 + 1) = v42;
    *(v41 + 2) = v43;
    *(v41 + 3) = v44;
    *(v41 + 4) = v45;
    v41[40] = 0;
    sub_24F927618();
    sub_24F9238C8();
    v46 = &v4[*(v136 + 36)];
    v47 = v150;
    *v46 = v149;
    *(v46 + 1) = v47;
    *(v46 + 2) = v151;
    v48 = sub_24F927558();
    v139 = v130;
    MEMORY[0x28223BE20](v48);
    MEMORY[0x28223BE20](v49);
    v138.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298E8);
    sub_24EB67BEC();
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229910);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229918);
    v52 = sub_24EB67DBC();
    v53 = sub_24E6A4C1C();
    v54 = sub_24EB67F28();
    v143 = v50;
    v144 = &type metadata for GameOverlayViewPredicate;
    v145 = v51;
    v146 = v52;
    v147 = v53;
    v148 = v54;
    swift_getOpaqueTypeConformance2();
    sub_24EB68008();
    sub_24F926AF8();
    sub_24E601704(v4, &qword_27F229898);
    v55 = swift_getKeyPath();
    v56 = swift_allocObject();
    v57 = *&v152[16];
    v56[1] = *v152;
    v56[2] = v57;
    v58 = *&v152[48];
    v56[3] = *&v152[32];
    v56[4] = v58;
    v59 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229968) + 36)];
    *v59 = v55;
    v59[1] = sub_24EB68FE0;
    v59[2] = v56;
    LOBYTE(v55) = sub_24F925838();
    sub_24F923318();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229970) + 36)];
    *v68 = v55;
    *(v68 + 1) = v61;
    *(v68 + 2) = v63;
    *(v68 + 3) = v65;
    *(v68 + 4) = v67;
    v68[40] = 0;
    LOBYTE(v55) = sub_24F925858();
    sub_24F923318();
    v69 = &v7[*(v134 + 36)];
    *v69 = v55;
    *(v69 + 1) = v70;
    *(v69 + 2) = v71;
    *(v69 + 3) = v72;
    *(v69 + 4) = v73;
    v69[40] = 0;
    sub_24E60169C(v7, v133, &qword_27F2298A0);
    swift_storeEnumTagMultiPayload();
    sub_24EB68224();
    sub_24EB688BC();
    sub_24F924E28();
    v74 = v7;
    v75 = &qword_27F2298A0;
    return sub_24E601704(v74, v75);
  }

  v124 = v19;
  v125 = sub_24F925808();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298D8);
  v127 = *(*(v126 - 8) + 16);
  v136 = *&v152[24];
  v131 = *&v152[40];
  v127(v22, v139, v126);
  v128 = &v22[*(v124 + 36)];
  *v128 = v125;
  *(v128 + 24) = v131;
  *(v128 + 8) = v136;
  v128[40] = 0;
  sub_24E60169C(v22, v16, &qword_27F2298D0);
  swift_storeEnumTagMultiPayload();
  sub_24EB67D04();
  sub_24EB682B0();
  v129 = v137;
  sub_24F924E28();
  sub_24E60169C(v129, v14, &qword_27F2298C8);
  swift_storeEnumTagMultiPayload();
  sub_24EB68224();
  sub_24EB688BC();
  sub_24F924E28();
  sub_24E601704(v129, &qword_27F2298C8);
  return sub_24E601704(v22, &qword_27F2298D0);
}

uint64_t sub_24EB670BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v31 = sub_24F924258();
  MEMORY[0x28223BE20](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927418();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927538();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927148();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299B8);
  MEMORY[0x28223BE20](v28);
  v18 = &v28 - v17;
  sub_24F9273F8();
  sub_24F927448();
  (*(v7 + 8))(v9, v6);
  sub_24F927138();
  (*(v11 + 8))(v13, v10);
  v19 = *(a2 + 56);
  v20 = v31;
  v21 = *(v31 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24F924B38();
  v24 = *(*(v23 - 8) + 104);
  v24(&v5[v21], v22, v23);
  *v5 = v19;
  *(v5 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298A8);
  sub_24EB67C78();
  sub_24EB67ED0();
  sub_24F926248();
  sub_24E6EB974(v5);
  (*(v29 + 8))(v16, v30);
  v25 = &v18[*(v28 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229938);
  sub_24F924358();
  v24(&v25[*(v20 + 20)], v22, v23);
  *v25 = v19;
  *(v25 + 1) = v19;
  v25[*(v26 + 36)] = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299C0);
  sub_24EB685AC();
  sub_24E6A4C1C();
  sub_24EB686C0();
  sub_24F926B08();
  return sub_24E601704(v18, &qword_27F2299B8);
}

uint64_t sub_24EB6750C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v6 = sub_24F926D08();

  v7 = sub_24F925808();
  sub_24E60169C(a1, a3, &qword_27F2298A8);
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299E8) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = *(a2 + 56);
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2299B0) + 36));
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  *v10 = v9;
  *(v10 + 1) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8);
  *&v10[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24EB6764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v31 = sub_24F924258();
  MEMORY[0x28223BE20](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927418();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927538();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927148();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229910);
  MEMORY[0x28223BE20](v28);
  v18 = &v28 - v17;
  sub_24F9273F8();
  sub_24F927448();
  (*(v7 + 8))(v9, v6);
  sub_24F927138();
  (*(v11 + 8))(v13, v10);
  v19 = *(a2 + 56);
  v20 = v31;
  v21 = *(v31 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24F924B38();
  v24 = *(*(v23 - 8) + 104);
  v24(&v5[v21], v22, v23);
  *v5 = v19;
  *(v5 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229898);
  sub_24EB67BEC();
  sub_24EB67ED0();
  sub_24F926248();
  sub_24E6EB974(v5);
  (*(v29 + 8))(v16, v30);
  v25 = &v18[*(v28 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229938);
  sub_24F924358();
  v24(&v25[*(v20 + 20)], v22, v23);
  *v25 = v19;
  *(v25 + 1) = v19;
  v25[*(v26 + 36)] = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229918);
  sub_24EB67DBC();
  sub_24E6A4C1C();
  sub_24EB67F28();
  sub_24F926B08();
  return sub_24E601704(v18, &qword_27F229910);
}

uint64_t sub_24EB67AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v6 = sub_24F926D08();

  v7 = sub_24F925808();
  sub_24E60169C(a1, a3, &qword_27F229898);
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229960) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = *(a2 + 56);
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2298E8) + 36));
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  *v10 = v9;
  *(v10 + 1) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8);
  *&v10[*(result + 36)] = 256;
  return result;
}

unint64_t sub_24EB67BEC()
{
  result = qword_27F2298F0;
  if (!qword_27F2298F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229898);
    sub_24EB67C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2298F0);
  }

  return result;
}

unint64_t sub_24EB67C78()
{
  result = qword_27F2298F8;
  if (!qword_27F2298F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A8);
    sub_24EB67D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2298F8);
  }

  return result;
}

unint64_t sub_24EB67D04()
{
  result = qword_27F229900;
  if (!qword_27F229900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298D0);
    sub_24E602068(&qword_27F229908, &qword_27F2298D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229900);
  }

  return result;
}

unint64_t sub_24EB67DBC()
{
  result = qword_27F229920;
  if (!qword_27F229920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229898);
    sub_24F924258();
    sub_24EB67BEC();
    sub_24EB67ED0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F229930, &qword_27F229938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229920);
  }

  return result;
}

unint64_t sub_24EB67ED0()
{
  result = qword_27F229928;
  if (!qword_27F229928)
  {
    sub_24F924258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229928);
  }

  return result;
}

unint64_t sub_24EB67F28()
{
  result = qword_27F229940;
  if (!qword_27F229940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229918);
    sub_24EB67DBC();
    sub_24EB67FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229940);
  }

  return result;
}

unint64_t sub_24EB67FB4()
{
  result = qword_27F229948;
  if (!qword_27F229948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229948);
  }

  return result;
}

unint64_t sub_24EB68008()
{
  result = qword_27F229950;
  if (!qword_27F229950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298E8);
    sub_24EB680C0();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229950);
  }

  return result;
}

unint64_t sub_24EB680C0()
{
  result = qword_27F229958;
  if (!qword_27F229958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229960);
    sub_24EB67BEC();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229958);
  }

  return result;
}

double sub_24EB68178@<D0>(double *a1@<X8>)
{
  sub_24EB68F4C();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

unint64_t sub_24EB68224()
{
  result = qword_27F229978;
  if (!qword_27F229978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298C8);
    sub_24EB67D04();
    sub_24EB682B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229978);
  }

  return result;
}

unint64_t sub_24EB682B0()
{
  result = qword_27F229980;
  if (!qword_27F229980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298B0);
    sub_24EB6833C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229980);
  }

  return result;
}

unint64_t sub_24EB6833C()
{
  result = qword_27F229988;
  if (!qword_27F229988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229990);
    sub_24EB683C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229988);
  }

  return result;
}

unint64_t sub_24EB683C8()
{
  result = qword_27F229998;
  if (!qword_27F229998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B0);
    sub_24EB67C78();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299C0);
    sub_24EB685AC();
    sub_24E6A4C1C();
    sub_24EB686C0();
    swift_getOpaqueTypeConformance2();
    sub_24EB6874C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2299F0, &qword_27F2299F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229998);
  }

  return result;
}

unint64_t sub_24EB685AC()
{
  result = qword_27F2299C8;
  if (!qword_27F2299C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A8);
    sub_24F924258();
    sub_24EB67C78();
    sub_24EB67ED0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F229930, &qword_27F229938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299C8);
  }

  return result;
}

unint64_t sub_24EB686C0()
{
  result = qword_27F2299D0;
  if (!qword_27F2299D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299C0);
    sub_24EB685AC();
    sub_24EB67FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299D0);
  }

  return result;
}

unint64_t sub_24EB6874C()
{
  result = qword_27F2299D8;
  if (!qword_27F2299D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299B0);
    sub_24EB68804();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299D8);
  }

  return result;
}

unint64_t sub_24EB68804()
{
  result = qword_27F2299E0;
  if (!qword_27F2299E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2299E8);
    sub_24EB67C78();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2299E0);
  }

  return result;
}

unint64_t sub_24EB688BC()
{
  result = qword_27F229A00;
  if (!qword_27F229A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298A0);
    sub_24EB68948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A00);
  }

  return result;
}

unint64_t sub_24EB68948()
{
  result = qword_27F229A08;
  if (!qword_27F229A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229970);
    sub_24EB689D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A08);
  }

  return result;
}

unint64_t sub_24EB689D4()
{
  result = qword_27F229A10;
  if (!qword_27F229A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2298E8);
    sub_24EB67BEC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229918);
    sub_24EB67DBC();
    sub_24E6A4C1C();
    sub_24EB67F28();
    swift_getOpaqueTypeConformance2();
    sub_24EB68008();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2299F0, &qword_27F2299F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A10);
  }

  return result;
}

uint64_t View.shelfDisplayStyle(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v5;
  ShelfDisplayStyleViewModifier.init(displayStyle:)(&v8, v7);
  return MEMORY[0x25304C420](v7, a2, &type metadata for ShelfDisplayStyleViewModifier, a3);
}

uint64_t sub_24EB68C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_24E60169C(a1, a5, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v12 = a5 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 0;
  *(v12 + 9) = a2;
  return result;
}

double sub_24EB68CD0(double *a1)
{
  result = *a1 - (*(v1 + 48) + *(v1 + 64));
  *a1 = result;
  return result;
}

uint64_t sub_24EB68D08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24EB68D58(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
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

unint64_t sub_24EB68DC4()
{
  result = qword_27F229A18;
  if (!qword_27F229A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229A20);
    sub_24EB68224();
    sub_24EB688BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A18);
  }

  return result;
}

uint64_t sub_24EB68E50()
{
  sub_24F924038();
  sub_24EB68EB4();
  return swift_getWitnessTable();
}

unint64_t sub_24EB68EB4()
{
  result = qword_27F229A28;
  if (!qword_27F229A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A28);
  }

  return result;
}

unint64_t sub_24EB68F4C()
{
  result = qword_27F229A30;
  if (!qword_27F229A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A30);
  }

  return result;
}

double Conditional<>.rawValue(in:)(uint64_t a1)
{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

double sub_24EB69054(uint64_t a1)
{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

char *LocalAction.__allocating_init(id:title:artwork:actionMetrics:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v13 = sub_24F91F6B8();
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = &v16[OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler];
  *v17 = a6;
  *(v17 + 1) = a7;
  sub_24E65E064(a1, v42);
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v19 = sub_24F928AD8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v36 = a5;
  v21(&v16[v18], a5, v19);
  v22 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(&v16[v22], 1, 1, v23);
  v24 = &v16[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &v16[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v42, &v39);
  if (*(&v40 + 1))
  {
    v26 = v40;
    *v25 = v39;
    *(v25 + 1) = v26;
    *(v25 + 4) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v32 = a1;
    v29 = v28;
    (*(v33 + 8))(v15, v34);
    v37 = v27;
    v38 = v29;
    a1 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  (*(v20 + 8))(v36, v19);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v42, &qword_27F235830);
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = v35;
  *(v16 + 5) = 0;
  return v16;
}

void *LocalAction.init(id:title:artwork:actionMetrics:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = sub_24F91F6B8();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v8 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler);
  *v22 = a6;
  v22[1] = a7;
  sub_24E65E064(a1, v47);
  (*(v19 + 16))(v21, a5, v18);
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v25 = a1;
    v26 = sub_24F91F668();
    v27 = a5;
    v29 = v28;
    (*(v34 + 8))(v14, v35);
    v39 = v26;
    v40 = v29;
    a1 = v25;
    a5 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830);
  }

  (*(v19 + 8))(a5, v18);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v47, &qword_27F235830);
  v30 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v30 + 4) = v46;
  v31 = v45;
  *v30 = v44;
  *(v30 + 1) = v31;
  sub_24E65E0D4(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v32 = v37;
  v8[2] = v36;
  v8[3] = v32;
  v8[4] = v38;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

uint64_t LocalAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t LocalAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalAction()
{
  result = qword_27F229A40;
  if (!qword_27F229A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::PurchasesDecorationIntent __swiftcall PurchasesDecorationIntent.init(purchaseIntents:)(Swift::OpaquePointer purchaseIntents)
{
  v1->_rawValue = 0xD000000000000019;
  v1[1]._rawValue = 0x800000024F985DD0;
  v1[2]._rawValue = purchaseIntents._rawValue;
  result.kind._countAndFlagsBits = purchaseIntents._rawValue;
  return result;
}

uint64_t PurchasesDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PurchasesDecorationIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = *(v3 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v15 = MEMORY[0x277D84F90];
      sub_24F457900(0, v7, 0);
      v8 = v15;
      v9 = v3 + 32;
      do
      {
        sub_24EB69CEC(v9, v14);
        v10 = sub_24EBA9E24();
        sub_24E95A048(v14);
        v15 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24F457900((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
        v9 += 160;
        --v7;
      }

      while (v7);
    }

    v14[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
    v13 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EB69D4C()
{
  result = qword_27F229A50;
  if (!qword_27F229A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A50);
  }

  return result;
}

unint64_t sub_24EB69DA8()
{
  result = qword_27F229A58;
  if (!qword_27F229A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229A60);
    sub_24EB69E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A58);
  }

  return result;
}

unint64_t sub_24EB69E2C()
{
  result = qword_27F229A68;
  if (!qword_27F229A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A68);
  }

  return result;
}

uint64_t sub_24EB69EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB6A390();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80);
    sub_24EB6A3E4(&qword_27F229A98, sub_24E6ED170);
    sub_24F92CD48();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24EB6A074(uint64_t a1)
{
  v2 = sub_24EB6A390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EB6A0B0(uint64_t a1)
{
  v2 = sub_24EB6A390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EB6A10C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24EB6A15C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_24EB6A15C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB6A390();
  sub_24F92D108();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_24F92CC28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80);
    v9[15] = 1;
    sub_24EB6A3E4(&qword_27F229A88, sub_24E6ED11C);
    sub_24F92CC68();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EB6A390()
{
  result = qword_27F229A78;
  if (!qword_27F229A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229A78);
  }

  return result;
}

uint64_t sub_24EB6A3E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EB6A470()
{
  result = qword_27F229AA0;
  if (!qword_27F229AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229AA0);
  }

  return result;
}

unint64_t sub_24EB6A4C8()
{
  result = qword_27F229AA8;
  if (!qword_27F229AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229AA8);
  }

  return result;
}

unint64_t sub_24EB6A520()
{
  result = qword_27F229AB0;
  if (!qword_27F229AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229AB0);
  }

  return result;
}

uint64_t sub_24EB6A574()
{
  type metadata accessor for MetricsActivity();
  v0 = swift_allocObject();
  result = sub_24EB6A988();
  off_27F229AB8 = v0;
  return result;
}

uint64_t static MetricsActivity.current.getter()
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24EB6A60C()
{
  v0 = [objc_opt_self() sharedCoordinator];
  v4[4] = sub_24EB6A704;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_24EAF8248;
  v4[3] = &block_descriptor_52;
  v1 = _Block_copy(v4);
  v2 = [v0 registerCleanupHandler_];
  _Block_release(v1);

  sub_24F92C648();
  return swift_unknownObjectRelease();
}

uint64_t sub_24EB6A704()
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v0 = off_27F229AB8;
  *(off_27F229AB8 + 3) = 0;
  *(v0 + 4) = 0;

  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    result = sub_24E601704(&v13, &qword_27F229AE8);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8);
}

uint64_t sub_24EB6A8F4()
{
  result = sub_24F92B098();
  qword_27F229AE0 = result;
  return result;
}

id static MetricsActivity.CurrentPageFieldsUpdatedNotification.getter()
{
  if (qword_27F210288 != -1)
  {
    swift_once();
  }

  v1 = qword_27F229AE0;

  return v1;
}

uint64_t sub_24EB6A988()
{
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 2;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 227) = 0u;
  if (qword_27F210280 != -1)
  {
    swift_once();
  }

  sub_24E643A9C(&unk_27F229AC0, v4);
  CGSizeMake(v4, v1, v2);
  sub_24E601704(v4, &qword_27F2129B0);
  return v0;
}

void sub_24EB6AA88(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_24EB6AAD4(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24EB6AB64;
}

void sub_24EB6AB64(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_24EB6AC9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F927E38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E74EC40();
  *v7 = sub_24F92BEF8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_24F927E68();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  *(v2 + 96) = a1;

  v8 = [objc_opt_self() defaultCenter];
  if (qword_27F210288 != -1)
  {
LABEL_5:
    swift_once();
  }

  [v8 postNotificationName:qword_27F229AE0 object:v2];
}

void (*sub_24EB6AE4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 96);

  return sub_24EB6AEE0;
}

void sub_24EB6AEE0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_24EB6AC9C(v4);
  }

  else
  {
    sub_24EB6AC9C(v3);
  }

  free(v2);
}

uint64_t sub_24EB6AF44(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F224FA0);
  v3 = *a2;
  swift_beginAccess();
  sub_24EB6B058(v5, v3 + 104);
  return swift_endAccess();
}

uint64_t sub_24EB6B008(uint64_t a1)
{
  swift_beginAccess();
  sub_24EB6B058(a1, v1 + 104);
  return swift_endAccess();
}

uint64_t sub_24EB6B058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB6B118(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
}

uint64_t sub_24EB6B200()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;

  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8);
    result = sub_24E601704(&v13, &qword_27F229AE8);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8);
}

uint64_t sub_24EB6B3B8()
{
  v1 = v0;
  v2 = v0[4];
  v3 = MEMORY[0x277D84F98];
  v4 = MEMORY[0x277D837D0];
  if (v2)
  {
    v5 = v1[3];
    v16 = MEMORY[0x277D837D0];
    *&v15 = v5;
    *(&v15 + 1) = v2;
    sub_24E612B0C(&v15, v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v14, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  }

  v7 = v1[8];
  if (v7)
  {
    v8 = v1[7];
    v16 = v4;
    *&v15 = v8;
    *(&v15 + 1) = v7;
    sub_24E612B0C(&v15, v14);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v14, 0xD000000000000013, 0x800000024FA54370, v9);
  }

  v10 = v1[6];
  if (v10)
  {
    v11 = v1[5];
    v16 = v4;
    *&v15 = v11;
    *(&v15 + 1) = v10;
    sub_24E612B0C(&v15, v14);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v14, 0x70704174736F68, 0xE700000000000000, v12);
  }

  return v3;
}

uint64_t sub_24EB6B524(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  v5 = sub_24E6159B8(sub_24E7FA94C, v7, &unk_2861C0298);
  result = swift_arrayDestroy();
  if ((v5 & 1) == 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  return result;
}

uint64_t sub_24EB6B5CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_24EB6B60C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_24EB6B64C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

void sub_24EB6B68C(uint64_t a1, char a2)
{
  v6 = v3;
  v89 = a1;
  if ((a2 & 1) == 0)
  {
    v13 = sub_24EB6B3B8();
    v14 = 0;
    v11 = v13 + 64;
    v15 = *(v13 + 64);
    v70 = v13;
    v16 = 1 << *(v13 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    if ((v17 & v15) != 0)
    {
      do
      {
        v20 = v14;
LABEL_15:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v22 | (v20 << 6);
        v24 = (*(v70 + 48) + 16 * v23);
        v25 = *v24;
        v26 = v24[1];
        sub_24E643A9C(*(v70 + 56) + 32 * v23, &v75);
        *&v78 = v25;
        *(&v78 + 1) = v26;
        sub_24E612B0C(&v75, &v79);

        v10 = v20;
LABEL_16:
        v84 = v78;
        v85 = v79;
        v86 = *v80;
        if (!*(&v78 + 1))
        {
          goto LABEL_41;
        }

        sub_24E612B0C(&v85, &v78);
        v5 = *(v89 + 24);
        v4 = *(v89 + 32);
        v2 = __swift_mutable_project_boxed_opaque_existential_1(v89, v5);
        sub_24F929A28();
        if (v3)
        {
          __swift_destroy_boxed_opaque_existential_1(&v78);

          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(&v78);

        v14 = v10;
      }

      while (v18);
    }

    if (v19 <= v14 + 1)
    {
      v21 = v14 + 1;
    }

    else
    {
      v21 = v19;
    }

    v10 = v21 - 1;
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v18 = 0;
        v79 = 0u;
        *v80 = 0u;
        v78 = 0u;
        goto LABEL_16;
      }

      v18 = *(v11 + 8 * v20);
      ++v14;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  swift_beginAccess();
  v7 = *(v2 + 168);
  v84 = *(v2 + 152);
  v85 = v7;
  v8 = *(v2 + 200);
  v86 = *(v2 + 184);
  v87 = v8;
  v88[0] = *(v2 + 216);
  *(v88 + 11) = *(v2 + 227);
  v5 = *(&v84 + 1);
  v9 = v84;
  v4 = *(&v85 + 1);
  v10 = v85;
  v11 = v86;
  v12 = BYTE8(v86);
  if (*(&v84 + 1) == 2)
  {
    *&v78 = v84;
    *(&v78 + 1) = 2;
    v79 = v85;
    *v80 = v86;
    v80[8] = BYTE8(v86);
    *&v80[9] = *(v2 + 193);
    v81 = *(v2 + 209);
    v82 = *(v2 + 225);
    v83 = *(v2 + 241);
    sub_24E60169C(&v84, &v75, &qword_27F229AE8);
    sub_24E601704(&v78, &qword_27F229AE8);
LABEL_23:
    v27 = sub_24EB6B3B8();
    v28 = 0;
    v30 = v27 + 64;
    v29 = *(v27 + 64);
    v70 = v27;
    v31 = 1 << *(v27 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v18 = v32 & v29;
    v11 = (v31 + 63) >> 6;
    if ((v32 & v29) != 0)
    {
      while (1)
      {
        v10 = v28;
LABEL_34:
        v34 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v35 = v34 | (v10 << 6);
        v36 = (*(v70 + 48) + 16 * v35);
        v38 = *v36;
        v37 = v36[1];
        sub_24E643A9C(*(v70 + 56) + 32 * v35, &v72);
        *&v75 = v38;
        *(&v75 + 1) = v37;
        sub_24E612B0C(&v72, &v76);

        v4 = v10;
LABEL_35:
        v78 = v75;
        v79 = v76;
        *v80 = v77;
        if (!*(&v75 + 1))
        {
          break;
        }

        sub_24E612B0C(&v79, &v75);
        v5 = *(v89 + 24);
        v2 = __swift_mutable_project_boxed_opaque_existential_1(v89, v5);
        sub_24F929A28();
        __swift_destroy_boxed_opaque_existential_1(&v75);

        if (v6)
        {
          break;
        }

        v28 = v4;
        if (!v18)
        {
          goto LABEL_27;
        }
      }

LABEL_41:

      return;
    }

LABEL_27:
    if (v11 <= v28 + 1)
    {
      v33 = v28 + 1;
    }

    else
    {
      v33 = v11;
    }

    v4 = v33 - 1;
    while (1)
    {
      v10 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        v18 = 0;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        goto LABEL_35;
      }

      v18 = *(v30 + 8 * v10);
      ++v28;
      if (v18)
      {
        goto LABEL_34;
      }
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v70 = v3;
  v78 = v84;
  v79 = v85;
  *v80 = v86;
  v80[8] = BYTE8(v86);
  *&v80[9] = *(v2 + 193);
  v81 = *(v2 + 209);
  v82 = *(v2 + 225);
  v83 = *(v2 + 241);
  sub_24E60169C(&v84, &v75, &qword_27F229AE8);
  sub_24EA145F0(v9, v5, v10, v4, v11, v12);
  sub_24E601704(&v78, &qword_27F229AE8);
  if (v5 == 1)
  {
    v6 = v3;
    goto LABEL_23;
  }

  v6 = v9;
  v2 = sub_24EB6B3B8();
  v18 = MEMORY[0x277D837D0];
  if (v5)
  {
    *(&v76 + 1) = MEMORY[0x277D837D0];
    v75 = __PAIR128__(v5, v6);
    sub_24E612B0C(&v75, &v72);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v4)
  {
    *(&v76 + 1) = v18;
    *&v75 = v10;
    *(&v75 + 1) = v4;
    sub_24E612B0C(&v75, &v72);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x7255666552747865, 0xE90000000000006CLL, v40);
  }

  if (!v12)
  {
    *(&v76 + 1) = v18;
    *&v75 = 0x696C6F706D617274;
    *(&v75 + 1) = 0xEA0000000000656ELL;
    sub_24E612B0C(&v75, &v72);

    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v49);
    *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0);
    *&v75 = v11;
    sub_24E612B0C(&v75, &v72);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0xD000000000000011, 0x800000024FA54300, v50);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = v11;
    v48 = 0;
    goto LABEL_50;
  }

  if (v12 == 1)
  {
    *(&v76 + 1) = v18;
    *&v75 = 0x746567646977;
    *(&v75 + 1) = 0xE600000000000000;
    sub_24E612B0C(&v75, &v72);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v41);
    *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0);
    *&v75 = v11;
    sub_24E612B0C(&v75, &v72);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x6F43746567646977, 0xED0000747865746ELL, v42);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = v11;
    v48 = 1;
LABEL_50:
    sub_24EA14B54(v43, v44, v45, v46, v47, v48);
    v2 = *&v71[0];
    goto LABEL_51;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(&v76 + 1) = v18;
      *&v75 = 0x65726F7473707061;
      *(&v75 + 1) = 0xE800000000000000;
      sub_24E612B0C(&v75, &v72);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *&v71[0] = v2;
      sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v66);
      v43 = v6;
      v44 = v5;
      v45 = v10;
      v46 = v4;
      v47 = 2;
      v48 = 2;
    }

    else
    {
      *(&v76 + 1) = v18;
      if (v11 == 3)
      {
        *&v75 = 0x746E6563656D6167;
        *(&v75 + 1) = 0xEA00000000007265;
        sub_24E612B0C(&v75, &v72);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v2;
        sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v65);
        v43 = v6;
        v44 = v5;
        v45 = v10;
        v46 = v4;
        v47 = 3;
      }

      else
      {
        *&v75 = 0x6867696C746F7073;
        *(&v75 + 1) = 0xE900000000000074;
        sub_24E612B0C(&v75, &v72);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v2;
        sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v67);
        v43 = v6;
        v44 = v5;
        v45 = v10;
        v46 = v4;
        v47 = 4;
      }

      v48 = 2;
    }

    goto LABEL_50;
  }

LABEL_77:
  if (v11)
  {
    *(&v76 + 1) = v18;
    *&v75 = 1885957219;
    *(&v75 + 1) = 0xE400000000000000;
    sub_24E612B0C(&v75, &v72);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_24E81C1D4(&v72, 0x7954707041666572, 0xEA00000000006570, v68);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = 1;
    v48 = 2;
    goto LABEL_50;
  }

  sub_24EA14B54(v6, v5, v10, v4, 0, 2u);
LABEL_51:
  v51 = 0;
  v69 = v2;
  v52 = v2 + 64;
  v53 = 1 << *(v2 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v2 + 64);
  v56 = (v53 + 63) >> 6;
  if (v55)
  {
    while (1)
    {
      v57 = v51;
LABEL_62:
      v60 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v61 = v60 | (v57 << 6);
      v62 = (*(v69 + 48) + 16 * v61);
      v64 = *v62;
      v63 = v62[1];
      sub_24E643A9C(*(v69 + 56) + 32 * v61, v71);
      *&v72 = v64;
      *(&v72 + 1) = v63;
      sub_24E612B0C(v71, &v73);

      v59 = v57;
LABEL_63:
      v75 = v72;
      v76 = v73;
      v77 = v74;
      if (!*(&v72 + 1))
      {
        break;
      }

      sub_24E612B0C(&v76, &v72);
      __swift_mutable_project_boxed_opaque_existential_1(v89, *(v89 + 24));
      sub_24F929A28();
      if (v70)
      {
        __swift_destroy_boxed_opaque_existential_1(&v72);

        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v72);

      v51 = v59;
      if (!v55)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    if (v56 <= v51 + 1)
    {
      v58 = v51 + 1;
    }

    else
    {
      v58 = v56;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v57 >= v56)
      {
        v55 = 0;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        goto LABEL_63;
      }

      v55 = *(v52 + 8 * v57);
      ++v51;
      if (v55)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24EB6C148()
{
  v1 = v0;
  v2 = sub_24EB6B3B8();
  swift_beginAccess();
  v53[0] = *(v0 + 152);
  v54 = *(v0 + 200);
  *v55 = *(v0 + 216);
  *&v55[11] = *(v0 + 227);
  v53[2] = *(v0 + 184);
  v53[1] = *(v0 + 168);
  v3 = v54;
  v5 = *v55;
  v4 = *&v55[8];
  v6 = *&v55[16];
  v7 = v55[24];
  if (*(&v53[0] + 1) == 2)
  {
    *&v44 = *&v53[0];
    *(&v44 + 1) = 2;
    v8 = *(v0 + 184);
    v45 = *(v0 + 168);
    v46 = v8;
    v47 = v54;
    v48 = *v55;
    v49 = *&v55[8];
    v50 = *&v55[16];
    v51 = v55[24];
    v52 = *&v55[25];
    sub_24E60169C(v53, &v42, &qword_27F229AE8);
    sub_24E601704(&v44, &qword_27F229AE8);
LABEL_5:
    sub_24EB6CB08();
    goto LABEL_24;
  }

  v44 = v53[0];
  v9 = *(v0 + 184);
  v45 = *(v0 + 168);
  v46 = v9;
  v47 = v54;
  v48 = *v55;
  v49 = *&v55[8];
  v50 = *&v55[16];
  v51 = v55[24];
  v52 = *&v55[25];
  sub_24E60169C(v53, &v42, &qword_27F229AE8);
  sub_24EA145F0(v3, *(&v3 + 1), v5, v4, v6, v7);
  sub_24E601704(&v44, &qword_27F229AE8);
  if (*(&v3 + 1))
  {
    if (*(&v3 + 1) == 1)
    {
      goto LABEL_5;
    }

    v43 = MEMORY[0x277D837D0];
    v42 = v3;
    sub_24E612B0C(&v42, v37);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v2;
    sub_24E81C1D4(v37, 0x7041666552747865, 0xEA00000000003270, isUniquelyReferenced_nonNull_native);
    v2 = v41;
  }

  if (v4)
  {
    v43 = MEMORY[0x277D837D0];
    *&v42 = v5;
    *(&v42 + 1) = v4;
    sub_24E612B0C(&v42, v37);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v2;
    sub_24E81C1D4(v37, 0x7255666552747865, 0xEA0000000000326CLL, v11);
    v2 = v41;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v43 = MEMORY[0x277D837D0];
      *&v42 = 0x746567646977;
      *(&v42 + 1) = 0xE600000000000000;
      sub_24E612B0C(&v42, v37);
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v2;
      sub_24E81C1D4(v37, 0x7041666552747865, 0xED00006570795470, v12);
      v14 = v3 >> 64;
      v13 = v3;
      v15 = v5;
      v16 = v4;
      v17 = v6;
      v18 = 1;
    }

    else
    {
      if (v6 <= 1)
      {
        if (!v6)
        {
          sub_24EA14B54(v3, *(&v3 + 1), v5, v4, 0, 2u);
          goto LABEL_24;
        }

        v43 = MEMORY[0x277D837D0];
        *&v42 = 1885957219;
        *(&v42 + 1) = 0xE400000000000000;
        sub_24E612B0C(&v42, v37);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v41 = v2;
        sub_24E81C1D4(v37, 0x7041666552747865, 0xED00006570795470, v23);
        v14 = v3 >> 64;
        v13 = v3;
        v15 = v5;
        v16 = v4;
        v17 = 1;
      }

      else if (v6 == 2)
      {
        v43 = MEMORY[0x277D837D0];
        *&v42 = 0x65726F7453707061;
        *(&v42 + 1) = 0xE800000000000000;
        sub_24E612B0C(&v42, v37);
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v41 = v2;
        sub_24E81C1D4(v37, 0x7041666552747865, 0xED00006570795470, v21);
        v14 = v3 >> 64;
        v13 = v3;
        v15 = v5;
        v16 = v4;
        v17 = 2;
      }

      else
      {
        v43 = MEMORY[0x277D837D0];
        if (v6 == 3)
        {
          *&v42 = 0x746E6563656D6167;
          *(&v42 + 1) = 0xEA00000000007265;
          sub_24E612B0C(&v42, v37);
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v41 = v2;
          sub_24E81C1D4(v37, 0x7041666552747865, 0xED00006570795470, v20);
          v14 = v3 >> 64;
          v13 = v3;
          v15 = v5;
          v16 = v4;
          v17 = 3;
        }

        else
        {
          *&v42 = 0x6867696C746F7073;
          *(&v42 + 1) = 0xE900000000000074;
          sub_24E612B0C(&v42, v37);
          v22 = swift_isUniquelyReferenced_nonNull_native();
          v41 = v2;
          sub_24E81C1D4(v37, 0x7041666552747865, 0xED00006570795470, v22);
          v14 = v3 >> 64;
          v13 = v3;
          v15 = v5;
          v16 = v4;
          v17 = 4;
        }
      }

      v18 = 2;
    }
  }

  else
  {
    v43 = MEMORY[0x277D837D0];
    *&v42 = 0x696C6F706D617274;
    *(&v42 + 1) = 0xEA0000000000656ELL;
    sub_24E612B0C(&v42, v37);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v2;
    sub_24E81C1D4(v37, 0x7041666552747865, 0xED00006570795470, v19);
    v14 = v3 >> 64;
    v13 = v3;
    v15 = v5;
    v16 = v4;
    v17 = v6;
    v18 = 0;
  }

  sub_24EA14B54(v13, v14, v15, v16, v17, v18);
  v2 = v41;
LABEL_24:
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;

  v24 = *(v0 + 80);
  if (v24)
  {
    v25 = *(v1 + 72);
    *(&v45 + 1) = MEMORY[0x277D837D0];
    *&v44 = v25;
    *(&v44 + 1) = v24;
    sub_24E612B0C(&v44, &v42);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v37[0] = v2;
    sub_24E81C1D4(&v42, 0x6C7255666572, 0xE600000000000000, v26);
    v2 = *&v37[0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
    v29 = Strong;
    swift_beginAccess();
    v30 = *v28;
    LOBYTE(v28) = *(v28 + 8);
    sub_24EB6CE50(v30, v28);

    v39 = v30;
    v40 = v28;
    v33 = ArcadeState.stringValue.getter(v31, v32);
    *(&v45 + 1) = MEMORY[0x277D837D0];
    *&v44 = v33;
    *(&v44 + 1) = v34;
    sub_24E612B0C(&v44, &v42);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v2;
    sub_24E81C1D4(&v42, 0xD000000000000011, 0x800000024FA54320, v35);
    sub_24EB6CE70(v30, v28);
    return v38;
  }

  return v2;
}