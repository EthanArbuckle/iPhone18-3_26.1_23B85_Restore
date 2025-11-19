void sub_22C3CD9A4()
{
  sub_22C36BA7C();
  v5 = v4;
  v6 = sub_22C9070DC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C36BB34();
  v12 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v19);
  sub_22C377318();
  v20 = *(v5 + 16);
  sub_22C3D34DC();
  if (__OFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v59 = v22;
  v60 = v1;
  sub_22C3D834C(v21 + v20, 1);
  v2 = *v0;
  v1 = *(v9 + 72);
  v23 = *(*v0 + 16);
  v24 = (*(*v0 + 24) >> 1) - v23;
  v61 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = sub_22C3D1564(&v62, v2 + v61 + v1 * v23, v24, v5);
  if (v25 < v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25)
  {
    v26 = *(v2 + 16);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v2 + 16) = v28;
  }

  if (v25 != v24)
  {

LABEL_8:
    *v0 = v2;
    sub_22C36CC48();
    return;
  }

LABEL_11:
  v58 = *(v2 + 16);
  if (!v63)
  {
LABEL_34:
    v56 = 0;
    v30 = v59;
LABEL_16:
    v31 = sub_22C37B504();
    sub_22C36C640(v31, v32, v33, v6);
    v52 = (v9 + 8);
    v53 = (v9 + 16);
    v9 += 32;
    v34 = &qword_27D9BAA18;
    v35 = &qword_22C911C40;
    v54 = v18;
    while (1)
    {
      sub_22C3D3364();
      sub_22C369A54(v30);
      if (v36)
      {
        break;
      }

      sub_22C386520();
      sub_22C3AC228(v37, v38, v39);
      v55 = *(v2 + 24) >> 1;
      if (v55 < v58 + 1)
      {
        sub_22C5916E4();
        v2 = v50;
        sub_22C3D353C(v50);
        v55 = v51;
      }

      v57 = v2 + v61 + v1 * v58;
      while (1)
      {
        sub_22C3D3364();
        sub_22C369A54(v18);
        if (v36)
        {
          sub_22C386520();
          sub_22C3AC228(v47, v48, v49);
          goto LABEL_30;
        }

        v40 = v18;
        v18 = v35;
        v41 = v34;
        v42 = *v9;
        v43 = v60;
        (*v9)(v60, v40, v6);
        if (v58 >= v55)
        {
          break;
        }

        sub_22C3AC228(v3, v41, v18);
        v42(v57, v43, v6);
        if (v56)
        {
          if (v56 - 1 >= *(v62 + 16))
          {
            goto LABEL_33;
          }

          sub_22C3D3824(v62);
          (*v53)(v3);
        }

        else
        {
          v56 = 0;
        }

        v34 = v41;
        v44 = sub_22C37B504();
        sub_22C36C640(v44, v45, v46, v6);
        v57 += v1;
        ++v58;
        v35 = v18;
        v18 = v54;
      }

      (*v52)(v43, v6);
      v34 = v41;
      v35 = v18;
      v18 = v54;
LABEL_30:
      v30 = v59;
      *(v2 + 16) = v58;
    }

    sub_22C3D34F4();

    sub_22C3AC228(v30, &qword_27D9BAA18, &qword_22C911C40);
    goto LABEL_8;
  }

  v29 = v63 - 1;
  v30 = v59;
  if (__OFSUB__(v63, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v29 < *(v62 + 16))
  {
    sub_22C3D3824(v62);
    (*(v9 + 16))(v3);
    goto LABEL_16;
  }

LABEL_37:
  __break(1u);
}

void sub_22C3CDDE8()
{
  sub_22C36BA7C();
  v4 = v3;
  sub_22C3704C4();
  v5 = sub_22C90430C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C3A5908(&qword_27D9BB638, &unk_22C9150C0);
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v61 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = *(v4 + 16);
  sub_22C3D34DC();
  if (__OFADD__(v24, v23))
  {
    __break(1u);
  }

  else
  {
    v59 = v25;
    v60 = v13;
    v62 = v8;
    v64 = v0;
    sub_22C3D83DC(v24 + v23, 1);
    v63 = v1;
    v2 = *v1;
    v26 = *(*v1 + 16);
    v27 = *(*v1 + 24) >> 1;
    v1 = v27 - v26;
    v28 = *(v4 + 16);
    if (v28)
    {
      if (v1 >= v28)
      {
        v29 = *(v4 + 16);
      }

      else
      {
        v29 = (v27 - v26);
      }

      v30 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v31 = *(v62 + 72);
      swift_arrayInitWithCopy();
      if (v29 >= v23)
      {
        if (v27 != v26)
        {
          v32 = *(v2 + 16);
          v33 = __OFADD__(v32, v29);
          v34 = v29 + v32;
          if (v33)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          *(v2 + 16) = v34;
          goto LABEL_12;
        }

LABEL_11:
        v29 = 0;
LABEL_12:
        if (v29 != v1)
        {

LABEL_14:
          *v63 = v2;
          sub_22C36CC48();
          return;
        }

        goto LABEL_17;
      }
    }

    else if (!v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_17:
  v35 = *(v2 + 16);
  v36 = *(v4 + 16);
  if (v1 == v36)
  {
    v37 = 1;
    v38 = v62;
    goto LABEL_21;
  }

  if (v1 < v36)
  {
    v38 = v62;
    (*(v62 + 16))(v22, v4 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v1, v5);
    v37 = 0;
    ++v1;
LABEL_21:
    sub_22C36C640(v22, v37, 1, v5);
    v39 = (v38 + 32);
    v53 = (v38 + 8);
    v54 = (v38 + 16);
    while (1)
    {
      v40 = v59;
      sub_22C3D3364();
      sub_22C36D0A8(v40, 1, v5);
      if (v41)
      {
        break;
      }

      sub_22C3AC228(v40, &qword_27D9BB638, &unk_22C9150C0);
      v57 = *(v2 + 24) >> 1;
      if (v57 < v35 + 1)
      {
        sub_22C5921DC();
        v2 = v51;
        sub_22C3D353C(v51);
        v57 = v52;
      }

      v42 = v61;
      v43 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v55 = v4 + v43;
      v56 = v2 + v43;
      while (1)
      {
        sub_22C3D3364();
        sub_22C36D0A8(v42, 1, v5);
        if (v41)
        {
          sub_22C3AC228(v42, &qword_27D9BB638, &unk_22C9150C0);
          goto LABEL_35;
        }

        v44 = v42;
        v45 = *v39;
        v46 = v60;
        (*v39)(v60, v44, v5);
        if (v35 >= v57)
        {
          break;
        }

        sub_22C3AC228(v22, &qword_27D9BB638, &unk_22C9150C0);
        v47 = v35;
        v48 = *(v62 + 72);
        v58 = v47;
        v45(v56 + v48 * v47, v46, v5);
        v49 = *(v4 + 16);
        if (v1 == v49)
        {
          v50 = 1;
          v42 = v61;
        }

        else
        {
          v42 = v61;
          if (v1 >= v49)
          {
            goto LABEL_38;
          }

          (*v54)(v22, v55 + v48 * v1, v5);
          v50 = 0;
          ++v1;
        }

        sub_22C36C640(v22, v50, 1, v5);
        v35 = v58 + 1;
      }

      (*v53)(v46, v5);
LABEL_35:
      *(v2 + 16) = v35;
    }

    sub_22C3AC228(v22, &qword_27D9BB638, &unk_22C9150C0);

    sub_22C3AC228(v40, &qword_27D9BB638, &unk_22C9150C0);
    goto LABEL_14;
  }

LABEL_39:
  __break(1u);
}

void sub_22C3CE380(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D8484(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_22C3CE468(uint64_t a1)
{
  v2 = sub_22C36E2B8(a1);
  v3 = sub_22C36E2B8(*v1);
  v4 = __OFADD__(v3, v2);
  result = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_22C3D84CC(result);
  v6 = *v1;
  v7 = *v1 & 0xFFFFFFFFFFFFFF8;
  v8 = *(v7 + 0x10);
  v9 = *(v7 + 0x18) >> 1;
  sub_22C3D2FDC();
  v11 = v10;

  if (v11 < v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v1 = v6;
    return result;
  }

  v12 = *(v7 + 16);
  v4 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v4)
  {
    *(v7 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_22C3CE540()
{
  sub_22C36BA7C();
  sub_22C388C54();
  v5 = sub_22C9069BC();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36BB34();
  v9 = sub_22C3A5908(&qword_27D9BB630, &unk_22C90F860);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v13);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v14);
  sub_22C386F28();
  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_22C38B178();
  sub_22C3D8584(v16, v17);
  sub_22C38B788();
  sub_22C38C330();
  sub_22C3D1E18();
  if (v18 < v0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18)
  {
    sub_22C3D362C();
    if (v15)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v19;
  }

  if (v18 != v4)
  {
    sub_22C3D3604();
LABEL_8:
    sub_22C3D3620();
    sub_22C36CC48();
    return;
  }

LABEL_11:
  sub_22C374980();
  if (v20)
  {
    sub_22C369A7C();
LABEL_19:
    v24 = *(v48 + 48);
    v25 = sub_22C3765AC();
    v27 = v26(v25);
    v28 = 0;
LABEL_20:
    sub_22C37EFF4(v27, v28);
    sub_22C3D37D8();
LABEL_21:
    sub_22C386994();
    sub_22C3D388C();
    sub_22C369A54(v0);
    if (!v29)
    {
      v0 = &qword_27D9BB630;
      sub_22C386520();
      sub_22C3AC228(v30, v31, v32);
      sub_22C37FC34();
      if (v33 != v15)
      {
        sub_22C3D36A4();
        sub_22C595464();
        sub_22C37F6E8(v47);
      }

      sub_22C37008C();
      while (1)
      {
        sub_22C371510();
        sub_22C3D3364();
        sub_22C369A54(v2);
        if (v29)
        {
          break;
        }

        v34 = sub_22C379EF4();
        (qword_27D9BB630)(v34);
        sub_22C37B928();
        if (v33 == v15)
        {
          v45 = sub_22C3797E0();
          v46(v45);
          sub_22C37EB84();
LABEL_37:
          sub_22C3D37F8();
          goto LABEL_21;
        }

        sub_22C3AC228(v49, &qword_27D9BB630, &unk_22C90F860);
        v35 = sub_22C385518();
        (qword_27D9BB630)(v35);
        if (!v3)
        {
          sub_22C3D35B0();
          while (1)
          {
            v37 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v37 >= v36)
            {
              sub_22C3D34E8();
              goto LABEL_34;
            }

            sub_22C3D3670(v37);
          }

          __break(1u);
          goto LABEL_39;
        }

        sub_22C3881B0();
        sub_22C3D3464();
        v38 = *(v48 + 48);
        v39 = sub_22C38A84C();
        v41 = v40(v39);
        v42 = 0;
LABEL_34:
        sub_22C36FB7C(v41, v42);
        v0 = &qword_27D9BB630;
      }

      v43 = sub_22C36D384();
      sub_22C3AC228(v43, v44, &unk_22C90F860);
      goto LABEL_37;
    }

LABEL_39:
    sub_22C3D34F4();
    sub_22C372098();
    goto LABEL_8;
  }

LABEL_14:
  sub_22C381230();
  while (1)
  {
    v22 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_22C3D34E8();
      goto LABEL_20;
    }

    sub_22C38B40C(v22);
    if (v23)
    {
      sub_22C3714F4();
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22C3CE870()
{
  sub_22C36BA7C();
  sub_22C388C54();
  v5 = sub_22C908C5C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36BB34();
  v9 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v13);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v14);
  sub_22C386F28();
  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_22C38B178();
  sub_22C3D859C(v16, v17);
  sub_22C38B788();
  v19 = sub_22C3D248C(v51, v18, v4, v3);
  if (v19 < v0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v19)
  {
    sub_22C3D362C();
    if (v15)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v20;
  }

  if (v19 != v4)
  {
    sub_22C3D3604();
LABEL_8:
    sub_22C3D3620();
    sub_22C36CC48();
    return;
  }

LABEL_11:
  sub_22C374980();
  if (v21)
  {
    sub_22C369A7C();
LABEL_19:
    v25 = *(v49 + 56);
    v26 = sub_22C3765AC();
    v28 = v27(v26);
    v29 = 0;
LABEL_20:
    sub_22C37EFF4(v28, v29);
    sub_22C3D37D8();
LABEL_21:
    sub_22C386994();
    sub_22C3D388C();
    sub_22C369A54(v0);
    if (!v30)
    {
      v0 = &qword_27D9BB628;
      sub_22C386520();
      sub_22C3AC228(v31, v32, v33);
      sub_22C37FC34();
      if (v34 != v15)
      {
        sub_22C3D36A4();
        sub_22C59539C();
        sub_22C37F6E8(v48);
      }

      sub_22C37008C();
      while (1)
      {
        sub_22C371510();
        sub_22C3D3364();
        sub_22C369A54(v2);
        if (v30)
        {
          break;
        }

        v35 = sub_22C379EF4();
        (qword_27D9BB628)(v35);
        sub_22C37B928();
        if (v34 == v15)
        {
          v46 = sub_22C3797E0();
          v47(v46);
          sub_22C37EB84();
LABEL_37:
          sub_22C3D37F8();
          goto LABEL_21;
        }

        sub_22C3AC228(v50, &qword_27D9BB628, &unk_22C920580);
        v36 = sub_22C385518();
        (qword_27D9BB628)(v36);
        if (!v3)
        {
          sub_22C3D35B0();
          while (1)
          {
            v38 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v38 >= v37)
            {
              sub_22C3D34E8();
              goto LABEL_34;
            }

            sub_22C3D3670(v38);
          }

          __break(1u);
          goto LABEL_39;
        }

        sub_22C3881B0();
        sub_22C3D3464();
        v39 = *(v49 + 56);
        v40 = sub_22C38A84C();
        v42 = v41(v40);
        v43 = 0;
LABEL_34:
        sub_22C36FB7C(v42, v43);
        v0 = &qword_27D9BB628;
      }

      v44 = sub_22C36D384();
      sub_22C3AC228(v44, v45, &unk_22C920580);
      goto LABEL_37;
    }

LABEL_39:
    sub_22C3D34F4();
    sub_22C372098();
    goto LABEL_8;
  }

LABEL_14:
  sub_22C381230();
  while (1)
  {
    v23 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      sub_22C3D34E8();
      goto LABEL_20;
    }

    sub_22C38B40C(v23);
    if (v24)
    {
      sub_22C3714F4();
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22C3CEB98()
{
  sub_22C36BA7C();
  v4 = sub_22C388C54();
  DecorationTuple = type metadata accessor for QueryDecorationTuple(v4);
  v6 = sub_22C369824(DecorationTuple);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36BB34();
  v11 = sub_22C3A5908(&qword_27D9BB5F0, &qword_22C90F848);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v15);
  sub_22C3D347C();
  MEMORY[0x28223BE20](v16);
  sub_22C377318();
  v17 = *(v3 + 16);
  sub_22C3D34DC();
  if (__OFADD__(v18, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v49 = v19;
  v50 = DecorationTuple;
  sub_22C3D85B4(v18 + v17, 1);
  sub_22C3D3510();
  sub_22C3D37CC();
  sub_22C3D2980();
  if (v20 < v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v20)
  {
    sub_22C3D362C();
    if (v23)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v0 + 16) = v21;
  }

  if (v20 != v8)
  {
    sub_22C36A674();
LABEL_8:
    sub_22C3D3620();
    sub_22C36CC48();
    return;
  }

LABEL_11:
  sub_22C3D36BC();
  if (v24)
  {
    sub_22C369A7C();
    v45 = v25;
LABEL_19:
    v29 = *(v46 + 48);
    sub_22C3D3560();
LABEL_20:
    v48 = v8;
    v30 = sub_22C37B504();
    sub_22C36C640(v30, v31, v32, v50);
    while (2)
    {
      sub_22C3D3364();
      sub_22C36D0A8(v49, 1, v50);
      if (!v33)
      {
        sub_22C3AC228(v49, &qword_27D9BB5F0, &qword_22C90F848);
        sub_22C385E48();
        if (v34 != v23)
        {
          sub_22C3D36A4();
          sub_22C596128();
          sub_22C37F6E8(v43);
          v47 = v44;
        }

        v35 = v50;
        while (1)
        {
          sub_22C371510();
          sub_22C3D3364();
          sub_22C36D0A8(v1, 1, v35);
          if (v33)
          {
            break;
          }

          sub_22C372FCC();
          sub_22C3D340C();
          v36 = v48;
          if (v48 >= v47)
          {
            sub_22C3D314C();
            goto LABEL_37;
          }

          sub_22C3AC228(v2, &qword_27D9BB5F0, &qword_22C90F848);
          sub_22C3D340C();
          if (!v3)
          {
            v37 = v45;
            while (1)
            {
              v38 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v38 >= v37)
              {
                sub_22C3D34E8();
                goto LABEL_33;
              }

              sub_22C3D3670(v38);
            }

            __break(1u);
            goto LABEL_39;
          }

          sub_22C3D3464();
          v39 = *(v46 + 48);
          sub_22C3D3560();
LABEL_33:
          ++v48;
          v40 = sub_22C37B504();
          v35 = v50;
          sub_22C36C640(v40, v41, v42, v50);
        }

        sub_22C3AC228(v1, &qword_27D9BB5F0, &qword_22C90F848);
        v36 = v48;
LABEL_37:
        *(v0 + 16) = v36;
        continue;
      }

      break;
    }

LABEL_39:
    sub_22C3D34F4();
    sub_22C3D375C();
    goto LABEL_8;
  }

LABEL_14:
  v26 = (v22 + 64) >> 6;
  v45 = v26;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
      sub_22C3D34E8();
      goto LABEL_20;
    }

    sub_22C38B40C(v27);
    if (v28)
    {
      sub_22C3714F4();
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22C3CEF98(uint64_t a1)
{
  v4 = sub_22C36A6FC(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C3D85E4(v4, 1);
  sub_22C3D3554();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22C3725EC();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22C37B1BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_22C3D3548();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22C3CF0DC()
{
  sub_22C36BA7C();
  v4 = v3;
  v100 = sub_22C3A5908(&qword_27D9BB5E0, &qword_22C91D710);
  v5 = sub_22C369824(v100);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v84 - v10;
  v12 = type metadata accessor for DialogValuesResolver.CollectedValue(0);
  v13 = sub_22C3699B8(v12);
  v99 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v98 = v18 - v17;
  v96 = sub_22C9093BC();
  v19 = sub_22C369824(v96);
  v101 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v97 = v24 - v23;
  v25 = sub_22C3A5908(&qword_27D9BB5E8, &qword_22C90F840);
  v26 = sub_22C369914(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v104 = v29;
  sub_22C369930();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v84 - v32;
  MEMORY[0x28223BE20](v31);
  sub_22C377318();
  v34 = *(v4 + 16);
  sub_22C3D34DC();
  if (__OFADD__(v35, v34))
  {
    __break(1u);
    goto LABEL_10;
  }

  v103 = v11;
  sub_22C3D8644(v35 + v34, 1);
  v2 = *v0;
  v11 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v36 = *(v7 + 72);
  v37 = *(*v0 + 16);
  v38 = (*(*v0 + 24) >> 1) - v37;
  v39 = &v11[*v0];
  v102 = v36;
  v40 = sub_22C3D2CF8(&v105, &v39[v36 * v37], v38, v4);
  if (v40 < v34)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v40)
  {
    v43 = *(v2 + 16);
    v44 = __OFADD__(v43, v40);
    v45 = v43 + v40;
    if (v44)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v45;
  }

  if (v40 != v38)
  {
    sub_22C3D3604();
LABEL_8:
    *v0 = v2;
    sub_22C36CC48();
    return;
  }

LABEL_11:
  v46 = *(v2 + 16);
  v41 = v106;
  v91 = v105;
  v42 = v107;
  v38 = v108;
  v88 = v106;
  v86 = v33;
  v85 = v11;
  v84[1] = v107;
  v95 = v46;
  if (v109)
  {
    v47 = (v109 - 1) & v109;
    v48 = __clz(__rbit64(v109)) | (v108 << 6);
    v87 = (v107 + 64) >> 6;
LABEL_19:
    v51 = v91;
    v52 = v101;
    v54 = v96;
    v53 = v97;
    (*(v101 + 16))(v97, *(v91 + 48) + *(v101 + 72) * v48, v96);
    v55 = *(v51 + 56);
    v56 = *(v99 + 72);
    sub_22C3860F4();
    sub_22C3D33B8();
    v57 = v100;
    v94 = *(v100 + 48);
    (*(v52 + 32))(v1, v53, v54);
    sub_22C380438();
    sub_22C3D340C();
LABEL_20:
    v58 = sub_22C37B504();
    sub_22C36C640(v58, v59, v60, v57);
    v89 = v101 + 32;
    v90 = v101 + 16;
    v61 = v57;
    while (2)
    {
      v62 = v86;
      sub_22C383BC8();
      sub_22C3D3364();
      sub_22C36D0A8(v62, 1, v61);
      if (!v63)
      {
        sub_22C3AC228(v62, &qword_27D9BB5E8, &qword_22C90F840);
        v93 = *(v2 + 24) >> 1;
        if (v93 < v95 + 1)
        {
          sub_22C596F10();
          v2 = v78;
          sub_22C3D353C(v78);
          v93 = v79;
        }

        v64 = v104;
        v92 = &v85[v2];
        while (1)
        {
          sub_22C3720DC();
          sub_22C383BC8();
          sub_22C3D3364();
          sub_22C36D0A8(v64, 1, v61);
          if (v63)
          {
            break;
          }

          v65 = v103;
          sub_22C3D37CC();
          sub_22C3D3310();
          if (v95 >= v93)
          {
            sub_22C3AC228(v65, &qword_27D9BB5E0, &qword_22C91D710);
            goto LABEL_39;
          }

          sub_22C3AC228(v1, &qword_27D9BB5E8, &qword_22C90F840);
          sub_22C3D37CC();
          sub_22C3D3310();
          if (!v47)
          {
            v64 = v104;
            while (1)
            {
              v66 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                break;
              }

              if (v66 >= v87)
              {
                v47 = 0;
                goto LABEL_35;
              }

              v47 = *(v88 + 8 * v66);
              ++v38;
              if (v47)
              {
                v38 = v66;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v66 = v38;
LABEL_34:
          v67 = __clz(__rbit64(v47));
          v47 &= v47 - 1;
          v68 = v67 | (v66 << 6);
          v69 = v91;
          v70 = v101;
          (*(v101 + 16))(v97, *(v91 + 48) + *(v101 + 72) * v68, v96);
          v71 = *(v69 + 56) + *(v99 + 72) * v68;
          sub_22C3860F4();
          sub_22C3D33B8();
          v72 = v100;
          v94 = *(v100 + 48);
          v73 = *(v70 + 32);
          sub_22C386520();
          v74();
          sub_22C380438();
          v61 = v72;
          sub_22C3D340C();
          v64 = v104;
LABEL_35:
          ++v95;
          v75 = sub_22C37B504();
          sub_22C36C640(v75, v76, v77, v61);
        }

        sub_22C3AC228(v64, &qword_27D9BB5E8, &qword_22C90F840);
LABEL_39:
        *(v2 + 16) = v95;
        continue;
      }

      break;
    }

LABEL_41:
    v80 = sub_22C3720DC();
    sub_22C3AC228(v80, v81, &qword_22C90F840);
    sub_22C36A674();
    v82 = sub_22C36D384();
    sub_22C3AC228(v82, v83, &qword_22C90F840);
    goto LABEL_8;
  }

LABEL_14:
  v87 = (v42 + 64) >> 6;
  while (1)
  {
    v49 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v49 >= ((v42 + 64) >> 6))
    {
      v47 = 0;
      v57 = v100;
      goto LABEL_20;
    }

    v50 = *(v41 + 8 * v49);
    ++v38;
    if (v50)
    {
      v47 = (v50 - 1) & v50;
      v48 = __clz(__rbit64(v50)) | (v49 << 6);
      v38 = v49;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_22C3CF7F4(uint64_t a1)
{
  result = sub_22C3D3720(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C3CF924(uint64_t a1)
{
  result = sub_22C3D3720(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v5(result, 1);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = sub_22C3A5908(v10, v9);
  v13 = *(result - 8);
  if (v12 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return result;
  }

  v16 = *(v11 + 16);
  v8 = __OFADD__(v16, v1);
  v17 = v16 + v1;
  if (!v8)
  {
    *(v11 + 16) = v17;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void SmithWatermanTokenAligner.AlignmentResult.description.getter()
{
  v177 = sub_22C90133C();
  v1 = sub_22C369824(v177);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = *v0;
  v10 = v0[2];
  v161 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v164 = v0[6];
  v168 = v0[7];
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F7F0;
  sub_22C36D258();
  sub_22C90AF5C();

  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  v14 = sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3D36B0();
  v15 = sub_22C3D38A4();
  MEMORY[0x2318B7850](v15);

  MEMORY[0x2318B7850](34, 0xE100000000000000);
  *(v13 + 32) = 0xD000000000000016;
  *(v13 + 40) = 0x800000022C92FD60;
  sub_22C36D258();
  sub_22C90AF5C();

  sub_22C3D3708("Tokenized Predicted: ");
  sub_22C3D36B0();
  v16 = sub_22C3D38A4();
  MEMORY[0x2318B7850](v16);

  MEMORY[0x2318B7850](34, 0xE100000000000000);
  *(v13 + 48) = 0xD000000000000016;
  *(v13 + 56) = 0x800000022C92FD60;
  v162 = v13;
  sub_22C36D258();
  sub_22C90AF5C();

  sub_22C3D3708("Tokenized Alignment: ");
  v17 = *(v9 + 16);
  v18 = MEMORY[0x277D84F90];
  v166 = v10;
  v167 = v3;
  if (v17)
  {
    sub_22C3B5E2C();
    sub_22C3D35C0();
    v20 = v9 + v19;
    sub_22C3D3804();
    do
    {
      v172(v8, v20, v177);
      v21 = sub_22C90132C();
      v23 = v22;
      (*v14)(v8, v177);
      v24 = *(v18 + 16);
      if (v24 >= *(v18 + 24) >> 1)
      {
        sub_22C3D38BC();
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v23;
      v20 += v170;
      --v17;
    }

    while (v17);
    v10 = v166;
    v3 = v167;
  }

  sub_22C3D36B0();
  v26 = sub_22C3D38A4();
  v28 = v27;

  MEMORY[0x2318B7850](v26, v28);

  MEMORY[0x2318B7850](34, 0xE100000000000000);
  v162[8] = 0xD000000000000016;
  v162[9] = 0x800000022C92FD60;
  v162[10] = 0;
  v162[11] = 0xE000000000000000;
  v162[12] = 0;
  v162[13] = 0xE000000000000000;
  sub_22C3D38A4();

  v29 = *(v168 + 16);
  if (v29)
  {
    v182 = MEMORY[0x277D84F90];
    sub_22C3D379C();
    sub_22C3D35C0();
    v31 = v168 + v30;
    sub_22C3D3804();
    do
    {
      v172(v8, v31, v177);
      v32 = sub_22C9012EC();
      v34 = v33;
      v35 = *v14;
      v36 = sub_22C3720DC();
      v37(v36);
      v39 = *(v182 + 16);
      v38 = *(v182 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22C369AB0(v38);
        sub_22C3D38BC();
      }

      *(v182 + 16) = v39 + 1;
      v40 = v182 + 16 * v39;
      *(v40 + 32) = v32;
      *(v40 + 40) = v34;
      v31 += v170;
      --v29;
    }

    while (v29);
    v10 = v166;
    v3 = v167;
  }

  v41 = sub_22C387B48();
  sub_22C3CC46C(v41);
  v42 = *(v164 + 16);
  if (v42)
  {
    v183 = MEMORY[0x277D84F90];
    sub_22C3D379C();
    sub_22C3D35C0();
    v44 = v164 + v43;
    v173 = *(v3 + 56);
    v176 = v45;
    v171 = (v3 - 8);
    do
    {
      v46 = v3;
      v176(v8, v44, v177);
      v47 = sub_22C9012EC();
      v49 = v48;
      v50 = *v171;
      v51 = sub_22C3720DC();
      v52(v51);
      v54 = *(v183 + 16);
      v53 = *(v183 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22C369AB0(v53);
        sub_22C3D38BC();
      }

      *(v183 + 16) = v54 + 1;
      v55 = v183 + 16 * v54;
      *(v55 + 32) = v47;
      *(v55 + 40) = v49;
      v44 += v173;
      --v42;
      v3 = v46;
    }

    while (v42);
    v10 = v166;
  }

  v56 = sub_22C387B48();
  sub_22C3CC46C(v56);
  v57 = 0;
  v58 = *(v10 + 16);
  v165 = v10 + 32;
  v59 = MEMORY[0x277D84F90];
  while (v58 != v57)
  {
    if (v57 >= *(v10 + 16))
    {
      goto LABEL_98;
    }

    v60 = *(v10 + 8 * v57 + 32);
    v61 = *(v60 + 16);
    v62 = *(v59 + 16);
    v63 = v62 + v61;
    if (__OFADD__(v62, v61))
    {
      goto LABEL_99;
    }

    v64 = *(v10 + 8 * v57 + 32);

    if (!swift_isUniquelyReferenced_nonNull_native() || v63 > *(v59 + 24) >> 1)
    {
      if (*(v59 + 16) > v63)
      {
        v65 = *(v59 + 16);
      }

      sub_22C5902D0();
      v59 = v66;
    }

    if (*(v60 + 16))
    {
      v67 = *(v59 + 16);
      if ((*(v59 + 24) >> 1) - v67 < v61)
      {
        goto LABEL_101;
      }

      memcpy((v59 + 8 * v67 + 32), (v60 + 32), 8 * v61);

      if (v61)
      {
        v68 = *(v59 + 16);
        v69 = __OFADD__(v68, v61);
        v70 = v68 + v61;
        if (v69)
        {
          goto LABEL_102;
        }

        *(v59 + 16) = v70;
      }
    }

    else
    {

      if (v61)
      {
        goto LABEL_100;
      }
    }

    ++v57;
  }

  v71 = sub_22C3D0C8C(v59);
  v73 = v72;

  if ((v73 & 1) == 0)
  {
    sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
    v74 = swift_allocObject();
    v75 = MEMORY[0x277D839F8];
    *(v74 + 16) = xmmword_22C90F800;
    v76 = MEMORY[0x277D83A80];
    *(v74 + 56) = v75;
    *(v74 + 64) = v76;
    *(v74 + 32) = v71;
    sub_22C90A14C();
    v77 = sub_22C3D36B0();
    MEMORY[0x2318B7850](v77);
    MEMORY[0x2318B7850](120, 0xE100000000000000);
    v174 = sub_22C90A30C();

    v78 = unk_283FAEB10;
    v163 = v58;
    if (unk_283FAEB10)
    {

      v79 = 1;
LABEL_39:
      v80 = (&unk_283FAEB28 + 16 * v79);
      while (v78 != v79)
      {
        if (v79 >= unk_283FAEB10)
        {
          goto LABEL_105;
        }

        v82 = *(v80 - 1);
        v81 = *v80;

        v83 = sub_22C90A30C();
        sub_22C371510();
        if (v83 < sub_22C90A30C())
        {

          ++v79;
          goto LABEL_39;
        }

        v80 += 2;
        ++v79;
      }

      v84 = sub_22C90A30C();

      v10 = v166;
    }

    else
    {
      v84 = 0;
    }

    v85 = unk_283FAEB40;
    if (unk_283FAEB40)
    {

      v86 = 1;
LABEL_49:
      v87 = (&unk_283FAEB58 + 16 * v86);
      while (v85 != v86)
      {
        if (v86 >= unk_283FAEB40)
        {
          goto LABEL_106;
        }

        v89 = *(v87 - 1);
        v88 = *v87;

        sub_22C372FCC();
        v90 = sub_22C90A30C();
        if (v90 < sub_22C90A30C())
        {

          ++v86;
          goto LABEL_49;
        }

        v87 += 2;
        ++v86;
      }

      sub_22C372FCC();
      v91 = sub_22C90A30C();

      v10 = v166;
    }

    else
    {
      v91 = 0;
    }

    v92 = MEMORY[0x277D84F90];
    v93 = sub_22C3D0EB8(v174, v84, v91, MEMORY[0x277D84F90]);
    v94 = unk_283FAEB10;
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_22C90D070;
    v95 = v93 + 2;
    if (!__OFADD__(v93, 2))
    {
      sub_22C382ED0();
      v96 = sub_22C90A45C();
      MEMORY[0x2318B7850](v96);

      sub_22C3D3638();
      MEMORY[0x2318B7850](11769058, 0xA300000000000000);

      v97 = v95 * v94;
      if ((v95 * v94) >> 64 != (v95 * v94) >> 63)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      v69 = __OFADD__(v97, v94);
      v98 = v97 + v94;
      if (v69)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      if (__OFSUB__(v98, 1))
      {
LABEL_112:
        __break(1u);
        return;
      }

      sub_22C382ED0();
      v99 = sub_22C90A45C();
      v101 = v100;

      MEMORY[0x2318B7850](v99, v101);

      sub_22C3D3638();
      MEMORY[0x2318B7850](9671906, 0xA300000000000000);

      *(v175 + 32) = 2408899104;
      *(v175 + 40) = 0xA400000000000000;
      sub_22C3D36B0();
      v102 = sub_22C90A45C();
      MEMORY[0x2318B7850](v102);

      MEMORY[0x2318B7850](0x208394E220, 0xA500000000000000);
      if (v94)
      {
        sub_22C3D379C();
        sub_22C3858B4();
        v103 = &unk_283FAEB28;
        do
        {
          v178 = *(v103 - 1);
          v180 = *v103;
          sub_22C3D3838();
          sub_22C36D0C0();
          v104 = sub_22C90AD7C();
          v106 = v105;
          v108 = *(v92 + 16);
          v107 = *(v92 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_22C369AB0(v107);
            sub_22C3D38BC();
          }

          *(v92 + 16) = v108 + 1;
          v109 = v92 + 16 * v108;
          *(v109 + 32) = v104;
          *(v109 + 40) = v106;
          v103 += 2;
          --v94;
        }

        while (v94);

        v10 = v166;
      }

      else
      {
      }

      sub_22C383BC8();
      v110 = sub_22C90A04C();
      v112 = v111;

      MEMORY[0x2318B7850](v110, v112);

      MEMORY[0x2318B7850](2207572512, 0xA400000000000000);
      *(v175 + 48) = 0x208394E220;
      *(v175 + 56) = 0xA500000000000000;
      sub_22C382ED0();
      v113 = sub_22C90A45C();
      v185 = 0xA400000000000000;
      MEMORY[0x2318B7850](v113);

      sub_22C382C4C();
      MEMORY[0x2318B7850](9147874, 0xA300000000000000);

      sub_22C382ED0();
      sub_22C90A45C();
      sub_22C38642C();
      v114 = sub_22C387B48();
      MEMORY[0x2318B7850](v114, v112);

      sub_22C382C4C();
      MEMORY[0x2318B7850](11244770, 0xA300000000000000);

      *(v175 + 64) = 2744443424;
      *(v175 + 72) = 0xA400000000000000;
      *(v175 + 80) = 0;
      *(v175 + 88) = 0xE000000000000000;
      v184 = v175;
      sub_22C383BC8();
      v158 = sub_22C90A04C();
      v159 = v115;

      v116 = __OFSUB__(v93, 2);
      v160 = v116;

      v117 = 0;
      v118 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v117 == v163)
        {

          sub_22C382ED0();
          v149 = sub_22C90A45C();
          MEMORY[0x2318B7850](v149);

          sub_22C382C4C();
          MEMORY[0x2318B7850](9147874, 0xA300000000000000);

          sub_22C382ED0();
          sub_22C90A45C();
          sub_22C38642C();
          v150 = sub_22C387B48();
          MEMORY[0x2318B7850](v150, v112);

          sub_22C382C4C();
          MEMORY[0x2318B7850](11244770, 0xA300000000000000);

          sub_22C382C4C();
          MEMORY[0x2318B7850](10, 0xE100000000000000);

          v151 = sub_22C90A04C();
          v153 = v152;

          sub_22C382ED0();
          v154 = sub_22C90A45C();
          MEMORY[0x2318B7850](v154);

          sub_22C3D3638();
          MEMORY[0x2318B7850](12293346, 0xA300000000000000);

          sub_22C382ED0();
          v155 = sub_22C90A45C();
          v157 = v156;

          MEMORY[0x2318B7850](v155, v157);

          sub_22C3D3638();
          MEMORY[0x2318B7850](10196194, 0xA300000000000000);

          MEMORY[0x2318B7850](v158, v159);

          MEMORY[0x2318B7850](v151, v153);

          sub_22C382C4C();
          MEMORY[0x2318B7850](2543116832, 0xA400000000000000);

          goto LABEL_96;
        }

        if (v117 >= *(v10 + 16))
        {
          goto LABEL_103;
        }

        v119 = *(v165 + 8 * v117);
        v120 = *(v119 + 16);
        v169 = v118;
        if (v120)
        {
          break;
        }

LABEL_89:
        v184 = 0x208394E220;
        v185 = 0xA500000000000000;
        v10 = v166;
        if (v117 >= unk_283FAEB40)
        {
          goto LABEL_104;
        }

        v139 = (&unk_283FAEB50 + 16 * v117);
        v179 = *v139;
        v181 = v139[1];
        sub_22C3D3838();
        sub_22C3858B4();
        sub_22C36D0C0();
        v140 = sub_22C90AD7C();
        MEMORY[0x2318B7850](v140);

        MEMORY[0x2318B7850](0x208394E220, 0xA500000000000000);
        v141 = sub_22C90A04C();
        v143 = v142;

        MEMORY[0x2318B7850](v141, v143);

        MEMORY[0x2318B7850](0xA8394E220, 0xA500000000000000);
        v112 = 0xA500000000000000;
        v118 = v169;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C3D3738();
          v118 = v147;
        }

        v145 = *(v118 + 16);
        v144 = *(v118 + 24);
        if (v145 >= v144 >> 1)
        {
          sub_22C369AB0(v144);
          sub_22C590270();
          v118 = v148;
        }

        ++v117;
        *(v118 + 16) = v145 + 1;
        v146 = v118 + 16 * v145;
        *(v146 + 32) = 0x208394E220;
        *(v146 + 40) = 0xA500000000000000;
      }

      if (v160)
      {
        goto LABEL_107;
      }

      if (v117 < *(v161 + 16))
      {

        v121 = 0;
        v122 = MEMORY[0x277D84F90];
        while (1)
        {
          v123 = *(v119 + 8 * v121 + 32);
          sub_22C36D258();
          v124 = sub_22C90B47C();
          MEMORY[0x2318B7850](v124);

          MEMORY[0x2318B7850](6697518, 0xE300000000000000);
          v125 = swift_allocObject();
          *(v125 + 16) = xmmword_22C90F800;
          *(v125 + 56) = MEMORY[0x277D839F8];
          *(v125 + 64) = MEMORY[0x277D83A80];
          *(v125 + 32) = v123;
          v126 = sub_22C90A14C();
          v128 = v127;

          MEMORY[0x2318B7850](v126, v128);

          v129 = sub_22C3D36B0();
          MEMORY[0x2318B7850](v129);
          v130 = *(v161 + 32 + 8 * v117);
          if (v121 >= *(v130 + 16))
          {
            break;
          }

          v131 = v121 + 1;
          v132 = 0xE100000000000000;
          v133 = 120;
          switch(*(v130 + v121 + 32))
          {
            case 1:
              v132 = 0xA300000000000000;
              v133 = 9864930;
              break;
            case 2:
              v132 = 0xA300000000000000;
              v133 = 9471714;
              break;
            case 3:
              v133 = 9537250;
              v132 = 0xA300000000000000;
              break;
            default:
              break;
          }

          MEMORY[0x2318B7850](v133, v132);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C3D3738();
            v122 = v137;
          }

          v135 = *(v122 + 16);
          v134 = *(v122 + 24);
          if (v135 >= v134 >> 1)
          {
            sub_22C369AB0(v134);
            sub_22C590270();
            v122 = v138;
          }

          *(v122 + 16) = v135 + 1;
          v136 = v122 + 16 * v135;
          *(v136 + 32) = v184;
          *(v136 + 40) = v185;
          ++v121;
          if (v120 == v131)
          {

            goto LABEL_89;
          }
        }

        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_110;
  }

  MEMORY[0x2318B7850](0xD000000000000024, 0x800000022C92FDC0);
LABEL_96:
}

uint64_t sub_22C3D0C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_22C3D0CD0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_22C3D0D14(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_22C3D0D58(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (1)
    {
      v5 = v10 + 1;
      if (v10 + 1 >= v8)
      {
        return 0;
      }

      v11 = *(a1 + 72 + 8 * v10);
      v9 += 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) + v9;
        goto LABEL_9;
      }
    }
  }

  return result;
}

unint64_t sub_22C3D0E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_22C3D0EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4 <= a3)
  {
    result = a3;
  }

  else
  {
    result = v4;
  }

  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = (a4 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 > result)
      {
        result = v8;
      }

      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_22C3D1058(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22C3D121C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_22C3D1264(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_22C90A61C();
  }

  return result;
}

void *sub_22C3D1290(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
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
        break;
      }

LABEL_13:
      v12 = *(a4 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6));
      v13 = *(v12 + 16);
      v7 &= v7 - 1;
      *a2 = *v12;
      *(a2 + 16) = v13;
      a2 += 24;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C3D1388()
{
  sub_22C36BA7C();
  sub_22C3D35E8();
  v4 = *(v1 + 56);
  v5 = *(v1 + 32);
  sub_22C3D3490();
  if (!v6)
  {
    sub_22C3D35F8();
LABEL_17:
    sub_22C3D34B0(v15);
    sub_22C36CC48();
    return;
  }

  v8 = v7;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    sub_22C388E50();
    sub_22C3D3818();
    while (v11 < v8)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v3)
          {
            sub_22C3D367C();
            goto LABEL_17;
          }

          sub_22C385D60();
        }

        __break(1u);
        break;
      }

      v12 = v10;
      v13 = *(v0 + 48);
      sub_22C3825AC(__clz(__rbit64(v2)));
      if (v14)
      {

        v15 = v12;
        goto LABEL_17;
      }

      v9 += 16;

      sub_22C36CA64();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_22C3D146C()
{
  sub_22C36BA7C();
  sub_22C3D35E8();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_22C3D3490();
  if (!v6)
  {
    sub_22C3D35F8();
LABEL_17:
    sub_22C3D34B0(v15);
    sub_22C36CC48();
    return;
  }

  v8 = v7;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    sub_22C388E50();
    sub_22C3D3818();
    while (v11 < v8)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v3)
          {
            sub_22C3D367C();
            goto LABEL_17;
          }

          sub_22C385D60();
        }

        __break(1u);
        break;
      }

      v13 = v10;
      sub_22C3D35D4();
      *v9 = *(*(v0 + 48) + ((v13 << 9) | (8 * v14)));
      if (v12 == v8)
      {

        v15 = v13;
        goto LABEL_17;
      }

      ++v9;

      sub_22C36CA64();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C3D1564(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v7 = 0;
LABEL_11:
    v10 = *(a4 + 16);
LABEL_12:
    *v5 = a4;
    v5[1] = v10;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    for (i = 0; ; --i)
    {
      v10 = v6 + i;
      if (!(v6 + i))
      {
        v7 = v6;
        goto LABEL_12;
      }

      if (v10 > *(a4 + 16))
      {
        break;
      }

      v11 = v10 - 1;
      v12 = sub_22C9070DC();
      v13 = *(v12 - 8);
      v14 = *(v13 + 72);
      result = (*(v13 + 16))(v8, a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v11, v12);
      if (v7 + i == 1)
      {
        v10 = v6 + i - 1;
        goto LABEL_12;
      }

      v8 += v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C3D16C8()
{
  sub_22C36BA7C();
  v11 = sub_22C3D3654(v4, v5, v6, v7, v8, v9, v10);
  v13 = v12(v11);
  v14 = sub_22C3699B8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36CC60();
  v19 = *(v3 + 64);
  v18 = v3 + 64;
  v20 = *(v18 - 32);
  sub_22C377B50();
  v23 = v22 & v21;
  if (!v2)
  {
    sub_22C3D35F8();
LABEL_17:
    sub_22C38672C(v32);
    sub_22C36CC48();
    return;
  }

  if (!v1)
  {
    v32 = 0;
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    sub_22C388E50();
    v28 = (v26 - v27) >> 6;
    while (v25 < v1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_21;
      }

      if (!v23)
      {
        while (1)
        {
          v30 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v30 >= v28)
          {
            sub_22C3D367C();
            goto LABEL_17;
          }

          v23 = *(v18 + 8 * v30);
          ++v24;
          if (v23)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v30 = v24;
LABEL_12:
      sub_22C3D35D4();
      v31 = *(v33 + 56);
      sub_22C37E100();
      sub_22C3D384C();
      sub_22C3D340C();
      if (v29 == v1)
      {
        v32 = v30;
        goto LABEL_17;
      }

      v2 += v0;
      v25 = v29;
      v24 = v30;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_22C3D1848()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v41 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  v8 = sub_22C369824(v41);
  v38 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v40 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v39 = v36 - v14;
  v15 = *(v1 + 64);
  v16 = *(v1 + 32);
  sub_22C377B50();
  v20 = v19 & v18;
  if (!v5)
  {
    sub_22C3D35F8();
LABEL_17:
    sub_22C3D37B8(v22);
    sub_22C36CC48();
    return;
  }

  if (!v3)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v21 = v5;
    v36[1] = v17;
    v36[2] = v7;
    sub_22C388E50();
    v26 = (v24 - v25) >> 6;
    v37 = v3;
    while (v23 < v3)
    {
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_21;
      }

      if (!v20)
      {
        while (1)
        {
          v28 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v28 >= v26)
          {
            goto LABEL_17;
          }

          v20 = *(v1 + 64 + 8 * v28);
          ++v22;
          if (v20)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v28 = v22;
LABEL_12:
      sub_22C3D34C8();
      v30 = v29 | (v28 << 6);
      v31 = *(v1 + 48);
      v32 = type metadata accessor for CacheKeyHashableRepresentation(0);
      sub_22C369914(v32);
      v34 = *(v33 + 72);
      v35 = v40;
      sub_22C3D33B8();
      *(v35 + *(v41 + 48)) = *(*(v1 + 56) + 8 * v30);
      sub_22C3D3310();
      sub_22C37FC50();
      sub_22C3D3310();
      v3 = v37;
      if (v27 == v37)
      {
        v22 = v28;
        goto LABEL_17;
      }

      v21 += *(v38 + 72);
      v23 = v27;
      v22 = v28;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_22C3D1A80()
{
  sub_22C36BA7C();
  sub_22C3D35E8();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_22C3D3490();
  if (!v6)
  {
    sub_22C3D35F8();
LABEL_17:
    sub_22C3D34B0(v15);
    sub_22C36CC48();
    return;
  }

  v8 = v7;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    sub_22C388E50();
    sub_22C3D3818();
    while (v11 < v8)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v3)
          {
            sub_22C3D367C();
            goto LABEL_17;
          }

          sub_22C385D60();
        }

        __break(1u);
        break;
      }

      v12 = v10;
      v13 = *(v0 + 56);
      sub_22C3825AC(__clz(__rbit64(v2)));
      if (v14)
      {

        v15 = v12;
        goto LABEL_17;
      }

      v9 += 16;

      sub_22C36CA64();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_22C3D1B64(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C3D1C5C()
{
  sub_22C36BA7C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22C3704C4();
  v13 = v12(v11);
  v40 = sub_22C369824(v13);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C369930();
  v17 = MEMORY[0x28223BE20](v16);
  sub_22C3D36D8(v17, v18, v19, v20, v21, v22, v23, v24, v37);
  v26 = *(v25 + 56);
  v27 = *(v25 + 32);
  sub_22C386C4C();
  if (!v10)
  {
    v31 = 0;
LABEL_18:
    sub_22C3D3688(v31);
    sub_22C36CC48();
    return;
  }

  if (!v8)
  {
    v31 = 0;
    goto LABEL_18;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v38 = v28;
    sub_22C388E50();
    v30 = sub_22C3837D4(v29);
    while (v32 < v30)
    {
      if (__OFADD__(v32, 1))
      {
        goto LABEL_22;
      }

      if (!v4)
      {
        while (1)
        {
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v33 >= v8)
          {
            goto LABEL_18;
          }

          v4 = *(v38 + 8 * v33);
          ++v31;
          if (v4)
          {
            v41 = v32 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v41 = v32 + 1;
      v33 = v31;
LABEL_13:
      v34 = sub_22C375868();
      v35(v34);
      v36 = sub_22C389FD4();
      v6(v36);
      (v6)(v10, v0, v2);
      v30 = v39;
      v32 = v41;
      if (v41 == v39)
      {
        v31 = v33;
        goto LABEL_18;
      }

      v10 += v3;
      v31 = v33;
      v6 = v1;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void sub_22C3D1E18()
{
  sub_22C36BA7C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22C3704C4();
  v13 = v12(v11);
  v40 = sub_22C369824(v13);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C369930();
  v17 = MEMORY[0x28223BE20](v16);
  sub_22C3D36D8(v17, v18, v19, v20, v21, v22, v23, v24, v37);
  v26 = *(v25 + 64);
  v27 = *(v25 + 32);
  sub_22C386C4C();
  if (!v10)
  {
    v31 = 0;
LABEL_18:
    sub_22C3D3688(v31);
    sub_22C36CC48();
    return;
  }

  if (!v8)
  {
    v31 = 0;
    goto LABEL_18;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v38 = v28;
    sub_22C388E50();
    v30 = sub_22C3837D4(v29);
    while (v32 < v30)
    {
      if (__OFADD__(v32, 1))
      {
        goto LABEL_22;
      }

      if (!v4)
      {
        while (1)
        {
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v33 >= v8)
          {
            goto LABEL_18;
          }

          v4 = *(v38 + 8 * v33);
          ++v31;
          if (v4)
          {
            v41 = v32 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v41 = v32 + 1;
      v33 = v31;
LABEL_13:
      v34 = sub_22C375868();
      v35(v34);
      v36 = sub_22C389FD4();
      v6(v36);
      (v6)(v10, v0, v2);
      v30 = v39;
      v32 = v41;
      if (v41 == v39)
      {
        v31 = v33;
        goto LABEL_18;
      }

      v10 += v3;
      v31 = v33;
      v6 = v1;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void sub_22C3D1FD4()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v53 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v8 = sub_22C369824(v53);
  v52 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  sub_22C36EC2C(v15, v16, v17, v18, v19, v20, v21, v22, v49);
  v55 = v1;
  v24 = *(v1 + 64);
  v23 = v1 + 64;
  v25 = *(v23 - 32);
  sub_22C377B50();
  v29 = v28 & v27;
  if (!v5)
  {
    sub_22C3D35F8();
LABEL_19:
    *v7 = v55;
    v7[1] = v23;
    v7[2] = ~v26;
    v7[3] = v30;
    v7[4] = v29;
    sub_22C36CC48();
    return;
  }

  if (!v3)
  {
    v30 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v49 = v26;
    v50 = v7;
    sub_22C388E50();
    v34 = (v32 - v33) >> 6;
    v51 = v3;
    while (1)
    {
      if (v31 >= v3)
      {
        goto LABEL_22;
      }

      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_23;
      }

      if (!v29)
      {
        while (1)
        {
          v36 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v36 >= v34)
          {
            v29 = 0;
            goto LABEL_17;
          }

          v29 = *(v23 + 8 * v36);
          ++v30;
          if (v29)
          {
            v54 = v5;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v54 = v5;
      v36 = v30;
LABEL_13:
      sub_22C3D34C8();
      v38 = v37 | (v36 << 6);
      v39 = v55;
      v40 = *(v55 + 48);
      v41 = sub_22C90021C();
      sub_22C369A9C(v41);
      (*(v42 + 16))(v14, v40 + *(v42 + 72) * v38);
      v43 = *(v39 + 56);
      v44 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
      sub_22C369914(v44);
      v46 = v43 + *(v45 + 72) * v38;
      v47 = *(v53 + 48);
      sub_22C37FC50();
      sub_22C3D3364();
      sub_22C3D3310();
      v48 = v54;
      sub_22C37FC50();
      sub_22C3D3310();
      v3 = v51;
      if (v35 == v51)
      {
        break;
      }

      v5 = v48 + *(v52 + 72);
      v31 = v35;
      v30 = v36;
    }

    v30 = v36;
LABEL_17:
    v26 = v49;
    v7 = v50;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

void sub_22C3D2254()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
  v6 = sub_22C369824(v44);
  v42 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v43 = v10;
  sub_22C369930();
  v12 = MEMORY[0x28223BE20](v11);
  sub_22C36EC2C(v12, v13, v14, v15, v16, v17, v18, v19, v41);
  v21 = v1 + 64;
  v20 = *(v1 + 64);
  v22 = *(v1 + 32);
  sub_22C377B50();
  v25 = v24 & v23;
  v45 = v5;
  if (!v5)
  {
    v26 = 0;
LABEL_17:
    sub_22C3D37B8(v26);
    sub_22C36CC48();
    return;
  }

  if (!v3)
  {
    v26 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_22C388E50();
    v30 = (v28 - v29) >> 6;
    while (v27 < v3)
    {
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_21;
      }

      if (!v25)
      {
        while (1)
        {
          v32 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            goto LABEL_17;
          }

          v25 = *(v21 + 8 * v32);
          ++v26;
          if (v25)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v32 = v26;
LABEL_12:
      sub_22C3D34C8();
      v34 = v33 | (v32 << 6);
      v35 = v1;
      v36 = *(v1 + 48);
      v37 = *(v1 + 56);
      v38 = *(v36 + 8 * v34);
      v39 = sub_22C908C5C();
      sub_22C369A9C(v39);
      (*(v40 + 16))(&v43[*(v44 + 48)], v37 + *(v40 + 72) * v34);
      *v43 = v38;
      sub_22C3D3310();
      sub_22C3D3310();
      if (v31 == v3)
      {
        v26 = v32;
        goto LABEL_17;
      }

      v45 += *(v42 + 72);
      v27 = v31;
      v26 = v32;
      v1 = v35;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22C3D248C(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22C908C5C();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 56);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C3D2724()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v52 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v8 = sub_22C369824(v52);
  v50 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v51 = v12;
  sub_22C369930();
  v14 = MEMORY[0x28223BE20](v13);
  sub_22C36EC2C(v14, v15, v16, v17, v18, v19, v20, v21, v45);
  v23 = v1 + 64;
  v22 = *(v1 + 64);
  v24 = *(v1 + 32);
  sub_22C377B50();
  v28 = v27 & v26;
  if (!v5)
  {
    v29 = 0;
LABEL_19:
    *v7 = v1;
    v7[1] = v23;
    v7[2] = ~v25;
    v7[3] = v29;
    v7[4] = v28;
    sub_22C36CC48();
    return;
  }

  if (!v3)
  {
    v29 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v46 = v25;
    v47 = v7;
    sub_22C388E50();
    v33 = (v31 - v32) >> 6;
    v48 = v1;
    v49 = v3;
    while (1)
    {
      if (v30 >= v3)
      {
        goto LABEL_22;
      }

      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_23;
      }

      if (!v28)
      {
        while (1)
        {
          v35 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v35 >= v33)
          {
            v28 = 0;
            v7 = v47;
            goto LABEL_17;
          }

          v28 = *(v23 + 8 * v35);
          ++v29;
          if (v28)
          {
            v53 = v5;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v53 = v5;
      v35 = v29;
LABEL_13:
      sub_22C3D34C8();
      v37 = v36 | (v35 << 6);
      v38 = *(v1 + 48);
      v39 = *(v1 + 56);
      v40 = (v38 + 16 * v37);
      v41 = *v40;
      v42 = v40[1];
      v43 = sub_22C9093BC();
      sub_22C369A9C(v43);
      (*(v44 + 16))(&v51[*(v52 + 48)], v39 + *(v44 + 72) * v37);
      *v51 = v41;
      *(v51 + 1) = v42;
      sub_22C3D3310();
      sub_22C3D3310();
      v3 = v49;
      if (v34 == v49)
      {
        break;
      }

      v5 = v53 + *(v50 + 72);

      v30 = v34;
      v29 = v35;
      v1 = v48;
    }

    v29 = v35;
    v7 = v47;
    v1 = v48;
LABEL_17:
    v25 = v46;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

void sub_22C3D2980()
{
  sub_22C36BA7C();
  v11 = sub_22C3D3654(v4, v5, v6, v7, v8, v9, v10);
  v13 = v12(v11);
  v14 = sub_22C3699B8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36CC60();
  v19 = *(v3 + 56);
  v18 = v3 + 56;
  v20 = *(v18 - 24);
  sub_22C377B50();
  v23 = v22 & v21;
  if (!v2)
  {
    sub_22C3D35F8();
LABEL_17:
    sub_22C38672C(v32);
    sub_22C36CC48();
    return;
  }

  if (!v1)
  {
    v32 = 0;
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    sub_22C388E50();
    v28 = (v26 - v27) >> 6;
    while (v25 < v1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_21;
      }

      if (!v23)
      {
        while (1)
        {
          v30 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v30 >= v28)
          {
            sub_22C3D367C();
            goto LABEL_17;
          }

          v23 = *(v18 + 8 * v30);
          ++v24;
          if (v23)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v30 = v24;
LABEL_12:
      sub_22C3D35D4();
      v31 = *(v33 + 48);
      sub_22C37E100();
      sub_22C3D384C();
      sub_22C3D340C();
      if (v29 == v1)
      {
        v32 = v30;
        goto LABEL_17;
      }

      v2 += v0;
      v25 = v29;
      v24 = v30;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_22C3D2B00()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (!v0)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v1;
  if (!v1)
  {
LABEL_11:
    *v9 = v7;
    v9[1] = v5;
    v9[2] = v3;
    v9[3] = v10;
    sub_22C36CC48();
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = *(v2 + 16);
    v14 = v1 - 1;
    while (1)
    {
      if (v13 == v12)
      {
        v10 = v13;
        goto LABEL_11;
      }

      if (v12 >= *(v3 + 16))
      {
        break;
      }

      v15 = type metadata accessor for RetrievedToolWithAttribution();
      sub_22C3699B8(v15);
      v17 = v16;
      v19 = v18;
      v20 = *(v17 + 80);
      v21 = *(v19 + 72);
      sub_22C3D33B8();
      if (v14 == v12)
      {
        goto LABEL_11;
      }

      v11 += v21;
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C3D2C14()
{
  sub_22C36BA7C();
  sub_22C3D35E8();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_22C3D3490();
  if (!v6)
  {
    sub_22C3D35F8();
LABEL_17:
    sub_22C3D34B0(v15);
    sub_22C36CC48();
    return;
  }

  v8 = v7;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    sub_22C388E50();
    sub_22C3D3818();
    while (v11 < v8)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v3)
          {
            sub_22C3D367C();
            goto LABEL_17;
          }

          sub_22C385D60();
        }

        __break(1u);
        break;
      }

      v12 = v10;
      v13 = *(v0 + 48);
      sub_22C3825AC(__clz(__rbit64(v2)));
      if (v14)
      {

        v15 = v12;
        goto LABEL_17;
      }

      v9 += 16;

      sub_22C36CA64();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C3D2CF8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v39 = sub_22C3A5908(&qword_27D9BB5E0, &qword_22C91D710);
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v38 = &v34 - v13;
  v41 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
    v21 = 0;
    a3 = 0;
LABEL_22:
    *a1 = v41;
    a1[1] = v15;
    a1[2] = ~v17;
    a1[3] = v21;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v15 - 32);
    v35 = a1;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v17) >> 6;
    v36 = a3;
    while (1)
    {
      if (v20 >= a3)
      {
        goto LABEL_25;
      }

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            v19 = 0;
            a3 = v20;
            goto LABEL_20;
          }

          v19 = *(v15 + 8 * v24);
          ++v21;
          if (v19)
          {
            v40 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v40 = a2;
      v24 = v21;
LABEL_16:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v24 << 6);
      v27 = v41;
      v28 = *(v41 + 48);
      v29 = sub_22C9093BC();
      (*(*(v29 - 8) + 16))(v11, v28 + *(*(v29 - 8) + 72) * v26, v29);
      v30 = *(v27 + 56);
      v31 = v30 + *(*(type metadata accessor for DialogValuesResolver.CollectedValue(0) - 8) + 72) * v26;
      v32 = *(v39 + 48);
      sub_22C3D33B8();
      sub_22C3D3310();
      v33 = v40;
      result = sub_22C3D3310();
      a3 = v36;
      if (v23 == v36)
      {
        break;
      }

      a2 = v33 + *(v37 + 72);
      v20 = v23;
      v21 = v24;
    }

    v21 = v24;
LABEL_20:
    v17 = v34;
    a1 = v35;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22C3D2FDC()
{
  sub_22C37B024();
  if (v2)
  {
    v5 = sub_22C90B1BC();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_22C36BA00();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_22C36E2B8(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_22C3D3108();
        sub_22C3D386C();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_22C37BD54(&qword_27D9BB600);
        do
        {
          v7 = sub_22C3A5908(&qword_27D9BB5F8, &qword_22C90F850);
          v15 = sub_22C3D36F0(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_22C7A9BA4(v15, v16, v17);
          v20 = *v19;
          (v18)(v24, 0);
          sub_22C3D37E4();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22C3D3108()
{
  result = qword_28142F978;
  if (!qword_28142F978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F978);
  }

  return result;
}

uint64_t sub_22C3D314C()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C369848(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_22C3D319C()
{
  sub_22C37B024();
  if (v2)
  {
    v5 = sub_22C90B1BC();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_22C36BA00();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_22C36E2B8(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for PayloadLayout();
        sub_22C3D386C();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_22C37BD54(&qword_27D9BB620);
        do
        {
          v7 = sub_22C3A5908(&qword_27D9BB618, &qword_22C90F858);
          v15 = sub_22C3D36F0(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_22C7A9C10(v15, v16, v17);
          v20 = *v19;

          (v18)(v24, 0);
          sub_22C3D37E4();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C3D32C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C3D3310()
{
  sub_22C36986C();
  v3 = sub_22C3A5908(v1, v2);
  sub_22C369A9C(v3);
  v5 = *(v4 + 32);
  v6 = sub_22C36BA00();
  v7(v6);
  return v0;
}

uint64_t sub_22C3D3364()
{
  sub_22C36986C();
  v3 = sub_22C3A5908(v1, v2);
  sub_22C369A9C(v3);
  v5 = *(v4 + 16);
  v6 = sub_22C36BA00();
  v7(v6);
  return v0;
}

uint64_t sub_22C3D33B8()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C369A9C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C3D340C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C369A9C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C3D34B0@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_22C3D34F4()
{

  return sub_22C3AC228(v2, v0, v1);
}

void sub_22C3D3510()
{
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 72);
  v4 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
}

uint64_t sub_22C3D3560()
{

  return sub_22C3D33B8();
}

uint64_t sub_22C3D3588()
{

  return sub_22C3D33B8();
}

void sub_22C3D35B0()
{
  v2 = *(v0 - 224);
  v1 = *(v0 - 216);
  v4 = *(v0 - 168);
  v3 = *(v0 - 160);
  v5 = *(v0 - 192);
}

uint64_t sub_22C3D3604()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  v5 = *(v0 - 104);
  v6 = *(v0 - 96);

  return sub_22C36A674();
}

uint64_t sub_22C3D3638()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;
}

uint64_t sub_22C3D3654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 104) = a6;
  *(v7 - 96) = a7;
  return 0;
}

void sub_22C3D3688(uint64_t a1@<X8>)
{
  v6 = ~*(v5 - 128);
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v6;
  v2[3] = a1;
  v2[4] = v4;
}

void sub_22C3D36BC()
{
  v2 = *(v0 + 16);
  v3 = *(v1 - 120);
  *(v1 - 176) = *(v1 - 112);
  *(v1 - 168) = v3;
  v4 = *(v1 - 96);
  v5 = *(v1 - 88);
  *(v1 - 192) = *(v1 - 104);
}

void sub_22C3D3738()
{
  v2 = *(v0 + 16) + 1;

  sub_22C590270();
}

uint64_t sub_22C3D375C()
{
  v4 = *(v2 - 176);
  v3 = *(v2 - 168);
  v5 = *(v2 - 192);
  sub_22C36A674();
  v6 = *(v2 - 136);

  return sub_22C3AC228(v6, v0, v1);
}

void sub_22C3D379C()
{

  sub_22C3B5E2C();
}

void sub_22C3D37B8(uint64_t a1@<X8>)
{
  *v2 = v5;
  v2[1] = v3;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v4;
}

void sub_22C3D37D8()
{
  *(v3 - 168) = v2;
  *(v3 - 160) = v0;
  *(v3 - 192) = v1;
}

void sub_22C3D3804()
{
  *(v2 - 208) = *(v1 + 56);
  *(v2 - 200) = v0;
  *(v2 - 192) = v1;
}

uint64_t sub_22C3D384C()
{
  v2 = *(v0 - 96);

  return sub_22C3D340C();
}

uint64_t sub_22C3D386C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22C3D388C()
{

  return sub_22C3D3364();
}

uint64_t sub_22C3D38A4()
{

  return sub_22C90A04C();
}

void sub_22C3D38BC()
{

  sub_22C3B5E2C();
}

uint64_t sub_22C3D38D4()
{
  v0 = sub_22C90A11C();
  v2 = v1;
  if (v0 == sub_22C90A11C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22C38B7B8();
  }

  return v5 & 1;
}

uint64_t sub_22C3D3994(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x747865546E616C70;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000022C92E600;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x747865546E616C70;
  }

  if (a2)
  {
    v6 = 0x800000022C92E600;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D3A2C(char a1, char a2)
{
  v2 = 0xD000000000000013;
  v3 = "REGULAR_EXPRESSION";
  v5 = 0xD000000000000013;
  v6 = "REGULAR_EXPRESSION";
  switch(a1)
  {
    case 1:
      v6 = "OUTPUT_ENUM_SUCCESS";
      v5 = 0xD00000000000001FLL;
      break;
    case 2:
      v6 = "OUTPUT_ENUM_ACTION_CONFIRMATION";
      goto LABEL_7;
    case 3:
      v6 = "METER_NEEDS_VALUE";
      v5 = 0xD000000000000022;
      break;
    case 4:
      v6 = "METER_CONFIRMATION";
      v5 = 0xD000000000000024;
      break;
    case 5:
      v6 = "METER_DISAMBIGUATION";
LABEL_7:
      v5 = 0xD000000000000021;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "OUTPUT_ENUM_SUCCESS";
      v2 = 0xD00000000000001FLL;
      break;
    case 2:
      v3 = "OUTPUT_ENUM_ACTION_CONFIRMATION";
      goto LABEL_14;
    case 3:
      v3 = "METER_NEEDS_VALUE";
      v2 = 0xD000000000000022;
      break;
    case 4:
      v3 = "METER_CONFIRMATION";
      v2 = 0xD000000000000024;
      break;
    case 5:
      v3 = "METER_DISAMBIGUATION";
LABEL_14:
      v2 = 0xD000000000000021;
      break;
    default:
      break;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D3B8C(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000016;
  v3 = "METER_NOT_ALLOWED";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (v4 == 1)
    {
      v6 = "MATCH_OPTION_MATCH_ANY";
    }

    else
    {
      v6 = "MATCH_OPTION_MATCH_ALL";
    }
  }

  else
  {
    v5 = 0xD000000000000016;
    v6 = "METER_NOT_ALLOWED";
  }

  if (a2)
  {
    v3 = "MATCH_OPTION_MATCH_ANY";
    if (a2 != 1)
    {
      v2 = 0xD000000000000017;
      v3 = "MATCH_OPTION_MATCH_ALL";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D3C54(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006C656261;
  v3 = 0x4C6D7269666E6F63;
  v4 = a1;
  v5 = 0x4C6D7269666E6F63;
  v6 = 0xEC0000006C656261;
  switch(v4)
  {
    case 1:
      v5 = 0x6562614C796E6564;
      v6 = 0xE90000000000006CLL;
      break;
    case 2:
      v6 = 0x800000022C92F090;
      v5 = 0xD000000000000017;
      break;
    case 3:
      v5 = 0xD000000000000014;
      v6 = 0x800000022C92F0B0;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6562614C796E6564;
      v2 = 0xE90000000000006CLL;
      break;
    case 2:
      v2 = 0x800000022C92F090;
      v3 = 0xD000000000000017;
      break;
    case 3:
      v3 = 0xD000000000000014;
      v2 = 0x800000022C92F0B0;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C388E60();
  }

  return v8 & 1;
}

uint64_t sub_22C3D3DAC(uint64_t a1, uint64_t a2)
{
  v3 = (sub_22C8B3A7C)();
  v5 = v4;
  if (v3 == sub_22C8B3A7C(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D3E24(char a1, char a2)
{
  if (a1)
  {
    v2 = 14454;
  }

  else
  {
    v2 = 14198;
  }

  if (a2)
  {
    v3 = 14454;
  }

  else
  {
    v3 = 14198;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22C90B4FC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22C3D3E8C(unsigned __int8 a1, char a2)
{
  v2 = 0x73736563637573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73736563637573;
  switch(v4)
  {
    case 1:
      v5 = 0x694C796E65446E69;
      v3 = 0xEA00000000007473;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v3 = 0x800000022C92F260;
      break;
    case 3:
      v3 = 0x800000022C92F280;
      v5 = 0xD000000000000012;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x694C796E65446E69;
      v6 = 0xEA00000000007473;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v6 = 0x800000022C92F260;
      break;
    case 3:
      v6 = 0x800000022C92F280;
      v2 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D3FDC(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000746E65;
  v3 = 0x696C43796C6C7566;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x6553646972627968;
    }

    if (v4 == 1)
    {
      v6 = 0x800000022C92E2C0;
    }

    else
    {
      v6 = 0xEC00000072657672;
    }
  }

  else
  {
    v5 = 0x696C43796C6C7566;
    v6 = 0xEB00000000746E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x6553646972627968;
    }

    if (a2 == 1)
    {
      v2 = 0x800000022C92E2C0;
    }

    else
    {
      v2 = 0xEC00000072657672;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C388E60();
  }

  return v8 & 1;
}

uint64_t sub_22C3D40E0()
{
  v0 = StructuredSearchQueryKeys.rawValue.getter();
  v2 = v1;
  if (v0 == StructuredSearchQueryKeys.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22C38B7B8();
  }

  return v5 & 1;
}

uint64_t sub_22C3D4168(unsigned __int8 a1, char a2)
{
  v2 = 1701869940;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701869940;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x676E69727473;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7265626D756ELL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6E61656C6F6F62;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x676E69727473;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7265626D756ELL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E61656C6F6F62;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D4294(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x726143746E6F647ELL;
  v4 = 0xE900000000000065;
  v5 = a1;
  v6 = 0x726143746E6F647ELL;
  switch(v5)
  {
    case 1:
      sub_22C3D8774();
      sub_22C36FBA0();
      break;
    case 2:
      v6 = sub_22C3D8774() & 0xFFFFFFFFFFFFLL | 0x4F79000000000000;
      v4 = 0xEB00000000796C6ELL;
      break;
    case 3:
      v6 = sub_22C3D87A4() | 0x726F466500000000;
      v4 = 0xEC00000064726177;
      break;
    case 4:
      v6 = sub_22C3D87A4() | 0x6C6E4F6500000000;
      v4 = 0xE900000000000079;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_22C386F48();
      sub_22C3700A0();
      break;
    case 2:
      sub_22C386F48();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x4F79000000000000;
      v2 = 0xEB00000000796C6ELL;
      break;
    case 3:
      sub_22C38552C();
      v3 = v9 | 0x726F466500000000;
      v2 = 0xEC00000064726177;
      break;
    case 4:
      sub_22C38552C();
      v3 = v7 | 0x6C6E4F6500000000;
      v2 = 0xE900000000000079;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22C388E60();
  }

  return v11 & 1;
}

uint64_t sub_22C3D43FC(unsigned __int8 a1, char a2)
{
  v2 = 0x6D6574737973;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6D6574737973;
  switch(v4)
  {
    case 1:
      v5 = 0x6E61747369737361;
      v3 = 0xE900000000000074;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1919251317;
      break;
    case 3:
      v5 = 0x746C75736572;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1819242356;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E61747369737361;
      v6 = 0xE900000000000074;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1919251317;
      break;
    case 3:
      v2 = 0x746C75736572;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1819242356;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D4540(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "CAR";
  }

  else
  {
    v4 = "COMPARISON_TYPE_EXACT_LITERAL";
  }

  if (a2)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (a2)
  {
    v6 = "COMPARISON_TYPE_EXACT_LITERAL";
  }

  else
  {
    v6 = "CAR";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D45D8()
{
  sub_22C3D8784();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = sub_22C3D87A4() | 0x6C6E4F6500000000;
      v2 = 0xE900000000000079;
      break;
    case 2:
      v5 = sub_22C3D87A4() | 0x726F466500000000;
      v2 = 0xEC00000064726177;
      break;
    case 3:
      v5 = sub_22C3D8774() & 0xFFFFFFFFFFFFLL | 0x4F79000000000000;
      v2 = 0xEB00000000796C6ELL;
      break;
    case 4:
      sub_22C3D8774();
      sub_22C3700A0();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      sub_22C38552C();
      v1 = v7 | 0x6C6E4F6500000000;
      v6 = 0xE900000000000079;
      break;
    case 2:
      sub_22C38552C();
      v1 = v8 | 0x726F466500000000;
      v6 = 0xEC00000064726177;
      break;
    case 3:
      sub_22C386F48();
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0x4F79000000000000;
      v6 = 0xEB00000000796C6ELL;
      break;
    case 4:
      sub_22C386F48();
      sub_22C36FBA0();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22C38B7B8();
  }

  return v11 & 1;
}

uint64_t sub_22C3D4758(unsigned __int8 a1, char a2)
{
  v2 = 0x454E4F4850;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x454E4F4850;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 4473168;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4E414D4553524F48;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1398097242;
      break;
    case 4:
      v5 = 0x4F454D4143;
      break;
    case 5:
      v5 = 0x4843544157;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 5390659;
      break;
    case 7:
      v5 = 0x544952414752414DLL;
      v3 = 0xE900000000000041;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 4473168;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4E414D4553524F48;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1398097242;
      break;
    case 4:
      v2 = 0x4F454D4143;
      break;
    case 5:
      v2 = 0x4843544157;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 5390659;
      break;
    case 7:
      v2 = 0x544952414752414DLL;
      v6 = 0xE900000000000041;
      break;
    case 8:
      v6 = 0xE700000000000000;
      sub_22C3D8784();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D4930(unsigned __int8 a1, char a2)
{
  v2 = 0x4449656C646E7562;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x4449656C646E7562;
  switch(v4)
  {
    case 1:
      v5 = 0x4449746E65746E69;
      break;
    case 2:
      v6 = 1701869908;
      goto LABEL_7;
    case 3:
      v3 = 0xEA00000000004449;
      goto LABEL_8;
    case 4:
      v3 = 0xEE00676E69727453;
      goto LABEL_8;
    case 5:
      v6 = 1701080909;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_8:
      v5 = 0x65736E6F70736572;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4449746E65746E69;
      break;
    case 2:
      v8 = 1701869908;
      goto LABEL_15;
    case 3:
      v7 = 0xEA00000000004449;
      goto LABEL_16;
    case 4:
      v7 = 0xEE00676E69727453;
      goto LABEL_16;
    case 5:
      v8 = 1701080909;
LABEL_15:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_16:
      v2 = 0x65736E6F70736572;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22C38B7B8();
  }

  return v10 & 1;
}

uint64_t sub_22C3D4A98(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000065746FLL;
  v3 = 0x6D65722D6C6C7566;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x702D65746F6D6572;
    }

    else
    {
      v5 = 0x646E6F2D6C6C7566;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xED00006563697665;
    }
  }

  else
  {
    v5 = 0x6D65722D6C6C7566;
    v6 = 0xEB0000000065746FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x702D65746F6D6572;
    }

    else
    {
      v3 = 0x646E6F2D6C6C7566;
    }

    if (a2 == 1)
    {
      v2 = 0xE900000000000067;
    }

    else
    {
      v2 = 0xED00006563697665;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C388E60();
  }

  return v8 & 1;
}

uint64_t sub_22C3D4BAC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65747441666C6573;
  }

  else
  {
    v3 = 0x676E69727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006E6F69746ELL;
  }

  if (a2)
  {
    v5 = 0x65747441666C6573;
  }

  else
  {
    v5 = 0x676E69727473;
  }

  if (a2)
  {
    v6 = 0xED00006E6F69746ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C38B7B8();
  }

  return v8 & 1;
}

uint64_t sub_22C3D4C90(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_22C3D8704(a4, a5);
  sub_22C90A56C();
  sub_22C90A56C();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22C388E60();
  }

  return v8 & 1;
}

uint64_t SmithWatermanTokenAligner.Direction.description.getter()
{
  result = 120;
  switch(*v0)
  {
    case 1:
      result = 9864930;
      break;
    case 2:
      result = 9471714;
      break;
    case 3:
      result = 9537250;
      break;
    default:
      return result;
  }

  return result;
}

IntelligenceFlowPlannerRuntime::SmithWatermanTokenAligner::Direction_optional __swiftcall SmithWatermanTokenAligner.Direction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22C3D4DF8@<X0>(uint64_t *a1@<X8>)
{
  result = SmithWatermanTokenAligner.Direction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SmithWatermanTokenAligner.AlignmentResult.alignedTokens.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SmithWatermanTokenAligner.AlignmentResult.lowerBound.getter()
{
  v2 = sub_22C90133C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3704F0();
  if (!v1)
  {
    return 0;
  }

  (*(v5 + 16))(v0, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v2);
  v9 = sub_22C90131C();
  (*(v5 + 8))(v0, v2);
  return v9;
}

uint64_t SmithWatermanTokenAligner.AlignmentResult.upperBound.getter()
{
  v2 = sub_22C90133C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3704F0();
  if (!v1)
  {
    return 0;
  }

  (*(v5 + 16))(v0, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v1 - 1), v2);
  sub_22C90131C();
  v10 = v9;
  (*(v5 + 8))(v0, v2);
  return v10;
}

uint64_t SmithWatermanTokenAligner.align(_:to:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v224 = a1;
  v207 = a2;
  v6 = sub_22C3A5908(&qword_27D9BB648, &qword_22C90F880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C369ABC();
  v219 = v8 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v218 = v11;
  v233 = sub_22C90133C();
  v12 = sub_22C369824(v233);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA58();
  v217 = v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v223 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v221 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v225 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  v32 = &v202 - v31;
  v33 = sub_22C3A5908(&qword_27D9BB650, &qword_22C90F888);
  v34 = sub_22C36985C(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v229 = (&v202 - v37);
  v38 = sub_22C3A5908(&qword_27D9BB658, &qword_22C90F890);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  sub_22C369ABC();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = (&v202 - v44);
  v46 = *v5;
  v47 = sub_22C3D61D4();
  v222 = v3;
  v50 = 0;
  v51 = *(v47 + 16);
  v227 = (v14 + 32);
  v230 = v14;
  v231 = (v14 + 8);
  v232 = (v14 + 16);
  v228 = MEMORY[0x277D84F90];
  v208 = MEMORY[0x277D84F90];
  v226 = v47;
  while (1)
  {
    if (v50 == v51)
    {
      v50 = v51;
      goto LABEL_7;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      goto LABEL_130;
    }

    if (v50 >= *(v47 + 16))
    {
      break;
    }

    v52 = v229;
    v53 = *(v230 + 80);
    sub_22C36BA94();
    v57 = v54 + v55 + *(v56 + 72) * v50;
    v58 = *(v33 + 48);
    *v52 = v50;
    (*(v56 + 16))(v52 + v58, v57, v233);
    sub_22C3D7EEC(v52, v42, &qword_27D9BB650, &qword_22C90F888);
    ++v50;
LABEL_7:
    sub_22C37B93C();
    sub_22C36C640(v59, v60, v61, v62);
    sub_22C3D7EEC(v42, v45, &qword_27D9BB658, &qword_22C90F890);
    if (sub_22C370B74(v45, 1, v33) == 1)
    {
      v90 = v222;
      v47 = sub_22C3D61D4();
      v91 = v47;
      v206 = v90;
      v4 = 0;
      v50 = *(v47 + 16);
      v224 = MEMORY[0x277D84F90];
      v45 = v233;
      v51 = v221;
      while (v50 != v4)
      {
        if (v4 >= *(v91 + 16))
        {
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
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v92 = (*(v230 + 80) + 32) & ~*(v230 + 80);
        v93 = *(v230 + 72);
        (*(v230 + 16))(v51, v91 + v92 + v93 * v4, v45);
        if (sub_22C90130C())
        {
          v229 = *v227;
          (v229)(v223, v51, v45);
          v94 = v224;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v234 = *&v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22C3B62AC(0, *(v94 + 16) + 1, 1);
            v94 = *&v234;
          }

          v33 = *(v94 + 16);
          v96 = *(v94 + 24);
          if (v33 >= v96 >> 1)
          {
            v97 = sub_22C369AB0(v96);
            sub_22C3B62AC(v97, v33 + 1, 1);
            v94 = *&v234;
          }

          ++v4;
          *(v94 + 16) = v33 + 1;
          v224 = v94;
          v45 = v233;
          v47 = (v229)(v94 + v92 + v33 * v93, v223, v233);
        }

        else
        {
          v47 = (*v231)(v51, v45);
          ++v4;
        }
      }

      v234 = v46;

      v50 = v224;
      sub_22C3D6608(v98, v224);
      v222 = v48;
      v99 = 0;
      v51 = 0;
      v100 = 0;
      v101 = *(v47 + 16);
      v46 = -INFINITY;
LABEL_30:
      v102 = v100;
      while (v101 != v102)
      {
        if (v102 >= v101)
        {
          goto LABEL_124;
        }

        v100 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          goto LABEL_125;
        }

        v103 = *(v47 + 8 * v102 + 32);
        v104 = *(v103 + 16);
        ++v102;
        if (v104)
        {
          v105 = 0;
          v106 = v103 + 32;
          v107 = v102 - 1;
          do
          {
            v108 = *(v106 + 8 * v105);
            if (v46 < v108)
            {
              v99 = v105;
            }

            v109 = v105 + 1;
            if (v46 < v108)
            {
              v46 = *(v106 + 8 * v105);
              v51 = v107;
            }

            ++v105;
          }

          while (v104 != v109);
          goto LABEL_30;
        }
      }

      v204 = v47;
      v45 = MEMORY[0x277D84F90];
      v221 = v222 + 32;
      v205 = v51;
      v33 = MEMORY[0x277D84F90];
      v225 = MEMORY[0x277D84F90];
      do
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        if (v51 >= *(v222 + 16))
        {
          goto LABEL_127;
        }

        if ((v99 & 0x8000000000000000) != 0)
        {
          goto LABEL_128;
        }

        v110 = *(v221 + 8 * v51);
        if (v99 >= *(v110 + 16))
        {
          goto LABEL_129;
        }

        v111 = *(v110 + v99 + 32);
        v229 = v111;
        switch(v111)
        {
          case 1uLL:
            if (!v51)
            {
              goto LABEL_133;
            }

            if (v51 > *(v228 + 16))
            {
              goto LABEL_137;
            }

            v112 = v230;
            v113 = *(v230 + 80);
            sub_22C36BA94();
            v220 = v114;
            v4 = *(v112 + 72);
            v213 = v116;
            v117 = *(v112 + 16);
            v214 = v115 + v114 + v4 * v116;
            v223 = v117;
            v117(v210);
            v118 = sub_22C9012EC();
            v120 = sub_22C379F0C(v118, v119);
            (v112)(v120);
            v121 = *(v33 + 16);
            if (!swift_isUniquelyReferenced_nonNull_native() || v121 >= *(v33 + 24) >> 1)
            {
              sub_22C37B93C();
              sub_22C590270();
              v33 = v122;
            }

            swift_arrayDestroy();
            sub_22C37B1D8();
            sub_22C3758A8();
            if (!v99)
            {
              goto LABEL_138;
            }

            if (v99 > *(v50 + 16))
            {
              goto LABEL_140;
            }

            --v99;
            v123 = v50 + v220 + v4 * v99;
            v124 = v209;
            v125 = v233;
            v223(v209, v123, v233);
            v126 = sub_22C9012EC();
            v216 = v127;
            (v112)(v124, v125);
            v128 = v45[2];
            if (!swift_isUniquelyReferenced_nonNull_native() || v128 >= v45[3] >> 1)
            {
              sub_22C37B510();
              sub_22C590270();
              v45 = v129;
            }

            swift_arrayDestroy();
            sub_22C3D87B0();
            v45[2] = v128 + 1;
            v130 = v216;
            v45[4] = v126;
            v45[5] = v130;
            sub_22C37FC5C();
            v50 = v224;
            if (!v132 & v131)
            {
              goto LABEL_142;
            }

            sub_22C3D8798();
            v133();
            v134 = v225;
            v135 = *(v225 + 16);
            if (!swift_isUniquelyReferenced_nonNull_native() || v135 >= *(v134 + 24) >> 1)
            {
              sub_22C37B510();
              sub_22C590D50();
              v134 = v136;
            }

            sub_22C380458();
            if (v4 < 0 || v4 >= *(v134 + 16) * v4)
            {
              sub_22C3749A0();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v4)
            {
              sub_22C3749A0();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C382EE0();
            if (v178 == v179)
            {
              v182 = 0;
              v51 = -v4;
              do
              {
                if (v182)
                {
                  goto LABEL_144;
                }

                sub_22C3D8798();
                v183();
                sub_22C3825D0();
              }

              while (!v131);
            }

            v47 = sub_22C36DD28(v218, &qword_27D9BB648, &qword_22C90F880);
            v51 = v213;
            continue;
          case 2uLL:
            if (!v99)
            {
              goto LABEL_134;
            }

            if (v99 > *(v50 + 16))
            {
              goto LABEL_136;
            }

            --v99;
            v137 = v230;
            v138 = *(v230 + 80);
            sub_22C36BA94();
            v140 = v50 + v139 + v137[9] * v99;
            v141 = v137[2];
            v142 = v217;
            v220 = v140;
            v143 = v233;
            v223 = v141;
            v141(v217);
            sub_22C9012EC();
            v144 = v142;
            v145 = v137[1];
            v145(v144, v143);
            sub_22C90A30C();

            v146 = sub_22C90A45C();
            v148 = v147;
            v149 = *(v33 + 16);
            if (!swift_isUniquelyReferenced_nonNull_native() || v149 >= *(v33 + 24) >> 1)
            {
              sub_22C37B93C();
              sub_22C590270();
              v33 = v150;
            }

            swift_arrayDestroy();
            v151 = *(v33 + 16);
            memmove((v33 + 48), (v33 + 32), 16 * v151);
            *(v33 + 16) = v151 + 1;
            *(v33 + 32) = v146;
            *(v33 + 40) = v148;
            v152 = v212;
            sub_22C37F6F8();
            v153();
            v154 = sub_22C9012EC();
            v156 = v155;
            v145(v152, v151);
            v157 = v45[2];
            v158 = swift_isUniquelyReferenced_nonNull_native();
            v50 = v224;
            if (!v158 || v157 >= v45[3] >> 1)
            {
              sub_22C590270();
              v45 = v159;
            }

            swift_arrayDestroy();
            v4 = v45[2];
            v47 = memmove(v45 + 6, v45 + 4, 16 * v4);
            v45[2] = v4 + 1;
            v45[4] = v154;
            v45[5] = v156;
            continue;
          case 3uLL:
            if (!v51)
            {
              goto LABEL_132;
            }

            if (v51 > *(v228 + 16))
            {
              goto LABEL_135;
            }

            v4 = v51 - 1;
            v160 = v230;
            v50 = (*(v160 + 80) + 32) & ~*(v160 + 80);
            v214 = *(v230 + 72);
            v161 = *(v230 + 16);
            v220 = v228 + v50 + v214 * (v51 - 1);
            v223 = v161;
            v161(v211);
            v162 = sub_22C9012EC();
            v164 = sub_22C379F0C(v162, v163);
            (v160)(v164);
            v165 = *(v33 + 16);
            if (!swift_isUniquelyReferenced_nonNull_native() || v165 >= *(v33 + 24) >> 1)
            {
              sub_22C37B93C();
              sub_22C590270();
              v33 = v166;
            }

            swift_arrayDestroy();
            sub_22C37B1D8();
            sub_22C3758A8();
            sub_22C37FC5C();
            if (!v132 & v131)
            {
              goto LABEL_139;
            }

            v215 = v51 - 1;
            v216 = v50;
            v167 = v217;
            sub_22C37F6F8();
            v168();
            sub_22C9012EC();
            (v160)(v167, v51 - 1);
            sub_22C90A30C();

            v169 = sub_22C90A45C();
            v171 = v170;
            v172 = v45[2];
            if (!swift_isUniquelyReferenced_nonNull_native() || v172 >= v45[3] >> 1)
            {
              sub_22C37B510();
              sub_22C590270();
              v45 = v173;
            }

            swift_arrayDestroy();
            sub_22C3D87B0();
            v45[2] = v172 + 1;
            v45[4] = v169;
            v45[5] = v171;
            sub_22C37FC5C();
            v50 = v224;
            if (!v132 & v131)
            {
              goto LABEL_141;
            }

            sub_22C3D8798();
            v174();
            v175 = v225;
            v176 = *(v225 + 16);
            if (!swift_isUniquelyReferenced_nonNull_native() || v176 >= *(v175 + 24) >> 1)
            {
              sub_22C37B510();
              sub_22C590D50();
              v175 = v177;
            }

            v4 = v214;
            sub_22C380458();
            if (v4 < 0 || v4 >= *(v175 + 16) * v4)
            {
              sub_22C3749A0();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v4)
            {
              sub_22C3749A0();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C382EE0();
            if (v178 != v179)
            {
              goto LABEL_98;
            }

            v180 = 0;
            v51 = -v4;
            break;
          default:
            goto LABEL_107;
        }

        do
        {
          if (v180)
          {
            goto LABEL_143;
          }

          sub_22C3D8798();
          v181();
          sub_22C3825D0();
        }

        while (!v131);
LABEL_98:
        v47 = sub_22C36DD28(v219, &qword_27D9BB648, &qword_22C90F880);
        v51 = v215;
      }

      while (v229);
LABEL_107:
      v50 = v226;
      v184 = *(v226 + 16);
      if (v205 >= v184)
      {
        sub_22C3720E8();

        v185 = v228;
      }

      else
      {
        v185 = v228;
        v47 = v208;
        v4 = v225;
        if (v205 <= 0)
        {

          v50 = v207;
          goto LABEL_122;
        }

        if (v205 > *(v208 + 16))
        {
          goto LABEL_145;
        }

        v186 = *(v208 + 8 * v205 + 24);
        v179 = __OFADD__(v186, 1);
        v187 = v186 + 1;
        if (v179)
        {
          goto LABEL_146;
        }

        if (v187 >= v184)
        {
          goto LABEL_147;
        }

        v4 = (*(v230 + 80) + 32) & ~*(v230 + 80);
        v51 = *(v230 + 72);
        v188 = *(v230 + 16);
        v189 = v203;
        v188(v203, v226 + v4 + v51 * v187, v233);

        if ((sub_22C90130C() & 1) == 0 && (sub_22C9012FC() & 1) == 0)
        {
          v188(v202, v189, v233);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v207;
          if ((v47 & 1) == 0)
          {
            goto LABEL_148;
          }

          goto LABEL_119;
        }

        v190 = sub_22C37F028();
        v191(v190, v233);
        sub_22C3720E8();

        v185 = v228;
      }

      v50 = v207;
      v4 = v225;
      goto LABEL_122;
    }

    v63 = *v45;
    v64 = *v227;
    v4 = v233;
    (*v227)(v32, v45 + *(v33 + 48), v233);
    if (sub_22C90130C())
    {
      (*v232)(v225, v32, v4);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      if ((v67 & 1) == 0)
      {
        sub_22C377B6C(v67, v68, v69, v228);
        sub_22C590D50();
        v228 = v85;
      }

      v71 = *(v228 + 16);
      v70 = *(v228 + 24);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        sub_22C369AB0(v70);
        v220 = v86;
        sub_22C590D50();
        v72 = v220;
        v228 = v87;
      }

      *(v228 + 16) = v72;
      v73 = *(v230 + 80);
      sub_22C36BA94();
      (v64)(v75 + v74 + *(v76 + 72) * v71, v225, v233);
      sub_22C3720E8();
      v77 = swift_isUniquelyReferenced_nonNull_native();
      if ((v77 & 1) == 0)
      {
        sub_22C377B6C(v77, v78, v79, v208);
        sub_22C590E18();
        v208 = v88;
      }

      v81 = *(v208 + 16);
      v80 = *(v208 + 24);
      v4 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        sub_22C369AB0(v80);
        sub_22C590E18();
        v208 = v89;
      }

      v82 = sub_22C37F028();
      v83(v82, v233);
      v84 = v208;
      *(v208 + 16) = v4;
      *(v84 + 8 * v81 + 32) = v63;
      v47 = v226;
    }

    else
    {
      v65 = sub_22C37F028();
      v66(v65, v4);
      v47 = v226;
    }
  }

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
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  sub_22C377B6C(v47, v48, v49, v225);
  sub_22C590D50();
  v225 = v200;
LABEL_119:
  v194 = *(v225 + 16);
  v193 = *(v225 + 24);
  if (v194 >= v193 >> 1)
  {
    sub_22C369AB0(v193);
    sub_22C590D50();
    v225 = v201;
  }

  v195 = v233;
  (*v231)(v203, v233);
  v196 = v225;
  *(v225 + 16) = v194 + 1;
  v197 = v196 + v4 + v194 * v51;
  v4 = v196;
  (*v227)(v197, v202, v195);
  sub_22C3720E8();

  v185 = v228;

LABEL_122:
  *v50 = v4;
  *(v50 + 8) = v46;
  v198 = v222;
  *(v50 + 16) = v204;
  *(v50 + 24) = v198;
  *(v50 + 32) = v33;
  *(v50 + 40) = v45;
  v199 = v224;
  *(v50 + 48) = v185;
  *(v50 + 56) = v199;
  return result;
}

uint64_t sub_22C3D61D4()
{
  v0 = sub_22C3A5908(&qword_27D9BB6A8, &qword_22C90FAB8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22C369ABC();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v42 = v6;
  v7 = sub_22C90133C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v39 = v13 - v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  v41 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  v40 = v18;
  sub_22C90128C();
  sub_22C3731A8();
  sub_22C3D8704(v19, v20);
  v21 = sub_22C90A4DC();
  v43 = MEMORY[0x277D84F90];
  sub_22C3B62AC(0, v21 & ~(v21 >> 63), 0);

  result = sub_22C90A4CC();
  if (v21 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v21)
  {
    sub_22C3731A8();
    sub_22C3D8704(v23, v24);
    do
    {
      sub_22C90ACEC();
      result = sub_22C370B74(v4, 1, v7);
      if (result == 1)
      {
        goto LABEL_15;
      }

      v25 = v39;
      (*(v10 + 16))(v39, v4, v7);
      (*(v10 + 8))(v4, v7);
      v27 = *(v43 + 16);
      v26 = *(v43 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22C3B62AC(v26 > 1, v27 + 1, 1);
        v25 = v39;
      }

      *(v43 + 16) = v27 + 1;
      v28 = *(v10 + 80);
      sub_22C36BA94();
      (*(v10 + 32))(v43 + v29 + *(v10 + 72) * v27, v25, v7);
    }

    while (--v21);
  }

  sub_22C3731A8();
  sub_22C3D8704(v30, v31);
  v32 = (v10 + 32);
  while (1)
  {
    sub_22C90ACEC();
    if (sub_22C370B74(v42, 1, v7) == 1)
    {
      break;
    }

    v33 = *v32;
    (*v32)(v40, v42, v7);
    v34 = v41;
    v33(v41, v40, v7);
    v36 = *(v43 + 16);
    v35 = *(v43 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_22C3B62AC(v35 > 1, v36 + 1, 1);
      v34 = v41;
    }

    *(v43 + 16) = v36 + 1;
    v37 = *(v10 + 80);
    sub_22C36BA94();
    v33(v43 + v38 + *(v10 + 72) * v36, v34, v7);
  }

  sub_22C36DD28(v42, &qword_27D9BB6A8, &qword_22C90FAB8);
  return v43;
}

void sub_22C3D6608(uint64_t a1, uint64_t a2)
{
  v58 = sub_22C90133C();
  v5 = sub_22C369824(v58);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v56 = v11;
  v12 = *v2;
  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  v15 = sub_22C825A20(v14 + 1, 0.0);
  v16 = sub_22C825ACC(v15, v13 + 1);
  v17 = sub_22C825AE0(0, v14 + 1);
  v18 = sub_22C825B50(v17, v13 + 1);
  v52 = v13;
  if (!v13 || !v14)
  {
    return;
  }

  v19 = *(v7 + 80);
  sub_22C36BA94();
  v51 = a1 + v20;
  v50 = a2 + v20;
  v62 = *(v7 + 72);
  v55 = (v7 + 16);
  v54 = (v7 + 8);
  v21 = 1;
  v53 = v14;
  while (2)
  {
    v22 = 0;
    v23 = v21 - 1;
    v60 = v51 + v62 * (v21 - 1);
    v63 = v50;
    v61 = v21;
    v59 = v21 - 1;
    do
    {
      sub_22C3A5908(&qword_27D9BB6A0, &qword_22C90FAB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90D070;
      *(inited + 32) = 0;
      if (v21 > *(v16 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
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
        return;
      }

      v25 = v16 + 32;
      v26 = *(v16 + 32 + 8 * v23);
      if (v22 >= *(v26 + 16))
      {
        goto LABEL_39;
      }

      v27 = inited;
      v28 = *(v26 + 8 * v22 + 32);
      v29 = *v55;
      (*v55)(v56, v60, v58);
      v29(v57, v63, v58);
      sub_22C9012EC();
      sub_22C9012EC();
      v21 = v61;
      sub_22C3D6B58();
      v31 = v30;

      v32 = *v54;
      (*v54)(v57, v58);
      v32(v56, v58);
      v33 = v28 + 1.0 - v31;
      v27[5] = v33;
      if (v61 >= *(v16 + 16))
      {
        goto LABEL_40;
      }

      v34 = *(v25 + 8 * v61);
      if (v22 >= *(v34 + 16))
      {
        goto LABEL_41;
      }

      v35 = v22 + 1;
      v36 = *(v34 + 8 * v22 + 32) - v12;
      v27[6] = v36;
      v23 = v59;
      v37 = *(v25 + 8 * v59);
      if (v22 + 1 >= *(v37 + 16))
      {
        goto LABEL_42;
      }

      v38 = *(v37 + 8 * v22 + 40) - v12;
      v27[7] = v38;
      v39 = v27[4];

      v40 = fmax(v39, -INFINITY);
      if (v40 < v33)
      {
        if (v33 < v36)
        {
LABEL_16:
          if (v36 >= v38)
          {
            v41 = 2;
            v38 = v36;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v40 = v36;
              goto LABEL_22;
            }

            goto LABEL_35;
          }
        }

        else if (v33 >= v38)
        {
          v41 = 1;
          v38 = v33;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v40 = v33;
            goto LABEL_22;
          }

          goto LABEL_35;
        }

LABEL_20:
        v41 = 3;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_21:
          v40 = v38;
          goto LABEL_22;
        }

LABEL_35:
        sub_22C8875F0(v16);
        v16 = v46;
        goto LABEL_21;
      }

      if (v40 < v36)
      {
        goto LABEL_16;
      }

      if (v40 < v38)
      {
        goto LABEL_20;
      }

      v41 = 0;
      v38 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_22:
      if (v61 >= *(v16 + 16))
      {
        goto LABEL_43;
      }

      v42 = *(v16 + 32 + 8 * v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 32 + 8 * v61) = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C8875D8(v42);
        v42 = v47;
        *(v16 + 32 + 8 * v61) = v47;
      }

      if (v35 >= *(v42 + 16))
      {
        goto LABEL_44;
      }

      *(v42 + 8 * v22 + 40) = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C8875C0(v18);
        v18 = v48;
      }

      if (v61 >= *(v18 + 16))
      {
        goto LABEL_45;
      }

      v44 = *(v18 + 32 + 8 * v61);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 32 + 8 * v61) = v44;
      if ((v45 & 1) == 0)
      {
        sub_22C8875A8(v44);
        v44 = v49;
        *(v18 + 32 + 8 * v61) = v49;
      }

      if (v35 >= *(v44 + 16))
      {
        goto LABEL_46;
      }

      *(v44 + v22++ + 33) = v41;
      v63 += v62;
    }

    while (v53 != v22);
    v21 = v61 + 1;
    if (v61 != v52)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22C3D6B58()
{
  v1 = *v0;
  v2 = sub_22C90A30C();
  sub_22C36A724();
  if (v2 < sub_22C90A30C())
  {
    v3 = sub_22C36A724();
    return sub_22C3D6B58(v3);
  }

  sub_22C36A724();
  if (!sub_22C90A30C())
  {
    return sub_22C90A30C();
  }

  sub_22C3A5908(&qword_27D9BB6A0, &qword_22C90FAB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  *(inited + 32) = sub_22C90A30C();
  sub_22C36A724();
  *(inited + 40) = sub_22C90A30C();
  sub_22C3D0C8C(inited);
  v7 = v6;
  result = swift_setDeallocating();
  if ((v7 & 1) == 0)
  {
    sub_22C36A724();
    result = sub_22C90A30C();
    if (__OFADD__(result, 1))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = sub_22C7E324C(0.0, (result + 1), 1.0);

    v9 = 0;
LABEL_7:
    result = sub_22C90A3AC();
    if (v10)
    {
      v11 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        v12 = result;
        v13 = v10;
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_22C90F800;
        *(v14 + 32) = v9 + 1.0;

        for (i = 0; ; ++i)
        {
          result = sub_22C90A3AC();
          if (!v16)
          {

            v8 = v14;
            v9 = v11;
            goto LABEL_7;
          }

          if (i + 1 >= *(v8 + 16))
          {
            break;
          }

          if (i >= *(v14 + 16))
          {
            goto LABEL_36;
          }

          v17 = v8 + 8 * i;
          v18 = *(v17 + 32);
          v19 = *(v17 + 40) + 1.0;
          v20 = v14 + 8 * i;
          if (*(v20 + 32) + 1.0 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = *(v20 + 32) + 1.0;
          }

          if (v12 == result && v13 == v16)
          {

            v24 = 0.0;
          }

          else
          {
            v23 = sub_22C90B4FC();

            if (v23)
            {
              v24 = 0.0;
            }

            else
            {
              v24 = 1.0;
            }
          }

          v25 = v18 + v24;
          if (v25 >= v21)
          {
            v26 = v21;
          }

          else
          {
            v26 = v25;
          }

          v28 = *(v14 + 16);
          v27 = *(v14 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_22C369AB0(v27);
            sub_22C5902D0();
            v14 = v29;
          }

          *(v14 + 16) = v28 + 1;
          *(v14 + 8 * v28 + 32) = v26;
        }

        __break(1u);
LABEL_36:
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

    result = sub_22C3A5AA0(v8);
    if (v30)
    {
LABEL_39:
      __break(1u);
      return result;
    }
  }

  return result;
}

char *sub_22C3D6F00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3D7028(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3D720C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3D7590(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3D7650(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[208 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3D77E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3D7808(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3D78B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

uint64_t sub_22C3D7D2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_22C3797F4();
  if (v8 && (v9 = (a4)(0), result = sub_22C36985C(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_22C37151C();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_22C37151C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_22C3D7DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_22C3797F4();
  if (v10 && (v11 = sub_22C3A5908(a4, a5), result = sub_22C36985C(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_22C37151C();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_22C3A5908(a4, a5);
    sub_22C37151C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_22C3D7EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C3A5908(a3, a4);
  sub_22C36985C(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_22C3D7F50()
{
  result = qword_27D9BB660;
  if (!qword_27D9BB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmithWatermanTokenAligner(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SmithWatermanTokenAligner(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationBiomeRoot.RequestValidation.ValidationResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmithWatermanTokenAligner.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_22C3D8164(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22C3D8178(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3D81B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22C3D84CC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22C90B1BC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22C90AF9C();
  *v1 = result;
  return result;
}

uint64_t sub_22C3D868C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_22C3D8704(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C3D8798()
{
  v2 = *(v0 - 112);
  v1 = *(v0 - 104);
  v3 = *(v0 - 184);
}

void *sub_22C3D87B0()
{
  v2 = 16 * v0[2];

  return memmove(v0 + 6, v0 + 4, v2);
}

uint64_t sub_22C3D87D8(uint64_t a1)
{
  v2 = sub_22C3D9E60();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3D8814(uint64_t a1)
{
  v2 = sub_22C3D9E60();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t StringExprsAreQuotesRequirement.init(aligner:locale:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  v46 = a3;
  v4 = sub_22C90077C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v45 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = *a1;
  sub_22C3A5908(&qword_27D9BB6D8, &unk_22C90FB60);
  v16 = sub_22C9012AC();
  sub_22C369824(v16);
  v18 = v17;
  v20 = *(v19 + 72);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22C90FB40;
  v23 = v22 + v21;
  v24 = *(v18 + 104);
  v24(v23, *MEMORY[0x277D2A308], v16);
  v24(v23 + v20, *MEMORY[0x277D2A2F0], v16);
  v25 = v23 + 2 * v20;
  v26 = v47;
  v24(v25, *MEMORY[0x277D2A2E0], v16);
  (*(v7 + 16))(v14, v26, v4);
  v27 = sub_22C90136C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = v48;
  v31 = sub_22C90135C();
  if (v30)
  {
    v32 = *(v7 + 8);
    v33 = sub_22C371530();
    v34(v33);
  }

  else
  {
    v36 = v31;
    v38 = v45;
    v37 = v46;
    v39 = sub_22C9012DC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();

    sub_22C9012CC();
    sub_22C90073C();
    v48 = sub_22C9012BC();

    v42 = *(v7 + 8);
    v43 = sub_22C371530();
    v42(v43);
    result = (v42)(v38, v4);
    v44 = v48;
    *v37 = v36;
    v37[1] = v44;
    v37[2] = v22;
    v37[3] = v15;
  }

  return result;
}

uint64_t StringExprsAreQuotesRequirement.enforce(_:quotes:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v106 = a3;
  v104 = a2;
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v102 = v8;
  v103 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v108 = v11 - v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v100 = &v93 - v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v17 = &v93 - v16;
  v18 = sub_22C90133C();
  v19 = sub_22C369824(v18);
  v101 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v93 - v27;
  v29 = *(v3 + 8);
  v30 = *(v4 + 24);
  v31 = v125;
  result = sub_22C90129C();
  v33 = v31;
  if (!v31)
  {
    *&v107 = v29;
    v98 = v28;
    v99 = v18;
    v95 = v25;
    v96 = v17;
    v97 = a1;
    v34 = v106;
    v35 = *(v106 + 16);
    if (v35)
    {
      v108 = result;
      v124 = MEMORY[0x277D84F90];
      sub_22C3B6304(0, v35, 0);
      v36 = v124;
      v37 = v35 - 1;
      for (i = (v34 + 40); ; i += 2)
      {
        v40 = *(i - 1);
        v39 = *i;

        sub_22C90129C();
        if (v33)
        {
        }

        v122 = v30;
        SmithWatermanTokenAligner.align(_:to:)(v108, v123);
        v125 = 0;

        v120 = v123[2];
        v121 = v123[3];
        v118 = v123[0];
        v119 = v123[1];
        v124 = v36;
        v42 = v36[2];
        v41 = v36[3];
        if (v42 >= v41 >> 1)
        {
          sub_22C3B6304(v41 > 1, v42 + 1, 1);
          v36 = v124;
        }

        v36[2] = v42 + 1;
        v43 = &v36[10 * v42 + 4];
        *v43 = v40;
        *(v43 + 8) = v39;
        v44 = v118;
        v45 = v119;
        v46 = v121;
        *(v43 + 48) = v120;
        *(v43 + 64) = v46;
        *(v43 + 16) = v44;
        *(v43 + 32) = v45;
        if (!v37)
        {
          break;
        }

        --v37;
        v33 = v125;
      }

      memcpy(v117, v36 + 4, sizeof(v117));
      v53 = *(&v117[0] + 1);
      v54 = *&v117[0];
      v106 = v117[3];
      v107 = v117[4];
      v105 = v117[2];
      v55 = *(&v117[1] + 1);
      v56 = *&v117[1];
      result = sub_22C3D9B0C(v117, v112);
      v57 = v42 + 1;
      v58 = 1;
      v59 = 32;
      v94 = 32;
LABEL_14:
      for (j = v59 + 80 * v58; ; j += 80)
      {
        *&v111[0] = v56;
        *(v111 + 1) = v55;
        v111[1] = v105;
        v111[2] = v106;
        v111[3] = v107;
        v112[0] = v54;
        v112[1] = v53;
        v113 = v111[0];
        v114 = v105;
        v115 = v106;
        v116 = v107;
        if (v57 == v58)
        {
          break;
        }

        if (v58 >= v36[2])
        {
          __break(1u);
          goto LABEL_40;
        }

        result = memcpy(v110, v36 + j, sizeof(v110));
        v61 = *(&v110[1] + 1);
        if (v55 < *(&v110[1] + 1))
        {
          sub_22C3D9B0C(v110, &v109);
          result = sub_22C3D9B7C(v112);
          v53 = *(&v110[0] + 1);
          v54 = *&v110[0];
          v106 = v110[3];
          v107 = v110[4];
          v105 = v110[2];
          ++v58;
          v55 = v61;
          v56 = *&v110[1];
          v59 = v94;
          goto LABEL_14;
        }

        ++v58;
      }

      if (!*(v56 + 16))
      {
        goto LABEL_30;
      }

      v62 = v101;
      v63 = v56 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
      v64 = v98;
      *&v106 = *(v101 + 16);
      (v106)(v98, v63, v99);
      v65 = sub_22C90131C();
      v66 = v99;
      *&v107 = v65;
      *&v105 = *(v62 + 8);
      (v105)(v64, v99);
      v67 = *(v56 + 16);
      if (!v67)
      {
LABEL_30:

        sub_22C3D9BE4(v111);
        sub_22C3D9C38();
        swift_allocError();
        *v89 = 1;
        swift_willThrow();
      }

      v68 = v63 + *(v101 + 72) * (v67 - 1);
      v69 = v95;
      (v106)(v95, v68, v66);
      sub_22C90131C();
      v71 = v70;
      (v105)(v69, v66);
      sub_22C3D9BE4(v111);
      result = v107;
      if (v71 >> 14 >= v107 >> 14)
      {
        *&v105 = sub_22C90A4AC();
        *&v106 = v72;
        *&v107 = v73;
        v74 = MEMORY[0x2318B76D0]();
        v76 = v104;
        v77 = v74 == v97 && v75 == v104;
        v78 = v100;
        if (v77)
        {
        }

        else
        {
          v79 = sub_22C90B4FC();

          if ((v79 & 1) == 0)
          {
            sub_22C903F9C();

            v80 = sub_22C9063CC();
            v81 = sub_22C90AABC();

            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              *&v110[0] = v101;
              *v82 = 136315650;
              *(v82 + 4) = sub_22C36F9F4(v97, v76, v110);
              *(v82 + 12) = 2080;

              v83 = sub_22C377B80();
              v84 = MEMORY[0x2318B76D0](v83);
              v86 = v85;

              v87 = sub_22C36F9F4(v84, v86, v110);

              *(v82 + 14) = v87;
              *(v82 + 22) = 2080;
              v88 = sub_22C36F9F4(v54, v53, v110);

              *(v82 + 24) = v88;
              _os_log_impl(&dword_22C366000, v80, v81, "Quote checker replaced %s with %s, quoting from %s", v82, 0x20u);
              swift_arrayDestroy();
              sub_22C3699EC();
              sub_22C3699EC();

              (*(v102 + 8))(v100, v103);
              return sub_22C377B80();
            }

LABEL_36:

            (*(v102 + 8))(v78, v103);
            return v105;
          }
        }

        v78 = v96;
        sub_22C903F9C();

        v80 = sub_22C9063CC();
        v90 = sub_22C90AABC();

        if (!os_log_type_enabled(v80, v90))
        {
          goto LABEL_36;
        }

        v91 = swift_slowAlloc();
        *&v110[0] = swift_slowAlloc();
        *v91 = 136315394;
        *(v91 + 4) = sub_22C36F9F4(v97, v76, v110);
        *(v91 + 12) = 2080;
        v92 = sub_22C36F9F4(v54, v53, v110);

        *(v91 + 14) = v92;
        _os_log_impl(&dword_22C366000, v80, v90, "Quote checker validated %s is a quote from %s", v91, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v102 + 8))(v96, v103);
        return v105;
      }

LABEL_40:
      __break(1u);
    }

    else
    {
      v47 = v108;
      sub_22C903F9C();
      v48 = sub_22C9063CC();
      v49 = sub_22C90AADC();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v103;
      if (v50)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_22C366000, v48, v49, "Error! Quote checker called without any strings to quote. Quoting empty string instead.", v52, 2u);
        sub_22C3699EC();
      }

      (*(v102 + 8))(v47, v51);
      return 15;
    }
  }

  return result;
}

uint64_t sub_22C3D9564()
{
  v1 = v0;
  v2 = sub_22C90952C();
  v3 = sub_22C369824(v2);
  v66 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90941C();
  v9 = sub_22C369824(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v64 = v62 - v16;
  sub_22C369930();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v62 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v62 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (v62 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = v62 - v27;
  v30 = *(v29 + 2);
  v31 = v1;
  v32 = v29;
  v30(v62 - v27, v31, v8);
  v33 = (*(v32 + 11))(v28, v8);
  if (v33 == *MEMORY[0x277D72AD0])
  {
    v30(v14, v28, v8);
    (*(v32 + 12))(v14, v8);
    v34 = *v14;
    v35 = swift_projectBox();
    v36 = v66;
    if ((*(v66 + 11))(v35, v2) != *MEMORY[0x277D72D50])
    {

      v42 = 0;
      goto LABEL_11;
    }

    v37 = v65;
    (*(v36 + 2))(v65, v35, v2);
    (*(v36 + 12))(v37, v2);
    v38 = *v37;
    v39 = sub_22C9094EC();
    v40 = swift_projectBox();
    v41 = (*(*(v39 - 8) + 88))(v40, v39);
    if (v41 == *MEMORY[0x277D72CE0])
    {

      v42 = 1;
LABEL_11:
      (*(v32 + 1))(v28, v8);
      return v42 & 1;
    }

    v42 = v41 == *MEMORY[0x277D72C88];

LABEL_10:

    goto LABEL_11;
  }

  v66 = v28;
  if (v33 == *MEMORY[0x277D72AB0] || v33 == *MEMORY[0x277D72AE8])
  {
    v28 = v66;
    v30(v26, v66, v8);
    (*(v32 + 12))(v26, v8);
    v43 = *v26;
    v44 = swift_projectBox();
    v45 = (v30)(v23, v44, v8);
    v42 = sub_22C3D9564(v45);
    (*(v32 + 1))(v23, v8);
    goto LABEL_10;
  }

  if (v33 != *MEMORY[0x277D72AD8])
  {
    v42 = 0;
    v28 = v66;
    goto LABEL_11;
  }

  v30(v20, v66, v8);
  v65 = v32;
  v47 = v32 + 96;
  (*(v32 + 12))(v20, v8);
  v62[0] = *v20;
  v48 = *(v62[0] + 16);
  v49 = v48 + 56;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v48 + 56);
  v53 = (v50 + 63) >> 6;
  v62[1] = v47 - 88;
  v63 = v48;

  v54 = 0;
  v55 = v65;
  while (v52)
  {
    v56 = v54;
    v57 = v30;
LABEL_23:
    v58 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v59 = v64;
    v60 = v57(v64, *(v63 + 48) + *(v55 + 9) * (v58 | (v56 << 6)), v8);
    v61 = sub_22C3D9564(v60);
    result = (*(v55 + 1))(v59, v8);
    if (v61)
    {

      v42 = 1;
LABEL_27:
      v32 = v65;
      v28 = v66;
      goto LABEL_11;
    }
  }

  v57 = v30;
  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v56 >= v53)
    {

      v42 = 0;
      goto LABEL_27;
    }

    v52 = *(v49 + 8 * v56);
    ++v54;
    if (v52)
    {
      v54 = v56;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3D9B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BAF60, &qword_22C90D808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3D9B7C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAF60, &qword_22C90D808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3D9C38()
{
  result = qword_27D9BB6E0;
  if (!qword_27D9BB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB6E0);
  }

  return result;
}

__n128 sub_22C3D9C8C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C3D9C98(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3D9CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StringExprsAreQuotesRequirement.AlignmentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C3D9E0C()
{
  result = qword_27D9BB6E8;
  if (!qword_27D9BB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB6E8);
  }

  return result;
}

unint64_t sub_22C3D9E60()
{
  result = qword_27D9BB6F0;
  if (!qword_27D9BB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB6F0);
  }

  return result;
}

_BYTE *sub_22C3D9EC4(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C3D9F74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 56))(v10);
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_22C3AC1A0(&qword_27D9BB188, &qword_22C90FE40);
  v4 = sub_22C90B6AC();
  result = sub_22C3DBC40(v4, &v13, v11);
  if (!v2)
  {
    v9 = v12;
    v6 = v12;
    v7 = sub_22C374168(v11, v12);
    *(a2 + 24) = v9;
    v8 = sub_22C36D548(a2);
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    return sub_22C36FF94(v11);
  }

  return result;
}

uint64_t static FullPlannerCLISupport.IFTool.GMSUtilities.runEmptyRequestAndGetModelInformation(locale:queryableToolbox:)(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v2[29] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v5 = *(*(type metadata accessor for FullPlannerPreferences() - 8) + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3DA18C, 0, 0);
}

uint64_t sub_22C3DA18C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  FullPlannerPreferences.init()(v2);
  v6 = sub_22C90077C();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  v7 = v1 + v4[6];
  sub_22C57689C();
  v8 = v4[7];
  v9 = sub_22C90876C();
  sub_22C369ACC(v9);
  v10 = v4[9];
  v11 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C369ACC(v11);
  sub_22C3DA748(v2, v1 + v4[10]);
  *(v1 + v4[5]) = v3;
  v12 = (v1 + v4[8]);
  *v12 = 0;
  v12[1] = 0;

  sub_22C4DE060(6u, v1, (v0 + 16));
  sub_22C3731C0(*(v0 + 240));
  v13 = *(v0 + 48);
  sub_22C36D1E4(v0 + 16, *(v0 + 40));
  sub_22C3D9F74(v13, v0 + 56);
  sub_22C378A4C(v0 + 56, v0 + 136);
  sub_22C3A5908(&qword_27D9BB6F8, &qword_22C90FCF8);
  sub_22C3A5908(&qword_27D9BB700, &qword_22C90FD00);
  if (swift_dynamicCast())
  {
    sub_22C36C730((v0 + 176), v0 + 96);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    sub_22C374168((v0 + 96), v14);
    v16 = *(v15 + 8);
    v25 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v18[1] = sub_22C3DA4E8;

    return v25(v14, v15);
  }

  else
  {
    v20 = *(v0 + 248);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    sub_22C3DA80C(v0 + 176);
    sub_22C3DA874();
    swift_allocError();
    swift_willThrow();
    sub_22C36FF94((v0 + 56));
    sub_22C36A730();
    sub_22C3DA7AC(v20, v21);
    sub_22C36FF94((v0 + 16));
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_22C3DA4E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 256);
  v8 = *v3;
  *(*v3 + 264) = v2;

  if (v2)
  {
    v9 = sub_22C3DA6B4;
  }

  else
  {
    *(v6 + 272) = a2;
    *(v6 + 280) = a1;
    v9 = sub_22C3DA61C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C3DA61C()
{
  v1 = v0[30];
  v2 = v0[31];
  sub_22C36FF94(v0 + 7);
  sub_22C36A730();
  sub_22C3DA7AC(v2, v3);
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 2);

  v4 = v0[1];
  v6 = v0[34];
  v5 = v0[35];

  return v4(v5, v6);
}

uint64_t sub_22C3DA6B4()
{
  v1 = v0[31];
  sub_22C36FF94(v0 + 7);
  sub_22C36A730();
  sub_22C3DA7AC(v1, v2);
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 2);
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22C3DA748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3DA7AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22C3DA80C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB708, &qword_22C90FD08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3DA874()
{
  result = qword_27D9BB710;
  if (!qword_27D9BB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB710);
  }

  return result;
}

uint64_t FullPlannerCLISupport.IFTool.GMSUtilities.GMSUtilitiesError.hashValue.getter()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

unint64_t sub_22C3DA970()
{
  result = qword_27D9BB718;
  if (!qword_27D9BB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB718);
  }

  return result;
}

_BYTE *sub_22C3DA9DC(_BYTE *result, int a2, int a3)
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

uint64_t static FullPlannerCLISupport.IFTool.getPromptGrammarGenerator(preferences:locale:queryableToolbox:toolsOverride:baseGrammar:structuredSearchToolDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a7;
  v61 = a6;
  v58 = a5;
  v57 = a4;
  v62 = a3;
  v56 = a2;
  v55 = a8;
  v10 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v52 - v14);
  v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v76 = &v52 - v20;
  v21 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v27 = sub_22C90077C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v33 = sub_22C36985C(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  result = sub_22C4DE310();
  if (!v8)
  {
    v39 = *(v28 + 16);
    v54 = result;
    v39(v31, v56, v27);
    v53 = v26;
    sub_22C3DB138(v57, v26, &qword_27D9BB730, &unk_22C90FE30);
    v40 = sub_22C90876C();
    sub_22C36C640(v76, 1, 1, v40);
    v41 = v61;
    v57 = 0;
    v42 = v58;
    if (!v61)
    {
      v42 = 0;
    }

    v58 = v42;
    v43 = v61 ? 0 : 0x3000000000000007;
    v44 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
    sub_22C3DB138(v59, v15 + *(v44 + 20), &qword_27D9BB738, &unk_22C9185A0);
    *v15 = v58;
    v15[1] = v41;
    v15[2] = v43;
    v15[3] = 0;
    sub_22C36C640(v15, 0, 1, v44);
    sub_22C3DA748(v60, &v37[v32[10]]);
    (*(v28 + 32))(v37, v31, v27);
    *&v37[v32[5]] = v62;
    sub_22C3DB08C(v53, &v37[v32[6]], &qword_27D9BB730, &unk_22C90FE30);
    sub_22C3DB08C(v76, &v37[v32[7]], &qword_27D9BB728, &qword_22C911230);
    v45 = &v37[v32[8]];
    *v45 = 0;
    *(v45 + 1) = 0;
    sub_22C3DB08C(v15, &v37[v32[9]], &qword_27D9BB720, &unk_22C90FE20);

    v46 = v57;
    sub_22C4DE060(v54, v37, &v73);
    result = sub_22C3DB0DC(v37);
    if (!v46)
    {
      v47 = v74;
      v48 = v75;
      sub_22C36D1E4(&v73, v74);
      (*(v48 + 96))(v66, v47, v48);
      if (v67)
      {
        v63[0] = *&v66[0];
        sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
        swift_willThrowTypedImpl();
        return sub_22C36FF94(&v73);
      }

      sub_22C36C730(v66, &v68);
      sub_22C3A5908(&qword_27D9BB740, &qword_22C90FE48);
      sub_22C3A5908(&qword_27D9BB748, &qword_22C90FE50);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v72 = 0;
        memset(v71, 0, sizeof(v71));
      }

      sub_22C3DB138(v71, v63, &qword_27D9BB750, &qword_22C90FE58);
      v49 = v64;
      if (v64)
      {
        v50 = v65;
        sub_22C374168(v63, v64);
        (*(v50 + 8))(&v68, v49, v50);
        sub_22C36FF94(v63);
        if (*(&v69 + 1))
        {
          sub_22C36C730(&v68, v66);
          sub_22C36C730(v66, v55);
LABEL_17:
          sub_22C36DD28(v71, &qword_27D9BB750, &qword_22C90FE58);
          return sub_22C36FF94(&v73);
        }
      }

      else
      {
        sub_22C36DD28(v63, &qword_27D9BB750, &qword_22C90FE58);
        v68 = 0u;
        v69 = 0u;
        v70 = 0;
      }

      sub_22C36DD28(&v68, &qword_27D9BB758, &qword_22C90FE60);
      v51 = v55;
      *(v55 + 32) = 0;
      *v51 = 0u;
      v51[1] = 0u;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_22C3DB08C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_22C3DB0DC(uint64_t a1)
{
  v2 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3DB138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t FullPlannerCLISupport.IFTool.CLIGrammarGenerator.generateGrammar(grammarComponents:quotableStrings:)()
{
  sub_22C369980();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v5);
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3DB220, 0, 0);
}

uint64_t sub_22C3DB220()
{
  v1 = v0;
  v2 = v0[19];
  sub_22C378A4C(v0[20], (v0 + 12));
  v52 = v0[16];
  v53 = v0[15];
  sub_22C374168(v0 + 12, v53);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v54 = v0;
  if (v3)
  {
    v5 = v0[19];
    v64 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v6 = (v5 + 40);
    v4 = v64;
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = 4;
      *(v10 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v10 + 32) = v11;
      v13 = *(v64 + 16);
      v12 = *(v64 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_22C3B63D4();
      }

      *(v64 + 16) = v13 + 1;
      *(v64 + 8 * v13 + 32) = v10 | 0xA000000000000000;
      v6 += 2;
      --v3;
    }

    while (v3);
    v1 = v54;
  }

  v14 = v1[18];
  v15 = sub_22C3DB9E8(v4, &unk_283FB26A0, &qword_27D9BB768, &unk_22C912C90);

  sub_22C369AEC();
  v16 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = v17;
  v18 = *(v14 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v51 = v16;
    v20 = v1[18];
    v63 = MEMORY[0x277D84F90];
    sub_22C3B67A4();
    v21 = 0;
    v19 = v63;
    v55 = v18;
    v56 = v20 + 32;
    v22 = v18;
    do
    {
      v23 = (v56 + 40 * v21);
      v24 = *v23;
      v25 = v23[3];
      v26 = v23[4];
      v27 = *(v26 + 16);
      v60 = *v23;
      v61 = v23[2];
      v59 = v23[1];
      if (v27)
      {
        v58 = v19;
        v65 = MEMORY[0x277D84F90];

        v57 = v25;

        sub_22C3B63D4();
        v28 = v65;
        v29 = (v26 + 40);
        do
        {
          v31 = *(v29 - 1);
          v30 = *v29;
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          *(v32 + 24) = v30;
          v34 = *(v65 + 16);
          v33 = *(v65 + 24);

          if (v34 >= v33 >> 1)
          {
            sub_22C3B63D4();
          }

          *(v65 + 16) = v34 + 1;
          *(v65 + 8 * v34 + 32) = v32;
          v29 += 2;
          --v27;
        }

        while (v27);
        v25 = v57;
        v19 = v58;
        v22 = v55;
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
      }

      v35 = *(v19 + 16);
      if (v35 >= *(v19 + 24) >> 1)
      {
        sub_22C3B67A4();
      }

      ++v21;
      *(v19 + 16) = v35 + 1;
      v36 = (v19 + 40 * v35);
      v36[4] = v60;
      v36[5] = v59;
      v36[6] = v61;
      v36[7] = v25;
      v36[8] = v28;
    }

    while (v21 != v22);
    v1 = v54;
    v16 = v51;
  }

  v37 = v1[21];
  v1[10] = &type metadata for AFMTokenProvider_v1_0;
  v1[11] = &off_283FB8258;
  v38 = swift_allocObject();
  v1[7] = v38;
  v38[2] = 0;
  v38[3] = 0xE000000000000000;
  v38[4] = 0x6E655F6E7275743CLL;
  v38[5] = 0xEB00000000203E64;
  v38[6] = 8202;
  v38[7] = 0xE200000000000000;
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  type metadata accessor for _PromptMapper._ToolPromptMap(0);
  sub_22C3DBAD0();
  v39 = sub_22C909F0C();
  v40 = sub_22C906D3C();
  sub_22C36C640(v37, 1, 1, v40);
  v41 = type metadata accessor for RenderingState();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_22C480800(v37);
  v1[2] = v16 | 0x6000000000000000;
  v1[3] = v39;
  v45 = MEMORY[0x277D84FA0];
  v1[4] = v19;
  v1[5] = v45;
  v1[6] = v44;
  v46 = *(v52 + 8);
  v62 = (v46 + *v46);
  v47 = v46[1];
  v48 = swift_task_alloc();
  v1[22] = v48;
  *v48 = v1;
  v48[1] = sub_22C3DB7C0;
  v49 = v1[17];

  return (v62)(v49, v1 + 2, v53, v52);
}

uint64_t sub_22C3DB7C0()
{
  sub_22C369980();
  v2 = *v1;
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(v2 + 184) = v0;

  sub_22C3DBB34(v2 + 16);
  if (v0)
  {
    v4 = sub_22C3DB944;
  }

  else
  {
    v4 = sub_22C3DB8D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22C3DB8D8()
{
  sub_22C369980();
  v1 = v0[21];
  sub_22C36FF94(v0 + 12);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22C3DB944()
{
  sub_22C369980();
  v1 = v0[21];
  sub_22C36FF94(v0 + 12);

  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

uint64_t sub_22C3DB9E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_22C90B01C();
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      sub_22C3A5908(a3, a4);
      sub_22C369AEC();
      *(swift_allocObject() + 16) = v10;

      sub_22C90AFEC();
      v11 = *(v13 + 16);
      sub_22C90B02C();
      sub_22C90B03C();
      sub_22C90AFFC();
      --v4;
    }

    while (v4);
    v5 = v13;
  }

  sub_22C369AEC();
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

unint64_t sub_22C3DBAD0()
{
  result = qword_27D9BB778;
  if (!qword_27D9BB778)
  {
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB778);
  }

  return result;
}

uint64_t sub_22C3DBBA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3DBBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C3DBC40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t static FullPlannerCLISupport.IFTool.getPromptRenderer(promptVersion:locale:queryableToolbox:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v10 = sub_22C36985C(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    v15 = sub_22C4DE908();
    if (v15 == 6)
    {
      sub_22C3DD0D8();
      swift_allocError();
      *v16 = 0;
      v16[1] = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v15 = 6;
  }

  v18 = sub_22C90077C();
  sub_22C36985C(v18);
  (*(v19 + 16))(v14, a2);
  v20 = v9[6];
  v21 = sub_22C906A5C();
  sub_22C369AF8(v21);
  v22 = v9[7];
  v23 = sub_22C90876C();
  sub_22C369AF8(v23);
  v24 = v9[9];
  v25 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C369AF8(v25);
  FullPlannerPreferences.init()(&v14[v9[10]]);
  *&v14[v9[5]] = a3;
  v26 = &v14[v9[8]];
  *v26 = 0;
  *(v26 + 1) = 0;

  sub_22C4DE060(v15, v14, v30);
  result = sub_22C3DB0DC(v14);
  if (!v4)
  {
    sub_22C378A4C(v30, v29);
    v27 = _s14descr283FAC5B1V18CLIPromptGeneratorCMa();
    v28 = swift_allocObject();
    sub_22C36C730(v29, v28 + 16);
    a4[3] = v27;
    a4[4] = &off_283FB2770;
    *a4 = v28;
    return sub_22C36FF94(v30);
  }

  return result;
}

uint64_t FullPlannerCLISupport.IFTool.CLIPromptRendererError.hashValue.getter()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

uint64_t sub_22C3DBFD4(uint64_t a1)
{
  v2 = sub_22C3DD518();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3DC010(uint64_t a1)
{
  v2 = sub_22C3DD518();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C3DC04C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22C3DC06C, 0, 0);
}

uint64_t sub_22C3DC06C()
{
  v1 = v0[6];
  swift_beginAccess();
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  sub_22C36D1E4(v1 + 16, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22C3DC140;
  v5 = v0[5];

  return sub_22C3DC300(v5, v3, v2);
}

uint64_t sub_22C3DC140(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v7 = v6;
  v8 = *(v6 + 56);
  v9 = *v3;
  sub_22C369970();
  *v10 = v9;
  *(v7 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_22C3DC2A0, 0, 0);
  }

  else
  {
    swift_endAccess();
    v11 = *(v9 + 8);

    return v11(a1, a2);
  }
}

uint64_t sub_22C3DC2A0()
{
  swift_endAccess();
  sub_22C369A24();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_22C3DC300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v5 = sub_22C587C84(0);
  v4[45] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PlannerPromptGeneratorOutput();
  v4[48] = v7;
  v8 = *(v7 - 8);
  v4[49] = v8;
  v9 = *(v8 + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v10 = sub_22C90880C();
  v4[53] = v10;
  v11 = *(v10 - 8);
  v4[54] = v11;
  v12 = *(v11 + 64) + 15;
  v4[55] = swift_task_alloc();
  v13 = sub_22C9087BC();
  v4[56] = v13;
  v14 = *(v13 - 8);
  v4[57] = v14;
  v15 = *(v14 + 64) + 15;
  v4[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3DC4FC, 0, 0);
}

uint64_t sub_22C3DC4FC()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 376);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  (*(*(v0 + 432) + 16))(*(v0 + 440), *(v0 + 328), *(v0 + 424));
  sub_22C90879C();
  (*(v4 + 48))(v5, v4);
  *(v0 + 320) = v2;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_22C3AC1A0(&qword_27D9BB188, &qword_22C90FE40);
  v6 = sub_22C90B6AC();
  sub_22C3DBC40(v6, v0 + 312, v0 + 272);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  sub_22C374168((v0 + 272), v9);
  v11 = sub_22C9073DC();
  *(v0 + 472) = v11;
  sub_22C36C640(v7, 1, 1, v11);
  *(v0 + 268) = v8[5];
  sub_22C90068C();
  v12 = v8[6];
  *(v0 + 496) = v12;
  v13 = sub_22C90451C();
  sub_22C36C640(v7 + v12, 1, 1, v13);
  *(v0 + 500) = v8[7];
  sub_22C90068C();
  *(v0 + 504) = v8[8];
  sub_22C90068C();
  *(v0 + 508) = v8[9];
  sub_22C90068C();
  v14 = *(v10 + 16);
  v21 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 480) = v16;
  *v16 = v0;
  v16[1] = sub_22C3DC808;
  v17 = *(v0 + 464);
  v18 = *(v0 + 416);
  v19 = *(v0 + 368);

  return v21(v18, v17, v19, v9, v10);
}

uint64_t sub_22C3DC808()
{
  sub_22C369A3C();
  v3 = v2;
  v4 = *(v2 + 480);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    v7 = sub_22C3DCD98;
  }

  else
  {
    v8 = *(v3 + 368);
    if (sub_22C370B74(v8, 1, *(v3 + 472)) != 1)
    {
      v9 = sub_22C90069C();
      sub_22C36985C(v9);
      (*(v10 + 8))(v8);
      v8 = *(v3 + 368);
    }

    v11 = *(v3 + 508);
    v12 = *(v3 + 504);
    v13 = *(v3 + 500);
    v14 = *(v3 + 496);
    v15 = *(v3 + 268);
    v16 = sub_22C90069C();
    sub_22C36985C(v16);
    v18 = *(v17 + 8);
    v18(v8 + v15, v16);
    sub_22C3DD4B0(v8 + v14);
    v18(v8 + v13, v16);
    v18(v8 + v12, v16);
    v18(v8 + v11, v16);
    v7 = sub_22C3DCA0C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C3DCA0C()
{
  v1 = *(v0[49] + 16);
  v1(v0[51], v0[52], v0[48]);
  sub_22C3A5908(&qword_27D9BB7A8, &qword_22C910150);
  if (swift_dynamicCast())
  {
    v3 = v0[57];
    v2 = v0[58];
    v4 = v0[56];
    (*(v0[49] + 8))(v0[52], v0[48]);
    (*(v3 + 8))(v2, v4);
    v5 = v0[17];
    v47 = v0[16];
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[26];
    v14 = v0[27];

LABEL_5:

    v31 = v0[58];
    v32 = v0[55];
    v34 = v0[51];
    v33 = v0[52];
    v35 = v0[50];
    v36 = v0[46];

    sub_22C36FF94(v0 + 34);

    v37 = v0[1];

    return v37(v47, v5);
  }

  v1(v0[50], v0[52], v0[48]);
  sub_22C3A5908(&qword_27D9BB7B0, &qword_22C910158);
  v15 = swift_dynamicCast();
  v17 = v0[57];
  v16 = v0[58];
  v18 = v0[56];
  v19 = v0[52];
  v20 = v0[48];
  v21 = v0[49];
  if (v15)
  {
    (*(v21 + 8))(v0[52], v0[48]);
    (*(v17 + 8))(v16, v18);
    v5 = v0[3];
    v22 = v0[5];
    v23 = v0[7];
    v24 = v0[8];
    v25 = v0[9];
    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[12];
    v29 = v0[13];
    v30 = v0[14];
    v46 = v0[15];
    v47 = v0[2];

    goto LABEL_5;
  }

  sub_22C3DD188();
  swift_allocError();
  swift_willThrow();
  (*(v21 + 8))(v19, v20);
  (*(v17 + 8))(v16, v18);
  sub_22C36FF94(v0 + 34);
  v39 = v0[58];
  v40 = v0[55];
  v42 = v0[51];
  v41 = v0[52];
  v43 = v0[50];
  v44 = v0[46];

  sub_22C369A24();

  return v45();
}

uint64_t sub_22C3DCD98()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 368);
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
  if (sub_22C370B74(v2, 1, v1) != 1)
  {
    v3 = *(v0 + 368);
    v4 = sub_22C90069C();
    sub_22C36985C(v4);
    (*(v5 + 8))(v3);
  }

  v6 = *(v0 + 508);
  v7 = *(v0 + 504);
  v8 = *(v0 + 500);
  v9 = *(v0 + 496);
  v10 = *(v0 + 268);
  v11 = *(v0 + 368);
  v12 = sub_22C90069C();
  sub_22C36985C(v12);
  v14 = *(v13 + 8);
  v14(v11 + v10, v12);
  sub_22C3DD4B0(v11 + v9);
  v14(v11 + v8, v12);
  v14(v11 + v7, v12);
  v14(v11 + v6, v12);
  sub_22C36FF94((v0 + 272));
  v15 = *(v0 + 488);
  sub_22C3DD56C();

  sub_22C369A24();

  return v16();
}

uint64_t sub_22C3DCF3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C3DCFD4;

  return sub_22C3DC04C(a1);
}

uint64_t sub_22C3DCFD4(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v7 = *(v6 + 16);
  v8 = *v3;
  sub_22C369970();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v2)
  {
    v10 = a1;
    v11 = a2;
  }

  return v12(v10, v11);
}

unint64_t sub_22C3DD0D8()
{
  result = qword_27D9BB788;
  if (!qword_27D9BB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB788);
  }

  return result;
}

unint64_t sub_22C3DD130()
{
  result = qword_27D9BB790;
  if (!qword_27D9BB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB790);
  }

  return result;
}

unint64_t sub_22C3DD188()
{
  result = qword_27D9BB798;
  if (!qword_27D9BB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB798);
  }

  return result;
}

_BYTE *_s14descr283FAC5B1V22CLIPromptRendererErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of FullPlannerCLISupport.IFTool.CLIPromptGenerating.generatePrompt(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22C3DD3B0;

  return v11(a1, a2, a3);
}

uint64_t sub_22C3DD3B0(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v6 = *(v5 + 16);
  v7 = *v2;
  sub_22C369970();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2);
}

uint64_t sub_22C3DD4B0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3DD518()
{
  result = qword_27D9BB7B8;
  if (!qword_27D9BB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7B8);
  }

  return result;
}

uint64_t sub_22C3DD56C()
{
  v2 = v0[58];
  v3 = v0[55];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[50];
  v7 = v0[46];
}

uint64_t static FullPlannerCLISupport.IFTool.validateModelResponse(preferences:locale:queryableToolbox:modelResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a3;
  v51 = a2;
  v9 = sub_22C902D3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v15 = sub_22C36985C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C4DE310();
  if (!v5)
  {
    v48 = v13;
    v49 = a4;
    v50 = a5;
    v46 = v9;
    v47 = v10;
    v21 = result;
    v22 = sub_22C90077C();
    sub_22C36985C(v22);
    (*(v23 + 16))(v19, v51);
    v24 = v14[6];
    sub_22C906A5C();
    sub_22C36A748();
    sub_22C36C640(v25, v26, v27, v28);
    v29 = v14[7];
    sub_22C90876C();
    sub_22C36A748();
    sub_22C36C640(v30, v31, v32, v33);
    v34 = v14[9];
    type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
    sub_22C36A748();
    sub_22C36C640(v35, v36, v37, v38);
    sub_22C3DA748(a1, &v19[v14[10]]);
    *&v19[v14[5]] = v60;
    v39 = &v19[v14[8]];
    *v39 = 0;
    *(v39 + 1) = 0;

    sub_22C4DE060(v21, v19, v57);
    sub_22C3DB0DC(v19);
    v40 = v58;
    v41 = v59;
    sub_22C36D1E4(v57, v58);
    (*(v41 + 64))(v55, v40, v41);
    if (v56)
    {
      swift_willThrow();
    }

    else
    {
      sub_22C36C730(v55, v52);
      v42 = v53;
      v43 = v54;
      sub_22C374168(v52, v53);
      v44 = v48;
      (*(v43 + 8))(v49, v50, v42, v43);
      (*(v47 + 8))(v44, v46);
      sub_22C36FF94(v52);
    }

    return sub_22C36FF94(v57);
  }

  return result;
}