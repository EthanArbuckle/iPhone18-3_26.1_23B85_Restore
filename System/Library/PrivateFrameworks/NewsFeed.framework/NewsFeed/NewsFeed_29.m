uint64_t sub_1D5E09198(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, unint64_t *a7)
{
  v8 = a6;
  v9 = a5;
  v21 = a3;
  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = sub_1D5B9A6D8(v11, 0);
    v14 = sub_1D5B9A6EC(&v20, v13 + 4, v11, a1);

    sub_1D5B87E38();
    if (v14 != v11)
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v18;
    v9 = a5;
    v8 = a6;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v20 = v13;

  sub_1D5F81CCC(&v20);
  v11 = v7;
  if (!v7)
  {

    sub_1D5C2CA18(0, a4, v9, v8, MEMORY[0x1E69E6F58]);
    sub_1D5E18F74(a7, a4, v9, v8);
    sub_1D5B49714(0, &qword_1EDF43BA0);
    sub_1D5E1B878(&qword_1EDF04A90, &qword_1EDF43BA0);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E093B4(uint64_t a1, uint64_t a2, char *a3, char *a4, char a5)
{
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5 & 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v8 = sub_1D5C104B8(v6, 0);
    v9 = sub_1D5E24B6C(v11, v8 + 4, v6, a1);

    sub_1D5B87E38();
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11[0] = v8;

  sub_1D5E239F4(v11);
  v6 = v5;
  if (!v5)
  {

    sub_1D5E1B808(0);
    sub_1D5E1B844();
    sub_1D5B49714(0, &unk_1EDF3C820);
    sub_1D5E1B878(&qword_1EDF04A68, &unk_1EDF3C820);
    sub_1D72647EC();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_1D5E09614(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1D5E09884(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

void sub_1D5E096B0(void **a1)
{
  v2 = *(type metadata accessor for FormatRegex() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFAB8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D5E09758(v5);
  *a1 = v3;
}

void sub_1D5E09758(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
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
        type metadata accessor for FormatRegex();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FormatRegex() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D5E12844(v8, v9, a1, v4);
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
    sub_1D5E0B7E4(0, v2, 1, a1);
  }
}

uint64_t sub_1D5E09884(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1D726276C();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1D5E09994(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      if (v8)
      {
        v11 = 0x646165687473616DLL;
      }

      else
      {
        v11 = 0x6465727574616566;
      }

      if (*(v10 - 1))
      {
        v12 = 0x646165687473616DLL;
      }

      else
      {
        v12 = 0x6465727574616566;
      }

      if (v11 == v12)
      {
        result = swift_bridgeObjectRelease_n();
LABEL_5:
        ++v4;
        ++v6;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_1D72646CC();
      result = swift_bridgeObjectRelease_n();
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v8 = *v10;
      *v10 = *(v10 - 1);
      *--v10 = v8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5E09AB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
    while (1)
    {
      v20 = v4;
      v21 = a3;
      v6 = *(v23 + 16 * a3);
      v19 = v5;
      while (2)
      {
        v8 = *v4;
        v7 = *(v4 + 8);
        v9 = *(&v6 + 1);
        v10 = 0xE700000000000000;
        v11 = 0x656C6369747261;
        switch(*(&v6 + 1))
        {
          case 0:
            goto LABEL_37;
          case 1:
            v10 = 0xE500000000000000;
            v12 = 1970500457;
            goto LABEL_28;
          case 2:
            v10 = 0xE800000000000000;
            v11 = 0x6465626D45626577;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 3:
            v10 = 0xEA00000000006B63;
            v11 = 0x6172546F69647561;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 4:
            v10 = 0xE300000000000000;
            v11 = 6775156;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 5:
            v10 = 0xE500000000000000;
            v12 = 1919902579;
LABEL_28:
            v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 6:
            v10 = 0xE800000000000000;
            v11 = 0x676E69646E617473;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 7:
            v11 = 0x74656B63617262;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 8:
            v10 = 0xE800000000000000;
            v11 = 0x65726F6353786F62;
            goto LABEL_37;
          case 9:
            v11 = 0x726F6353656E696CLL;
            v10 = 0xE900000000000065;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 0xALL:
            v11 = 0x65527972756A6E69;
            v10 = 0xEC00000074726F70;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 0xBLL:
            v10 = 0xE900000000000072;
            v11 = 0x6579616C5079656BLL;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 0xCLL:
            v10 = 0xE600000000000000;
            v11 = 0x656C7A7A7570;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 0xDLL:
            v11 = 0x7954656C7A7A7570;
            v10 = 0xEA00000000006570;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 0xELL:
            v11 = 0x7453656C7A7A7570;
            v10 = 0xEF63697473697461;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          case 0xFLL:
            v10 = 0xE600000000000000;
            v11 = 0x657069636572;
            if (v7 > 0xF)
            {
              goto LABEL_29;
            }

            goto LABEL_37;
          default:
            v10 = *(&v6 + 1);
            v11 = v6;
            if (v7 <= 0xF)
            {
LABEL_37:
              v14 = 0xE700000000000000;
              v13 = 0x656C6369747261;
              switch(v7)
              {
                case 0uLL:
                  break;
                case 1uLL:
                  v14 = 0xE500000000000000;
                  v13 = 0x6575737369;
                  break;
                case 2uLL:
                  v14 = 0xE800000000000000;
                  v13 = 0x6465626D45626577;
                  break;
                case 3uLL:
                  v14 = 0xEA00000000006B63;
                  v13 = 0x6172546F69647561;
                  break;
                case 4uLL:
                  v14 = 0xE300000000000000;
                  v13 = 6775156;
                  break;
                case 5uLL:
                  v14 = 0xE500000000000000;
                  v13 = 0x65726F6373;
                  break;
                case 6uLL:
                  v14 = 0xE800000000000000;
                  v13 = 0x676E69646E617473;
                  break;
                case 7uLL:
                  v13 = 0x74656B63617262;
                  break;
                case 8uLL:
                  v14 = 0xE800000000000000;
                  v13 = 0x65726F6353786F62;
                  break;
                case 9uLL:
                  v13 = 0x726F6353656E696CLL;
                  v14 = 0xE900000000000065;
                  break;
                case 0xAuLL:
                  v13 = 0x65527972756A6E69;
                  v14 = 0xEC00000074726F70;
                  break;
                case 0xBuLL:
                  v14 = 0xE900000000000072;
                  v13 = 0x6579616C5079656BLL;
                  break;
                case 0xCuLL:
                  v14 = 0xE600000000000000;
                  v13 = 0x656C7A7A7570;
                  break;
                case 0xDuLL:
                  v13 = 0x7954656C7A7A7570;
                  v14 = 0xEA00000000006570;
                  break;
                case 0xEuLL:
                  v13 = 0x7453656C7A7A7570;
                  v14 = 0xEF63697473697461;
                  break;
                case 0xFuLL:
                  v14 = 0xE600000000000000;
                  v13 = 0x657069636572;
                  break;
                default:
                  goto LABEL_29;
              }
            }

            else
            {
LABEL_29:
              v13 = *v4;
              v14 = *(v4 + 8);
            }

            v22 = v6;
            if (v11 != v13 || v10 != v14)
            {
              v15 = sub_1D72646CC();
              sub_1D5CBA110(v8, v7);
              sub_1D5CBA110(v22, v9);
              sub_1D5CBA110(v22, v9);
              sub_1D5CBA110(v8, v7);

              sub_1D5CBA0FC(v8, v7);
              result = sub_1D5CBA0FC(v22, v9);
              if ((v15 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (!v23)
              {
                __break(1u);
                return result;
              }

              v16 = *v4;
              v6 = *(v4 + 16);
              *v4 = v6;
              *(v4 + 16) = v16;
              v4 -= 16;
              if (__CFADD__(v5++, 1))
              {
                goto LABEL_5;
              }

              continue;
            }

            sub_1D5CBA110(v8, v7);
            sub_1D5CBA110(v22, v9);
            sub_1D5CBA110(v22, v9);
            sub_1D5CBA110(v8, v7);

            sub_1D5CBA0FC(v8, v7);
            result = sub_1D5CBA0FC(v22, v9);
LABEL_5:
            a3 = v21 + 1;
            v4 = v20 + 16;
            v5 = v19 - 1;
            if (v21 + 1 == a2)
            {
              return result;
            }

            break;
        }

        break;
      }
    }
  }

  return result;
}

uint64_t sub_1D5E0A048(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v25 = a3;
    v7 = *(v4 + a3);
    v23 = v6;
    v24 = v5;
    while (1)
    {
      if (v7 <= 2u)
      {
        if (v7 == 1)
        {
          v10 = 0x72656874616577;
        }

        else
        {
          v10 = 0x6C6C6177796170;
        }

        if (v7)
        {
          v8 = v10;
        }

        else
        {
          v8 = 6775156;
        }

        if (v7)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
        }
      }

      else if (v7 > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE800000000000000;
          v8 = 0x6465626D45626577;
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1684366694;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x656E696C64616568;
        }

        else
        {
          v8 = 0x6575737369;
        }

        if (v7 == 3)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

      v11 = *(v5 - 1);
      v12 = 0x6465626D45626577;
      if (v11 != 5)
      {
        v12 = 1684366694;
      }

      v13 = 0xE400000000000000;
      if (v11 == 5)
      {
        v13 = 0xE800000000000000;
      }

      v14 = 0x656E696C64616568;
      if (v11 != 3)
      {
        v14 = 0x6575737369;
      }

      v15 = 0xE500000000000000;
      if (v11 == 3)
      {
        v15 = 0xE800000000000000;
      }

      if (*(v5 - 1) <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v11 == 1)
      {
        v16 = 0x72656874616577;
      }

      else
      {
        v16 = 0x6C6C6177796170;
      }

      v17 = 0xE700000000000000;
      if (!*(v5 - 1))
      {
        v16 = 6775156;
        v17 = 0xE300000000000000;
      }

      if (*(v5 - 1) <= 2u)
      {
        v18 = v16;
      }

      else
      {
        v18 = v12;
      }

      if (*(v5 - 1) <= 2u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      if (v8 == v18 && v9 == v19)
      {

LABEL_5:
        a3 = v25 + 1;
        v5 = v24 + 1;
        v6 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = sub_1D72646CC();

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5E0A2B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = 0xEB00000000646574;
    v24 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v22 = v5;
    v23 = a3;
    v7 = *(v24 + a3);
    v21 = v6;
    while (1)
    {
      if (v7 > 1u)
      {
        if (v7 == 2)
        {
          v8 = 0x6867696C68676968;
        }

        else
        {
          v8 = 0x64657463656C6573;
        }

        if (v7 == 2)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      else
      {
        if (v7)
        {
          v8 = 0x64657375636F66;
        }

        else
        {
          v8 = 0x64656C6261736964;
        }

        if (v7)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      v10 = *(v5 - 1);
      if (v10 == 2)
      {
        v11 = 0x6867696C68676968;
      }

      else
      {
        v11 = 0x64657463656C6573;
      }

      v12 = v4;
      if (v10 == 2)
      {
        v13 = v4;
      }

      else
      {
        v13 = 0xE800000000000000;
      }

      if (*(v5 - 1))
      {
        v14 = 0x64657375636F66;
      }

      else
      {
        v14 = 0x64656C6261736964;
      }

      if (*(v5 - 1))
      {
        v15 = 0xE700000000000000;
      }

      else
      {
        v15 = 0xE800000000000000;
      }

      if (*(v5 - 1) <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v11;
      }

      if (*(v5 - 1) <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v8 == v16 && v9 == v17)
      {

        v4 = v12;
LABEL_5:
        a3 = v23 + 1;
        v5 = v22 + 1;
        v6 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v18 = sub_1D72646CC();

      v4 = v12;
      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5E0A4A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50 = result;
  if (a3 == a2)
  {
    return result;
  }

  v4 = 0x6576694C7261656ELL;
  v5 = 0x656D6167657270;
  v6 = *a4;
  v53 = *a4;
LABEL_5:
  v7 = *(v6 + a3);
  v51 = a3;
  v54 = a3;
  while (2)
  {
    v8 = 0;
    v52 = v54 - 1;
    v9 = *(v53 + v54 - 1);
    v10 = v7;
    while (1)
    {
      v11 = byte_1F50F2678[v8 + 32];
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          v13 = 0x6B61657262;
        }

        else
        {
          v13 = 0x656E6F7074736F70;
        }

        if (v11 == 3)
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = 0xE900000000000064;
        }

        if (v11 == 2)
        {
          v13 = 0x6572676F72506E69;
          v14 = 0xEA00000000007373;
        }

        v15 = byte_1F50F2678[v8 + 32] ? v4 : v5;
        v16 = byte_1F50F2678[v8 + 32] ? 0xE800000000000000 : 0xE700000000000000;
        v12 = byte_1F50F2678[v8 + 32] <= 1u ? v15 : v13;
        v17 = byte_1F50F2678[v8 + 32] <= 1u ? v16 : v14;
      }

      else if (byte_1F50F2678[v8 + 32] > 7u)
      {
        if (v11 == 8)
        {
          v17 = 0xE500000000000000;
          v12 = 0x6C616E6966;
        }

        else
        {
          v17 = 0xE700000000000000;
          v12 = v11 == 9 ? 0x74696566726F66 : 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (v11 == 5)
        {
          v12 = 0x65646E6570737573;
          goto LABEL_36;
        }

        if (v11 == 6)
        {
          v12 = 0x656C6C65636E6163;
LABEL_36:
          v17 = 0xE900000000000064;
          goto LABEL_40;
        }

        v17 = 0xE700000000000000;
        v12 = 0x646579616C6564;
      }

LABEL_40:
      v18 = 0x74696566726F66;
      if (v10 != 9)
      {
        v18 = 0x6E776F6E6B6E75;
      }

      v19 = 0xE700000000000000;
      if (v10 == 8)
      {
        v18 = 0x6C616E6966;
        v19 = 0xE500000000000000;
      }

      v20 = 0x656C6C65636E6163;
      if (v10 == 6)
      {
        v21 = 0xE900000000000064;
      }

      else
      {
        v20 = 0x646579616C6564;
        v21 = 0xE700000000000000;
      }

      if (v10 == 5)
      {
        v20 = 0x65646E6570737573;
        v21 = 0xE900000000000064;
      }

      if (v10 <= 7)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v10 == 3)
      {
        v22 = 0x6B61657262;
      }

      else
      {
        v22 = 0x656E6F7074736F70;
      }

      if (v10 == 3)
      {
        v23 = 0xE500000000000000;
      }

      else
      {
        v23 = 0xE900000000000064;
      }

      if (v10 == 2)
      {
        v22 = 0x6572676F72506E69;
        v23 = 0xEA00000000007373;
      }

      v24 = v4;
      if (v10)
      {
        v25 = v4;
      }

      else
      {
        v25 = v5;
      }

      if (v10)
      {
        v26 = 0xE800000000000000;
      }

      else
      {
        v26 = 0xE700000000000000;
      }

      if (v10 <= 1)
      {
        v22 = v25;
        v23 = v26;
      }

      v27 = v10 <= 4 ? v22 : v18;
      v28 = v10 <= 4 ? v23 : v19;
      v29 = v5;
      if (v12 == v27 && v17 == v28)
      {
        break;
      }

      v30 = sub_1D72646CC();

      if (v30)
      {
        goto LABEL_79;
      }

      ++v8;
      v4 = v24;
      v5 = v29;
      if (v8 == 11)
      {
        v8 = 0;
        goto LABEL_80;
      }
    }

LABEL_79:
    v4 = v24;
    v5 = v29;
LABEL_80:
    v31 = 0;
    while (2)
    {
      v32 = byte_1F50F2678[v31 + 32];
      if (v32 <= 4)
      {
        v35 = 0x656E6F7074736F70;
        if (v32 == 3)
        {
          v35 = 0x6B61657262;
          v36 = 0xE500000000000000;
        }

        else
        {
          v36 = 0xE900000000000064;
        }

        if (v32 == 2)
        {
          v35 = 0x6572676F72506E69;
          v36 = 0xEA00000000007373;
        }

        if (byte_1F50F2678[v31 + 32])
        {
          v37 = v4;
        }

        else
        {
          v37 = v5;
        }

        v38 = 0xE800000000000000;
        if (!byte_1F50F2678[v31 + 32])
        {
          v38 = 0xE700000000000000;
        }

        if (byte_1F50F2678[v31 + 32] <= 1u)
        {
          v33 = v37;
        }

        else
        {
          v33 = v35;
        }

        if (byte_1F50F2678[v31 + 32] <= 1u)
        {
          v34 = v38;
        }

        else
        {
          v34 = v36;
        }
      }

      else if (byte_1F50F2678[v31 + 32] > 7u)
      {
        if (v32 == 8)
        {
          v34 = 0xE500000000000000;
          v33 = 0x6C616E6966;
        }

        else
        {
          v34 = 0xE700000000000000;
          if (v32 == 9)
          {
            v33 = 0x74696566726F66;
          }

          else
          {
            v33 = 0x6E776F6E6B6E75;
          }
        }
      }

      else if (v32 == 5)
      {
        v33 = 0x65646E6570737573;
        v34 = 0xE900000000000064;
      }

      else
      {
        if (v32 == 6)
        {
          v33 = 0x656C6C65636E6163;
        }

        else
        {
          v33 = 0x646579616C6564;
        }

        if (v32 == 6)
        {
          v34 = 0xE900000000000064;
        }

        else
        {
          v34 = 0xE700000000000000;
        }
      }

      if (v9 <= 4)
      {
        if (v9 <= 1)
        {
          if (v9)
          {
            v44 = 0xE800000000000000;
            if (v33 != v4)
            {
              goto LABEL_146;
            }
          }

          else
          {
            v44 = 0xE700000000000000;
            if (v33 != v5)
            {
              goto LABEL_146;
            }
          }
        }

        else
        {
          v45 = 0x656E6F7074736F70;
          if (v9 == 3)
          {
            v45 = 0x6B61657262;
            v46 = 0xE500000000000000;
          }

          else
          {
            v46 = 0xE900000000000064;
          }

          if (v9 == 2)
          {
            v47 = 0x6572676F72506E69;
          }

          else
          {
            v47 = v45;
          }

          if (v9 == 2)
          {
            v44 = 0xEA00000000007373;
          }

          else
          {
            v44 = v46;
          }

          if (v33 != v47)
          {
            goto LABEL_146;
          }
        }
      }

      else
      {
        v39 = 0x74696566726F66;
        if (v9 != 9)
        {
          v39 = 0x6E776F6E6B6E75;
        }

        v40 = 0xE700000000000000;
        if (v9 == 8)
        {
          v39 = 0x6C616E6966;
          v40 = 0xE500000000000000;
        }

        v41 = 0x656C6C65636E6163;
        if (v9 == 6)
        {
          v42 = 0xE900000000000064;
        }

        else
        {
          v41 = 0x646579616C6564;
          v42 = 0xE700000000000000;
        }

        if (v9 == 5)
        {
          v41 = 0x65646E6570737573;
          v42 = 0xE900000000000064;
        }

        if (v9 <= 7)
        {
          v43 = v41;
        }

        else
        {
          v43 = v39;
        }

        if (v9 <= 7)
        {
          v44 = v42;
        }

        else
        {
          v44 = v40;
        }

        if (v33 != v43)
        {
LABEL_146:
          v48 = sub_1D72646CC();

          if (v48)
          {
            goto LABEL_151;
          }

          ++v31;
          v4 = v24;
          v5 = v29;
          if (v31 == 11)
          {
            goto LABEL_4;
          }

          continue;
        }
      }

      break;
    }

    if (v34 != v44)
    {
      goto LABEL_146;
    }

LABEL_151:
    v4 = v24;
    v5 = v29;
    if (v8 >= v31)
    {
      goto LABEL_4;
    }

    if (v53)
    {
      v7 = *(v53 + v54);
      *(v53 + v54) = *(v53 + v52);
      *(v53 + v52) = v7;
      --v54;
      if (v52 != v50)
      {
        continue;
      }

LABEL_4:
      a3 = v51 + 1;
      v6 = v53;
      if (v51 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E0AB64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v30 = *a4;
    v4 = (*a4 + a3);
    v5 = result - a3;
LABEL_6:
    v28 = v4;
    v29 = a3;
    v6 = *(v30 + a3);
    v27 = v5;
    while (1)
    {
      if (v6 > 3u)
      {
        if (v6 > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xD000000000000017;
            v12 = 0x80000001D73BB880;
          }

          else
          {
            v11 = 0xD00000000000001CLL;
            v12 = 0x80000001D73BB8A0;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x6275536563726F66;
          }

          else
          {
            v11 = 0xD000000000000016;
          }

          if (v6 == 4)
          {
            v12 = 0xEC00000064657564;
          }

          else
          {
            v12 = 0x80000001D73BB860;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x6E6964756C637865;
        }

        else
        {
          v7 = 0x7263536563726F66;
        }

        if (v6 == 2)
        {
          v8 = 0xEF776F6461685367;
        }

        else
        {
          v8 = 0xEA00000000006D69;
        }

        v9 = 0xD000000000000013;
        if (v6)
        {
          v10 = 0x80000001D73BB820;
        }

        else
        {
          v9 = 0xD000000000000010;
          v10 = 0x80000001D73BB800;
        }

        if (v6 <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v6 <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = *(v4 - 1);
      v14 = 0xD000000000000017;
      if (v13 != 6)
      {
        v14 = 0xD00000000000001CLL;
      }

      v15 = 0x80000001D73BB8A0;
      if (v13 == 6)
      {
        v15 = 0x80000001D73BB880;
      }

      v16 = 0xD000000000000016;
      if (v13 == 4)
      {
        v16 = 0x6275536563726F66;
      }

      v17 = 0xEC00000064657564;
      if (v13 != 4)
      {
        v17 = 0x80000001D73BB860;
      }

      if (*(v4 - 1) <= 5u)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v13 == 2)
      {
        v18 = 0x6E6964756C637865;
      }

      else
      {
        v18 = 0x7263536563726F66;
      }

      if (v13 == 2)
      {
        v19 = 0xEF776F6461685367;
      }

      else
      {
        v19 = 0xEA00000000006D69;
      }

      v20 = 0xD000000000000013;
      if (*(v4 - 1))
      {
        v21 = 0x80000001D73BB820;
      }

      else
      {
        v20 = 0xD000000000000010;
        v21 = 0x80000001D73BB800;
      }

      if (*(v4 - 1) <= 1u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (*(v4 - 1) <= 3u)
      {
        v22 = v18;
      }

      else
      {
        v22 = v14;
      }

      if (*(v4 - 1) <= 3u)
      {
        v23 = v19;
      }

      else
      {
        v23 = v15;
      }

      if (v11 == v22 && v12 == v23)
      {

LABEL_5:
        a3 = v29 + 1;
        v4 = v28 + 1;
        v5 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v24 = sub_1D72646CC();

      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v30)
      {
        break;
      }

      v6 = *v4;
      *v4 = *(v4 - 1);
      *--v4 = v6;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5E0AE64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (1)
    {
      v23 = a3;
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      while (2)
      {
        v10 = 0xE600000000000000;
        v11 = 0x63696C617469;
        switch(v7)
        {
          case 1:
            v10 = 0xE400000000000000;
            v11 = 1684828002;
            break;
          case 2:
            v10 = 0xE800000000000000;
            v11 = 0x6465646E61707865;
            break;
          case 3:
            v11 = 0x65736E65646E6F63;
            v10 = 0xE900000000000064;
            break;
          case 4:
            v10 = 0xE900000000000065;
            v11 = 0x636170536F6E6F6DLL;
            break;
          case 5:
            v10 = 0xE800000000000000;
            v11 = 0x6C61636974726576;
            break;
          case 6:
            v11 = 0x696D6974704F6975;
            v10 = 0xEB0000000064657ALL;
            break;
          case 7:
            v12 = 0x4C7468676974;
            goto LABEL_27;
          case 8:
            v12 = 0x4C65736F6F6CLL;
LABEL_27:
            v11 = v12 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
            v10 = 0xEC000000676E6964;
            break;
          case 9:
            v10 = 0xE400000000000000;
            v11 = 1802723693;
            break;
          case 10:
            v11 = 0x656C797453646C6FLL;
            goto LABEL_25;
          case 11:
            v11 = 0xD000000000000012;
            v10 = 0x80000001D73B9100;
            break;
          case 12:
            v11 = 0x65536E7265646F6DLL;
            v10 = 0xEC00000073666972;
            break;
          case 13:
            v11 = 0x6F646E6572616C63;
            v10 = 0xEF7366697265536ELL;
            break;
          case 14:
            v11 = 0x6972655362616C73;
            v10 = 0xEA00000000007366;
            break;
          case 15:
            v11 = 0x6D726F6665657266;
LABEL_25:
            v10 = 0xEE00736669726553;
            break;
          case 16:
            v10 = 0xE900000000000066;
            v11 = 0x69726553736E6173;
            break;
          case 17:
            v11 = 0x746E656D616E726FLL;
            v10 = 0xEB00000000736C61;
            break;
          case 18:
            v10 = 0xE700000000000000;
            v11 = 0x73747069726373;
            break;
          case 19:
            v10 = 0xE800000000000000;
            v11 = 0x63696C6F626D7973;
            break;
          default:
            break;
        }

        v13 = 0xE600000000000000;
        v14 = 0x63696C617469;
        switch(*(v9 - 1))
        {
          case 1:
            v13 = 0xE400000000000000;
            if (v11 == 1684828002)
            {
              goto LABEL_66;
            }

            goto LABEL_67;
          case 2:
            v13 = 0xE800000000000000;
            if (v11 != 0x6465646E61707865)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 3:
            v13 = 0xE900000000000064;
            if (v11 != 0x65736E65646E6F63)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 4:
            v13 = 0xE900000000000065;
            if (v11 != 0x636170536F6E6F6DLL)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 5:
            v13 = 0xE800000000000000;
            if (v11 != 0x6C61636974726576)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 6:
            v18 = 0x696D6974704F6975;
            v19 = 6579578;
            goto LABEL_57;
          case 7:
            v15 = 0x61654C7468676974;
            v16 = 1735289188;
            goto LABEL_49;
          case 8:
            v14 = 0x61654C65736F6F6CLL;
            v13 = 0xEC000000676E6964;
            goto LABEL_65;
          case 9:
            v13 = 0xE400000000000000;
            if (v11 != 1802723693)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 10:
            v17 = 0x656C797453646C6FLL;
            goto LABEL_62;
          case 11:
            v13 = 0x80000001D73B9100;
            if (v11 != 0xD000000000000012)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 12:
            v15 = 0x65536E7265646F6DLL;
            v16 = 1936091506;
LABEL_49:
            v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v11 != v15)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 13:
            v13 = 0xEF7366697265536ELL;
            if (v11 != 0x6F646E6572616C63)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 14:
            v13 = 0xEA00000000007366;
            if (v11 != 0x6972655362616C73)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 15:
            v17 = 0x6D726F6665657266;
LABEL_62:
            v13 = 0xEE00736669726553;
            if (v11 != v17)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 16:
            v13 = 0xE900000000000066;
            if (v11 != 0x69726553736E6173)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 17:
            v18 = 0x746E656D616E726FLL;
            v19 = 7564385;
LABEL_57:
            v13 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v11 != v18)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 18:
            v13 = 0xE700000000000000;
            if (v11 != 0x73747069726373)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          case 19:
            v13 = 0xE800000000000000;
            if (v11 != 0x63696C6F626D7973)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          default:
LABEL_65:
            if (v11 != v14)
            {
              goto LABEL_67;
            }

LABEL_66:
            if (v10 != v13)
            {
LABEL_67:
              v20 = sub_1D72646CC();

              if ((v20 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (!v4)
              {
                __break(1u);
                return result;
              }

              v7 = *v9;
              *v9 = *(v9 - 1);
              *--v9 = v7;
              if (__CFADD__(v8++, 1))
              {
                goto LABEL_5;
              }

              continue;
            }

LABEL_5:
            a3 = v23 + 1;
            ++v5;
            --v6;
            if (v23 + 1 == a2)
            {
              return result;
            }

            break;
        }

        break;
      }
    }
  }

  return result;
}

uint64_t sub_1D5E0B444(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = 0xED00006874646957;
    v25 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v23 = v5;
    v24 = a3;
    v7 = *(v25 + a3);
    v22 = v6;
    while (1)
    {
      if (v7 > 2u)
      {
        if (v7 == 3)
        {
          v10 = 0xD000000000000011;
          v11 = 0x80000001D73BAB30;
        }

        else
        {
          if (v7 == 4)
          {
            v10 = 0x656C626978656C66;
          }

          else
          {
            v10 = 0xD000000000000014;
          }

          if (v7 == 4)
          {
            v11 = 0xEE00746867696548;
          }

          else
          {
            v11 = 0x80000001D73BAB60;
          }
        }
      }

      else
      {
        v8 = 0xD000000000000013;
        if (v7 == 1)
        {
          v8 = 0x656C626978656C66;
          v9 = v4;
        }

        else
        {
          v9 = 0x80000001D73BAB10;
        }

        if (v7)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0xD000000000000012;
        }

        if (v7)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0x80000001D73BAAE0;
        }
      }

      v12 = *(v5 - 1);
      v13 = 0xD000000000000014;
      if (v12 == 4)
      {
        v13 = 0x656C626978656C66;
      }

      v14 = 0xEE00746867696548;
      if (v12 != 4)
      {
        v14 = 0x80000001D73BAB60;
      }

      if (v12 == 3)
      {
        v13 = 0xD000000000000011;
        v14 = 0x80000001D73BAB30;
      }

      v15 = 0xD000000000000013;
      if (v12 == 1)
      {
        v15 = 0x656C626978656C66;
      }

      v16 = v4;
      if (v12 != 1)
      {
        v4 = 0x80000001D73BAB10;
      }

      if (!*(v5 - 1))
      {
        v15 = 0xD000000000000012;
        v4 = 0x80000001D73BAAE0;
      }

      if (*(v5 - 1) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (*(v5 - 1) <= 2u)
      {
        v18 = v4;
      }

      else
      {
        v18 = v14;
      }

      if (v10 == v17 && v11 == v18)
      {

        v4 = v16;
LABEL_5:
        a3 = v24 + 1;
        v5 = v23 + 1;
        v6 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_1D72646CC();

      v4 = v16;
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5E0B6A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v18 = a3;
    v7 = *(v4 + a3);
    v16 = v6;
    v17 = v5;
    while (1)
    {
      if (v7)
      {
        v8 = 0x73676E69646E6962;
      }

      else
      {
        v8 = 0x736E6F6974706FLL;
      }

      if (v7)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0xE700000000000000;
      }

      if (*(v5 - 1))
      {
        v10 = 0x73676E69646E6962;
      }

      else
      {
        v10 = 0x736E6F6974706FLL;
      }

      if (*(v5 - 1))
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v8 == v10 && v9 == v11)
      {

LABEL_5:
        a3 = v18 + 1;
        v5 = v17 + 1;
        v6 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D5E0B7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for FormatRegex();
  MEMORY[0x1EEE9AC00](v36, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v29 - v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (&v29 - v18);
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_6:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_1D5E190A4(v25, v19, type metadata accessor for FormatRegex);
      sub_1D5E190A4(v22, v14, type metadata accessor for FormatRegex);
      if (*v19 == *v14 && v19[1] == v14[1])
      {
        sub_1D5E1A778(v14);
        sub_1D5E1A778(v19);
LABEL_5:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_6;
      }

      v27 = sub_1D72646CC();
      sub_1D5E1A778(v14);
      sub_1D5E1A778(v19);
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      sub_1D5E1A7D4(v25, v10, type metadata accessor for FormatRegex);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D5E1A7D4(v10, v22, type metadata accessor for FormatRegex);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D5E0BA30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = 0xEC000000646E6962;
    v31 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v29 = v5;
    v30 = a3;
    v7 = *(v31 + a3);
    v28 = v6;
    while (1)
    {
      if (v7 > 3u)
      {
        if (v7 > 5u)
        {
          if (v7 == 6)
          {
            v13 = 0xE800000000000000;
            v12 = 0x73676E69646E6962;
          }

          else
          {
            v13 = 0xE300000000000000;
            v12 = 7105633;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0x6574616C706D6574;
          }

          else
          {
            v12 = 0x747865746E6F63;
          }

          if (v7 == 4)
          {
            v13 = 0xE800000000000000;
          }

          else
          {
            v13 = 0xE700000000000000;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x40736E6F6974706FLL;
        }

        else
        {
          v8 = 0x726F73727563;
        }

        if (v7 == 2)
        {
          v9 = 0xEE0074756F79616CLL;
        }

        else
        {
          v9 = 0xE600000000000000;
        }

        if (v7)
        {
          v10 = 0x40736E6F6974706FLL;
        }

        else
        {
          v10 = 0x736E6F6974706FLL;
        }

        if (v7)
        {
          v11 = v4;
        }

        else
        {
          v11 = 0xE700000000000000;
        }

        if (v7 <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (v7 <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = *(v5 - 1);
      v15 = 0x73676E69646E6962;
      if (v14 != 6)
      {
        v15 = 7105633;
      }

      v16 = 0xE300000000000000;
      if (v14 == 6)
      {
        v16 = 0xE800000000000000;
      }

      v17 = 0x6574616C706D6574;
      if (v14 == 4)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v17 = 0x747865746E6F63;
        v18 = 0xE700000000000000;
      }

      if (*(v5 - 1) <= 5u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v14 == 2)
      {
        v19 = 0x40736E6F6974706FLL;
      }

      else
      {
        v19 = 0x726F73727563;
      }

      if (v14 == 2)
      {
        v20 = 0xEE0074756F79616CLL;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      if (*(v5 - 1))
      {
        v21 = 0x40736E6F6974706FLL;
      }

      else
      {
        v21 = 0x736E6F6974706FLL;
      }

      v22 = v4;
      if (!*(v5 - 1))
      {
        v4 = 0xE700000000000000;
      }

      if (*(v5 - 1) <= 1u)
      {
        v19 = v21;
        v20 = v4;
      }

      if (*(v5 - 1) <= 3u)
      {
        v23 = v19;
      }

      else
      {
        v23 = v15;
      }

      if (*(v5 - 1) <= 3u)
      {
        v24 = v20;
      }

      else
      {
        v24 = v16;
      }

      if (v12 == v23 && v13 == v24)
      {

        v4 = v22;
LABEL_5:
        a3 = v30 + 1;
        v5 = v29 + 1;
        v6 = v28 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v25 = sub_1D72646CC();

      v4 = v22;
      if ((v25 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5E0BCFC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v7 = *v89;
    if (!*v89)
    {
      goto LABEL_153;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_117:
      v82 = *(v8 + 2);
      if (v82 >= 2)
      {
        while (*a3)
        {
          v83 = *&v8[16 * v82];
          v84 = *&v8[16 * v82 + 24];
          sub_1D5E13DEC((*a3 + v83), (*a3 + *&v8[16 * v82 + 16]), *a3 + v84, v7);
          if (v5)
          {
          }

          if (v84 < v83)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D62FF50C(v8);
          }

          if (v82 - 2 >= *(v8 + 2))
          {
            goto LABEL_141;
          }

          v85 = &v8[16 * v82];
          *v85 = v83;
          *(v85 + 1) = v84;
          result = sub_1D62FF480(v82 - 1);
          v82 = *(v8 + 2);
          if (v82 <= 1)
          {
          }
        }

        goto LABEL_151;
      }
    }

LABEL_147:
    result = sub_1D62FF50C(v8);
    v8 = result;
    goto LABEL_117;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      if (v7[*a3])
      {
        v11 = 0x646165687473616DLL;
      }

      else
      {
        v11 = 0x6465727574616566;
      }

      if (*(*a3 + v9))
      {
        v12 = 0x646165687473616DLL;
      }

      else
      {
        v12 = 0x6465727574616566;
      }

      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1D72646CC();
      }

      result = swift_bridgeObjectRelease_n();
      v7 = (v9 + 2);
      if (v9 + 2 < v6)
      {
        do
        {
          if (v7[v10])
          {
            v15 = 0x646165687473616DLL;
          }

          else
          {
            v15 = 0x6465727574616566;
          }

          if (v7[v10 - 1])
          {
            v16 = 0x646165687473616DLL;
          }

          else
          {
            v16 = 0x6465727574616566;
          }

          if (v15 == v16)
          {
            result = swift_bridgeObjectRelease_n();
            if (v13)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v14 = sub_1D72646CC();
            result = swift_bridgeObjectRelease_n();
            if ((v13 ^ v14))
            {
              goto LABEL_28;
            }
          }

          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_28:
      if (v13)
      {
LABEL_29:
        if (v7 < v9)
        {
          goto LABEL_144;
        }

        if (v9 < v7)
        {
          v17 = v7 - 1;
          v18 = v9;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_150;
              }

              v19 = v18[v21];
              v18[v21] = v17[v21];
              v17[v21] = v19;
            }
          }

          while (++v18 < v17--);
        }
      }
    }

    v22 = a3[1];
    if (v7 < v22)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_143;
      }

      if (&v7[-v9] < a4)
      {
        break;
      }
    }

LABEL_64:
    if (v7 < v9)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = v9;
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v36 = *(v8 + 2);
    v35 = *(v8 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_1D698BA94((v35 > 1), v36 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v37;
    v38 = &v8[16 * v36];
    *(v38 + 4) = v34;
    *(v38 + 5) = v7;
    v39 = *v89;
    if (!*v89)
    {
      goto LABEL_152;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v8 + 4);
          v42 = *(v8 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_84:
          if (v44)
          {
            goto LABEL_131;
          }

          v57 = &v8[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_134;
          }

          v63 = &v8[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_138;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v67 = &v8[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_98:
        if (v62)
        {
          goto LABEL_133;
        }

        v70 = &v8[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_136;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_105:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_149;
        }

        v79 = *&v8[16 * v78 + 32];
        v80 = *&v8[16 * v40 + 40];
        sub_1D5E13DEC((*a3 + v79), (*a3 + *&v8[16 * v40 + 32]), *a3 + v80, v39);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v78 >= *(v8 + 2))
        {
          goto LABEL_128;
        }

        v81 = &v8[16 * v78];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        result = sub_1D62FF480(v40);
        v37 = *(v8 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v8[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_129;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_130;
      }

      v52 = &v8[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_132;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_135;
      }

      if (v56 >= v48)
      {
        v74 = &v8[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_139;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_84;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_145;
  }

  if (v9 + a4 >= v22)
  {
    v23 = a3[1];
  }

  else
  {
    v23 = (v9 + a4);
  }

  if (v23 < v9)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v7 == v23)
  {
    goto LABEL_64;
  }

  v86 = v9;
  v87 = v5;
  v24 = *a3;
  v25 = &v7[*a3];
  v26 = v9 - v7;
LABEL_50:
  v27 = v7[v24];
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (v27)
    {
      v30 = 0x646165687473616DLL;
    }

    else
    {
      v30 = 0x6465727574616566;
    }

    if (*(v29 - 1))
    {
      v31 = 0x646165687473616DLL;
    }

    else
    {
      v31 = 0x6465727574616566;
    }

    if (v30 == v31)
    {
      swift_bridgeObjectRelease_n();
LABEL_49:
      ++v7;
      ++v25;
      --v26;
      if (v7 == v23)
      {
        v7 = v23;
        v9 = v86;
        v5 = v87;
        goto LABEL_64;
      }

      goto LABEL_50;
    }

    v32 = sub_1D72646CC();
    result = swift_bridgeObjectRelease_n();
    if ((v32 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v24)
    {
      break;
    }

    v27 = *v29;
    *v29 = *(v29 - 1);
    *--v29 = v27;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_1D5E0C390(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v114 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_199:
    v10 = *v114;
    if (!*v114)
    {
      goto LABEL_238;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_232:
      result = sub_1D62FF50C(v9);
      v9 = result;
    }

    v104 = v5;
    v105 = v9;
    v9 = *(v9 + 16);
    if (v9 >= 2)
    {
      while (*v6)
      {
        v106 = *&v105[16 * v9];
        v5 = *&v105[16 * v9 + 24];
        sub_1D5E140B4((*v6 + 16 * v106), (*v6 + 16 * *&v105[16 * v9 + 16]), (*v6 + 16 * v5), v10);
        if (v104)
        {
        }

        if (v5 < v106)
        {
          goto LABEL_225;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D62FF50C(v105);
        }

        if (v9 - 2 >= *(v105 + 2))
        {
          goto LABEL_226;
        }

        v107 = &v105[16 * v9];
        *v107 = v106;
        *(v107 + 1) = v5;
        result = sub_1D62FF480(v9 - 1);
        v9 = *(v105 + 2);
        if (v9 <= 1)
        {
        }
      }

      goto LABEL_236;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 < v7)
  {
    v118 = v7;
    v112 = v9;
    v12 = *v6;
    v115 = v8;
    v13 = (*v6 + 16 * v8);
    v10 = *v13;
    v14 = v13[1];
    v15 = v8 + 1;
    v126 = *(*v6 + 16 * v11);
    v16 = FormatItemKind.description.getter();
    v18 = v17;
    v110 = v5;
    if (v16 == FormatItemKind.description.getter() && v18 == v19)
    {
      v120 = 0;
    }

    else
    {
      v120 = sub_1D72646CC();
    }

    sub_1D5CBA110(v126, *(&v126 + 1));
    sub_1D5CBA110(v10, v14);

    sub_1D5CBA0FC(v10, v14);
    result = sub_1D5CBA0FC(v126, *(&v126 + 1));
    v20 = v115 + 2;
    v21 = (v12 + 16 * v115 + 24);
    v22 = 16 * v115 + 16;
    v23 = v15;
    while (2)
    {
      v27 = v20;
      v25 = v23;
      v26 = v22;
      if (v20 < v118)
      {
        v5 = v21[2];
        v28 = *(v21 - 1);
        v29 = *v21;
        v127 = v21[1];
        v10 = 0xE700000000000000;
        v30 = 0x656C6369747261;
        switch(v5)
        {
          case 0:
            goto LABEL_44;
          case 1:
            v10 = 0xE500000000000000;
            v31 = 1970500457;
            goto LABEL_35;
          case 2:
            v10 = 0xE800000000000000;
            v30 = 0x6465626D45626577;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 3:
            v10 = 0xEA00000000006B63;
            v30 = 0x6172546F69647561;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 4:
            v10 = 0xE300000000000000;
            v30 = 6775156;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 5:
            v10 = 0xE500000000000000;
            v31 = 1919902579;
LABEL_35:
            v30 = v31 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 6:
            v10 = 0xE800000000000000;
            v30 = 0x676E69646E617473;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 7:
            v30 = 0x74656B63617262;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 8:
            v10 = 0xE800000000000000;
            v30 = 0x65726F6353786F62;
            goto LABEL_44;
          case 9:
            v30 = 0x726F6353656E696CLL;
            v10 = 0xE900000000000065;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 10:
            v30 = 0x65527972756A6E69;
            v10 = 0xEC00000074726F70;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 11:
            v10 = 0xE900000000000072;
            v30 = 0x6579616C5079656BLL;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 12:
            v10 = 0xE600000000000000;
            v30 = 0x656C7A7A7570;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 13:
            v30 = 0x7954656C7A7A7570;
            v10 = 0xEA00000000006570;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 14:
            v30 = 0x7453656C7A7A7570;
            v10 = 0xEF63697473697461;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          case 15:
            v10 = 0xE600000000000000;
            v30 = 0x657069636572;
            if (v29 > 0xF)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          default:
            v10 = v21[2];
            if (v29 <= 0xF)
            {
LABEL_44:
              v33 = 0xE700000000000000;
              v32 = 0x656C6369747261;
              switch(v29)
              {
                case 0uLL:
                  break;
                case 1uLL:
                  v33 = 0xE500000000000000;
                  v32 = 0x6575737369;
                  break;
                case 2uLL:
                  v33 = 0xE800000000000000;
                  v32 = 0x6465626D45626577;
                  break;
                case 3uLL:
                  v33 = 0xEA00000000006B63;
                  v32 = 0x6172546F69647561;
                  break;
                case 4uLL:
                  v33 = 0xE300000000000000;
                  v32 = 6775156;
                  break;
                case 5uLL:
                  v33 = 0xE500000000000000;
                  v32 = 0x65726F6373;
                  break;
                case 6uLL:
                  v33 = 0xE800000000000000;
                  v32 = 0x676E69646E617473;
                  break;
                case 7uLL:
                  v32 = 0x74656B63617262;
                  break;
                case 8uLL:
                  v33 = 0xE800000000000000;
                  v32 = 0x65726F6353786F62;
                  break;
                case 9uLL:
                  v32 = 0x726F6353656E696CLL;
                  v33 = 0xE900000000000065;
                  break;
                case 0xAuLL:
                  v32 = 0x65527972756A6E69;
                  v33 = 0xEC00000074726F70;
                  break;
                case 0xBuLL:
                  v33 = 0xE900000000000072;
                  v32 = 0x6579616C5079656BLL;
                  break;
                case 0xCuLL:
                  v33 = 0xE600000000000000;
                  v32 = 0x656C7A7A7570;
                  break;
                case 0xDuLL:
                  v32 = 0x7954656C7A7A7570;
                  v33 = 0xEA00000000006570;
                  break;
                case 0xEuLL:
                  v32 = 0x7453656C7A7A7570;
                  v33 = 0xEF63697473697461;
                  break;
                case 0xFuLL:
                  v33 = 0xE600000000000000;
                  v32 = 0x657069636572;
                  break;
                default:
                  goto LABEL_36;
              }
            }

            else
            {
LABEL_36:
              v32 = *(v21 - 1);
              v33 = *v21;
            }

            v122 = v23;
            v124 = v22;
            if (v30 == v32 && v10 == v33)
            {
              v24 = 0;
            }

            else
            {
              v24 = sub_1D72646CC();
            }

            sub_1D5CBA110(v28, v29);
            sub_1D5CBA110(v127, v5);
            sub_1D5CBA110(v127, v5);
            sub_1D5CBA110(v28, v29);

            sub_1D5CBA0FC(v28, v29);
            result = sub_1D5CBA0FC(v127, v5);
            v20 = v27 + 1;
            v21 += 2;
            v25 = v122;
            v26 = v124;
            v23 = v122 + 1;
            v22 = v124 + 16;
            if (((v120 ^ v24) & 1) == 0)
            {
              continue;
            }

            goto LABEL_65;
        }
      }

      break;
    }

LABEL_65:
    v6 = a3;
    if ((v120 & 1) == 0)
    {
      v11 = v27;
      v5 = v110;
      v9 = v112;
LABEL_76:
      v10 = v115;
      goto LABEL_77;
    }

    v34 = v115;
    v9 = v112;
    if (v27 < v115)
    {
      goto LABEL_229;
    }

    if (v115 < v27)
    {
      v35 = 16 * v115;
      do
      {
        if (v34 != v25)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_235;
          }

          v38 = *(v37 + v35);
          *(v37 + v35) = *(v37 + v26);
          *(v37 + v26) = v38;
        }

        ++v34;
        v26 -= 16;
        v35 += 16;
      }

      while (v34 < v25--);
      v11 = v27;
      v5 = v110;
      goto LABEL_76;
    }

    v11 = v27;
    v5 = v110;
    v10 = v115;
  }

LABEL_77:
  v39 = v6[1];
  if (v11 >= v39)
  {
    v8 = v11;
LABEL_145:
    if (v8 < v10)
    {
      goto LABEL_227;
    }

    goto LABEL_146;
  }

  v8 = v11;
  v74 = __OFSUB__(v11, v10);
  v40 = v11 - v10;
  if (v74)
  {
    goto LABEL_228;
  }

  if (v40 >= a4)
  {
    goto LABEL_145;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_230;
  }

  if (v10 + a4 < v39)
  {
    v39 = v10 + a4;
  }

  if (v39 < v10)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  if (v8 == v39)
  {
    goto LABEL_145;
  }

  v116 = v10;
  v117 = v39;
  v111 = v5;
  v113 = v9;
  v125 = *v6;
  v41 = *v6 + 16 * v8 - 16;
  v42 = v10 - v8;
  v43 = v8;
  while (2)
  {
    v121 = v41;
    v123 = v43;
    v44 = *(v125 + 16 * v43);
    v119 = v42;
LABEL_89:
    v46 = *v41;
    v45 = *(v41 + 8);
    v47 = *(&v44 + 1);
    v48 = 0xE700000000000000;
    v49 = 0x656C6369747261;
    switch(*(&v44 + 1))
    {
      case 0:
        goto LABEL_119;
      case 1:
        v48 = 0xE500000000000000;
        v50 = 1970500457;
        goto LABEL_110;
      case 2:
        v48 = 0xE800000000000000;
        v49 = 0x6465626D45626577;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 3:
        v48 = 0xEA00000000006B63;
        v49 = 0x6172546F69647561;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 4:
        v48 = 0xE300000000000000;
        v49 = 6775156;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 5:
        v48 = 0xE500000000000000;
        v50 = 1919902579;
LABEL_110:
        v49 = v50 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 6:
        v48 = 0xE800000000000000;
        v49 = 0x676E69646E617473;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 7:
        v49 = 0x74656B63617262;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 8:
        v48 = 0xE800000000000000;
        v49 = 0x65726F6353786F62;
        goto LABEL_119;
      case 9:
        v49 = 0x726F6353656E696CLL;
        v48 = 0xE900000000000065;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 0xALL:
        v49 = 0x65527972756A6E69;
        v48 = 0xEC00000074726F70;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 0xBLL:
        v48 = 0xE900000000000072;
        v49 = 0x6579616C5079656BLL;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 0xCLL:
        v48 = 0xE600000000000000;
        v49 = 0x656C7A7A7570;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 0xDLL:
        v49 = 0x7954656C7A7A7570;
        v48 = 0xEA00000000006570;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 0xELL:
        v49 = 0x7453656C7A7A7570;
        v48 = 0xEF63697473697461;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      case 0xFLL:
        v48 = 0xE600000000000000;
        v49 = 0x657069636572;
        if (v45 > 0xF)
        {
          goto LABEL_111;
        }

        goto LABEL_119;
      default:
        v48 = *(&v44 + 1);
        v49 = v44;
        if (v45 <= 0xF)
        {
LABEL_119:
          v52 = 0xE700000000000000;
          v51 = 0x656C6369747261;
          switch(v45)
          {
            case 0uLL:
              break;
            case 1uLL:
              v52 = 0xE500000000000000;
              v51 = 0x6575737369;
              break;
            case 2uLL:
              v52 = 0xE800000000000000;
              v51 = 0x6465626D45626577;
              break;
            case 3uLL:
              v52 = 0xEA00000000006B63;
              v51 = 0x6172546F69647561;
              break;
            case 4uLL:
              v52 = 0xE300000000000000;
              v51 = 6775156;
              break;
            case 5uLL:
              v52 = 0xE500000000000000;
              v51 = 0x65726F6373;
              break;
            case 6uLL:
              v52 = 0xE800000000000000;
              v51 = 0x676E69646E617473;
              break;
            case 7uLL:
              v51 = 0x74656B63617262;
              break;
            case 8uLL:
              v52 = 0xE800000000000000;
              v51 = 0x65726F6353786F62;
              break;
            case 9uLL:
              v51 = 0x726F6353656E696CLL;
              v52 = 0xE900000000000065;
              break;
            case 0xAuLL:
              v51 = 0x65527972756A6E69;
              v52 = 0xEC00000074726F70;
              break;
            case 0xBuLL:
              v52 = 0xE900000000000072;
              v51 = 0x6579616C5079656BLL;
              break;
            case 0xCuLL:
              v52 = 0xE600000000000000;
              v51 = 0x656C7A7A7570;
              break;
            case 0xDuLL:
              v51 = 0x7954656C7A7A7570;
              v52 = 0xEA00000000006570;
              break;
            case 0xEuLL:
              v51 = 0x7453656C7A7A7570;
              v52 = 0xEF63697473697461;
              break;
            case 0xFuLL:
              v52 = 0xE600000000000000;
              v51 = 0x657069636572;
              break;
            default:
              goto LABEL_111;
          }
        }

        else
        {
LABEL_111:
          v51 = *v41;
          v52 = *(v41 + 8);
        }

        v128 = v44;
        if (v49 == v51 && v48 == v52)
        {
          sub_1D5CBA110(v46, v45);
          sub_1D5CBA110(v128, v47);
          sub_1D5CBA110(v128, v47);
          sub_1D5CBA110(v46, v45);

          sub_1D5CBA0FC(v46, v45);
          sub_1D5CBA0FC(v128, v47);
LABEL_87:
          v43 = v123 + 1;
          v41 = v121 + 16;
          v42 = v119 - 1;
          if (v123 + 1 != v117)
          {
            continue;
          }

          v10 = v116;
          v8 = v117;
          v6 = a3;
          v5 = v111;
          v9 = v113;
          if (v117 < v116)
          {
            goto LABEL_227;
          }

LABEL_146:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D698BA94(0, *(v9 + 16) + 1, 1, v9);
            v9 = result;
          }

          v56 = v9;
          v57 = *(v9 + 16);
          v58 = v56;
          v59 = *(v56 + 24);
          v60 = v57 + 1;
          if (v57 >= v59 >> 1)
          {
            result = sub_1D698BA94((v59 > 1), v57 + 1, 1, v58);
            v58 = result;
          }

          *(v58 + 16) = v60;
          v61 = v58 + 16 * v57;
          *(v61 + 32) = v10;
          *(v61 + 40) = v8;
          v62 = *v114;
          if (!*v114)
          {
            goto LABEL_237;
          }

          if (v57)
          {
            v9 = v58;
            while (1)
            {
              v63 = v60 - 1;
              if (v60 >= 4)
              {
                break;
              }

              if (v60 == 3)
              {
                v64 = *(v9 + 32);
                v65 = *(v9 + 40);
                v74 = __OFSUB__(v65, v64);
                v66 = v65 - v64;
                v67 = v74;
LABEL_166:
                if (v67)
                {
                  goto LABEL_216;
                }

                v80 = (v9 + 16 * v60);
                v82 = *v80;
                v81 = v80[1];
                v83 = __OFSUB__(v81, v82);
                v84 = v81 - v82;
                v85 = v83;
                if (v83)
                {
                  goto LABEL_219;
                }

                v86 = (v9 + 32 + 16 * v63);
                v88 = *v86;
                v87 = v86[1];
                v74 = __OFSUB__(v87, v88);
                v89 = v87 - v88;
                if (v74)
                {
                  goto LABEL_222;
                }

                if (__OFADD__(v84, v89))
                {
                  goto LABEL_223;
                }

                if (v84 + v89 >= v66)
                {
                  if (v66 < v89)
                  {
                    v63 = v60 - 2;
                  }

                  goto LABEL_187;
                }

                goto LABEL_180;
              }

              v90 = (v9 + 16 * v60);
              v92 = *v90;
              v91 = v90[1];
              v74 = __OFSUB__(v91, v92);
              v84 = v91 - v92;
              v85 = v74;
LABEL_180:
              if (v85)
              {
                goto LABEL_218;
              }

              v93 = v9 + 16 * v63;
              v95 = *(v93 + 32);
              v94 = *(v93 + 40);
              v74 = __OFSUB__(v94, v95);
              v96 = v94 - v95;
              if (v74)
              {
                goto LABEL_221;
              }

              if (v96 < v84)
              {
                goto LABEL_4;
              }

LABEL_187:
              v101 = v9;
              v9 = v63 - 1;
              if (v63 - 1 >= v60)
              {
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
LABEL_214:
                __break(1u);
LABEL_215:
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
                goto LABEL_231;
              }

              if (!*v6)
              {
                goto LABEL_234;
              }

              v102 = *&v101[16 * v9 + 32];
              v10 = *&v101[16 * v63 + 40];
              sub_1D5E140B4((*v6 + 16 * v102), (*v6 + 16 * *&v101[16 * v63 + 32]), (*v6 + 16 * v10), v62);
              if (v5)
              {
              }

              if (v10 < v102)
              {
                goto LABEL_212;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_1D62FF50C(v101);
              }

              if (v9 >= *(v101 + 2))
              {
                goto LABEL_213;
              }

              v103 = &v101[16 * v9];
              *(v103 + 4) = v102;
              *(v103 + 5) = v10;
              result = sub_1D62FF480(v63);
              v9 = v101;
              v60 = *(v101 + 2);
              if (v60 <= 1)
              {
                goto LABEL_4;
              }
            }

            v68 = v9 + 32 + 16 * v60;
            v69 = *(v68 - 64);
            v70 = *(v68 - 56);
            v74 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            if (v74)
            {
              goto LABEL_214;
            }

            v73 = *(v68 - 48);
            v72 = *(v68 - 40);
            v74 = __OFSUB__(v72, v73);
            v66 = v72 - v73;
            v67 = v74;
            if (v74)
            {
              goto LABEL_215;
            }

            v75 = (v9 + 16 * v60);
            v77 = *v75;
            v76 = v75[1];
            v74 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v74)
            {
              goto LABEL_217;
            }

            v74 = __OFADD__(v66, v78);
            v79 = v66 + v78;
            if (v74)
            {
              goto LABEL_220;
            }

            if (v79 >= v71)
            {
              v97 = (v9 + 32 + 16 * v63);
              v99 = *v97;
              v98 = v97[1];
              v74 = __OFSUB__(v98, v99);
              v100 = v98 - v99;
              if (v74)
              {
                goto LABEL_224;
              }

              if (v66 < v100)
              {
                v63 = v60 - 2;
              }

              goto LABEL_187;
            }

            goto LABEL_166;
          }

          v9 = v58;
LABEL_4:
          v7 = v6[1];
          if (v8 >= v7)
          {
            goto LABEL_199;
          }

          goto LABEL_5;
        }

        v53 = sub_1D72646CC();
        sub_1D5CBA110(v46, v45);
        sub_1D5CBA110(v128, v47);
        sub_1D5CBA110(v128, v47);
        sub_1D5CBA110(v46, v45);

        sub_1D5CBA0FC(v46, v45);
        result = sub_1D5CBA0FC(v128, v47);
        if ((v53 & 1) == 0)
        {
          goto LABEL_87;
        }

        if (v125)
        {
          v54 = *v41;
          v44 = *(v41 + 16);
          *v41 = v44;
          *(v41 + 16) = v54;
          v41 -= 16;
          if (__CFADD__(v42++, 1))
          {
            goto LABEL_87;
          }

          goto LABEL_89;
        }

        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
        return result;
    }
  }
}

uint64_t sub_1D5E0D3B0(uint64_t result, uint64_t a2, unsigned __int8 *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3;
  v118 = result;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_171:
    v8 = *v118;
    if (!*v118)
    {
      goto LABEL_210;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_173:
      v108 = v5;
      v126 = v9;
      v109 = *(v9 + 2);
      if (v109 >= 2)
      {
        while (1)
        {
          v110 = *v6;
          if (!*v6)
          {
            goto LABEL_208;
          }

          v111 = v6;
          v5 = v109 - 1;
          v6 = *&v9[16 * v109];
          v112 = *&v9[16 * v109 + 24];
          sub_1D5E14D04(&v6[v110], (v110 + *&v9[16 * v109 + 16]), v110 + v112, v8);
          if (v108)
          {
          }

          if (v112 < v6)
          {
            goto LABEL_197;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D62FF50C(v9);
          }

          if (v109 - 2 >= *(v9 + 2))
          {
            goto LABEL_198;
          }

          v113 = &v9[16 * v109];
          *v113 = v6;
          *(v113 + 1) = v112;
          v126 = v9;
          result = sub_1D62FF480(v109 - 1);
          v9 = v126;
          v109 = *(v126 + 2);
          v6 = v111;
          if (v109 <= 1)
          {
          }
        }
      }
    }

LABEL_204:
    result = sub_1D62FF50C(v9);
    v9 = result;
    goto LABEL_173;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) < v7)
    {
      v12 = v6;
      v13 = *v6;
      v14 = v8 + 1;
      v15 = v11[v13];
      v16 = v8[v13];
      v125 = v15;
      v124 = v16;
      result = _s8NewsFeed19FormatGroupItemKindO1loiySbAC_ACtFZ_0(&v125, &v124);
      __dst = result;
      v116 = v8;
      v8 += 2;
      if (v8 < v7)
      {
        v14 = (v7 - 1);
        while (1)
        {
          v19 = v8[v13];
          if (v19 <= 2)
          {
            if (v8[v13])
            {
              v20 = 0xE700000000000000;
              if (v19 == 1)
              {
                v21 = 0x72656874616577;
              }

              else
              {
                v21 = 0x6C6C6177796170;
              }
            }

            else
            {
              v20 = 0xE300000000000000;
              v21 = 6775156;
            }
          }

          else if (v8[v13] > 4u)
          {
            if (v19 == 5)
            {
              v20 = 0xE800000000000000;
              v21 = 0x6465626D45626577;
            }

            else
            {
              v20 = 0xE400000000000000;
              v21 = 1684366694;
            }
          }

          else if (v19 == 3)
          {
            v20 = 0xE800000000000000;
            v21 = 0x656E696C64616568;
          }

          else
          {
            v20 = 0xE500000000000000;
            v21 = 0x6575737369;
          }

          v22 = v8[v13 - 1];
          v23 = 0x6465626D45626577;
          if (v22 != 5)
          {
            v23 = 1684366694;
          }

          v24 = 0xE400000000000000;
          if (v22 == 5)
          {
            v24 = 0xE800000000000000;
          }

          v25 = 0x656E696C64616568;
          if (v22 != 3)
          {
            v25 = 0x6575737369;
          }

          v26 = 0xE500000000000000;
          if (v22 == 3)
          {
            v26 = 0xE800000000000000;
          }

          if (v8[v13 - 1] <= 4u)
          {
            v23 = v25;
            v24 = v26;
          }

          v27 = 0x6C6C6177796170;
          if (v22 == 1)
          {
            v27 = 0x72656874616577;
          }

          v28 = 0xE700000000000000;
          if (!v8[v13 - 1])
          {
            v27 = 6775156;
            v28 = 0xE300000000000000;
          }

          if (v8[v13 - 1] <= 2u)
          {
            v29 = v27;
          }

          else
          {
            v29 = v23;
          }

          if (v8[v13 - 1] <= 2u)
          {
            v30 = v28;
          }

          else
          {
            v30 = v24;
          }

          if (v21 == v29 && v20 == v30)
          {

            if (__dst)
            {
              v31 = v8 - 1;
              v6 = v12;
              v10 = v116;
              goto LABEL_49;
            }
          }

          else
          {
            v17 = sub_1D72646CC();

            v18 = __dst ^ v17;
            v12 = a3;
            if (v18)
            {
              v14 = v8 - 1;
              break;
            }
          }

          if (v7 == ++v8)
          {
            v8 = v7;
            break;
          }
        }
      }

      v31 = v14;
      v11 = v8;
      v6 = v12;
      v10 = v116;
      if (__dst)
      {
LABEL_49:
        if (v8 < v10)
        {
          goto LABEL_201;
        }

        if (v10 <= v31)
        {
          v56 = v8 - 1;
          v57 = v10;
          do
          {
            if (v57 != v56)
            {
              v59 = *v6;
              if (!*v6)
              {
                goto LABEL_207;
              }

              v60 = v57[v59];
              v57[v59] = v56[v59];
              v56[v59] = v60;
            }
          }

          while (++v57 < v56--);
        }

        v11 = v8;
      }
    }

    v32 = *(v6 + 1);
    v8 = v11;
    if (v11 < v32)
    {
      v33 = v11 - v10;
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_200;
      }

      if (v33 < a4)
      {
        break;
      }
    }

LABEL_120:
    if (v8 < v10)
    {
      goto LABEL_199;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v62 = *(v9 + 2);
    v61 = *(v9 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_1D698BA94((v61 > 1), v62 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v63;
    v64 = &v9[16 * v62];
    *(v64 + 4) = v10;
    *(v64 + 5) = v8;
    __dstb = *v118;
    if (!*v118)
    {
      goto LABEL_209;
    }

    if (v62)
    {
      while (1)
      {
        v65 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_140:
          if (v69)
          {
            goto LABEL_188;
          }

          v82 = &v9[16 * v63];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_191;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_194;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_195;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v63 - 2;
            }

            goto LABEL_161;
          }

          goto LABEL_154;
        }

        v92 = &v9[16 * v63];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_154:
        if (v87)
        {
          goto LABEL_190;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_193;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_161:
        v103 = v65 - 1;
        if (v65 - 1 >= v63)
        {
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

        v104 = *v6;
        if (!*v6)
        {
          goto LABEL_206;
        }

        v105 = v8;
        v106 = v6;
        v6 = *&v9[16 * v103 + 32];
        v8 = *&v9[16 * v65 + 40];
        sub_1D5E14D04(&v6[v104], (v104 + *&v9[16 * v65 + 32]), &v8[v104], __dstb);
        if (v5)
        {
        }

        if (v8 < v6)
        {
          goto LABEL_184;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D62FF50C(v9);
        }

        if (v103 >= *(v9 + 2))
        {
          goto LABEL_185;
        }

        v107 = &v9[16 * v103];
        *(v107 + 4) = v6;
        *(v107 + 5) = v8;
        v126 = v9;
        result = sub_1D62FF480(v65);
        v9 = v126;
        v63 = *(v126 + 2);
        v8 = v105;
        v6 = v106;
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_186;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_187;
      }

      v77 = &v9[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_189;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_192;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_196;
        }

        if (v68 < v102)
        {
          v65 = v63 - 2;
        }

        goto LABEL_161;
      }

      goto LABEL_140;
    }

LABEL_3:
    v7 = *(v6 + 1);
    if (v8 >= v7)
    {
      goto LABEL_171;
    }
  }

  v34 = &v10[a4];
  if (__OFADD__(v10, a4))
  {
    goto LABEL_202;
  }

  if (v34 >= v32)
  {
    v34 = *(v6 + 1);
  }

  if (v34 < v10)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v8 == v34)
  {
    goto LABEL_120;
  }

  v114 = v5;
  v35 = v10;
  v36 = *v6;
  v37 = &v8[*v6];
  v117 = v35;
  v38 = v35 - v8;
  v120 = v34;
LABEL_63:
  __dsta = v8;
  v39 = v8[v36];
  v40 = v38;
  v41 = v37;
  while (1)
  {
    if (v39 <= 2u)
    {
      if (v39 == 1)
      {
        v44 = 0x72656874616577;
      }

      else
      {
        v44 = 0x6C6C6177796170;
      }

      if (v39)
      {
        v42 = v44;
      }

      else
      {
        v42 = 6775156;
      }

      if (v39)
      {
        v43 = 0xE700000000000000;
      }

      else
      {
        v43 = 0xE300000000000000;
      }
    }

    else if (v39 > 4u)
    {
      if (v39 == 5)
      {
        v43 = 0xE800000000000000;
        v42 = 0x6465626D45626577;
      }

      else
      {
        v43 = 0xE400000000000000;
        v42 = 1684366694;
      }
    }

    else
    {
      if (v39 == 3)
      {
        v42 = 0x656E696C64616568;
      }

      else
      {
        v42 = 0x6575737369;
      }

      if (v39 == 3)
      {
        v43 = 0xE800000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }
    }

    v45 = *(v41 - 1);
    v46 = 0x6465626D45626577;
    if (v45 != 5)
    {
      v46 = 1684366694;
    }

    v47 = 0xE400000000000000;
    if (v45 == 5)
    {
      v47 = 0xE800000000000000;
    }

    v48 = 0x656E696C64616568;
    if (v45 != 3)
    {
      v48 = 0x6575737369;
    }

    v49 = 0xE500000000000000;
    if (v45 == 3)
    {
      v49 = 0xE800000000000000;
    }

    if (*(v41 - 1) <= 4u)
    {
      v46 = v48;
      v47 = v49;
    }

    if (v45 == 1)
    {
      v50 = 0x72656874616577;
    }

    else
    {
      v50 = 0x6C6C6177796170;
    }

    v51 = 0xE700000000000000;
    if (!*(v41 - 1))
    {
      v50 = 6775156;
      v51 = 0xE300000000000000;
    }

    if (*(v41 - 1) <= 2u)
    {
      v52 = v50;
    }

    else
    {
      v52 = v46;
    }

    if (*(v41 - 1) <= 2u)
    {
      v53 = v51;
    }

    else
    {
      v53 = v47;
    }

    if (v42 == v52 && v43 == v53)
    {

LABEL_62:
      v8 = __dsta + 1;
      ++v37;
      --v38;
      if (__dsta + 1 == v120)
      {
        v8 = v120;
        v5 = v114;
        v6 = a3;
        v10 = v117;
        goto LABEL_120;
      }

      goto LABEL_63;
    }

    v54 = sub_1D72646CC();

    if ((v54 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (!v36)
    {
      break;
    }

    v39 = *v41;
    *v41 = *(v41 - 1);
    *--v41 = v39;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
  return result;
}

uint64_t sub_1D5E0DE24(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v114 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_183:
    v8 = *v114;
    if (!*v114)
    {
      goto LABEL_222;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_185:
      v106 = v5;
      v107 = *(v10 + 2);
      if (v107 >= 2)
      {
        while (1)
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_220;
          }

          v109 = v6;
          v5 = v107 - 1;
          v6 = *&v10[16 * v107];
          v110 = *&v10[16 * v107 + 24];
          sub_1D5E152D0(v6 + v108, (v108 + *&v10[16 * v107 + 16]), v108 + v110, v8);
          if (v106)
          {
          }

          if (v110 < v6)
          {
            goto LABEL_209;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D62FF50C(v10);
          }

          if (v107 - 2 >= *(v10 + 2))
          {
            goto LABEL_210;
          }

          v111 = &v10[16 * v107];
          *v111 = v6;
          *(v111 + 1) = v110;
          result = sub_1D62FF480(v107 - 1);
          v107 = *(v10 + 2);
          v6 = v109;
          if (v107 <= 1)
          {
          }
        }
      }
    }

LABEL_216:
    result = sub_1D62FF50C(v10);
    v10 = result;
    goto LABEL_185;
  }

  v8 = 0;
  v9 = 0xEB00000000646574;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_80;
    }

    v115 = v11;
    v12 = *v6;
    if (v8[*v6] > 1u)
    {
      if (v8[*v6] == 2)
      {
        v15 = 0x6867696C68676968;
        v13 = 0xEB00000000646574;
        goto LABEL_13;
      }

      v13 = 0xE800000000000000;
      v14 = 0x7463656C6573;
    }

    else
    {
      if (v8[*v6])
      {
        v13 = 0xE700000000000000;
        v15 = 0x64657375636F66;
        goto LABEL_13;
      }

      v13 = 0xE800000000000000;
      v14 = 0x6C6261736964;
    }

    v15 = v14 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
LABEL_13:
    if (*(v12 + v115) > 1u)
    {
      if (*(v12 + v115) != 2)
      {
        v9 = 0xE800000000000000;
        v16 = 0x7463656C6573;
LABEL_22:
        if (v15 != (v16 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (v15 != 0x6867696C68676968)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!*(v12 + v115))
      {
        v9 = 0xE800000000000000;
        v16 = 0x6C6261736964;
        goto LABEL_22;
      }

      v9 = 0xE700000000000000;
      if (v15 != 0x64657375636F66)
      {
        goto LABEL_25;
      }
    }

LABEL_23:
    if (v13 == v9)
    {
      v17 = 0;
      goto LABEL_26;
    }

LABEL_25:
    v17 = sub_1D72646CC();
LABEL_26:

    v8 = (v115 + 2);
    v18 = 0xE800000000000000;
    if (v115 + 2 < v7)
    {
      while (1)
      {
        v27 = v8[v12];
        v28 = v8[v12 - 1];
        if (v27 == 2)
        {
          v29 = 0x6867696C68676968;
        }

        else
        {
          v29 = 0x64657463656C6573;
        }

        if (v27 == 2)
        {
          v30 = 0xEB00000000646574;
        }

        else
        {
          v30 = 0xE800000000000000;
        }

        if (v8[v12])
        {
          v31 = 0x64657375636F66;
        }

        else
        {
          v31 = 0x64656C6261736964;
        }

        if (v8[v12])
        {
          v18 = 0xE700000000000000;
        }

        if (v8[v12] <= 1u)
        {
          v32 = v31;
        }

        else
        {
          v32 = v29;
        }

        v33 = 0xE800000000000000;
        if (v8[v12] <= 1u)
        {
          v34 = v18;
        }

        else
        {
          v34 = v30;
        }

        if (v28 == 2)
        {
          v35 = 0x6867696C68676968;
        }

        else
        {
          v35 = 0x64657463656C6573;
        }

        if (v28 == 2)
        {
          v36 = 0xEB00000000646574;
        }

        else
        {
          v36 = 0xE800000000000000;
        }

        if (v8[v12 - 1])
        {
          v37 = 0x64657375636F66;
        }

        else
        {
          v37 = 0x64656C6261736964;
        }

        if (v8[v12 - 1])
        {
          v33 = 0xE700000000000000;
        }

        if (v8[v12 - 1] <= 1u)
        {
          v38 = v37;
        }

        else
        {
          v38 = v35;
        }

        if (v8[v12 - 1] <= 1u)
        {
          v39 = v33;
        }

        else
        {
          v39 = v36;
        }

        if (v32 == v38 && v34 == v39)
        {

          if (v17)
          {
            v11 = v115;
            if (v8 < v115)
            {
              goto LABEL_213;
            }

            goto LABEL_29;
          }
        }

        else
        {
          v24 = v7;
          v25 = sub_1D72646CC();

          v26 = v17 ^ v25;
          v7 = v24;
          v6 = a3;
          if (v26)
          {
            v11 = v115;
            if (v17)
            {
              goto LABEL_28;
            }

            goto LABEL_80;
          }
        }

        ++v8;
        v18 = 0xE800000000000000;
        if (v7 == v8)
        {
          v8 = v7;
          v11 = v115;
          if ((v17 & 1) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_28;
        }
      }
    }

    v11 = v115;
    if (v17)
    {
LABEL_28:
      if (v8 < v11)
      {
        goto LABEL_213;
      }

LABEL_29:
      if (v11 < v8)
      {
        v19 = v8 - 1;
        v20 = v11;
        do
        {
          if (v20 != v19)
          {
            v22 = *v6;
            if (!*v6)
            {
              goto LABEL_219;
            }

            v23 = v20[v22];
            v20[v22] = v19[v22];
            v19[v22] = v23;
          }
        }

        while (++v20 < v19--);
      }
    }

LABEL_80:
    v40 = v6[1];
    if (v8 < v40)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_212;
      }

      if (&v8[-v11] < a4)
      {
        break;
      }
    }

LABEL_132:
    if (v8 < v11)
    {
      goto LABEL_211;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v58 = v11;
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v60 = *(v10 + 2);
    v59 = *(v10 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      result = sub_1D698BA94((v59 > 1), v60 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v61;
    v62 = &v10[16 * v60];
    *(v62 + 4) = v58;
    *(v62 + 5) = v8;
    __dsta = *v114;
    if (!*v114)
    {
      goto LABEL_221;
    }

    if (v60)
    {
      while (1)
      {
        v63 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v64 = *(v10 + 4);
          v65 = *(v10 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_152:
          if (v67)
          {
            goto LABEL_200;
          }

          v80 = &v10[16 * v61];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_203;
          }

          v86 = &v10[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_206;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_207;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v61 - 2;
            }

            goto LABEL_173;
          }

          goto LABEL_166;
        }

        v90 = &v10[16 * v61];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_166:
        if (v85)
        {
          goto LABEL_202;
        }

        v93 = &v10[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_205;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_173:
        v101 = v63 - 1;
        if (v63 - 1 >= v61)
        {
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
          goto LABEL_215;
        }

        v102 = *v6;
        if (!*v6)
        {
          goto LABEL_218;
        }

        v103 = v8;
        v104 = v6;
        v6 = *&v10[16 * v101 + 32];
        v8 = *&v10[16 * v63 + 40];
        sub_1D5E152D0(v6 + v102, (v102 + *&v10[16 * v63 + 32]), &v8[v102], __dsta);
        if (v5)
        {
        }

        if (v8 < v6)
        {
          goto LABEL_196;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D62FF50C(v10);
        }

        if (v101 >= *(v10 + 2))
        {
          goto LABEL_197;
        }

        v105 = &v10[16 * v101];
        *(v105 + 4) = v6;
        *(v105 + 5) = v8;
        result = sub_1D62FF480(v63);
        v61 = *(v10 + 2);
        v8 = v103;
        v6 = v104;
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v10[16 * v61 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_198;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_199;
      }

      v75 = &v10[16 * v61];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_201;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_204;
      }

      if (v79 >= v71)
      {
        v97 = &v10[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_208;
        }

        if (v66 < v100)
        {
          v63 = v61 - 2;
        }

        goto LABEL_173;
      }

      goto LABEL_152;
    }

LABEL_3:
    v7 = v6[1];
    v9 = 0xEB00000000646574;
    if (v8 >= v7)
    {
      goto LABEL_183;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_214;
  }

  if (v11 + a4 < v40)
  {
    v40 = (v11 + a4);
  }

  if (v40 < v11)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  if (v8 == v40)
  {
    goto LABEL_132;
  }

  v112 = v5;
  v41 = *v6;
  v42 = &v8[*v6];
  v116 = v11;
  v43 = v11 - v8;
  v118 = v40;
LABEL_91:
  __dst = v8;
  v44 = v8[v41];
  v45 = v43;
  v46 = v42;
  while (1)
  {
    if (v44 > 1u)
    {
      if (v44 == 2)
      {
        v47 = 0x6867696C68676968;
      }

      else
      {
        v47 = 0x64657463656C6573;
      }

      if (v44 == 2)
      {
        v48 = 0xEB00000000646574;
      }

      else
      {
        v48 = 0xE800000000000000;
      }
    }

    else
    {
      if (v44)
      {
        v47 = 0x64657375636F66;
      }

      else
      {
        v47 = 0x64656C6261736964;
      }

      if (v44)
      {
        v48 = 0xE700000000000000;
      }

      else
      {
        v48 = 0xE800000000000000;
      }
    }

    v49 = *(v46 - 1);
    if (v49 == 2)
    {
      v50 = 0x6867696C68676968;
    }

    else
    {
      v50 = 0x64657463656C6573;
    }

    if (v49 == 2)
    {
      v51 = 0xEB00000000646574;
    }

    else
    {
      v51 = 0xE800000000000000;
    }

    if (*(v46 - 1))
    {
      v52 = 0x64657375636F66;
    }

    else
    {
      v52 = 0x64656C6261736964;
    }

    if (*(v46 - 1))
    {
      v53 = 0xE700000000000000;
    }

    else
    {
      v53 = 0xE800000000000000;
    }

    if (*(v46 - 1) <= 1u)
    {
      v54 = v52;
    }

    else
    {
      v54 = v50;
    }

    if (*(v46 - 1) <= 1u)
    {
      v55 = v53;
    }

    else
    {
      v55 = v51;
    }

    if (v47 == v54 && v48 == v55)
    {

LABEL_90:
      v8 = __dst + 1;
      ++v42;
      --v43;
      if (__dst + 1 == v118)
      {
        v8 = v118;
        v5 = v112;
        v11 = v116;
        v6 = a3;
        goto LABEL_132;
      }

      goto LABEL_91;
    }

    v56 = sub_1D72646CC();

    if ((v56 & 1) == 0)
    {
      goto LABEL_90;
    }

    if (!v41)
    {
      break;
    }

    v44 = *v46;
    *v46 = *(v46 - 1);
    *--v46 = v44;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
  return result;
}

uint64_t sub_1D5E0E8DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v162 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_383:
    v6 = *v162;
    if (!*v162)
    {
      goto LABEL_421;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_385:
      v155 = *(v7 + 2);
      if (v155 >= 2)
      {
        while (*a3)
        {
          v156 = *&v7[16 * v155];
          v157 = *&v7[16 * v155 + 24];
          sub_1D5E157C0((*a3 + v156), (*a3 + *&v7[16 * v155 + 16]), *a3 + v157, v6);
          if (v170)
          {
          }

          if (v157 < v156)
          {
            goto LABEL_408;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D62FF50C(v7);
          }

          if (v155 - 2 >= *(v7 + 2))
          {
            goto LABEL_409;
          }

          v158 = &v7[16 * v155];
          *v158 = v156;
          *(v158 + 1) = v157;
          result = sub_1D62FF480(v155 - 1);
          v155 = *(v7 + 2);
          if (v155 <= 1)
          {
          }
        }

        goto LABEL_419;
      }
    }

LABEL_415:
    result = sub_1D62FF50C(v7);
    v7 = result;
    goto LABEL_385;
  }

  v5 = 0;
  v6 = 0xE900000000000064;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v5;
    v9 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      goto LABEL_169;
    }

    v171 = v5 + 1;
    v168 = *a3;
    v10 = *(*a3 + v5);
    v165 = v5;
    v11 = sub_1D5FD008C(*(*a3 + v9), byte_1F50F2678);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v177 = v13;
    result = sub_1D5FD008C(v10, byte_1F50F2678);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = result;
    }

    v175 = v15;
    v16 = v165 + 2;
    v163 = v4;
    if (v165 + 2 < v4)
    {
      v159 = v7;
      v17 = v171;
LABEL_15:
      v18 = 0;
      v19 = *(v168 + v17);
      v172 = v16;
      v20 = *(v168 + v16);
      while (1)
      {
        v21 = byte_1F50F2678[v18 + 32];
        if (v21 <= 4)
        {
          v24 = 0x656E6F7074736F70;
          if (v21 == 3)
          {
            v24 = 0x6B61657262;
            v25 = 0xE500000000000000;
          }

          else
          {
            v25 = 0xE900000000000064;
          }

          if (v21 == 2)
          {
            v24 = 0x6572676F72506E69;
            v25 = 0xEA00000000007373;
          }

          v26 = 0x6576694C7261656ELL;
          if (!byte_1F50F2678[v18 + 32])
          {
            v26 = 0x656D6167657270;
          }

          v27 = 0xE800000000000000;
          if (!byte_1F50F2678[v18 + 32])
          {
            v27 = 0xE700000000000000;
          }

          if (byte_1F50F2678[v18 + 32] <= 1u)
          {
            v22 = v26;
          }

          else
          {
            v22 = v24;
          }

          if (byte_1F50F2678[v18 + 32] <= 1u)
          {
            v23 = v27;
          }

          else
          {
            v23 = v25;
          }
        }

        else if (byte_1F50F2678[v18 + 32] > 7u)
        {
          if (v21 == 8)
          {
            v23 = 0xE500000000000000;
            v22 = 0x6C616E6966;
          }

          else
          {
            v23 = 0xE700000000000000;
            if (v21 == 9)
            {
              v22 = 0x74696566726F66;
            }

            else
            {
              v22 = 0x6E776F6E6B6E75;
            }
          }
        }

        else if (v21 == 5)
        {
          v22 = 0x65646E6570737573;
          v23 = 0xE900000000000064;
        }

        else
        {
          if (v21 == 6)
          {
            v22 = 0x656C6C65636E6163;
          }

          else
          {
            v22 = 0x646579616C6564;
          }

          if (v21 == 6)
          {
            v23 = 0xE900000000000064;
          }

          else
          {
            v23 = 0xE700000000000000;
          }
        }

        if (v20 <= 4)
        {
          if (v20 <= 1)
          {
            if (v20)
            {
              v33 = 0xE800000000000000;
              if (v22 != 0x6576694C7261656ELL)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v33 = 0xE700000000000000;
              if (v22 != 0x656D6167657270)
              {
                goto LABEL_80;
              }
            }
          }

          else
          {
            v34 = 0x656E6F7074736F70;
            if (v20 == 3)
            {
              v34 = 0x6B61657262;
              v35 = 0xE500000000000000;
            }

            else
            {
              v35 = 0xE900000000000064;
            }

            if (v20 == 2)
            {
              v36 = 0x6572676F72506E69;
            }

            else
            {
              v36 = v34;
            }

            if (v20 == 2)
            {
              v33 = 0xEA00000000007373;
            }

            else
            {
              v33 = v35;
            }

            if (v22 != v36)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
          v28 = 0x74696566726F66;
          if (v20 != 9)
          {
            v28 = 0x6E776F6E6B6E75;
          }

          v29 = 0xE700000000000000;
          if (v20 == 8)
          {
            v28 = 0x6C616E6966;
            v29 = 0xE500000000000000;
          }

          v30 = 0x656C6C65636E6163;
          if (v20 == 6)
          {
            v31 = 0xE900000000000064;
          }

          else
          {
            v30 = 0x646579616C6564;
            v31 = 0xE700000000000000;
          }

          if (v20 == 5)
          {
            v30 = 0x65646E6570737573;
            v31 = 0xE900000000000064;
          }

          if (v20 <= 7)
          {
            v32 = v30;
          }

          else
          {
            v32 = v28;
          }

          if (v20 <= 7)
          {
            v33 = v31;
          }

          else
          {
            v33 = v29;
          }

          if (v22 != v32)
          {
            goto LABEL_80;
          }
        }

        if (v23 == v33)
        {

LABEL_85:
          v38 = 0;
LABEL_86:
          v39 = byte_1F50F2678[v38 + 32];
          if (v39 <= 4)
          {
            v42 = 0x656E6F7074736F70;
            if (v39 == 3)
            {
              v42 = 0x6B61657262;
              v43 = 0xE500000000000000;
            }

            else
            {
              v43 = 0xE900000000000064;
            }

            if (v39 == 2)
            {
              v42 = 0x6572676F72506E69;
              v43 = 0xEA00000000007373;
            }

            v44 = 0x6576694C7261656ELL;
            if (!byte_1F50F2678[v38 + 32])
            {
              v44 = 0x656D6167657270;
            }

            v45 = 0xE800000000000000;
            if (!byte_1F50F2678[v38 + 32])
            {
              v45 = 0xE700000000000000;
            }

            if (byte_1F50F2678[v38 + 32] <= 1u)
            {
              v40 = v44;
            }

            else
            {
              v40 = v42;
            }

            if (byte_1F50F2678[v38 + 32] <= 1u)
            {
              v41 = v45;
            }

            else
            {
              v41 = v43;
            }
          }

          else if (byte_1F50F2678[v38 + 32] > 7u)
          {
            if (v39 == 8)
            {
              v41 = 0xE500000000000000;
              v40 = 0x6C616E6966;
            }

            else
            {
              v41 = 0xE700000000000000;
              if (v39 == 9)
              {
                v40 = 0x74696566726F66;
              }

              else
              {
                v40 = 0x6E776F6E6B6E75;
              }
            }
          }

          else if (v39 == 5)
          {
            v40 = 0x65646E6570737573;
            v41 = 0xE900000000000064;
          }

          else
          {
            if (v39 == 6)
            {
              v40 = 0x656C6C65636E6163;
            }

            else
            {
              v40 = 0x646579616C6564;
            }

            if (v39 == 6)
            {
              v41 = 0xE900000000000064;
            }

            else
            {
              v41 = 0xE700000000000000;
            }
          }

          if (v19 <= 4)
          {
            if (v19 <= 1)
            {
              if (v19)
              {
                v51 = 0xE800000000000000;
                if (v40 != 0x6576694C7261656ELL)
                {
                  goto LABEL_150;
                }
              }

              else
              {
                v51 = 0xE700000000000000;
                if (v40 != 0x656D6167657270)
                {
                  goto LABEL_150;
                }
              }
            }

            else
            {
              v52 = 0x656E6F7074736F70;
              if (v19 == 3)
              {
                v52 = 0x6B61657262;
                v53 = 0xE500000000000000;
              }

              else
              {
                v53 = 0xE900000000000064;
              }

              if (v19 == 2)
              {
                v54 = 0x6572676F72506E69;
              }

              else
              {
                v54 = v52;
              }

              if (v19 == 2)
              {
                v51 = 0xEA00000000007373;
              }

              else
              {
                v51 = v53;
              }

              if (v40 != v54)
              {
                goto LABEL_150;
              }
            }
          }

          else
          {
            v46 = 0x74696566726F66;
            if (v19 != 9)
            {
              v46 = 0x6E776F6E6B6E75;
            }

            v47 = 0xE700000000000000;
            if (v19 == 8)
            {
              v46 = 0x6C616E6966;
              v47 = 0xE500000000000000;
            }

            v48 = 0x656C6C65636E6163;
            if (v19 == 6)
            {
              v49 = 0xE900000000000064;
            }

            else
            {
              v48 = 0x646579616C6564;
              v49 = 0xE700000000000000;
            }

            if (v19 == 5)
            {
              v48 = 0x65646E6570737573;
              v49 = 0xE900000000000064;
            }

            if (v19 <= 7)
            {
              v50 = v48;
            }

            else
            {
              v50 = v46;
            }

            if (v19 <= 7)
            {
              v51 = v49;
            }

            else
            {
              v51 = v47;
            }

            if (v40 != v50)
            {
              goto LABEL_150;
            }
          }

          if (v41 == v51)
          {

LABEL_155:
            if (v177 < v175 == v18 >= v38)
            {
              v16 = v172;
            }

            else
            {
LABEL_14:
              v17 = v172;
              v16 = v172 + 1;
              if (v172 + 1 != v163)
              {
                goto LABEL_15;
              }

              v16 = v163;
            }

            v7 = v159;
            v8 = v165;
            break;
          }

LABEL_150:
          v55 = sub_1D72646CC();

          if (v55)
          {
            goto LABEL_155;
          }

          if (++v38 == 11)
          {
            if (v177 >= v175)
            {
              goto LABEL_14;
            }

            v7 = v159;
            v9 = v172;
            v8 = v165;
            if (v172 < v165)
            {
              goto LABEL_412;
            }

LABEL_161:
            if (v8 < v9)
            {
              v56 = v9;
              v57 = v9 - 1;
              v58 = v8;
              do
              {
                if (v58 != v57)
                {
                  v61 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_418;
                  }

                  v59 = *(v61 + v58);
                  *(v61 + v58) = *(v61 + v57);
                  *(v61 + v57) = v59;
                }
              }

              while (++v58 < v57--);
              v9 = v56;
            }

            goto LABEL_169;
          }

          goto LABEL_86;
        }

LABEL_80:
        v37 = sub_1D72646CC();

        if (v37)
        {
          goto LABEL_85;
        }

        if (++v18 == 11)
        {
          v18 = 0;
          goto LABEL_85;
        }
      }
    }

    v9 = v16;
    if (v177 < v175)
    {
      if (v16 < v8)
      {
        goto LABEL_412;
      }

      goto LABEL_161;
    }

LABEL_169:
    v62 = a3[1];
    v173 = v9;
    if (v9 < v62)
    {
      v123 = __OFSUB__(v9, v8);
      v63 = v9 - v8;
      if (v123)
      {
        goto LABEL_411;
      }

      if (v63 < a4)
      {
        break;
      }
    }

LABEL_329:
    if (v173 < v8)
    {
      goto LABEL_410;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v108 = *(v7 + 2);
    v107 = *(v7 + 3);
    v109 = v108 + 1;
    if (v108 >= v107 >> 1)
    {
      result = sub_1D698BA94((v107 > 1), v108 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v109;
    v110 = &v7[16 * v108];
    *(v110 + 4) = v8;
    *(v110 + 5) = v173;
    v111 = *v162;
    if (!*v162)
    {
      goto LABEL_420;
    }

    if (v108)
    {
      while (1)
      {
        v112 = v109 - 1;
        if (v109 >= 4)
        {
          break;
        }

        if (v109 == 3)
        {
          v113 = *(v7 + 4);
          v114 = *(v7 + 5);
          v123 = __OFSUB__(v114, v113);
          v115 = v114 - v113;
          v116 = v123;
LABEL_349:
          if (v116)
          {
            goto LABEL_399;
          }

          v129 = &v7[16 * v109];
          v131 = *v129;
          v130 = *(v129 + 1);
          v132 = __OFSUB__(v130, v131);
          v133 = v130 - v131;
          v134 = v132;
          if (v132)
          {
            goto LABEL_402;
          }

          v135 = &v7[16 * v112 + 32];
          v137 = *v135;
          v136 = *(v135 + 1);
          v123 = __OFSUB__(v136, v137);
          v138 = v136 - v137;
          if (v123)
          {
            goto LABEL_405;
          }

          if (__OFADD__(v133, v138))
          {
            goto LABEL_406;
          }

          if (v133 + v138 >= v115)
          {
            if (v115 < v138)
            {
              v112 = v109 - 2;
            }

            goto LABEL_370;
          }

          goto LABEL_363;
        }

        v139 = &v7[16 * v109];
        v141 = *v139;
        v140 = *(v139 + 1);
        v123 = __OFSUB__(v140, v141);
        v133 = v140 - v141;
        v134 = v123;
LABEL_363:
        if (v134)
        {
          goto LABEL_401;
        }

        v142 = &v7[16 * v112];
        v144 = *(v142 + 4);
        v143 = *(v142 + 5);
        v123 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v123)
        {
          goto LABEL_404;
        }

        if (v145 < v133)
        {
          goto LABEL_3;
        }

LABEL_370:
        v150 = v112 - 1;
        if (v112 - 1 >= v109)
        {
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          __break(1u);
LABEL_403:
          __break(1u);
LABEL_404:
          __break(1u);
LABEL_405:
          __break(1u);
LABEL_406:
          __break(1u);
LABEL_407:
          __break(1u);
LABEL_408:
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
LABEL_413:
          __break(1u);
          goto LABEL_414;
        }

        if (!*a3)
        {
          __break(1u);
          goto LABEL_417;
        }

        v151 = v7;
        v152 = *&v7[16 * v150 + 32];
        v153 = *&v7[16 * v112 + 32];
        v7 = *&v7[16 * v112 + 40];
        sub_1D5E157C0((*a3 + v152), (*a3 + v153), &v7[*a3], v111);
        if (v170)
        {
        }

        if (v7 < v152)
        {
          goto LABEL_395;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_1D62FF50C(v151);
        }

        if (v150 >= *(v151 + 2))
        {
          goto LABEL_396;
        }

        v154 = &v151[16 * v150];
        *(v154 + 4) = v152;
        *(v154 + 5) = v7;
        result = sub_1D62FF480(v112);
        v7 = v151;
        v109 = *(v151 + 2);
        if (v109 <= 1)
        {
          goto LABEL_3;
        }
      }

      v117 = &v7[16 * v109 + 32];
      v118 = *(v117 - 64);
      v119 = *(v117 - 56);
      v123 = __OFSUB__(v119, v118);
      v120 = v119 - v118;
      if (v123)
      {
        goto LABEL_397;
      }

      v122 = *(v117 - 48);
      v121 = *(v117 - 40);
      v123 = __OFSUB__(v121, v122);
      v115 = v121 - v122;
      v116 = v123;
      if (v123)
      {
        goto LABEL_398;
      }

      v124 = &v7[16 * v109];
      v126 = *v124;
      v125 = *(v124 + 1);
      v123 = __OFSUB__(v125, v126);
      v127 = v125 - v126;
      if (v123)
      {
        goto LABEL_400;
      }

      v123 = __OFADD__(v115, v127);
      v128 = v115 + v127;
      if (v123)
      {
        goto LABEL_403;
      }

      if (v128 >= v120)
      {
        v146 = &v7[16 * v112 + 32];
        v148 = *v146;
        v147 = *(v146 + 1);
        v123 = __OFSUB__(v147, v148);
        v149 = v147 - v148;
        if (v123)
        {
          goto LABEL_407;
        }

        if (v115 < v149)
        {
          v112 = v109 - 2;
        }

        goto LABEL_370;
      }

      goto LABEL_349;
    }

LABEL_3:
    v4 = a3[1];
    v5 = v173;
    if (v173 >= v4)
    {
      goto LABEL_383;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_413;
  }

  if (v8 + a4 >= v62)
  {
    v64 = a3[1];
  }

  else
  {
    v64 = v8 + a4;
  }

  if (v64 < v8)
  {
LABEL_414:
    __break(1u);
    goto LABEL_415;
  }

  if (v173 == v64)
  {
    goto LABEL_329;
  }

  v164 = v64;
  v166 = v8;
  v160 = v7;
  v65 = *a3;
  v66 = v173;
  v176 = *a3;
  while (2)
  {
    v67 = *(v65 + v66);
    v174 = v66;
    v178 = v66;
LABEL_181:
    v68 = 0;
    v169 = v178 - 1;
    v69 = *(v176 + v178 - 1);
    v70 = v67;
    while (1)
    {
      v71 = byte_1F50F2678[v68 + 32];
      if (v71 <= 4)
      {
        if (v71 == 3)
        {
          v73 = 0x6B61657262;
        }

        else
        {
          v73 = 0x656E6F7074736F70;
        }

        if (v71 == 3)
        {
          v74 = 0xE500000000000000;
        }

        else
        {
          v74 = 0xE900000000000064;
        }

        if (v71 == 2)
        {
          v73 = 0x6572676F72506E69;
          v74 = 0xEA00000000007373;
        }

        v75 = byte_1F50F2678[v68 + 32] ? 0x6576694C7261656ELL : 0x656D6167657270;
        v76 = byte_1F50F2678[v68 + 32] ? 0xE800000000000000 : 0xE700000000000000;
        v72 = byte_1F50F2678[v68 + 32] <= 1u ? v75 : v73;
        v77 = byte_1F50F2678[v68 + 32] <= 1u ? v76 : v74;
      }

      else if (byte_1F50F2678[v68 + 32] > 7u)
      {
        if (v71 == 8)
        {
          v77 = 0xE500000000000000;
          v72 = 0x6C616E6966;
        }

        else
        {
          v77 = 0xE700000000000000;
          v72 = v71 == 9 ? 0x74696566726F66 : 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (v71 == 5)
        {
          v72 = 0x65646E6570737573;
          goto LABEL_211;
        }

        if (v71 == 6)
        {
          v72 = 0x656C6C65636E6163;
LABEL_211:
          v77 = 0xE900000000000064;
          goto LABEL_215;
        }

        v77 = 0xE700000000000000;
        v72 = 0x646579616C6564;
      }

LABEL_215:
      v78 = 0x74696566726F66;
      if (v70 != 9)
      {
        v78 = 0x6E776F6E6B6E75;
      }

      v79 = 0xE700000000000000;
      if (v70 == 8)
      {
        v78 = 0x6C616E6966;
        v79 = 0xE500000000000000;
      }

      v80 = 0x656C6C65636E6163;
      if (v70 == 6)
      {
        v81 = 0xE900000000000064;
      }

      else
      {
        v80 = 0x646579616C6564;
        v81 = 0xE700000000000000;
      }

      if (v70 == 5)
      {
        v80 = 0x65646E6570737573;
        v81 = 0xE900000000000064;
      }

      if (v70 <= 7)
      {
        v78 = v80;
        v79 = v81;
      }

      if (v70 == 3)
      {
        v82 = 0x6B61657262;
      }

      else
      {
        v82 = 0x656E6F7074736F70;
      }

      if (v70 == 3)
      {
        v83 = 0xE500000000000000;
      }

      else
      {
        v83 = 0xE900000000000064;
      }

      if (v70 == 2)
      {
        v82 = 0x6572676F72506E69;
        v83 = 0xEA00000000007373;
      }

      if (v70)
      {
        v84 = 0x6576694C7261656ELL;
      }

      else
      {
        v84 = 0x656D6167657270;
      }

      if (v70)
      {
        v85 = 0xE800000000000000;
      }

      else
      {
        v85 = 0xE700000000000000;
      }

      if (v70 <= 1)
      {
        v82 = v84;
        v83 = v85;
      }

      v86 = v70 <= 4 ? v82 : v78;
      v87 = v70 <= 4 ? v83 : v79;
      if (v72 == v86 && v77 == v87)
      {
        break;
      }

      v88 = sub_1D72646CC();

      if (v88)
      {
        goto LABEL_254;
      }

      if (++v68 == 11)
      {
        v68 = 0;
        goto LABEL_254;
      }
    }

LABEL_254:
    v89 = 0;
    while (2)
    {
      v90 = byte_1F50F2678[v89 + 32];
      if (v90 <= 4)
      {
        v93 = 0x656E6F7074736F70;
        if (v90 == 3)
        {
          v93 = 0x6B61657262;
          v94 = 0xE500000000000000;
        }

        else
        {
          v94 = 0xE900000000000064;
        }

        if (v90 == 2)
        {
          v93 = 0x6572676F72506E69;
          v94 = 0xEA00000000007373;
        }

        v95 = 0x6576694C7261656ELL;
        if (!byte_1F50F2678[v89 + 32])
        {
          v95 = 0x656D6167657270;
        }

        v96 = 0xE800000000000000;
        if (!byte_1F50F2678[v89 + 32])
        {
          v96 = 0xE700000000000000;
        }

        if (byte_1F50F2678[v89 + 32] <= 1u)
        {
          v91 = v95;
        }

        else
        {
          v91 = v93;
        }

        if (byte_1F50F2678[v89 + 32] <= 1u)
        {
          v92 = v96;
        }

        else
        {
          v92 = v94;
        }
      }

      else if (byte_1F50F2678[v89 + 32] > 7u)
      {
        if (v90 == 8)
        {
          v92 = 0xE500000000000000;
          v91 = 0x6C616E6966;
        }

        else
        {
          v92 = 0xE700000000000000;
          if (v90 == 9)
          {
            v91 = 0x74696566726F66;
          }

          else
          {
            v91 = 0x6E776F6E6B6E75;
          }
        }
      }

      else if (v90 == 5)
      {
        v91 = 0x65646E6570737573;
        v92 = 0xE900000000000064;
      }

      else
      {
        if (v90 == 6)
        {
          v91 = 0x656C6C65636E6163;
        }

        else
        {
          v91 = 0x646579616C6564;
        }

        if (v90 == 6)
        {
          v92 = 0xE900000000000064;
        }

        else
        {
          v92 = 0xE700000000000000;
        }
      }

      if (v69 <= 4)
      {
        if (v69 <= 1)
        {
          if (v69)
          {
            v102 = 0xE800000000000000;
            if (v91 != 0x6576694C7261656ELL)
            {
              goto LABEL_319;
            }
          }

          else
          {
            v102 = 0xE700000000000000;
            if (v91 != 0x656D6167657270)
            {
              goto LABEL_319;
            }
          }
        }

        else
        {
          v103 = 0x656E6F7074736F70;
          if (v69 == 3)
          {
            v103 = 0x6B61657262;
            v104 = 0xE500000000000000;
          }

          else
          {
            v104 = 0xE900000000000064;
          }

          if (v69 == 2)
          {
            v105 = 0x6572676F72506E69;
          }

          else
          {
            v105 = v103;
          }

          if (v69 == 2)
          {
            v102 = 0xEA00000000007373;
          }

          else
          {
            v102 = v104;
          }

          if (v91 != v105)
          {
            goto LABEL_319;
          }
        }
      }

      else
      {
        v97 = 0x74696566726F66;
        if (v69 != 9)
        {
          v97 = 0x6E776F6E6B6E75;
        }

        v98 = 0xE700000000000000;
        if (v69 == 8)
        {
          v97 = 0x6C616E6966;
          v98 = 0xE500000000000000;
        }

        v99 = 0x656C6C65636E6163;
        if (v69 == 6)
        {
          v100 = 0xE900000000000064;
        }

        else
        {
          v99 = 0x646579616C6564;
          v100 = 0xE700000000000000;
        }

        if (v69 == 5)
        {
          v99 = 0x65646E6570737573;
          v100 = 0xE900000000000064;
        }

        if (v69 <= 7)
        {
          v101 = v99;
        }

        else
        {
          v101 = v97;
        }

        if (v69 <= 7)
        {
          v102 = v100;
        }

        else
        {
          v102 = v98;
        }

        if (v91 != v101)
        {
LABEL_319:
          v106 = sub_1D72646CC();

          if (v106)
          {
            goto LABEL_324;
          }

          if (++v89 == 11)
          {
            goto LABEL_179;
          }

          continue;
        }
      }

      break;
    }

    if (v92 != v102)
    {
      goto LABEL_319;
    }

LABEL_324:
    if (v68 >= v89)
    {
LABEL_179:
      v65 = v176;
      v66 = v174 + 1;
      if (v174 + 1 == v164)
      {
        v173 = v164;
        v7 = v160;
        v6 = 0xE900000000000064;
        v8 = v166;
        goto LABEL_329;
      }

      continue;
    }

    break;
  }

  if (v176)
  {
    v67 = *(v176 + v178);
    *(v176 + v178) = *(v176 + v169);
    *(v176 + v169) = v67;
    --v178;
    if (v169 == v166)
    {
      goto LABEL_179;
    }

    goto LABEL_181;
  }

LABEL_417:
  __break(1u);
LABEL_418:
  __break(1u);
LABEL_419:
  __break(1u);
LABEL_420:
  __break(1u);
LABEL_421:
  __break(1u);
  return result;
}

uint64_t sub_1D5E0FB8C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v120 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_194:
    v10 = *v120;
    if (!*v120)
    {
      goto LABEL_233;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_196:
      v109 = v5;
      v110 = *(v11 + 16);
      if (v110 >= 2)
      {
        while (*v6)
        {
          v5 = v110 - 1;
          v111 = *(v11 + 16 * v110);
          v112 = v11;
          v113 = *(v11 + 16 * (v110 - 1) + 32);
          v11 = *(v11 + 16 * (v110 - 1) + 40);
          sub_1D5E16644((*v6 + v111), (*v6 + v113), *v6 + v11, v10);
          if (v109)
          {
          }

          if (v11 < v111)
          {
            goto LABEL_220;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_1D62FF50C(v112);
          }

          if (v110 - 2 >= *(v112 + 2))
          {
            goto LABEL_221;
          }

          v114 = &v112[16 * v110];
          *v114 = v111;
          *(v114 + 1) = v11;
          result = sub_1D62FF480(v110 - 1);
          v11 = v112;
          v110 = *(v112 + 2);
          if (v110 <= 1)
          {
          }
        }

        goto LABEL_231;
      }
    }

LABEL_227:
    result = sub_1D62FF50C(v11);
    v11 = result;
    goto LABEL_196;
  }

  v8 = 0;
  v9 = 0xEF776F6461685367;
  v10 = 0xD000000000000010;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v8;
    v13 = v8 + 1;
    if (v13 >= v7)
    {
      goto LABEL_60;
    }

    v14 = *(*v6 + v12);
    v124 = v13;
    v15 = v12;
    v16 = *v6;
    result = sub_1D6954CAC(*(*v6 + v13), v14);
    v122 = result;
    v118 = v15;
    v17 = v15 + 2;
    if (v17 < v7)
    {
      v124 = v7 - 1;
      while (1)
      {
        v20 = *(v16 + v17);
        if (v20 > 3)
        {
          v21 = 0x6E6964756C637865;
          if (*(v16 + v17) > 5u)
          {
            v22 = v20 == 6 ? 0xD000000000000017 : 0xD00000000000001CLL;
            v23 = v20 == 6 ? 0x80000001D73BB880 : 0x80000001D73BB8A0;
          }

          else if (v20 == 4)
          {
            v22 = 0x6275536563726F66;
            v23 = 0xEC00000064657564;
          }

          else
          {
            v22 = 0xD000000000000016;
            v23 = 0x80000001D73BB860;
          }
        }

        else
        {
          v21 = 0x6E6964756C637865;
          if (*(v16 + v17) > 1u)
          {
            v22 = v20 == 2 ? 0x6E6964756C637865 : 0x7263536563726F66;
            v23 = v20 == 2 ? 0xEF776F6461685367 : 0xEA00000000006D69;
          }

          else if (*(v16 + v17))
          {
            v22 = 0xD000000000000013;
            v23 = 0x80000001D73BB820;
          }

          else
          {
            v22 = 0xD000000000000010;
            v23 = 0x80000001D73BB800;
          }
        }

        v24 = *(v16 + v17 - 1);
        if (v24 <= 3)
        {
          break;
        }

        if (*(v16 + v17 - 1) <= 5u)
        {
          if (v24 == 4)
          {
            v9 = 0xEC00000064657564;
            if (v22 != 0x6275536563726F66)
            {
              goto LABEL_7;
            }

            goto LABEL_49;
          }

          v21 = 0xD000000000000016;
          v9 = 0x80000001D73BB860;
LABEL_48:
          if (v22 != v21)
          {
            goto LABEL_7;
          }

          goto LABEL_49;
        }

        if (v24 == 6)
        {
          v9 = 0x80000001D73BB880;
          if (v22 != 0xD000000000000017)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v9 = 0x80000001D73BB8A0;
          if (v22 != 0xD00000000000001CLL)
          {
LABEL_7:
            v18 = sub_1D72646CC();

            v19 = v122 ^ v18;
            v6 = a3;
            if (v19)
            {
              v124 = v17 - 1;
              goto LABEL_56;
            }

            goto LABEL_8;
          }
        }

LABEL_49:
        if (v23 != v9)
        {
          goto LABEL_7;
        }

        if (v122)
        {
          v25 = v17 - 1;
          v12 = v118;
          if (v17 < v118)
          {
            goto LABEL_224;
          }

LABEL_58:
          if (v12 <= v25)
          {
            v56 = v17 - 1;
            v57 = v12;
            do
            {
              if (v57 != v56)
              {
                v59 = *v6;
                if (!*v6)
                {
                  goto LABEL_230;
                }

                v60 = *(v59 + v57);
                *(v59 + v57) = *(v59 + v56);
                *(v59 + v56) = v60;
              }
            }

            while (++v57 < v56--);
          }

          v13 = v17;
          goto LABEL_60;
        }

LABEL_8:
        ++v17;
        v9 = 0xEF776F6461685367;
        if (v7 == v17)
        {
          v17 = v7;
          goto LABEL_56;
        }
      }

      if (*(v16 + v17 - 1) <= 1u)
      {
        if (*(v16 + v17 - 1))
        {
          v9 = 0x80000001D73BB820;
          if (v22 != 0xD000000000000013)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v9 = 0x80000001D73BB800;
          if (v22 != 0xD000000000000010)
          {
            goto LABEL_7;
          }
        }

        goto LABEL_49;
      }

      if (v24 != 2)
      {
        v9 = 0xEA00000000006D69;
        if (v22 != 0x7263536563726F66)
        {
          goto LABEL_7;
        }

        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_56:
    v25 = v124;
    v13 = v17;
    v12 = v118;
    if (v122)
    {
      if (v17 < v118)
      {
        goto LABEL_224;
      }

      goto LABEL_58;
    }

LABEL_60:
    v26 = v6[1];
    v125 = v13;
    if (v13 < v26)
    {
      v77 = __OFSUB__(v13, v12);
      v27 = v13 - v12;
      if (v77)
      {
        goto LABEL_223;
      }

      if (v27 < a4)
      {
        break;
      }
    }

LABEL_141:
    if (v125 < v12)
    {
      goto LABEL_222;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v62 = *(v11 + 16);
    v61 = *(v11 + 24);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_1D698BA94((v61 > 1), v62 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v63;
    v64 = v11 + 16 * v62;
    *(v64 + 32) = v12;
    *(v64 + 40) = v125;
    v65 = *v120;
    if (!*v120)
    {
      goto LABEL_232;
    }

    if (v62)
    {
      while (1)
      {
        v66 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v67 = *(v11 + 32);
          v68 = *(v11 + 40);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_161:
          if (v70)
          {
            goto LABEL_211;
          }

          v83 = (v11 + 16 * v63);
          v85 = *v83;
          v84 = v83[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_214;
          }

          v89 = (v11 + 32 + 16 * v66);
          v91 = *v89;
          v90 = v89[1];
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_217;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_218;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v63 - 2;
            }

            goto LABEL_182;
          }

          goto LABEL_175;
        }

        v93 = (v11 + 16 * v63);
        v95 = *v93;
        v94 = v93[1];
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_175:
        if (v88)
        {
          goto LABEL_213;
        }

        v96 = v11 + 16 * v66;
        v98 = *(v96 + 32);
        v97 = *(v96 + 40);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_216;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_182:
        v104 = v66 - 1;
        if (v66 - 1 >= v63)
        {
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
          goto LABEL_226;
        }

        if (!*v6)
        {
          goto LABEL_229;
        }

        v105 = v11;
        v106 = *(v11 + 32 + 16 * v104);
        v107 = *(v11 + 32 + 16 * v66);
        v11 = *(v11 + 32 + 16 * v66 + 8);
        sub_1D5E16644((*v6 + v106), (*v6 + v107), *v6 + v11, v65);
        if (v5)
        {
        }

        if (v11 < v106)
        {
          goto LABEL_207;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D62FF50C(v105);
        }

        if (v104 >= *(v105 + 2))
        {
          goto LABEL_208;
        }

        v108 = &v105[16 * v104];
        *(v108 + 4) = v106;
        *(v108 + 5) = v11;
        result = sub_1D62FF480(v66);
        v11 = v105;
        v63 = *(v105 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = v11 + 32 + 16 * v63;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_209;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_210;
      }

      v78 = (v11 + 16 * v63);
      v80 = *v78;
      v79 = v78[1];
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_212;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_215;
      }

      if (v82 >= v74)
      {
        v100 = (v11 + 32 + 16 * v66);
        v102 = *v100;
        v101 = v100[1];
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_219;
        }

        if (v69 < v103)
        {
          v66 = v63 - 2;
        }

        goto LABEL_182;
      }

      goto LABEL_161;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v125;
    v9 = 0xEF776F6461685367;
    if (v125 >= v7)
    {
      goto LABEL_194;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_225;
  }

  if (v12 + a4 >= v26)
  {
    v28 = v6[1];
  }

  else
  {
    v28 = v12 + a4;
  }

  if (v28 < v12)
  {
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v29 = v125;
  if (v125 == v28)
  {
    goto LABEL_141;
  }

  v115 = v11;
  v116 = v5;
  v30 = *v6;
  v31 = v12;
  v32 = (v30 + v125);
  v119 = v31;
  v33 = v31 - v125;
  v123 = v28;
LABEL_72:
  v126 = v29;
  v34 = *(v30 + v29);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 > 3u)
    {
      if (v34 > 5u)
      {
        if (v34 == 6)
        {
          v41 = 0xD000000000000017;
          v42 = 0x80000001D73BB880;
        }

        else
        {
          v41 = 0xD00000000000001CLL;
          v42 = 0x80000001D73BB8A0;
        }
      }

      else
      {
        if (v34 == 4)
        {
          v41 = 0x6275536563726F66;
        }

        else
        {
          v41 = 0xD000000000000016;
        }

        if (v34 == 4)
        {
          v42 = 0xEC00000064657564;
        }

        else
        {
          v42 = 0x80000001D73BB860;
        }
      }
    }

    else
    {
      if (v34 == 2)
      {
        v37 = 0x6E6964756C637865;
      }

      else
      {
        v37 = 0x7263536563726F66;
      }

      if (v34 == 2)
      {
        v38 = 0xEF776F6461685367;
      }

      else
      {
        v38 = 0xEA00000000006D69;
      }

      v39 = 0xD000000000000013;
      if (v34)
      {
        v40 = 0x80000001D73BB820;
      }

      else
      {
        v39 = 0xD000000000000010;
        v40 = 0x80000001D73BB800;
      }

      if (v34 <= 1u)
      {
        v41 = v39;
      }

      else
      {
        v41 = v37;
      }

      if (v34 <= 1u)
      {
        v42 = v40;
      }

      else
      {
        v42 = v38;
      }
    }

    v43 = *(v36 - 1);
    v44 = 0xD000000000000017;
    if (v43 != 6)
    {
      v44 = 0xD00000000000001CLL;
    }

    v45 = 0x80000001D73BB8A0;
    if (v43 == 6)
    {
      v45 = 0x80000001D73BB880;
    }

    v46 = 0xD000000000000016;
    if (v43 == 4)
    {
      v46 = 0x6275536563726F66;
    }

    v47 = 0xEC00000064657564;
    if (v43 != 4)
    {
      v47 = 0x80000001D73BB860;
    }

    if (*(v36 - 1) <= 5u)
    {
      v44 = v46;
      v45 = v47;
    }

    if (v43 == 2)
    {
      v48 = 0x6E6964756C637865;
    }

    else
    {
      v48 = 0x7263536563726F66;
    }

    if (v43 == 2)
    {
      v49 = 0xEF776F6461685367;
    }

    else
    {
      v49 = 0xEA00000000006D69;
    }

    v50 = 0xD000000000000013;
    if (*(v36 - 1))
    {
      v51 = 0x80000001D73BB820;
    }

    else
    {
      v50 = 0xD000000000000010;
      v51 = 0x80000001D73BB800;
    }

    if (*(v36 - 1) <= 1u)
    {
      v48 = v50;
      v49 = v51;
    }

    if (*(v36 - 1) <= 3u)
    {
      v52 = v48;
    }

    else
    {
      v52 = v44;
    }

    if (*(v36 - 1) <= 3u)
    {
      v53 = v49;
    }

    else
    {
      v53 = v45;
    }

    if (v41 == v52 && v42 == v53)
    {

LABEL_71:
      v29 = v126 + 1;
      ++v32;
      --v33;
      if (v126 + 1 == v123)
      {
        v125 = v123;
        v11 = v115;
        v5 = v116;
        v6 = a3;
        v12 = v119;
        goto LABEL_141;
      }

      goto LABEL_72;
    }

    v54 = sub_1D72646CC();

    if ((v54 & 1) == 0)
    {
      goto LABEL_71;
    }

    if (!v30)
    {
      break;
    }

    v34 = *v36;
    *v36 = *(v36 - 1);
    *--v36 = v34;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
  return result;
}

uint64_t sub_1D5E10738(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v111 = result;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_221:
    v5 = v7;
    v7 = *v111;
    if (!*v111)
    {
      goto LABEL_260;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_223:
      v103 = v6;
      v104 = *(v10 + 2);
      if (v104 >= 2)
      {
        while (*v5)
        {
          v6 = v104 - 1;
          v105 = *&v10[16 * v104];
          v106 = *&v10[16 * v104 + 24];
          sub_1D5E16848((*v5 + v105), (*v5 + *&v10[16 * v104 + 16]), *v5 + v106, v7);
          if (v103)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_247;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D62FF50C(v10);
          }

          if (v104 - 2 >= *(v10 + 2))
          {
            goto LABEL_248;
          }

          v107 = &v10[16 * v104];
          *v107 = v105;
          *(v107 + 1) = v106;
          result = sub_1D62FF480(v104 - 1);
          v104 = *(v10 + 2);
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_258;
      }
    }

LABEL_254:
    result = sub_1D62FF50C(v10);
    v10 = result;
    goto LABEL_223;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 >= v8)
    {
      v19 = v11;
    }

    else
    {
      v112 = v11;
      v115 = *v7;
      v12 = FormatFontTrait.rawValue.getter();
      v14 = v13;
      v16 = FormatFontTrait.rawValue.getter();
      v17 = v12;
      v5 = v15;
      if (v17 == v16 && v14 == v15)
      {
        v18 = 0;
      }

      else
      {
        v18 = sub_1D72646CC();
      }

      v9 = v112 + 2;
      if (v112 + 2 < v8)
      {
        while (2)
        {
          v23 = 0xE600000000000000;
          v24 = 0x63696C617469;
          switch(*(v115 + v9))
          {
            case 1:
              v23 = 0xE400000000000000;
              v24 = 1684828002;
              break;
            case 2:
              v23 = 0xE800000000000000;
              v24 = 0x6465646E61707865;
              break;
            case 3:
              v24 = 0x65736E65646E6F63;
              v23 = 0xE900000000000064;
              break;
            case 4:
              v23 = 0xE900000000000065;
              v24 = 0x636170536F6E6F6DLL;
              break;
            case 5:
              v23 = 0xE800000000000000;
              v24 = 0x6C61636974726576;
              break;
            case 6:
              v24 = 0x696D6974704F6975;
              v23 = 0xEB0000000064657ALL;
              break;
            case 7:
              v25 = 0x4C7468676974;
              goto LABEL_34;
            case 8:
              v25 = 0x4C65736F6F6CLL;
LABEL_34:
              v24 = v25 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
              v23 = 0xEC000000676E6964;
              break;
            case 9:
              v23 = 0xE400000000000000;
              v24 = 1802723693;
              break;
            case 0xA:
              v24 = 0x656C797453646C6FLL;
              goto LABEL_32;
            case 0xB:
              v24 = 0xD000000000000012;
              v23 = 0x80000001D73B9100;
              break;
            case 0xC:
              v24 = 0x65536E7265646F6DLL;
              v23 = 0xEC00000073666972;
              break;
            case 0xD:
              v24 = 0x6F646E6572616C63;
              v23 = 0xEF7366697265536ELL;
              break;
            case 0xE:
              v24 = 0x6972655362616C73;
              v23 = 0xEA00000000007366;
              break;
            case 0xF:
              v24 = 0x6D726F6665657266;
LABEL_32:
              v23 = 0xEE00736669726553;
              break;
            case 0x10:
              v23 = 0xE900000000000066;
              v24 = 0x69726553736E6173;
              break;
            case 0x11:
              v24 = 0x746E656D616E726FLL;
              v23 = 0xEB00000000736C61;
              break;
            case 0x12:
              v23 = 0xE700000000000000;
              v24 = 0x73747069726373;
              break;
            case 0x13:
              v23 = 0xE800000000000000;
              v24 = 0x63696C6F626D7973;
              break;
            default:
              break;
          }

          v5 = 0xE600000000000000;
          v26 = 0x63696C617469;
          switch(*(v115 + v9 - 1))
          {
            case 1:
              v5 = 0xE400000000000000;
              if (v24 != 1684828002)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 2:
              v5 = 0xE800000000000000;
              if (v24 != 0x6465646E61707865)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 3:
              v5 = 0xE900000000000064;
              if (v24 != 0x65736E65646E6F63)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 4:
              v5 = 0xE900000000000065;
              if (v24 != 0x636170536F6E6F6DLL)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 5:
              v5 = 0xE800000000000000;
              if (v24 != 0x6C61636974726576)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 6:
              v30 = 0x696D6974704F6975;
              v31 = 6579578;
              goto LABEL_64;
            case 7:
              v27 = 0x61654C7468676974;
              v28 = 1735289188;
              goto LABEL_56;
            case 8:
              v26 = 0x61654C65736F6F6CLL;
              v5 = 0xEC000000676E6964;
              goto LABEL_72;
            case 9:
              v5 = 0xE400000000000000;
              if (v24 != 1802723693)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0xA:
              v29 = 0x656C797453646C6FLL;
              goto LABEL_69;
            case 0xB:
              v5 = 0x80000001D73B9100;
              if (v24 != 0xD000000000000012)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0xC:
              v27 = 0x65536E7265646F6DLL;
              v28 = 1936091506;
LABEL_56:
              v5 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v24 != v27)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0xD:
              v5 = 0xEF7366697265536ELL;
              if (v24 != 0x6F646E6572616C63)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0xE:
              v5 = 0xEA00000000007366;
              if (v24 != 0x6972655362616C73)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0xF:
              v29 = 0x6D726F6665657266;
LABEL_69:
              v5 = 0xEE00736669726553;
              if (v24 != v29)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0x10:
              v5 = 0xE900000000000066;
              if (v24 != 0x69726553736E6173)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0x11:
              v30 = 0x746E656D616E726FLL;
              v31 = 7564385;
LABEL_64:
              v5 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v24 != v30)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0x12:
              v5 = 0xE700000000000000;
              if (v24 != 0x73747069726373)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            case 0x13:
              v5 = 0xE800000000000000;
              if (v24 != 0x63696C6F626D7973)
              {
                goto LABEL_12;
              }

              goto LABEL_73;
            default:
LABEL_72:
              if (v24 != v26)
              {
                goto LABEL_12;
              }

LABEL_73:
              if (v23 == v5)
              {

                if (v18)
                {
                  v19 = v112;
                  if (v9 < v112)
                  {
                    goto LABEL_251;
                  }

                  goto LABEL_81;
                }
              }

              else
              {
LABEL_12:
                v20 = v9;
                v21 = sub_1D72646CC();

                v22 = v18 ^ v21;
                v9 = v20;
                if (v22)
                {
                  break;
                }
              }

              if (v8 != ++v9)
              {
                continue;
              }

              v9 = v8;
              break;
          }

          break;
        }
      }

      v19 = v112;
      if (v18)
      {
        if (v9 < v112)
        {
          goto LABEL_251;
        }

LABEL_81:
        if (v19 < v9)
        {
          v32 = v9 - 1;
          v33 = v19;
          do
          {
            if (v33 != v32)
            {
              v35 = *v7;
              if (!*v7)
              {
                goto LABEL_257;
              }

              v36 = *(v35 + v33);
              *(v35 + v33) = *(v35 + v32);
              *(v35 + v32) = v36;
            }
          }

          while (++v33 < v32--);
        }
      }
    }

    v37 = *(v7 + 1);
    if (v9 < v37)
    {
      if (__OFSUB__(v9, v19))
      {
        goto LABEL_250;
      }

      if (v9 - v19 < a4)
      {
        break;
      }
    }

LABEL_168:
    if (v9 < v19)
    {
      goto LABEL_249;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v58 = *(v10 + 2);
    v57 = *(v10 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      result = sub_1D698BA94((v57 > 1), v58 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v59;
    v60 = &v10[16 * v58];
    *(v60 + 4) = v19;
    *(v60 + 5) = v9;
    v61 = *v111;
    if (!*v111)
    {
      goto LABEL_259;
    }

    if (v58)
    {
      while (1)
      {
        v5 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_188:
          if (v65)
          {
            goto LABEL_238;
          }

          v78 = &v10[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_241;
          }

          v84 = &v10[16 * v5 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_244;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_245;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v5 = v59 - 2;
            }

            goto LABEL_209;
          }

          goto LABEL_202;
        }

        v88 = &v10[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_202:
        if (v83)
        {
          goto LABEL_240;
        }

        v91 = &v10[16 * v5];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_243;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_209:
        v99 = v5 - 1;
        if (v5 - 1 >= v59)
        {
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        if (!*v7)
        {
          goto LABEL_256;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v5 + 40];
        sub_1D5E16848((*v7 + v100), (*v7 + *&v10[16 * v5 + 32]), *v7 + v101, v61);
        if (v6)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_234;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D62FF50C(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_235;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        result = sub_1D62FF480(v5);
        v59 = *(v10 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_236;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_237;
      }

      v73 = &v10[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_239;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_242;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v5 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_246;
        }

        if (v64 < v98)
        {
          v5 = v59 - 2;
        }

        goto LABEL_209;
      }

      goto LABEL_188;
    }

LABEL_3:
    v8 = *(v7 + 1);
    if (v9 >= v8)
    {
      goto LABEL_221;
    }
  }

  v38 = v19 + a4;
  if (__OFADD__(v19, a4))
  {
    goto LABEL_252;
  }

  if (v38 >= v37)
  {
    v38 = *(v7 + 1);
  }

  if (v38 < v19)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  if (v9 == v38)
  {
    goto LABEL_168;
  }

  v108 = v7;
  v109 = v6;
  v39 = v9;
  v40 = *v7;
  v41 = (*v7 + v39);
  v113 = v19;
  v114 = v38;
  v42 = v19 - v39;
  while (2)
  {
    v116 = v39;
    v43 = *(v40 + v39);
    v44 = v42;
    v45 = v41;
LABEL_100:
    v46 = 0xE600000000000000;
    v47 = 0x63696C617469;
    switch(v43)
    {
      case 1:
        v46 = 0xE400000000000000;
        v47 = 1684828002;
        break;
      case 2:
        v46 = 0xE800000000000000;
        v47 = 0x6465646E61707865;
        break;
      case 3:
        v47 = 0x65736E65646E6F63;
        v46 = 0xE900000000000064;
        break;
      case 4:
        v46 = 0xE900000000000065;
        v47 = 0x636170536F6E6F6DLL;
        break;
      case 5:
        v46 = 0xE800000000000000;
        v47 = 0x6C61636974726576;
        break;
      case 6:
        v47 = 0x696D6974704F6975;
        v46 = 0xEB0000000064657ALL;
        break;
      case 7:
        v48 = 0x4C7468676974;
        goto LABEL_120;
      case 8:
        v48 = 0x4C65736F6F6CLL;
LABEL_120:
        v47 = v48 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
        v46 = 0xEC000000676E6964;
        break;
      case 9:
        v46 = 0xE400000000000000;
        v47 = 1802723693;
        break;
      case 10:
        v47 = 0x656C797453646C6FLL;
        goto LABEL_118;
      case 11:
        v47 = 0xD000000000000012;
        v46 = 0x80000001D73B9100;
        break;
      case 12:
        v47 = 0x65536E7265646F6DLL;
        v46 = 0xEC00000073666972;
        break;
      case 13:
        v47 = 0x6F646E6572616C63;
        v46 = 0xEF7366697265536ELL;
        break;
      case 14:
        v47 = 0x6972655362616C73;
        v46 = 0xEA00000000007366;
        break;
      case 15:
        v47 = 0x6D726F6665657266;
LABEL_118:
        v46 = 0xEE00736669726553;
        break;
      case 16:
        v46 = 0xE900000000000066;
        v47 = 0x69726553736E6173;
        break;
      case 17:
        v47 = 0x746E656D616E726FLL;
        v46 = 0xEB00000000736C61;
        break;
      case 18:
        v46 = 0xE700000000000000;
        v47 = 0x73747069726373;
        break;
      case 19:
        v46 = 0xE800000000000000;
        v47 = 0x63696C6F626D7973;
        break;
      default:
        break;
    }

    v49 = 0xE600000000000000;
    v50 = 0x63696C617469;
    switch(*(v45 - 1))
    {
      case 1:
        v49 = 0xE400000000000000;
        if (v47 == 1684828002)
        {
          goto LABEL_159;
        }

        goto LABEL_160;
      case 2:
        v49 = 0xE800000000000000;
        if (v47 != 0x6465646E61707865)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 3:
        v49 = 0xE900000000000064;
        if (v47 != 0x65736E65646E6F63)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 4:
        v49 = 0xE900000000000065;
        if (v47 != 0x636170536F6E6F6DLL)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 5:
        v49 = 0xE800000000000000;
        if (v47 != 0x6C61636974726576)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 6:
        v54 = 0x696D6974704F6975;
        v55 = 6579578;
        goto LABEL_150;
      case 7:
        v51 = 0x61654C7468676974;
        v52 = 1735289188;
        goto LABEL_142;
      case 8:
        v50 = 0x61654C65736F6F6CLL;
        v49 = 0xEC000000676E6964;
        goto LABEL_158;
      case 9:
        v49 = 0xE400000000000000;
        if (v47 != 1802723693)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 10:
        v53 = 0x656C797453646C6FLL;
        goto LABEL_155;
      case 11:
        v49 = 0x80000001D73B9100;
        if (v47 != 0xD000000000000012)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 12:
        v51 = 0x65536E7265646F6DLL;
        v52 = 1936091506;
LABEL_142:
        v49 = v52 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v47 != v51)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 13:
        v49 = 0xEF7366697265536ELL;
        if (v47 != 0x6F646E6572616C63)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 14:
        v49 = 0xEA00000000007366;
        if (v47 != 0x6972655362616C73)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 15:
        v53 = 0x6D726F6665657266;
LABEL_155:
        v49 = 0xEE00736669726553;
        if (v47 != v53)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 16:
        v49 = 0xE900000000000066;
        if (v47 != 0x69726553736E6173)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 17:
        v54 = 0x746E656D616E726FLL;
        v55 = 7564385;
LABEL_150:
        v49 = v55 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v47 != v54)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 18:
        v49 = 0xE700000000000000;
        if (v47 != 0x73747069726373)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      case 19:
        v49 = 0xE800000000000000;
        if (v47 != 0x63696C6F626D7973)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      default:
LABEL_158:
        if (v47 != v50)
        {
          goto LABEL_160;
        }

LABEL_159:
        if (v46 == v49)
        {

LABEL_98:
          v39 = v116 + 1;
          ++v41;
          --v42;
          if (v116 + 1 == v114)
          {
            v9 = v114;
            v7 = v108;
            v6 = v109;
            v19 = v113;
            goto LABEL_168;
          }

          continue;
        }

LABEL_160:
        v5 = sub_1D72646CC();

        if ((v5 & 1) == 0)
        {
          goto LABEL_98;
        }

        if (v40)
        {
          v43 = *v45;
          *v45 = *(v45 - 1);
          *--v45 = v43;
          if (__CFADD__(v44++, 1))
          {
            goto LABEL_98;
          }

          goto LABEL_100;
        }

        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        return result;
    }
  }
}

uint64_t sub_1D5E11780(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v117 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_159:
    v10 = *v117;
    if (!*v117)
    {
      goto LABEL_198;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_161:
      v106 = v5;
      v126 = v9;
      v107 = *(v9 + 16);
      if (v107 >= 2)
      {
        while (*v6)
        {
          v5 = v107 - 1;
          v108 = v9;
          v9 = *(v9 + 16 * v107);
          v109 = v108;
          v110 = *&v108[16 * v107 + 24];
          sub_1D5E17458((*v6 + v9), (*v6 + *&v108[16 * v107 + 16]), *v6 + v110, v10);
          if (v106)
          {
          }

          if (v110 < v9)
          {
            goto LABEL_185;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1D62FF50C(v109);
          }

          if (v107 - 2 >= *(v109 + 2))
          {
            goto LABEL_186;
          }

          v111 = &v109[16 * v107];
          *v111 = v9;
          v111[1] = v110;
          v126 = v109;
          result = sub_1D62FF480(v107 - 1);
          v9 = v126;
          v107 = *(v126 + 16);
          if (v107 <= 1)
          {
          }
        }

        goto LABEL_196;
      }
    }

LABEL_192:
    result = sub_1D62FF50C(v9);
    v9 = result;
    goto LABEL_161;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v11 < v7)
    {
      v12 = *v6;
      v13 = v10;
      v121 = v11;
      v14 = *(*v6 + v11);
      v15 = v10[*v6];
      v125 = v14;
      v124 = v15;
      v16 = v7;
      result = _s8NewsFeed20FormatResizeAutoMaskO1loiySbAC_ACtFZ_0(&v125, &v124);
      v119 = result;
      v115 = v13;
      v17 = (v13 + 2);
      if (v17 < v16)
      {
        v121 = v16 - 1;
        while (1)
        {
          v20 = *(v12 + v17);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              v21 = 0xD000000000000011;
              v22 = 0x80000001D73BAB30;
            }

            else if (v20 == 4)
            {
              v21 = 0x656C626978656C66;
              v22 = 0xEE00746867696548;
            }

            else
            {
              v21 = 0xD000000000000014;
              v22 = 0x80000001D73BAB60;
            }
          }

          else if (*(v12 + v17))
          {
            v21 = 0x656C626978656C66;
            v22 = 0xED00006874646957;
            if (v20 != 1)
            {
              v21 = 0xD000000000000013;
              v22 = 0x80000001D73BAB10;
            }
          }

          else
          {
            v21 = 0xD000000000000012;
            v22 = 0x80000001D73BAAE0;
          }

          v23 = *(v12 + v17 - 1);
          v24 = 0xD000000000000014;
          if (v23 == 4)
          {
            v24 = 0x656C626978656C66;
          }

          v25 = 0xEE00746867696548;
          if (v23 != 4)
          {
            v25 = 0x80000001D73BAB60;
          }

          if (v23 == 3)
          {
            v24 = 0xD000000000000011;
            v25 = 0x80000001D73BAB30;
          }

          v26 = 0xD000000000000013;
          if (v23 == 1)
          {
            v26 = 0x656C626978656C66;
            v27 = 0xED00006874646957;
          }

          else
          {
            v27 = 0x80000001D73BAB10;
          }

          if (!*(v12 + v17 - 1))
          {
            v26 = 0xD000000000000012;
            v27 = 0x80000001D73BAAE0;
          }

          if (*(v12 + v17 - 1) <= 2u)
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          if (*(v12 + v17 - 1) <= 2u)
          {
            v29 = v27;
          }

          else
          {
            v29 = v25;
          }

          if (v21 == v28 && v22 == v29)
          {

            if (v119)
            {
              v30 = v17 - 1;
              v10 = v115;
              goto LABEL_43;
            }
          }

          else
          {
            v18 = sub_1D72646CC();

            v19 = v119 ^ v18;
            v6 = a3;
            if (v19)
            {
              v121 = v17 - 1;
              break;
            }
          }

          if (v16 == ++v17)
          {
            v17 = v16;
            break;
          }
        }
      }

      v30 = v121;
      v11 = v17;
      v10 = v115;
      if (v119)
      {
LABEL_43:
        if (v17 < v10)
        {
          goto LABEL_189;
        }

        if (v10 <= v30)
        {
          v54 = (v17 - 1);
          v55 = v10;
          do
          {
            if (v55 != v54)
            {
              v57 = *v6;
              if (!*v6)
              {
                goto LABEL_195;
              }

              v58 = v55[v57];
              v55[v57] = v54[v57];
              v54[v57] = v58;
            }
          }

          while (++v55 < v54--);
        }

        v11 = v17;
      }
    }

    v31 = v6[1];
    v122 = v11;
    if (v11 < v31)
    {
      v75 = __OFSUB__(v11, v10);
      v32 = v11 - v10;
      if (v75)
      {
        goto LABEL_188;
      }

      if (v32 < a4)
      {
        break;
      }
    }

LABEL_108:
    if (v122 < v10)
    {
      goto LABEL_187;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v60 = *(v9 + 16);
    v59 = *(v9 + 24);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      result = sub_1D698BA94((v59 > 1), v60 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v61;
    v62 = v9 + 16 * v60;
    *(v62 + 32) = v10;
    *(v62 + 40) = v122;
    v63 = *v117;
    if (!*v117)
    {
      goto LABEL_197;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v9 + 32);
          v66 = *(v9 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_128:
          if (v68)
          {
            goto LABEL_176;
          }

          v81 = (v9 + 16 * v61);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_179;
          }

          v87 = (v9 + 32 + 16 * v64);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_182;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_183;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_149;
          }

          goto LABEL_142;
        }

        v91 = (v9 + 16 * v61);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_142:
        if (v86)
        {
          goto LABEL_178;
        }

        v94 = v9 + 16 * v64;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_181;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_149:
        v102 = v64 - 1;
        if (v64 - 1 >= v61)
        {
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
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        if (!*v6)
        {
          goto LABEL_194;
        }

        v103 = v9;
        v104 = v9 + 32;
        v9 = *(v9 + 32 + 16 * v102);
        v10 = *(v104 + 16 * v64 + 8);
        sub_1D5E17458((*v6 + v9), (*v6 + *(v104 + 16 * v64)), &v10[*v6], v63);
        if (v5)
        {
        }

        if (v10 < v9)
        {
          goto LABEL_172;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D62FF50C(v103);
        }

        if (v102 >= *(v103 + 2))
        {
          goto LABEL_173;
        }

        v105 = &v103[16 * v102];
        *(v105 + 4) = v9;
        *(v105 + 5) = v10;
        v126 = v103;
        result = sub_1D62FF480(v64);
        v9 = v126;
        v61 = *(v126 + 16);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v9 + 32 + 16 * v61;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_174;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_175;
      }

      v76 = (v9 + 16 * v61);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_177;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_180;
      }

      if (v80 >= v72)
      {
        v98 = (v9 + 32 + 16 * v64);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_184;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_149;
      }

      goto LABEL_128;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v122;
    if (v122 >= v7)
    {
      goto LABEL_159;
    }
  }

  v33 = &v10[a4];
  if (__OFADD__(v10, a4))
  {
    goto LABEL_190;
  }

  if (v33 >= v31)
  {
    v33 = v6[1];
  }

  if (v33 < v10)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v34 = v122;
  if (v122 == v33)
  {
    goto LABEL_108;
  }

  v112 = v9;
  v113 = v5;
  v35 = *v6;
  v36 = (v35 + v122);
  v116 = v10;
  v37 = &v10[-v122];
  v120 = v33;
LABEL_57:
  v123 = v34;
  v38 = *(v35 + v34);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    if (v38 > 2u)
    {
      if (v38 == 3)
      {
        v43 = 0xD000000000000011;
        v44 = 0x80000001D73BAB30;
      }

      else
      {
        if (v38 == 4)
        {
          v43 = 0x656C626978656C66;
        }

        else
        {
          v43 = 0xD000000000000014;
        }

        if (v38 == 4)
        {
          v44 = 0xEE00746867696548;
        }

        else
        {
          v44 = 0x80000001D73BAB60;
        }
      }
    }

    else
    {
      v41 = 0xD000000000000013;
      if (v38 == 1)
      {
        v41 = 0x656C626978656C66;
        v42 = 0xED00006874646957;
      }

      else
      {
        v42 = 0x80000001D73BAB10;
      }

      if (v38)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xD000000000000012;
      }

      if (v38)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0x80000001D73BAAE0;
      }
    }

    v45 = *(v40 - 1);
    v46 = 0xD000000000000014;
    if (v45 == 4)
    {
      v46 = 0x656C626978656C66;
    }

    v47 = 0xEE00746867696548;
    if (v45 != 4)
    {
      v47 = 0x80000001D73BAB60;
    }

    if (v45 == 3)
    {
      v46 = 0xD000000000000011;
      v47 = 0x80000001D73BAB30;
    }

    v48 = 0xD000000000000013;
    if (v45 == 1)
    {
      v48 = 0x656C626978656C66;
      v49 = 0xED00006874646957;
    }

    else
    {
      v49 = 0x80000001D73BAB10;
    }

    if (!*(v40 - 1))
    {
      v48 = 0xD000000000000012;
      v49 = 0x80000001D73BAAE0;
    }

    if (*(v40 - 1) <= 2u)
    {
      v50 = v48;
    }

    else
    {
      v50 = v46;
    }

    if (*(v40 - 1) <= 2u)
    {
      v51 = v49;
    }

    else
    {
      v51 = v47;
    }

    if (v43 == v50 && v44 == v51)
    {

LABEL_56:
      v34 = v123 + 1;
      ++v36;
      --v37;
      if ((v123 + 1) == v120)
      {
        v122 = v120;
        v9 = v112;
        v5 = v113;
        v6 = a3;
        v10 = v116;
        goto LABEL_108;
      }

      goto LABEL_57;
    }

    v52 = sub_1D72646CC();

    if ((v52 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!v35)
    {
      break;
    }

    v38 = *v40;
    *v40 = *(v40 - 1);
    *--v40 = v38;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}