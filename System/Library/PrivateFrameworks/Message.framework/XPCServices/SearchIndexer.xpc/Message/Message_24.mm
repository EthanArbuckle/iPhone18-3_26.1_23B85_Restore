void sub_100189F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      v10 = *a4;
      if (sub_1004A4754() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v9 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v11 = 0;
          while (1)
          {
            v12 = *(a3 + 32 + 4 * v11);
            v13 = *a4;
            sub_1004A6E94();
            sub_1004A6EE4(v12);
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v14 = sub_1004A4724();
                if ((v15 & 1) == 0 && v14 == v11)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_1004A4734();
            if (v11 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_17;
      }

      sub_1004A46F4();
      v28 = sub_1004A4724();
      if ((v29 & 1) != 0 || v28 >= a1)
      {
LABEL_42:
        sub_1004A4744();
LABEL_17:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v5))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v20 = (v19 & (((v16 >> 6) - v5) >> 63)) + (v16 >> 6) - v5;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v28, v5))
      {
        sub_1004A4734();
        goto LABEL_42;
      }

      __break(1u);
LABEL_48:
      sub_1004A46F4();
      v30 = sub_1004A4724();
      if ((v31 & 1) == 0 && v30 >= v4)
      {
        if (__OFSUB__(v30, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v21 = *a4;
    if ((v9 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_48;
    }

    if (v9 < v4)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v4 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v9 != v4)
    {
      if (v9 <= v4)
      {
LABEL_68:
        __break(1u);
        return;
      }

      while (1)
      {
        v22 = *(a3 + 32 + 4 * v4);
        v23 = *a4;
        sub_1004A6E94();
        sub_1004A6EE4(v22);
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v24 = sub_1004A4724();
            if ((v25 & 1) == 0 && v24 == v4)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        v26 = v4 + 1;
        v27 = __OFADD__(v4, 1);
        if (__OFSUB__(v4, v5))
        {
          goto LABEL_58;
        }

        sub_1004A4734();
        if (v27)
        {
          goto LABEL_59;
        }

        ++v4;
        if (v26 == v9)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_10018A334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 8);
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 12) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018A360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v4 = *(a1 + 8);
    *a2 = result;
    *(a2 + 8) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10018A380(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 7u)
  {
    switch(a1)
    {
      case 5u:
        return a2 == 5;
      case 6u:
        return a2 == 6;
      case 7u:
        return a2 == 7;
    }

LABEL_16:
    if (a2 - 5 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {
      return a2 == 10;
    }

    goto LABEL_16;
  }

  return a2 == 9;
}

BOOL sub_10018A440(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 == 2)
    {
      if ((a2 & 0xC000) == 0x8000)
      {
        return (a2 ^ a1) == 0;
      }
    }

    else if (a1 > 0xC001u)
    {
      if (a1 == 49154)
      {
        if (a2 == 49154)
        {
          return 1;
        }
      }

      else if (a2 == 49155)
      {
        return 1;
      }
    }

    else if (a1 == 49152)
    {
      if (a2 == 49152)
      {
        return 1;
      }
    }

    else if (a2 == 49153)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 14))
    {
      if (a2 < 0x4000u)
      {
        return a1 == a2;
      }

      return 0;
    }

    if ((a2 & 0xC000) == 0x4000)
    {
      return (a2 ^ a1) == 0;
    }
  }

  return 0;
}

uint64_t sub_10018A510(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10018A560(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100188E2C(v2, 0);
  sub_100091BA8(0, v2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 44);
  while (1)
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    result = sub_10015C014(*(v3 - 3), v4, &_swiftEmptyArrayStorage[4], _swiftEmptyArrayStorage[2]);
    if ((v7 & 1) == 0)
    {
      break;
    }

    sub_100187EA0(v8, v4);
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_100091BA8((v9 > 1), v10 + 1, 1);
    }

    v3 += 4;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v5;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018A6B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10018900C(v2, 0);
  sub_100091FE8(0, v2, 0);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      v5 = v4 + 32 * v3;
      v6 = *(v5 + 16);
      v7 = *v5;
      v8 = *(v5 + 24);
      v9 = *(v5 + 8);

      if (v8 == 1)
      {
        break;
      }

      v11 = &_swiftEmptyArrayStorage[4];
      v12 = _swiftEmptyArrayStorage[2];
      if (v12)
      {
        while (1)
        {
          v13 = *v11++;
          if (v13 == v7)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        return result;
      }

LABEL_7:
      sub_100188018(v7, v12, sub_100091DA8);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100091FE8((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[3 * v15];
      v16[4] = v9;
      ++v3;
      *(v16 + 40) = v6;
      v16[6] = v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t sub_10018A834(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100188E2C(v2, 0);
  sub_1000923E8(0, v2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 44);
  while (1)
  {
    v4 = *v3;
    v5 = *(v3 - 1);
    result = sub_10015C014(*(v3 - 6), v5, &_swiftEmptyArrayStorage[4], _swiftEmptyArrayStorage[2]);
    if ((v7 & 1) == 0)
    {
      break;
    }

    sub_100187EA0(v8, v5);
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_1000923E8((v9 > 1), v10 + 1, 1);
    }

    v3 += 8;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v4;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018A98C(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v10 = result;
  v55[0] = a4;
  v55[1] = a5;
  v55[2] = a6;
  v55[3] = sub_100187D9C;
  v55[4] = 0;
  v55[5] = sub_10018D138;
  v55[6] = 0;
  v55[7] = sub_10018D14C;
  v55[8] = 0;
  v55[9] = result;
  if (!result)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
LABEL_52:
    v49 = 1;
    goto LABEL_53;
  }

  v11 = *(a6 + 16);
  v54 = a2 + 56;
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  v12 = 0;
  v13 = a5 + 40;
  while (2)
  {
    if (v12 >= v11)
    {
      goto LABEL_52;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    --v10;
    v14 = (v13 + 16 * v12);
    while (1)
    {
      if (v12 >= *(a5 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v12 >= *(a6 + 16))
      {
        goto LABEL_55;
      }

      v15 = *v14;
      v16 = *(v14 - 1);
      v17 = *(a6 + 32 + v12);

      if (v17 != 1)
      {
        break;
      }

LABEL_8:
      ++v12;

      v14 += 4;
      if (v11 == v12)
      {
        goto LABEL_52;
      }
    }

    if (!v16)
    {
      goto LABEL_8;
    }

    if (*(a2 + 16))
    {
      v18 = *(a2 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v15 | (v15 << 32));
      v19 = sub_1004A6F14();
      v20 = -1 << *(a2 + 32);
      v21 = v19 & ~v20;
      if ((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        do
        {
          v23 = (*(a2 + 48) + 16 * v21);
          if ((v23[2] | (v23[2] << 32)) == (v15 | (v15 << 32)))
          {
            v24 = *v23;
            v25 = *(*v23 + 16);
            if (v25 == *(v16 + 16))
            {
              if (v25)
              {
                v26 = v24 == v16;
              }

              else
              {
                v26 = 1;
              }

              if (v26)
              {
                goto LABEL_32;
              }

              v27 = (v24 + 32);
              v28 = (v16 + 32);
              while (1)
              {
                v30 = *v27++;
                v29 = v30;
                v31 = *v28++;
                if (v29 != v31)
                {
                  break;
                }

                if (!--v25)
                {
                  goto LABEL_32;
                }
              }
            }
          }

          v21 = (v21 + 1) & v22;
        }

        while (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
      }
    }

    v32 = a3[1];
    v33 = *(v32 + 16);
    v34 = v32 + 32;
    if (!*a3)
    {
      sub_10015C014(v16, v15, v34, v33);
      if ((v36 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (a8)
      {

        goto LABEL_48;
      }

      v37 = a3[1];
      v38 = *(v37 + 16);
      v39 = v37 + 32;
      if (*a3)
      {
        v40 = sub_10015C0B4(v16, v15, v39, v38, (*a3 + 16));
        if ((v41 & 1) == 0)
        {
LABEL_42:
          v47 = v40;

          v48 = a3[2];
          result = swift_isUniquelyReferenced_nonNull_native();
          a3[2] = v48;
          if ((result & 1) == 0)
          {
            result = sub_100141B5C(v48);
            v48 = result;
            a3[2] = result;
          }

          if ((v47 & 0x8000000000000000) == 0)
          {
            if (v47 >= *(v48 + 16))
            {
              goto LABEL_60;
            }

            v46 = v48 + 2 * v47;
            goto LABEL_47;
          }

LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          return result;
        }
      }

      else
      {
        v40 = sub_10015C014(v16, v15, v39, v38);
        if ((v42 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      sub_100187EA0(v16, v15);

      v43 = a3[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      a3[2] = v43;
      if ((result & 1) == 0)
      {
        result = sub_1000923E8(0, *(v43 + 16) + 1, 1);
        v43 = a3[2];
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        result = sub_1000923E8((v44 > 1), v45 + 1, 1);
        v43 = a3[2];
      }

      *(v43 + 16) = v45 + 1;
      v46 = v43 + 2 * v45;
LABEL_47:
      *(v46 + 32) = -16384;
LABEL_48:
      if (*(a3[1] + 16) < a7)
      {
        goto LABEL_49;
      }

LABEL_56:
      v49 = 0;
      break;
    }

    sub_10015C0B4(v16, v15, v34, v33, (*a3 + 16));
    if (v35)
    {
      goto LABEL_29;
    }

LABEL_32:

LABEL_49:
    ++v12;
    v49 = 1;
    v13 = a5 + 40;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_53:
  sub_100025F40(v55, &qword_1005D2D28, &qword_1004DB0E0);

  return v49;
}

unint64_t sub_10018ADEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a10;
  v52[0] = a3;
  v52[1] = a4;
  v52[2] = a5;
  v52[3] = sub_10018D148;
  v52[4] = 0;
  v52[5] = sub_10018CB8C;
  v52[6] = v14;
  v52[7] = sub_10018D138;
  v52[8] = 0;
  v52[9] = sub_10018D14C;
  v52[10] = 0;
  v15 = *(a5 + 16);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  if (!v15)
  {
LABEL_46:
    v17 = 1;
LABEL_47:
    sub_100025F40(v52, &qword_1005D2D30, &qword_1004DB0E8);

    return v17;
  }

  v17 = 0;
  v18 = 0;
  v19 = (a4 + 40);
  v45 = v14;
  v46 = a3;
  while (v18 < *(a4 + 16))
  {
    if (v18 >= *(a5 + 16))
    {
      goto LABEL_49;
    }

    v20 = *v19;
    v21 = *(v19 - 1);

    if ((sub_100011B00(v22, v20, *(v14 + 16)) & 1) == 0)
    {

LABEL_16:

      goto LABEL_17;
    }

    if (!v21 || (sub_100011B00(v21, v20, a1) & 1) != 0)
    {
      goto LABEL_16;
    }

    v23 = a2[1];
    v24 = *(v23 + 16);
    v25 = v23 + 32;
    if (*a2)
    {
      sub_10015C0B4(v21, v20, v25, v24, (*a2 + 16));
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_10015C014(v21, v20, v25, v24);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v27 = *(a4 + 16);
    v28 = a4 + 32;
    if (a3)
    {
      result = sub_10015C0B4(v21, v20, v28, v27, (a3 + 16));
      if (v29)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = sub_10015C014(v21, v20, v28, v27);
      if (v31)
      {
        goto LABEL_23;
      }
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    if (result >= *(a5 + 16))
    {
      goto LABEL_52;
    }

    if (*(a5 + 32 + result) != 1)
    {
LABEL_24:
      v34 = 0x4000;
      goto LABEL_31;
    }

LABEL_23:
    v32 = sub_100187C0C(a6, a7);
    v33 = sub_100011B00(v21, v20, v32);

    if (v33)
    {
      goto LABEL_24;
    }

    if (*(a9 + 16) && (sub_100063B5C(v21, v20), (v35 & 1) != 0))
    {
      v34 = 16385;
    }

    else if (sub_100011B00(v21, v20, a10))
    {
      v34 = 16386;
    }

    else
    {
      v34 = 16387;
    }

LABEL_31:
    v49 = v34;
    v36 = a2[1];
    v37 = *(v36 + 16);
    v38 = v36 + 32;
    if (*a2)
    {
      v39 = sub_10015C0B4(v21, v20, v38, v37, (*a2 + 16));
      if ((v40 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v39 = sub_10015C014(v21, v20, v38, v37);
      if ((v41 & 1) == 0)
      {
LABEL_40:
        v44 = v39;

        v42 = a2[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        a2[2] = v42;
        if ((result & 1) == 0)
        {
          result = sub_100141B5C(v42);
          v42 = result;
          a2[2] = result;
        }

        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (v44 >= *(v42 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_44;
      }
    }

    sub_100187EA0(v21, v20);

    v42 = a2[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    a2[2] = v42;
    if ((result & 1) == 0)
    {
      result = sub_1000923E8(0, *(v42 + 16) + 1, 1);
      v42 = a2[2];
    }

    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    if (v44 >= v43 >> 1)
    {
      result = sub_1000923E8((v43 > 1), v44 + 1, 1);
      v42 = a2[2];
    }

    *(v42 + 16) = v44 + 1;
LABEL_44:
    *(v42 + 2 * v44 + 32) = v49;
    v14 = v45;
    a3 = v46;
    if (*(a2[1] + 16) >= a11)
    {
      goto LABEL_47;
    }

LABEL_17:
    v17 = ++v18 >= v15;
    v19 += 4;
    if (v15 == v18)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_10018B248(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = a12;
  v19 = sub_10018A834(_swiftEmptyArrayStorage);
  v21 = v20;
  v168 = v19;
  v169 = v20;
  v170 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = a12;
  v171[0] = a6;
  v171[1] = a7;
  v171[2] = a8;
  v171[3] = sub_10018D148;
  v171[4] = 0;
  v171[5] = sub_10018CAB0;
  v171[6] = v24;
  v171[7] = sub_10018D138;
  v171[8] = 0;
  v171[9] = sub_10018A334;
  v171[10] = 0;

  v160 = a8;

  v167[0] = sub_1000664DC(v171);
  sub_100186F80(v167);
  v25 = a13;
  sub_100025F40(v171, &qword_1005D2D18, &qword_1004DB0D0);
  v26 = v167[0];
  v27 = v167[0][2];
  v161 = a7;
  v158 = v23;
  v156 = a3;
  if (!v27)
  {

    v54 = v160;
    if (a14)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (a3)
    {
      v55 = 0;
    }

    else
    {
      v56 = a2;
      if (a2 >= a1)
      {
        v56 = a1;
      }

      v57 = __OFSUB__(v56, 2);
      v58 = v56 - 2;
      if (v57)
      {
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

        __break(1u);
        return result;
      }

      v55 = v58 & ~(v58 >> 63);
    }

    if (sub_10018A98C(v55, a11, &v168, a6, a7, v54, a2, a3 & 1))
    {
      goto LABEL_50;
    }

    goto LABEL_192;
  }

  for (i = 0; i != v27; ++i)
  {
    if (i >= v26[2])
    {
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
      goto LABEL_222;
    }

    v30 = &v26[2 * i + 4];
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 12);
    if ((sub_100011B00(*v30, *(v30 + 8), a11) & 1) == 0)
    {
      v34 = v21 + 32;
      v35 = *(v21 + 16);
      if (v168)
      {
        sub_10015C0B4(v31, v32, v34, v35, (v168 + 16));
        if ((v36 & 1) == 0)
        {
          continue;
        }
      }

      else if (v35)
      {
        for (j = 0; j != v35; ++j)
        {
          v38 = (v34 + 16 * j);
          if ((v38[2] | (v38[2] << 32)) == (v32 | (v32 << 32)))
          {
            v39 = *v38;
            v40 = *(*v38 + 16);
            if (v40 == *(v31 + 16))
            {
              if (v40)
              {
                v41 = v39 == v31;
              }

              else
              {
                v41 = 1;
              }

              if (v41)
              {
                goto LABEL_6;
              }

              v42 = (v39 + 32);
              v43 = (v31 + 32);
              while (1)
              {
                v45 = *v42++;
                v44 = v45;
                v46 = *v43++;
                if (v44 != v46)
                {
                  break;
                }

                if (!--v40)
                {
                  goto LABEL_6;
                }
              }
            }
          }
        }
      }

      v47 = a7[2];
      if (a6)
      {
        v48 = sub_10015C0B4(v31, v32, (a7 + 4), v47, a6 + 2);
        if (v49)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_10015C014(v31, v32, (a7 + 4), v47);
        if (v50)
        {
          goto LABEL_32;
        }
      }

      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_215;
      }

      if (v48 >= *(v160 + 16))
      {
        goto LABEL_216;
      }

      if ((*(v160 + 32 + v48) & 1) == 0)
      {

        v29 = 0;
        goto LABEL_5;
      }

LABEL_32:

      v51 = sub_100187C0C(v23, a9);
      v52 = sub_100011B00(v31, v32, v51);

      if (v52)
      {
        v29 = 0;
      }

      else if (*(a12 + 16) && (sub_100063B5C(v31, v32), (v53 & 1) != 0))
      {
        v29 = 1;
      }

      else if (sub_100011B00(v31, v32, a13))
      {
        v29 = 2;
      }

      else
      {
        v29 = 3;
      }

      a7 = v161;
LABEL_5:
      sub_100186BA4(v29 | (v33 << 8), v31, v32);
      v21 = v169;
      if (*(v169 + 16) >= a2)
      {

        goto LABEL_195;
      }

      continue;
    }

LABEL_6:
    ;
  }

  v54 = v160;
  v25 = a13;
  v18 = a12;
  a3 = v156;
  if ((a14 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_50:
  if (sub_10018ADEC(a11, &v168, a6, a7, v54, v23, a9, a10, v18, v25, a2))
  {
    v59 = a4();
    v60 = swift_allocObject();
    v60[2] = v59;
    v167[0] = a6;
    v167[1] = a7;
    v167[2] = v54;
    v167[3] = sub_10018D148;
    v167[4] = 0;
    v167[5] = sub_10018CAB8;
    v167[6] = v60;
    v167[7] = sub_10018D138;
    v167[8] = 0;
    v167[9] = sub_10018A334;
    v167[10] = 0;
    v61 = v54[2];

    sub_10000E268(v167, &v164, &qword_1005D2D20, &qword_1004DB0D8);
    if (v61)
    {
      v62 = a7;
      v63 = 0;
      v153 = v54 + 4;
      v155 = v60;
      v64 = v62 + 5;
      v157 = v61;
      do
      {
        if (v63 >= v161[2])
        {
          goto LABEL_211;
        }

        if (v63 >= v54[2])
        {
          goto LABEL_212;
        }

        v65 = *v64;
        v66 = *(v64 - 1);

        v162 = v66;
        v163 = v65;
        sub_100187DE4(&v162, v60[2], &v164);

        v67 = v164;
        if (!v164 || (v68 = v165 | (v166 << 32), (sub_100011B00(v164, v165, a11) & 1) != 0))
        {

          goto LABEL_54;
        }

        v70 = v168;
        v69 = v169;
        v71 = *(v169 + 16);
        v72 = v169 + 32;
        if (v168)
        {
          sub_10015C0B4(v67, v68, v72, v71, (v168 + 16));
          if ((v73 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_10015C014(v67, v68, v72, v71);
          if ((v77 & 1) == 0)
          {
LABEL_69:

            v54 = v160;
            v61 = v157;
            goto LABEL_54;
          }
        }

        if (BYTE4(v68) > 7u)
        {
          switch(BYTE4(v68))
          {
            case 8u:
              v78 = -16383;
              goto LABEL_130;
            case 9u:
              v78 = -16382;
              goto LABEL_130;
            case 0xAu:
              v78 = -16381;
              if (v156)
              {
                goto LABEL_74;
              }

              goto LABEL_83;
          }

LABEL_79:
          v82 = v161[2];
          if (a6)
          {
            v83 = sub_10015C0B4(v67, v68, (v161 + 4), v82, a6 + 2);
            if (v84)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v83 = sub_10015C014(v67, v68, (v161 + 4), v82);
            if (v92)
            {
              goto LABEL_97;
            }
          }

          if ((v83 & 0x8000000000000000) != 0)
          {
            goto LABEL_226;
          }

          if (v83 >= *(v160 + 16))
          {
            goto LABEL_229;
          }

          if (*(v153 + v83))
          {
LABEL_97:
            v93 = sub_100187C0C(v158, a9);
            v94 = sub_100011B00(v67, v68, v93);

            if (v94)
            {
              goto LABEL_98;
            }

            if (*(a12 + 16) && (sub_100063B5C(v67, v68), (v103 & 1) != 0))
            {
              v95 = 1;
            }

            else if (sub_100011B00(v67, v68, a13))
            {
              v95 = 2;
            }

            else
            {
              v95 = 3;
            }
          }

          else
          {
LABEL_98:
            v95 = 0;
          }

          v78 = v95 | (BYTE4(v68) << 8);
          goto LABEL_130;
        }

        if (BYTE4(v68) == 5)
        {
          v79 = v161[2];
          if (a6)
          {
            v80 = sub_10015C0B4(v67, v68, (v161 + 4), v79, a6 + 2);
            if (v81)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v80 = sub_10015C014(v67, v68, (v161 + 4), v79);
            if (v89)
            {
LABEL_91:
              v90 = sub_100187C0C(v158, a9);
              v91 = sub_100011B00(v67, v68, v90);

              if (v91)
              {
                goto LABEL_92;
              }

              if (*(a12 + 16) && (sub_100063B5C(v67, v68), (v102 & 1) != 0))
              {
                v78 = 16385;
              }

              else if (sub_100011B00(v67, v68, a13))
              {
                v78 = 16386;
              }

              else
              {
                v78 = 16387;
              }

              goto LABEL_130;
            }
          }

          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_223;
          }

          if (v80 >= *(v160 + 16))
          {
            goto LABEL_230;
          }

          if ((*(v153 + v80) & 1) == 0)
          {
LABEL_92:
            v78 = 0x4000;
            goto LABEL_130;
          }

          goto LABEL_91;
        }

        if (BYTE4(v68) == 6)
        {
          v78 = -16384;
          if (v156)
          {
LABEL_74:

            v54 = v160;
            v61 = v157;
            goto LABEL_146;
          }

LABEL_83:
          v85 = *(v69 + 16);
          v86 = v69 + 32;
          if (v70)
          {
            v87 = sub_10015C0B4(v67, v68, v86, v85, (v70 + 16));
            if ((v88 & 1) == 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v87 = sub_10015C014(v67, v68, v86, v85);
            if ((v99 & 1) == 0)
            {
LABEL_106:
              v100 = v87;
              v54 = v160;
              v61 = v157;

              v101 = v170;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_100141B5C(v101);
              }

              if ((v100 & 0x8000000000000000) != 0)
              {
                goto LABEL_224;
              }

              if (v100 >= *(v101 + 2))
              {
                goto LABEL_227;
              }

              goto LABEL_145;
            }
          }

          goto LABEL_132;
        }

        if (BYTE4(v68) != 7)
        {
          goto LABEL_79;
        }

        v74 = v161[2];
        if (a6)
        {
          v75 = sub_10015C0B4(v67, v68, (v161 + 4), v74, a6 + 2);
          if ((v76 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v75 = sub_10015C014(v67, v68, (v161 + 4), v74);
          if ((v96 & 1) == 0)
          {
LABEL_100:
            if ((v75 & 0x8000000000000000) != 0)
            {
              goto LABEL_225;
            }

            if (v75 >= *(v160 + 16))
            {
              goto LABEL_228;
            }

            if ((*(v153 + v75) & 1) == 0)
            {
LABEL_104:
              v78 = 0x8000;
              goto LABEL_130;
            }
          }
        }

        v97 = sub_100187C0C(v158, a9);
        v98 = sub_100011B00(v67, v68, v97);

        if (v98)
        {
          goto LABEL_104;
        }

        if (*(a12 + 16) && (sub_100063B5C(v67, v68), (v104 & 1) != 0))
        {
          v78 = -32767;
        }

        else if (sub_100011B00(v67, v68, a13))
        {
          v78 = -32766;
        }

        else
        {
          v78 = -32765;
        }

LABEL_130:
        v105 = *(v69 + 16);
        v106 = v69 + 32;
        if (v70)
        {
          v107 = sub_10015C0B4(v67, v68, v106, v105, (v70 + 16));
          if ((v108 & 1) == 0)
          {
            v100 = v107;
            v54 = v160;
            v61 = v157;
            goto LABEL_141;
          }

LABEL_132:
          v54 = v160;
          v61 = v157;
          goto LABEL_134;
        }

        v109 = sub_10015C014(v67, v68, v106, v105);
        v54 = v160;
        v61 = v157;
        if ((v110 & 1) == 0)
        {
          v100 = v109;
LABEL_141:

          v101 = v170;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100141B5C(v101);
          }

          if ((v100 & 0x8000000000000000) != 0)
          {
            goto LABEL_219;
          }

          if (v100 >= *(v101 + 2))
          {
            goto LABEL_220;
          }

LABEL_145:
          *&v101[2 * v100 + 32] = v78;
          v170 = v101;
          goto LABEL_146;
        }

LABEL_134:
        sub_100187EA0(v67, v68);

        v111 = v170;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000923E8(0, *(v111 + 2) + 1, 1);
          v111 = v170;
        }

        v113 = *(v111 + 2);
        v112 = *(v111 + 3);
        if (v113 >= v112 >> 1)
        {
          sub_1000923E8((v112 > 1), v113 + 1, 1);
          v111 = v170;
        }

        *(v111 + 2) = v113 + 1;
        *&v111[2 * v113 + 32] = v78;
LABEL_146:
        v60 = v155;
        if (*(v169 + 16) >= a2)
        {

          sub_100025F40(v167, &qword_1005D2D20, &qword_1004DB0D8);

          goto LABEL_194;
        }

LABEL_54:
        ++v63;
        v64 += 4;
      }

      while (v61 != v63);
    }

    sub_100025F40(v167, &qword_1005D2D20, &qword_1004DB0D8);

    v114 = v161;

    v115 = swift_allocObject();
    v115[2] = v158;
    v115[3] = a9;
    v115[4] = a10;
    v116 = swift_allocObject();
    *(v116 + 16) = sub_10018CAF8;
    *(v116 + 24) = v115;
    v117 = v54[2];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v117)
    {
      for (k = 0; k != v117; ++k)
      {
        if (k >= *(v114 + 16))
        {
          goto LABEL_213;
        }

        if (k >= *(v160 + 16))
        {
          goto LABEL_214;
        }

        v119 = &v161[2 * k + 4];
        v120 = *v119;
        v121 = *(v119 + 8);

        v123 = *(v116 + 24);
        if ((*(v116 + 16))(v122, v121) & 1) == 0 || (sub_100011B00(v120, v121, a11))
        {
LABEL_151:

          v114 = v161;
          continue;
        }

        v124 = v168;
        v125 = v169;
        v126 = *(v169 + 16);
        if (v168)
        {
          sub_10015C0B4(v120, v121, v169 + 32, v126, (v168 + 16));
          if ((v127 & 1) == 0)
          {
            goto LABEL_151;
          }

          v128 = sub_10015C0B4(v120, v121, v125 + 32, *(v125 + 16), (v124 + 16));
          if (v129)
          {
LABEL_175:
            sub_100187EA0(v120, v121);

            v141 = v170;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000923E8(0, *(v141 + 2) + 1, 1);
              v141 = v170;
            }

            v114 = v161;
            v143 = *(v141 + 2);
            v142 = *(v141 + 3);
            if (v143 >= v142 >> 1)
            {
              sub_1000923E8((v142 > 1), v143 + 1, 1);
              v141 = v170;
            }

            *(v141 + 2) = v143 + 1;
            *&v141[2 * v143 + 32] = -16382;
            v125 = v169;
            goto LABEL_185;
          }
        }

        else
        {
          if (v126)
          {
            for (m = 0; m != v126; ++m)
            {
              v131 = (v169 + 32 + 16 * m);
              if ((v131[2] | (v131[2] << 32)) == (v121 | (v121 << 32)))
              {
                v132 = *v131;
                v133 = *(*v131 + 16);
                if (v133 == *(v120 + 16))
                {
                  if (v133)
                  {
                    v134 = v132 == v120;
                  }

                  else
                  {
                    v134 = 1;
                  }

                  if (v134)
                  {
                    goto LABEL_151;
                  }

                  v135 = (v132 + 32);
                  v136 = (v120 + 32);
                  while (1)
                  {
                    v138 = *v135++;
                    v137 = v138;
                    v139 = *v136++;
                    if (v137 != v139)
                    {
                      break;
                    }

                    if (!--v133)
                    {
                      goto LABEL_151;
                    }
                  }
                }
              }
            }
          }

          v128 = sub_10015C014(v120, v121, v169 + 32, v126);
          if (v140)
          {
            goto LABEL_175;
          }
        }

        v144 = v128;

        v141 = v170;
        v114 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_100141B5C(v141);
        }

        if ((v144 & 0x8000000000000000) != 0)
        {
          goto LABEL_217;
        }

        if (v144 >= *(v141 + 2))
        {
          goto LABEL_218;
        }

        *&v141[2 * v144 + 32] = -16382;
LABEL_185:
        v170 = v141;
        if (*(v125 + 16) >= a2)
        {

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            goto LABEL_204;
          }

          return v168;
        }
      }
    }

    v145 = swift_isEscapingClosureAtFileLocation();

    if ((v145 & 1) == 0)
    {
      LOBYTE(v121) = v156;
      if ((sub_10018A98C(0x7FFFFFFFFFFFFFFFLL, a11, &v168, a6, v114, v160, a2, v156 & 1) & 1) == 0 || !*(v114 + 16))
      {

        goto LABEL_194;
      }

      isEscapingClosureAtFileLocation = *(v114 + 32);
      LODWORD(v116) = *(v114 + 40);
      if (sub_100011B00(isEscapingClosureAtFileLocation, v116, a11))
      {

        goto LABEL_207;
      }

      v150 = *(v169 + 16);
      v149 = v169 + 32;
      if (v168)
      {
        sub_10015C0B4(isEscapingClosureAtFileLocation, v116, v149, v150, (v168 + 16));
      }

      else
      {
LABEL_204:
        sub_10015C014(isEscapingClosureAtFileLocation, v116, v149, v150);
      }

      v151 = v147;

      if ((v151 & 1) != 0 && (v121 & 1) == 0)
      {
        sub_100186BA4(0xC003u, isEscapingClosureAtFileLocation, v116);
      }

      else
      {
LABEL_207:
      }

      goto LABEL_193;
    }

    goto LABEL_221;
  }

LABEL_192:

LABEL_193:

LABEL_194:

LABEL_195:

  return v168;
}

void sub_10018C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v73 = a6;
  v65 = type metadata accessor for State.Logger();
  v11 = *(*(v65 - 8) + 64);
  v12 = __chkstk_darwin(v65);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v61 - v15;
  v18 = a5[2];
  v17 = a5[3];
  v19 = a5[4];
  if (!v17 || (sub_100104744(a5[3], a2) & 1) == 0 || (sub_10010463C(v19, a3) & 1) == 0)
  {
    a5[2] = a1;
    a5[3] = a2;
    a5[4] = a3;
    sub_10018A510(v18, v17);
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = 255;
      if (v20 < 0xFF)
      {
        v21 = *(a3 + 16);
      }

      v69 = v21;
      v61[1] = a1;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v22 = 0;
      v23 = (a2 + 40);
      *&v24 = 68160003;
      v62 = v24;
      v71 = v14;
      v72 = a2;
      v63 = a3;
      v64 = a4;
      v70 = v20;
      while (1)
      {
        if (v22 >= *(a2 + 16))
        {
          __break(1u);
          return;
        }

        v26 = *(v23 - 1);
        v27 = *v23;
        v28 = *(a3 + 2 * v22 + 32);
        v29 = v22 + 1;
        v30 = v22 > 0xFE;
        v31 = v69;
        if (v30)
        {
          v31 = -1;
        }

        v75 = v31;
        v76 = v28;
        v32 = v30 ? -1 : v29;
        v74 = v32;
        v33 = sub_1000B7840(v26, v27, v73);
        if (v34)
        {
          v36 = v33;
          v37 = v34;
          v38 = v35;
        }

        else
        {

          v36 = -1;
          v37 = v26;
          v38 = v27;
        }

        sub_10018C9E0(a4, v14);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v39 = sub_1004A4A54();
        v40 = sub_1004A6034();
        if (os_log_type_enabled(v39, v40))
        {
          break;
        }

        sub_10010E8C4(v14);

        swift_bridgeObjectRelease_n();
LABEL_9:
        v23 += 4;
        v22 = v29;
        v14 = v71;
        v25 = v70 == v29;
        a2 = v72;
        if (v25)
        {

          return;
        }
      }

      v67 = v40;
      v68 = v29;
      v41 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v79[0] = v66;
      *v41 = v62;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v14[*(v65 + 20)];
      sub_10010E8C4(v14);
      *(v41 + 10) = v42;
      *(v41 + 11) = 1040;
      *(v41 + 13) = 2;
      *(v41 + 17) = 512;
      *(v41 + 19) = v36;

      *(v41 + 21) = 2160;
      *(v41 + 23) = 0x786F626C69616DLL;
      *(v41 + 31) = 2085;
      v77 = v37;
      v78 = v38;
      v43 = sub_1004A5824();
      v45 = sub_10015BA6C(v43, v44, v79);

      *(v41 + 33) = v45;
      *(v41 + 41) = 256;
      v46 = v75;
      *(v41 + 43) = v74;
      *(v41 + 44) = 256;
      *(v41 + 46) = v46;
      v47 = v76;
      v48 = v76 >> 14;
      *(v41 + 47) = 2082;
      if (v47 >> 14 > 1)
      {
        if (v48 != 2)
        {
          v29 = v68;
          v50 = v67;
          v49 = 0xA090806u >> (8 * v47);
          goto LABEL_29;
        }

        LOBYTE(v49) = 7;
      }

      else if (v48)
      {
        LOBYTE(v49) = 5;
      }

      else
      {
        v49 = v47 >> 8;
      }

      v29 = v68;
      v50 = v67;
LABEL_29:
      LOBYTE(v77) = v49;
      v51 = sub_1004A5824();
      v53 = sub_10015BA6C(v51, v52, v79);

      *(v41 + 49) = v53;
      *(v41 + 57) = 2082;
      if (v48 > 2)
      {
        LOBYTE(v47) = 0;
      }

      LOBYTE(v77) = v47;
      v54 = sub_1004A5824();
      v56 = sub_10015BA6C(v54, v55, v79);

      *(v41 + 59) = v56;
      _os_log_impl(&_mh_execute_header, v39, v50, "[%.*hhx] [{%.*hx}%{sensitive,mask.mailbox}s] [MailboxesToSelect] %hhu/%hhu: %{public}s - %{public}s", v41, 0x43u);
      swift_arrayDestroy();

      a3 = v63;
      a4 = v64;
      goto LABEL_9;
    }

    sub_10018C9E0(a4, v16);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v57 = sub_1004A4A54();
    v58 = sub_1004A6034();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 68157952;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      v60 = v16[*(v65 + 20)];
      sub_10010E8C4(v16);
      *(v59 + 10) = v60;
      _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx] [MailboxesToSelect] None.", v59, 0xBu);
    }

    else
    {
      sub_10010E8C4(v16);
    }
  }
}

uint64_t sub_10018C9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State.Logger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018CA44()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  return sub_1001627A4(v1, v2);
}

uint64_t sub_10018CA78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018CAC0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018CAF8(uint64_t a1, unsigned int a2)
{
  v5 = *(v2 + 32);
  v6 = sub_100187C0C(*(v2 + 16), *(v2 + 24));
  LOBYTE(a2) = sub_100011B00(a1, a2, v6);

  return a2 & 1;
}

uint64_t sub_10018CB54()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018CB94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 136);

  if (*(v0 + 160))
  {

    v5 = *(v0 + 176);
  }

  sub_100020D58(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));
  v6 = *(v0 + 216);

  v7 = *(v0 + 224);

  v8 = *(v0 + 232);

  v9 = *(v0 + 264);

  v10 = *(v0 + 272);

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
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

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10018CD88(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10018CD9C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t _s17MailboxesToSelectV6ReasonOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FD)
  {
    goto LABEL_17;
  }

  if (a2 + 63491 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63491 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 63491;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 3) & 0x700) ^ 0x7FF;
  if (v6 >= 0x7FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *_s17MailboxesToSelectV6ReasonOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63491 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63491 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7FD)
  {
    v4 = 0;
  }

  if (a2 > 0x7FC)
  {
    v5 = ((a2 - 2045) >> 16) + 1;
    *result = a2 - 2045;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x1FF) - (a2 << 9);
    *result = (32 * v6) & 0xF800 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10018CF4C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 7))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_10018CF80(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x703 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x700 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

unint64_t sub_10018CFCC()
{
  result = qword_1005D2D38;
  if (!qword_1005D2D38)
  {
    sub_10000DEFC(&qword_1005D2D40, qword_1004DB148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2D38);
  }

  return result;
}

unint64_t sub_10018D034()
{
  result = qword_1005D2D48;
  if (!qword_1005D2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2D48);
  }

  return result;
}

unint64_t sub_10018D08C()
{
  result = qword_1005D2D50;
  if (!qword_1005D2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2D50);
  }

  return result;
}

unint64_t sub_10018D0E4()
{
  result = qword_1005D2D58;
  if (!qword_1005D2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2D58);
  }

  return result;
}

uint64_t sub_10018D150(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = v4 >> 60 == 15 && v3 >> 60 == 15;
  if (v3 >> 60 == 15 || v4 >> 60 == 15)
  {
    return v5;
  }

  else
  {
    return sub_10003A194(*a1, v3, *a2, v4);
  }
}

BOOL sub_10018D194(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1001EFF14(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 != 15)
  {
    return v9 >> 60 != 15 && (sub_10003A194(v5, v6, v10, v9) & 1) != 0;
  }

  return v9 >> 60 == 15;
}

uint64_t sub_10018D254()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_100014CEC(v1, *(v0 + 88));
    sub_1000CBB68(v1, v2);
    *(v0 + 80) = xmmword_1004D25F0;
  }

  return v1;
}

uint64_t sub_10018D300()
{
  sub_10018D6F4();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

double variable initialization expression of CommandConnection.idle@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 44) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10018D390@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004A5214();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10018D410(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10018D46C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

_WORD *sub_10018D4F0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

void sub_10018D55C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10018D5C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018D5EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 96))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_10018D65C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

unint64_t sub_10018D6F4()
{
  result = qword_1005D2E48;
  if (!qword_1005D2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2E48);
  }

  return result;
}

uint64_t sub_10018D748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018D79C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_10018D80C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018D854(uint64_t a1)
{
  v17 = xmmword_1004DC1F0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    while (1)
    {
      v15 = &type metadata for Data;
      v16 = &protocol witness table for Data;
      v14 = *(v3 + 16 * v2);
      v13 = v14;
      v4 = sub_10002587C(&v14, &type metadata for Data);
      v5 = *v4;
      v6 = v4[1] >> 62;
      if (v6 > 1)
      {
        if (v6 != 2)
        {
LABEL_18:
          sub_100014CEC(v13, *(&v13 + 1));
          sub_100014CEC(v13, *(&v13 + 1));
          goto LABEL_19;
        }

        v7 = *(v5 + 16);
        v8 = *(v5 + 24);
        sub_100014CEC(v13, *(&v13 + 1));
        sub_100014CEC(v13, *(&v13 + 1));
        if (sub_1004A40D4() && __OFSUB__(v7, sub_1004A4104()))
        {
          goto LABEL_25;
        }

        if (__OFSUB__(v8, v7))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_18;
        }

        v9 = v5;
        if (v5 >> 32 < v5)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
        }

        sub_100014CEC(v13, *(&v13 + 1));
        sub_100014CEC(v13, *(&v13 + 1));
        if (sub_1004A40D4() && __OFSUB__(v9, sub_1004A4104()))
        {
          goto LABEL_26;
        }
      }

      sub_1004A40F4();
LABEL_19:
      sub_1004A43F4();
      sub_1000197E0(&v14);
      if (v2 >= v1 - 1)
      {
        sub_100014D40(v13, *(&v13 + 1));
      }

      else
      {
        v10 = sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
        v15 = v10;
        v16 = sub_10000DF44(&qword_1005D2F10, &unk_1005D8FF0, &unk_1004DC230);
        *&v14 = &off_1005A3840;
        v11 = *(*sub_10002587C(&v14, v10) + 16);
        sub_1004A43F4();
        sub_100014D40(v13, *(&v13 + 1));
        sub_1000197E0(&v14);
      }

      if (v1 == ++v2)
      {
        return v17;
      }
    }
  }

  return 0;
}

__n128 sub_10018DBD8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10018DBE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100014CEC(v2, v3);
}

void *sub_10018DC04(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  v29 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v5 & ~(v5 >> 63), 0);
    v28 = v3;
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(v3 + 16);
      }

      else
      {
        v9 = v3;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v36;
    v27 = v3 >> 32;
    v26 = &v34 + v9;
    v31 = v4;
    v32 = v3;
    v30 = v5;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
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

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(v3 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v3 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_1004A40D4();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_1004A4104();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          LOWORD(v34) = v3;
          BYTE2(v34) = BYTE2(v3);
          BYTE3(v34) = BYTE3(v3);
          BYTE4(v34) = v29;
          BYTE5(v34) = BYTE5(v3);
          BYTE6(v34) = BYTE6(v3);
          HIBYTE(v34) = HIBYTE(v3);
          LOWORD(v35) = a2;
          BYTE2(v35) = BYTE2(a2);
          BYTE3(v35) = BYTE3(a2);
          BYTE4(v35) = BYTE4(a2);
          BYTE5(v35) = BYTE5(a2);
          v19 = v26[v10];
          goto LABEL_36;
        }

        if (v12 < v28 || v12 >= v27)
        {
          goto LABEL_44;
        }

        v13 = sub_1004A40D4();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_1004A4104();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      LOBYTE(v34) = v19;
      sub_10014F900();
      v37._countAndFlagsBits = sub_1004A5A84();
      v34 = 30768;
      v35 = 0xE200000000000000;
      sub_1004A5994(v37);

      v21 = v34;
      v20 = v35;
      v36 = v8;
      v23 = v8[2];
      v22 = v8[3];
      if (v23 >= v22 >> 1)
      {
        sub_100091A08((v22 > 1), v23 + 1, 1);
        v8 = v36;
      }

      v8[2] = v23 + 1;
      v24 = &v8[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      ++v10;
      v5 = v30;
      LODWORD(v4) = v31;
      v3 = v32;
    }

    while (v11 != v30);
  }

  return v8;
}

uint64_t sub_10018DF50()
{
  sub_10018DC04(*v0, v0[1]);
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
  v1 = sub_1004A5614();

  return v1;
}

uint64_t sub_10018E008(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v3)
    {
      goto LABEL_11;
    }

    if (result == 32 && a2 == 0xE100000000000000)
    {
      result = 32;
      a2 = 0xE100000000000000;
LABEL_11:
      sub_10018E150(result, a2, 0);
      return 0;
    }

    v4 = result;
    v5 = a2;
    if (sub_1004A6D34())
    {
      result = v4;
      a2 = v5;
      goto LABEL_11;
    }

    sub_10018E0FC();
    swift_allocError();
    swift_willThrow();
    return sub_10018E150(v4, v5, 0);
  }

  return result;
}

unint64_t sub_10018E0FC()
{
  result = qword_1005D2F18;
  if (!qword_1005D2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2F18);
  }

  return result;
}

uint64_t sub_10018E150(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_100014D40(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_10018E170(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_10018E190(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for MailboxSyncStatus(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataTransferReportAccumulator.State(uint64_t result, int a2, int a3)
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

uint64_t sub_10018E210(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
    if (a2)
    {
      *result = xmmword_1004DA580;
    }
  }

  return result;
}

uint64_t sub_10018E27C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10018E2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t static AuthenticationFailure.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return !a6;
    }

    if (a3 == 1)
    {
      return a6 == 1;
    }

LABEL_10:
    if (a6 >= 4)
    {
      return static ResponseText.__derived_struct_equals(_:_:)();
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      return a6 == 3;
    }

    goto LABEL_10;
  }

  return a6 == 2;
}

void AuthenticationFailure.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if (a4 == 3)
    {
      v5 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a4)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if (a4 == 1)
    {
      v5 = 2;
LABEL_12:
      sub_1004A6EB4(v5);
      return;
    }
  }

  sub_1004A6EB4(0);
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(a1, a2);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int AuthenticationFailure.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      sub_1004A6EB4(3uLL);
      return sub_1004A6F14();
    }

    if (a3 == 3)
    {
      sub_1004A6EB4(4uLL);
      return sub_1004A6F14();
    }
  }

  else
  {
    if (!a3)
    {
      sub_1004A6EB4(1uLL);
      return sub_1004A6F14();
    }

    if (a3 == 1)
    {
      sub_1004A6EB4(2uLL);
      return sub_1004A6F14();
    }
  }

  sub_1004A6EB4(0);
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(v6, a1);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_10018E5A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  AuthenticationFailure.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

uint64_t sub_10018E5F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return v7 == 2;
    }

    if (v4 == 3)
    {
      return v7 == 3;
    }
  }

  else
  {
    if (!v4)
    {
      return v7 == 0;
    }

    if (v4 == 1)
    {
      return v7 == 1;
    }
  }

  if (v7 >= 4)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v3, a1[1]);
  }

  else
  {
    return 0;
  }
}

unint64_t AuthenticationFailure.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x6F7571207265766FLL;
  v4 = 0x6B63757473;
  v5 = 0x726568746FLL;
  if (a3 != 3)
  {
    v5 = 0x6F7571207265766FLL;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v3 = 0xD000000000000015;
  }

  if (!a3)
  {
    v3 = 0x6465726320646162;
  }

  if (a3 <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10018E72C()
{
  result = qword_1005D2F20;
  if (!qword_1005D2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2F20);
  }

  return result;
}

unint64_t sub_10018E780()
{
  v1 = *(v0 + 16);
  v2 = 0x6F7571207265766FLL;
  v3 = 0x6B63757473;
  v4 = 0x726568746FLL;
  if (v1 != 3)
  {
    v4 = 0x6F7571207265766FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!v1)
  {
    v2 = 0x6465726320646162;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018E834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10018E84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 24))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018E8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void *sub_10018E900(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10018E934(unint64_t result)
{
  if ((~result & 0xF000000000000007) == 0)
  {
    goto LABEL_5;
  }

  if (((result >> 59) & 0x1E | (result >> 2) & 1) != 0x11 || __ROR8__(result + 0x7FFFFFFFFFFFFF94, 3) != 14)
  {
    sub_10001114C(result);
LABEL_5:

    return 0;
  }

  return result;
}

uint64_t sub_10018EA84@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  if ((a1 & 1) == 0)
  {
    v28 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v28 > 2)
    {
      if ((v28 - 5) >= 2)
      {
        if (v28 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v29 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v29 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v29 = &qword_1005DE090;
      }
    }

    else if (v28)
    {
      if (v28 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v29 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v29 = &qword_1005DE080;
      }
    }

    else
    {
      v29 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v35 = *v29;
    v34 = v29[1];

    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_54;
  }

  v15 = v3[11];
  if (v15 >> 60 == 11)
  {
    v30 = 0;
    v15 = 0xC000000000000000;
LABEL_18:
    v31 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v31 > 2)
    {
      if ((v31 - 5) >= 2)
      {
        if (v31 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v32 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v32 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE090;
      }
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE080;
      }
    }

    else
    {
      v32 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v35 = *v32;
    v34 = v32[1];

    v36 = sub_100190D98(v30, v15, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v37 = v39;
    v38 = v40;
    result = sub_1000CBB68(v30, v15);
LABEL_54:
    *a3 = v35;
    *(a3 + 8) = v34;
    *(a3 + 16) = v36;
    *(a3 + 24) = v37;
    *(a3 + 32) = v38;
    *(a3 + 38) = BYTE6(v38);
    *(a3 + 36) = WORD2(v38);
    *(a3 + 64) = 1;
    return result;
  }

  if (v15 >> 60 != 15)
  {
    v30 = v3[10];
    sub_100014CEC(v30, v3[11]);
    sub_100073A18(v30, v15);
    *(v3 + 5) = xmmword_1004D25F0;
    goto LABEL_18;
  }

  v16 = v12;
  sub_10018D6F4();
  swift_allocError();
  *v17 = xmmword_1004DB2C0;
  *(v17 + 16) = 1;
  swift_willThrow();
  sub_100190B00(a2, v14);
  sub_100190B00(a2, v10);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v18 = sub_1004A4A54();
  v19 = sub_1004A6014();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v20 = 68158466;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    v22 = v10[*(v16 + 20)];
    sub_100190CD4(v10);
    *(v20 + 10) = v22;
    *(v20 + 11) = 2082;
    v23 = *&v14[*(v16 + 20) + 4];
    sub_100190CD4(v14);
    v24 = ConnectionID.debugDescription.getter(v23);
    v26 = sub_10015BA6C(v24, v25, &v43);

    *(v20 + 13) = v26;
    *(v20 + 21) = 2112;
    v27 = sub_1004A4264();
    *(v20 + 23) = v27;
    *v21 = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] Authentication failed: %@", v20, 0x1Fu);
    sub_100190D30(v21);

    sub_1000197E0(v42);
  }

  else
  {
    sub_100190CD4(v10);

    sub_100190CD4(v14);
  }

  return swift_willThrow();
}

uint64_t sub_10018F108@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v72[-v12];
  __chkstk_darwin(v14);
  v16 = &v72[-v15];
  __chkstk_darwin(v17);
  v20 = &v72[-v19];
  if ((a1 & 1) == 0)
  {
    v33 = (*(v3 + 14) >> 59) & 6 | ((*(v3 + 12) & 0x2000000000000000) != 0);
    if (v33 <= 2)
    {
      if (!v33)
      {
LABEL_24:
        v34 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_39:
        v62 = *v34;
        v61 = v34[1];

        v64 = 0;
        v65 = 0;
        v66 = 0;
LABEL_40:
        *a3 = v62;
        *(a3 + 8) = v61;
        *(a3 + 16) = v64;
        *(a3 + 24) = v65;
        *(a3 + 38) = BYTE6(v66);
        *(a3 + 36) = WORD2(v66);
        *(a3 + 32) = v66;
        *(a3 + 39) = v93[0];
        *(a3 + 48) = *(v93 + 9);
        *(a3 + 64) = 1;
        return result;
      }

LABEL_7:
      if (v33 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v34 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v34 = &qword_1005DE080;
      }

      goto LABEL_39;
    }

LABEL_25:
    if ((v33 - 5) >= 2)
    {
      if (v33 == 3)
      {
        if (qword_1005D2DA8 != -1)
        {
          swift_once();
        }

        v34 = &qword_1005DE0A0;
      }

      else
      {
        if (qword_1005D2DB0 != -1)
        {
          swift_once();
        }

        v34 = &qword_1005DE0B0;
      }
    }

    else
    {
      if (qword_1005D2DA0 != -1)
      {
        swift_once();
      }

      v34 = &qword_1005DE090;
    }

    goto LABEL_39;
  }

  v21 = v3 + 120;
  v22 = *(v3 + 15);
  v23 = *(v3 + 18);
  if ((v23 - 1) < 2)
  {
    v76 = v3;
    v77 = v18;
    sub_100190B00(a2, v13);
    sub_100190B00(a2, v10);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A5FF4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v78[0] = v75;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v77;
      v28 = v10[*(v77 + 20)];
      sub_100190CD4(v10);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = *&v13[*(v27 + 20) + 4];
      sub_100190CD4(v13);
      v30 = ConnectionID.debugDescription.getter(v29);
      v32 = sub_10015BA6C(v30, v31, v78);

      *(v26 + 13) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v26, 0x15u);
      sub_1000197E0(v75);
    }

    else
    {
      sub_100190CD4(v10);

      sub_100190CD4(v13);
    }

    v33 = (v76[14] >> 59) & 6 | ((v76[12] & 0x2000000000000000) != 0);
    if (v33 <= 2)
    {
      if (!v33)
      {
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if (!v23)
  {
    *v21 = 0;
    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    *(v3 + 18) = 1;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 42) = 0;
    v35 = *v3;
    v84 = 0;
    v85 = 0xE000000000000000;
    v86 = 0;
    v87 = 0xE000000000000000;
    v88 = (v35 & 1) == 0;
    v36 = v3;
    v37 = sub_1001F0F00();
    v39 = v38;
    v40 = (*(v36 + 14) >> 59) & 6 | ((*(v36 + 12) & 0x2000000000000000) != 0);
    if (v40 <= 2)
    {
      if (v40)
      {
        goto LABEL_14;
      }

      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v77 = v18;
  v74 = *(v3 + 16);
  v75 = v22;
  v42 = *(v3 + 42);
  v43 = *(v3 + 19);
  v44 = *(v3 + 20);
  v73 = v3[136];
  *v21 = 0;
  *(v3 + 16) = 0;
  *(v3 + 17) = 0;
  *(v3 + 18) = 2;
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v3 + 42) = 0;
  v45 = *(v3 + 1);
  v46 = *(v3 + 2);
  v47 = *(v3 + 3);
  v48 = *(v3 + 4);
  v71 = *v3;
  v76 = v43;
  v49 = v94;
  sub_1001F57E4(v45, v46, v47, v48, v23, v43, v44, v42, &v80, v71);
  if (!v49)
  {
    v94 = 0;
    sub_100191644(v75, v74, v73);

    v78[0] = v82;
    v78[1] = v81;
    v78[2] = v80;
    *&v79[0] = 0;
    *(&v79[0] + 1) = 0xE000000000000000;
    *&v79[1] = 0;
    DWORD2(v79[1]) = v83 & 0x80201;
    BYTE12(v79[1]) = 0;
    v91 = v80;
    v92[0] = v79[0];
    v89 = v82;
    v90 = v81;
    *(v92 + 13) = *(v79 + 13);

    v67 = v3;
    v37 = sub_1001F1DEC();
    v39 = v68;
    sub_100191670(v78);
    sub_1001916C4(&v80);
    v40 = (*(v67 + 14) >> 59) & 6 | ((*(v67 + 12) & 0x2000000000000000) != 0);
    if (v40 <= 2)
    {
      if (v40)
      {
LABEL_14:
        if (v40 == 1)
        {
          if (qword_1005D2D90 != -1)
          {
            swift_once();
          }

          v41 = &qword_1005DE070;
        }

        else
        {
          if (qword_1005D2D98 != -1)
          {
            swift_once();
          }

          v41 = &qword_1005DE080;
        }

        goto LABEL_60;
      }

LABEL_43:
      v41 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_60:
      v62 = *v41;
      v61 = v41[1];

      v64 = sub_100190D98(v37, v39, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v65 = v69;
      v66 = v70;
      result = sub_100014D40(v37, v39);
      goto LABEL_40;
    }

LABEL_44:
    if ((v40 - 5) >= 2)
    {
      if (v40 == 3)
      {
        if (qword_1005D2DA8 != -1)
        {
          swift_once();
        }

        v41 = &qword_1005DE0A0;
      }

      else
      {
        if (qword_1005D2DB0 != -1)
        {
          swift_once();
        }

        v41 = &qword_1005DE0B0;
      }
    }

    else
    {
      if (qword_1005D2DA0 != -1)
      {
        swift_once();
      }

      v41 = &qword_1005DE090;
    }

    goto LABEL_60;
  }

  sub_100191644(v75, v74, v73);

  sub_100190B00(a2, v20);
  sub_100190B00(a2, v16);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v50 = sub_1004A4A54();
  v51 = sub_1004A6014();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *&v78[0] = v94;
    *v52 = 68158466;
    *(v52 + 4) = 2;
    *(v52 + 8) = 256;
    v53 = v77;
    v54 = v16[*(v77 + 20)];
    sub_100190CD4(v16);
    *(v52 + 10) = v54;
    *(v52 + 11) = 2082;
    v55 = *&v20[*(v53 + 20) + 4];
    sub_100190CD4(v20);
    v56 = ConnectionID.debugDescription.getter(v55);
    v58 = sub_10015BA6C(v56, v57, v78);

    *(v52 + 13) = v58;
    *(v52 + 21) = 2112;
    v59 = sub_1004A4264();
    *(v52 + 23) = v59;
    v60 = v76;
    *v76 = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "[%.*hhx-%{public}s] Authentication failed: %@", v52, 0x1Fu);
    sub_100190D30(v60);

    sub_1000197E0(v94);
  }

  else
  {
    sub_100190CD4(v16);

    sub_100190CD4(v20);
  }

  return swift_willThrow();
}

uint64_t sub_10018FAA8@<X0>(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(unint64_t, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  v10 = _s6LoggerVMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  if ((a1 & 1) == 0)
  {
    v31 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v45 = v5;
    if (v31 > 2)
    {
      if ((v31 - 5) >= 2)
      {
        if (v31 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v32 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v32 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE090;
      }
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE080;
      }
    }

    else
    {
      v32 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v37 = *v32;
    v38 = v32[1];

    v39 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_51;
  }

  v18 = v4[11];
  if (v18 >> 60 != 15)
  {
    v33 = v4[10];
    *(v4 + 5) = xmmword_1004D25F0;
    sub_100014CEC(v33, v18);
    a3(v33, v18);
    v34 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v45 = v5;
    if (v34 > 2)
    {
      if ((v34 - 5) >= 2)
      {
        if (v34 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v35 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v35 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v35 = &qword_1005DE090;
      }
    }

    else if (v34)
    {
      if (v34 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v35 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v35 = &qword_1005DE080;
      }
    }

    else
    {
      v35 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v37 = *v35;
    v38 = v35[1];

    v39 = sub_100190D98(v33, v18, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v40 = v42;
    v41 = v43;
    result = (a3)(v33, v18);
LABEL_51:
    *a4 = v37;
    *(a4 + 8) = v38;
    *(a4 + 16) = v39;
    *(a4 + 24) = v40;
    *(a4 + 32) = v41;
    *(a4 + 38) = BYTE6(v41);
    *(a4 + 36) = WORD2(v41);
    *(a4 + 39) = *v46;
    *(a4 + 48) = *&v46[9];
    *(a4 + 64) = 1;
    return result;
  }

  v19 = v15;
  sub_10018D6F4();
  swift_allocError();
  *v20 = xmmword_1004DB2C0;
  *(v20 + 16) = 1;
  swift_willThrow();
  sub_100190B00(a2, v17);
  sub_100190B00(a2, v13);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v21 = sub_1004A4A54();
  v22 = sub_1004A6014();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v23 = 68158466;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v25 = v13[*(v19 + 20)];
    sub_100190CD4(v13);
    *(v23 + 10) = v25;
    *(v23 + 11) = 2082;
    v26 = *&v17[*(v19 + 20) + 4];
    sub_100190CD4(v17);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_10015BA6C(v27, v28, &v47);

    *(v23 + 13) = v29;
    *(v23 + 21) = 2112;
    v30 = sub_1004A4264();
    *(v23 + 23) = v30;
    *v24 = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx-%{public}s] Authentication failed: %@", v23, 0x1Fu);
    sub_100190D30(v24);

    sub_1000197E0(v45);
  }

  else
  {
    sub_100190CD4(v13);

    sub_100190CD4(v17);
  }

  return swift_willThrow();
}

uint64_t sub_100190148@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  if ((a1 & 1) == 0)
  {
    v31 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v31 <= 2)
    {
      if (!v31)
      {
LABEL_26:
        v32 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_40:
        v53 = *v32;
        v52 = v32[1];

        v54 = 0;
        v55 = 0;
        v56 = 0;
LABEL_41:
        *a3 = v53;
        *(a3 + 8) = v52;
        *(a3 + 16) = v54;
        *(a3 + 24) = v55;
        *(a3 + 32) = v56;
        *(a3 + 38) = BYTE6(v56);
        *(a3 + 36) = WORD2(v56);
        *(a3 + 39) = *v61;
        *(a3 + 48) = *&v61[9];
        *(a3 + 64) = 1;
        return result;
      }

LABEL_8:
      if (v31 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE080;
      }

      goto LABEL_40;
    }

LABEL_27:
    if ((v31 - 5) >= 2)
    {
      if (v31 == 3)
      {
        if (qword_1005D2DA8 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE0A0;
      }

      else
      {
        if (qword_1005D2DB0 != -1)
        {
          swift_once();
        }

        v32 = &qword_1005DE0B0;
      }
    }

    else
    {
      if (qword_1005D2DA0 != -1)
      {
        swift_once();
      }

      v32 = &qword_1005DE090;
    }

    goto LABEL_40;
  }

  v21 = v3[11];
  if (v21 >> 60 != 11)
  {
    if (v21 >> 60 != 15)
    {
      v45 = v3[10];
      *(v3 + 5) = xmmword_1004DA570;
      sub_100014CEC(v45, v21);
      sub_100073A18(v45, v21);
      v46 = sub_1001CF7D0(v3[12], v3[13], v3[14], v3[15], v45, v21);
      v48 = v47;
      sub_100073A18(v45, v21);
      v49 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
      if (v49 > 2)
      {
        if ((v49 - 5) >= 2)
        {
          if (v49 == 3)
          {
            if (qword_1005D2DA8 != -1)
            {
              swift_once();
            }

            v50 = &qword_1005DE0A0;
          }

          else
          {
            if (qword_1005D2DB0 != -1)
            {
              swift_once();
            }

            v50 = &qword_1005DE0B0;
          }
        }

        else
        {
          if (qword_1005D2DA0 != -1)
          {
            swift_once();
          }

          v50 = &qword_1005DE090;
        }
      }

      else if (v49)
      {
        if (v49 == 1)
        {
          if (qword_1005D2D90 != -1)
          {
            swift_once();
          }

          v50 = &qword_1005DE070;
        }

        else
        {
          if (qword_1005D2D98 != -1)
          {
            swift_once();
          }

          v50 = &qword_1005DE080;
        }
      }

      else
      {
        v50 = AuthenticationMechanism.plain.unsafeMutableAddressor();
      }

      v53 = *v50;
      v52 = v50[1];

      v54 = sub_100190D98(v46, v48, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v55 = v57;
      v56 = v58;
      result = sub_100014D40(v46, v48);
      goto LABEL_41;
    }

    v22 = v18;
    v60 = v3;
    sub_100190B00(a2, v13);
    sub_100190B00(a2, v10);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v23 = sub_1004A4A54();
    v24 = sub_1004A5FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62 = v59;
      *v25 = 68158210;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v26 = v10[*(v22 + 20)];
      sub_100190CD4(v10);
      *(v25 + 10) = v26;
      *(v25 + 11) = 2082;
      v27 = *&v13[*(v22 + 20) + 4];
      sub_100190CD4(v13);
      v28 = ConnectionID.debugDescription.getter(v27);
      v30 = sub_10015BA6C(v28, v29, &v62);

      *(v25 + 13) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v25, 0x15u);
      sub_1000197E0(v59);
    }

    else
    {
      sub_100190CD4(v10);

      sub_100190CD4(v13);
    }

    v31 = (v60[9] >> 59) & 6 | ((v60[7] & 0x2000000000000000) != 0);
    if (v31 <= 2)
    {
      if (!v31)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v33 = v18;
  sub_10018D6F4();
  swift_allocError();
  *v34 = xmmword_1004DB2C0;
  *(v34 + 16) = 1;
  swift_willThrow();
  sub_100190B00(a2, v20);
  sub_100190B00(a2, v16);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v35 = sub_1004A4A54();
  v36 = sub_1004A6014();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62 = v60;
    *v37 = 68158466;
    *(v37 + 4) = 2;
    *(v37 + 8) = 256;
    v39 = v16[*(v33 + 20)];
    sub_100190CD4(v16);
    *(v37 + 10) = v39;
    *(v37 + 11) = 2082;
    v40 = *&v20[*(v33 + 20) + 4];
    sub_100190CD4(v20);
    v41 = ConnectionID.debugDescription.getter(v40);
    v43 = sub_10015BA6C(v41, v42, &v62);

    *(v37 + 13) = v43;
    *(v37 + 21) = 2112;
    v44 = sub_1004A4264();
    *(v37 + 23) = v44;
    *v38 = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] Authentication failed: %@", v37, 0x1Fu);
    sub_100190D30(v38);

    sub_1000197E0(v60);
  }

  else
  {
    sub_100190CD4(v16);

    sub_100190CD4(v20);
  }

  return swift_willThrow();
}

__n128 sub_1001909C0@<Q0>(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(unint64_t, unint64_t)@<X4>, uint64_t a4@<X8>)
{
  sub_10018FAA8(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v9;
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

__n128 sub_100190A18@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  v17 = v1[4];
  v4 = v1[1];
  v14[0] = *v1;
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1001915E8(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_100190AAC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100190148(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_100190B00(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100190B64@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v15 = *(v1 + 72);
  v16 = v3;
  v17 = *(v1 + 104);
  v4 = *(v1 + 56);
  v14[0] = *(v1 + 40);
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1001915E8(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_100190C00@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10018F108(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 sub_100190C54@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10018EA84(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_100190CD4(uint64_t a1)
{
  v2 = _s6LoggerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100190D30(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D51A0, &qword_1004D0940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100190D98(unint64_t result, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    result = BYTE6(a2);
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    result = HIDWORD(v7) - v7;
LABEL_10:
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_11:
    if (result)
    {
      v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(result, a3, a4, a5, a6);
      swift_beginAccess();
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *(v11 + 16);
      goto LABEL_14;
    }

LABEL_13:
    v17 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
    v11 = *v17;
    v12 = *(v17 + 2);
    v13 = *(v17 + 3);
    v16 = *(v17 + 4);
    v14 = *(v17 + 10);
    v15 = *(v17 + 22);

LABEL_14:
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v16;
    v22 = v14;
    v23 = v15;
    result = sub_1001912C8(v7, a2, &v18, v13);
    if ((result & 0x100000000) != 0)
    {
      result = sub_100190F04(v7, a2, v13);
    }

    if (!__CFADD__(v20, result))
    {
      return v18;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_100190F04(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = v3;
  v34 = sub_1004A4444();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v34);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (result == &type metadata for Data)
  {
    goto LABEL_31;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v13 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v13 = HIDWORD(a1) - a1;
  }

LABEL_12:
  v16 = a3 + v13;
  if (__CFADD__(a3, v13))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = *(v4 + 16);
    v19 = v16 >= v18;
    v20 = v16 - v18;
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v21, v22 & 1);
  }

  v32 = v8;
  sub_10019118C(v13, v4, a3);
  v23 = sub_1004A43B4();
  sub_100191590();
  result = sub_1004A6414();
  if (v36 != 1)
  {
    v25 = a3;
    v26 = a3;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (HIDWORD(v24))
      {
        goto LABEL_28;
      }

      v27 = v35;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v23 + 1, v25);
      v28 = *v4;
      v29 = *(v4 + 20);
      v30 = *(v4 + 22);
      swift_beginAccess();
      *(*(v28 + 24) + (v30 | (v29 << 8)) + v26 + v23) = v27;
      result = sub_1004A6414();
      ++v23;
      if (v36 == 1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
LABEL_25:
  (*(v32 + 8))(v33, v34);
  return v24;
}

unint64_t sub_10019118C(unint64_t result, uint64_t *a2, Swift::UInt32 at)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(result, at);
    v5 = *a2;
    v6 = *(a2 + 10);
    v7 = *(a2 + 22);
    swift_beginAccess();
    return *(v5 + 24) + (v7 | (v6 << 8)) + at;
  }

  __break(1u);
  return result;
}

uint64_t sub_10019120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  result = sub_1004A40D4();
  v9 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1004A40F4();
  if (v9)
  {
    if (v12 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = &v9[v13];
    v15 = v9;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  ByteBuffer._setBytes(_:at:)(v15, v14, a5);
  return result;
}

unint64_t sub_1001912C8(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      result = sub_10019120C(*(a1 + 16), *(a1 + 24), a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
      if (v4)
      {
        return result;
      }

      LODWORD(v8) = result;
      v16 = HIDWORD(result) & 1;
    }

    else
    {
      memset(v23, 0, 14);
      v18 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(a3 + 16);
        v12 = a4 >= v19;
        v20 = a4 - v19;
        if (v12)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v21, v22 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(0, a4);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v23, v23, a4);
      LODWORD(v8) = 0;
      LOBYTE(v16) = 0;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
    v23[0] = a1;
    LOWORD(v23[1]) = a2;
    BYTE2(v23[1]) = BYTE2(a2);
    BYTE3(v23[1]) = BYTE3(a2);
    BYTE4(v23[1]) = BYTE4(a2);
    v8 = BYTE6(a2);
    BYTE5(v23[1]) = BYTE5(a2);
    v9 = a4 + BYTE6(a2);
    if (!__CFADD__(a4, BYTE6(a2)))
    {
      v10 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(a3 + 16);
        v12 = v9 >= v11;
        v13 = v9 - v11;
        if (v12)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v14, v15 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(v8, a4);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v23, v23 + v8, a4);
      LOBYTE(v16) = 0;
      goto LABEL_23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (a1 >> 32 < a1)
  {
    goto LABEL_26;
  }

  result = sub_10019120C(a1, a1 >> 32, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return result;
  }

  LODWORD(v8) = result;
  v16 = HIDWORD(result) & 1;
LABEL_23:
  LOBYTE(v23[0]) = v16;
  return v8 | (v16 << 32);
}

uint64_t _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(int a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  result = a2(v14);
  if (result)
  {
    v16 = result;
    type metadata accessor for ByteBuffer._Storage();
    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = v16;
    *(result + 32) = a2;
    *(result + 40) = a3;
    *(result + 48) = a4;
    *(result + 56) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100191590()
{
  result = qword_1005D2F30;
  if (!qword_1005D2F30)
  {
    sub_1004A4444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2F30);
  }

  return result;
}

uint64_t sub_100191644(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100191658(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100191658(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double sub_100191724@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Authenticator();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UnauthenticatedState();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v51[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v51[-v17];
  __chkstk_darwin(v16);
  v20 = &v51[-v19];
  sub_100191C2C(v2, &v51[-v19]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 10)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_100191C2C(v20, v18);
        v22 = *v18;
        *&v51[120] = *(v18 + 120);
        *&v51[136] = *(v18 + 136);
        *&v51[152] = *(v18 + 152);
        *&v51[168] = *(v18 + 168);
        *&v51[56] = *(v18 + 56);
        *&v51[72] = *(v18 + 72);
        *&v51[88] = *(v18 + 88);
        *&v51[104] = *(v18 + 104);
        *&v51[8] = *(v18 + 8);
        *&v51[24] = *(v18 + 24);
        *&v51[40] = *(v18 + 40);
        *v51 = v22;
        sub_100191E88(v51);
LABEL_16:
        v60 = *&v51[128];
        v61 = *&v51[144];
        v62[0] = *&v51[160];
        *(v62 + 9) = *&v51[169];
        v56 = *&v51[64];
        v57 = *&v51[80];
        v58 = *&v51[96];
        v59 = *&v51[112];
        v52 = *v51;
        v53 = *&v51[16];
        v54 = *&v51[32];
        v55 = *&v51[48];
        UInt32.init(_:)(&v52);
        v74 = v60;
        v75 = v61;
        v76[0] = v62[0];
        v36 = *(v62 + 9);
        goto LABEL_17;
      }

LABEL_19:
      sub_100191C90(&v66);
      goto LABEL_20;
    }

    sub_100191C2C(v20, v15);
    v23 = *v15;
    v24 = *(v15 + 1);
    v25 = *(v15 + 2);
    v26 = v15[24];
    v27 = v26 >> 6;
    if (v26 >> 6 > 1)
    {
      if (v27 != 2)
      {
        v44 = v25 | v24;
        if (v25 | v24 | v23 || v26 != 192)
        {
          v45 = v26 == 192 && v23 == 1;
          v46 = v45 && v44 == 0;
          if (v46 || (v26 == 192 ? (v47 = v23 == 2) : (v47 = 0), v47 ? (v48 = v44 == 0) : (v48 = 0), !v48 && (v26 == 192 ? (v49 = v23 == 3) : (v49 = 0), v49 ? (v50 = v44 == 0) : (v50 = 0), v50)))
          {
            *v51 = 0;
            *&v51[8] = 0;
            v37 = 1;
            goto LABEL_14;
          }
        }

LABEL_13:
        *v51 = 0;
        *&v51[8] = 0;
        v37 = 3;
LABEL_14:
        *&v51[16] = v37;
        goto LABEL_15;
      }
    }

    else if (!v27)
    {
      *v51 = *v15;
      *&v51[8] = v24;
      *&v51[16] = v25;
LABEL_15:
      sub_100191DA0(v51);
      goto LABEL_16;
    }

    sub_100191E14(v23, v24, v25, v26);
    goto LABEL_13;
  }

  sub_100191C2C(v20, v12);
  v28 = sub_100191CBC(v12, v7);
  v29 = *v7;
  __chkstk_darwin(v28);
  *&v51[-16] = v7;
  sub_100195F08(sub_100191D20, v30, &v66);
  v63[2] = v68;
  v64 = v69;
  v65 = v70;
  v63[0] = v66;
  v63[1] = v67;
  if ((~*(&v68 + 1) & 0x3000000000000000) != 0 || (*(&v64 + 1) & 0x1000000000000000) == 0)
  {
    sub_100191DAC(v63);
    sub_100191D40(v7, type metadata accessor for Authenticator);
    goto LABEL_19;
  }

  v31 = sub_100195004();
  v33 = v32;
  v35 = v34;
  sub_100191D40(v7, type metadata accessor for Authenticator);
  *v51 = v31;
  *&v51[8] = v33;
  *&v51[16] = v35;
  sub_100191DA0(v51);
  v60 = *&v51[128];
  v61 = *&v51[144];
  v62[0] = *&v51[160];
  *(v62 + 9) = *&v51[169];
  v56 = *&v51[64];
  v57 = *&v51[80];
  v58 = *&v51[96];
  v59 = *&v51[112];
  v52 = *v51;
  v53 = *&v51[16];
  v54 = *&v51[32];
  v55 = *&v51[48];
  UInt32.init(_:)(&v52);
  v74 = v60;
  v75 = v61;
  v76[0] = v62[0];
  v36 = *(v62 + 9);
LABEL_17:
  *(v76 + 9) = v36;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v69 = v55;
LABEL_20:
  sub_100191D40(v20, type metadata accessor for UnauthenticatedState);
  v38 = v75;
  a1[8] = v74;
  a1[9] = v38;
  a1[10] = v76[0];
  *(a1 + 169) = *(v76 + 9);
  v39 = v71;
  a1[4] = v70;
  a1[5] = v39;
  v40 = v73;
  a1[6] = v72;
  a1[7] = v40;
  v41 = v67;
  *a1 = v66;
  a1[1] = v41;
  result = *&v68;
  v43 = v69;
  a1[2] = v68;
  a1[3] = v43;
  return result;
}

uint64_t sub_100191C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100191C90(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_100191CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Authenticator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100191D40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100191DAC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D2F38, &unk_1004DC8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100191E14(uint64_t result, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else if (a4 >> 6)
  {
    return sub_100173584(result, a2, a3, a4 & 0x3F);
  }

  else
  {
    return sub_100191E44(result, a2, a3);
  }

  return result;
}

unint64_t sub_100191E44(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_10001114C(result);
  }

  return result;
}

__n128 sub_100191E90(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100191ECC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_100191F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100191F90(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 120);
  v4 = *(a1 + 152);
  v16[8] = *(a1 + 136);
  v16[9] = v4;
  v16[10] = *(a1 + 168);
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v16[4] = *(a1 + 72);
  v16[5] = v6;
  v16[6] = *(a1 + 104);
  v16[7] = v3;
  v7 = *(a1 + 24);
  v16[0] = *(a1 + 8);
  v16[1] = v7;
  v16[2] = *(a1 + 40);
  v16[3] = v5;
  v8 = *a2;
  v9 = *(a2 + 120);
  v10 = *(a2 + 152);
  v17[8] = *(a2 + 136);
  v17[9] = v10;
  v17[10] = *(a2 + 168);
  v11 = *(a2 + 56);
  v12 = *(a2 + 88);
  v17[4] = *(a2 + 72);
  v17[5] = v12;
  v17[6] = *(a2 + 104);
  v17[7] = v9;
  v13 = *(a2 + 24);
  v17[0] = *(a2 + 8);
  v17[1] = v13;
  v17[2] = *(a2 + 40);
  v17[3] = v11;
  if (sub_1001CE84C(v2, v8))
  {
    v14 = static ServerID.__derived_struct_equals(_:_:)(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100192080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s6LoggerVMa();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100192140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = _s6LoggerVMa();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticationTask()
{
  result = qword_1005D2F98;
  if (!qword_1005D2F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100192230()
{
  _s6LoggerVMa();
  if (v0 <= 0x3F)
  {
    sub_1001922D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001922D4()
{
  if (!qword_1005D2FA8)
  {
    sub_10000DEFC(&unk_1005D2FB0, &qword_1004DC9D8);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D2FA8);
    }
  }
}

uint64_t sub_100192338@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v46 = _s6LoggerVMa();
  v4 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = v1[3];
  v14 = v1[4];
  sub_10002587C(v1, v13);
  (*(v14 + 8))(v47, v13, v14);
  v15 = sub_1001EE5E8();
  v17 = v16;
  sub_100193BF0(v47);
  v18 = type metadata accessor for AuthenticationTask();
  sub_100193C44(v1 + *(v18 + 20), v12, _s6LoggerVMa);
  sub_100193C44(v12, v9, _s6LoggerVMa);
  sub_100193C44(v12, v6, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v19 = sub_1004A4A54();
  v20 = sub_1004A6034();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *&v44 = v18;
    v22 = v21;
    *&v43 = swift_slowAlloc();
    *&v48[0] = v43;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v41 = v15;
    v23 = v46;
    v24 = *(v46 + 20);
    v42 = v20;
    v25 = v6[v24];
    *&v45 = a1;
    sub_100193CAC(v6, _s6LoggerVMa);
    *(v22 + 10) = v25;
    *(v22 + 11) = 2082;
    v26 = *&v9[*(v23 + 20) + 4];
    sub_100193CAC(v9, _s6LoggerVMa);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_10015BA6C(v27, v28, v48);

    *(v22 + 13) = v29;
    a1 = v45;
    *(v22 + 21) = 2082;
    v30 = sub_10015BA6C(v41, v17, v48);

    *(v22 + 23) = v30;
    _os_log_impl(&_mh_execute_header, v19, v42, "[%.*hhx-%{public}s] Using authentication mechanism '%{public}s'.", v22, 0x1Fu);
    swift_arrayDestroy();

    v18 = v44;
  }

  else
  {
    sub_100193CAC(v6, _s6LoggerVMa);

    sub_100193CAC(v9, _s6LoggerVMa);
  }

  v31 = v2[6];
  if ((v31 & 0x3000000000000000) == 0x2000000000000000 && v31 == 0x2000000000000000 && !v2[5])
  {
    v32 = *(v2 + *(v18 + 24));
    if (*(v2 + *(v18 + 24)))
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    sub_100193D0C(0, 0x2000000000000000uLL);
    v2[5] = v33;
    v2[6] = 0x2000000000000000;
    v34 = v2[3];
    v35 = v2[4];
    sub_100025928(v2, v34);
    (*(v35 + 16))(v48, v32, v12, v34, v35);
    v46 = v48[1];
    v45 = v48[0];
    v44 = v48[3];
    v43 = v48[2];
    v36 = v49;
    result = sub_100193CAC(v12, _s6LoggerVMa);
    v38 = v43;
    v39 = v44;
    v40 = v46;
    *a1 = v45;
    *(a1 + 16) = v40;
    *(a1 + 32) = v38;
    *(a1 + 48) = v39;
    *(a1 + 64) = v36;
  }

  else
  {
    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100192840(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for UntaggedResponse(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100193C44(a1, v17, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    return sub_100193CAC(v17, type metadata accessor for UntaggedResponse);
  }

  v18 = *v17;
  v19 = type metadata accessor for AuthenticationTask();
  sub_100193C44(v2 + *(v19 + 20), v13, _s6LoggerVMa);
  sub_100193C44(v13, v10, _s6LoggerVMa);
  sub_100193C44(v13, v7, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();

  if (os_log_type_enabled(v20, v21))
  {
    v47 = v21;
    v48 = v20;
    v49 = v2;
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v23 = v7[*(v4 + 20)];
    sub_100193CAC(v7, _s6LoggerVMa);
    *(v22 + 10) = v23;
    *(v22 + 11) = 2082;
    v24 = *&v10[*(v4 + 20) + 4];
    sub_100193CAC(v10, _s6LoggerVMa);
    v25 = ConnectionID.debugDescription.getter(v24);
    v27 = sub_10015BA6C(v25, v26, &v51);

    *(v22 + 13) = v27;
    *(v22 + 21) = 2080;
    v28 = *(v18 + 16);
    v29 = _swiftEmptyArrayStorage;
    if (v28)
    {
      v44 = v19;
      v50 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v28, 0);
      v29 = v50;
      v45 = v18;
      v30 = (v18 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v50 = v29;
        v34 = v29[2];
        v33 = v29[3];

        if (v34 >= v33 >> 1)
        {
          sub_100091A08((v33 > 1), v34 + 1, 1);
          v29 = v50;
        }

        v29[2] = v34 + 1;
        v35 = &v29[2 * v34];
        v35[4] = v31;
        v35[5] = v32;
        v30 += 4;
        --v28;
      }

      while (v28);
      v19 = v44;
      v18 = v45;
    }

    v50 = v29;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v37 = sub_1004A5614();
    v39 = v38;

    v40 = sub_10015BA6C(v37, v39, &v51);

    *(v22 + 23) = v40;
    v41 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "[%.*hhx-%{public}s] Got capabilities during auth: %s.", v22, 0x1Fu);
    swift_arrayDestroy();

    sub_100193CAC(v13, _s6LoggerVMa);
    v2 = v49;
  }

  else
  {
    sub_100193CAC(v7, _s6LoggerVMa);

    sub_100193CAC(v10, _s6LoggerVMa);
    sub_100193CAC(v13, _s6LoggerVMa);
  }

  v42 = *(v19 + 28);
  v43 = *(v2 + v42);

  *(v2 + v42) = v18;
  return result;
}

void sub_100192CEC(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v85 = _s6LoggerVMa();
  v10 = *(*(v85 - 8) + 64);
  v11 = __chkstk_darwin(v85);
  v13 = (&v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v11);
  v88 = &v83 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v83 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v83 - v20;
  __chkstk_darwin(v19);
  v23 = (&v83 - v22);
  v24 = type metadata accessor for AuthenticationTask();
  sub_100193C44(v5 + *(v24 + 20), v23, _s6LoggerVMa);
  sub_100193D28(a1, a2, a3 & 1);
  v25 = sub_10018E008(a1, a2, a3 & 1);
  v86 = v21;
  v87 = v13;
  v26 = v25;
  v28 = v27;
  sub_100193DF8(v25, v27, v23);
  sub_100014D40(v26, v28);
  v48 = v5[5];
  v49 = v5[6];
  v64 = (v49 >> 60) & 3;
  if (!v64)
  {
    sub_100014CEC(v5[5], v5[6]);
    sub_100193D0C(v48, v49);
    *(v5 + 5) = xmmword_1004DC9B0;
    sub_100193CAC(v23, _s6LoggerVMa);
    sub_100051270(&v103);
    v51 = v103;
    v50 = v104;
    v53 = v105;
    v52 = v106;
    v55 = v107;
    v54 = v108;
    v57 = v109;
    v56 = v110;
    v59 = v111;
    v58 = v112;
    v61 = *(&v113 + 1);
    v60 = v113;
    v62 = 1;
    goto LABEL_7;
  }

  if (v64 == 1)
  {
    v65 = v5[5];
    swift_willThrow();
    v86 = v48;
    swift_errorRetain();
  }

  else
  {
    if (__PAIR128__(v49 - 0x2000000000000000, v48) >= 3)
    {
      v68 = v18;
      v84 = v5;
      v69 = v86;
      sub_100193C44(v23, v86, _s6LoggerVMa);
      sub_100193C44(v23, v18, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v70 = sub_1004A4A54();
      v71 = sub_1004A6024();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        LODWORD(v88) = v71;
        v73 = v72;
        v87 = swift_slowAlloc();
        *&v103 = v87;
        *v73 = 68158210;
        *(v73 + 4) = 2;
        *(v73 + 8) = 256;
        v74 = v85;
        v75 = v23;
        v76 = *(v68 + *(v85 + 20));
        sub_100193CAC(v68, _s6LoggerVMa);
        *(v73 + 10) = v76;
        v23 = v75;
        *(v73 + 11) = 2082;
        v77 = *(v69 + *(v74 + 20) + 4);
        sub_100193CAC(v69, _s6LoggerVMa);
        v78 = ConnectionID.debugDescription.getter(v77);
        v80 = sub_10015BA6C(v78, v79, &v103);

        *(v73 + 13) = v80;
        _os_log_impl(&_mh_execute_header, v70, v88, "[%.*hhx-%{public}s] Authentication plugin failed generating response", v73, 0x15u);
        sub_1000197E0(v87);
      }

      else
      {
        sub_100193CAC(v18, _s6LoggerVMa);

        sub_100193CAC(v69, _s6LoggerVMa);
      }

      v81 = v84[3];
      v82 = v84[4];
      sub_10002587C(v84, v81);
      (*(v82 + 8))(v89, v81, v82);
      sub_100193CAC(v23, _s6LoggerVMa);
      v93 = v89[2];
      v94 = v89[3];
      v95 = v89[4];
      v47 = v89[0];
      v46 = v89[1];
      goto LABEL_6;
    }

    sub_10018D6F4();
    v66 = swift_allocError();
    *v67 = v48;
    *(v67 + 8) = v49;
    *(v67 + 16) = 0;
    swift_willThrow();
    sub_100193D38(v48, v49);
    v86 = v66;
  }

  v29 = v87;
  sub_100193C44(v23, v88, _s6LoggerVMa);
  sub_100193C44(v23, v29, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v87 = v23;
  v30 = sub_1004A4A54();
  v31 = sub_1004A6014();
  v32 = v29;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v103 = v83;
    *v33 = 68158210;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    v34 = a4;
    v35 = v88;
    v36 = v85;
    v37 = *(v85 + 20);
    v84 = v5;
    v38 = *(v32 + v37);
    sub_100193CAC(v32, _s6LoggerVMa);
    *(v33 + 10) = v38;
    *(v33 + 11) = 2082;
    v39 = *(v35 + *(v36 + 20) + 4);
    v40 = v35;
    a4 = v34;
    sub_100193CAC(v40, _s6LoggerVMa);
    v41 = ConnectionID.debugDescription.getter(v39);
    v43 = sub_10015BA6C(v41, v42, &v103);

    *(v33 + 13) = v43;
    v5 = v84;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%.*hhx-%{public}s] Caught error processing Handshake query", v33, 0x15u);
    sub_1000197E0(v83);
  }

  else
  {
    sub_100193CAC(v29, _s6LoggerVMa);

    sub_100193CAC(v88, _s6LoggerVMa);
  }

  v44 = v5[3];
  v45 = v5[4];
  sub_10002587C(v5, v44);
  (*(v45 + 8))(v90, v44, v45);

  sub_100193CAC(v87, _s6LoggerVMa);
  v93 = v90[2];
  v94 = v90[3];
  v95 = v90[4];
  v47 = v90[0];
  v46 = v90[1];
LABEL_6:
  v91 = v47;
  v92 = v46;
  *&v97 = 0;
  v96 = 0uLL;
  sub_100193BDC(&v91);
  v111 = v99;
  v112 = v100;
  v113 = v101;
  v114 = v102;
  v107 = v95;
  v108 = v96;
  v109 = v97;
  v110 = v98;
  v103 = v91;
  v104 = v92;
  v105 = v93;
  v106 = v94;
  UInt32.init(_:)(&v103);
  v48 = 0;
  v49 = 0;
  v51 = v103;
  v50 = v104;
  v53 = v105;
  v52 = v106;
  v55 = v107;
  v54 = v108;
  v57 = v109;
  v56 = v110;
  v59 = v111;
  v58 = v112;
  v61 = *(&v113 + 1);
  v60 = v113;
  v62 = -1;
LABEL_7:
  v63 = v114;
  *a4 = v48;
  *(a4 + 8) = v49;
  *(a4 + 16) = v62;
  *(a4 + 24) = v51;
  *(a4 + 40) = v50;
  *(a4 + 56) = v53;
  *(a4 + 72) = v52;
  *(a4 + 88) = v55;
  *(a4 + 104) = v54;
  *(a4 + 120) = v57;
  *(a4 + 136) = v56;
  *(a4 + 152) = v59;
  *(a4 + 168) = v58;
  *(a4 + 184) = v60;
  *(a4 + 192) = v61;
  *(a4 + 200) = v63;
}

double sub_1001934A4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v61 = a2;
  v62 = a3;
  v9 = a4;
  v10 = type metadata accessor for AuthenticationTask();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v60 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = _s6LoggerVMa();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v53[-v18];
  __chkstk_darwin(v20);
  v22 = &v53[-v21];
  sub_100193C44(v6 + *(v10 + 20), &v53[-v21], _s6LoggerVMa);
  if (v9)
  {
    sub_1000110B0(a1);
    v23 = v62;

    v24 = v6[3];
    v25 = v6[4];
    sub_10002587C(v6, v24);
    (*(v25 + 8))(v87, v24, v25);
    sub_100193CAC(v22, _s6LoggerVMa);
    v65 = v87[2];
    v66 = v87[3];
    v67 = v87[4];
    v63 = v87[0];
    v64 = v87[1];
    *&v68 = a1;
    *(&v68 + 1) = v61;
    *&v69 = v23;
    sub_100193BDC(&v63);
    v83 = v71;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    UInt32.init(_:)(&v75);
    v96 = v83;
    v97 = v84;
    v98 = v85;
    v99 = v86;
    v92 = v79;
    v93 = v80;
    v94 = v81;
    v95 = v82;
    v88 = v75;
    v89 = v76;
    v90 = v77;
    v91 = v78;
  }

  else
  {
    v57 = v13;
    v59 = v10;
    sub_100193C44(v22, v19, _s6LoggerVMa);
    sub_100193C44(v22, v16, _s6LoggerVMa);
    v58 = a1;
    sub_1000110B0(a1);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100193C44(v6, v60, type metadata accessor for AuthenticationTask);
    v26 = sub_1004A4A54();
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56 = v6;
      v29 = v28;
      v55 = swift_slowAlloc();
      *&v88 = v55;
      *v29 = 68158466;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v57;
      v31 = *(v57 + 20);
      v54 = v27;
      v32 = v16[v31];
      sub_100193CAC(v16, _s6LoggerVMa);
      *(v29 + 10) = v32;
      *(v29 + 11) = 2082;
      v33 = *&v19[*(v30 + 20) + 4];
      sub_100193CAC(v19, _s6LoggerVMa);
      v34 = ConnectionID.debugDescription.getter(v33);
      v36 = sub_10015BA6C(v34, v35, &v88);

      *(v29 + 13) = v36;
      *(v29 + 21) = 2082;
      v37 = v60;
      v38 = v60[3];
      v39 = v60[4];
      sub_10002587C(v60, v38);
      (*(v39 + 8))(v87, v38, v39);
      v40 = sub_1001EE5E8();
      v42 = v41;
      sub_100193BF0(v87);
      sub_100193CAC(v37, type metadata accessor for AuthenticationTask);
      v43 = sub_10015BA6C(v40, v42, &v88);

      *(v29 + 23) = v43;
      _os_log_impl(&_mh_execute_header, v26, v54, "[%.*hhx-%{public}s] Authenticated with '%{public}s'.", v29, 0x1Fu);
      swift_arrayDestroy();

      v6 = v56;

      v44 = v22;
      v45 = _s6LoggerVMa;
    }

    else
    {
      sub_100193CAC(v16, _s6LoggerVMa);

      sub_100193CAC(v19, _s6LoggerVMa);
      sub_100193CAC(v22, _s6LoggerVMa);
      v45 = type metadata accessor for AuthenticationTask;
      v44 = v60;
    }

    sub_100193CAC(v44, v45);
    v46 = *(v6 + *(v59 + 28));
    *&v63 = v58;
    *(&v63 + 1) = v61;
    *&v64 = v62;
    *(&v64 + 1) = v46;
    sub_100193BE8(&v63);
    v83 = v71;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    UInt32.init(_:)(&v75);
    v96 = v83;
    v97 = v84;
    v98 = v85;
    v99 = v86;
    v92 = v79;
    v93 = v80;
    v94 = v81;
    v95 = v82;
    v88 = v75;
    v89 = v76;
    v90 = v77;
    v91 = v78;
  }

  v47 = v97;
  *(a5 + 128) = v96;
  *(a5 + 144) = v47;
  *(a5 + 160) = v98;
  *(a5 + 176) = v99;
  v48 = v93;
  *(a5 + 64) = v92;
  *(a5 + 80) = v48;
  v49 = v95;
  *(a5 + 96) = v94;
  *(a5 + 112) = v49;
  v50 = v89;
  *a5 = v88;
  *(a5 + 16) = v50;
  result = *&v90;
  v52 = v91;
  *(a5 + 32) = v90;
  *(a5 + 48) = v52;
  return result;
}

__n128 sub_100193AB4@<Q0>(uint64_t a1@<X8>)
{
  sub_100192338(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

double sub_100193B08@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1001934A4(a1, a2, a3, a4, v12);
  v6 = v20;
  *(a5 + 128) = v19;
  *(a5 + 144) = v6;
  *(a5 + 160) = v21;
  *(a5 + 176) = v22;
  v7 = v16;
  *(a5 + 64) = v15;
  *(a5 + 80) = v7;
  v8 = v18;
  *(a5 + 96) = v17;
  *(a5 + 112) = v8;
  v9 = v12[1];
  *a5 = v12[0];
  *(a5 + 16) = v9;
  result = *&v13;
  v11 = v14;
  *(a5 + 32) = v13;
  *(a5 + 48) = v11;
  return result;
}

uint64_t sub_100193B84(void *a1, void *a2, uint64_t a3)
{
  if (sub_100194234(a1, a2))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100193C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100193CAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100193D0C(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
  }

  if (!v2)
  {
    return sub_100014D40(a1, a2);
  }

  return a1;
}

uint64_t sub_100193D28(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_100014CEC(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_100193D38(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
    return swift_errorRetain();
  }

  if (!v2)
  {
    return sub_100014CEC(a1, a2);
  }

  return a1;
}

uint64_t sub_100193D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100193D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100193DF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3[5];
  v6 = v3[6];
  v7 = (v6 >> 60) & 3;
  if (!v7)
  {
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v8 = v3[5];
    swift_errorRetain();
    return swift_willThrow();
  }

  v9 = v4;
  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v6, v5))
  {
    if (v6 == 0x2000000000000000 && v5 == 2)
    {
      v12 = v3[3];
      v13 = v3[4];
      v14 = v3;
      v16 = v3;
      sub_100025928(v16, v12);
      (*(v13 + 32))(a1, a2, a3, v12, v13);
      if (!v4)
      {
        v19 = v14[3];
        v20 = v14[4];
        sub_100025928(v14, v19);
        v21 = (*(v20 + 24))(v19, v20);
        if (v22 >> 60 != 15)
        {
          v44 = v21;
          v45 = v22;
          result = sub_100193D0C(v14[5], v14[6]);
          v14[5] = v44;
          v14[6] = v45;
          return result;
        }

        sub_100194AFC();
        v9 = swift_allocError();
        swift_willThrow();
      }

LABEL_25:
      v33 = v14[5];
      v34 = v14[6];
      swift_errorRetain();
      sub_100193D0C(v33, v34);
      v14[5] = v9;
      v14[6] = 0x1000000000000000;
      return swift_willThrow();
    }

LABEL_18:
    sub_10018D6F4();
    swift_allocError();
    *v23 = v5;
    *(v23 + 8) = v6;
    *(v23 + 16) = 0;
    sub_100193D38(v5, v6);
    return swift_willThrow();
  }

  if (!(v5 | v6 ^ 0x2000000000000000))
  {
    goto LABEL_18;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_27;
    }

    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    goto LABEL_23;
  }

  if (v10)
  {
    v25 = a1;
    v26 = a1 >> 32;
LABEL_23:
    if (v25 == v26)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = v3[3];
  v28 = v3[4];
  v14 = v3;
  v30 = v3;
  sub_100025928(v30, v27);
  (*(v28 + 32))(a1, a2, a3, v27, v28);
  if (v4)
  {
    goto LABEL_25;
  }

  v3 = v14;
LABEL_27:
  v35 = v3[3];
  v36 = v3[4];
  v37 = v3;
  sub_100025928(v3, v35);
  v38 = (*(v36 + 24))(v35, v36);
  if (v4)
  {
LABEL_30:
    v40 = v3[5];
    v41 = v37[6];
    swift_errorRetain();
    sub_100193D0C(v40, v41);
    v37[5] = v9;
    v37[6] = 0x1000000000000000;
    return swift_willThrow();
  }

  if (v39 >> 60 == 15)
  {
    sub_100194AFC();
    v9 = swift_allocError();
    swift_willThrow();
    goto LABEL_30;
  }

  v42 = v38;
  v43 = v39;
  result = sub_100193D0C(v37[5], v37[6]);
  v37[5] = v42;
  v37[6] = v43;
  return result;
}

BOOL sub_100194128(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = (v5 >> 60) & 3;
  if (!v8)
  {
    return (v7 & 0x3000000000000000) == 0 && (sub_10003A194(v4, v5, v6, v7) & 1) != 0;
  }

  if (v8 == 1)
  {
    return (v7 & 0x3000000000000000) == 0x1000000000000000;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v5, v4))
  {
    v9 = v7 & 0x3000000000000000;
    if (v5 == 0x2000000000000000 && v4 == 2)
    {
      if (v9 != 0x2000000000000000 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 0x2000000000000000 || v6 != 3)
    {
      return 0;
    }
  }

  else if (v4 | v5 ^ 0x2000000000000000)
  {
    if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6 != 1)
    {
      return 0;
    }
  }

  else if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6)
  {
    return 0;
  }

  return v7 == 0x2000000000000000;
}

uint64_t sub_100194234(void *a1, void *a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v5 = a2[5];
  v6 = a2[6];
  v7 = (v3 >> 60) & 3;
  if (!v7)
  {
    if ((v6 & 0x3000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v8 = a1;
    v9 = sub_10003A194(a1[5], v3, v5, v6);
    a1 = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_27;
  }

  if (v7 == 1)
  {
    if ((v6 & 0x3000000000000000) != 0x1000000000000000)
    {
      goto LABEL_63;
    }

LABEL_27:
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1;
    sub_10002587C(a1, v12);
    (*(v13 + 8))(&v68, v12, v13);
    v15 = a2[3];
    v16 = a2[4];
    sub_10002587C(a2, v15);
    (*(v16 + 8))(&v75, v15, v16);
    v17 = v69;
    v18 = v70;
    if ((v73 & 0x1000000000000000) != 0)
    {
      v85 = v68;
      v86 = v69;
      v87 = v70;
      v88 = v71;
      v89 = v72;
      v90 = v73 & 0xEFFFFFFFFFFFFFFFLL;
      v91 = v74;
      if ((v79 & 0x1000000000000000) != 0)
      {
        v81[0] = v75;
        v81[1] = v76;
        v81[2] = v77;
        v82 = v78;
        v83 = v79 & 0xEFFFFFFFFFFFFFFFLL;
        v84 = v80;
        v20 = sub_1001EFF14(&v85, v81);
        goto LABEL_37;
      }
    }

    else if ((v79 & 0x1000000000000000) == 0)
    {
      v19 = v76;
      if (v68 == v75 || (sub_1004A6D34() & 1) != 0)
      {
        if (__PAIR128__(v18, v17) == v19)
        {
          sub_100193BF0(&v75);
          sub_100193BF0(&v68);
LABEL_38:
          sub_100104D00(v14, v66);
          sub_100104D00(a2, v67);
          sub_10000C9C0(&qword_1005D2FF0, &qword_1004DCB58);
          if (swift_dynamicCast())
          {
            v52 = v62;
            v53 = v63;
            v54 = v64;
            v55 = v65;
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v32 = v42;
              v33 = v43;
              v34 = v44;
              v35 = v45;
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              if ((*(&v49 + 1) & 0x1000000000000000) != 0)
              {
                v96 = v46;
                v97 = v47;
                v98 = v48;
                *&v99 = v49;
                *(&v99 + 1) = *(&v49 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v100 = v50;
                if ((*(&v29 + 1) & 0x1000000000000000) == 0 || (v101 = v26, v102 = v27, v103 = v28, *&v104 = v29, *(&v104 + 1) = *(&v29 + 1) & 0xEFFFFFFFFFFFFFFFLL, v105 = v30, (sub_1001EFF14(&v96, &v101) & 1) == 0))
                {
LABEL_68:
                  v10 = 0;
                  goto LABEL_69;
                }
              }

              else if ((HIBYTE(v29) & 0x10) != 0 || v46 != v26 && (sub_1004A6D34() & 1) == 0 || v47 != v27 && (sub_1004A6D34() & 1) == 0)
              {
                goto LABEL_68;
              }

              v92[2] = v53;
              v92[3] = v54;
              v93 = v55;
              v92[0] = v51;
              v92[1] = v52;
              v94[2] = v33;
              v94[3] = v34;
              v95 = v35;
              v94[1] = v32;
              v94[0] = v31;
              v10 = sub_10020FCF0(v92, v94);
LABEL_69:
              sub_100194AA8(&v26);
              sub_100194AA8(&v46);
LABEL_75:
              sub_1000197E0(v67);
              sub_1000197E0(v66);
              return v10 & 1;
            }

            sub_100194AA8(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1001EFF14(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_100194A54(&v46);
                  sub_100194A54(&v26);
                  goto LABEL_59;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v24 = sub_10003A194(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_100194A54(&v26);
                  sub_100194A54(&v46);
                  if (v24)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }
              }

              sub_100194A54(&v26);
              sub_100194A54(&v46);
              goto LABEL_74;
            }

            sub_100194A54(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1001EFF14(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_100194A00(&v46);
                  sub_100194A00(&v26);
LABEL_59:
                  if (v22 >> 60 == 15)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v25 = sub_10003A194(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_100194A00(&v26);
                  sub_100194A00(&v46);
                  if (v25)
                  {
LABEL_79:
                    v10 = 1;
                    goto LABEL_75;
                  }

LABEL_74:
                  v10 = 0;
                  goto LABEL_75;
                }
              }

              sub_100194A00(&v26);
              sub_100194A00(&v46);
              goto LABEL_74;
            }

            sub_100194A00(&v46);
          }

          sub_100194998(v66);
LABEL_63:
          v10 = 0;
          return v10 & 1;
        }

        v20 = sub_1004A6D34();
LABEL_37:
        v21 = v20;
        sub_100193BF0(&v75);
        sub_100193BF0(&v68);
        if ((v21 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_38;
      }
    }

    sub_100193BF0(&v75);
    sub_100193BF0(&v68);
    goto LABEL_63;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v3, v4))
  {
    if (v3 == 0x2000000000000000 && v4 == 2)
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 2)
      {
        return v10 & 1;
      }
    }

    else
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 3)
      {
        return v10 & 1;
      }
    }
  }

  else if (v4 | v3 ^ 0x2000000000000000)
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5 != 1)
    {
      return v10 & 1;
    }
  }

  else
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5)
    {
      return v10 & 1;
    }
  }

  if (v6 == 0x2000000000000000)
  {
    goto LABEL_27;
  }

  return v10 & 1;
}

uint64_t sub_100194998(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D2FF8, &unk_1004DCB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100194AFC()
{
  result = qword_1005D3000;
  if (!qword_1005D3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3000);
  }

  return result;
}

uint64_t sub_100194B84(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100194C54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Authenticator()
{
  result = qword_1005D3068;
  if (!qword_1005D3068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100194D50()
{
  sub_100194E54();
  if (v0 <= 0x3F)
  {
    sub_100194EF8(319, &qword_1005D3080, sub_100194EA4);
    if (v1 <= 0x3F)
    {
      sub_100194EF8(319, &qword_1005D3090, sub_100194F58);
      if (v2 <= 0x3F)
      {
        sub_100194FAC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100194E54()
{
  if (!qword_1005D3078)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D3078);
    }
  }
}

unint64_t sub_100194EA4()
{
  result = qword_1005D3088;
  if (!qword_1005D3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3088);
  }

  return result;
}

void sub_100194EF8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1004A5DC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100194F58()
{
  result = qword_1005D3098;
  if (!qword_1005D3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D3098);
  }

  return result;
}

void sub_100194FAC()
{
  if (!qword_1005D30A0)
  {
    type metadata accessor for AuthenticationTask();
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D30A0);
    }
  }
}

unint64_t sub_100195004()
{
  v1 = *(v0 + 24);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = 1 << *(*(v0 + 24) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v21 = *(v0 + 24);

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 3;
  while (1)
  {
    v14 = v13;
    v15 = v12;
    v16 = v11;
    if (!v7)
    {
      break;
    }

    v17 = v7;
LABEL_11:
    v7 = (v17 - 1) & v17;
    if (v14 >= 4)
    {
      sub_1000110B0(v11);

      result = sub_100191E44(v11, v12, v14);
      v13 = v14;
    }

    else
    {
      v19 = (*(v21 + 48) + 24 * (__clz(__rbit64(v17)) | (v10 << 6)));
      v20 = v19[2];
      if (v20 >= 4)
      {
        v11 = *v19;
        v12 = v19[1];
        sub_1000110B0(*v19);

        sub_100191E44(v16, v15, v14);
        sub_1000110B0(v11);

        result = sub_100191E44(v11, v12, v20);
        v13 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        if (v14)
        {
          if (v20)
          {
            v11 = 0;
            v12 = 0;
            v13 = 1;
            if (v14 != 1)
            {
              if (v20 == 1)
              {
                result = sub_100191E44(v16, v15, v14);
                v11 = 0;
                v12 = 0;
                v13 = 1;
              }

              else
              {
                v11 = 0;
                v12 = 0;
                v13 = 2;
                if (v14 != 2)
                {
                  v11 = 0;
                  v12 = 0;
                  v13 = 3;
                  if (v20 == 2)
                  {
                    result = sub_100191E44(v16, v15, v14);
                    v11 = 0;
                    v12 = 0;
                    v13 = 2;
                  }
                }
              }
            }
          }

          else
          {
            result = sub_100191E44(v16, v15, v14);
            v11 = 0;
            v12 = 0;
            v13 = 0;
          }
        }
      }
    }
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v8)
    {

      return v11;
    }

    v17 = *(v3 + 8 * v18);
    ++v10;
    if (v17)
    {
      v10 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100195250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - v9;
  v11 = _s6LoggerVMa();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100195528(a2);
  if (v3)
  {
    sub_1001976B0(a2, _s6LoggerVMa);
    return sub_100197710(a1);
  }

  else
  {
    v16 = a1[1];
    v17 = sub_1001EF73C(*a1);
    v18 = sub_1001EF8B0(v16, v17);

    v25[0] = v18;

    sub_100196044(v25);

    v27 = v25[0];
    v19 = Capability.saslIR.unsafeMutableAddressor();
    v20 = v19[1];
    v21 = v19[2];
    v22 = *(v19 + 24);
    v25[0] = *v19;
    v25[1] = v20;
    v25[2] = v21;
    v26 = v22;
    __chkstk_darwin(v19);
    v25[-2] = v25;

    LOBYTE(v16) = sub_100215C70(sub_100197740, &v25[-4], v16);
    sub_100197710(a1);

    sub_100190B00(a2, v14);
    *(a3 + 16) = _swiftEmptySetSingleton;
    *(a3 + 24) = _swiftEmptySetSingleton;
    v23 = *(type metadata accessor for Authenticator() + 32);
    v24 = type metadata accessor for AuthenticationTask();
    (*(*(v24 - 8) + 56))(a3 + v23, 1, 1, v24);
    *(a3 + 8) = v16 & 1;
    *a3 = v27;
    sub_100195B78(v14, v10);
    sub_1001976B0(a2, _s6LoggerVMa);
    sub_1001976B0(v14, _s6LoggerVMa);
    return sub_100197760(v10, a3 + v23);
  }
}

void sub_100195528(uint64_t a1)
{
  v3 = _s6LoggerVMa();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v54 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v54 - v18;
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  v22 = *(v1 + 16);
  v23 = *(v1 + 56);
  if (v23 != 1)
  {
    if (v22 >> 62 == 1)
    {
      v35 = *(v1 + 40);
      if (!v23)
      {
        v43 = *(v1 + 16);
        if (v35 == 1)
        {
          if (v43 == 772)
          {
            return;
          }
        }

        else if ((v43 - 771) < 2)
        {
          return;
        }

        goto LABEL_28;
      }

      v36 = *(v1 + 32);
      v37 = *(v1 + 16);
      if (v35 == 1)
      {
        if (v37 != 772)
        {
          goto LABEL_28;
        }
      }

      else if ((v37 - 773) < 0xFFFFFFFE)
      {
        goto LABEL_28;
      }

      if (v36 && (*(v1 + 48) == *(v1 + 24) && v23 == v36 || (sub_1004A6D34() & 1) != 0))
      {
        return;
      }
    }

LABEL_28:
    sub_100190B00(a1, v10);
    sub_100190B00(a1, v7);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v45 = sub_1004A4A54();
    v46 = sub_1004A6014();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55 = v48;
      *v47 = 68158210;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v49 = v7[*(v3 + 20)];
      sub_1001976B0(v7, _s6LoggerVMa);
      *(v47 + 10) = v49;
      *(v47 + 11) = 2082;
      v50 = *&v10[*(v3 + 20) + 4];
      sub_1001976B0(v10, _s6LoggerVMa);
      v51 = ConnectionID.debugDescription.getter(v50);
      v53 = sub_10015BA6C(v51, v52, &v55);

      *(v47 + 13) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%{public}s] Connection security does not fulfil requirements for sending credentials.", v47, 0x15u);
      sub_1000197E0(v48);
    }

    else
    {
      sub_1001976B0(v7, _s6LoggerVMa);

      sub_1001976B0(v10, _s6LoggerVMa);
    }

    sub_100197888();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v24 = v22 >> 62;
  if (v24)
  {
    if (v24 == 1)
    {
      return;
    }

    sub_100190B00(a1, &v54 - v20);
    sub_100190B00(a1, v19);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v25 = sub_1004A4A54();
    v26 = sub_1004A6034();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 68158210;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v29 = v19[*(v3 + 20)];
      sub_1001976B0(v19, _s6LoggerVMa);
      *(v27 + 10) = v29;
      *(v27 + 11) = 2082;
      v30 = *&v21[*(v3 + 20) + 4];
      sub_1001976B0(v21, _s6LoggerVMa);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_10015BA6C(v31, v32, &v55);

      *(v27 + 13) = v33;
      v34 = "[%.*hhx-%{public}s] Sending credentials over insecure connection.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v25, v26, v34, v27, 0x15u);
      sub_1000197E0(v28);

      return;
    }

    sub_1001976B0(v19, _s6LoggerVMa);

    v44 = v21;
  }

  else
  {
    sub_100190B00(a1, v16);
    sub_100190B00(a1, v13);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v25 = sub_1004A4A54();
    v26 = sub_1004A6034();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 68158210;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v38 = v13[*(v3 + 20)];
      sub_1001976B0(v13, _s6LoggerVMa);
      *(v27 + 10) = v38;
      *(v27 + 11) = 2082;
      v39 = *&v16[*(v3 + 20) + 4];
      sub_1001976B0(v16, _s6LoggerVMa);
      v40 = ConnectionID.debugDescription.getter(v39);
      v42 = sub_10015BA6C(v40, v41, &v55);

      *(v27 + 13) = v42;
      v34 = "[%.*hhx-%{public}s] Sending credentials over insecure connection (opportunistic TLS).";
      goto LABEL_13;
    }

    sub_1001976B0(v13, _s6LoggerVMa);

    v44 = v16;
  }

  sub_1001976B0(v44, _s6LoggerVMa);
}

uint64_t sub_100195B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AuthenticationTask();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v2;
  v16 = v2;
  sub_100195F08(sub_1001977D0, v10, v24);
  if ((~v26 & 0x3000000000000000) != 0 || (v28 & 0x1000000000000000) == 0)
  {
    v17 = v24[0];
    v18 = v24[1];
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v12 = *(v2 + 8);
    sub_100190B00(a1, &v9[v5[5]]);
    sub_1001EE7D4(v9);
    sub_100025F40(v24, &qword_1005D2F38, &unk_1004DC8E0);
    *(v9 + 40) = xmmword_1004DCCC0;
    *&v9[v5[7]] = 0;
    v9[v5[8]] = 2;
    v9[v5[6]] = v12;
    sub_10019764C(v9, a2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v6 + 56))(a2, v13, 1, v5);
}

uint64_t sub_100195D34(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24[-1] - v13;
  if (a4 && (, sub_1000110B0(a2), v15 = sub_10018E934(a2), v17 != 4))
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 3;
  }

  sub_10019782C(a1, v25);
  sub_1001FF838(v25, a1);
  sub_100193BF0(v25);
  sub_1001978DC(v18, v19, v20);
  sub_1001FF578(v24, v18, v19, v20);
  sub_100191E44(v24[0], v24[1], v24[2]);
  sub_100195B78(a5, v14);
  sub_100191E44(v18, v19, v20);
  v21 = type metadata accessor for Authenticator();
  return sub_100197760(v14, v6 + *(v21 + 32));
}

BOOL sub_100195EB0(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (sub_1001ADD98(v5, *(a2 + 16)) & 1) == 0;
}

uint64_t sub_100195F08@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[3];
      v23 = v7[2];
      v24 = v8;
      v25 = v7[4];
      v9 = v7[1];
      v22[0] = *v7;
      v22[1] = v9;
      v19 = v23;
      v20 = v8;
      v21 = v25;
      v17 = v22[0];
      v18 = v9;
      sub_10019782C(v22, &v12);
      result = v6(&v17);
      if (v3)
      {
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v12 = v17;
        v13 = v18;
        return sub_100193BF0(&v12);
      }

      if (result)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = sub_100193BF0(&v12);
      v7 += 5;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v10;
    *(a3 + 64) = v21;
    v11 = v18;
    *a3 = v17;
    *(a3 + 16) = v11;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = xmmword_1004DCCD0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0x1000000000000000;
  }

  return result;
}

Swift::Int sub_100196044(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EDFE8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001960B0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001960B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100196400(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1001961A8(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1001961A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 80 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 56);
      if ((v9 & 0x1000000000000000) != 0)
      {
        v21 = (*(v8 + 72) >> 59) & 6 | ((v9 & 0x2000000000000000) != 0);
        if (v21 <= 2)
        {
          if (v21)
          {
            if (v21 == 1)
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 2;
            }

            else
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 1;
            }
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            v11 = 1;
            result = 5;
          }
        }

        else if (v21 > 4)
        {
          if (v21 == 5)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            result = 6;
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            result = 7;
          }
        }

        else if (v21 == 3)
        {
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v12 = 1;
          v14 = 1;
          result = 3;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v14 = 1;
          result = 4;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        result = 8;
      }

      v15 = *(v8 - 24);
      if ((v15 & 0x1000000000000000) == 0)
      {
        break;
      }

      v22 = (*(v8 - 8) >> 59) & 6 | ((v15 & 0x2000000000000000) != 0);
      if (v22 <= 2)
      {
        if (v22)
        {
          if (v22 == 1)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

LABEL_10:
          if (result >= v16)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v22 > 4)
      {
        if (v22 == 5)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v10 & 1) == 0)
        {
LABEL_4:
          ++a3;
          v5 += 80;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v22 == 3)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v17 = (v8 - 80);
      v25 = *(v8 + 32);
      v26 = *(v8 + 48);
      v27 = *(v8 + 64);
      v23 = *v8;
      v24 = *(v8 + 16);
      v18 = *(v8 - 32);
      *(v8 + 32) = *(v8 - 48);
      *(v8 + 48) = v18;
      *(v8 + 64) = *(v8 - 16);
      v19 = *(v8 - 64);
      *v8 = *(v8 - 80);
      *(v8 + 16) = v19;
      v17[3] = v26;
      v17[4] = v27;
      v17[1] = v24;
      v17[2] = v25;
      v8 -= 80;
      *v17 = v23;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    v16 = 8;
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_100196400(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_170:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_208;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_172:
      v96 = *(v9 + 2);
      if (v96 >= 2)
      {
        while (*a3)
        {
          v97 = *&v9[16 * v96];
          v98 = *&v9[16 * v96 + 24];
          sub_100196D98((*a3 + 80 * v97), (*a3 + 80 * *&v9[16 * v96 + 16]), (*a3 + 80 * v98), v5);
          if (v6)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_195;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_100141810(v9);
          }

          if (v96 - 2 >= *(v9 + 2))
          {
            goto LABEL_196;
          }

          v99 = &v9[16 * v96];
          *v99 = v97;
          *(v99 + 1) = v98;
          result = sub_100141784(v96 - 1);
          v96 = *(v9 + 2);
          if (v96 <= 1)
          {
          }
        }

        goto LABEL_206;
      }
    }

LABEL_202:
    result = sub_100141810(v9);
    v9 = result;
    goto LABEL_172;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = *a3 + 80 * v8;
      v13 = *(v12 + 56);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v14 = qword_1004DCE48[(*(v12 + 72) >> 59) & 6 | (v13 >> 61) & 1];
      }

      else
      {
        v14 = 8;
      }

      v15 = v11 + 80 * v10;
      v16 = *(v15 + 56);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v17 = qword_1004DCE48[(*(v15 + 72) >> 59) & 6 | (v16 >> 61) & 1];
      }

      else
      {
        v17 = 8;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = (v11 + 80 * v10 + 232);
        while (1)
        {
          v20 = *(v18 - 2);
          if ((v20 & 0x1000000000000000) != 0)
          {
            v21 = (*v18 >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
            if (v21 <= 2)
            {
              if (v21)
              {
                v26 = v21 == 1;
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 2;
                if (!v26)
                {
                  v25 = 1;
                }

                result = 0;
                if ((v13 & 0x1000000000000000) == 0)
                {
LABEL_13:
                  v19 = 8;
                  goto LABEL_14;
                }
              }

              else
              {
                v22 = 0;
                v23 = 1;
                v24 = 1;
                result = 1;
                v25 = 5;
                if ((v13 & 0x1000000000000000) == 0)
                {
                  goto LABEL_13;
                }
              }
            }

            else if (v21 > 4)
            {
              v26 = v21 == 5;
              v22 = 1;
              v21 = v21 != 5;
              v23 = 1;
              v24 = 1;
              v25 = 6;
              if (!v26)
              {
                v25 = 7;
              }

              result = 1;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }

            else
            {
              v26 = v21 == 3;
              v21 = 0;
              v22 = 0;
              v23 = !v26;
              v24 = 1;
              v25 = 3;
              if (!v26)
              {
                v25 = 4;
              }

              result = 0;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            v21 = 1;
            v22 = 1;
            v23 = 1;
            v24 = 1;
            result = 1;
            v25 = 8;
            if ((v13 & 0x1000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          v27 = (*(v18 - 10) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
          if (v27 > 2)
          {
            if (v27 > 4)
            {
              if (v27 == 5)
              {
                if ((((v14 < v17) ^ v22) & 1) == 0)
                {
                  break;
                }
              }

              else if ((((v14 < v17) ^ v21) & 1) == 0)
              {
                break;
              }
            }

            else if (v27 == 3)
            {
              if ((((v14 < v17) ^ v24) & 1) == 0)
              {
                break;
              }
            }

            else if ((((v14 < v17) ^ v23) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          if (!v27)
          {
            if ((((v14 < v17) ^ result) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          v26 = v27 == 1;
          v19 = 2;
          if (!v26)
          {
            v19 = 1;
          }

LABEL_14:
          if (v14 < v17 == v25 >= v19)
          {
            break;
          }

LABEL_15:
          ++v8;
          v18 += 10;
          v13 = v20;
          if (v7 == v8)
          {
            v8 = v7;
            break;
          }
        }
      }

      if (v14 < v17)
      {
        if (v8 < v10)
        {
          goto LABEL_199;
        }

        if (v10 < v8)
        {
          v28 = 80 * v8 - 80;
          v29 = 80 * v10;
          v5 = v8;
          v100 = v10;
          do
          {
            if (v10 != --v5)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_205;
              }

              v30 = (v31 + v28);
              v108 = *(v31 + v29 + 32);
              v110 = *(v31 + v29 + 48);
              v112 = *(v31 + v29 + 64);
              v104 = *(v31 + v29);
              v106 = *(v31 + v29 + 16);
              result = memmove((v31 + v29), (v31 + v28), 0x50uLL);
              v30[2] = v108;
              v30[3] = v110;
              v30[4] = v112;
              *v30 = v104;
              v30[1] = v106;
            }

            ++v10;
            v28 -= 80;
            v29 += 80;
          }

          while (v10 < v5);
          v7 = a3[1];
          v10 = v100;
        }
      }
    }

    if (v8 >= v7)
    {
      goto LABEL_119;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_198;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_119;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_200;
    }

    if (v10 + a4 < v7)
    {
      v7 = v10 + a4;
    }

    if (v7 < v10)
    {
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    if (v8 == v7)
    {
      goto LABEL_119;
    }

    v32 = *a3;
    v33 = *a3 + 80 * v8;
    v34 = v10 - v8;
LABEL_77:
    v35 = v34;
    v36 = v33;
LABEL_78:
    v37 = *(v36 + 56);
    if ((v37 & 0x1000000000000000) != 0)
    {
      v49 = (*(v36 + 72) >> 59) & 6 | ((v37 & 0x2000000000000000) != 0);
      if (v49 <= 2)
      {
        if (v49)
        {
          if (v49 == 1)
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 2;
          }

          else
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 1;
          }
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          v39 = 1;
          result = 5;
        }
      }

      else if (v49 > 4)
      {
        if (v49 == 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          result = 6;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          result = 7;
        }
      }

      else if (v49 == 3)
      {
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v40 = 1;
        v42 = 1;
        result = 3;
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v42 = 1;
        result = 4;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      result = 8;
    }

    v43 = *(v36 - 24);
    if ((v43 & 0x1000000000000000) == 0)
    {
      v44 = 8;
      goto LABEL_82;
    }

    v50 = (*(v36 - 8) >> 59) & 6 | ((v43 & 0x2000000000000000) != 0);
    if (v50 <= 2)
    {
      break;
    }

    if (v50 <= 4)
    {
      if (v50 == 3)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else if ((v40 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v50 == 5)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v38)
    {
      goto LABEL_83;
    }

LABEL_76:
    ++v8;
    v33 += 80;
    --v34;
    if (v8 != v7)
    {
      goto LABEL_77;
    }

    v8 = v7;
LABEL_119:
    if (v8 < v10)
    {
      goto LABEL_197;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v51 = *(v9 + 3);
    v52 = v5 + 1;
    if (v5 >= v51 >> 1)
    {
      result = sub_100085288((v51 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v5];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v102;
    if (!*v102)
    {
      goto LABEL_207;
    }

    if (v5)
    {
      while (2)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          v60 = &v9[16 * v52 + 32];
          v61 = *(v60 - 64);
          v62 = *(v60 - 56);
          v66 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          if (v66)
          {
            goto LABEL_184;
          }

          v65 = *(v60 - 48);
          v64 = *(v60 - 40);
          v66 = __OFSUB__(v64, v65);
          v58 = v64 - v65;
          v59 = v66;
          if (v66)
          {
            goto LABEL_185;
          }

          v67 = &v9[16 * v52];
          v69 = *v67;
          v68 = *(v67 + 1);
          v66 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v66)
          {
            goto LABEL_187;
          }

          v66 = __OFADD__(v58, v70);
          v71 = v58 + v70;
          if (v66)
          {
            goto LABEL_190;
          }

          if (v71 >= v63)
          {
            v89 = &v9[16 * v55 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v66 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v66)
            {
              goto LABEL_194;
            }

            if (v58 < v92)
            {
              v55 = v52 - 2;
            }
          }

          else
          {
LABEL_139:
            if (v59)
            {
              goto LABEL_186;
            }

            v72 = &v9[16 * v52];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_189;
            }

            v78 = &v9[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_192;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_193;
            }

            if (v76 + v81 < v58)
            {
              goto LABEL_153;
            }

            if (v58 < v81)
            {
              v55 = v52 - 2;
            }
          }
        }

        else
        {
          if (v52 == 3)
          {
            v56 = *(v9 + 4);
            v57 = *(v9 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
            goto LABEL_139;
          }

          v82 = &v9[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_153:
          if (v77)
          {
            goto LABEL_188;
          }

          v85 = &v9[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_191;
          }

          if (v88 < v76)
          {
            break;
          }
        }

        v5 = v55 - 1;
        if (v55 - 1 >= v52)
        {
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
          goto LABEL_201;
        }

        if (!*a3)
        {
          goto LABEL_204;
        }

        v93 = *&v9[16 * v5 + 32];
        v94 = *&v9[16 * v55 + 40];
        sub_100196D98((*a3 + 80 * v93), (*a3 + 80 * *&v9[16 * v55 + 32]), (*a3 + 80 * v94), v54);
        if (v6)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_182;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_183;
        }

        v95 = &v9[16 * v5];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        result = sub_100141784(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_170;
    }
  }

  if (v50)
  {
    if (v50 == 1)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

LABEL_82:
    if (result >= v44)
    {
      goto LABEL_76;
    }

    goto LABEL_83;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_83:
  if (v32)
  {
    v45 = (v36 - 80);
    v109 = *(v36 + 32);
    v111 = *(v36 + 48);
    v113 = *(v36 + 64);
    v105 = *v36;
    v107 = *(v36 + 16);
    v46 = *(v36 - 32);
    *(v36 + 32) = *(v36 - 48);
    *(v36 + 48) = v46;
    *(v36 + 64) = *(v36 - 16);
    v47 = *(v36 - 64);
    *v36 = *(v36 - 80);
    *(v36 + 16) = v47;
    v45[3] = v111;
    v45[4] = v113;
    v45[1] = v107;
    v45[2] = v109;
    v36 -= 80;
    *v45 = v105;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

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
  return result;
}

uint64_t sub_100196D98(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 80;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 80;
  if (v9 < v11)
  {
    if (__src != __dst || &__dst[80 * v9] <= __src)
    {
      memmove(__src, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_127;
    }

    while (1)
    {
      v13 = *(v6 + 7);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v23 = (*(v6 + 9) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
        if (v23 <= 2)
        {
          v18 = 1;
          if (v23 == 1)
          {
            v27 = 2;
          }

          else
          {
            v27 = 1;
          }

          v14 = 1;
          v15 = 1;
          v16 = v23 != 0;
          v17 = v23 != 0;
          if (!v23)
          {
            v18 = 0;
          }

          v22 = v23 == 0;
          v19 = 5;
          if (!v22)
          {
            v19 = v27;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
LABEL_9:
            if (v19 >= 8)
            {
              goto LABEL_48;
            }

            goto LABEL_10;
          }
        }

        else
        {
          v14 = v23 == 5;
          if (v23 == 5)
          {
            v24 = 6;
          }

          else
          {
            v24 = 7;
          }

          v16 = v23 == 3;
          if (v23 == 3)
          {
            v25 = 3;
          }

          else
          {
            v25 = 4;
          }

          if (v23 > 4)
          {
            v15 = 0;
          }

          else
          {
            v14 = 1;
            v15 = 1;
          }

          if (v23 > 4)
          {
            v16 = 0;
          }

          v17 = 0;
          v18 = v23 <= 4;
          if (v23 <= 4)
          {
            v19 = v25;
          }

          else
          {
            v19 = v24;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 8;
        v20 = *(v4 + 7);
        if ((v20 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v26 = (*(v4 + 9) >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
      if (v26 <= 2)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          if (v19 >= v28)
          {
LABEL_48:
            v21 = v4;
            v22 = v7 == v4;
            v4 += 80;
            if (v22)
            {
              goto LABEL_50;
            }

LABEL_49:
            memmove(v7, v21, 0x50uLL);
            goto LABEL_50;
          }
        }

        else if (!v18)
        {
          goto LABEL_48;
        }
      }

      else if (v26 > 4)
      {
        if (v26 == 5)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else if (!v14)
        {
          goto LABEL_48;
        }
      }

      else if (v26 == 3)
      {
        if (!v17)
        {
          goto LABEL_48;
        }
      }

      else if (!v16)
      {
        goto LABEL_48;
      }

LABEL_10:
      v21 = v6;
      v22 = v7 == v6;
      v6 += 80;
      if (!v22)
      {
        goto LABEL_49;
      }

LABEL_50:
      v7 += 80;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_127;
      }
    }
  }

  if (__src != a2 || &a2[80 * v11] <= __src)
  {
    memmove(__src, a2, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_67:
    v5 -= 80;
    while (1)
    {
      v29 = *(v12 - 3);
      if ((v29 & 0x1000000000000000) != 0)
      {
        v37 = (*(v12 - 1) >> 59) & 6 | ((v29 & 0x2000000000000000) != 0);
        if (v37 <= 2)
        {
          v34 = 1;
          if (v37 == 1)
          {
            v41 = 2;
          }

          else
          {
            v41 = 1;
          }

          v30 = 1;
          v31 = 1;
          v32 = v37 != 0;
          v33 = v37 != 0;
          if (!v37)
          {
            v34 = 0;
          }

          v22 = v37 == 0;
          v35 = 5;
          if (!v22)
          {
            v35 = v41;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
LABEL_71:
            if (v35 < 8)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }
        }

        else
        {
          v30 = v37 == 5;
          if (v37 == 5)
          {
            v38 = 6;
          }

          else
          {
            v38 = 7;
          }

          v32 = v37 == 3;
          if (v37 == 3)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }

          if (v37 > 4)
          {
            v31 = 0;
          }

          else
          {
            v30 = 1;
            v31 = 1;
          }

          if (v37 > 4)
          {
            v32 = 0;
          }

          v33 = 0;
          v34 = v37 <= 4;
          if (v37 <= 4)
          {
            v35 = v39;
          }

          else
          {
            v35 = v38;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 8;
        v36 = *(v6 - 3);
        if ((v36 & 0x1000000000000000) == 0)
        {
          goto LABEL_71;
        }
      }

      v40 = (*(v6 - 1) >> 59) & 6 | ((v36 & 0x2000000000000000) != 0);
      if (v40 <= 2)
      {
        if (v40)
        {
          if (v40 == 1)
          {
            v42 = 2;
          }

          else
          {
            v42 = 1;
          }

          if (v35 < v42)
          {
LABEL_119:
            v44 = v6 - 80;
            if (v5 + 80 != v6)
            {
              memmove(v5, v6 - 80, 0x50uLL);
            }

            if (v12 <= v4 || (v6 -= 80, v44 <= v7))
            {
              v6 = v44;
              break;
            }

            goto LABEL_67;
          }
        }

        else if (v34)
        {
          goto LABEL_119;
        }
      }

      else if (v40 > 4)
      {
        if (v40 == 5)
        {
          if (v31)
          {
            goto LABEL_119;
          }
        }

        else if (v30)
        {
          goto LABEL_119;
        }
      }

      else if (v40 == 3)
      {
        if (v33)
        {
          goto LABEL_119;
        }
      }

      else if (v32)
      {
        goto LABEL_119;
      }

LABEL_117:
      v43 = (v12 - 80);
      if (v5 + 80 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
      if (v43 <= v4)
      {
        v12 = v43;
        break;
      }
    }
  }

LABEL_127:
  v45 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v45])
  {
    memmove(v6, v4, 80 * v45);
  }

  return 1;
}