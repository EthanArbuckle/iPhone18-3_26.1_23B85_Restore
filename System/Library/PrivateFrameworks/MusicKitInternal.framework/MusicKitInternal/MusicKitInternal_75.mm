uint64_t sub_1D54FA4E0()
{
  sub_1D54FA01C();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1D54FA53C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1D54FA54C()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D4E6E494;

  return sub_1D54FA16C(v3, v4, v5, v6, v7, v8);
}

void sub_1D54FA610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D54F8E68())
  {
    v8 = sub_1D54F972C();
    sub_1D54EF4CC(v8);
    OUTLINED_FUNCTION_17_88();
    if (v11 || (v10 == 14 ? (v11 = v9 == 16) : (v11 = 0), v11))
    {
      sub_1D54F1774();
      OUTLINED_FUNCTION_24_71();
      OUTLINED_FUNCTION_26_75();
      swift_beginAccess();

      sub_1D54FAFF0(a1, 0, 1, v8, a3);
      sub_1D54FAE84(v8, a3);

      sub_1D54FA7FC();
      swift_endAccess();
      return;
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    v12 = sqlite3_extended_errcode(*(a2 + 136));
    if (!sqlite3_errstr(v8))
    {
      __break(1u);
      goto LABEL_21;
    }

    v13 = sub_1D5614E98();
    v15 = v14;
    if (sqlite3_errmsg(*(a2 + 136)))
    {
LABEL_17:
      v21 = sub_1D5614E98();
      v23 = v22;
      sub_1D54EF4CC(v12);
      OUTLINED_FUNCTION_40_54();
      sub_1D51D2BD0();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v24 = v12;
      *(v24 + 4) = v3;
      *(v24 + 8) = v4;
      *(v24 + 16) = v13;
      *(v24 + 24) = v15;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      swift_willThrow();
      return;
    }

    __break(1u);
  }

  v16 = sub_1D54F634C();
  sub_1D54EF4CC(v16);
  OUTLINED_FUNCTION_17_88();
  if (!v11 && (v18 != 14 || v17 != 16))
  {
    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    v12 = sqlite3_extended_errcode(*(a2 + 136));
    if (sqlite3_errstr(v16))
    {
      v13 = sub_1D5614E98();
      v15 = v20;
      if (sqlite3_errmsg(*(a2 + 136)))
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1D54FA7FC()
{
  v2 = v0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  if ((v4 & 1) == 0)
  {
    v5 = v0 + 32;
    v6 = *(v0 + 32);
    v7 = *(v6 + 16);
    if (v3 < v7)
    {
      v8 = v7 - v3;
      if (__OFSUB__(v7, v3))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v9 = *v0;
      if (*v0)
      {
        v10 = *(v0 + 8);
        v11 = *(v2 + 16);
        v1 = *(v2 + 24);
        v12 = *(v2 + 8);
        sub_1D4EA73A4(*v2);

        v36 = v8;
        v38 = sub_1D54FABAC(v8, v11, v1, v6);
        v13 = *(v38 + 16);
        if (v13)
        {
          v14 = (v38 + 48);
          do
          {
            v15 = *(v14 - 2);
            v1 = *(v14 - 1);
            v16 = *v14;
            v14 += 5;
            v43 = v15;
            v44 = v1;
            v40[0] = v16;

            v9(&v43, v40);

            --v13;
          }

          while (v13);
        }

        sub_1D4EA7420(v9);

        v8 = v36;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (*(v6 + 16) < v8)
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_1D54FD370(v8);
      sub_1D54FD390(v8);
    }
  }

  if ((*(v2 + 48) & 1) == 0)
  {
    v17 = *(v2 + 40);
    v8 = *v2;
    v18 = *(v2 + 8);
    v1 = *(v2 + 16);
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);
    v42 = 0;
    v41 = v4;
    v43 = v8;
    v44 = v18;
    v45 = v1;
    v46 = v6;
    v47 = v5;
    v48 = v17;
    v49 = 0;
    v50 = v3;
    v51 = v4;
    v19 = sub_1D54FAAE8();
    if (v17 < v19)
    {
      v20 = v19 - v17;
      if (!__OFSUB__(v19, v17))
      {
        v21 = *(v5 + 16);
        if (v21)
        {
          v22 = 0;
          v23 = v21 - 1;
          v24 = (v5 + 24 * v21 + 24);
          while (1)
          {
            if ((*v24 & 1) == 0)
            {
              v25 = *(v24 - 1);
              v26 = __OFSUB__(v20, v25);
              v20 -= v25;
              if (v26)
              {
                goto LABEL_39;
              }
            }

            v24 -= 24;
            v27 = v22 + 1;
            if (v23 == v22++ || v20 < 1)
            {
              if (!v8)
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }
          }
        }

LABEL_35:
        v27 = 0;
        if (v8)
        {
LABEL_25:
          v29 = OUTLINED_FUNCTION_85_0();
          sub_1D4EA73A4(v29);

          v37 = sub_1D54FABAC(v27, v1, v6, v5);
          v30 = *(v37 + 16);
          if (v30)
          {
            v31 = (v37 + 48);
            do
            {
              v32 = *(v31 - 2);
              v33 = *(v31 - 1);
              v34 = *v31;
              v31 += 5;
              v40[0] = v32;
              v40[1] = v33;
              v39 = v34;

              (v8)(v40, &v39);

              --v30;
            }

            while (v30);
          }

          v35 = OUTLINED_FUNCTION_85_0();
          sub_1D4EA7420(v35);
        }

LABEL_29:
        if (*(v5 + 16) >= v27)
        {
          sub_1D54FD370(v27);
          sub_1D54FD390(v27);
          return;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      goto LABEL_33;
    }
  }
}

uint64_t sub_1D54FAAE8()
{
  result = 0;
  v2 = *(v0 + 32);
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v6 = *(v3 - 1);
    v3 += 24;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = __OFADD__(result, v7);
    result += v7;
    if (v8)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

unint64_t sub_1D54FAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v10;
  v6 = sub_1D523FA04(sub_1D54FE648, v9, a4);
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1D52403F8(v6, a5);
  }
}

unint64_t sub_1D54FABAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a4;
  if (result)
  {
    if (*(a4 + 16) >= result)
    {
      v5 = result;
    }

    else
    {
      v5 = *(a4 + 16);
    }

    v40 = MEMORY[0x1E69E7CC0];
    v6 = result;
    result = sub_1D4F03BD4(0, v5, 0);
    v7 = v6;
    v32 = 0;
    v33 = v4;
    v8 = 0;
    v9 = v40;
    v34 = *(v4 + 16);
    v10 = a3 + 40;
LABEL_7:
    v11 = (v10 + 16 * v8);
    v12 = 24 * v8;
    while (v8 < v34)
    {
      if (v8 >= *(a3 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_32;
      }

      v13 = *(v11 - 1);
      v14 = *v11;
      v16 = *(v4 + v12 + 32);
      v15 = *(v4 + v12 + 40);
      v17 = *(v4 + v12 + 48);
      v18 = *(v9 + 16);
      v19 = v7;
      if (v18 >= v7)
      {
        v22 = *v11;

        if (v32 >= v18)
        {
          goto LABEL_34;
        }

        v23 = v9;
        v24 = v9 + 40 * v32;
        v26 = *(v24 + 40);
        v25 = *(v24 + 48);
        ++v8;
        *(v24 + 32) = v13;
        *(v24 + 40) = v14;
        *(v24 + 48) = v16;
        *(v24 + 56) = v15;
        *(v24 + 64) = v17;

        if ((v32 + 1) < v19)
        {
          v27 = v32 + 1;
        }

        else
        {
          v27 = 0;
        }

        v32 = v27;
        v9 = v23;
        v7 = v19;
        v4 = v33;
        v10 = a3 + 40;
        goto LABEL_7;
      }

      v36 = v12;
      v37 = v11;
      v20 = *(v9 + 24);
      v38 = v18 + 1;

      if (v18 >= v20 >> 1)
      {
        result = sub_1D4F03BD4((v20 > 1), v38, 1);
      }

      *(v9 + 16) = v38;
      v21 = v9 + 40 * v18;
      *(v21 + 32) = v13;
      *(v21 + 40) = v14;
      *(v21 + 48) = v16;
      *(v21 + 56) = v15;
      *(v21 + 64) = v17;
      v11 = v37 + 2;
      v12 = v36 + 24;
      ++v8;
      v4 = v33;
      v7 = v19;
    }

    if (!v32)
    {
      return v9;
    }

    v28 = *(v9 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    result = sub_1D4F03BD4(0, v28, 0);
    if (v28 >= v32)
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v29 = *(v9 + 16);
      if (v29 >= v32 && v29 >= v28)
      {

        sub_1D54FD238(v31, v9 + 32, v32, (2 * v28) | 1);
        sub_1D54FD238(v9, v9 + 32, 0, (2 * v32) | 1);
        return v39;
      }

      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D54FAE84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[2];
  v6 = v2[3];
  v26[0] = a1;
  v26[1] = a2;
  v25[2] = v7;
  v25[3] = v6;
  v25[4] = v26;
  v8 = sub_1D523FA04(sub_1D54FE3A0, v25, v6);
  if ((v10 & 1) == 0)
  {
    v11 = v8;
    sub_1D54FC91C(v8, v9);

    sub_1D54FCAE0(v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1D54FD6F0(a1, a2, 0);
    v20 = v19;
    v21 = v2[4];
    if (v18)
    {
      if (*(v21 + 16) >= v19)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          sub_1D54FDBC4(v19, v19, v13, v15, v17 & 1);
          return;
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_1D52403F8(v19, v3[4]);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D54FBD34(v21);
      v21 = v22;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    if (v20 >= *(v21 + 16))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v23 = v21 + 24 * v20;
    v24 = *(v23 + 32);
    *(v23 + 32) = v13;
    *(v23 + 40) = v15;
    *(v23 + 48) = v17 & 1;

    v3[4] = v21;
  }
}

void sub_1D54FAFF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v11 = v5[1];
  v30[0] = a4;
  v30[1] = a5;
  v29[2] = v12;
  v29[3] = v11;
  v29[4] = v30;
  v13 = sub_1D523FA04(sub_1D54FE648, v29, v11);
  v15 = v14;
  if (v16)
  {
    if (a1)
    {
      sub_1D54FBDC0(a4, a5);

      v19 = v5[2];
      v17 = v5 + 2;
      v18 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16);
        sub_1D4F03BB4();
        v18 = *v17;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_1D4F03BB4();
        v18 = *v17;
      }

      *(v18 + 16) = v22 + 1;
      v23 = v18 + 24 * v22;
      *(v23 + 32) = a1;
      *(v23 + 40) = a2;
      *(v23 + 48) = a3 & 1;
      *v17 = v18;
    }

    else
    {
    }
  }

  else
  {
    v24 = v13;

    if (a1)
    {
      v25 = v5[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D54FBD34(v25);
        v25 = v26;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *(v25 + 16))
      {
        v27 = v25 + 24 * v24;
        v28 = *(v27 + 32);
        *(v27 + 32) = a1;
        *(v27 + 40) = a2;
        *(v27 + 48) = a3 & 1;

        v5[2] = v25;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_1D54FC91C(v24, v15);

      sub_1D54FCAE0(v24);
    }
  }
}

void *sub_1D54FB1A8(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1D5240178(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void sub_1D54FB264()
{
  OUTLINED_FUNCTION_47();
  v11 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_22;
  }

  v0 = v10;
  v4 = v9;
  v3 = v8;
  v12 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v2 = &v1[v7 + 4];
  sub_1D54FE52C();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v6 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v1[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_1D5615A98();
LABEL_6:
  if (__OFSUB__(v15, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1D4F036F8(&v5[v3], v15 - v3, (v2 + 8 * v4));
  if (v6)
  {
    v13 = sub_1D5615A98();
  }

  else
  {
    v13 = v1[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v1[2] = v13 + v11;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_46();

    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    sub_1D54FE250(v0, sub_1D54FE570);
    goto LABEL_17;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) == v4)
  {
    swift_arrayInitWithCopy();
LABEL_17:

    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
}

uint64_t sub_1D54FB408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *v6;
  v13 = v12 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD0, &qword_1D561DAA8);
  result = swift_arrayDestroy();
  v14 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D4F03718((v12 + 32 + 24 * a2), v15 - a2, (v13 + 24 * a3));
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v13 = a4;
    *(v13 + 8) = a5;
    *(v13 + 16) = a6 & 1;
    if (v13 + 24 < (v13 + 24 * a3))
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D54FB55C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D4EA729C((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

void sub_1D54FB678()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_2_187();
  v5 = type metadata accessor for MusicSuggestedPivotRound();
  OUTLINED_FUNCTION_5_147(v5);
  v7 = *(v6 + 80);
  v9 = *(v8 + 72);
  v10 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148();
  if (__OFSUB__(v1, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v10)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_35_63();
      sub_1D4F03754(v12, v13, v14);
      OUTLINED_FUNCTION_37_50();
      if (!v11)
      {
        *(v4 + 16) = v15;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7EF858, &qword_1D56331D8);
    OUTLINED_FUNCTION_46();
    return;
  }

  v17 = 0;
  while ((v17 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v18, v19);
    OUTLINED_FUNCTION_14_95();
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_1D54FB780()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_2_187();
  v5 = _s14TransientEntryVMa();
  OUTLINED_FUNCTION_5_147(v5);
  v7 = *(v6 + 80);
  v9 = *(v8 + 72);
  v10 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148();
  if (__OFSUB__(v1, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v10)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_35_63();
      sub_1D4F0376C(v12, v13, v14);
      OUTLINED_FUNCTION_37_50();
      if (!v11)
      {
        *(v4 + 16) = v15;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7F5E38, &qword_1D5660808);
    OUTLINED_FUNCTION_46();
    return;
  }

  v17 = 0;
  while ((v17 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v18, v19);
    OUTLINED_FUNCTION_14_95();
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_1D54FB888()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_2_187();
  v5 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  OUTLINED_FUNCTION_5_147(v5);
  v7 = *(v6 + 80);
  v9 = *(v8 + 72);
  v10 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148();
  if (__OFSUB__(v1, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v10)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_35_63();
      sub_1D4F03784(v12, v13, v14);
      OUTLINED_FUNCTION_37_50();
      if (!v11)
      {
        *(v4 + 16) = v15;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7F0D20, &qword_1D563C1E8);
    OUTLINED_FUNCTION_46();
    return;
  }

  v17 = 0;
  while ((v17 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v18, v19);
    OUTLINED_FUNCTION_14_95();
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_1D54FB990()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_2_187();
  v5 = type metadata accessor for MusicPin();
  OUTLINED_FUNCTION_5_147(v5);
  v7 = *(v6 + 80);
  v9 = *(v8 + 72);
  v10 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148();
  if (__OFSUB__(v1, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v10)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_35_63();
      sub_1D4F0373C(v12, v13, v14);
      OUTLINED_FUNCTION_37_50();
      if (!v11)
      {
        *(v4 + 16) = v15;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7F1D60, &unk_1D5643C70);
    OUTLINED_FUNCTION_46();
    return;
  }

  v17 = 0;
  while ((v17 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v18, v19);
    OUTLINED_FUNCTION_14_95();
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1D54FBA98()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  result = OUTLINED_FUNCTION_5_147(v10);
  v14 = *(v13 + 72);
  v15 = v6 - v8;
  if (__OFSUB__(v6, v8))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = v16 + v14 * v8;
  OUTLINED_FUNCTION_85_0();
  result = swift_arrayDestroy();
  v18 = __OFSUB__(v4, v15);
  v19 = v4 - v15;
  if (v18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = *(v9 + 16);
  if (__OFSUB__(v20, v6))
  {
    goto LABEL_15;
  }

  result = sub_1D4F037B4(v16 + v14 * v6, v20 - v6, v17 + v14 * v4);
  v21 = *(v9 + 16);
  v18 = __OFADD__(v21, v19);
  v22 = v21 + v19;
  if (v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v22;
LABEL_7:
  if (v4 >= 1)
  {
    if (*(v2 + 16) == v4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
  OUTLINED_FUNCTION_46();
}

void sub_1D54FBBC4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_2_187();
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  OUTLINED_FUNCTION_5_147(v5);
  v7 = *(v6 + 80);
  v9 = *(v8 + 72);
  v10 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148();
  if (__OFSUB__(v1, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v10)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_35_63();
      sub_1D4F037B4(v12, v13, v14);
      OUTLINED_FUNCTION_37_50();
      if (!v11)
      {
        *(v4 + 16) = v15;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &unk_1EC7F2B70, &qword_1D564A650);
    OUTLINED_FUNCTION_46();
    return;
  }

  v17 = 0;
  while ((v17 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v18, v19);
    OUTLINED_FUNCTION_14_95();
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1D54FBCCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1D54FE52C();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D54FBDC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_44_42();
    sub_1D4F03980();
    v7 = *v6;
  }

  v10 = *(v7 + 16);
  if (v10 >= *(v7 + 24) >> 1)
  {
    sub_1D4F03980();
    v7 = *v6;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v3[1] = v7;
  v12 = *v3;
  if (!*v3)
  {
    if (v10 <= 0xE)
    {
      return;
    }

    v13 = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  if (MEMORY[0x1DA6E23A0](*(v12 + 16) & 0x3FLL) <= v10)
  {
    v13 = *(v12 + 24) & 0x3FLL;
    if (v10 <= 0xE && v13 == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v15 = MEMORY[0x1DA6E23D0](v10 + 1);
    sub_1D54FC188(v15, v13, sub_1D54FC25C);
    return;
  }

  sub_1D54FC100();
  if (*v3)
  {
    OUTLINED_FUNCTION_41_52(*v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D54FBF10()
{
  v1 = v0;
  OUTLINED_FUNCTION_147();
  v2 = _s14IdentifierKindOMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D54FE5D4(v0, v6);
  v7 = (v0 + 8);
  v8 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_44_42();
    sub_1D4F046DC();
    v8 = *v7;
  }

  v10 = *(v8 + 16);
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_1D4F046DC();
    v8 = *v7;
  }

  *(v8 + 16) = v10 + 1;
  result = sub_1D5241994(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
  v1[1] = v8;
  v12 = *v1;
  if (!*v1)
  {
    if (v10 <= 0xE)
    {
      return result;
    }

    v13 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  if (MEMORY[0x1DA6E23A0](*(v12 + 16) & 0x3FLL) <= v10)
  {
    v13 = *(v12 + 24) & 0x3FLL;
    if (v10 <= 0xE && !v13)
    {

      *v1 = 0;
      return result;
    }

LABEL_14:
    v14 = MEMORY[0x1DA6E23D0](v10 + 1);
    return sub_1D54FC188(v14, v13, sub_1D54FC29C);
  }

  result = sub_1D54FC100();
  if (*v1)
  {
    return OUTLINED_FUNCTION_41_52(*v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54FC100()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = sub_1D560C5D8();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1D54FC188(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v5 = v3[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v6 = sub_1D54FC1D4(v3[1], a2, 0, v4, a3);
  v7 = *v3;

  *v3 = v6;
  return result;
}

uint64_t sub_1D54FC1D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1DA6E23D0](v8);
  v11 = 0;
  if (v10 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 5)
  {
    v11 = MEMORY[0x1DA6E23E0]();
    a5(a1, v11 + 16, v11 + 32);
  }

  return v11;
}

uint64_t sub_1D54FC29C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D560D4C8();
  sub_1D560F148();
  v6 = *(_s14IdentifierKindOMa() - 8);
  return sub_1D54FC460(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

uint64_t sub_1D54FC338(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_1D56162D8();

        sub_1D5614E28();
        result = sub_1D5616328();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_1D560C548();

        if (v10)
        {
          while (1)
          {
            sub_1D560C5A8();
          }
        }

        result = sub_1D560C598();
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

uint64_t sub_1D54FC460(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v49 = a1;
  v46 = sub_1D560D4C8();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D560F148();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = _s14IdentifierKindOMa();
  v13 = *(*(v48 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v48);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v14);
  v20 = &v38 - v19;
  v57 = a2;
  if (!a2)
  {
    return result;
  }

  if (v57 < 0)
  {
    goto LABEL_16;
  }

  v21 = 0;
  v47 = *(v18 + 72);
  v41 = (v7 + 8);
  v42 = (v7 + 32);
  v39 = (v10 + 8);
  v40 = (v10 + 32);
  while (1)
  {
    sub_1D54FE5D4(v49 + v47 * v21, v20);
    v22 = *a3;
    sub_1D56162D8();
    sub_1D54FE5D4(v20, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v25 = *v16;
        v24 = v16[1];
        MEMORY[0x1DA6EC0D0](1);
        sub_1D5614E28();

        goto LABEL_10;
      }

      v27 = v45;
      v26 = v46;
      (*v42)(v45, v16, v46);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D54FE58C(&qword_1EC7EBF70, MEMORY[0x1E6974F48]);
      sub_1D5614CB8();
      v28 = v41;
    }

    else
    {
      v27 = v43;
      v26 = v44;
      (*v40)(v43, v16, v44);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D54FE58C(&qword_1EC7EBF78, MEMORY[0x1E69755E8]);
      sub_1D5614CB8();
      v28 = v39;
    }

    (*v28)(v27, v26);
LABEL_10:
    result = sub_1D5616328();
    v29 = 1 << *a3;
    v30 = __OFSUB__(v29, 1);
    v31 = v29 - 1;
    if (v30)
    {
      break;
    }

    v32 = v31 & result;
    v33 = sub_1D560C548();
    v35 = v34;
    v37 = v36;
    sub_1D52418D4(v20);
    v50 = a3;
    v51 = a4;
    v52 = v32;
    v53 = v33;
    v54 = v35;
    v55 = v37;
    v56 = 0;
    while (v53)
    {
      sub_1D560C5A8();
    }

    result = sub_1D560C598();
    if (++v21 == v57)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D54FC8B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return sub_1D560C568();
}

void sub_1D54FC91C(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_1D54FCB74(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x1DA6E23B0]())
  {
LABEL_12:
    sub_1D54FCB74(a1);
    if (v7)
    {
      swift_beginAccess();
      v12 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(*v5 + 16);
    if (v12 || v13 >= 0x10)
    {
      v14 = MEMORY[0x1DA6E23D0](v13);
      sub_1D54FC188(v14, v12, sub_1D54FC25C);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_1D54FC100();
  v9 = *v3;
  if (*v3)
  {
    v10 = *v3;

    sub_1D54FCBF8(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v11 = v3[1];

      sub_1D54FCDE8(a1, a1 + 1, v11, (v9 + 16));

      sub_1D54FCB74(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D54FCAE0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD34(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 24 * a1;
    v8 = *(v7 + 32);
    v7 += 32;
    v9 = *(v7 + 16);
    v10 = *(v7 + 8);
    sub_1D4F03718((v7 + 24), v5 - 1 - a1, v7);
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_1D54FCB74(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD48(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    sub_1D4EA729C((v8 + 48), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

unint64_t sub_1D54FCBF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_1D560C548();
  sub_1D560C5A8();
  if (v26)
  {
    v7 = sub_1D560C558();
    v8 = a1;
    while (1)
    {
      result = sub_1D560C588();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_1D56162D8();

      sub_1D5614E28();
      v16 = sub_1D5616328();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_27;
      }

      v19 = v18 & v16;
      if (v8 >= v7)
      {
        if (v19 >= v7 && v8 >= v19)
        {
LABEL_18:
          v22 = sub_1D560C588();
          if ((v23 & 1) == 0)
          {
            v24 = ((v18 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v18;
          }

          v8 = a1;
          sub_1D560C568();
        }
      }

      else if (v19 >= v7 || v8 >= v19)
      {
        goto LABEL_18;
      }

      sub_1D560C5A8();
    }
  }

  return sub_1D560C568();
}

uint64_t sub_1D54FCDE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v7 = result;
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= result)
    {
      v16 = a2;
      v17 = __OFSUB__(v8, a2);
      v18 = v8 - a2;
      if (v17)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v18 >= MEMORY[0x1DA6E23A0](*a4 & 0x3F) / 3)
      {
        sub_1D560C548();
        v33 = sub_1D560C588();
        if ((v34 & 1) == 0 && v33 >= v16)
        {
          v17 = __OFSUB__(v33, v4);
          result = v33 - v4;
          if (v17)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_1D560C598();
        }

        return sub_1D560C5A8();
      }

      result = sub_1D55D6190(v16, a3);
      v20 = v19;
      v22 = v21;
      v24 = v23 >> 1;
      while (v22 != v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_51;
        }

        v25 = (v20 + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        sub_1D56162D8();

        sub_1D5614E28();
        result = sub_1D5616328();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_1D560C548())
        {
          while (1)
          {
            v29 = sub_1D560C588();
            if ((v30 & 1) == 0 && v29 == v16)
            {
              break;
            }

            sub_1D560C5A8();
          }
        }

        result = v16 - v4;
        if (__OFSUB__(v16, v4))
        {
          goto LABEL_53;
        }

        sub_1D560C598();

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_54;
        }

        ++v22;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x1DA6E23A0](*a4 & 0x3F);
      if (result / 3 > v7)
      {
        if (v7 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < v7)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v7)
          {

            goto LABEL_40;
          }

          v10 = (a3 + 32 + 16 * i);
          v11 = *v10;
          v12 = v10[1];
          v13 = *a4;
          sub_1D56162D8();

          sub_1D5614E28();
          result = sub_1D5616328();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_1D560C548())
          {
            while (1)
            {
              v14 = sub_1D560C588();
              if ((v15 & 1) == 0 && v14 == i)
              {
                break;
              }

              sub_1D560C5A8();
            }
          }

          result = i + v4;
          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          sub_1D560C598();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_1D560C548();
      v31 = sub_1D560C588();
      if ((v32 & 1) == 0 && v31 < v7)
      {
        v17 = __OFADD__(v31, v4);
        result = v31 + v4;
        if (v17)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_1D560C598();
      }

      result = sub_1D560C5A8();
LABEL_40:
      v35 = a4[1];
      if (__OFSUB__(v35 >> 6, v4))
      {
        goto LABEL_59;
      }

      v36 = 1 << *a4;
      v17 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v17)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v38 = (v37 & (((v35 >> 6) - v4) >> 63)) + (v35 >> 6) - v4;
      if (v38 < v37)
      {
        v37 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v38 - v37) << 6);
    }
  }

  return result;
}

void sub_1D54FD238(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v13 = *(v7 + 24) >> 1;
    if (v13 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v14 = v8 + v6;
    }

    else
    {
      v14 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v14 = v8 + v6;
  }

  else
  {
    v14 = v8;
  }

  sub_1D4F03BD4(isUniquelyReferenced_nonNull_native, v14, 1);
  v7 = *v4;
  v13 = *(*v4 + 24) >> 1;
LABEL_12:
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_19:
      swift_unknownObjectRelease();
      *v4 = v7;
      return;
    }

    __break(1u);
  }

  if (v13 - *(v7 + 16) < v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACC0, &qword_1D561DA98);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_19;
  }

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v6);
  v17 = v15 + v6;
  if (!v16)
  {
    *(v7 + 16) = v17;
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_1D54FD370(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*(v1 + 8) + 16);
    v3 = v2 >= result;
    result = v2 - result;
    if (v3)
    {
      return sub_1D54FD404(result, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54FD390(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(*v1 + 16);
  result = sub_1D54FE2B4(v2, -result, 0);
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1D54FD994(result, v2);
}

uint64_t sub_1D54FD404(uint64_t result, uint64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_1D54FDAB8(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x1DA6E23B0]())
    {
      result = sub_1D54FC100();
      v15 = *v8;
      if (*v8)
      {
        v16 = *v8;

        sub_1D54FD574(v15 + 16, v15 + 32, v8, v4, a2);

        return sub_1D54FDAB8(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_1D54FDAB8(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  v12 = *v6;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v13)
  {
    v14 = MEMORY[0x1DA6E23D0]();
    return sub_1D54FC188(v14, v11, sub_1D54FC25C);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

uint64_t sub_1D54FD574(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if (a5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_1D54FCDE8(v6, v5, v8, v12);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);

      sub_1D5240D0C(v15, v16, v17 + 32, v18, v12);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_1D54FCBF8(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D54FD6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v13[0] = a1;
  v13[1] = a2;
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v13;
  sub_1D523FA04(sub_1D54FE648, v12, v7);
  v10 = v9;
  if (v9)
  {
    sub_1D54FD790(a1, a2, a3);
  }

  return v10 & 1;
}

uint64_t sub_1D54FD790(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = (v3 + 1);
  v9 = *(v3[1] + 16);
  v10 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    result = MEMORY[0x1DA6E23A0](*(v10 + 16) & 0x3FLL);
    if (v9 >= result)
    {
      goto LABEL_11;
    }

    result = sub_1D54FC100();
    v9 = *v4;
    if (!*v4)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v4 = *v8;

    sub_1D54FDD9C(a3, v4, (v9 + 16));

    v11 = -1 << *(v9 + 16);
    v12 = a3 - (*(v9 + 24) >> 6);
    sub_1D560C568();

    if (v4[2] < a3)
    {
      goto LABEL_23;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:

      return sub_1D54FDCB8(a3, a3, v7, a2);
    }

    __break(1u);
  }

  if (v9 < 0xF)
  {
    if (v9 >= a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  if (v9 < a3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a3 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1D54FDCB8(a3, a3, v7, a2);
  if (v10)
  {
    swift_beginAccess();
    v13 = *(v10 + 24) & 0x3FLL;
  }

  else
  {
    v13 = 0;
  }

  v14 = (*v8)[2];
  if (v13 || v14 >= 0x10)
  {
    v15 = MEMORY[0x1DA6E23D0](v14);
    return sub_1D54FC188(v15, v13, sub_1D54FC25C);
  }

  else
  {

    *v4 = 0;
  }

  return result;
}

uint64_t sub_1D54FD994(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v5, v8))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v5 - v7 > *(v4 + 24) >> 1)
  {
    sub_1D4F03BB4();
    v4 = *v2;
  }

  v11 = (v4 + 32 + 24 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD0, &qword_1D561DAA8);
  result = swift_arrayDestroy();
  if (!v7)
  {
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = sub_1D4F03718((v4 + 32 + 24 * a2), v12 - a2, v11);
  v13 = *(v4 + 16);
  v14 = __OFADD__(v13, v8);
  v15 = v13 - v7;
  if (!v14)
  {
    *(v4 + 16) = v15;
LABEL_13:
    *v2 = v4;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D54FDAB8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v5, v8))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v5 - v7 > *(v4 + 24) >> 1)
  {
    sub_1D4F03980();
    v4 = *v2;
  }

  v11 = (v4 + 32 + 16 * v6);
  result = swift_arrayDestroy();
  if (!v7)
  {
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = sub_1D4EA729C((v4 + 32 + 16 * a2), v12 - a2, v11);
  v13 = *(v4 + 16);
  v14 = __OFADD__(v13, v8);
  v15 = v13 - v7;
  if (!v14)
  {
    *(v4 + 16) = v15;
LABEL_13:
    *v2 = v4;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D54FDBC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    sub_1D4F03BB4();
  }

  return sub_1D54FB408(v9, a2, 1, a3, a4, a5 & 1);
}

uint64_t sub_1D54FDCB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 24) >> 1)
  {
    sub_1D4F03980();
  }

  return sub_1D54FB55C(v8, a2, 1, a3, a4);
}

uint64_t sub_1D54FDD9C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a2 + 16);
  if (result < (v6 >> 1))
  {
    v7 = *a3;
    v8 = 1 << *a3;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v11 = a3[1];
    if (v11 >> 6 >= -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12 + (v11 >> 6) + 1;
    if (v13 < v10)
    {
      v10 = 0;
    }

    a3[1] = a3[1] & 0x3F | ((v13 - v10) << 6);
    result = MEMORY[0x1DA6E23A0](v7 & 0x3F);
    if (result / 3 >= v5)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v6 >= v5)
        {
          v31 = a2 + 32;

          v32 = 0;
          v33 = 1;
          while (v32 != v5)
          {
            v34 = (v31 + 16 * v32);
            v35 = *v34;
            v36 = v34[1];
            v37 = *a3;
            sub_1D56162D8();

            sub_1D5614E28();
            result = sub_1D5616328();
            if (__OFSUB__(1 << *a3, 1))
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            if (sub_1D560C548())
            {
              while (1)
              {
                v38 = sub_1D560C588();
                if ((v39 & 1) == 0 && v38 == v33)
                {
                  break;
                }

                sub_1D560C5A8();
              }
            }

            result = sub_1D560C588();
            if (v40)
            {
              goto LABEL_63;
            }

            v9 = __OFSUB__(result--, 1);
            if (v9)
            {
              goto LABEL_52;
            }

            sub_1D560C598();

            if (v32 == 0x7FFFFFFFFFFFFFFELL)
            {
              goto LABEL_53;
            }

            ++v32;
            ++v33;
          }
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    sub_1D560C548();
    v14 = sub_1D560C588();
    if ((v15 & 1) != 0 || v14 > v5)
    {
      return sub_1D560C5A8();
    }

    v9 = __OFSUB__(v14, 1);
    result = v14 - 1;
    if (!v9)
    {
      sub_1D560C598();
      return sub_1D560C5A8();
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (MEMORY[0x1DA6E23A0](*a3 & 0x3F) / 3 < (v6 + ~result))
  {
    sub_1D560C548();
    v16 = sub_1D560C588();
    if ((v17 & 1) != 0 || v16 < v5)
    {
      return sub_1D560C5A8();
    }

    v9 = __OFADD__(v16, 1);
    result = v16 + 1;
    if (!v9)
    {
      sub_1D560C598();
      return sub_1D560C5A8();
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = sub_1D55D6190(v5, a2);
  v19 = v18;
  v21 = v20;
  v23 = v22 >> 1;
  while (v21 != v23)
  {
    if (v21 >= v23)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v24 = (v19 + 16 * v21);
    v25 = *v24;
    v26 = v24[1];
    v27 = *a3;
    sub_1D56162D8();

    sub_1D5614E28();
    result = sub_1D5616328();
    if (__OFSUB__(1 << *a3, 1))
    {
      goto LABEL_55;
    }

    if (sub_1D560C548())
    {
      while (1)
      {
        v28 = sub_1D560C588();
        if ((v29 & 1) == 0 && v28 == v5)
        {
          break;
        }

        sub_1D560C5A8();
      }
    }

    result = sub_1D560C588();
    if (v30)
    {
      goto LABEL_64;
    }

    v9 = __OFADD__(result++, 1);
    if (v9)
    {
      goto LABEL_56;
    }

    sub_1D560C598();

    v9 = __OFADD__(v5++, 1);
    if (v9)
    {
      goto LABEL_57;
    }

    ++v21;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1D54FE250(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1D54FB1A8(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

uint64_t sub_1D54FE2B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1D54FE300@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (a1)
  {

    v6 = OUTLINED_FUNCTION_49_34();
    v11 = sub_1D5240D0C(v6, v7, v8, v9, v10);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_49_34();
    result = sub_1D5240708(v17, v18, v19, v20);
    v11 = result;
    v13 = v21;
    v15 = 0;
  }

  *a3 = v11;
  *(a3 + 8) = v13 & 1;
  *(a3 + 16) = v15;
  return result;
}

uint64_t sub_1D54FE474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D54FE484()
{
  result = qword_1EC7F7998;
  if (!qword_1EC7F7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7998);
  }

  return result;
}

unint64_t sub_1D54FE4D8()
{
  result = qword_1EC7F79A0;
  if (!qword_1EC7F79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79A0);
  }

  return result;
}

unint64_t sub_1D54FE52C()
{
  result = qword_1EDD526B0;
  if (!qword_1EDD526B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526B0);
  }

  return result;
}

uint64_t sub_1D54FE58C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D54FE5D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = *(*(v4(v3) - 8) + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_25_65(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_42_47()
{
}

uint64_t static MusicSubscription.current(privacyAcknowledgementPolicy:)(uint64_t a1, _BYTE *a2)
{
  v2[2] = a1;
  v4 = sub_1D560D478();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v8 = swift_task_alloc();
  v2[6] = v8;
  if (*a2)
  {
    v9 = *(MEMORY[0x1E6974ED8] + 4);
    v10 = swift_task_alloc();
    v2[9] = v10;
    *v10 = v2;
    v10[1] = sub_1D54FE9D0;

    return MEMORY[0x1EEDCE620](v7);
  }

  else
  {
    v11 = v8;
    v12 = *(MEMORY[0x1E6974EF0] + 4);
    v13 = swift_task_alloc();
    v2[7] = v13;
    *v13 = v2;
    v13[1] = sub_1D54FE850;

    return MEMORY[0x1EEDCE630](v11);
  }
}

uint64_t sub_1D54FE850()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 64) = v0;

  if (v0)
  {
    v10 = sub_1D54FEB50;
  }

  else
  {
    v10 = sub_1D54FE958;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D54FE958()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_3_193();
  v2(v1, v0);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54FE9D0()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 80) = v0;

  if (v0)
  {
    v10 = sub_1D54FEBB4;
  }

  else
  {
    v10 = sub_1D54FEAD8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D54FEAD8()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_3_193();
  v2(v1, v0);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54FEB50()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D54FEBB4()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t MusicSubscription.PrivacyAcknowledgementPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D54FECD0()
{
  result = qword_1EC7F79A8;
  if (!qword_1EC7F79A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F79B0, &qword_1D566D778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79A8);
  }

  return result;
}

unint64_t sub_1D54FED38()
{
  result = qword_1EC7F79B8;
  if (!qword_1EC7F79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79B8);
  }

  return result;
}

_BYTE *_s28PrivacyAcknowledgementPolicyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D54FEE7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 38))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D54FEED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D54FEF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB170, &qword_1D561DEF0);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D4F03B0C(0, v10, 0);
    v11 = v28;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v25 = *(v12 + 56);
    v26 = v13;
    do
    {
      v26(v9, v14, v2);
      sub_1D550008C(v27);
      (*(v12 - 8))(v9, v2);
      v28 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        v20 = OUTLINED_FUNCTION_4_149(v15);
        sub_1D4F03B0C(v20, v21, v22);
        v11 = v28;
      }

      *(v11 + 16) = v16 + 1;
      v17 = (v11 + 48 * v16);
      v18 = v27[0];
      v19 = v27[2];
      v17[3] = v27[1];
      v17[4] = v19;
      v17[2] = v18;
      v14 += v25;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1D54FF0E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB170, &qword_1D561DEF0);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D4F0401C();
    v11 = v33;
    v12 = (a1 + 72);
    do
    {
      v13 = *(v12 - 4);
      v14 = *(v12 - 3);
      v15 = *(v12 - 2);
      v16 = *(v12 - 8);
      v17 = *(v12 - 7);
      v18 = *(v12 - 6);
      v19 = *(v12 - 5);
      v20 = *(v12 - 4);
      v21 = *(v12 - 3);
      v22 = *v12;
      v26[0] = *(v12 - 5);
      v26[1] = v13;
      v26[2] = v14;
      v26[3] = v15;
      v27 = v16;
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v32 = v21;

      sub_1D56106F8();
      v33 = v11;
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_4_149(v23);
        sub_1D4F0401C();
        v11 = v33;
      }

      v12 += 6;
      *(v11 + 16) = v24 + 1;
      (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v9, v2);
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1D54FF2B4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = *(a2 + 24);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = a1[2] == *(a2 + 16) && v8 == v9;
  if (!v10 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (*(a1 + 32) == 2)
  {
    if (*(a2 + 32) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v12 ^ v13) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 33) == 2)
  {
    if (*(a2 + 33) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v14 ^ v15) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 34) == 2)
  {
    if (*(a2 + 34) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v16 ^ v17) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 35) == 2)
  {
    if (*(a2 + 35) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v7 || ((v18 ^ v19) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 36) == 2)
  {
    if (*(a2 + 36) != 2)
    {
      return 0;
    }

LABEL_44:
    v22 = *(a1 + 37);
    v23 = *(a2 + 37);
    if (v22 == 2)
    {
      if (v23 != 2)
      {
        return 0;
      }
    }

    else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = OUTLINED_FUNCTION_39();
  if (!v7 && ((v20 ^ v21) & 1) == 0)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_1D54FF45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6775156 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72616D6972507369 && a2 == 0xE900000000000079;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001D567EFC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572657453736168 && a2 == 0xE90000000000006FLL;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79626C6F44736168 && a2 == 0xE800000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79626C6F44736168 && a2 == 0xEA00000000003137;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x80000001D567EFA0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1D5616168();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D54FF6E8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0x72616D6972507369;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6572657453736168;
      break;
    case 5:
    case 6:
      result = 0x79626C6F44736168;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54FF7BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F79D0, &unk_1D566D968);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54FFFD0();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  v25[15] = 0;
  sub_1D5616028();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v25[14] = 1;
    sub_1D5616028();
    v18 = *(v3 + 32);
    v25[13] = 2;
    OUTLINED_FUNCTION_2_23();
    v19 = *(v3 + 33);
    v25[12] = 3;
    OUTLINED_FUNCTION_2_23();
    v20 = *(v3 + 34);
    v25[11] = 4;
    OUTLINED_FUNCTION_2_23();
    v21 = *(v3 + 35);
    v25[10] = 5;
    OUTLINED_FUNCTION_2_23();
    v22 = *(v3 + 36);
    v25[9] = 6;
    OUTLINED_FUNCTION_2_23();
    v23 = *(v3 + 37);
    v25[8] = 7;
    OUTLINED_FUNCTION_2_23();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D54FF9B8()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[3])
  {
    v2 = v0[2];
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v0 + 32) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 33) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 34) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 35) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 36) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v0 + 37) != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t sub_1D54FFB1C()
{
  sub_1D56162D8();
  sub_1D54FF9B8();
  return sub_1D5616328();
}

uint64_t sub_1D54FFB5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F79C0, &qword_1D566D960);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54FFFD0();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v14 = sub_1D5615F38();
  v16 = v15;
  v31 = v14;
  OUTLINED_FUNCTION_0_255(1);
  v17 = sub_1D5615F38();
  v19 = v18;
  v30 = v17;
  OUTLINED_FUNCTION_0_255(2);
  v41 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(3);
  v29 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(4);
  v28 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(5);
  v27 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(6);
  v26 = sub_1D5615F48();
  v42 = 7;
  v20 = sub_1D5615F48();
  (*(v7 + 8))(v12, v5);
  v22 = v30;
  v21 = v31;
  *&v32 = v31;
  *(&v32 + 1) = v16;
  *v33 = v30;
  *&v33[8] = v19;
  v23 = v41;
  v33[16] = v41;
  v33[17] = v29;
  v33[18] = v28;
  v33[19] = v27;
  v33[20] = v26;
  v33[21] = v20;
  sub_1D5500024(&v32, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v21;
  v34[1] = v16;
  v34[2] = v22;
  v34[3] = v19;
  v35 = v23;
  v36 = v29;
  v37 = v28;
  v38 = v27;
  v39 = v26;
  v40 = v20;
  result = sub_1D550005C(v34);
  v25 = *v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  *(a2 + 30) = *&v33[14];
  return result;
}

uint64_t sub_1D54FFE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54FF45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54FFEB0(uint64_t a1)
{
  v2 = sub_1D54FFFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54FFEEC(uint64_t a1)
{
  v2 = sub_1D54FFFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D54FFF28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D54FFB5C(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 30) = *&v7[14];
  }

  return result;
}

uint64_t sub_1D54FFF94()
{
  sub_1D56162D8();
  sub_1D54FF9B8();
  return sub_1D5616328();
}

unint64_t sub_1D54FFFD0()
{
  result = qword_1EC7F79C8;
  if (!qword_1EC7F79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79C8);
  }

  return result;
}

uint64_t sub_1D550008C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB170, &qword_1D561DEF0);
  sub_1D5610708();
  v47 = v45;
  *v48 = *v46;
  *&v48[14] = *&v46[14];

  sub_1D550005C(&v47);
  if (*(&v45 + 1))
  {
    v2 = v45;
  }

  else
  {
    v2 = 0;
  }

  if (*(&v45 + 1))
  {
    v3 = *(&v45 + 1);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v15 = v3;
  v16 = v2;
  sub_1D5610708();
  v43 = v41;
  *v44 = *v42;
  *&v44[14] = *&v42[14];
  v4 = *&v44[8];
  v5 = *v42;

  sub_1D550005C(&v43);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v14 = v6;
  sub_1D5610708();
  v39 = v37;
  *v40 = *v38;
  *&v40[14] = *&v38[14];
  sub_1D550005C(&v39);
  v7 = v40[16];
  sub_1D5610708();
  v35 = v33;
  *v36 = *v34;
  *&v36[14] = *&v34[14];
  sub_1D550005C(&v35);
  v8 = v36[17];
  sub_1D5610708();
  v31 = v29;
  *v32 = *v30;
  *&v32[14] = *&v30[14];
  sub_1D550005C(&v31);
  v9 = v32[18];
  sub_1D5610708();
  v27 = v25;
  *v28 = *v26;
  *&v28[14] = *&v26[14];
  sub_1D550005C(&v27);
  v10 = v28[19];
  sub_1D5610708();
  v23 = v21;
  *v24 = *v22;
  *&v24[14] = *&v22[14];
  sub_1D550005C(&v23);
  v11 = v24[20];
  sub_1D5610708();
  v19 = v17;
  *v20 = *v18;
  *&v20[14] = *&v18[14];
  sub_1D550005C(&v19);
  v12 = v20[21];
  result = sub_1D5610718();
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  *(a1 + 32) = v7 & 1;
  *(a1 + 33) = v8 & 1;
  *(a1 + 34) = v9 & 1;
  *(a1 + 35) = v10 & 1;
  *(a1 + 36) = v11 & 1;
  *(a1 + 37) = v12 & 1;
  *(a1 + 40) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudLanguageAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D55003D4()
{
  result = qword_1EC7F79D8;
  if (!qword_1EC7F79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79D8);
  }

  return result;
}

unint64_t sub_1D550042C()
{
  result = qword_1EC7F79E0;
  if (!qword_1EC7F79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79E0);
  }

  return result;
}

unint64_t sub_1D5500484()
{
  result = qword_1EC7F79E8;
  if (!qword_1EC7F79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79E8);
  }

  return result;
}

uint64_t MusicPlaybackMetrics.convertToCloudMetricAttribute()()
{
  v1 = sub_1D560FB38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];

  sub_1D560FB18();
  (*(v2 + 16))(v6, v8, v1);
  sub_1D56106F8();
  return (*(v2 + 8))(v8, v1);
}

Swift::Int __swiftcall Playlist.Collaboration.InvitationMode.convertToLegacyModelRawValue()()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = objc_opt_self();

  return [v2 rawValueForSharingMode_];
}

id Playlist.Collaboration.InvitationMode.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = [objc_opt_self() sharingModeForRawValue_];
  v4 = 2 * (result != 1);
  if (result == 2)
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

Swift::Int sub_1D55006DC@<X0>(Swift::Int *a1@<X8>)
{
  result = Playlist.Collaboration.InvitationMode.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t sub_1D5500704()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE510, &qword_1D5648570);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  if (qword_1EC7E8FF0 != -1)
  {
    swift_once();
  }

  v18 = unk_1EC7F10C0;
  v38 = qword_1EC7F10B8;
  v19 = off_1EC7F10C8;
  sub_1D5613838();

  sub_1D560DD68();
  v42 = v6;
  v43 = &protocol witness table for MusicLibraryRequest<A>;
  v20 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (*(v7 + 16))(v20, v10, v6);
  v21 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
  sub_1D5424200(&aBlock, v5, MEMORY[0x1E69E7CC0], 1, v22, v23, v24, v25, v37, v38, aBlock, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  sub_1D4E6C9CC(v5, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v26 = type metadata accessor for MusicPlaybackIntent();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  v27 = *(v19 + 2);
  if (v27)
  {
    v28 = 0;
    v29 = v19 + 32;
    do
    {
      v30 = *v29++;
      v28 |= qword_1D566DBF0[v30];
      --v27;
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  sub_1D55011D4(v17, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v26) == 1)
  {
    sub_1D4E6C9CC(v15, &qword_1EC7F2AC0, &qword_1D564A5E0);
    v31 = 0;
  }

  else
  {
    v31 = *v15;
    sub_1D542348C(v15);
  }

  v32 = objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackEngine);
  v33 = sub_1D5501160(v38, v18, v28, v31);
  *(v1 + 16) = v33;
  [v33 becomeActive];
  v34 = *(v1 + 16);
  v43 = sub_1D5500B24;
  v44 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1D5500CD8;
  v42 = &block_descriptor_33;
  v35 = _Block_copy(&aBlock);
  [v34 restoreStateWithCompletion_];
  _Block_release(v35);
  (*(v7 + 8))(v10, v6);
  sub_1D4E6C9CC(v17, &qword_1EC7F2AC0, &qword_1D564A5E0);
  return v1;
}

void sub_1D5500B24(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1EDD54498 != -1)
    {
      swift_once();
    }

    v4 = sub_1D560C758();
    __swift_project_value_buffer(v4, qword_1EDD76AC0);
    v5 = a2;
    oslog = sub_1D560C738();
    v6 = sub_1D56156C8();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1D4E3F000, oslog, v6, "InternalMusicPlayer restoration failed with error =%{public}@", v7, 0xCu);
      sub_1D4E6C9CC(v8, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v8, -1, -1);
      MEMORY[0x1DA6ED200](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a2;
    }
  }
}

void sub_1D5500CD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1D5500D50(unsigned __int8 a1)
{
  if (*(v1 + 32) != a1)
  {
    switch(*(v1 + 32))
    {
      case 1:
        v5 = *(v1 + 16);

        [v5 start];
        break;
      case 2:
        swift_beginAccess();
        v6 = *(v1 + 24);
        *(v1 + 24) = MEMORY[0x1E69E7CC0];
        v7 = *(v6 + 16);
        if (v7)
        {
          v8 = (v6 + 40);
          do
          {
            v10 = *(v8 - 1);
            v9 = *v8;

            v10(v11);

            v8 += 2;
            --v7;
          }

          while (v7);
        }

        break;
      case 3:
        return;
      default:
        if (qword_1EDD54498 != -1)
        {
          swift_once();
        }

        v2 = sub_1D560C758();
        __swift_project_value_buffer(v2, qword_1EDD76AC0);
        oslog = sub_1D560C738();
        v3 = sub_1D56156D8();
        if (os_log_type_enabled(oslog, v3))
        {
          v4 = swift_slowAlloc();
          *v4 = 0;
          _os_log_impl(&dword_1D4E3F000, oslog, v3, "The engine should not be turned to an off state.", v4, 2u);
          MEMORY[0x1DA6ED200](v4, -1, -1);
        }

        break;
    }
  }
}

void sub_1D5500F24(char a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1D5500D50(v2);
}

uint64_t sub_1D5500F44()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1D5500F6C()
{
  sub_1D5500F44();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

_BYTE *storeEnumTagSinglePayload for InternalPlaybackEngine.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D55010A4()
{
  result = qword_1EC7F79F0;
  if (!qword_1EC7F79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79F0);
  }

  return result;
}

unint64_t sub_1D55010FC()
{
  result = qword_1EC7F79F8;
  if (!qword_1EC7F79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7A00, qword_1D566DBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79F8);
  }

  return result;
}

id sub_1D5501160(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D5614D38();

  v8 = [v4 initWithPlayerID:v7 options:a3 fallbackPlaybackIntent:a4];

  return v8;
}

uint64_t sub_1D55011D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MusicFavoriteStatusController.init(item:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for MusicFavoriteStatusController.Item();
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v134 = v34 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v138 = &v128 - v37;
  v38 = type metadata accessor for MusicDaemon.Item();
  v39 = OUTLINED_FUNCTION_14(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v43 = *v27;
  v42 = v27[1];
  v44 = *(v27 + 16);
  v137 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id;
  sub_1D560C358();
  v45 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient;
  if (qword_1EDD591D8 != -1)
  {
    v127 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient;
    swift_once();
    v45 = v127;
  }

  v139 = v45;
  *(v25 + v45) = qword_1EDD76CD0;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v38);
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = (v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_restrictions);
  *v53 = 2;
  v53[1] = 0;
  v53[2] = 0;
  *(v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) = 6;
  v54 = v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account;
  *v54 = v43;
  *(v54 + 8) = v42;
  v136 = v54;
  *(v54 + 16) = v44;
  OUTLINED_FUNCTION_10_123();
  v135 = v55;
  sub_1D55067D8(v29, v25 + v55, v56);

  v57 = OUTLINED_FUNCTION_26_76();
  sub_1D4E58128(v57, v58, v59);
  sub_1D53A3C74(&v141, v22);
  v60 = v21;
  v140 = v29;
  if (v21)
  {
    v61 = OUTLINED_FUNCTION_26_76();
    sub_1D4E58768(v61, v62, v63);
    v64 = v141;
    v65 = v142;
    sub_1D53476CC();
    OUTLINED_FUNCTION_29();
    v66 = swift_allocError();
    *v67 = v64;
    *(v67 + 16) = v65;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_188();
  v133 = v69;
  sub_1D55067D8(v69, v25 + v68, v70);
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  LOBYTE(a10) = 3;
  sub_1D560C8B8();
  swift_endAccess();
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v71 = sub_1D560C758();
  v72 = __swift_project_value_buffer(v71, qword_1EDD76B38);
  OUTLINED_FUNCTION_10_123();
  v73 = v138;
  sub_1D55067D8(v29, v138, v74);
  v75 = OUTLINED_FUNCTION_26_76();
  sub_1D4E58128(v75, v76, v77);

  v131 = v72;
  v78 = sub_1D560C738();
  v79 = sub_1D56156E8();

  v80 = OUTLINED_FUNCTION_26_76();
  sub_1D4E58768(v80, v81, v82);
  v132 = v79;
  if (os_log_type_enabled(v78, v79))
  {
    OUTLINED_FUNCTION_38_3();
    v83 = v73;
    v84 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    a10 = v129;
    *v84 = 136446722;
    v128 = v78;
    v85 = sub_1D4F636B4();
    v87 = sub_1D4E6835C(v85, v86, &a10);
    v130 = 0;
    v88 = v87;

    *(v84 + 4) = v88;
    *(v84 + 12) = 2082;
    v89 = v134;
    sub_1D55067D8(v83, v134, type metadata accessor for MusicFavoriteStatusController.Item);
    OUTLINED_FUNCTION_20_94();
    *&v141 = v91;
    *(&v141 + 1) = v90;
    v92 = sub_1D531AB30();
    v94 = v93;
    MEMORY[0x1DA6EAC70](v92);

    sub_1D5506784(v89, type metadata accessor for MusicFavoriteStatusController.Item);
    v95 = v133;
    v60 = v130;
    sub_1D5506784(v138, type metadata accessor for MusicFavoriteStatusController.Item);
    sub_1D4E6835C(v141, *(&v141 + 1), &a10);
    OUTLINED_FUNCTION_48_40();

    *(v84 + 14) = v94;
    *(v84 + 22) = 2082;
    *&v141 = v43;
    *(&v141 + 1) = v42;
    v142 = v44;
    v96 = Account.description.getter();
    v98 = v97;
    sub_1D4E58768(v141, *(&v141 + 1), v142);
    v99 = sub_1D4E6835C(v96, v98, &a10);

    *(v84 + 24) = v99;
    v100 = v128;
    _os_log_impl(&dword_1D4E3F000, v128, v132, "MusicFavoriteStatusController[%{public}s]: init with item: %{public}s and account: %{public}s.", v84, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {
    v101 = OUTLINED_FUNCTION_26_76();
    sub_1D4E58768(v101, v102, v103);

    OUTLINED_FUNCTION_4_150();
    sub_1D5506784(v73, v104);
    v95 = v133;
  }

  v105 = *(v25 + v139);

  sub_1D55166B8();
  if (v60)
  {

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v95, v106);
    v66 = v60;
LABEL_12:
    sub_1D55066E4();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v108 = v107;
    v109 = v66;
    sub_1D5507DA4(v66, v108);
    swift_willThrow();

    OUTLINED_FUNCTION_4_150();
    sub_1D5506784(v140, v110);
    if (v60)
    {
      OUTLINED_FUNCTION_4_150();
      sub_1D5506784(v25 + v135, v111);
      sub_1D4E58768(*v136, *(v136 + 8), *(v136 + 16));
      v112 = sub_1D560C368();
      OUTLINED_FUNCTION_4_0(v112);
      (*(v113 + 8))(v25 + v137);
      v114 = *(v25 + v139);

      sub_1D4E765C8(v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem, &qword_1EC7F7A10, &unk_1D566DC20);
      sub_1D4E765C8(v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription, &qword_1EC7ECC98, &qword_1D5622EB0);
      type metadata accessor for MusicFavoriteStatusController();
      v115 = *(*v25 + 48);
      v116 = *(*v25 + 52);
      swift_deallocPartialClassInstance();
    }

    else
    {
    }

    goto LABEL_18;
  }

  v117 = v95;

  v118 = sub_1D560C738();
  v119 = sub_1D56156E8();

  if (os_log_type_enabled(v118, v119))
  {
    OUTLINED_FUNCTION_55_1();
    v120 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v121 = swift_slowAlloc();
    *&v141 = v121;
    *v120 = 136446210;
    v122 = sub_1D4F636B4();
    v124 = sub_1D4E6835C(v122, v123, &v141);

    *(v120 + 4) = v124;
    _os_log_impl(&dword_1D4E3F000, v118, v119, "MusicFavoriteStatusController[%{public}s]: subscribed to daemon client.", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v121);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  OUTLINED_FUNCTION_4_150();
  sub_1D5506784(v140, v125);
  OUTLINED_FUNCTION_1_190();
  sub_1D5506784(v117, v126);
LABEL_18:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5501A24(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t MusicFavoriteStatusController.deinit()
{
  v1 = v0;
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76B38);

  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_55_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v6 = swift_slowAlloc();
    v33[0] = v6;
    *v5 = 136446210;
    v7 = sub_1D4F636B4();
    v9 = sub_1D4E6835C(v7, v8, v33);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "MusicFavoriteStatusController[%{public}s]: deninit.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v10);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v11);
  }

  v12 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient;
  v13 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient);

  sub_1D5516740();

  v14 = sub_1D560C738();
  v15 = sub_1D56156E8();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_55_1();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v17 = swift_slowAlloc();
    v33[0] = v17;
    *v16 = 136446210;
    v18 = sub_1D4F636B4();
    v20 = sub_1D4E6835C(v18, v19, v33);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1D4E3F000, v14, v15, "MusicFavoriteStatusController[%{public}s]: unsubscribed to daemon client.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v21 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController__status;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A18, &unk_1D566DC30);
  OUTLINED_FUNCTION_4_0(v22);
  (*(v23 + 8))(v1 + v21);
  OUTLINED_FUNCTION_4_150();
  sub_1D5506784(v1 + v24, v25);
  sub_1D4E58768(*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account), *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8), *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16));
  v26 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id;
  v27 = sub_1D560C368();
  OUTLINED_FUNCTION_4_0(v27);
  (*(v28 + 8))(v1 + v26);
  v29 = *(v1 + v12);

  OUTLINED_FUNCTION_1_190();
  sub_1D5506784(v1 + v30, v31);
  sub_1D4E765C8(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem, &qword_1EC7F7A10, &unk_1D566DC20);
  sub_1D4E765C8(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription, &qword_1EC7ECC98, &qword_1D5622EB0);
  return v1;
}

uint64_t MusicFavoriteStatusController.__deallocating_deinit()
{
  MusicFavoriteStatusController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5501F7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5501FF0();
  *a2 = v5;
  return result;
}

uint64_t sub_1D5501FB8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D5501A24(&v4);
}

uint64_t sub_1D5501FF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D5502068(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B00, &qword_1D566E3B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1D55021AC(v7);
}

uint64_t sub_1D550213C()
{
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A18, &unk_1D566DC30);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D55021AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B00, &qword_1D566E3B8);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  (*(v4 + 16))(&v10 - v8, a1, v2);
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A18, &unk_1D566DC30);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t MusicFavoriteStatusController.account.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
  v4 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_1D4E58128(v3, v4, v5);
}

uint64_t sub_1D550231C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  swift_beginAccess();
  sub_1D4F39AB0(v1 + v8, v2, &qword_1EC7F7A10, &unk_1D566DC20);
  v9 = type metadata accessor for MusicDaemon.Item();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1D5506A64(v2, a1);
  }

  OUTLINED_FUNCTION_2_188();
  sub_1D55067D8(v1 + v10, a1, v11);
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_1D4E765C8(v2, &qword_1EC7F7A10, &unk_1D566DC20);
  }

  return result;
}

void sub_1D5502444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  v26 = v22;
  v27 = v21;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_47_5();
  v32 = type metadata accessor for MusicDaemon.Item();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v36 = sub_1D560C758();
  __swift_project_value_buffer(v36, qword_1EDD76B38);

  v37 = sub_1D560C738();
  v38 = sub_1D56156E8();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_41_0();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_35();
    a10 = swift_slowAlloc();
    *v39 = 136446466;
    v40 = sub_1D4F636B4();
    sub_1D4E6835C(v40, v41, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v39 + 4) = v22;
    *(v39 + 12) = 2082;
    sub_1D550231C(v23);
    OUTLINED_FUNCTION_17_91();
    v70 = v42;
    v71 = v43;
    v44 = sub_1D53A3188();
    v46 = v45;
    MEMORY[0x1DA6EAC70](v44);

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v23, v47);
    sub_1D4E6835C(v70, v71, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v39 + 14) = v46;
    v26 = v22;
    _os_log_impl(&dword_1D4E3F000, v37, v38, "MusicFavoriteStatusController[%{public}s]: favorite action for item: %{public}s.", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v48 = *(v21 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient);
  v49 = v26;
  sub_1D55167C8(0, v27, &off_1F50C1E80);
  v50 = v26;
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_40_13();
  if (v26)
  {
    v55 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = v55;
    v57 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v57, v58, v20, v59, v60);

    sub_1D55066E4();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v62 = v61;
    v63 = v49;
    sub_1D5507DA4(v49, v62);
    swift_willThrow();
  }

  else
  {
    v64 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v65[4] = v64;
    v66 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v66, v67, v20, v68, v69);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D55027CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D55027EC, 0, 0);
}

uint64_t sub_1D55027EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 72) = 0;
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D55028A8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1D5503184((v0 + 72));

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5502914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5502934, 0, 0);
}

uint64_t sub_1D5502934()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D55029EC()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1D5503B18();

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D5502A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v94 = v22;
  v25 = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89[-v30];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_47_5();
  v36 = type metadata accessor for MusicDaemon.Item();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_59_0();
  v93 = v40 - v41;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v89[-v44];
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v89[-v46];
  v48 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  swift_beginAccess();
  sub_1D4F39AB0(v21 + v48, v20, &qword_1EC7F7A10, &unk_1D566DC20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v36) == 1)
  {
    sub_1D550231C(v47);
    if (__swift_getEnumTagSinglePayload(v20, 1, v36) != 1)
    {
      sub_1D4E765C8(v20, &qword_1EC7F7A10, &unk_1D566DC20);
    }
  }

  else
  {
    sub_1D5506A64(v20, v47);
  }

  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v49 = sub_1D560C758();
  __swift_project_value_buffer(v49, qword_1EDD76B38);
  OUTLINED_FUNCTION_2_188();
  sub_1D55067D8(v47, v45, v50);

  v51 = sub_1D560C738();
  v52 = sub_1D56156E8();

  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_41_0();
    v53 = swift_slowAlloc();
    v92 = v47;
    v54 = v53;
    OUTLINED_FUNCTION_59_35();
    v91 = swift_slowAlloc();
    a10 = v91;
    *v54 = 136446466;
    v55 = sub_1D4F636B4();
    sub_1D4E6835C(v55, v56, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v54 + 4) = v48;
    *(v54 + 12) = 2082;
    v57 = v93;
    sub_1D55067D8(v45, v93, type metadata accessor for MusicDaemon.Item);
    OUTLINED_FUNCTION_17_91();
    v95 = v58;
    v96 = v59;
    v60 = sub_1D53A3188();
    v90 = v52;
    MEMORY[0x1DA6EAC70](v60);

    sub_1D5506784(v57, type metadata accessor for MusicDaemon.Item);
    sub_1D5506784(v45, type metadata accessor for MusicDaemon.Item);
    sub_1D4E6835C(v95, v96, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v54 + 14) = type metadata accessor for MusicDaemon.Item;
    _os_log_impl(&dword_1D4E3F000, v51, v90, "MusicFavoriteStatusController[%{public}s]: undo-favorite action for item: %{public}s.", v54, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v47 = v92;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v45, v61);
  }

  v62 = *(v21 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient);
  v63 = v94;
  sub_1D55167C8(1, v25, &off_1F50C1E80);
  if (v63)
  {
    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v47, v64);
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    OUTLINED_FUNCTION_40_13();
    v69 = swift_allocObject();
    OUTLINED_FUNCTION_46_40(v69);
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v70 = swift_allocObject();
    OUTLINED_FUNCTION_29_60(v70);
    v71 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v71, v72, v31, v73, v74);

    sub_1D55066E4();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v76 = v75;
    v77 = v63;
    sub_1D5507DA4(v63, v76);
    swift_willThrow();
  }

  else
  {
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
    OUTLINED_FUNCTION_40_13();
    v82 = swift_allocObject();
    OUTLINED_FUNCTION_46_40(v82);
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v83 = swift_allocObject();
    OUTLINED_FUNCTION_29_60(v83);
    v84 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v84, v85, v31, v86, v87);

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v47, v88);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5502F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5502F84, 0, 0);
}

uint64_t sub_1D5502F84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 72) = 1;
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5503044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5503064, 0, 0);
}

uint64_t sub_1D5503064()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D550311C()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1D5503B18();

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5503184(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_45();

    if (v5[2] == 1)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_45();

    v3 = v5[1];
    v5[0] = 1;
    v4 = v5;
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_45();

  if (v7 - 3 > 2 && v7 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_45();

    v3 = v6[1];
    v6[0] = 0;
    v4 = v6;
LABEL_7:
    result = sub_1D5501A24(v4);
    if (v3 != 3)
    {
      *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) = v3;
    }
  }

  return result;
}

BOOL static MusicFavoriteStatusController.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

void sub_1D550335C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v82 = v4;
  v6 = v5;
  v7 = sub_1D56106B8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v75 = v9;
  v76 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v74 = v13 - v12;
  v14 = sub_1D560D478();
  v15 = OUTLINED_FUNCTION_4(v14);
  v80 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v79 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v72 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_16_0();
  v35 = *v3;
  v81 = v3[1];
  v36 = v3[2];
  OUTLINED_FUNCTION_2_188();
  v78 = v6;
  sub_1D55067D8(v6, v1, v37);
  v77 = type metadata accessor for MusicDaemon.Item();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v77);
  v38 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  v39 = v0;
  sub_1D4E68940(v1, v0 + v38, &qword_1EC7F7A10, &unk_1D566DC20);
  swift_endAccess();
  v40 = v82;
  sub_1D4F39AB0(v82, v30, &qword_1EC7ECC98, &qword_1D5622EB0);
  v41 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  sub_1D4E68940(v30, v39 + v41, &qword_1EC7ECC98, &qword_1D5622EB0);
  swift_endAccess();
  v83 = v39;
  v42 = (v39 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_restrictions);
  v43 = v81;
  *v42 = v35;
  v42[1] = v43;
  v42[2] = v36;
  sub_1D4F39AB0(v40, v27, &qword_1EC7ECC98, &qword_1D5622EB0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v14) == 1)
  {
    sub_1D4E765C8(v27, &qword_1EC7ECC98, &qword_1D5622EB0);
LABEL_6:
    v46 = 5;
    goto LABEL_7;
  }

  (*(v80 + 32))(v79, v27, v14);
  if (v35 == 2 || *(v78 + v77[9]) == 2)
  {
    v44 = OUTLINED_FUNCTION_28_0();
    v45(v44);
    goto LABEL_6;
  }

  v73 = *(v78 + v77[9]);
  v58 = v77[7];
  LODWORD(v81) = *(v78 + v77[8]);
  if (*(v78 + v58) == 3)
  {
    v46 = 0;
  }

  else
  {
    v46 = *(v78 + v58);
  }

  v59 = v83 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_item;
  v60 = *(type metadata accessor for MusicFavoriteStatusController.Item() + 28);
  v62 = v74;
  v61 = v75;
  v63 = v35;
  v64 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x1E6975D58], v76);
  v82 = v59;
  LOBYTE(v60) = sub_1D56106A8();
  (*(v61 + 8))(v62, v64);
  if ((v60 & 1) != 0 && (v63 & 1) == 0 || *(v82 + 33) == 1 && (v63 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  if (v81)
  {
    v67 = OUTLINED_FUNCTION_28_0();
    v68(v67);
  }

  else
  {
    if ((sub_1D560D438() & 1) == 0)
    {
LABEL_31:
      v65 = OUTLINED_FUNCTION_28_0();
      v66(v65);
LABEL_32:
      v46 = 4;
      goto LABEL_7;
    }

    v69 = sub_1D560D448();
    v70 = OUTLINED_FUNCTION_28_0();
    v71(v70);
    if ((v69 & 1) == 0 || (v73 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if (LOBYTE(v85[0]) != 3)
  {
    if (LOBYTE(v85[0]) == 4)
    {
      if (v46 == 4)
      {
        goto LABEL_23;
      }
    }

    else if (LOBYTE(v85[0]) == 5)
    {
      if (v46 == 5)
      {
        goto LABEL_23;
      }
    }

    else if ((v46 - 6) <= 0xFFFFFFFC && LOBYTE(v85[0]) == v46)
    {
      goto LABEL_23;
    }
  }

  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v48 = sub_1D560C758();
  __swift_project_value_buffer(v48, qword_1EDD76B38);

  v49 = sub_1D560C738();
  v50 = sub_1D56156E8();

  if (os_log_type_enabled(v49, v50))
  {
    OUTLINED_FUNCTION_41_0();
    v51 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_35();
    v85[0] = swift_slowAlloc();
    *v51 = 136446466;
    v52 = sub_1D4F636B4();
    v54 = sub_1D4E6835C(v52, v53, v85);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2082;
    v84 = v46;
    v55 = MusicFavoriteStatusController.Status.description.getter();
    v57 = sub_1D4E6835C(v55, v56, v85);

    *(v51 + 14) = v57;
    _os_log_impl(&dword_1D4E3F000, v49, v50, "MusicFavoriteStatusController[%{public}s]: setting status to %{public}s.", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  LOBYTE(v85[0]) = v46;
  sub_1D5501A24(v85);
LABEL_23:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D55039A4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26[-v6 - 8];
  v8 = OUTLINED_FUNCTION_85_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_108();
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  sub_1D4E68940(v1, v0 + v18, &qword_1EC7ECC98, &qword_1D5622EB0);
  swift_endAccess();
  type metadata accessor for MusicDaemon.Item();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  sub_1D4E68940(v7, v0 + v23, &qword_1EC7F7A10, &unk_1D566DC20);
  swift_endAccess();
  v26[0] = 5;
  return sub_1D5501A24(v26);
}

uint64_t sub_1D5503B18()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) != 6)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus);
    result = sub_1D5501A24(&v3);
    *(v0 + v1) = 6;
  }

  return result;
}

uint64_t sub_1D5503B64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicFavoriteStatusController();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

void sub_1D5503BA4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v66 = v7;
  v8 = type metadata accessor for MusicFavoriteStatusController.Item();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v65 = v13 - v12;
  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v17 = sub_1D560C758();
  __swift_project_value_buffer(v17, qword_1EDD76B38);

  v18 = sub_1D560C738();
  v19 = sub_1D56156E8();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_55_1();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v64 = v15;
    v21 = v14;
    v22 = swift_slowAlloc();
    v67 = v22;
    *v20 = 136446210;
    v23 = v0;
    v24 = sub_1D4F636B4();
    sub_1D4E6835C(v24, v25, &v67);
    OUTLINED_FUNCTION_48_40();

    *(v20 + 4) = v0;
    _os_log_impl(&dword_1D4E3F000, v18, v19, "MusicFavoriteStatusController[%{public}s]: didBeginObserving.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v14 = v21;
    v15 = v64;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {
    v23 = v0;
  }

  if (v16 != 255)
  {

    v26 = OUTLINED_FUNCTION_50_38();
    sub_1D5507888(v26, v27, v28);
    v29 = sub_1D560C738();
    v30 = sub_1D56156E8();
    v31 = OUTLINED_FUNCTION_50_38();
    sub_1D55078B4(v31, v32, v33);

    if (os_log_type_enabled(v29, v30))
    {
      v34 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v34 = 136446978;
      v35 = sub_1D4F636B4();
      OUTLINED_FUNCTION_63_27(v35, v36);
      OUTLINED_FUNCTION_82();

      *(v34 + 4) = v23;
      *(v34 + 12) = 2082;
      v67 = v14;
      v68 = v15;
      v69 = v16;
      v37 = OUTLINED_FUNCTION_50_38();
      sub_1D550789C(v37, v38, v39);
      v40 = sub_1D5614DB8();
      OUTLINED_FUNCTION_63_27(v40, v41);
      OUTLINED_FUNCTION_82();

      *(v34 + 14) = v23;
      *(v34 + 22) = 2082;
      sub_1D55067D8(v23 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_item, v65, type metadata accessor for MusicFavoriteStatusController.Item);
      OUTLINED_FUNCTION_20_94();
      v67 = v43;
      v68 = v42;
      v44 = sub_1D531AB30();
      MEMORY[0x1DA6EAC70](v44);

      sub_1D5506784(v65, type metadata accessor for MusicFavoriteStatusController.Item);
      sub_1D4E6835C(v67, v68, &v70);
      OUTLINED_FUNCTION_82();

      *(v34 + 24) = &v67;
      *(v34 + 32) = 2082;
      v45 = *(v23 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
      v46 = *(v23 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
      v47 = *(v23 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16);
      v48 = OUTLINED_FUNCTION_71();
      sub_1D4E58128(v48, v49, v47);
      v50 = OUTLINED_FUNCTION_71();
      v52 = sub_1D4F5E29C(v50, v51, v47);
      OUTLINED_FUNCTION_63_27(v52, v53);
      OUTLINED_FUNCTION_82();

      *(v34 + 34) = v46;
      _os_log_impl(&dword_1D4E3F000, v29, v30, "MusicFavoriteStatusController[%{public}s]: encountered error: %{public}s trying to observe item: %{public}s, account: %{public}s.", v34, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    OUTLINED_FUNCTION_40_13();
    v58 = swift_allocObject();
    OUTLINED_FUNCTION_46_40(v58);
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v59 = swift_allocObject();
    OUTLINED_FUNCTION_29_60(v59);
    v60 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v60, v61, v66, v62, v63);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5503FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5504000, 0, 0);
}

uint64_t sub_1D5504000()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D55040B8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1D55039A4();

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D5504120()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v83 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v79 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v70[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70[-v20];
  v22 = type metadata accessor for MusicDaemon.Item();
  v23 = OUTLINED_FUNCTION_69(v22);
  v75 = v24;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v70[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v70[-v30];
  v32 = v2[1];
  v82 = *v2;
  v78 = v32;
  v33 = v2[2];
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v77 = v33;
  v34 = sub_1D560C758();
  __swift_project_value_buffer(v34, qword_1EDD76B38);
  OUTLINED_FUNCTION_2_188();
  v81 = v5;
  v35 = OUTLINED_FUNCTION_85_0();
  sub_1D55067D8(v35, v36, v37);
  sub_1D4F39AB0(v83, v21, &qword_1EC7ECC98, &qword_1D5622EB0);

  v38 = sub_1D560C738();
  v39 = sub_1D56156E8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v71 = v39;
    v39 = v40;
    v72 = swift_slowAlloc();
    v87 = v72;
    *v39 = 136446978;
    v74 = v0;
    v41 = sub_1D4F636B4();
    OUTLINED_FUNCTION_56_37(v41, v42);
    OUTLINED_FUNCTION_64_33();
    *(v39 + 4) = v0;
    *(v39 + 12) = 2082;
    sub_1D55067D8(v31, v29, type metadata accessor for MusicDaemon.Item);
    OUTLINED_FUNCTION_17_91();
    v84 = v43;
    v85 = v44;
    v45 = sub_1D53A3188();
    v73 = v11;
    MEMORY[0x1DA6EAC70](v45);

    sub_1D5506784(v29, type metadata accessor for MusicDaemon.Item);
    sub_1D5506784(v31, type metadata accessor for MusicDaemon.Item);
    sub_1D4E6835C(v84, v85, &v87);
    OUTLINED_FUNCTION_64_33();
    *(v39 + 14) = type metadata accessor for MusicDaemon.Item;
    *(v39 + 22) = 2082;
    sub_1D4F39AB0(v21, v19, &qword_1EC7ECC98, &qword_1D5622EB0);
    v46 = sub_1D5614DB8();
    v48 = v47;
    sub_1D4E765C8(v21, &qword_1EC7ECC98, &qword_1D5622EB0);
    v49 = sub_1D4E6835C(v46, v48, &v87);
    v11 = v73;

    *(v39 + 24) = v49;
    *(v39 + 32) = 2082;
    v50 = v77;
    v51 = v78;
    v84 = v82;
    v85 = v78;
    v86 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B08, &qword_1D566E400);
    v52 = sub_1D5614DB8();
    v54 = OUTLINED_FUNCTION_56_37(v52, v53);

    *(v39 + 34) = v54;
    _os_log_impl(&dword_1D4E3F000, v38, v71, "MusicFavoriteStatusController[%{public}s]: observingContentDidChange\nitem = %{public}s,\nsubscription: %{public}s,\nrestrictions: %{public}s.", v39, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {

    sub_1D4E765C8(v21, &qword_1EC7ECC98, &qword_1D5622EB0);
    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v31, v55);
    v50 = v77;
    v51 = v78;
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  OUTLINED_FUNCTION_40_13();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_46_40(v60);
  swift_weakInit();
  OUTLINED_FUNCTION_2_188();
  sub_1D55067D8(v81, v29, v61);
  sub_1D4F39AB0(v83, v19, &qword_1EC7ECC98, &qword_1D5622EB0);
  v62 = (*(v75 + 80) + 40) & ~*(v75 + 80);
  v63 = (v76 + *(v79 + 80) + v62) & ~*(v79 + 80);
  v64 = (v80 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = 0;
  v65[4] = v39;
  sub_1D5506A64(v29, v65 + v62);
  sub_1D55079F8(v19, v65 + v63);
  v66 = (v65 + v64);
  *v66 = v82;
  v66[1] = v51;
  v66[2] = v50;
  v67 = OUTLINED_FUNCTION_41_7();
  sub_1D51ECB60(v67, v68, v11, v69, v65);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D55046AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v10;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D55046E0, 0, 0);
}

uint64_t sub_1D55046E0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 112);
    *(v0 + 40) = *(v0 + 96);
    *(v0 + 56) = v3;
    sub_1D56153C8();
    *(v0 + 128) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v4 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {
    **(v0 + 64) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D55047CC()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[10];
  v3 = v0[11];

  sub_1D550335C();

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1D5504858()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = *v3;
  v11 = v3[1];
  v12 = *(v3 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v13 = sub_1D560C758();
  __swift_project_value_buffer(v13, qword_1EDD76B38);

  v14 = OUTLINED_FUNCTION_19_84();
  sub_1D5507888(v14, v15, v16);
  v17 = sub_1D560C738();
  v18 = sub_1D56156E8();

  v19 = OUTLINED_FUNCTION_19_84();
  sub_1D55078B4(v19, v20, v21);
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_41_0();
    v22 = swift_slowAlloc();
    v43 = v9;
    v23 = v22;
    OUTLINED_FUNCTION_59_35();
    v47 = swift_slowAlloc();
    *v23 = 136446466;
    v24 = sub_1D4F636B4();
    v26 = OUTLINED_FUNCTION_56_37(v24, v25);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v44 = v10;
    v45 = v11;
    v46 = v12;
    v27 = OUTLINED_FUNCTION_19_84();
    sub_1D5507888(v27, v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
    v30 = sub_1D5614DB8();
    OUTLINED_FUNCTION_63_27(v30, v31);
    OUTLINED_FUNCTION_82();

    *(v23 + 14) = v1;
    _os_log_impl(&dword_1D4E3F000, v17, v18, "MusicFavoriteStatusController[%{public}s]: didEndObserving with error: %{public}s.", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v9 = v43;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_40_13();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_46_40(v36);
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_29_60(v37);
  v38 = OUTLINED_FUNCTION_41_7();
  sub_1D51ECB60(v38, v39, v9, v40, v41);

  OUTLINED_FUNCTION_46();
}

void sub_1D5504AB0()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76B38);

  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_55_1();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v15 = swift_slowAlloc();
    v42 = v8;
    v43 = v9;
    v16 = v7;
    v17 = v15;
    v44 = v15;
    *v14 = 136446210;
    v18 = sub_1D4F636B4();
    OUTLINED_FUNCTION_56_37(v18, v19);
    OUTLINED_FUNCTION_64_33();
    *(v14 + 4) = v10;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "MusicFavoriteStatusController[%{public}s]: didPerformAction.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v7 = v16;
    v8 = v42;
    v9 = v43;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  if (v10 == 255)
  {
    v34 = &unk_1D566E3C8;
  }

  else
  {

    v20 = OUTLINED_FUNCTION_85_0();
    sub_1D5507888(v20, v21, v10);
    v22 = sub_1D560C738();
    v23 = sub_1D56156C8();

    v24 = OUTLINED_FUNCTION_85_0();
    sub_1D55078B4(v24, v25, v10);
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_41_0();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v42 = swift_slowAlloc();
      v43 = v7;
      v44 = v42;
      *v26 = 136446466;
      v28 = sub_1D4F636B4();
      OUTLINED_FUNCTION_56_37(v28, v29);
      OUTLINED_FUNCTION_64_33();
      *(v26 + 4) = v10;
      *(v26 + 12) = 2112;
      sub_1D53476CC();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v30 = v8;
      *(v30 + 8) = v9;
      *(v30 + 16) = v10;
      v31 = OUTLINED_FUNCTION_85_0();
      sub_1D550789C(v31, v32, v10);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1D4E3F000, v22, v23, "MusicFavoriteStatusController[%{public}s]: failed to perform action: %@, reverting...", v26, 0x16u);
      sub_1D4E765C8(v27, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      __swift_destroy_boxed_opaque_existential_1(v42);
      v7 = v43;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v34 = &unk_1D566E3D8;
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_40_13();
  v39 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v39;
  sub_1D51ECB60(0, 0, v7, v34, v40);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5504E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5504E68, 0, 0);
}

uint64_t sub_1D5504E68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5504F20()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) = 6;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D5504F94()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v10 = sub_1D560C758();
  __swift_project_value_buffer(v10, qword_1EDD76B38);

  v11 = OUTLINED_FUNCTION_19_84();
  sub_1D550789C(v11, v12, v13);
  v14 = sub_1D560C738();
  v15 = sub_1D56156E8();

  v16 = OUTLINED_FUNCTION_19_84();
  sub_1D55078C8(v16, v17, v18);
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_41_0();
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v40 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = sub_1D4F636B4();
    v22 = v0;
    v23 = OUTLINED_FUNCTION_56_37(v20, v21);

    *(v19 + 4) = v23;
    v0 = v22;
    *(v19 + 12) = 2112;
    sub_1D53476CC();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v24 = v7;
    *(v24 + 8) = v8;
    *(v24 + 16) = v9;
    v25 = OUTLINED_FUNCTION_19_84();
    sub_1D550789C(v25, v26, v27);
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v28;
    *v39 = v28;
    _os_log_impl(&dword_1D4E3F000, v14, v15, "MusicFavoriteStatusController[%{public}s]: didFail: %@", v19, 0x16u);
    sub_1D4E765C8(v39, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_40_13();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_46_40(v33);
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_29_60(v34);
  v35 = OUTLINED_FUNCTION_41_7();
  sub_1D51ECB60(v35, v36, v0, v37, v38);

  OUTLINED_FUNCTION_46();
}

uint64_t MusicFavoriteStatusController.Status.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 3:
      return 0x676E6964616F6C2ELL;
    case 4:
      return 0xD000000000000016;
    case 5:
      return 0x5464656C6961662ELL;
  }

  v3 = 0xEA00000000006465;
  v4 = 0x7469726F7661662ELL;
  if (v1 != 1)
  {
    v4 = 0x656B696C7369642ELL;
    v3 = 0xE900000000000064;
  }

  if (*v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C61727475656E2ELL;
  }

  if (*v0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1DA6EAC70](v5, v6);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0x28646564616F6C2ELL;
}

uint64_t sub_1D5505340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646564616F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001D568FE30 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1D55054A0(char a1)
{
  result = 0x676E6964616F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x646564616F6CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6F5464656C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5505534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5505340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D550555C(uint64_t a1)
{
  v2 = sub_1D5506AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505598(uint64_t a1)
{
  v2 = sub_1D5506AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D55055D4(uint64_t a1)
{
  v2 = sub_1D5506B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505610(uint64_t a1)
{
  v2 = sub_1D5506B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550564C(uint64_t a1)
{
  v2 = sub_1D5506B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505688(uint64_t a1)
{
  v2 = sub_1D5506B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D55056C4(uint64_t a1)
{
  v2 = sub_1D5506BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505700(uint64_t a1)
{
  v2 = sub_1D5506BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550573C(uint64_t a1)
{
  v2 = sub_1D5506C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505778(uint64_t a1)
{
  v2 = sub_1D5506C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicFavoriteStatusController.Status.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v55 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A20, &qword_1D566DCD0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v52 = v7;
  v53 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v51 = v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A28, &qword_1D566DCD8);
  OUTLINED_FUNCTION_4(v50);
  v48 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v46 = v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A30, &qword_1D566DCE0);
  OUTLINED_FUNCTION_4(v49);
  v47 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_47_5();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A38, &qword_1D566DCE8);
  v22 = OUTLINED_FUNCTION_4(v21);
  v44 = v23;
  v45 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v44 - v27;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A40, &qword_1D566DCF0);
  OUTLINED_FUNCTION_4(v54);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v44 - v34;
  v36 = *v1;
  v37 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D5506AC8();
  sub_1D56163D8();
  switch(v36)
  {
    case 5:
      sub_1D5506B1C();
      v39 = v51;
      OUTLINED_FUNCTION_44_43();
      (*(v52 + 8))(v39, v53);
      break;
    case 4:
      sub_1D5506B70();
      v38 = v46;
      OUTLINED_FUNCTION_44_43();
      (*(v48 + 8))(v38, v50);
      break;
    case 3:
      sub_1D5506C18();
      OUTLINED_FUNCTION_44_43();
      (*(v44 + 8))(v28, v45);
      break;
    default:
      sub_1D5506BC4();
      sub_1D5616018();
      sub_1D53A2980();
      v40 = v49;
      sub_1D56160C8();
      (*(v47 + 8))(v0, v40);
      v41 = *(v30 + 8);
      v42 = OUTLINED_FUNCTION_85_0();
      v43(v42);
      goto LABEL_9;
  }

  (*(v30 + 8))(v35, v0);
LABEL_9:
  OUTLINED_FUNCTION_26();
}

uint64_t MusicFavoriteStatusController.Status.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  else
  {
    v1 = qword_1D566E438[(v1 - 3)];
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t MusicFavoriteStatusController.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  else
  {
    v1 = qword_1D566E438[(v1 - 3)];
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicFavoriteStatusController.Status.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_25_1();
  v15 = v14;
  v75 = v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A70, &qword_1D566DCF8);
  OUTLINED_FUNCTION_4(v77);
  v74 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v73 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A78, &qword_1D566DD00);
  v23 = OUTLINED_FUNCTION_4(v22);
  v70 = v24;
  v71 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v72 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A80, &qword_1D566DD08);
  OUTLINED_FUNCTION_4(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A88, &qword_1D566DD10);
  OUTLINED_FUNCTION_4(v33);
  v69 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_47_5();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A90, &unk_1D566DD18);
  OUTLINED_FUNCTION_4(v38);
  v76 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_108();
  v43 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1D5506AC8();
  sub_1D5616398();
  if (v12)
  {
    goto LABEL_8;
  }

  v78 = v15;
  v44 = sub_1D5615FE8();
  v48 = sub_1D4FE35F0(v44, 0);
  if (v46 == v47 >> 1)
  {
LABEL_7:
    v56 = sub_1D5615C18();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v58 = &type metadata for MusicFavoriteStatusController.Status;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_11_120();
    v61(v60);
    v15 = v78;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v15);
LABEL_9:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v46 < (v47 >> 1))
  {
    v68 = *(v45 + v46);
    sub_1D4FE35EC(v46 + 1, v47 >> 1, v48, v45, v46, v47);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      switch(v68)
      {
        case 1:
          sub_1D5506BC4();
          OUTLINED_FUNCTION_23_75();
          sub_1D53A3134();
          sub_1D5615FD8();
          swift_unknownObjectRelease();
          v66 = OUTLINED_FUNCTION_61_36();
          v67(v66);
          (*(v76 + 8))(v13, v38);
          v55 = a11;
          break;
        case 2:
          sub_1D5506B70();
          OUTLINED_FUNCTION_23_75();
          swift_unknownObjectRelease();
          (*(v70 + 8))(v72, v71);
          v62 = OUTLINED_FUNCTION_11_120();
          v63(v62);
          v55 = 4;
          break;
        case 3:
          sub_1D5506B1C();
          OUTLINED_FUNCTION_23_75();
          swift_unknownObjectRelease();
          (*(v74 + 8))(v73, v77);
          v64 = OUTLINED_FUNCTION_11_120();
          v65(v64);
          v55 = 5;
          break;
        default:
          sub_1D5506C18();
          OUTLINED_FUNCTION_23_75();
          swift_unknownObjectRelease();
          (*(v69 + 8))(v11, v33);
          v53 = OUTLINED_FUNCTION_11_120();
          v54(v53);
          v55 = 3;
          break;
      }

      *v75 = v55;
      __swift_destroy_boxed_opaque_existential_1(v15);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1D550635C()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicFavoriteStatusController.Status.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicFavoriteStatusController.description.getter()
{
  OUTLINED_FUNCTION_20_94();
  v4 = v0;
  v1 = sub_1D531AB30();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0x203A6D657469, 0xE600000000000000);

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71();
  sub_1D560C8F8();

  v2 = MusicFavoriteStatusController.Status.description.getter();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](0x737574617473202CLL, 0xEA0000000000203ALL);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v4;
}

uint64_t MusicFavoriteStatusController.debugDescription.getter()
{
  OUTLINED_FUNCTION_20_94();
  v10 = v2;
  v11 = v1;
  *&v7 = 0x3A6D65746920200ALL;
  *(&v7 + 1) = 0xE900000000000020;
  v3 = sub_1D531AB30();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x3A6D65746920200ALL, 0xE900000000000020);

  strcpy(v9, ",\n  account: ");
  HIWORD(v9[1]) = -4864;
  v7 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16);
  v4 = Account.description.getter();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](v9[0], v9[1]);

  strcpy(&v7, ",\n  status: ");
  BYTE13(v7) = 0;
  HIWORD(v7) = -5120;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71();
  sub_1D560C8F8();

  v5 = MusicFavoriteStatusController.Status.description.getter();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](v7, *(&v7 + 1));

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v10;
}

unint64_t sub_1D55066E4()
{
  result = qword_1EC7F7A08;
  if (!qword_1EC7F7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A08);
  }

  return result;
}

uint64_t type metadata accessor for MusicFavoriteStatusController()
{
  result = qword_1EDD5AE50;
  if (!qword_1EDD5AE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5506784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D55067D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D5506834()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5502914(v3, v4, v5, v6);
}

uint64_t sub_1D55068C0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D55027CC(v3, v4, v5, v6);
}

uint64_t sub_1D550694C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503044(v3, v4, v5, v6);
}

uint64_t sub_1D55069D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5502F64(v3, v4, v5, v6);
}

uint64_t sub_1D5506A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDaemon.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5506AC8()
{
  result = qword_1EC7F7A48;
  if (!qword_1EC7F7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A48);
  }

  return result;
}

unint64_t sub_1D5506B1C()
{
  result = qword_1EC7F7A50;
  if (!qword_1EC7F7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A50);
  }

  return result;
}

unint64_t sub_1D5506B70()
{
  result = qword_1EC7F7A58;
  if (!qword_1EC7F7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A58);
  }

  return result;
}

unint64_t sub_1D5506BC4()
{
  result = qword_1EC7F7A60;
  if (!qword_1EC7F7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A60);
  }

  return result;
}

unint64_t sub_1D5506C18()
{
  result = qword_1EC7F7A68;
  if (!qword_1EC7F7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A68);
  }

  return result;
}

unint64_t sub_1D5506C70()
{
  result = qword_1EC7F7A98;
  if (!qword_1EC7F7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A98);
  }

  return result;
}

void sub_1D5506CCC()
{
  sub_1D5506FEC();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    v2 = type metadata accessor for MusicFavoriteStatusController.Item();
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      v4 = sub_1D560C368();
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        v6 = type metadata accessor for MusicDaemon.Item();
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_1D550703C(319, qword_1EDD592B8, type metadata accessor for MusicDaemon.Item);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_1D550703C(319, &qword_1EDD5F558, MEMORY[0x1E6974EF8]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1D5506FEC()
{
  if (!qword_1EDD54418)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD54418);
    }
  }
}

void sub_1D550703C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for MusicFavoriteStatusController.Status(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicFavoriteStatusController.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicFavoriteStatusController.Status.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicFavoriteStatusController.Status.LoadedCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D55073E0()
{
  result = qword_1EC7F7AA0;
  if (!qword_1EC7F7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AA0);
  }

  return result;
}

unint64_t sub_1D5507438()
{
  result = qword_1EC7F7AA8;
  if (!qword_1EC7F7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AA8);
  }

  return result;
}

unint64_t sub_1D5507490()
{
  result = qword_1EC7F7AB0;
  if (!qword_1EC7F7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AB0);
  }

  return result;
}

unint64_t sub_1D55074E8()
{
  result = qword_1EC7F7AB8;
  if (!qword_1EC7F7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AB8);
  }

  return result;
}

unint64_t sub_1D5507540()
{
  result = qword_1EC7F7AC0;
  if (!qword_1EC7F7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AC0);
  }

  return result;
}

unint64_t sub_1D5507598()
{
  result = qword_1EC7F7AC8;
  if (!qword_1EC7F7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AC8);
  }

  return result;
}

unint64_t sub_1D55075F0()
{
  result = qword_1EC7F7AD0;
  if (!qword_1EC7F7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AD0);
  }

  return result;
}

unint64_t sub_1D5507648()
{
  result = qword_1EC7F7AD8;
  if (!qword_1EC7F7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AD8);
  }

  return result;
}

unint64_t sub_1D55076A0()
{
  result = qword_1EC7F7AE0;
  if (!qword_1EC7F7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AE0);
  }

  return result;
}

unint64_t sub_1D55076F8()
{
  result = qword_1EC7F7AE8;
  if (!qword_1EC7F7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AE8);
  }

  return result;
}

unint64_t sub_1D5507750()
{
  result = qword_1EC7F7AF0;
  if (!qword_1EC7F7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AF0);
  }

  return result;
}

unint64_t sub_1D55077A8()
{
  result = qword_1EC7F7AF8;
  if (!qword_1EC7F7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AF8);
  }

  return result;
}

uint64_t sub_1D55077FC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5504E48(v3, v4, v5, v6);
}

uint64_t sub_1D5507888(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D550789C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D550789C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D55078B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D55078C8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D55078C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D55078E0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5502914(v3, v4, v5, v6);
}

uint64_t sub_1D550796C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503FE0(v3, v4, v5, v6);
}

uint64_t sub_1D55079F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5507A68(uint64_t a1)
{
  v3 = v2;
  v4 = type metadata accessor for MusicDaemon.Item();
  OUTLINED_FUNCTION_69(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v8 = v6 + *(v7 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_69(v9);
  v11 = (v8 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = (v1 + ((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_1D5507D28;

  return sub_1D55046AC(a1, v13, v14, v15, v1 + v6, v1 + v11, v17, v18);
}

uint64_t sub_1D5507C10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503FE0(v3, v4, v5, v6);
}

uint64_t sub_1D5507C9C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503FE0(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_23_75()
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_47_45()
{

  return sub_1D560C8F8();
}

void sub_1D5507DA4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  if (swift_dynamicCast())
  {
    if (v11 == 2 && v9 <= 0xD)
    {
      switch(v9)
      {
        case 1uLL:
        case 2uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          goto LABEL_7;
        case 4uLL:

          v5 = 0;
          v6 = 0;
          break;
        case 5uLL:

          v5 = 0;
          v6 = 4;
          break;
        case 9uLL:

          v5 = 0;
          v6 = 1;
          break;
        case 0xDuLL:

          v5 = 0;
          v6 = 3;
          break;
        default:

          v5 = 0;
          v6 = 2;
          break;
      }
    }

    else
    {
LABEL_7:
      sub_1D53476CC();
      v5 = sub_1D5616268();
      v6 = v8;

      sub_1D55078C8(v9, v10, v11);
    }
  }

  else
  {
    swift_getErrorValue();
    v5 = sub_1D5616268();
    v6 = v7;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t static MusicFavoriteStatusController.Error.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_20;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v8 = 1;
      sub_1D55080D0(*a1, 1uLL);
      sub_1D55080D0(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_20;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_20;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_20;
    default:
      if (v5 >= 5)
      {
        v13 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v15 = sub_1D5616168();
          v16 = OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_0_256(v16, v17);
          v18 = OUTLINED_FUNCTION_24();
          sub_1D55080D0(v18, v19);
          return v15 & 1;
        }

        OUTLINED_FUNCTION_0_256(v13, v3);
        v6 = v2;
        v7 = v3;
LABEL_20:
        sub_1D55080D0(v6, v7);
        return 1;
      }

      else
      {
LABEL_13:
        v9 = OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_0_256(v9, v10);
        v11 = OUTLINED_FUNCTION_24();
        sub_1D55080D0(v11, v12);
        return 0;
      }
  }
}

uint64_t sub_1D55080BC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1D55080D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t MusicFavoriteStatusController.Error.hash(into:)()
{
  switch(v0[1])
  {
    case 0:
      v1 = 0;
      goto LABEL_7;
    case 1:
      v1 = 1;
      goto LABEL_7;
    case 2:
      v1 = 2;
      goto LABEL_7;
    case 3:
      v1 = 3;
      goto LABEL_7;
    case 4:
      v1 = 4;
LABEL_7:
      result = MEMORY[0x1DA6EC0D0](v1);
      break;
    default:
      v3 = *v0;
      MEMORY[0x1DA6EC0D0](5);

      result = sub_1D5614E28();
      break;
  }

  return result;
}

uint64_t MusicFavoriteStatusController.Error.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D56162D8();
  switch(v1)
  {
    case 0:
      v3 = 0;
      goto LABEL_7;
    case 1:
      v3 = 1;
      goto LABEL_7;
    case 2:
      v3 = 2;
      goto LABEL_7;
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 4:
      v3 = 4;
LABEL_7:
      MEMORY[0x1DA6EC0D0](v3);
      break;
    default:
      MEMORY[0x1DA6EC0D0](5);
      sub_1D5614E28();
      break;
  }

  return sub_1D5616328();
}

uint64_t sub_1D550827C()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicFavoriteStatusController.Error.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D55082C8()
{
  result = qword_1EC7F7B18;
  if (!qword_1EC7F7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7B18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal0A24FavoriteStatusControllerC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5508334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D550838C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest();
  sub_1D5417790(a1, a3 + *(v6 + 20));
  v7 = sub_1D5614898();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 32);

  return v10(a3, a2, v8);
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest()
{
  result = qword_1EC7F7B28;
  if (!qword_1EC7F7B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D5614898();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.collaborator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest() + 20);

  return sub_1D5417898(v3, a1);
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0) - 8) + 64);
  v1[3] = OUTLINED_FUNCTION_127();
  v3 = sub_1D560E728();
  v1[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560D9A8();
  v1[7] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_127();
  v11 = sub_1D560D838();
  v1[10] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[11] = v12;
  v14 = *(v13 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v15 = swift_task_alloc();
  v1[14] = v15;
  *v15 = v1;
  v15[1] = sub_1D550871C;

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest._response()();
}

uint64_t sub_1D550871C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v13 = *v2;

  if (v1)
  {
    v7 = v4[12];
    v6 = v4[13];
    v8 = v4[9];
    v9 = v4[6];
    v10 = v4[3];

    OUTLINED_FUNCTION_55();

    return v11();
  }

  else
  {
    v4[15] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D550889C, 0, 0);
  }
}

uint64_t sub_1D550889C()
{
  v18 = v0[13];
  v19 = v0[15];
  v1 = v0[11];
  v23 = v0[12];
  v24 = v0[10];
  v21 = v0[8];
  v22 = v0[7];
  v16 = v0[6];
  v17 = v0[9];
  v2 = v0[5];
  v20 = v0[4];
  v3 = v0[3];
  v25 = v0[2];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v4 = sub_1D560DB08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D5621D90;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x1E6975040], v4);
  v10(v9 + v6, *MEMORY[0x1E6975030], v4);
  sub_1D560E718();
  v11 = *MEMORY[0x1E6974FD8];
  v12 = sub_1D560D9E8();
  OUTLINED_FUNCTION_14(v12);
  (*(v13 + 104))(v3, v11, v12);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v12);
  sub_1D560F7D8();
  sub_1D4E50004(v3, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v2 + 8))(v16, v20);
  (*(v21 + 8))(v17, v22);
  (*(v1 + 16))(v23, v18, v24);
  sub_1D56144C8();
  (*(v1 + 8))(v18, v24);

  OUTLINED_FUNCTION_55();

  return v14();
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest._response()()
{
  v1[22] = v0;
  v2 = sub_1D560D838();
  v1[23] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[24] = v3;
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_127();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_127();
  v7 = sub_1D5614898();
  v1[27] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[28] = v8;
  v10 = *(v9 + 64);
  v1[29] = OUTLINED_FUNCTION_127();
  v11 = sub_1D56131C8();
  v1[30] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[31] = v12;
  v14 = *(v13 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5508D10, 0, 0);
}

uint64_t sub_1D5508D10()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[25];
  v29 = v0[24];
  v30 = v0[26];
  v9 = v0[22];
  v31 = v0[23];
  (*(v3 + 104))(v2, *MEMORY[0x1E6976988], v4);
  (*(v3 + 16))(v1, v2, v4);
  (*(v5 + 16))(v6, v9, v7);
  sub_1D4ECAE6C();
  v11 = v10;
  v0[34] = v10;
  (*(v3 + 8))(v2, v4);
  LODWORD(v5) = *(type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest() + 20);
  type metadata accessor for Playlist.Collaborator();
  sub_1D5509834(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v29 + 8))(v8, v31);
  v12 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
  {
    sub_1D4E50004(v0[26], &unk_1EC7F1970, &qword_1D561F4A0);
    sub_1D4F763B4();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v15 = v0[32];
    v14 = v0[33];
    v16 = v0[29];
    v18 = v0[25];
    v17 = v0[26];

    OUTLINED_FUNCTION_55();

    return v19();
  }

  else
  {
    v21 = v0[26];
    v22 = sub_1D560F138();
    v24 = v23;
    (*(*(v12 - 8) + 8))(v21, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D561C050;
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    v26 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest);
    v27 = sub_1D550977C(v11);
    v0[35] = v27;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D55090F0;
    v28 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D4F772C0;
    v0[13] = &block_descriptor_34;
    v0[14] = v28;
    [v27 performWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D55090F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_1D5509378;
  }

  else
  {
    v3 = sub_1D5509200;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5509200()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v6 = v0[21];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 18, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_127();
  (*(v8 + 16))(v10, v7, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v11 = sub_1D5616158();

  (*(v8 + 8))(v10, v6);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1D5509378()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  swift_willThrow();

  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];

  OUTLINED_FUNCTION_55();

  return v10();
}

BOOL static MusicCollaborativePlaylist.RemoveCollaboratorRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0())
  {
    v4 = *(type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest() + 20);
    v5 = (a1 + v4);
    v6 = (a2 + v4);
    v7 = *v5 == *v6 && v5[1] == v6[1];
    if (v7 || (sub_1D5616168() & 1) != 0)
    {
      v8 = *(type metadata accessor for Playlist.Collaborator() + 20);
      if (sub_1D5611A78())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.hash(into:)()
{
  sub_1D5614898();
  OUTLINED_FUNCTION_2_189();
  sub_1D5509834(v1, v2);
  sub_1D5614CB8();
  v3 = (v0 + *(type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest() + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D5614E28();
  v6 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_191();
  sub_1D5509834(v7, v8);
  return sub_1D5614CB8();
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_2_189();
  sub_1D5509834(v1, v2);
  sub_1D5614CB8();
  v3 = (v0 + *(type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest() + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D5614E28();
  v6 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_191();
  sub_1D5509834(v7, v8);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5509678(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D5509834(&qword_1EC7EB6C8, MEMORY[0x1E69773E0]);
  sub_1D5614CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1D5614E28();
  v7 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  sub_1D5509834(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

id sub_1D550977C(void *a1)
{
  v3 = sub_1D5615158();

  v4 = [v1 initWithPlaylist:a1 socialProfileIDs:v3];

  return v4;
}

uint64_t sub_1D5509834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicDaemon.Response.Context.init(requestID:item:accountID:subscription:restrictions:observerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, __int128 *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v21 = *a4;
  v11 = *(a4 + 2);
  v12 = sub_1D560C368();
  OUTLINED_FUNCTION_14(v12);
  v22 = *(v13 + 32);
  v22(a6, a1, v12);
  v14 = type metadata accessor for MusicDaemon.Response.Context(0);
  v15 = v14[5];
  OUTLINED_FUNCTION_7_139();
  sub_1D550BCB4();
  v16 = (a6 + v14[6]);
  *v16 = a2;
  v16[1] = a3;
  v17 = v14[7];
  sub_1D4FB8058();
  v18 = a6 + v14[8];
  *v18 = v21;
  *(v18 + 16) = v11;
  v19 = a6 + v14[9];

  return (v22)(v19, a5, v12);
}

void MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_45_4();
  v7 = type metadata accessor for MusicDaemon.Item();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = sub_1D560C368();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v34 = v2[1];
  v35 = *v2;
  v32 = *(v14 + 16);
  v33 = v2[2];
  v32(v18 - v17, v6, v11);
  OUTLINED_FUNCTION_57(v4, 1, v7);
  if (v20)
  {
    v21 = *(type metadata accessor for MusicDaemon.Request.Context(0) + 20);
    OUTLINED_FUNCTION_7_139();
    sub_1D550B250();
    OUTLINED_FUNCTION_57(v4, 1, v7);
    if (!v20)
    {
      sub_1D4E50004(v4, &qword_1EC7F7A10, &unk_1D566DC20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_139();
    sub_1D550BCB4();
  }

  v22 = type metadata accessor for MusicDaemon.Request.Context(0);
  v23 = *(v22 + 28);
  v24 = (v6 + *(v22 + 24));
  v26 = *v24;
  v25 = v24[1];
  v27 = type metadata accessor for MusicDaemon.Response.Context(0);
  v32(v0 + v27[9], v6 + v23, v11);

  sub_1D550B1A4(v6, type metadata accessor for MusicDaemon.Request.Context);
  (*(v14 + 32))(v0, v19, v11);
  v28 = v27[5];
  OUTLINED_FUNCTION_7_139();
  sub_1D550BCB4();
  v29 = (v0 + v27[6]);
  *v29 = v26;
  v29[1] = v25;
  v30 = v27[7];
  sub_1D4FB8058();
  v31 = (v0 + v27[8]);
  *v31 = v35;
  v31[1] = v34;
  v31[2] = v33;
  OUTLINED_FUNCTION_46();
}

uint64_t MusicDaemon.Response.Context.requestID.getter()
{
  OUTLINED_FUNCTION_45_4();
  v1 = sub_1D560C368();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_104();

  return v5(v4, v0);
}

uint64_t MusicDaemon.Response.Context.item.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = *(type metadata accessor for MusicDaemon.Response.Context(v0) + 20);
  OUTLINED_FUNCTION_7_139();
  return sub_1D550B250();
}

uint64_t MusicDaemon.Response.Context.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicDaemon.Response.Context(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicDaemon.Response.Context.subscription.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = *(type metadata accessor for MusicDaemon.Response.Context(v0) + 28);
  return sub_1D4FB8150();
}

__n128 MusicDaemon.Response.Context.restrictions.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = (v1 + *(type metadata accessor for MusicDaemon.Response.Context(v2) + 32));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *v0 = *v3;
  v0[1].n128_u64[0] = v4;
  return result;
}

uint64_t MusicDaemon.Response.Context.observerID.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = *(type metadata accessor for MusicDaemon.Response.Context(v0) + 36);
  v2 = sub_1D560C368();
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_104();

  return v6(v5);
}

void static MusicDaemon.Response.Context.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D560D478();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_71_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE530, &qword_1D566E620);
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  if ((sub_1D560C348() & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = type metadata accessor for MusicDaemon.Response.Context(0);
  if ((static MusicDaemon.Item.== infix(_:_:)(v4 + v24[5], v2 + v24[5]) & 1) == 0)
  {
    goto LABEL_17;
  }

  v25 = v24[6];
  v26 = *(v4 + v25);
  v27 = *(v4 + v25 + 8);
  v28 = (v2 + v25);
  v29 = v26 == *v28 && v27 == v28[1];
  if (!v29 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_17;
  }

  v48 = v24;
  v49 = v8;
  v30 = v24[7];
  v31 = *(v18 + 48);
  sub_1D4FB8150();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v23, 1, v5);
  if (!v29)
  {
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(&v23[v31], 1, v5);
    if (!v32)
    {
      v33 = v49;
      (*(v49 + 32))(v13, &v23[v31], v5);
      OUTLINED_FUNCTION_3_194();
      sub_1D550A848(v34, v35);
      v36 = sub_1D5614D18();
      v37 = *(v33 + 8);
      v37(v13, v5);
      v37(v0, v5);
      sub_1D4E50004(v23, &qword_1EC7ECC98, &qword_1D5622EB0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    (*(v49 + 8))(v0, v5);
LABEL_16:
    sub_1D4E50004(v23, &qword_1EC7EE530, &qword_1D566E620);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_57(&v23[v31], 1, v5);
  if (!v29)
  {
    goto LABEL_16;
  }

  sub_1D4E50004(v23, &qword_1EC7ECC98, &qword_1D5622EB0);
LABEL_19:
  v38 = v48;
  v39 = v48[8];
  v40 = *(v4 + v39);
  v41 = *(v4 + v39 + 8);
  v42 = *(v4 + v39 + 16);
  v43 = (v2 + v39);
  v44 = *(v43 + 2);
  v50[3] = v40;
  v50[4] = v41;
  v50[5] = v42;
  v45 = *v43;
  v51 = *v43;
  v52 = v44;
  if (v40 == 2)
  {
    if (v45 == 2)
    {
LABEL_24:
      v46 = v38[9];
      sub_1D560C348();
    }
  }

  else
  {
    v50[0] = v40;
    v50[1] = v41;
    v50[2] = v42;
    if (v45 != 2 && static MusicRestrictions.== infix(_:_:)(v50, &v51))
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D550A1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1835365481 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463697274736572 && a2 == 0xEC000000736E6F69;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x726576726573626FLL && a2 == 0xEA00000000004449)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D550A3C8(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 1835365481;
      break;
    case 2:
      result = 0x49746E756F636361;
      break;
    case 3:
      result = 0x7069726373627573;
      break;
    case 4:
      result = 0x7463697274736572;
      break;
    case 5:
      result = 0x726576726573626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D550A4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D550A1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D550A4D0(uint64_t a1)
{
  v2 = sub_1D550A7F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550A50C(uint64_t a1)
{
  v2 = sub_1D550A7F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Response.Context.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B38, &qword_1D566E628);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D550A7F4();
  sub_1D56163D8();
  LOBYTE(v32) = 0;
  sub_1D560C368();
  OUTLINED_FUNCTION_4_151();
  sub_1D550A848(v14, v15);
  OUTLINED_FUNCTION_10_43();
  sub_1D56160C8();
  if (!v1)
  {
    v31 = type metadata accessor for MusicDaemon.Response.Context(0);
    v16 = v31[5];
    LOBYTE(v32) = 1;
    type metadata accessor for MusicDaemon.Item();
    OUTLINED_FUNCTION_24_72();
    sub_1D550A848(v17, v18);
    OUTLINED_FUNCTION_36_62();
    sub_1D56160C8();
    v19 = v31;
    v20 = (v2 + v31[6]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616088();
    v23 = v19[7];
    LOBYTE(v32) = 3;
    sub_1D560D478();
    OUTLINED_FUNCTION_3_194();
    sub_1D550A848(v24, v25);
    OUTLINED_FUNCTION_36_62();
    sub_1D5616068();
    v26 = v31;
    v27 = (v2 + v31[8]);
    v28 = *(v27 + 2);
    v32 = *v27;
    v33 = v28;
    sub_1D550A890();
    OUTLINED_FUNCTION_56_38();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    v29 = v26[9];
    LOBYTE(v32) = 5;
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D550A7F4()
{
  result = qword_1EDD5E880;
  if (!qword_1EDD5E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E880);
  }

  return result;
}

uint64_t sub_1D550A848(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D550A890()
{
  result = qword_1EDD5C388;
  if (!qword_1EDD5C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C388);
  }

  return result;
}

void MusicDaemon.Response.Context.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v3 = sub_1D560D478();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  sub_1D560C368();
  OUTLINED_FUNCTION_4_151();
  sub_1D550A848(v16, v17);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  v18 = type metadata accessor for MusicDaemon.Response.Context(0);
  v19 = v0 + v18[5];
  MusicDaemon.Item.hash(into:)();
  OUTLINED_FUNCTION_45_46((v2 + v18[6]));
  v20 = v18[7];
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v3);
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v6 + 32))(v11, v1, v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_194();
    sub_1D550A848(v22, v23);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v6 + 8))(v11, v3);
  }

  v24 = (v2 + v18[8]);
  if (*v24 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v26 = v24[1];
    v25 = v24[2];
    OUTLINED_FUNCTION_27();
    sub_1D56162F8();
    sub_1D56162F8();
    sub_1D56162F8();
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v26);
    MEMORY[0x1DA6EC0D0](v25);
  }

  v27 = v2 + v18[9];
  sub_1D5614CB8();
  OUTLINED_FUNCTION_46();
}

void MusicDaemon.Response.Context.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v44 = type metadata accessor for MusicDaemon.Item();
  v9 = OUTLINED_FUNCTION_14(v44);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = sub_1D560C368();
  v13 = OUTLINED_FUNCTION_4(v12);
  v46 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_159_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B40, &unk_1D566E630);
  OUTLINED_FUNCTION_4(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_71_1();
  v45 = type metadata accessor for MusicDaemon.Response.Context(0);
  v22 = OUTLINED_FUNCTION_14(v45);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v47 = v26 - v25;
  v27 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D550A7F4();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_4_151();
    sub_1D550A848(v28, v29);
    sub_1D5615FD8();
    v30 = *(v46 + 32);
    v30(v47, v1);
    OUTLINED_FUNCTION_24_72();
    sub_1D550A848(v31, v32);
    OUTLINED_FUNCTION_42_48();
    OUTLINED_FUNCTION_53_35();
    sub_1D5615FD8();
    v33 = v45[5];
    OUTLINED_FUNCTION_7_139();
    sub_1D550BCB4();
    v34 = sub_1D5615F98();
    v35 = (v47 + v45[6]);
    *v35 = v34;
    v35[1] = v36;
    sub_1D560D478();
    LOBYTE(v48) = 3;
    OUTLINED_FUNCTION_3_194();
    sub_1D550A848(v37, v38);
    OUTLINED_FUNCTION_42_48();
    OUTLINED_FUNCTION_78_26();
    sub_1D5615F78();
    v39 = v45[7];
    sub_1D4FB8058();
    sub_1D550B1FC();
    OUTLINED_FUNCTION_53_35();
    sub_1D5615F78();
    v40 = v47 + v45[8];
    *v40 = v48;
    *(v40 + 16) = v49;
    OUTLINED_FUNCTION_78_26();
    sub_1D5615FD8();
    v41 = OUTLINED_FUNCTION_48_41();
    v42(v41);
    (v30)(v47 + v45[9], v2, v12);
    OUTLINED_FUNCTION_1_192();
    sub_1D550B250();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_0_257();
    sub_1D550B1A4(v47, v43);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D550B1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D550B1FC()
{
  result = qword_1EDD5C380;
  if (!qword_1EDD5C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C380);
  }

  return result;
}

uint64_t sub_1D550B250()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

void static MusicDaemon.Response.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v175 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v168 = v9;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B48, &qword_1D566E640);
  OUTLINED_FUNCTION_14(v170);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v174 = v13;
  v171 = type metadata accessor for MusicDaemon.Response.Context(0);
  v14 = OUTLINED_FUNCTION_14(v171);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v167 = v17 - v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v173 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v172 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  v169 = &v166 - v25;
  v26 = type metadata accessor for MusicDaemon.Response(0);
  v27 = OUTLINED_FUNCTION_14(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_145();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v166 - v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v166 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B50, &qword_1D566E648);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v166 + *(v42 + 56) - v43;
  v45 = &v166 - v43;
  sub_1D550B250();
  sub_1D550B250();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_5_148();
      v85 = v45;
      sub_1D550B250();
      v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v88 = *(v1 + v86);
      v87 = *(v1 + v86 + 8);
      v89 = *(v1 + v86 + 16);
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v108 = OUTLINED_FUNCTION_13_96();
        sub_1D55078B4(v108, v109, v110);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v1, v111);
        v45 = v85;
        goto LABEL_28;
      }

      v90 = *&v44[v86];
      v91 = *&v44[v86 + 8];
      v92 = v44[v86 + 16];
      OUTLINED_FUNCTION_1_192();
      v93 = v172;
      sub_1D550BCB4();
      static MusicDaemon.Response.Context.== infix(_:_:)();
      v95 = v94;
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v1, v96);
      if (v95)
      {
        if (v89 == 255)
        {
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v93, v143);
          if (v92 == 255)
          {
            sub_1D55078B4(v88, v87, 0xFFu);
            goto LABEL_40;
          }
        }

        else
        {
          v179 = v88;
          v180 = v87;
          v181 = v89;
          if (v92 != 255)
          {
            v176 = v90;
            v177 = v91;
            v178 = v92;
            v97 = OUTLINED_FUNCTION_13_96();
            sub_1D5507888(v97, v98, v99);
            OUTLINED_FUNCTION_83_24();
            sub_1D55078C8(v176, v177, v178);
            OUTLINED_FUNCTION_0_257();
            sub_1D550B1A4(v93, v100);
            OUTLINED_FUNCTION_64_34();
            v101 = OUTLINED_FUNCTION_13_96();
            sub_1D55078B4(v101, v102, v103);
LABEL_40:
            OUTLINED_FUNCTION_6_151();
            v84 = v85;
            goto LABEL_45;
          }

          v152 = OUTLINED_FUNCTION_13_96();
          sub_1D5507888(v152, v153, v154);
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v93, v155);
          v156 = OUTLINED_FUNCTION_13_96();
          sub_1D55078C8(v156, v157, v158);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v93, v127);
      }

      v128 = OUTLINED_FUNCTION_13_96();
      sub_1D55078B4(v128, v129, v130);
      sub_1D55078B4(v90, v91, v92);
      goto LABEL_40;
    case 2u:
      OUTLINED_FUNCTION_5_148();
      v46 = v45;
      sub_1D550B250();
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v65 = *&v34[v64];
      v48 = *&v34[v64 + 8];
      v66 = v34[v64 + 16];
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v104 = OUTLINED_FUNCTION_13_96();
        sub_1D55078B4(v104, v105, v106);
        OUTLINED_FUNCTION_0_257();
        v55 = v34;
        goto LABEL_24;
      }

      v67 = *&v44[v64];
      v68 = *&v44[v64 + 8];
      v69 = v44[v64 + 16];
      OUTLINED_FUNCTION_1_192();
      v70 = v173;
      sub_1D550BCB4();
      static MusicDaemon.Response.Context.== infix(_:_:)();
      v72 = v71;
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v34, v73);
      if ((v72 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v70, v126);
        goto LABEL_42;
      }

      if (v66 != 255)
      {
        v179 = v65;
        v180 = v48;
        v181 = v66;
        if (v69 != 255)
        {
          v176 = v67;
          v177 = v68;
          v178 = v69;
          v74 = OUTLINED_FUNCTION_13_96();
          sub_1D5507888(v74, v75, v76);
          OUTLINED_FUNCTION_83_24();
          sub_1D55078C8(v176, v177, v178);
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v70, v77);
          OUTLINED_FUNCTION_64_34();
          v78 = OUTLINED_FUNCTION_13_96();
          sub_1D55078B4(v78, v79, v80);
          goto LABEL_44;
        }

        v145 = OUTLINED_FUNCTION_13_96();
        sub_1D5507888(v145, v146, v147);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v70, v148);
        v149 = OUTLINED_FUNCTION_13_96();
        sub_1D55078C8(v149, v150, v151);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v70, v141);
      if (v69 != 255)
      {
        goto LABEL_42;
      }

      v142 = v65;
      goto LABEL_55;
    case 3u:
      OUTLINED_FUNCTION_5_148();
      sub_1D550B250();
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        OUTLINED_FUNCTION_1_192();
        sub_1D550BCB4();
        static MusicDaemon.Response.Context.== infix(_:_:)();
        OUTLINED_FUNCTION_23_76();
        v82 = v81;
        sub_1D550B1A4(v0, v81);
        sub_1D550B1A4(v2, v82);
        OUTLINED_FUNCTION_6_151();
        v84 = v45;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v2, v107);
      goto LABEL_28;
    case 4u:
      OUTLINED_FUNCTION_5_148();
      v46 = v45;
      OUTLINED_FUNCTION_20_5();
      sub_1D550B250();
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650) + 48);
      v58 = *(v3 + v56);
      v57 = *(v3 + v56 + 8);
      v59 = *(v3 + v56 + 16);
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1D55078C8(v58, v57, v59);
        sub_1D4E50004(v3, &qword_1EC7ECCA0, &qword_1D5622EB8);
        goto LABEL_25;
      }

      v60 = *&v44[v56];
      v173 = *&v44[v56 + 8];
      LODWORD(v175) = v44[v56 + 16];
      v61 = *(v170 + 48);
      v62 = v174;
      sub_1D4FB8058();
      sub_1D4FB8058();
      v63 = v171;
      OUTLINED_FUNCTION_57(v62, 1, v171);
      if (v124)
      {
        OUTLINED_FUNCTION_57(v62 + v61, 1, v63);
        if (v124)
        {
          sub_1D4E50004(v62, &qword_1EC7ECCA0, &qword_1D5622EB8);
LABEL_48:
          v179 = v58;
          v180 = v57;
          v181 = v59;
          v139 = v173;
          v176 = v60;
          v177 = v173;
          v140 = v175;
          v178 = v175;
          OUTLINED_FUNCTION_83_24();
          sub_1D55078C8(v60, v139, v140);
          sub_1D55078C8(v58, v57, v59);
          OUTLINED_FUNCTION_6_151();
          v84 = v46;
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_26_77();
      }

      else
      {
        v123 = v168;
        sub_1D4FB8150();
        OUTLINED_FUNCTION_57(v62 + v61, 1, v63);
        if (!v124)
        {
          OUTLINED_FUNCTION_1_192();
          v135 = v167;
          sub_1D550BCB4();
          OUTLINED_FUNCTION_0_33();
          static MusicDaemon.Response.Context.== infix(_:_:)();
          OUTLINED_FUNCTION_23_76();
          v136 = v62;
          v138 = v137;
          sub_1D550B1A4(v135, v137);
          sub_1D550B1A4(v123, v138);
          sub_1D4E50004(v136, &qword_1EC7ECCA0, &qword_1D5622EB8);
          if (v63)
          {
            goto LABEL_48;
          }

          OUTLINED_FUNCTION_26_77();
LABEL_44:
          OUTLINED_FUNCTION_6_151();
          v84 = v46;
LABEL_45:
          sub_1D550B1A4(v84, v83);
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_26_77();
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v123, v125);
      }

      sub_1D4E50004(v62, &qword_1EC7F7B48, &qword_1D566E640);
      goto LABEL_44;
    default:
      OUTLINED_FUNCTION_5_148();
      v46 = v45;
      sub_1D550B250();
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v49 = *&v37[v47];
      v48 = *&v37[v47 + 8];
      v50 = v37[v47 + 16];
      OUTLINED_FUNCTION_0_33();
      if (!swift_getEnumCaseMultiPayload())
      {
        v67 = *&v44[v47];
        v68 = *&v44[v47 + 8];
        v69 = v44[v47 + 16];
        OUTLINED_FUNCTION_1_192();
        v112 = v169;
        sub_1D550BCB4();
        static MusicDaemon.Response.Context.== infix(_:_:)();
        v114 = v113;
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v37, v115);
        if (v114)
        {
          if (v50 == 255)
          {
            OUTLINED_FUNCTION_0_257();
            sub_1D550B1A4(v112, v144);
            if (v69 == 255)
            {
              v142 = v49;
LABEL_55:
              sub_1D55078B4(v142, v48, 0xFFu);
              goto LABEL_44;
            }
          }

          else
          {
            v179 = v49;
            v180 = v48;
            v181 = v50;
            if (v69 != 255)
            {
              v176 = v67;
              v177 = v68;
              v178 = v69;
              OUTLINED_FUNCTION_65();
              sub_1D5507888(v116, v117, v118);
              OUTLINED_FUNCTION_83_24();
              sub_1D55078C8(v176, v177, v178);
              OUTLINED_FUNCTION_0_257();
              sub_1D550B1A4(v112, v119);
              OUTLINED_FUNCTION_64_34();
              OUTLINED_FUNCTION_65();
              sub_1D55078B4(v120, v121, v122);
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_65();
            sub_1D5507888(v159, v160, v161);
            OUTLINED_FUNCTION_0_257();
            sub_1D550B1A4(v112, v162);
            OUTLINED_FUNCTION_65();
            sub_1D55078C8(v163, v164, v165);
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v112, v131);
        }

LABEL_42:
        OUTLINED_FUNCTION_65();
        sub_1D55078B4(v132, v133, v134);
        sub_1D55078B4(v67, v68, v69);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_65();
      sub_1D55078B4(v51, v52, v53);
      OUTLINED_FUNCTION_0_257();
      v55 = v37;
LABEL_24:
      sub_1D550B1A4(v55, v54);
LABEL_25:
      v45 = v46;
LABEL_28:
      sub_1D4E50004(v45, &qword_1EC7F7B50, &qword_1D566E648);
LABEL_46:
      OUTLINED_FUNCTION_46();
      return;
  }
}