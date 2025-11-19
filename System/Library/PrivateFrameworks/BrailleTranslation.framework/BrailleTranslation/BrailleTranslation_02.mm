void sub_241E3152C()
{
  v1 = v0;
  v2 = *(*v0 + 232);
  v3 = v2();
  v5 = v4;
  v6 = *(*v0 + 160);
  v7 = (v6)(v3);
  v8 = [v7 length];

  if (v5 < v8)
  {
    v9 = v6();
    v2();
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = sub_241E2D9E8(v10 + 1);
      v13 = v12;

      swift_beginAccess();
      *(v1 + 48) = v11;
      *(v1 + 56) = v13;
      sub_241E2D244();
    }
  }
}

void sub_241E31638()
{
  v1 = v0;
  if ((*(*v0 + 232))() >= 1)
  {
    v2 = (*(*v0 + 160))();
    v3 = sub_241E2D9E8(0);
    v5 = v4;

    swift_beginAccess();
    *(v1 + 48) = v3;
    *(v1 + 56) = v5;
    sub_241E2D244();
  }
}

void sub_241E316F4()
{
  v1 = v0;
  v2 = (*(*v0 + 232))();
  v4 = v3;
  v5 = *(*v0 + 160);
  v6 = (v5)(v2);
  v7 = [v6 length];

  if (v4 < v7)
  {
    v8 = v5();
    v9 = v5();
    v10 = [v9 length];

    v11 = sub_241E2D9E8(v10);
    v13 = v12;

    swift_beginAccess();
    *(v1 + 48) = v11;
    *(v1 + 56) = v13;
    sub_241E2D244();
  }
}

void sub_241E3180C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v40 = *(*v2 + 184);
  v6 = v40();
  if (v8)
  {
    v6 = (*(*v2 + 232))(v6);
  }

  v9 = v7;
  v10 = *(*v2 + 160);
  v11 = (v10)(v6);
  v41 = v10;
  v12 = v10();
  v13 = [v12 length];

  if (__OFSUB__(v13, v9))
  {
    __break(1u);
  }

  else
  {
    sub_241E334D0(a1, a2);
    v14 = sub_241E357E4();

    v15 = [v11 rangeOfString:v14 options:1024 range:{v9, &v13[-v9]}];
    v17 = v16;

    if (v15 == sub_241E35714())
    {
      v18 = v41();
      v19 = [v18 length];
      sub_241E334D0(a1, a2);
      v20 = sub_241E357E4();

      v15 = [v18 rangeOfString:v20 options:1024 range:{0, v19}];
      v17 = v21;
    }

    if (v15 != sub_241E35714())
    {
      v22 = v40();
      v38 = v23;
      v39 = v17;
      v24 = v22;
      v26 = v25;
      v27 = (*(*v3 + 232))();
      v29 = v28;
      type metadata accessor for BRLTBrailleUIModel.Action();
      v30 = swift_allocObject();
      *(v30 + 16) = v24;
      *(v30 + 24) = v38;
      *(v30 + 32) = v26 & 1;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 1;
      *(v30 + 64) = v27;
      *(v30 + 72) = v29;
      *(v30 + 80) = 0;
      *(v30 + 88) = 0;
      *(v30 + 96) = 0;
      *(v30 + 104) = 1;
      v31 = v15 + v39;
      *(v30 + 112) = MEMORY[0x277D84F90];
      v32 = v40();
      if ((v33 & 1) == 0)
      {
        v32 = swift_beginAccess();
        *(v3 + 24) = v31;
        *(v3 + 32) = v31;
        *(v3 + 40) = 0;
      }

      v34 = (v41)(v32);
      v35 = sub_241E2D9E8(v31);
      v37 = v36;

      swift_beginAccess();
      *(v3 + 48) = v35;
      *(v3 + 56) = v37;
      sub_241E2D244();
      sub_241E32A28(v30);
    }
  }
}

unint64_t sub_241E31B20(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = *(*v2 + 184);
  v7 = v6();
  if (v8)
  {
    v7 = (*(*v2 + 232))(v7);
  }

  v9 = v7;
  v10 = *(*v2 + 160);
  v11 = v10();
  v12 = sub_241E334D0(a1, a2);
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v52 = sub_241E3318C(v12, v14, 0);
  v16 = [v52 matchesInString:v11 options:0 range:{0, v9}];
  sub_241E33740();
  v17 = sub_241E359A4();

  if (v17 >> 62)
  {
    v18 = sub_241E35B34();
    if (v18)
    {
LABEL_5:
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v53 = v10;
        if ((v17 & 0xC000000000000001) == 0)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v21 = v6;
            v22 = *(v17 + 8 * v20 + 32);
LABEL_10:
            v23 = v22;

            v24 = [v23 range];

            v6 = v21;
            v10 = v53;
            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      v21 = v6;
      v22 = MEMORY[0x245D01690](v20, v17);
      goto LABEL_10;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  v24 = sub_241E35714();

LABEL_13:
  if (v24 == sub_241E35714())
  {
    v11 = v10();
    v25 = [v11 length];
    v26 = sub_241E334D0(a1, a2);
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    a2 = sub_241E3318C(v26, v28, 0);
    v30 = [a2 matchesInString:v11 options:0 range:{0, v25}];
    sub_241E33740();
    v17 = sub_241E359A4();

    if (!(v17 >> 62))
    {
      v31 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_26:
    v31 = sub_241E35B34();
    if (v31)
    {
LABEL_16:
      v19 = __OFSUB__(v31, 1);
      result = v31 - 1;
      if (v19)
      {
        __break(1u);
      }

      else if ((v17 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v33 = *(v17 + 8 * result + 32);
LABEL_21:
          v34 = v33;

          v24 = [v34 range];

LABEL_28:
          goto LABEL_29;
        }

        __break(1u);
        return result;
      }

      v33 = MEMORY[0x245D01690](result, v17);
      goto LABEL_21;
    }

LABEL_27:

    v24 = sub_241E35714();

    goto LABEL_28;
  }

LABEL_29:
  v35 = sub_241E35714();
  if (v24 != v35)
  {
    v54 = v10;
    v36 = v6();
    v38 = v37;
    v39 = v6;
    v41 = v40;
    v42 = (*(*v3 + 232))();
    v44 = v43;
    type metadata accessor for BRLTBrailleUIModel.Action();
    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    *(v45 + 24) = v38;
    *(v45 + 32) = v41 & 1;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 1;
    *(v45 + 64) = v42;
    *(v45 + 72) = v44;
    *(v45 + 80) = 0;
    *(v45 + 88) = 0;
    *(v45 + 96) = 0;
    *(v45 + 104) = 1;
    *(v45 + 112) = MEMORY[0x277D84F90];
    v46 = v39();
    if ((v47 & 1) == 0)
    {
      v46 = swift_beginAccess();
      *(v3 + 24) = v24;
      *(v3 + 32) = v24;
      *(v3 + 40) = 0;
    }

    v48 = (v54)(v46);
    v49 = sub_241E2D9E8(v24);
    v51 = v50;

    swift_beginAccess();
    *(v3 + 48) = v49;
    *(v3 + 56) = v51;
    sub_241E2D244();
    sub_241E32A28(v45);
  }

  return v24 != v35;
}

void sub_241E32034(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = v1;
    v4 = *(*v1 + 160);
    v5 = v4();
    v6 = [v5 length];

    if (v6 > a1)
    {
      v7 = (*(*v2 + 184))();
      v9 = v8;
      v11 = v10;
      v12 = (*(*v2 + 232))();
      v14 = v13;
      type metadata accessor for BRLTBrailleUIModel.Action();
      v15 = swift_allocObject();
      *(v15 + 16) = v7;
      *(v15 + 24) = v9;
      *(v15 + 32) = v11 & 1;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 1;
      *(v15 + 64) = v12;
      *(v15 + 72) = v14;
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      *(v15 + 96) = 0;
      *(v15 + 104) = 1;
      *(v15 + 112) = MEMORY[0x277D84F90];
      v16 = v4();
      v17 = sub_241E2D9E8(a1);
      v19 = v18;

      swift_beginAccess();
      v2[6] = v17;
      v2[7] = v19;
      sub_241E2D244();
      sub_241E32A28(v15);
    }
  }
}

uint64_t sub_241E321C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_241E357E4();
  v14 = [v13 length];
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v14 >= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    if (a3 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a4 & ~(a4 >> 63);
    if (v14 < a4)
    {
      v17 = v14;
    }

    if (!__OFSUB__(v17, v16))
    {
      v18 = [v13 substringWithRange_];
      v7 = sub_241E357F4();
      v8 = v19;

      swift_beginAccess();
      v13 = *(v6 + 112);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 112) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v13 = sub_241E33268(0, v13[2] + 1, 1, v13);
  *(v6 + 112) = v13;
LABEL_12:
  v22 = v13[2];
  v21 = v13[3];
  if (v22 >= v21 >> 1)
  {
    v13 = sub_241E33268((v21 > 1), v22 + 1, 1, v13);
  }

  v13[2] = v22 + 1;
  v23 = &v13[6 * v22];
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = v7;
  v23[7] = v8;
  v23[8] = a5;
  v23[9] = a6;
  *(v6 + 112) = v13;
  return swift_endAccess();
}

uint64_t sub_241E32338()
{
  if ((*(v0 + 32) & 1) == 0 && (*(v0 + 56) & 1) == 0 && (*(v0 + 16) != *(v0 + 24) || *(v0 + 40) != *(v0 + 48)))
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    for (i = (v2 + 72); ; i += 6)
    {
      v5 = *(i - 3) == *(i - 1) && *(i - 2) == *i;
      if (!v5 && (sub_241E35B64() & 1) == 0)
      {
        break;
      }

      if (!--v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_241E323E0()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_241E32418(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v42 = a1;
    v5 = (v1 + 16);
    v44 = v1;
    v43 = *(*v1 + 160);

    swift_beginAccess();
    v6 = (v3 + 48 * v4 + 8);
    while (v4 <= *(v3 + 16))
    {
      v9 = *(v6 - 3);
      v11 = *(v6 - 1);
      v10 = *v6;
      v12 = v6[1];
      v13 = v6[2];

      v14 = sub_241E35874();

      v16 = v9 + v14;
      if (__OFADD__(v9, v14))
      {
        goto LABEL_20;
      }

      if (v16 < v9)
      {
        goto LABEL_21;
      }

      v17 = v43(v15);
      v18 = [v17 length];
      if (v18 < 0)
      {
        goto LABEL_22;
      }

      if (v18 >= v9)
      {
        v19 = v9;
      }

      else
      {
        v19 = v18;
      }

      if (v9 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v16 & ~(v16 >> 63);
      if (v18 < v16)
      {
        v21 = v18;
      }

      v22 = v21 - v20;
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_23;
      }

      v23 = sub_241E357E4();

      v24 = [v17 stringByReplacingCharactersInRange:v20 withString:{v22, v23}];

      if (!v24)
      {
        sub_241E357F4();
        v24 = sub_241E357E4();
      }

      --v4;
      v7 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

      v8 = *v5;
      *v5 = v7;

      v6 -= 6;
      if (!v4)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:

    v1 = v44;
    a1 = v42;
  }

  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);
  v28 = swift_beginAccess();
  *(v1 + 24) = v25;
  *(v1 + 32) = v26;
  *(v1 + 40) = v27;
  if (*(a1 + 80))
  {
    v29 = *(*v1 + 160);
    v30 = v1;
    v31 = v29(v28);
    v32 = (*(*v1 + 184))();
    if (v34)
    {
      v35 = v29(v32);
      v36 = [v35 length];

      v37 = v36;
    }

    else
    {
      v37 = v33;
    }

    v40 = sub_241E2D9E8(v37);
    v39 = v41;

    swift_beginAccess();
    *(v30 + 48) = v40;
    v1 = v30;
  }

  else
  {
    v38 = *(a1 + 64);
    v39 = *(a1 + 72);
    swift_beginAccess();
    *(v1 + 48) = v38;
  }

  *(v1 + 56) = v39;
  sub_241E2D244();
}

void sub_241E32744(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(a1 + 112);
  v5 = *(v4 + 16);
  if (v5)
  {
    v40 = a1;
    v6 = v1 + 2;
    v7 = v1;
    v41 = *(*v1 + 20);

    swift_beginAccess();
    v8 = (v4 + 72);
    while (1)
    {
      v11 = *(v8 - 5);
      v12 = *(v8 - 4);
      v14 = *(v8 - 1);
      v13 = *v8;

      v16 = v41(v15);
      v17 = [v16 length];
      if (v17 < 0)
      {
        break;
      }

      if (v17 >= v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = v17;
      }

      if (v11 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v12 & ~(v12 >> 63);
      if (v17 < v12)
      {
        v20 = v17;
      }

      v21 = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_25;
      }

      v22 = sub_241E357E4();

      v23 = [v16 stringByReplacingCharactersInRange:v19 withString:{v21, v22}];

      if (!v23)
      {
        sub_241E357F4();
        v23 = sub_241E357E4();
      }

      v9 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

      v10 = *v6;
      *v6 = v9;

      v8 += 6;
      if (!--v5)
      {

        v2 = v7;
        a1 = v40;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_17:
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v26 = *(a1 + 56);
    v27 = swift_beginAccess();
    v2[3] = v24;
    v2[4] = v25;
    *(v2 + 40) = v26;
    if (*(a1 + 104))
    {
      v28 = *(*v2 + 20);
      v29 = v28(v27);
      v30 = (*(*v2 + 23))();
      if (v32)
      {
        v33 = v28(v30);
        v34 = [v33 length];

        v35 = v34;
      }

      else
      {
        v35 = v31;
      }

      v38 = sub_241E2D9E8(v35);
      v37 = v39;

      swift_beginAccess();
      v2[6] = v38;
    }

    else
    {
      v36 = *(a1 + 88);
      v37 = *(a1 + 96);
      swift_beginAccess();
      v2[6] = v36;
    }

    v2[7] = v37;
    sub_241E2D244();
  }
}

uint64_t sub_241E32A28(uint64_t a1)
{
  v3 = (*(*v1 + 184))();
  v5 = v4;
  v7 = v6;
  v8 = (*(*v1 + 232))();
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7 & 1;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = 0;
  result = sub_241E32338();
  if ((result & 1) == 0)
  {
    sub_241E32E20();
    swift_beginAccess();
    v11 = v1[10];
    v1[10] = MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_241E32B0C()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *(v0 + 72);
    }

    result = sub_241E35B34();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  swift_beginAccess();
  v4 = *(v0 + 72);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 < 0)
  {
    v10 = *(v0 + 72);
  }

  if (!sub_241E35B34())
  {
    goto LABEL_19;
  }

LABEL_5:
  v5 = sub_241E3346C();
  if (v5)
  {
    goto LABEL_9;
  }

  v6 = *(v0 + 72);
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = __OFSUB__(v7, 1);
  result = v7 - 1;
  if (v8)
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v5 = sub_241E22158(result);
LABEL_9:
      v1 = v5;
      swift_endAccess();
      sub_241E32418(v1);
      swift_beginAccess();
      if (!(*(v0 + 80) >> 62))
      {
        break;
      }

LABEL_20:
      if ((sub_241E35B34() & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_22:
      v11 = sub_241E35B34();
      v8 = __OFSUB__(v11, 1);
      result = v11 - 1;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    sub_241E338A8(0, 0, v1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_241E32C90()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v1 < 0)
  {
    v5 = *(v0 + 80);
  }

  result = sub_241E35B34();
  if (result)
  {
LABEL_3:
    swift_beginAccess();
    sub_241E32D48();
    v4 = v3;
    swift_endAccess();
    sub_241E32744(v4);
    sub_241E32E20();
  }

  return result;
}

void sub_241E32D48()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x245D01690](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_241E35B34())
  {
    goto LABEL_20;
  }

  if (!sub_241E35B34())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_241E35B34();
LABEL_16:
    if (v4)
    {
      sub_241E33AB4(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_241E32E20()
{
  v1 = v0;
  swift_beginAccess();

  MEMORY[0x245D01530](v2);
  if (*((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_48:
    sub_241E359C4();
  }

  sub_241E359D4();
  swift_endAccess();
  while (1)
  {
    v3 = *(v1 + 72);
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v10 = *(v1 + 72);
      }

      result = sub_241E35B34();
      if (result < 101)
      {
        return result;
      }
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 101)
      {
        return result;
      }
    }

    swift_beginAccess();
    v5 = *(v1 + 72);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      break;
    }

    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
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
      goto LABEL_48;
    }

LABEL_7:
    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245D01690](0, v5);
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v7 = *(v5 + 32);

      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
LABEL_10:
        v9 = *(v8 + 16);
        if (!v9)
        {
          goto LABEL_46;
        }

        goto LABEL_25;
      }
    }

    if (!sub_241E35B34())
    {
      goto LABEL_46;
    }

    if (sub_241E35B34() < 1)
    {
      goto LABEL_47;
    }

    v9 = sub_241E35B34();
LABEL_25:
    v12 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 72) = v5;
    if (v6)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v14 = (v5 & 0xFFFFFFFFFFFFFF8), v12 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v6)
      {
        sub_241E35B34();
      }

      else
      {
        v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = sub_241E35B04();
      *(v1 + 72) = v5;
      v14 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    v16 = v14[4];

    if (v5 >> 62)
    {
      result = sub_241E35B34();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_51;
      }

      memmove(v14 + 4, v14 + 5, 8 * (result - 1));
      v19 = sub_241E35B34();
      v18 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v17 = v14[2];
      memmove(v14 + 4, v14 + 5, 8 * v17 - 8);
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_45;
      }
    }

    v14[2] = v18;
    *(v1 + 72) = v5;
    swift_endAccess();
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    v11 = *(v1 + 72);
  }

  result = sub_241E35B34();
  if (result)
  {
    result = sub_241E35B34();
    if (!result)
    {
      goto LABEL_50;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_241E33114()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t sub_241E33144()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

id sub_241E3318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_241E357E4();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_241E35754();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void *sub_241E33268(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC747C8, &qword_241E39048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC747D0, &unk_241E39050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_241E333B0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_241E35B34();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_241E35B04();
    *v1 = result;
  }

  return result;
}

uint64_t sub_241E3346C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_241E23108(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_241E334D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = sub_241E357E4();
  v5 = [v3 escapedPatternForString_];

  sub_241E357F4();
  v6 = sub_241E35874();
  if (!v6)
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74718, &unk_241E38F50);
    sub_241E2CAAC();
    sub_241E357D4();

    sub_241E0F234();
    v17 = sub_241E35A54();

    return v17;
  }

  v7 = v6;
  v18 = MEMORY[0x277D84F90];
  result = sub_241E28B74(0, v6 & ~(v6 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v18;
    do
    {
      v10 = sub_241E35954();
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_241E28B74((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v9 = v19;
      }

      *(v9 + 16) = v13 + 1;
      v14 = v9 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      sub_241E35884();
      --v7;
    }

    while (v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_241E33740()
{
  result = qword_27EC747C0;
  if (!qword_27EC747C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC747C0);
  }

  return result;
}

uint64_t sub_241E3378C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for BRLTBrailleUIModel.Action();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_241E35B34();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_241E35B34();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_241E338A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_241E35B34();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_241E35B34();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_241E333B0(result);

  return sub_241E3378C(v6, v5, 1, v3);
}

uint64_t sub_241E339B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BRLTBrailleUIModel.Action();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_241E35B34();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_241E35B34();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_241E33AB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_241E35B34();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_241E35B34();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_241E333B0(result);

  return sub_241E339B8(v4, v2, 0);
}

uint64_t sub_241E33BC0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_241E33C00()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_241E33C4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_241E33CD4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_241E33D14(char a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0xE000000000000000;
  v3 = MEMORY[0x277D84F90];
  *(result + 56) = MEMORY[0x277D84F90];
  *(result + 64) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = 0;
  *(result + 72) = a1;
  return result;
}

uint64_t sub_241E33D64(char a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 56) = MEMORY[0x277D84F90];
  *(v1 + 64) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = 0;
  *(v1 + 72) = a1;
  return v1;
}

void *sub_241E33D8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = 1;
  v5 = [objc_allocWithZone(BRLTJMecabraWrapper) initWithUnitTesting_];
  v6 = *(v2 + 48);
  *(v2 + 48) = v5;

  swift_beginAccess();
  v7 = *(v2 + 56);
  v8 = MEMORY[0x277D84F90];
  *(v2 + 56) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v9 = *(v2 + 64);
  *(v2 + 64) = v8;

  swift_beginAccess();
  *(v2 + 40) = 0;
  swift_beginAccess();
  v10 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  if (sub_241E35874() < 33)
  {
  }

  else
  {
    sub_241E358A4();
    v11 = sub_241E35984();
    MEMORY[0x245D013C0](v11);
  }

  v13 = *(v2 + 48);
  if (!v13)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13;
  v15 = sub_241E357E4();
  [v14 analyzeString_];

  result = *(v2 + 48);
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (![result moveToNextCandidate])
  {

    swift_beginAccess();
    v36 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 56) = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_241E0EDB0(0, *(v36 + 2) + 1, 1, v36);
      *(v2 + 56) = v36;
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v36 = sub_241E0EDB0((v38 > 1), v39 + 1, 1, v36);
    }

    *(v36 + 2) = v39 + 1;
    v40 = &v36[16 * v39];
    *(v40 + 4) = 0;
    *(v40 + 5) = 0xE000000000000000;
    *(v2 + 56) = v36;
    swift_endAccess();
    swift_beginAccess();
    v31 = *(v2 + 64);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 64) = v31;
    if ((v41 & 1) == 0)
    {
      v31 = sub_241E0EDB0(0, *(v31 + 2) + 1, 1, v31);
      *(v2 + 64) = v31;
    }

    v43 = *(v31 + 2);
    v42 = *(v31 + 3);
    if (v43 >= v42 >> 1)
    {
      v31 = sub_241E0EDB0((v42 > 1), v43 + 1, 1, v31);
    }

    *(v31 + 2) = v43 + 1;
    v44 = &v31[16 * v43];
    *(v44 + 4) = a1;
    *(v44 + 5) = a2;
    goto LABEL_27;
  }

  result = *(v2 + 48);
  if (!result)
  {
    goto LABEL_30;
  }

  v16 = [result getCurrentCandidateSurface];
  v17 = sub_241E357F4();
  v19 = v18;

  swift_beginAccess();
  v20 = *(v2 + 56);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 56) = v20;
  if ((v21 & 1) == 0)
  {
    v20 = sub_241E0EDB0(0, *(v20 + 2) + 1, 1, v20);
    *(v2 + 56) = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_241E0EDB0((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[16 * v23];
  *(v24 + 4) = v17;
  *(v24 + 5) = v19;
  *(v2 + 56) = v20;
  result = swift_endAccess();
  v25 = *(v2 + 48);
  if (v25)
  {
    v26 = v25;

    v27 = [v26 getCurrentCandidateAnalysisString];

    v28 = sub_241E357F4();
    v30 = v29;

    swift_beginAccess();
    v31 = *(v2 + 64);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 64) = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_241E0EDB0(0, *(v31 + 2) + 1, 1, v31);
      *(v2 + 64) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = sub_241E0EDB0((v33 > 1), v34 + 1, 1, v31);
    }

    *(v31 + 2) = v34 + 1;
    v35 = &v31[16 * v34];
    *(v35 + 4) = v28;
    *(v35 + 5) = v30;
LABEL_27:
    *(v2 + 64) = v31;
    return swift_endAccess();
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_241E34248()
{
  swift_beginAccess();
  *(v0 + 16) = 0;
  v1 = *(v0 + 48);
  *(v0 + 48) = 0;

  swift_beginAccess();
  v2 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
}

uint64_t sub_241E342AC()
{
  v1 = sub_241E357A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 184))(v4);
  swift_beginAccess();
  if (v7 != *(v0[7] + 16) - 1)
  {
    return 1;
  }

  v8 = v0[6];
  if (v8 && [v8 moveToNextCandidate])
  {
    result = v0[6];
    if (result)
    {
      v10 = [result getCurrentCandidateSurface];
      v11 = sub_241E357F4();
      v13 = v12;

      swift_beginAccess();
      v14 = v0[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[7] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_241E0EDB0(0, *(v14 + 2) + 1, 1, v14);
        v0[7] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v37 = v17 + 1;
        v34 = sub_241E0EDB0((v16 > 1), v17 + 1, 1, v14);
        v18 = v37;
        v14 = v34;
      }

      *(v14 + 2) = v18;
      v19 = &v14[16 * v17];
      *(v19 + 4) = v11;
      *(v19 + 5) = v13;
      v0[7] = v14;
      swift_endAccess();
      result = v0[6];
      if (result)
      {
        v20 = [result getCurrentCandidateAnalysisString];
        v21 = sub_241E357F4();
        v23 = v22;

        swift_beginAccess();
        v24 = v0[8];
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v0[8] = v24;
        if ((v25 & 1) == 0)
        {
          v24 = sub_241E0EDB0(0, *(v24 + 2) + 1, 1, v24);
          v0[8] = v24;
        }

        v27 = *(v24 + 2);
        v26 = *(v24 + 3);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v37 = v27 + 1;
          v35 = sub_241E0EDB0((v26 > 1), v27 + 1, 1, v24);
          v28 = v37;
          v24 = v35;
        }

        *(v24 + 2) = v28;
        v29 = &v24[16 * v27];
        *(v29 + 4) = v21;
        *(v29 + 5) = v23;
        v0[8] = v24;
        swift_endAccess();
        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v30 = sub_241E247EC();
    swift_beginAccess();
    (*(v2 + 16))(v6, v30, v1);
    v31 = sub_241E35784();
    v32 = sub_241E35A04();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_241DFD000, v31, v32, "Candidate Manager: no more candidates", v33, 2u);
      MEMORY[0x245D02050](v33, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  return result;
}

uint64_t sub_241E3462C()
{
  result = (*(*v0 + 328))();
  if (result)
  {
    result = swift_beginAccess();
    v2 = v0[5];
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v0[5] = v4;
    }
  }

  return result;
}

uint64_t sub_241E346E0()
{
  result = (*(*v0 + 344))();
  if (result)
  {
    result = swift_beginAccess();
    v2 = v0[5];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v0[5] = v4;
    }
  }

  return result;
}

uint64_t sub_241E34754()
{
  v1 = [objc_opt_self() sharedInstance];
  (*(*v0 + 376))();
  v2 = sub_241E357E4();

  v3 = sub_241E357E4();
  v4 = [v1 descriptionOfWord:v2 forLanguage:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_241E357F4();

  return v5;
}

uint64_t sub_241E3485C()
{
  v1 = sub_241E357A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(BRLTJJapaneseProcessor) init];
  (*(*v0 + 360))();
  v7 = sub_241E357E4();

  v8 = [v6 spacedYomiOfWordDescription_];

  v9 = sub_241E357F4();
  v11 = v10;

  v12 = sub_241E247EC();
  swift_beginAccess();
  (*(v2 + 16))(v5, v12, v1);

  v13 = sub_241E35784();
  v14 = sub_241E35A04();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_241E22990(v9, v11, &v18);
    _os_log_impl(&dword_241DFD000, v13, v14, "Candidate Manager: current description = '%s'", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245D02050](v16, -1, -1);
    MEMORY[0x245D02050](v15, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_241E34ADC()
{
  v1 = sub_241E357A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 184))(v4);
  result = swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v0[7];
  if (v7 >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = v9 + 16 * v7;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  v13 = sub_241E247EC();
  swift_beginAccess();
  (*(v2 + 16))(v6, v13, v1);

  v14 = sub_241E35784();
  v15 = sub_241E35A04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_241E22990(v11, v12, &v19);
    _os_log_impl(&dword_241DFD000, v14, v15, "Candidate Manager: current candidate = '%s'", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245D02050](v17, -1, -1);
    MEMORY[0x245D02050](v16, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
  return v11;
}

void sub_241E34D20()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = *(*v0 + 376);
    v3 = v1;
    v2();
    v4 = sub_241E357E4();

    [v3 learnCandidate_];
  }
}

uint64_t sub_241E34DDC()
{
  v1 = *(*v0 + 160);
  v1();
  v1();

  v3 = (*(*v0 + 184))(v2);
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[8];
    if (v3 < *(v5 + 16))
    {
      v6 = v5 + 16 * v3;
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);

      sub_241E35874();

      v9 = sub_241E358A4();

      v11 = (v1)(v10);
      v13 = sub_241E0FC00(v9, v11, v12);
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = MEMORY[0x245D013C0](v13, v15, v17, v19);

      return v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241E34F60()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return v0;
}

uint64_t sub_241E34F98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

void BRLTTranslatorClassIsValid_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "%@ doesn't conform to BRLTTranslatorProtocol", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}