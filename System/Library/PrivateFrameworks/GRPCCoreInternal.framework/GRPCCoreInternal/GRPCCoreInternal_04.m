void sub_24DC7E6FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_24DC7E94C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC7E988@<X0>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24DC7E9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24DC7E9B0(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_24DCB5014();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t sub_24DC7EA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24DCB50B4();
  *a1 = result;
  return result;
}

uint64_t sub_24DC7EB40()
{
  v28[0] = *v0;
  result = sub_24DC7EE58(2u);
  if (!v2)
  {
    return 0;
  }

  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_62;
      }

      if (v3)
      {
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24DCB5504();
        v4 = v27;
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_62;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_62;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_62;
                }

                ++v14;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_62;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_62:
        v7 = 0;
        LOBYTE(v4) = 1;
        goto LABEL_63;
      }

      if (v4 >= 1)
      {
        if (--v4)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_62;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_62;
              }

              ++v8;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_61:
          LOBYTE(v4) = 0;
LABEL_63:
          v29 = v4;
          v25 = v4;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_24DC7FCA0(result, v2, 10);
  v25 = v26;
LABEL_64:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_24DC7EE58(unsigned __int8 a1)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v2 == 1)
    {
      v4 = 0x800000024DCC5A60;
    }

    else
    {
      v4 = 0x800000024DCC5A80;
    }
  }

  else
  {
    v4 = 0xEC00000074756F65;
    v3 = 0x6D69742D63707267;
  }

  v7[3] = *v1;
  Metadata.subscript.getter(v7, v3, v4);

  v6 = v7[0];
  sub_24DC8022C();
  sub_24DCB4F04();
  sub_24DC80280();
  sub_24DCB5444();

  return v6;
}

void (*sub_24DC7F154(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v5 = *v1;
  *a1 = sub_24DC7EB40();
  *(a1 + 8) = v3 & 1;
  return sub_24DC7F1B8;
}

void sub_24DC7F1B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 8))
  {
    v2._object = 0x800000024DCC5A80;
    v2._countAndFlagsBits = 0xD00000000000001ALL;
    Metadata.removeAllValues(forKey:)(v2);
  }

  else
  {
    *(a1 + 16) = *a1;
    v3._countAndFlagsBits = sub_24DCB5744();
    v4._object = 0x800000024DCC5A80;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    Metadata.replaceOrAddString(_:forKey:)(v3, v4);
  }
}

uint64_t sub_24DC7F274()
{
  v4 = *v0;
  v1 = sub_24DC7EE58(1u);
  if (v2)
  {
    return sub_24DC802D4(v1, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC7F2F4()
{
  v9 = *v0;
  v1 = sub_24DC7EE58(0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;

  v5 = sub_24DC7504C(v3, v4);
  if (v6 == 6)
  {

    return 0;
  }

  else
  {
    v8 = sub_24DC74E70(v5);

    return v8;
  }
}

void (*sub_24DC7F468(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v16 = *v1;
  v5 = sub_24DC7EE58(0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    v9 = sub_24DC7504C(v7, v8);
    if (v10 != 6)
    {
      v11 = sub_24DC74E70(v9);
      v12 = v14;

      v13 = 0;
      goto LABEL_9;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
LABEL_9:
  *v4 = v11;
  *(v4 + 8) = v12;
  *(v4 + 16) = v13;
  return sub_24DC7F560;
}

void sub_24DC7F560(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  if (*(*a1 + 16))
  {
    v3._countAndFlagsBits = 0x6D69742D63707267;
    v3._object = 0xEC00000074756F65;
    Metadata.removeAllValues(forKey:)(v3);
  }

  else
  {
    v4 = *v1;
    v5 = v1[1];
    v1[3] = sub_24DC7524C();
    *(v1 + 32) = v6;
    sub_24DC8061C();
    v7._countAndFlagsBits = sub_24DCB5744();
    v8._countAndFlagsBits = 0x6D69742D63707267;
    v8._object = 0xEC00000074756F65;
    Metadata.replaceOrAddString(_:forKey:)(v7, v8);
  }

  free(v1);
}

uint64_t sub_24DC7F628(char a1)
{
  if (!a1)
  {
    return 0x6D69742D63707267;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_24DC7F68C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x800000024DCC5A60;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x800000024DCC5A60;
  }

  else
  {
    v6 = 0x800000024DCC5A80;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D69742D63707267;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000074756F65;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x800000024DCC5A80;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6D69742D63707267;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000074756F65;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24DCB57A4();
  }

  return v11 & 1;
}

uint64_t sub_24DC7F770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24DC80670();
  *a2 = result;
  return result;
}

void sub_24DC7F7A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074756F65;
  v4 = 0xD000000000000016;
  v5 = 0x800000024DCC5A60;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x800000024DCC5A80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6D69742D63707267;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24DC7F80C()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC7F8BC()
{
  *v0;
  *v0;
  sub_24DCB4D44();
}

uint64_t sub_24DC7F958()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FA04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  return sub_24DCB5984();
}

uint64_t sub_24DC7FA2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return MEMORY[0x253035FF0](1);
  }

  MEMORY[0x253035FF0](0);

  return sub_24DCB5994();
}

uint64_t sub_24DC7FA9C(uint64_t a1, uint64_t a2, char a3)
{
  sub_24DCB58A4();
  if (a3)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB5994();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FB18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24DCB58A4();
  if (v3)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB5994();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FB90()
{
  if (v0[2])
  {
    return MEMORY[0x253035FF0](1);
  }

  v3 = *v0;
  v2 = v0[1];
  MEMORY[0x253035FF0](0);

  return sub_24DCB5994();
}

uint64_t sub_24DC7FC08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24DCB58A4();
  if (v3)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB5994();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FC7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = *a1;
  v7 = a1[1];
  return sub_24DCB5984();
}

unsigned __int8 *sub_24DC7FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24DCB4EE4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24DC329BC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24DCB5504();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_24DC8022C()
{
  result = qword_27F19F118;
  if (!qword_27F19F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F118);
  }

  return result;
}

unint64_t sub_24DC80280()
{
  result = qword_27F19F120;
  if (!qword_27F19F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F120);
  }

  return result;
}

uint64_t sub_24DC802D4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24DCB5504();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_72;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v6 = sub_24DC7FCA0(result, a2, 10);
  v24 = v25;
LABEL_63:

  result = 0;
  if ((v24 & 1) == 0 && (v6 & 0x8000000000000000) == 0)
  {
    return sub_24DCB5964();
  }

  return result;
}

unint64_t sub_24DC8061C()
{
  result = qword_27F19F128;
  if (!qword_27F19F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F128);
  }

  return result;
}

uint64_t sub_24DC80670()
{
  v0 = sub_24DCB5634();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24DC806C0()
{
  result = qword_27F19F130;
  if (!qword_27F19F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F130);
  }

  return result;
}

unint64_t sub_24DC80718()
{
  result = qword_27F19F138;
  if (!qword_27F19F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F138);
  }

  return result;
}

uint64_t _s13RetryPushbackOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13RetryPushbackOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24DC807CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC807E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_24DC80818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1216) = v46;
  *(v8 + 1208) = v45;
  *(v8 + 1200) = v44;
  *(v8 + 1192) = v43;
  *(v8 + 1184) = v42;
  *(v8 + 1176) = v41;
  *(v8 + 1168) = v40;
  *(v8 + 1160) = v39;
  *(v8 + 1152) = v38;
  *(v8 + 1144) = v37;
  *(v8 + 1136) = v36;
  *(v8 + 1128) = a8;
  *(v8 + 1120) = a7;
  *(v8 + 1112) = a6;
  *(v8 + 1104) = a5;
  *(v8 + 1096) = a1;
  *(v8 + 736) = v43;
  *(v8 + 744) = v38;
  *(v8 + 752) = v39;
  *(v8 + 760) = v41;
  *(v8 + 768) = v42;
  *(v8 + 776) = v46;
  *(v8 + 784) = v44;
  *(v8 + 792) = v45;
  v10 = _s15HedgingExecutorVMa();
  *(v8 + 1224) = v10;
  v11 = *(v10 - 8);
  *(v8 + 1232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 1240) = swift_task_alloc();
  *(v8 + 800) = v43;
  *(v8 + 808) = v38;
  *(v8 + 816) = v39;
  *(v8 + 824) = v41;
  *(v8 + 832) = v42;
  *(v8 + 840) = v46;
  *(v8 + 848) = v44;
  *(v8 + 856) = v45;
  v13 = _s13RetryExecutorVMa();
  *(v8 + 1248) = v13;
  v14 = *(v13 - 8);
  *(v8 + 1256) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 1264) = swift_task_alloc();
  v16 = *(v42 - 8);
  *(v8 + 1272) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 1280) = swift_task_alloc();
  v18 = *(v41 - 8);
  *(v8 + 1288) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 1296) = swift_task_alloc();
  v20 = *(v43 - 8);
  *(v8 + 1304) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 1312) = swift_task_alloc();
  *(v8 + 864) = v43;
  *(v8 + 872) = v38;
  *(v8 + 880) = v39;
  *(v8 + 888) = v41;
  *(v8 + 896) = v42;
  *(v8 + 904) = v46;
  *(v8 + 912) = v44;
  *(v8 + 920) = v45;
  v22 = _s15OneShotExecutorVMa();
  *(v8 + 1320) = v22;
  v23 = *(v22 - 8);
  *(v8 + 1328) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 1336) = swift_task_alloc();
  v25 = sub_24DCB55B4();
  *(v8 + 1344) = v25;
  v26 = *(v25 - 8);
  *(v8 + 1352) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 1360) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0) - 8) + 64) + 15;
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = *a2;
  *(v8 + 1400) = *(a2 + 16);
  *(v8 + 1408) = *a3;
  *(v8 + 1416) = *(a3 + 8);
  *(v8 + 1432) = *(a3 + 24);
  v29 = *(a4 + 80);
  *(v8 + 80) = *(a4 + 64);
  *(v8 + 96) = v29;
  *(v8 + 112) = *(a4 + 96);
  *(v8 + 128) = *(a4 + 112);
  v30 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v30;
  v31 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v31;

  return MEMORY[0x2822009F8](sub_24DC80C74, 0, 0);
}

uint64_t sub_24DC80C74()
{
  v105 = v0;
  if (*(v0 + 32))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 1376);
    v3 = *(v0 + 1360);
    v4 = *(v0 + 1352);
    v5 = *(v0 + 1344);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_24DCB5574();
    sub_24DCB5594();
    (*(v4 + 8))(v3, v5);
    v1 = 0;
  }

  (*(*(v0 + 1352) + 56))(*(v0 + 1376), v1, 1, *(v0 + 1344));
  v8 = *(v0 + 128);
  if (v8 == 255)
  {
    v97 = *(v0 + 1424);
    v99 = *(v0 + 1432);
    v95 = *(v0 + 1408);
    v93 = *(v0 + 1400);
    v32 = *(v0 + 1368);
    v70 = *(v0 + 1376);
    v91 = *(v0 + 1336);
    v73 = *(v0 + 1296);
    v75 = *(v0 + 1312);
    v33 = *(v0 + 1288);
    v34 = *(v0 + 1272);
    v85 = *(v0 + 1216);
    v81 = *(v0 + 1208);
    v77 = *(v0 + 1280);
    v79 = *(v0 + 1200);
    v35 = *(v0 + 1192);
    v36 = *(v0 + 1184);
    v37 = *(v0 + 1176);
    v89 = *(v0 + 1160);
    v87 = *(v0 + 1152);
    v38 = *(v0 + 1128);
    v39 = *(v0 + 1120);
    v40 = *(v0 + 1112);
    v41 = *(v0 + 1104);
    v83 = *(v0 + 1384);
    (*(*(v0 + 1304) + 16))();
    sub_24DC81D3C(v70, v32);
    (*(v33 + 16))(v73, v41, v37);
    (*(v34 + 16))(v77, v40, v36);

    sub_24DC882B8(v75, v32, v38, v73, v77, v35, v91, v37, v36);
    *(v0 + 1024) = v83;
    *(v0 + 1040) = v93;
    *(v0 + 928) = v95;
    *(v0 + 944) = v97;
    *(v0 + 952) = v99;
    v42 = *(v0 + 96);
    *(v0 + 200) = *(v0 + 80);
    *(v0 + 216) = v42;
    *(v0 + 232) = *(v0 + 112);
    *(v0 + 248) = *(v0 + 128);
    v43 = *(v0 + 32);
    *(v0 + 136) = *(v0 + 16);
    *(v0 + 152) = v43;
    v44 = *(v0 + 64);
    *(v0 + 168) = *(v0 + 48);
    *(v0 + 184) = v44;
    v45 = swift_task_alloc();
    *(v0 + 1472) = v45;
    *v45 = v0;
    v45[1] = sub_24DC815E0;
    v46 = *(v0 + 1336);
    v47 = *(v0 + 1320);
    v48 = *(v0 + 1168);
    v49 = *(v0 + 1144);
    v50 = *(v0 + 1136);
    v51 = *(v0 + 1096);

    return sub_24DC88428(v51, v0 + 1024, v0 + 928, v0 + 136, v50, v49, v47, v48);
  }

  else
  {
    v9 = *(v0 + 72);
    v66 = *(v0 + 80);
    v67 = *(v0 + 88);
    v68 = *(v0 + 96);
    v10 = *(v0 + 112);
    v64 = *(v0 + 120);
    (*(*(v0 + 1304) + 16))(*(v0 + 1312), *(v0 + 1120), *(v0 + 1192));
    v96 = *(v0 + 1424);
    v98 = *(v0 + 1432);
    v92 = *(v0 + 1408);
    v94 = *(v0 + 1416);
    v88 = *(v0 + 1392);
    v90 = *(v0 + 1400);
    v11 = *(v0 + 1376);
    v12 = *(v0 + 1368);
    v13 = *(v0 + 1296);
    v14 = *(v0 + 1288);
    v84 = *(v0 + 1280);
    v86 = *(v0 + 1384);
    v15 = *(v0 + 1272);
    v69 = *(v0 + 1208);
    v71 = *(v0 + 1200);
    v80 = *(v0 + 1192);
    v82 = *(v0 + 1312);
    v16 = *(v0 + 1184);
    v17 = *(v0 + 1176);
    v72 = *(v0 + 1160);
    v74 = *(v0 + 1152);
    v76 = *(v0 + 1216);
    v78 = *(v0 + 1128);
    v18 = *(v0 + 1112);
    v19 = *(v0 + 1104);
    if (v8)
    {
      v65 = *(v0 + 1240);
      *&v100 = v9;
      *(&v100 + 1) = v66;
      v101 = v67;
      *&v102 = v68;
      v20 = v12;
      sub_24DC81D3C(v11, v12);
      (*(v14 + 16))(v13, v19, v17);
      (*(v15 + 16))(v84, v18, v16);

      sub_24DC568C0(v0 + 16, v0 + 256);
      sub_24DC499FC(v82, &v100, v20, v78, v13, v84, 64, v80, v65, v74, v72, v17, v16);
      *(v0 + 1048) = v86;
      *(v0 + 1056) = v88;
      *(v0 + 1064) = v90;
      *(v0 + 960) = v92;
      *(v0 + 968) = v94;
      *(v0 + 976) = v96;
      *(v0 + 984) = v98;
      v21 = *(v0 + 96);
      *(v0 + 440) = *(v0 + 80);
      *(v0 + 456) = v21;
      *(v0 + 472) = *(v0 + 112);
      *(v0 + 488) = *(v0 + 128);
      v22 = *(v0 + 32);
      *(v0 + 376) = *(v0 + 16);
      *(v0 + 392) = v22;
      v23 = *(v0 + 64);
      *(v0 + 408) = *(v0 + 48);
      *(v0 + 424) = v23;
      v24 = swift_task_alloc();
      *(v0 + 1456) = v24;
      *v24 = v0;
      v24[1] = sub_24DC814CC;
      v25 = *(v0 + 1240);
      v26 = *(v0 + 1224);
      v27 = *(v0 + 1168);
      v28 = *(v0 + 1144);
      v29 = *(v0 + 1136);
      v30 = *(v0 + 1096);

      return sub_24DC49C04(v30, v0 + 1048, (v0 + 960), v0 + 376, v29, v28, v26, v27);
    }

    else
    {
      v63 = *(v0 + 1264);
      *&v100 = v9;
      *(&v100 + 1) = v66;
      v101 = v67;
      v102 = v68;
      v103 = v10;
      v104 = v64;
      v52 = v12;
      sub_24DC81D3C(v11, v12);
      (*(v14 + 16))(v13, v19, v17);
      (*(v15 + 16))(v84, v18, v16);

      sub_24DC568C0(v0 + 16, v0 + 496);
      sub_24DCAE904(v82, &v100, v52, v78, v13, v84, 64, v80, v63, v74, v72, v17, v16);
      *(v0 + 1072) = v86;
      *(v0 + 1080) = v88;
      *(v0 + 1088) = v90;
      *(v0 + 992) = v92;
      *(v0 + 1000) = v94;
      *(v0 + 1008) = v96;
      *(v0 + 1016) = v98;
      v53 = *(v0 + 96);
      *(v0 + 680) = *(v0 + 80);
      *(v0 + 696) = v53;
      *(v0 + 712) = *(v0 + 112);
      *(v0 + 728) = *(v0 + 128);
      v54 = *(v0 + 32);
      *(v0 + 616) = *(v0 + 16);
      *(v0 + 632) = v54;
      v55 = *(v0 + 64);
      *(v0 + 648) = *(v0 + 48);
      *(v0 + 664) = v55;
      v56 = swift_task_alloc();
      *(v0 + 1440) = v56;
      *v56 = v0;
      v56[1] = sub_24DC813B8;
      v57 = *(v0 + 1264);
      v58 = *(v0 + 1248);
      v59 = *(v0 + 1168);
      v60 = *(v0 + 1144);
      v61 = *(v0 + 1136);
      v62 = *(v0 + 1096);

      return sub_24DCAEAAC(v62, v0 + 1072, (v0 + 992), v0 + 616, v61, v60, v58, v59);
    }
  }
}

uint64_t sub_24DC813B8()
{
  v2 = *(*v1 + 1440);
  v5 = *v1;
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v3 = sub_24DC81B24;
  }

  else
  {
    v3 = sub_24DC81800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC814CC()
{
  v2 = *(*v1 + 1456);
  v5 = *v1;
  *(*v1 + 1464) = v0;

  if (v0)
  {
    v3 = sub_24DC81C30;
  }

  else
  {
    v3 = sub_24DC8190C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC815E0()
{
  v2 = *(*v1 + 1472);
  v5 = *v1;
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v3 = sub_24DC81A18;
  }

  else
  {
    v3 = sub_24DC816F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC816F4()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[164];
  v5 = v0[162];
  v6 = v0[160];
  v7 = v0[158];
  v8 = v0[155];
  (*(v0[166] + 8))(v0[167], v0[165]);
  sub_24DC81DAC(v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24DC81800()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[167];
  v5 = v0[164];
  v6 = v0[162];
  v7 = v0[160];
  v8 = v0[155];
  (*(v0[157] + 8))(v0[158], v0[156]);
  sub_24DC81DAC(v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24DC8190C()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[167];
  v5 = v0[164];
  v6 = v0[162];
  v7 = v0[160];
  v8 = v0[158];
  (*(v0[154] + 8))(v0[155], v0[153]);
  sub_24DC81DAC(v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24DC81A18()
{
  v1 = v0[172];
  (*(v0[166] + 8))(v0[167], v0[165]);
  sub_24DC81DAC(v1);
  v2 = v0[185];
  v3 = v0[172];
  v4 = v0[171];
  v5 = v0[170];
  v6 = v0[167];
  v7 = v0[164];
  v8 = v0[162];
  v9 = v0[160];
  v10 = v0[158];
  v11 = v0[155];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24DC81B24()
{
  v1 = v0[172];
  (*(v0[157] + 8))(v0[158], v0[156]);
  sub_24DC81DAC(v1);
  v2 = v0[181];
  v3 = v0[172];
  v4 = v0[171];
  v5 = v0[170];
  v6 = v0[167];
  v7 = v0[164];
  v8 = v0[162];
  v9 = v0[160];
  v10 = v0[158];
  v11 = v0[155];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24DC81C30()
{
  v1 = v0[172];
  (*(v0[154] + 8))(v0[155], v0[153]);
  sub_24DC81DAC(v1);
  v2 = v0[183];
  v3 = v0[172];
  v4 = v0[171];
  v5 = v0[170];
  v6 = v0[167];
  v7 = v0[164];
  v8 = v0[162];
  v9 = v0[160];
  v10 = v0[158];
  v11 = v0[155];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24DC81D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC81DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DC81E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v14;
  *(v8 + 296) = v13;
  *(v8 + 280) = v12;
  *(v8 + 264) = v11;
  *(v8 + 248) = v10;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 200) = a2;
  *(v8 + 208) = a3;
  *(v8 + 192) = a1;
  *(v8 + 320) = *a4;
  *(v8 + 336) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_24DC81E80, 0, 0);
}

uint64_t sub_24DC81E80()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  if (*(*(v0 + 240) + 16))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    *(v0 + 144) = v3;
    *(v0 + 152) = v2;
    *(v0 + 160) = v1;
    v29 = *(v0 + 272);
    v30 = *(v0 + 256);
    v27 = *(v0 + 304);
    v28 = *(v0 + 288);
    v31 = *(v0 + 224);
    v8 = *v5;
    v7 = v5[1];
    v9 = v5[3];
    *(v0 + 48) = v5[2];
    *(v0 + 64) = v9;
    *(v0 + 16) = v8;
    *(v0 + 32) = v7;
    v10 = swift_task_alloc();
    *(v0 + 352) = v10;
    *(v10 + 16) = v30;
    *(v10 + 32) = v29;
    *(v10 + 48) = v28;
    *(v10 + 64) = v27;
    *(v10 + 80) = v6;
    *(v10 + 88) = v31;
    *(v10 + 104) = v4;
    v11 = swift_task_alloc();
    *(v0 + 360) = v11;
    *v11 = v0;
    v11[1] = sub_24DC82194;
    v12 = *(v0 + 240);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v36 = *(v0 + 256);
    v38 = *(v0 + 264);

    return sub_24DC825D4(v13, v14, v0 + 144, v0 + 16, v12, 0, &unk_24DCBBBC0, v10);
  }

  else
  {
    v16 = *(v0 + 208);
    *(v0 + 168) = v3;
    *(v0 + 176) = v2;
    *(v0 + 184) = v1;
    v17 = v16[3];
    v19 = *v16;
    v18 = v16[1];
    *(v0 + 112) = v16[2];
    *(v0 + 128) = v17;
    *(v0 + 80) = v19;
    *(v0 + 96) = v18;
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_24DC820A0;
    v21 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    v24 = *(v0 + 216);
    v25 = *(v0 + 192);
    v26 = *(v0 + 200);
    v37 = *(v0 + 304);
    v39 = *(v0 + 312);
    v34 = *(v0 + 272);
    v35 = *(v0 + 288);
    v33 = *(v0 + 256);

    return sub_24DC9335C(v25, v26, v0 + 168, v0 + 80, v24, v22, v23, v21);
  }
}

uint64_t sub_24DC820A0()
{
  v1 = *(*v0 + 344);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC82194()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24DC822A4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 16);
  v10 = a4[1];
  *(v8 + 16) = *a4;
  *(v8 + 32) = v10;
  v11 = a4[3];
  *(v8 + 48) = a4[2];
  *(v8 + 64) = v11;
  *(v8 + 80) = *a3;
  *(v8 + 96) = v9;
  v12 = swift_task_alloc();
  *(v8 + 104) = v12;
  *v12 = v8;
  v12[1] = sub_24DC823C4;

  return sub_24DC9335C(a1, a2, v8 + 80, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_24DC823C4()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC824B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v18 = *(v4 + 32);
  v19 = *(v4 + 16);
  v17 = *(v4 + 48);
  v10 = *(v4 + 64);
  v9 = *(v4 + 72);
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v14 = *(v4 + 96);
  v13 = *(v4 + 104);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_24DC2FD00;

  return sub_24DC822A4(a1, a2, a3, a4, v11, v12, v14, v13);
}

uint64_t sub_24DC825D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 424) = v10;
  *(v8 + 432) = v11;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 376) = a2;
  *(v8 + 384) = a4;
  *(v8 + 368) = a1;
  *(v8 + 440) = *a3;
  *(v8 + 456) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_24DC82620, 0, 0);
}

void sub_24DC82620()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v2 + 16);
  if (v3 == v1)
  {
    v4 = *(v0 + 408);
    v5 = *(v0 + 384);
    *(v0 + 328) = *(v0 + 440);
    *(v0 + 336) = *(v0 + 448);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[3];
    *(v0 + 112) = v5[2];
    *(v0 + 128) = v8;
    *(v0 + 80) = v6;
    *(v0 + 96) = v7;
    v31 = (v4 + *v4);
    v9 = v4[1];
    v10 = swift_task_alloc();
    *(v0 + 488) = v10;
    *v10 = v0;
    v10[1] = sub_24DC82AA0;
    v11 = *(v0 + 416);
    v12 = *(v0 + 368);
    v13 = *(v0 + 376);

    v31(v12, v13, v0 + 328, v0 + 80);
  }

  else
  {
    if (v3 > v1)
    {
      v14 = *(v0 + 456);
      v16 = *(v0 + 376);
      v15 = *(v0 + 384);
      v17 = v1 + 1;
      v29 = *(v0 + 440);
      v30 = *(v0 + 424);
      v32 = *(v0 + 408);
      sub_24DC5B208(v2 + 40 * v1 + 32, v0 + 144);
      v18 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      *(v0 + 304) = v29;
      *(v0 + 320) = v14;
      v19 = v15[3];
      v21 = *v15;
      v20 = v15[1];
      *(v0 + 48) = v15[2];
      *(v0 + 64) = v19;
      *(v0 + 16) = v21;
      *(v0 + 32) = v20;
      v22 = swift_task_alloc();
      *(v0 + 464) = v22;
      *(v22 + 16) = v30;
      *(v22 + 32) = v16;
      *(v22 + 40) = v2;
      *(v22 + 48) = v17;
      *(v22 + 56) = v32;
      v23 = *(v18 + 8);
      v33 = v23 + *v23;
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 472) = v25;
      *v25 = v0;
      v25[1] = sub_24DC82924;
      v26 = *(v0 + 424);
      v27 = *(v0 + 432);
      v28 = *(v0 + 368);

      __asm { BRAA            X8, X16 }
    }

    __break(1u);
  }
}

uint64_t sub_24DC82924()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_24DC82B94;
  }

  else
  {
    v5 = *(v2 + 464);

    v4 = sub_24DC82A40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24DC82A40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC82AA0()
{
  v1 = *(*v0 + 488);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC82B94()
{
  v33 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);

  *(v0 + 352) = v1;
  MEMORY[0x2530363C0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 480);
  if (v3)
  {
    v5 = *(v0 + 432);
    v6 = *(v0 + 368);
    MEMORY[0x2530363B0](*(v0 + 480));
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v30.n128_u8[0] = *(v0 + 184);
    v30.n128_u64[1] = v7;
    *&v31 = v8;
    *(&v31 + 1) = v9;
    v32 = v10;

    MEMORY[0x2530363C0](v10);
    nullsub_1(v5);
    StreamingClientResponse.init(of:error:)(&v30, v6);

    MEMORY[0x2530363B0](v10);
    v11 = *(v0 + 352);
  }

  else
  {
    MEMORY[0x2530363B0](*(v0 + 352));
    *(v0 + 360) = v4;
    MEMORY[0x2530363C0](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F108, qword_24DCBB788);
    v12 = swift_dynamicCast();
    v13 = *(v0 + 480);
    v14 = *(v0 + 432);
    v15 = *(v0 + 368);
    if (v12)
    {
      MEMORY[0x2530363B0](*(v0 + 480));
      sub_24DC5B2AC((v0 + 224), v0 + 264);
      v16 = *(v0 + 288);
      v17 = *(v0 + 296);
      v18 = __swift_project_boxed_opaque_existential_1((v0 + 264), v16);
      v19 = *(v16 - 8);
      v20 = *(v19 + 64) + 15;
      v21 = swift_task_alloc();
      (*(v19 + 16))(v21, v18, v16);
      RPCError.init<A>(_:)(v21, v16, v17, v27);

      v30.n128_u8[0] = v27[0];
      v30.n128_u64[1] = v27[1];
      v31 = v28;
      v32 = v29;
      nullsub_1(v14);
      StreamingClientResponse.init(of:error:)(&v30, v15);
      __swift_destroy_boxed_opaque_existential_1((v0 + 264));
      v11 = *(v0 + 360);
    }

    else
    {
      MEMORY[0x2530363B0](*(v0 + 360));
      v26 = *sub_24DC412F4();
      MEMORY[0x2530363C0](v13);
      sub_24DC31044();
      RPCError.init(code:message:metadata:cause:)(&v26, 0, 0xE000000000000000, v27, v13, &v30);
      v22 = v32;

      MEMORY[0x2530363C0](v22);
      nullsub_1(v14);
      v23 = StreamingClientResponse.init(of:error:)(&v30, v15);
      MEMORY[0x2530363B0](v13, v23);

      v11 = v22;
    }
  }

  MEMORY[0x2530363B0](v11);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24DC82EC8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 16);
  v16 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v16;
  v17 = a3[3];
  *(v8 + 48) = a3[2];
  *(v8 + 64) = v17;
  *(v8 + 80) = *a2;
  *(v8 + 96) = v15;
  v18 = swift_task_alloc();
  *(v8 + 104) = v18;
  *v18 = v8;
  v18[1] = sub_24DC82FDC;

  return sub_24DC825D4(a1, a4, v8 + 80, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_24DC82FDC()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC830D4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = v3[8];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_24DC2FD00;

  return sub_24DC82EC8(a1, a2, a3, v9, v10, v11, v12, v13);
}

Swift::String __swiftcall Metadata.Value.encoded()()
{
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F070, &qword_24DCBBC70);
    sub_24DC87594(&qword_27F19F140, &qword_27F19F070, &qword_24DCBBC70);
    v3 = sub_24DC31E38();
  }

  else
  {
    v5 = v0;
    v6 = v1;

    v4 = v6;
    v3 = v5;
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_24DC832A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v9 = a1;
    v10 = *(a1 + 32);
    v11 = a2;
    v12 = sub_24DCB57A4();
    a2 = v11;
    v13 = v12;
    a1 = v9;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = a1 + 32;
  v14 = a2 + 32;
  v15 = 1;
  while (1)
  {
    if ((v5 & 1) == 0)
    {
      if ((v8 & 1) != 0 || (v3 != v6 || v4 != v7) && (sub_24DCB57A4() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v16 = *(v3 + 16);
    if (v16 != *(v6 + 16))
    {
      return 0;
    }

    if (v16 && v3 != v6)
    {
      break;
    }

LABEL_21:
    if (v15 == v2)
    {
      return 1;
    }

    v19 = v15 + 1;
    v20 = v25 + 40 * v15;
    v3 = *(v20 + 16);
    v4 = *(v20 + 24);
    v5 = *(v20 + 32);
    v21 = v14 + 40 * v15;
    v6 = *(v21 + 16);
    v7 = *(v21 + 24);
    v8 = *(v21 + 32);
    v22 = *v20 == *v21 && *(v20 + 8) == *(v21 + 8);
    ++v15;
    if (!v22)
    {
      v23 = sub_24DCB57A4();
      result = 0;
      v15 = v19;
      if ((v23 & 1) == 0)
      {
        return result;
      }
    }
  }

  v17 = (v3 + 32);
  v18 = (v6 + 32);
  while (*v17 == *v18)
  {
    ++v17;
    ++v18;
    if (!--v16)
    {
      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t sub_24DC83458(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Metadata.Value.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x253035FF0](1);
    v5 = *(a2 + 16);
    result = MEMORY[0x253035FF0](v5);
    if (v5)
    {
      v7 = (a2 + 32);
      do
      {
        v8 = *v7++;
        result = sub_24DCB58C4();
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);

    return sub_24DCB4D44();
  }

  return result;
}

uint64_t Metadata.Value.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_24DCB58A4();
  if (a3)
  {
    MEMORY[0x253035FF0](1);
    v5 = *(a1 + 16);
    MEMORY[0x253035FF0](v5);
    if (v5)
    {
      v6 = (a1 + 32);
      do
      {
        v7 = *v6++;
        sub_24DCB58C4();
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB4D44();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC83608()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24DCB58A4();
  Metadata.Value.hash(into:)(v5, v1, v2, v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DC8367C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24DC836AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_24DC86AA0();
  return v1;
}

uint64_t sub_24DC836F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_24DC83708(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_24DCB57A4(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    if (*(a1 + 32))
    {
      if (*(a2 + 32))
      {
        v9 = *(v7 + 16);
        if (v9 == *(v8 + 16))
        {
          if (v9 && v7 != v8)
          {
            v10 = (v7 + 32);
            v11 = (v8 + 32);
            result = 1;
            while (*v10 == *v11)
            {
              ++v10;
              ++v11;
              if (!--v9)
              {
                return result;
              }
            }

            return 0;
          }

          return 1;
        }
      }
    }

    else if ((*(a2 + 32) & 1) == 0)
    {
      v12 = v7 == v8 && *(a1 + 24) == *(a2 + 24);
      if (v12 || (sub_24DCB57A4() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24DC837F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DCB4D44();
  v3 = v0[2];
  if (v0[4])
  {
    MEMORY[0x253035FF0](1);
    v4 = *(v3 + 16);
    result = MEMORY[0x253035FF0](v4);
    if (v4)
    {
      v6 = (v3 + 32);
      do
      {
        v7 = *v6++;
        result = sub_24DCB58C4();
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v8 = v0[3];
    MEMORY[0x253035FF0](0);

    return sub_24DCB4D44();
  }

  return result;
}

uint64_t sub_24DC83898()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24DCB58A4();
  sub_24DCB4D44();
  if (v5)
  {
    MEMORY[0x253035FF0](1);
    v6 = *(v3 + 16);
    MEMORY[0x253035FF0](v6);
    if (v6)
    {
      v7 = (v3 + 32);
      do
      {
        v8 = *v7++;
        sub_24DCB58C4();
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB4D44();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC83960()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24DCB58A4();
  sub_24DCB4D44();
  if (v5)
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](*(v3 + 16));
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = (v3 + 32);
      do
      {
        v8 = *v7++;
        sub_24DCB58C4();
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB4D44();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC83A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = sub_24DCB57A4(), result = 0, (v9 & 1) != 0))
  {
    if (v4)
    {
      if (v7 & 1) != 0 && (sub_24DC83458(v2, v5))
      {
        return 1;
      }
    }

    else if ((v7 & 1) == 0)
    {
      v11 = v2 == v5 && v3 == v6;
      if (v11 || (sub_24DCB57A4() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t Metadata.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = sub_24DC59F28(sub_24DC87B64, 0, a2, &type metadata for Metadata.KeyValuePair, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a4);
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

Swift::Void __swiftcall Metadata.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = sub_24DC8588C(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  *v1 = v3;
}

Swift::Void __swiftcall Metadata.addString(_:forKey:)(Swift::String _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  v7 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24DC8588C(0, *(v7 + 2) + 1, 1, v7);
    *v2 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24DC8588C((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[40 * v10];
  *(v11 + 4) = countAndFlagsBits;
  *(v11 + 5) = object;
  *(v11 + 6) = v6;
  *(v11 + 7) = v5;
  v11[64] = 0;
  *v2 = v7;
}

uint64_t sub_24DC83CF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;

  sub_24DC86AA0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if ((result & 1) == 0)
  {
    result = sub_24DC8588C(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *v5 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_24DC8588C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 40 * v14;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a1;
  *(v15 + 56) = a2;
  *(v15 + 64) = a3 & 1;
  *v5 = v11;
  return result;
}

Swift::Void __swiftcall Metadata.addBinary(_:forKey:)(Swift::OpaquePointer _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v6 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24DC8588C(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24DC8588C((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[40 * v9];
  *(v10 + 4) = countAndFlagsBits;
  *(v10 + 5) = object;
  *(v10 + 6) = _;
  *(v10 + 7) = 0;
  v10[64] = 1;
  *v2 = v6;
}

uint64_t Metadata.add<A>(contentsOf:)(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_24DC59F28(sub_24DC87B64, 0, a2, &type metadata for Metadata.KeyValuePair, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a8);

  return sub_24DC83FB0(v8);
}

uint64_t sub_24DC83F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;

  return sub_24DC86AA0();
}

uint64_t sub_24DC83FB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24DC8588C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Metadata.add(contentsOf:)(GRPCCoreInternal::Metadata contentsOf)
{
  v1 = *contentsOf.elements._rawValue;

  sub_24DC83FB0(v2);
}

Swift::Void __swiftcall Metadata.removeAllValues(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;

  v4 = sub_24DC86B94(v1, countAndFlagsBits, object);

  v5 = *(*v1 + 16);
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {

    sub_24DC86F14(v4, v5);
  }
}

Swift::Void __swiftcall Metadata.replaceOrAddString(_:forKey:)(Swift::String _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;

  v7 = sub_24DC86B94(v2, countAndFlagsBits, object);

  v8 = *(*v2 + 16);
  if (v8 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_24DC86F14(v7, v8);
    v7 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v7 = sub_24DC8588C(0, *(v7 + 16) + 1, 1, v7);
  *v2 = v7;
LABEL_3:
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    v7 = sub_24DC8588C((v10 > 1), v11 + 1, 1, v7);
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 40 * v11;
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  *(v12 + 48) = v6;
  *(v12 + 56) = v5;
  *(v12 + 64) = 0;
  *v2 = v7;
}

uint64_t sub_24DC8427C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_24DC86B94(v5, a4, a5);

  v12 = *(*v5 + 16);
  if (v12 < v11)
  {
    __break(1u);
  }

  else
  {
    sub_24DC86F14(v11, v12);
    v11 = *v5;

    sub_24DC86AA0();
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v11;
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = sub_24DC8588C(0, *(v11 + 16) + 1, 1, v11);
  v11 = result;
  *v5 = result;
LABEL_3:
  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v15 >= v14 >> 1)
  {
    result = sub_24DC8588C((v14 > 1), v15 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v15 + 1;
  v16 = v11 + 40 * v15;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3 & 1;
  *v5 = v11;
  return result;
}

Swift::Void __swiftcall Metadata.replaceOrAddBinary(_:forKey:)(Swift::OpaquePointer _, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;

  v6 = sub_24DC86B94(v2, countAndFlagsBits, object);

  v7 = *(*v2 + 16);
  if (v7 < v6)
  {
    __break(1u);
  }

  else
  {
    sub_24DC86F14(v6, v7);
    v6 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v6 = sub_24DC8588C(0, *(v6 + 16) + 1, 1, v6);
  *v2 = v6;
LABEL_3:
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_24DC8588C((v9 > 1), v10 + 1, 1, v6);
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 40 * v10;
  *(v11 + 32) = countAndFlagsBits;
  *(v11 + 40) = object;
  *(v11 + 48) = _;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
  *v2 = v6;
}

Swift::Void __swiftcall Metadata.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = *v1;
  if (keepingCapacity)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = *(v5 + 16);

      sub_24DC86F14(0, v6);
    }

    else
    {
      if (*(v5 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F148, &qword_24DCBBC78);
        v7 = swift_allocObject();
        v8 = _swift_stdlib_malloc_size(v7);
        v7[2] = 0;
        v7[3] = 2 * ((v8 - 32) / 40);
        v9 = *v1;
      }

      else
      {
        v7 = MEMORY[0x277D84F90];
      }

      *v1 = v7;
    }
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }
}

uint64_t Metadata.removeAll(where:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_24DC85A38(v1, a1);
  if (!v2)
  {
    v4 = *(*v1 + 16);
    if (v4 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_24DC86F14(result, v4);
    }
  }

  return result;
}

uint64_t Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DC868F8(v3, v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC84670()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DC868F8(v3, v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC846C0()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DC868F8(v3, v1);
  return sub_24DCB58F4();
}

GRPCCoreInternal::Metadata::Index __swiftcall Metadata.index(before:)(GRPCCoreInternal::Metadata::Index before)
{
  if (__OFSUB__(*before._base, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *before._base - 1;
  }

  return before;
}

GRPCCoreInternal::Metadata::Index __swiftcall Metadata.index(after:)(GRPCCoreInternal::Metadata::Index after)
{
  if (__OFADD__(*after._base, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *after._base + 1;
  }

  return after;
}

unint64_t *Metadata.subscript.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(*v2 + 16))
  {
    v5 = *v2 + 40 * v4;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v8 = *(v5 + 48);
    v9 = *(v5 + 56);
    v10 = *(v5 + 64);

    result = sub_24DC86AA0();
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC84860@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
LABEL_7:
      *a3 = result;
      return result;
    }

    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
LABEL_6:
      result += a2;
      goto LABEL_7;
    }

    __break(1u);
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC84898@<X0>(uint64_t result@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (result < a3)
  {
    if ((result - a3) >= 0x8000000000000001)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (a3 < result)
  {
    v4 = ~a3 + result;
    if (v4 >= (result ^ 0x8000000000000000))
    {
      v5 = result ^ 0x8000000000000000;
    }

    else
    {
      v5 = ~a3 + result;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if ((result ^ 0x8000000000000000) > v4)
    {
LABEL_10:
      v6 = a3 - result;
      if (a2 <= 0)
      {
        if (v6 >= 1)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      if (v6 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_28;
  }

  v6 = 0;
  if (a2 > 0)
  {
LABEL_16:
    if (v6 < a2)
    {
LABEL_20:
      result = 0;
      v7 = 1;
LABEL_25:
      *a4 = result;
      *(a4 + 8) = v7;
      return result;
    }

LABEL_17:
    v6 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

LABEL_19:
  if (v6 > a2)
  {
    goto LABEL_20;
  }

LABEL_21:
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    goto LABEL_25;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
LABEL_24:
    v7 = 0;
    result += a2;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24DC8496C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_24DC84984(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void (*sub_24DC849D4(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x21uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = *v2 + 40 * v7;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    v11 = *(v8 + 56);
    v12 = *(v8 + 64);
    *v6 = *(v8 + 32);
    *(v6 + 1) = v9;
    *(v6 + 2) = v10;
    *(v6 + 3) = v11;
    *(v6 + 32) = v12;

    sub_24DC86AA0();
    return sub_24DC84AA0;
  }

  __break(1u);
  return result;
}

void sub_24DC84AA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  sub_24DC86FD4();

  free(v1);
}

uint64_t *sub_24DC84AFC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

uint64_t sub_24DC84B28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = *(v2 + 16);
}

uint64_t *sub_24DC84B60(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_24DC84B7C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_24DC84B98(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_24DC84BB4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_24DC84BCC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_24DC84BF0()
{
  v1 = sub_24DC85D0C(*v0);

  return v1;
}

uint64_t sub_24DC84C30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = *a3;
  a4[1] = 0;
  a4[2] = result;
  a4[3] = a2;
  return result;
}

void Metadata.Values.Iterator.next()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  if (v1 != v3)
  {
    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_8;
      }

      v4 = v2 + 32 + 40 * v1;
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v9 = *v4;
      v8 = *(v4 + 8);
      v0[1] = v1 + 1;
      v10 = v0[2];
      v11 = v0[3];

      sub_24DC86AA0();
      LOBYTE(v9) = sub_24DC9D454(v10, v11, v9, v8);

      if ((v9 & 1) == 0)
      {
        sub_24DC86FD4();
        v1 = v0[1];
        if (v1 != v3)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }
}

void sub_24DC84D48(uint64_t a1@<X8>)
{
  Metadata.Values.Iterator.next()();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
}

uint64_t Metadata.Values.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1[2];
  a1[1] = 0;
  a1[2] = v3;
  a1[3] = v2;
}

void sub_24DC84DB8(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v1[2];
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
}

Swift::String_optional __swiftcall Metadata.StringValues.Iterator.next()()
{
  Metadata.Values.Iterator.next()();
  if (v2 == -1)
  {
LABEL_4:
    v0 = 0;
    v1 = 0;
  }

  else
  {
    while ((v2 & 1) != 0)
    {
      sub_24DC86FE0(v0, v1, v2);
      Metadata.Values.Iterator.next()();
      if (v2 == -1)
      {
        goto LABEL_4;
      }
    }
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void sub_24DC84E38(uint64_t *a1@<X8>)
{
  Metadata.Values.Iterator.next()();
  if (v4 == -1)
  {
LABEL_4:
    v2 = 0;
    v3 = 0;
  }

  else
  {
    while ((v4 & 1) != 0)
    {
      sub_24DC86FE0(v2, v3, v4);
      Metadata.Values.Iterator.next()();
      if (v4 == -1)
      {
        goto LABEL_4;
      }
    }
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t *sub_24DC84ECC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = result[2];
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Metadata.BinaryValues.Iterator.next()()
{
  Metadata.Values.Iterator.next()();
  if (v2 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    v5 = v2;
    if ((v2 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F150, &qword_24DCBBC80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24DCBBC60;
      *(v6 + 32) = *sub_24DC31B40();
      sub_24DC32A98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F158, &qword_24DCBBC88);
      sub_24DC87594(&qword_27F19F160, &qword_27F19F158, &qword_24DCBBC88);
      sub_24DCB5484();
      v7 = sub_24DC32250(v3, v4, v9);
      sub_24DC86FE0(v3, v4, v5);
      v3 = v7;
    }
  }

  v8 = v3;
  result.is_nil = v1;
  result.value._rawValue = v8;
  return result;
}

unint64_t sub_24DC85080@<X0>(unint64_t *a1@<X8>)
{
  result = Metadata.BinaryValues.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_24DC850A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t sub_24DC850BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1[2];
  a1[1] = 0;
  a1[2] = v3;
  a1[3] = v2;
}

uint64_t sub_24DC85118(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
}

uint64_t sub_24DC85170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void))
{
  v4 = a3(*v3, v3[1], v3[2]);

  return v4;
}

uint64_t sub_24DC851D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v4;
}

uint64_t sub_24DC85224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_24DC85750(0, v3, 0);
    result = a1;
    v6 = 0;
    v7 = v20;
    v8 = (a1 + 64);
    v18 = v3;
    v19 = result;
    while (v6 < *(result + 16))
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;

      sub_24DC86AA0();
      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24DC85750((v14 > 1), v15 + 1, 1);
      }

      ++v6;
      *(v20 + 16) = v15 + 1;
      v16 = v20 + 40 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      v8 += 40;
      result = v19;
      if (v18 == v6)
      {

        v2 = a2;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_9:
    *v2 = v7;
  }

  return result;
}

void *sub_24DC85370@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_24DC8538C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t Metadata.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 6109787;
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_24DC3B6D8(0, v2, 0);
  v4 = 0;
  v5 = (v1 + 64);
  v17 = v2;
  while (v4 < *(v1 + 16))
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v18 = *(v5 - 4);
    v19 = *(v5 - 3);
    swift_bridgeObjectRetain_n();
    sub_24DC86AA0();
    v20 = sub_24DCB4DD4();
    v21 = v9;
    MEMORY[0x253035590](8250, 0xE200000000000000);
    sub_24DC86AA0();
    v10 = sub_24DCB4DD4();
    MEMORY[0x253035590](v10);

    result = sub_24DC86FD4();
    v12 = *(v22 + 16);
    v11 = *(v22 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_24DC3B6D8((v11 > 1), v12 + 1, 1);
    }

    ++v4;
    *(v22 + 16) = v12 + 1;
    v13 = v22 + 16 * v12;
    *(v13 + 32) = v20;
    *(v13 + 40) = v21;
    v5 += 40;
    if (v17 == v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE60, &qword_24DCBBC90);
      sub_24DC87594(&qword_27F19F168, &qword_27F19EE60, &qword_24DCBBC90);
      v14 = sub_24DCB4D64();
      v16 = v15;

      MEMORY[0x253035590](v14, v16);

      MEMORY[0x253035590](93, 0xE100000000000000);
      return 91;
    }
  }

  __break(1u);
  return result;
}

uint64_t Metadata.Value.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2530356D0](a1, MEMORY[0x277D84B78]);
  }

  return a1;
}

uint64_t sub_24DC85634()
{
  if (v0[2])
  {
    return MEMORY[0x2530356D0](*v0, MEMORY[0x277D84B78]);
  }

  v2 = v0[1];
  v3 = *v0;

  return v3;
}

uint64_t Metadata.Value.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F070, &qword_24DCBBC70);
  }

  else
  {
  }

  return sub_24DCB4DD4();
}

uint64_t sub_24DC856E4()
{
  v1 = *v0;
  if (v0[2])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F070, &qword_24DCBBC70);
  }

  else
  {
    v3 = v0[1];
  }

  return sub_24DCB4DD4();
}

char *sub_24DC85750(char *a1, int64_t a2, char a3)
{
  result = sub_24DC85770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24DC85770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F148, &qword_24DCBBC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24DC8588C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F148, &qword_24DCBBC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24DC859A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F238, &unk_24DCBC650);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_24DC85A38(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  result = sub_24DC879BC(*a1, a2);
  if (!v2)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    v47 = a2;
    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v8 == v9)
      {
        return result;
      }

      v11 = 40 * result + 104;
      v41 = a1;
      while (v8 < v9)
      {
        v50 = v8;
        v49 = result;
        v14 = v5;
        v48 = v11;
        v15 = (v5 + v11);
        v16 = *(v5 + v11 - 32);
        v17 = *(v5 + v11 - 24);
        v18 = *(v5 + v11 - 16);
        v19 = *(v5 + v11 - 8);
        v20 = *v15;

        sub_24DC86AA0();
        LOBYTE(v16) = v47(v16, v17, v18, v19, v20);

        sub_24DC86FD4();
        if (v16)
        {
          result = v49;
          v5 = v14;
          v12 = v50;
          v13 = v48;
        }

        else
        {
          result = v49;
          v12 = v50;
          v5 = v14;
          v13 = v48;
          if (v50 != v49)
          {
            if ((v49 & 0x8000000000000000) != 0)
            {
              goto LABEL_22;
            }

            if (v49 >= *v10)
            {
              goto LABEL_23;
            }

            if (v50 >= *v10)
            {
              goto LABEL_24;
            }

            v21 = 40 * v49;
            v22 = v14 + 32 + 40 * v49;
            v44 = *(v22 + 8);
            v45 = *v22;
            v23 = *(v22 + 16);
            v24 = *(v22 + 24);
            v25 = *(v22 + 32);
            v26 = *(v15 - 3);
            v46 = *(v15 - 4);
            v27 = *(v15 - 2);
            v28 = *(v15 - 1);
            v29 = *(v5 + v48);

            v43 = v24;
            v42 = v25;
            sub_24DC86AA0();

            sub_24DC86AA0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_24DC86A04(v5);
            }

            v30 = v5 + v21;
            v31 = v5;
            v32 = *(v5 + v21 + 40);
            v33 = *(v5 + v21 + 48);
            v34 = *(v30 + 56);
            v35 = *(v30 + 64);
            *(v30 + 32) = v46;
            *(v30 + 40) = v26;
            *(v30 + 48) = v27;
            *(v30 + 56) = v28;
            *(v30 + 64) = v29;

            result = sub_24DC86FD4();
            v12 = v50;
            if (v50 >= *(v31 + 16))
            {
              goto LABEL_25;
            }

            v13 = v48;
            v36 = (v31 + v48);
            v37 = *(v31 + v48 - 24);
            v38 = *(v31 + v48 - 16);
            v39 = *(v31 + v48 - 8);
            v40 = *(v31 + v48);
            *(v36 - 4) = v45;
            *(v36 - 3) = v44;
            *(v36 - 2) = v23;
            *(v36 - 1) = v43;
            *v36 = v42;

            v5 = v31;
            sub_24DC86FD4();
            *v41 = v31;
            result = v49;
          }

          ++result;
        }

        v8 = v12 + 1;
        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v11 = v13 + 40;
        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_24DC85D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_24DC859A8(*(a1 + 16), 0);
  v4 = sub_24DC86170(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24DC85DA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result;
  v13 = a6;
  *&v14 = 0;
  *(&v14 + 1) = a4;
  v15 = a5;
  *&v7 = 0;
  *(&v7 + 1) = a4;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v6 = a6;
    *(v6 + 8) = v7;
    *(v6 + 24) = a5;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a3;
    v11 = a3 - 1;
    while (1)
    {
      v12 = Metadata.BinaryValues.Iterator.next()();
      if (!v12)
      {
        a6 = v13;
        v7 = v14;
        a3 = v9;
        a5 = v15;
        goto LABEL_13;
      }

      *(a2 + 8 * v9) = v12;
      if (v11 == v9)
      {
        break;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a6 = v13;
    v7 = v14;
    a5 = v15;
    a3 = v10;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_24DC85E70(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_15:
    v10 = 0;
    a3 = 0;
LABEL_19:
    *result = a6;
    result[1] = v10;
    result[2] = a4;
    result[3] = a5;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v21 = result;
    v8 = 0;
    v9 = 0;
    v10 = *(a6 + 16);
    v11 = a6 + 64;
    v12 = 1;
    v19 = a6 + 64;
    while (2)
    {
      if (v9 == v10)
      {
        a3 = v8;
LABEL_17:
        result = v21;
        goto LABEL_19;
      }

      v22 = v8;
      v23 = v12;
      v24 = a2;
      v13 = (v11 + 40 * v9);
      while (1)
      {
        if (v9 >= *(a6 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v14 = *(v13 - 2);
        v15 = *(v13 - 1);
        v16 = *v13;
        v18 = *(v13 - 4);
        v17 = *(v13 - 3);

        sub_24DC86AA0();
        LOBYTE(v18) = sub_24DC9D454(a4, a5, v18, v17);

        if ((v18 & 1) != 0 && !v16)
        {
          break;
        }

        ++v9;
        result = sub_24DC86FD4();
        v13 += 40;
        if (v10 == v9)
        {
          a3 = v22;
          goto LABEL_17;
        }
      }

      *v24 = v14;
      v24[1] = v15;
      ++v9;
      a3 = v20;
      if (v23 == v20)
      {
        v10 = v9;
        goto LABEL_17;
      }

      a2 = v24 + 2;
      v8 = v23;
      v12 = v23 + 1;
      v11 = v19;
      if (!__OFADD__(v23, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_24DC85FF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_15:
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a6;
    result[1] = v9;
    result[2] = a4;
    result[3] = a5;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v21 = result;
    v7 = 0;
    v8 = 0;
    v9 = *(a6 + 16);
    v10 = a6 + 64;
    v11 = 1;
    v19 = a6 + 64;
    while (2)
    {
      if (v8 == v9)
      {
        a3 = v7;
LABEL_16:
        result = v21;
        goto LABEL_18;
      }

      v22 = v7;
      v23 = v11;
      v24 = a2;
      v12 = (v10 + 40 * v8);
      while (1)
      {
        if (v8 >= *(a6 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v16 = v8 + 1;
        v17 = *(v12 - 4);
        v18 = *(v12 - 3);

        sub_24DC86AA0();
        LOBYTE(v17) = sub_24DC9D454(a4, a5, v17, v18);

        if (v17)
        {
          break;
        }

        result = sub_24DC86FD4();
        v12 += 40;
        ++v8;
        if (v9 == v16)
        {
          a3 = v22;
          goto LABEL_16;
        }
      }

      *v24 = v13;
      *(v24 + 8) = v14;
      *(v24 + 16) = v15;
      a3 = v20;
      if (v23 == v20)
      {
        v9 = v8 + 1;
        goto LABEL_16;
      }

      a2 = v24 + 24;
      v7 = v23;
      ++v8;
      v11 = v23 + 1;
      v10 = v19;
      if (!__OFADD__(v23, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *sub_24DC86170(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_14:
    *result = a4;
    result[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a4 + 16);
    if (v6)
    {
      v16 = result;
      v8 = 0;
      v9 = 0;
      v10 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v11 = a2 + v8;
        v12 = *(a4 + v8 + 40);
        v13 = *(a4 + v8 + 48);
        v14 = *(a4 + v8 + 56);
        v15 = *(a4 + v8 + 64);
        *v11 = *(a4 + v8 + 32);
        *(v11 + 8) = v12;
        *(v11 + 16) = v13;
        *(v11 + 24) = v14;
        *(v11 + 32) = v15;
        if (v10 == v9)
        {

          sub_24DC86AA0();
          goto LABEL_13;
        }

        result = sub_24DC86AA0();
        ++v9;
        v8 += 40;
        if (v6 == v9)
        {
          v5 = v6;
LABEL_13:
          result = v16;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

    v5 = 0;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_24DC8627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);

  v37 = a2;

  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 + 64;
    v32 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      v33 = v9;
      v35 = v7;
      v11 = (v10 + 40 * v8);
      while (1)
      {
        if (v8 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v15 = v8 + 1;
        v17 = *(v11 - 4);
        v16 = *(v11 - 3);

        sub_24DC86AA0();
        LOBYTE(v17) = sub_24DC9D454(a1, v37, v17, v16);

        if (v17)
        {
          break;
        }

        result = sub_24DC86FD4();
        v11 += 40;
        ++v8;
        if (v5 == v15)
        {
          v9 = v33;
          v7 = v35;
          goto LABEL_28;
        }
      }

      v18 = v33;
      if (v33)
      {
        v7 = v35;
      }

      else
      {
        v19 = v35[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F230, &qword_24DCBC648);
        v7 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v7) - 32) / 24;
        v7[2] = v21;
        v7[3] = 2 * v22;
        v23 = (v7 + 4);
        v24 = v35[3] >> 1;
        v25 = 3 * v24;
        if (v35[2])
        {
          if (v7 != v35 || v23 >= &v35[v25 + 4])
          {
            v34 = v22;
            memmove(v7 + 4, v35 + 4, 24 * v24);
            v23 = (v7 + 4);
            v22 = v34;
          }

          v35[2] = 0;
        }

        v32 = v23 + v25 * 8;
        v18 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
      }

      v27 = __OFSUB__(v18, 1);
      v9 = v18 - 1;
      v10 = a3 + 64;
      if (v27)
      {
        break;
      }

      *v32 = v12;
      *(v32 + 8) = v13;
      *(v32 + 16) = v14;
      v32 += 24;
      if (v5 - 1 == v8++)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = 0;
LABEL_28:

  v29 = v7[3];
  if (v29 < 2)
  {
    return v7;
  }

  v30 = v29 >> 1;
  v27 = __OFSUB__(v30, v9);
  v31 = v30 - v9;
  if (!v27)
  {
    v7[2] = v31;
    return v7;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24DC864F4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = *(a3 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3 + 64;
    v11 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      v34 = v11;
      v35 = v9;
      v36 = v7;
      v12 = (v10 + 40 * v8);
      while (1)
      {
        if (v8 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v17 = *(v12 - 4);
        v16 = *(v12 - 3);

        sub_24DC86AA0();
        LOBYTE(v17) = sub_24DC9D454(a1, a2, v17, v16);

        if ((v17 & 1) != 0 && !v15)
        {
          break;
        }

        ++v8;
        result = sub_24DC86FD4();
        v12 += 40;
        if (v6 == v8)
        {
          v9 = v35;
          v7 = v36;
          goto LABEL_29;
        }
      }

      if (v35)
      {
        v7 = v36;
        v9 = v35 - 1;
        if (__OFSUB__(v35, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v18 = v36[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEB0, &qword_24DCB8D40);
        v7 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v7);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 17;
        }

        v23 = v22 >> 4;
        v7[2] = v20;
        v7[3] = 2 * (v22 >> 4);
        v24 = (v7 + 4);
        v25 = v36[3] >> 1;
        if (v36[2])
        {
          v26 = v36 + 4;
          if (v7 != v36 || v24 >= v26 + 16 * v25)
          {
            v27 = v22 >> 4;
            memmove(v7 + 4, v26, 16 * v25);
            v23 = v27;
          }

          v36[2] = 0;
        }

        v34 = (v24 + 16 * v25);
        v28 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v29 = __OFSUB__(v28, 1);
        v9 = v28 - 1;
        if (v29)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      *v34 = v13;
      v34[1] = v14;
      v11 = (v34 + 2);
      v30 = v6 - 1 == v8++;
      v10 = a3 + 64;
      if (v30)
      {
        goto LABEL_29;
      }
    }
  }

  v9 = 0;
LABEL_29:

  v31 = v7[3];
  if (v31 < 2)
  {
    return v7;
  }

  v32 = v31 >> 1;
  v29 = __OFSUB__(v32, v9);
  v33 = v32 - v9;
  if (!v29)
  {
    v7[2] = v33;
    return v7;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_24DC8675C()
{

  result = Metadata.BinaryValues.Iterator.next()();
  v1 = MEMORY[0x277D84F90];
  v2 = 0;
  if (result)
  {
    v3 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v2)
      {
        v4 = v1[3];
        if (((v4 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v5 = result;
        v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F228, &unk_24DCBC638);
        v8 = swift_allocObject();
        v9 = _swift_stdlib_malloc_size(v8);
        v10 = v9 - 32;
        if (v9 < 32)
        {
          v10 = v9 - 25;
        }

        v11 = v10 >> 3;
        v8[2] = v7;
        v8[3] = 2 * (v10 >> 3);
        v12 = (v8 + 4);
        v13 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v12 >= &v1[v13 + 4])
          {
            memmove(v8 + 4, v1 + 4, 8 * v13);
          }

          v1[2] = 0;
        }

        v3 = (v12 + 8 * v13);
        v2 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v1 = v8;
        result = v5;
      }

      v15 = __OFSUB__(v2--, 1);
      if (v15)
      {
        break;
      }

      *v3++ = result;
      result = Metadata.BinaryValues.Iterator.next()();
      if (!result)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v16 = v1[3];
  if (v16 < 2)
  {
    return v1;
  }

  v17 = v16 >> 1;
  v15 = __OFSUB__(v17, v2);
  v18 = v17 - v2;
  if (!v15)
  {
    v1[2] = v18;
    return v1;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24DC868F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253035FF0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 40 * v5);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = *(v7 + 32);

      sub_24DC86AA0();
      sub_24DCB4D44();
      if (v12)
      {
        MEMORY[0x253035FF0](1);
        MEMORY[0x253035FF0](*(v10 + 16));
        v13 = *(v10 + 16);
        if (v13)
        {
          v14 = (v10 + 32);
          do
          {
            v15 = *v14++;
            sub_24DCB58C4();
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        MEMORY[0x253035FF0](0);
        sub_24DCB4D44();
      }

      result = sub_24DC86FD4();
      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_24DC86A18(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (result != a4 || a2 != a5)
      {
        return sub_24DCB57A4();
      }

      return 1;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (!v6 || result == a4)
  {
    return 1;
  }

  v7 = (result + 32);
  v8 = (a4 + 32);
  while (v6)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v8++;
    result = v9 == v11;
    if (v9 != v11 || v6-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC86AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 64); ; i += 40)
  {
    v6 = *(i - 4);
    v7 = *(i - 3);
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;

    sub_24DC86AA0();
    LOBYTE(v6) = sub_24DC9D454(a2, a3, v6, v7);

    sub_24DC86FD4();
    if (v6)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_24DC86B94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_24DC86AAC(*a1, a2, a3);
  v47 = result;
  if (v3)
  {
    return v47;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (v7 == v8)
    {
      return v47;
    }

    v10 = 40 * result + 104;
    while (v7 < v8)
    {
      v46 = v4;
      v11 = (v4 + v10);
      v12 = *(v11 - 4);
      v13 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;

      sub_24DC86AA0();
      LOBYTE(v12) = sub_24DC9D454(a2, a3, v12, v13);

      result = sub_24DC86FD4();
      if (v12)
      {
        v4 = v46;
      }

      else
      {
        v17 = v47;
        if (v7 == v47)
        {
          v4 = v46;
        }

        else
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v47 >= *v9)
          {
            goto LABEL_24;
          }

          if (v7 >= *v9)
          {
            goto LABEL_25;
          }

          v42 = 40 * v47;
          v18 = v46 + 32 + 40 * v47;
          v19 = *(v18 + 8);
          v20 = *(v18 + 16);
          v21 = *(v18 + 24);
          v22 = *(v18 + 32);
          v23 = *(v11 - 3);
          v41 = *(v11 - 4);
          v24 = *(v11 - 2);
          v39 = *v18;
          v40 = *(v11 - 1);
          v4 = v46;
          v25 = *(v46 + v10);

          v37 = v21;
          v36 = v22;
          sub_24DC86AA0();

          sub_24DC86AA0();
          v38 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_24DC86A04(v46);
          }

          v26 = v4 + v42;
          v27 = *(v4 + v42 + 40);
          v28 = *(v4 + v42 + 48);
          v29 = *(v4 + v42 + 56);
          v30 = *(v4 + v42 + 64);
          *(v26 + 32) = v41;
          *(v26 + 40) = v23;
          *(v26 + 48) = v24;
          *(v26 + 56) = v40;
          *(v26 + 64) = v25;

          result = sub_24DC86FD4();
          if (v7 >= *(v4 + 16))
          {
            goto LABEL_26;
          }

          v31 = (v4 + v10);
          v32 = *(v4 + v10 - 24);
          v33 = *(v4 + v10 - 16);
          v34 = *(v4 + v10 - 8);
          v35 = *(v4 + v10);
          *(v31 - 4) = v39;
          *(v31 - 3) = v38;
          *(v31 - 2) = v20;
          *(v31 - 1) = v37;
          *v31 = v36;

          result = sub_24DC86FD4();
          *a1 = v4;
          v17 = v47;
        }

        v47 = v17 + 1;
      }

      ++v7;
      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v10 += 40;
      if (v7 == v8)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24DC86E40(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = &v13[40 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_24DC86F14(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_24DC8588C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_24DC86E40(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24DC86FE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24DC86FD4();
  }

  return result;
}

unint64_t sub_24DC86FFC()
{
  result = qword_27F19F170;
  if (!qword_27F19F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F170);
  }

  return result;
}

unint64_t sub_24DC87054()
{
  result = qword_27F19F178;
  if (!qword_27F19F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F178);
  }

  return result;
}

unint64_t sub_24DC870B0()
{
  result = qword_27F19F180;
  if (!qword_27F19F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F180);
  }

  return result;
}

unint64_t sub_24DC87108()
{
  result = qword_27F19F188;
  if (!qword_27F19F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F188);
  }

  return result;
}

unint64_t sub_24DC871A4()
{
  result = qword_27F19F1A0;
  if (!qword_27F19F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1A0);
  }

  return result;
}

uint64_t sub_24DC87240(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F1B0, &qword_24DCBBE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DC872BC()
{
  result = qword_27F19F1B8;
  if (!qword_27F19F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1B8);
  }

  return result;
}

uint64_t sub_24DC87358(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F198, &qword_24DCBBE40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DC8741C()
{
  result = qword_27F19F1D0;
  if (!qword_27F19F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1D0);
  }

  return result;
}

unint64_t sub_24DC87474()
{
  result = qword_27F19F1D8;
  if (!qword_27F19F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F1D8);
  }

  return result;
}

uint64_t sub_24DC87594(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_24DC875E0()
{
  result = qword_27F19F200;
  if (!qword_27F19F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F200);
  }

  return result;
}

unint64_t sub_24DC8763C()
{
  result = qword_27F19F208;
  if (!qword_27F19F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F208);
  }

  return result;
}

unint64_t sub_24DC87694()
{
  result = qword_27F19F210;
  if (!qword_27F19F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F210);
  }

  return result;
}

unint64_t sub_24DC876F8()
{
  result = qword_27F19F218;
  if (!qword_27F19F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F218);
  }

  return result;
}

unint64_t sub_24DC87768()
{
  result = qword_27F19F220;
  if (!qword_27F19F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F220);
  }

  return result;
}

uint64_t sub_24DC877E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DC8782C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DC878A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24DC878E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC879BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 64); ; i += 40)
  {
    v13 = v2;
    v4 = *(i - 4);
    v5 = *(i - 3);
    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;

    sub_24DC86AA0();
    v9 = a2(v4, v5, v6, v7, v8);

    result = sub_24DC86FD4();
    if (v14)
    {
      break;
    }

    if (v9)
    {
      return v13;
    }

    v2 = v13 + 1;
    if (v11 == v13 + 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC87AE0(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t MethodDescriptor.service.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MethodDescriptor.service.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MethodDescriptor.method.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MethodDescriptor.method.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_24DC87C9C()
{
  result = qword_27F19F240;
  if (!qword_27F19F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F240);
  }

  return result;
}

GRPCCoreInternal::MethodDescriptor __swiftcall MethodDescriptor.init(service:method:)(GRPCCoreInternal::ServiceDescriptor service, Swift::String method)
{
  v3 = *(service.fullyQualifiedService._countAndFlagsBits + 8);
  *v2 = *service.fullyQualifiedService._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = service.fullyQualifiedService._object;
  v2[3] = method._countAndFlagsBits;
  result.method = method;
  result.service = service;
  return result;
}

GRPCCoreInternal::MethodDescriptor __swiftcall MethodDescriptor.init(fullyQualifiedService:method:)(Swift::String fullyQualifiedService, Swift::String method)
{
  object = method._object;
  countAndFlagsBits = method._countAndFlagsBits;
  v5 = v2;
  v10 = ServiceDescriptor.init(fullyQualifiedService:)(fullyQualifiedService);
  v7 = v10.fullyQualifiedService._object;
  v6 = v10.fullyQualifiedService._countAndFlagsBits;
  *v5 = v11;
  v5[1] = v12;
  v5[2] = countAndFlagsBits;
  v5[3] = object;
  result.method._object = v9;
  result.method._countAndFlagsBits = v8;
  result.service.fullyQualifiedService._object = v7;
  result.service.fullyQualifiedService._countAndFlagsBits = v6;
  return result;
}

uint64_t MethodDescriptor.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];
  sub_24DC880F4();
  sub_24DCB4D34();
  return sub_24DCB4D44();
}

uint64_t MethodDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DCB58A4();
  sub_24DC880F4();
  sub_24DCB4D34();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC87E38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DCB58A4();
  sub_24DC880F4();
  sub_24DCB4D34();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC87EB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];
  sub_24DC880F4();
  sub_24DCB4D34();
  return sub_24DCB4D44();
}

uint64_t sub_24DC87F20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DCB58A4();
  sub_24DC880F4();
  sub_24DCB4D34();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t _s16GRPCCoreInternal16MethodDescriptorV014fullyQualifiedC0SSvg_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];
  sub_24DC87C9C();
  v6 = sub_24DCB5744();
  MEMORY[0x253035590](47, 0xE100000000000000);
  MEMORY[0x253035590](v1, v2);
  return v6;
}

uint64_t _s16GRPCCoreInternal16MethodDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v11 = *a1;
  v12 = a1[1];
  v9 = *a2;
  v10 = a2[1];
  sub_24DC881B0();

  v6 = sub_24DCB4DA4();

  if (v6)
  {
    if (v2 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_24DCB57A4();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_24DC880F4()
{
  result = qword_27F19F248;
  if (!qword_27F19F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F248);
  }

  return result;
}

unint64_t sub_24DC8814C()
{
  result = qword_27F19F250;
  if (!qword_27F19F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F250);
  }

  return result;
}

unint64_t sub_24DC881B0()
{
  result = qword_27F19F258;
  if (!qword_27F19F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F258);
  }

  return result;
}

uint64_t sub_24DC882B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v13 = _s15OneShotExecutorVMa();
  sub_24DC49B94(a2, a7 + v13[21]);
  *(a7 + v13[22]) = a3;
  (*(*(a8 - 8) + 32))(a7 + v13[23], a4, a8);
  return (*(*(a9 - 8) + 32))(a7 + v13[24], a5, a9);
}

uint64_t sub_24DC88428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 504) = a8;
  *(v9 + 512) = v8;
  *(v9 + 488) = a6;
  *(v9 + 496) = a7;
  *(v9 + 472) = a4;
  *(v9 + 480) = a5;
  *(v9 + 464) = a1;
  v13 = *(a7 - 8);
  *(v9 + 520) = v13;
  *(v9 + 528) = *(v13 + 64);
  *(v9 + 536) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0) - 8) + 64) + 15;
  *(v9 + 544) = swift_task_alloc();
  v15 = sub_24DCB55B4();
  *(v9 + 552) = v15;
  v16 = *(v15 - 8);
  *(v9 + 560) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v18 = sub_24DCB5904();
  *(v9 + 584) = v18;
  v19 = *(v18 - 8);
  *(v9 + 592) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = *a2;
  *(v9 + 632) = *(a2 + 16);
  *(v9 + 640) = *a3;
  *(v9 + 648) = *(a3 + 8);
  *(v9 + 664) = *(a3 + 24);
  v21 = *(a4 + 80);
  *(v9 + 80) = *(a4 + 64);
  *(v9 + 96) = v21;
  *(v9 + 112) = *(a4 + 96);
  *(v9 + 128) = *(a4 + 112);
  v22 = *(a4 + 16);
  *(v9 + 16) = *a4;
  *(v9 + 32) = v22;
  v23 = *(a4 + 48);
  *(v9 + 48) = *(a4 + 32);
  *(v9 + 64) = v23;

  return MEMORY[0x2822009F8](sub_24DC88690, 0, 0);
}

uint64_t sub_24DC88690()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  sub_24DC4982C(*(v0 + 512) + *(*(v0 + 496) + 84), v3, &qword_27F19F000, &qword_24DCB9BC0);
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 664);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  if (v4 == 1)
  {
    v12 = *(v0 + 472);
    sub_24DC3DFD4(*(v0 + 544), &qword_27F19F000, &qword_24DCB9BC0);
    *(v0 + 408) = v11;
    *(v0 + 416) = v10;
    *(v0 + 424) = v9;
    *(v0 + 376) = v8;
    *(v0 + 384) = v7;
    *(v0 + 392) = v6;
    *(v0 + 400) = v5;
    v13 = v12[4];
    v14 = v12[5];
    v15 = v12[6];
    *(v0 + 248) = *(v12 + 56);
    *(v0 + 232) = v15;
    *(v0 + 216) = v14;
    *(v0 + 200) = v13;
    v16 = *v12;
    v17 = v12[1];
    v18 = v12[2];
    *(v0 + 184) = v12[3];
    *(v0 + 168) = v18;
    *(v0 + 152) = v17;
    *(v0 + 136) = v16;
    v19 = swift_task_alloc();
    *(v0 + 704) = v19;
    *v19 = v0;
    v19[1] = sub_24DC88DB0;
    v20 = *(v0 + 608);
    v21 = *(v0 + 504);
    v22 = *(v0 + 512);
    v23 = *(v0 + 488);
    v24 = *(v0 + 496);
    v25 = *(v0 + 480);

    return sub_24DC89278(v20, v0 + 408, (v0 + 376), (v0 + 136), v25, v23, v24, v21);
  }

  else
  {
    v60 = *(v0 + 648);
    v61 = *(v0 + 664);
    v27 = *(v0 + 568);
    v28 = *(v0 + 560);
    v58 = *(v0 + 640);
    v59 = *(v0 + 656);
    v29 = *(v0 + 552);
    v55 = *(v0 + 536);
    v56 = *(v0 + 528);
    v30 = *(v0 + 520);
    v54 = *(v0 + 512);
    v57 = *(v0 + 504);
    v31 = *(v0 + 496);
    v63 = *(v0 + 488);
    v62 = *(v0 + 480);
    (*(v28 + 32))(*(v0 + 576), *(v0 + 544), v29);
    *(v0 + 432) = v11;
    *(v0 + 440) = v10;
    *(v0 + 448) = v9;

    sub_24DCB5574();
    v32 = sub_24DCB55A4();
    v34 = v33;
    v35 = *(v28 + 8);
    *(v0 + 672) = v35;
    *(v0 + 680) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v27, v29);
    sub_24DC7F3A0(v32, v34, 0);
    v53 = *(v0 + 448);
    v52 = *(v0 + 432);
    (*(v30 + 16))(v55, v54, v31);
    v36 = (*(v30 + 80) + 88) & ~*(v30 + 80);
    v37 = (v56 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 31) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 39) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v0 + 688) = v40;
    *(v40 + 16) = *(v31 + 16);
    *(v40 + 24) = *(v31 + 24);
    *(v40 + 32) = *(v31 + 32);
    *(v40 + 48) = *(v31 + 48);
    *(v40 + 56) = v57;
    *(v40 + 64) = *(v31 + 56);
    *(v40 + 80) = *(v31 + 72);
    (*(v30 + 32))(v40 + v36, v55, v31);
    v41 = v40 + v37;
    *v41 = v52;
    *(v41 + 16) = v53;
    v42 = (v40 + v38);
    *v42 = v58;
    v42[1] = v60;
    v42[2] = v59;
    v42[3] = v61;
    v43 = v40 + v39;
    v44 = *(v0 + 64);
    *(v43 + 32) = *(v0 + 48);
    *(v43 + 48) = v44;
    v45 = *(v0 + 32);
    *v43 = *(v0 + 16);
    *(v43 + 16) = v45;
    *(v43 + 112) = *(v0 + 128);
    v46 = *(v0 + 112);
    *(v43 + 80) = *(v0 + 96);
    *(v43 + 96) = v46;
    *(v43 + 64) = *(v0 + 80);
    v47 = (v40 + ((v39 + 121) & 0xFFFFFFFFFFFFFFF8));
    *v47 = v62;
    v47[1] = v63;

    sub_24DC568C0(v0 + 16, v0 + 256);

    v48 = swift_task_alloc();
    *(v0 + 696) = v48;
    *v48 = v0;
    v48[1] = sub_24DC88B0C;
    v49 = *(v0 + 608);
    v50 = *(v0 + 584);
    v51 = *(v0 + 576);

    return sub_24DC89498(v49, v51, &unk_24DCBC788, v40, v50);
  }
}

uint64_t sub_24DC88B0C()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 688);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DC88C24, 0, 0);
}

uint64_t sub_24DC88C24()
{
  v1 = *(v0 + 680);
  (*(v0 + 672))(*(v0 + 576), *(v0 + 552));
  v2 = *(v0 + 432);
  v3 = *(v0 + 448);

  v4 = *(v0 + 584);
  v5 = *(v0 + 464);
  (*(*(v0 + 592) + 16))(*(v0 + 600), *(v0 + 608), v4);
  sub_24DC2F270(v4, v0 + 456, v5);
  v6 = *(v0 + 600);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  v9 = *(v0 + 544);
  v10 = *(v0 + 536);
  (*(*(v0 + 592) + 8))(*(v0 + 608), *(v0 + 584));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24DC88DB0()
{
  v1 = *(*v0 + 704);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DC88EAC, 0, 0);
}

uint64_t sub_24DC88EAC()
{
  v1 = v0[73];
  v2 = v0[58];
  (*(v0[74] + 16))(v0[75], v0[76], v1);
  sub_24DC2F270(v1, (v0 + 57), v2);
  v3 = v0[75];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[67];
  (*(v0[74] + 8))(v0[76], v0[73]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24DC89010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  *(v9 + 232) = a3;
  *(v9 + 240) = a4;
  *(v9 + 248) = a5;
  *(v9 + 200) = a6;
  *(v9 + 208) = a7;
  *(v9 + 216) = a8;
  *(v9 + 224) = v18;
  v11 = *(v19 + 80);
  *(v9 + 80) = *(v19 + 64);
  *(v9 + 96) = v11;
  *(v9 + 112) = *(v19 + 96);
  *(v9 + 128) = *(v19 + 112);
  v12 = *(v19 + 16);
  *(v9 + 16) = *v19;
  *(v9 + 32) = v12;
  v13 = *(v19 + 48);
  *(v9 + 48) = *(v19 + 32);
  *(v9 + 64) = v13;
  v14 = swift_task_alloc();
  *(v9 + 136) = v22;
  *(v9 + 256) = v14;
  *(v9 + 152) = v23;
  *(v9 + 168) = v24;
  *(v9 + 176) = v26;
  *(v9 + 184) = v27;
  *(v9 + 192) = v28;
  v15 = _s15OneShotExecutorVMa();
  *v14 = v9;
  v14[1] = sub_24DC89184;

  return sub_24DC89278(a1, v9 + 232, (v9 + 200), (v9 + 16), v20, v21, v15, v25);
}

uint64_t sub_24DC89184()
{
  v1 = *(*v0 + 256);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC89278(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 168) = a8;
  *(v9 + 176) = v8;
  *(v9 + 152) = a6;
  *(v9 + 160) = a7;
  *(v9 + 136) = a1;
  *(v9 + 144) = a5;
  *(v9 + 184) = *a2;
  v10 = *a3;
  *(v9 + 200) = *(a2 + 16);
  *(v9 + 208) = v10;
  *(v9 + 216) = *(a3 + 1);
  *(v9 + 232) = a3[3];
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[3];
  *(v9 + 48) = a4[2];
  *(v9 + 64) = v13;
  *(v9 + 16) = v11;
  *(v9 + 32) = v12;
  v14 = a4[4];
  v15 = a4[5];
  v16 = a4[6];
  *(v9 + 128) = *(a4 + 56);
  *(v9 + 96) = v15;
  *(v9 + 112) = v16;
  *(v9 + 80) = v14;
  return MEMORY[0x2822009F8](sub_24DC892EC, 0, 0);
}

uint64_t sub_24DC892EC()
{
  v1 = *(v0 + 224);
  v18 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5904();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  v10 = *(v0 + 184);
  v11 = *(v0 + 144);
  *(v9 + 16) = *(v7 + 16);
  *(v9 + 24) = *(v7 + 24);
  *(v9 + 32) = *(v7 + 32);
  *(v9 + 48) = *(v7 + 48);
  *(v9 + 56) = v5;
  *(v9 + 64) = *(v7 + 56);
  *(v9 + 80) = *(v7 + 72);
  *(v9 + 88) = v6;
  *(v9 + 96) = v3;
  *(v9 + 104) = v2;
  *(v9 + 112) = v1;
  *(v9 + 120) = v18;
  *(v9 + 128) = v0 + 16;
  *(v9 + 136) = v10;
  *(v9 + 152) = v4;
  *(v9 + 160) = v11;
  v12 = *(MEMORY[0x277D858E8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 248) = v13;
  *v13 = v0;
  v13[1] = sub_24DC4C7A8;
  v14 = *(v0 + 136);
  v15 = MEMORY[0x277D84F78] + 8;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v14, v15, v8, 0, 0, &unk_24DCBC7A0, v9, v16);
}

uint64_t sub_24DC89498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24DC894C0, 0, 0);
}

uint64_t sub_24DC894C0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = type metadata accessor for _DeadlineChildTaskResult();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_24DC895C8;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return MEMORY[0x282200600](v9, v3, v8, 0, 0, &unk_24DCBC7B0, v4, v3);
}

uint64_t sub_24DC895C8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24DC896D8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v26 = *(v0 + 16);
  v28 = *(v0 + 32);
  v29 = *(v0 + 64);
  v30 = *(v0 + 80);
  v3 = _s15OneShotExecutorVMa();
  v4 = (*(*(v3 - 1) + 80) + 88) & ~*(*(v3 - 1) + 80);
  v5 = (*(*(v3 - 1) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v4;
  (*(*(v26 - 8) + 8))(v0 + v4);
  v8 = v3[21];
  v9 = sub_24DCB55B4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = *(v7 + v3[22]);

  (*(*(v1 - 8) + 8))(v7 + v3[23], v1);
  (*(*(v2 - 8) + 8))(v7 + v3[24], v2);
  v12 = *(v0 + v5);

  v13 = *(v0 + v5 + 16);

  v14 = *(v0 + v6 + 8);

  v15 = *(v0 + v6 + 24);

  v16 = (v0 + v27);
  if (*(v0 + v27 + 112) != 255)
  {
    v17 = v16[7];
    v18 = v16[8];
    v19 = v16[9];
    v20 = v16[10];
    v21 = v16[11];
    v22 = v16[12];
    v23 = v16[13];
    sub_24DC566BC();
  }

  v24 = *(v0 + ((v27 + 121) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_24DC89964(uint64_t a1)
{
  v3 = v2;
  v26 = v1[4];
  v27 = v1[3];
  v25 = v1[5];
  v4 = v1[6];
  v28 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v2[2] = v1[2];
  v2[3] = v27;
  v2[4] = v26;
  v2[5] = v25;
  v2[6] = v4;
  v2[7] = v5;
  v2[8] = v6;
  v2[9] = v7;
  v8 = *(_s15OneShotExecutorVMa() - 8);
  v9 = (*(v8 + 80) + 88) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (((v11 + 39) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v1 + v10);
  v23 = v13[1];
  v24 = *v13;
  v22 = v13[2];
  v21 = *(v1 + v11);
  v20 = *(v1 + v11 + 8);
  v18 = *(v1 + v11 + 24);
  v19 = *(v1 + v11 + 16);
  v15 = *(v1 + v12);
  v14 = *(v1 + v12 + 8);
  v16 = swift_task_alloc();
  v3[10] = v16;
  *v16 = v3;
  v16[1] = sub_24DC56054;

  return sub_24DC89010(a1, v1 + v9, v24, v23, v22, v21, v20, v19);
}

uint64_t sub_24DC89B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = v16;
  *(v8 + 336) = v17;
  *(v8 + 312) = v15;
  *(v8 + 296) = v14;
  *(v8 + 280) = v13;
  *(v8 + 264) = v12;
  *(v8 + 248) = v11;
  *(v8 + 232) = v10;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a2;
  return MEMORY[0x2822009F8](sub_24DC89BCC, 0, 0);
}

uint64_t sub_24DC89BCC()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 248);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);
  *(v0 + 136) = *(v0 + 192);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;
  v27 = *(v0 + 288);
  v28 = *(v0 + 320);
  v26 = *(v0 + 272);
  v29 = *(v0 + 232);
  v30 = *(v0 + 256);
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[3];
  *(v0 + 48) = v5[2];
  *(v0 + 64) = v12;
  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  v13 = v5[4];
  v14 = v5[5];
  v15 = v5[6];
  *(v0 + 128) = *(v5 + 56);
  *(v0 + 96) = v14;
  *(v0 + 112) = v15;
  *(v0 + 80) = v13;
  v16 = swift_task_alloc();
  *(v0 + 344) = v16;
  *(v16 + 16) = v26;
  *(v16 + 32) = v27;
  *(v16 + 48) = v3;
  *(v16 + 56) = v2;
  *(v16 + 64) = v28;
  *(v16 + 80) = v1;
  *(v16 + 88) = v9;
  *(v16 + 96) = v29;
  *(v16 + 112) = v4;
  *(v16 + 120) = v8;
  *(v16 + 128) = v30;
  v17 = *(v28 + 48);
  v31 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 352) = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v20 = sub_24DCB5904();
  *(v0 + 360) = v20;
  *v19 = v0;
  v19[1] = sub_24DC89DFC;
  v21 = *(v0 + 320);
  v22 = *(v0 + 272);
  v23 = *(v0 + 184);
  v24 = *(v0 + 168);

  return v31(v24, v0 + 136, v0 + 16, &unk_24DCBC870, v16, v20, v22, v21);
}

uint64_t sub_24DC89DFC()
{
  v2 = *(*v1 + 352);
  v3 = *v1;
  v3[46] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC89F38, 0, 0);
  }

  else
  {
    v4 = v3[43];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24DC89F38()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[21];

  *v4 = v2;
  swift_storeEnumTagMultiPayload();
  v5 = v0[1];

  return v5();
}

uint64_t sub_24DC89FBC(uint64_t a1, uint64_t a2)
{
  v22 = *(v2 + 24);
  v23 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  v10 = *(v2 + 80);
  v20 = *(v2 + 96);
  v21 = *(v2 + 88);
  v18 = *(v2 + 112);
  v19 = *(v2 + 104);
  v17 = *(v2 + 120);
  v11 = *(v2 + 128);
  v15 = *(v2 + 152);
  v16 = *(v2 + 136);
  v12 = *(v2 + 168);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24DC334F4;

  return sub_24DC89B60(a1, a2, v21, v20, v19, v18, v17, v11);
}

uint64_t sub_24DC8A110(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v18;
  *(v8 + 344) = v17;
  *(v8 + 328) = v16;
  *(v8 + 312) = v15;
  *(v8 + 296) = v14;
  *(v8 + 280) = v13;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 232) = a2;
  *(v8 + 240) = a4;
  *(v8 + 224) = a1;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[3];
  *(v8 + 48) = a3[2];
  *(v8 + 64) = v11;
  *(v8 + 16) = v9;
  *(v8 + 32) = v10;
  return MEMORY[0x2822009F8](sub_24DC8A18C, 0, 0);
}

uint64_t sub_24DC8A18C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  *(v0 + 200) = *(v0 + 248);
  *(v0 + 216) = v2;
  v4 = *(v0 + 312);
  *(v0 + 80) = *(v0 + 296);
  v5 = *(v0 + 328);
  *(v0 + 96) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = *(v0 + 344);
  *(v0 + 136) = v1;
  v6 = _s15OneShotExecutorVMa();
  v7 = v6[23];
  v11 = v6[24];
  v20 = *(v3 + v6[22]);
  v8 = swift_task_alloc();
  *(v0 + 368) = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *v8 = v0;
  v8[1] = sub_24DC8A340;
  v9 = *(v0 + 240);
  v18 = *(v0 + 352);
  v19 = *(v0 + 360);
  v17 = *(v0 + 328);
  v16 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 312);
  v13 = *(v0 + 232);

  return sub_24DC81E14(v0 + 144, v9, v0 + 16, v0 + 200, 1, v3 + v7, v3 + v11, v20);
}

uint64_t sub_24DC8A340()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DC8A43C, 0, 0);
}

uint64_t sub_24DC8A43C()
{
  v1 = *(v0 + 360);
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  v3 = *(v0 + 312);
  v4 = *(v0 + 328);
  v5 = *(v0 + 344);
  v6 = *(v0 + 280);
  *(v2 + 16) = *(v0 + 296);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  *(v2 + 88) = v6;
  *(v2 + 104) = v0 + 144;
  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v7 = v0;
  v7[1] = sub_24DC8A554;
  v9 = *(v0 + 336);
  v10 = *(v0 + 224);

  return sub_24DC8C5F4(v10, &unk_24DCBC880, v2, v9, v8);
}

uint64_t sub_24DC8A554()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DC8A66C, 0, 0);
}

uint64_t sub_24DC8A66C()
{
  v1 = *(v0 + 312);
  v2 = **(v0 + 240);
  sub_24DCB5164();
  v3 = type metadata accessor for StreamingClientResponse();
  (*(*(v3 - 8) + 8))(v0 + 144, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24DC8A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for _DeadlineChildTaskResult();
  v6[8] = v7;
  v8 = sub_24DCB5414();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = *(v7 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = sub_24DCB55B4();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v6[17] = *(v14 + 64);
  v6[18] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC8A8F8, 0, 0);
}

uint64_t sub_24DC8A8F8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[15];
  v5 = v0[7];
  v18 = v0[17];
  v19 = v0[8];
  v22 = v0[5];
  v23 = v0[6];
  v6 = v0[4];
  v21 = v0[3];
  v7 = sub_24DCB51C4();
  v20 = *(*(v7 - 8) + 56);
  v20(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v4);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v5;
  (*(v3 + 32))(&v9[v8], v2, v4);
  v10 = sub_24DCB5174();
  v0[20] = v10;
  sub_24DC4B67C(v1, &unk_24DCBC840, v9, v10);
  sub_24DC3DFD4(v1, &qword_27F19F050, &qword_24DCB9EB0);
  v20(v1, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v5;
  v11[5] = v22;
  v11[6] = v23;

  sub_24DC4B67C(v1, &unk_24DCBC850, v11, v10);
  sub_24DC3DFD4(v1, &qword_27F19F050, &qword_24DCB9EB0);
  v12 = *(MEMORY[0x277D856A0] + 4);
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_24DC8AB78;
  v14 = v0[20];
  v15 = v0[11];
  v16 = v0[3];

  return MEMORY[0x2822002D0](v15, 0, 0, v14);
}

uint64_t sub_24DC8AB78()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DC8AC74, 0, 0);
}

uint64_t sub_24DC8AC74()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 80) + 8))(v1, *(v0 + 72));
    return sub_24DCB55E4();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 56);
    (*(v2 + 32))(v5, v1, v3);
    (*(v2 + 16))(v6, v5, v3);
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v6, 2, v7);
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = *(v0 + 64);
        v11 = **(v0 + 24);
        sub_24DCB5164();
      }

      (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 64));
      v12 = *(MEMORY[0x277D856A0] + 4);
      v13 = swift_task_alloc();
      *(v0 + 168) = v13;
      *v13 = v0;
      v13[1] = sub_24DC8AB78;
      v14 = *(v0 + 160);
      v15 = *(v0 + 88);
      v16 = *(v0 + 24);

      return MEMORY[0x2822002D0](v15, 0, 0, v14);
    }

    else
    {
      v17 = *(v0 + 144);
      v18 = *(v0 + 152);
      v19 = *(v0 + 112);
      v20 = *(v0 + 88);
      v21 = *(v0 + 96);
      v22 = *(v0 + 64);
      v23 = *(v0 + 24);
      (*(v8 + 32))(*(v0 + 16), *(v0 + 104), *(v0 + 56));
      v24 = *v23;
      sub_24DCB5164();
      (*(v21 + 8))(v19, v22);

      v25 = *(v0 + 8);

      return v25();
    }
  }
}

uint64_t sub_24DC8AF64(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24DC334F4;

  return sub_24DC8A720(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_24DC8B02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_24DCB55C4();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC8B0F0, 0, 0);
}

uint64_t sub_24DC8B0F0()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = sub_24DCB59A4();
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  sub_24DCB5854();
  v3 = *(MEMORY[0x277D857F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = sub_24DC8C3A4();
  *v4 = v0;
  v4[1] = sub_24DC8B1BC;
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);

  return MEMORY[0x282200488](v8, v0 + 16, v6, v7, v5);
}

uint64_t sub_24DC8B1BC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24DC8B3C8;
  }

  else
  {
    v6 = sub_24DC8B32C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24DC8B32C()
{
  v1 = v0[10];
  (*(*(v0[7] - 8) + 56))(v0[5], 1, 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC8B3C8()
{
  MEMORY[0x2530363B0](v0[12]);
  v1 = v0[10];
  (*(*(v0[7] - 8) + 56))(v0[5], 2, 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24DC8B46C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24DC8B568;

  return v11(a1);
}

uint64_t sub_24DC8B568()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DC8B664, 0, 0);
}

uint64_t sub_24DC8B664()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 2);
  v1 = v0[1];

  return v1();
}

void sub_24DC8B6F8(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_24DC8C078();
    if (v4 <= 0x3F)
    {
      sub_24DC547E8();
      if (v5 <= 0x3F)
      {
        v6 = a1[5];
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          v8 = a1[6];
          swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24DC8B7D0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  v55 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_24DCB55B4() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = a3[6];
  v15 = *(a3[5] - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = *(v14 - 8);
  if (v13 <= v17)
  {
    v19 = *(v15 + 84);
  }

  else
  {
    v19 = v13;
  }

  v20 = *(v14 - 8);
  v21 = *(v18 + 84);
  v22 = *(v7 + 64);
  v23 = *(v9 + 80);
  v24 = *(v9 + 64);
  v25 = *(v15 + 80);
  v26 = *(v15 + 64);
  v27 = *(v18 + 80);
  v28 = *(v18 + 64);
  if (v19 <= v21)
  {
    v29 = *(v18 + 84);
  }

  else
  {
    v29 = v19;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  if (v11)
  {
    v31 = v24;
  }

  else
  {
    v31 = v24 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v32 = v22 + v23;
  v33 = v31 + 7;
  v34 = v25 + 8;
  v35 = v26 + v27;
  v36 = a2 - v30;
  if (a2 > v30)
  {
    v37 = ((v35 + ((v34 + ((v33 + (v32 & ~v23)) & 0xFFFFFFFFFFFFFFF8)) & ~v25)) & ~v27) + v28;
    v38 = 8 * v37;
    if (v37 > 3)
    {
      goto LABEL_22;
    }

    v40 = ((v36 + ~(-1 << v38)) >> v38) + 1;
    if (HIWORD(v40))
    {
      v39 = *(a1 + v37);
      if (v39)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v40 <= 0xFF)
      {
        if (v40 < 2)
        {
          goto LABEL_42;
        }

LABEL_22:
        v39 = *(a1 + v37);
        if (!*(a1 + v37))
        {
          goto LABEL_42;
        }

LABEL_29:
        v41 = (v39 - 1) << v38;
        if (v37 > 3)
        {
          v41 = 0;
        }

        if (v37)
        {
          if (v37 <= 3)
          {
            v42 = v37;
          }

          else
          {
            v42 = 4;
          }

          if (v42 > 2)
          {
            if (v42 == 3)
            {
              v43 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v43 = *a1;
            }
          }

          else if (v42 == 1)
          {
            v43 = *a1;
          }

          else
          {
            v43 = *a1;
          }
        }

        else
        {
          v43 = 0;
        }

        return v30 + (v43 | v41) + 1;
      }

      v39 = *(a1 + v37);
      if (*(a1 + v37))
      {
        goto LABEL_29;
      }
    }
  }

LABEL_42:
  if (v8 == v30)
  {
    v44 = *(v55 + 48);
    v45 = a1;
    v46 = v8;
    v47 = v6;
LABEL_44:

    return v44(v45, v46, v47);
  }

  v49 = (a1 + v32) & ~v23;
  if (v12 == v30)
  {
    if (v11 >= 2)
    {
      v52 = (*(v10 + 48))(v49);
      if (v52 >= 2)
      {
        return v52 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v50 = ((v33 + v49) & 0xFFFFFFFFFFFFFFF8);
  if ((v29 & 0x80000000) != 0)
  {
    v53 = (v50 + v34) & ~v25;
    if (v17 != v30)
    {
      v44 = *(*(v14 - 8) + 48);
      v45 = ((v35 + v53) & ~v27);
      v46 = v21;
      v47 = v14;
      goto LABEL_44;
    }

    v54 = *(v16 + 48);

    return v54(v53, v17);
  }

  else
  {
    v51 = *v50;
    if (*v50 >= 0xFFFFFFFF)
    {
      LODWORD(v51) = -1;
    }

    return (v51 + 1);
  }
}

void sub_24DC8BBCC(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v49 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_24DCB55B4() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = a4[5];
  v16 = *(v15 - 8);
  if (v14 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(a4[5] - 8);
  v19 = *(v16 + 84);
  if (v17 <= v19)
  {
    v20 = *(v16 + 84);
  }

  else
  {
    v20 = v17;
  }

  v21 = a4[6];
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  v24 = *(v8 + 64);
  v25 = *(v11 + 80);
  v26 = *(v16 + 80);
  v27 = *(v16 + 64);
  v28 = *(v22 + 80);
  if (v20 <= v23)
  {
    v29 = *(v22 + 84);
  }

  else
  {
    v29 = v20;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  if (v13)
  {
    v31 = *(v11 + 64);
  }

  else
  {
    v31 = *(v11 + 64) + 1;
  }

  v32 = v27 + v28;
  v33 = ((v27 + v28 + ((v26 + 8 + ((v31 + 7 + ((v24 + v25) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & ~v28) + *(v22 + 64);
  v34 = a3 >= v30;
  v35 = a3 - v30;
  if (v35 == 0 || !v34)
  {
    goto LABEL_31;
  }

  if (v33 > 3)
  {
    v10 = 1;
    if (v30 < a2)
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  v36 = ((v35 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
  if (!HIWORD(v36))
  {
    if (v36 < 0x100)
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    if (v36 >= 2)
    {
      v10 = v37;
    }

    else
    {
      v10 = 0;
    }

LABEL_31:
    if (v30 < a2)
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  v10 = 4;
  if (v30 < a2)
  {
LABEL_32:
    v38 = ~v30 + a2;
    if (v33 < 4)
    {
      v39 = (v38 >> (8 * v33)) + 1;
      if (v33)
      {
        v40 = v38 & ~(-1 << (8 * v33));
        bzero(a1, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *a1 = v40;
            if (v10 > 1)
            {
LABEL_68:
              if (v10 == 2)
              {
                *&a1[v33] = v39;
              }

              else
              {
                *&a1[v33] = v39;
              }

              return;
            }
          }

          else
          {
            *a1 = v38;
            if (v10 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v40;
        a1[2] = BYTE2(v40);
      }

      if (v10 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v38;
      v39 = 1;
      if (v10 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v10)
    {
      a1[v33] = v39;
    }

    return;
  }

LABEL_41:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v33] = 0;
  }

  else if (v10)
  {
    a1[v33] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v9 == v30)
  {
    v41 = *(v49 + 56);
    v42 = a1;
    v43 = a2;
    v44 = v9;
    v15 = v7;
    goto LABEL_50;
  }

  v45 = &a1[v24 + v25] & ~v25;
  if (v14 == v30)
  {
    v46 = *(v12 + 56);

    v46(v45, (a2 + 1));
  }

  else
  {
    v47 = ((v31 + 7 + v45) & 0xFFFFFFFFFFFFFFF8);
    if ((v29 & 0x80000000) != 0)
    {
      v42 = (v47 + v26 + 8) & ~v26;
      if (v19 != v30)
      {
        v41 = *(v22 + 56);
        v42 = (v32 + v42) & ~v28;
        v43 = a2;
        v44 = v23;
        v15 = v21;

        goto LABEL_77;
      }

      v41 = *(v18 + 56);
      v43 = a2;
      v44 = v19;
LABEL_50:

LABEL_77:
      v41(v42, v43, v44, v15);
      return;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v48 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v48 = (a2 - 1);
    }

    *v47 = v48;
  }
}

void sub_24DC8C078()
{
  if (!qword_27F19F010)
  {
    sub_24DCB55B4();
    v0 = sub_24DCB5414();
    if (!v1)
    {
      atomic_store(v0, &qword_27F19F010);
    }
  }
}

uint64_t sub_24DC8C0D0()
{
  v1 = sub_24DCB55B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24DC8C194(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(sub_24DCB55B4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DC8B02C(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_24DC8C278()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_24DC8C2B8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC2FD00;

  return sub_24DC8B46C(a1, v7, v8, v5, v6, v4);
}

uint64_t sub_24DC8C36C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_24DC8C3A4()
{
  result = qword_27F19F040;
  if (!qword_27F19F040)
  {
    sub_24DCB55C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F040);
  }

  return result;
}

uint64_t sub_24DC8C3FC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *(v3 + 32);
  v19 = *(v3 + 16);
  v16 = *(v3 + 64);
  v17 = *(v3 + 48);
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  v9 = *(v3 + 96);
  v10 = *(v3 + 104);
  v11 = *(v3 + 112);
  v12 = *(v3 + 120);
  v15 = *(v3 + 128);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_24DC2FD00;

  return sub_24DC8A110(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_24DC8C52C(uint64_t a1)
{
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC334F4;

  return sub_24DC52760(a1, v4, v5, v6);
}

uint64_t sub_24DC8C5F4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = sub_24DCB5904();
  v5[4] = v8;
  v9 = *(v8 - 8);
  v5[5] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[6] = v11;
  v12 = *(a5 - 8);
  v5[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[8] = v14;
  v5[9] = swift_task_alloc();
  v18 = (a2 + *a2);
  v15 = a2[1];
  v16 = swift_task_alloc();
  v5[10] = v16;
  *v16 = v5;
  v16[1] = sub_24DC8C7D0;

  return v18(v11, v14);
}

uint64_t sub_24DC8C7D0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_24DC8C994;
  }

  else
  {
    v3 = sub_24DC8C8E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC8C8E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24DC8C994()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[7] + 32);
  v4(v1, v0[8], v2);
  v4(v3, v1, v2);
  swift_storeEnumTagMultiPayload();
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24DC8CA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v16 + 16))(&v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v7, v17);
  v21 = *(a4 + 16);
  v18 = *(a4 + 32);
  v22 = a5;
  v23 = v18;
  v24 = a6;
  v25 = a2;
  v26 = a3;
  return sub_24DC8CE30(sub_24DC8CE20, a4, a7);
}

uint64_t sub_24DC8CB94@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v28 = a2;
  v10 = sub_24DCB5414();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = *(v15 + 16);
  v18(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v19 = swift_dynamicCast();
  v20 = *(a5 - 8);
  v21 = *(v20 + 56);
  if (v19)
  {
    v21(v14, 0, 1, a5);
    return (*(v20 + 32))(a6, v14, a5);
  }

  else
  {
    v21(v14, 1, 1, a5);
    v23 = swift_allocError();
    v18(v24, a1, a4);
    v28(v23);
    MEMORY[0x2530363B0](v23);
    result = (*(v20 + 48))(v14, 1, a5);
    if (result != 1)
    {
      return (*(v26 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_24DC8CE30@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v3, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    v12 = *(a2 + 16);
    sub_24DCB5904();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    sub_24DCB5904();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t RPCStream.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 RPCStream.descriptor.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t (*RPCStream.inbound.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*RPCStream.outbound.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t RPCStream.init(descriptor:inbound:outbound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a6 = *a1;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  v13 = type metadata accessor for RPCStream();
  (*(*(a4 - 8) + 32))(a6 + *(v13 + 52), a2, a4);
  return (*(*(a5 - 8) + 32))(a6 + *(v13 + 56), a3, a5);
}

uint64_t sub_24DC8D2F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC8D38C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 32) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v24 = (a1 + v9 + 32) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_24DC8D5B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 32) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = &a1[v10 + 32] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t ServiceDescriptor.package.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v8 = 46;
  v7[2] = &v8;
  sub_24DC8DD68(sub_24DC8DF40, v7, v1, v2);
  if (v3)
  {
    return 0;
  }

  v5 = sub_24DCB4EF4();
  v6 = MEMORY[0x253035520](v5);

  return v6;
}

unint64_t sub_24DC8D96C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_24DCB4EF4();
  }

  __break(1u);
  return result;
}

unint64_t ServiceDescriptor.service.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v10 = 46;
  v9[2] = &v10;
  result = sub_24DC8DD68(sub_24DC8DFF4, v9, v1, v2);
  if (v4)
  {

    return v1;
  }

  v5 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_24DC3312C(result, v1, v2);
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v2 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v6 = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_8:
    v7 = sub_24DC8D96C(v6, v1, v2);
    v1 = MEMORY[0x253035520](v7);

    return v1;
  }

  v8 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 > result >> 16)
  {
    v6 = sub_24DCB4E74();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ServiceDescriptor.fullyQualifiedService.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServiceDescriptor.fullyQualifiedService.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

GRPCCoreInternal::ServiceDescriptor __swiftcall ServiceDescriptor.init(package:service:)(Swift::String package, Swift::String service)
{
  object = service._object;
  countAndFlagsBits = service._countAndFlagsBits;
  v5 = v2;
  v6 = HIBYTE(package._object) & 0xF;
  if ((package._object & 0x2000000000000000) == 0)
  {
    v6 = package._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {

    MEMORY[0x253035590](46, 0xE100000000000000);

    MEMORY[0x253035590](countAndFlagsBits, object);

    object = package._object;
    countAndFlagsBits = package._countAndFlagsBits;
  }

  else
  {
  }

  *v5 = countAndFlagsBits;
  v5[1] = object;
  result.fullyQualifiedService._object = v8;
  result.fullyQualifiedService._countAndFlagsBits = v7;
  return result;
}

uint64_t static ServiceDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

uint64_t ServiceDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DCB4D44();
}

uint64_t ServiceDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DCB58A4();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC8DC9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DCB58A4();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC8DCE8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24DCB4D44();
}

uint64_t sub_24DC8DCF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DCB58A4();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC8DD38(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

unint64_t sub_24DC8DD68(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = result;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LODWORD(v9) = 1;
  }

  v10 = 11;
  if (v9)
  {
    v10 = 7;
  }

  v11 = v10 | (v5 << 16);
  v12 = 4 << v9;
  v18 = a4 & 0xFFFFFFFFFFFFFFLL;
  v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((v11 & 0xC) != v12)
    {
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    result = sub_24DC3312C(v11, a3, a4);
    if (result < 0x4000)
    {
      break;
    }

    v11 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_12:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_17;
    }

LABEL_15:
    if (v5 < v11 >> 16)
    {
      goto LABEL_35;
    }

    v11 = sub_24DCB4E84();
LABEL_17:
    result = v11;
    if ((v11 & 0xC) == v12)
    {
      result = sub_24DC3312C(v11, a3, a4);
    }

    v13 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_34;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v15 = sub_24DCB4EB4();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v17[0] = a3;
      v17[1] = v18;
      v15 = *(v17 + v13);
    }

    else
    {
      v14 = v16;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v14 = sub_24DCB5504();
      }

      v15 = *(v14 + v13);
    }

    LOBYTE(v17[0]) = v15;
    result = v8(v17);
    if (v4 || (result & 1) != 0)
    {
      return v11;
    }

    if (v11 < 0x4000)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24DC8DF5C(uint64_t a1, int a2)
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

uint64_t sub_24DC8DFA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24DC8E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a2;
  v3[33] = a3;
  v3[31] = a1;
  v5 = type metadata accessor for ClientResponse.Contents();
  v3[34] = v5;
  v6 = *(v5 - 8);
  v3[35] = v6;
  v7 = *(v6 + 64) + 15;
  v3[36] = swift_task_alloc();
  v8 = *(a3 - 8);
  v3[37] = v8;
  v9 = *(v8 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  v10 = sub_24DCB5414();
  v3[41] = v10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v3[42] = TupleTypeMetadata3;
  v12 = *(*(TupleTypeMetadata3 - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v13 = *(v10 - 8);
  v3[44] = v13;
  v14 = *(v13 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC8E224, 0, 0);
}

uint64_t sub_24DC8E224()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  *(v0 + 400) = type metadata accessor for StreamingClientResponse.Contents();
  *(v0 + 408) = sub_24DC2E0D8();
  v3 = sub_24DCB5904();
  (*(*(v3 - 8) + 16))(v0 + 16, v2, v3);
  if (*(v0 + 64))
  {
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = type metadata accessor for StreamingClientResponse();
    (*(*(v8 - 8) + 8))(v6, v8);
    v9 = *(v0 + 24);
    v10 = *(v0 + 48);
    v11 = *(v0 + 32);
    *v7 = *(v0 + 16);
    *(v7 + 8) = v9;
    *(v7 + 16) = v11;
    *(v7 + 32) = v10;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    v13 = *(v0 + 384);
    v12 = *(v0 + 392);
    v15 = *(v0 + 368);
    v14 = *(v0 + 376);
    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 288);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 320);
    v24 = *(v0 + 32);
    *(v0 + 72) = *(v0 + 16);
    *(v0 + 88) = v24;
    *(v0 + 104) = *(v0 + 48);
    *(v0 + 416) = *(v0 + 72);

    *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    type metadata accessor for RPCAsyncSequence();
    RPCAsyncSequence.makeAsyncIterator()((v0 + 120));
    v25 = swift_task_alloc();
    *(v0 + 432) = v25;
    v26 = type metadata accessor for RPCAsyncSequence.AsyncIterator();
    *(v0 + 440) = v26;
    *v25 = v0;
    v25[1] = sub_24DC8E4F0;
    v27 = *(v0 + 392);

    return RPCAsyncSequence.AsyncIterator.next()(v27, v26);
  }
}

uint64_t sub_24DC8E4F0()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  v3[56] = v0;

  if (v0)
  {
    v4 = v3[52];

    return MEMORY[0x2822009F8](sub_24DC8F4B0, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[57] = v5;
    *v5 = v3;
    v5[1] = sub_24DC8E674;
    v6 = v3[55];
    v7 = v3[48];

    return RPCAsyncSequence.AsyncIterator.next()(v7, v6);
  }
}

uint64_t sub_24DC8E674()
{
  v2 = *(*v1 + 456);
  v3 = *v1;
  v3[58] = v0;

  if (v0)
  {
    v4 = v3[52];

    return MEMORY[0x2822009F8](sub_24DC8F884, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[59] = v5;
    *v5 = v3;
    v5[1] = sub_24DC8E7F8;
    v6 = v3[55];
    v7 = v3[47];

    return RPCAsyncSequence.AsyncIterator.next()(v7, v6);
  }
}