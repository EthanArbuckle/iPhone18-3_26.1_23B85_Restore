void sub_22C5DFD60()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C901FAC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF120, &unk_22C926C80);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E7488();
    sub_22C5E72C8(&qword_2814357B0, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5DFF10()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C90941C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF158, &qword_22C921FC0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E7804();
    sub_22C5E72C8(&qword_27D9BAAA0, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E00C0()
{
  sub_22C3744F8();
  sub_22C3856E0(v4);
  sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v5)
  {
LABEL_25:

    *v0 = v2;
    sub_22C38C3F0();
    return;
  }

  v6 = 0;
  sub_22C381340();
  sub_22C5E7620();
  sub_22C5E7650();
  if (!v0)
  {
LABEL_4:
    v7 = v6;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v6 >= v3)
      {
        break;
      }

      ++v7;
      if (*(v1 + 8 * v6))
      {
        sub_22C375A38();
        v0 = (v9 & v8);
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v20 != v21)
    {
      sub_22C5E7578(v19);
    }

    else
    {
      v22 = sub_22C3856F8();
      sub_22C88FAFC(v22, v23, v1);
    }

    sub_22C379C34();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C5E7528();
LABEL_9:
    sub_22C5E7D94();
    v12 = *(v11 + v10);
    sub_22C5E7C1C();
    MEMORY[0x2318B8B10](v12);
    v13 = sub_22C90B66C();
    sub_22C37EF28(v13);
    if (v14)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C3872F0(v15);
    *(*(v2 + 48) + v18) = v12;
    sub_22C37B32C();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v14)
    {
      if (v16)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v14)
    {
      v17 = 0;
    }

    sub_22C5E74E0(v17);
    if (!v14)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_22C5E0200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8);
  result = sub_22C90AEEC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (!v11)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v15 = *(v6 + 40);
      sub_22C90B62C();
      MEMORY[0x2318B8B10](0);
      result = sub_22C90B66C();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v13 + 8 * v18);
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_21;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
      v11 &= v11 - 1;
      *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      ++*(v6 + 16);
    }

    while (v11);
    while (1)
    {
LABEL_8:
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = v8[v14];
      ++v7;
      if (v11)
      {
        v7 = v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      sub_22C88FAFC(0, (v24 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v24;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_22C5E0414()
{
  sub_22C36BA7C();
  v2 = sub_22C37EC78();
  v3 = _s14TypedCandidateVMa(v2);
  v4 = sub_22C369824(v3);
  v52 = v5;
  v53 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BF130, &qword_22C921F98);
  v11 = sub_22C3744D4();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v11;
    sub_22C36CC48();
    return;
  }

  v50 = v0;
  v51 = v1;
  v12 = 0;
  v14 = v1 + 56;
  v13 = *(v1 + 56);
  v15 = *(v1 + 32);
  sub_22C36AD3C();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v21 = v11 + 56;
  if ((v17 & v16) == 0)
  {
LABEL_4:
    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= v20)
      {
        break;
      }

      sub_22C5E7CE8();
      if (v23)
      {
        sub_22C36FD98();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v46 != v47)
    {
      sub_22C5E74F0(v45);
    }

    else
    {
      v48 = sub_22C3856F8();
      sub_22C88FAFC(v48, v49, v14);
    }

    v0 = v50;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C5E73D0();
LABEL_9:
    v24 = *(v1 + 48);
    v25 = *(v52 + 72);
    sub_22C5E745C();
    sub_22C5E7270(v26, v10);
    v27 = *(v11 + 40);
    sub_22C90B62C();
    sub_22C9093BC();
    sub_22C5E7444();
    sub_22C5E72C8(&qword_28142FA90, v28);
    sub_22C909F8C();
    v29 = (v10 + *(v53 + 20));
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    sub_22C909FFC();
    sub_22C909FFC();
    sub_22C90B66C();
    v34 = *(v11 + 32);
    sub_22C36C03C();
    sub_22C38A074(v35);
    if (v36)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C5E7588();
    v40 = *(v21 + v39);
    sub_22C5E74D0();
    *(v21 + v41) = v42;
    v43 = *(v11 + 48);
    sub_22C5E745C();
    sub_22C5E7270(v10, v44);
    ++*(v11 + 16);
    v1 = v51;
    if (!v18)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v36)
    {
      if (v37)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v36)
    {
      v38 = 0;
    }

    sub_22C5E7554(v38);
    if (!v36)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E0678()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C908C5C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF138, &qword_22C921FA0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E7388();
    sub_22C5E72C8(&qword_27D9BAA90, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E0828()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9069BC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF140, &qword_22C921FA8);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E73B8();
    sub_22C5E72C8(&qword_27D9BAA98, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E09D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  sub_22C3704C4();
  v25 = sub_22C908C5C();
  v26 = sub_22C369824(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  sub_22C5CA768();
  v102 = sub_22C9069BC();
  v29 = sub_22C369824(v102);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v34 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369ABC();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  sub_22C5E7978();
  sub_22C3A5908(&qword_27D9BF118, &unk_22C921F80);
  sub_22C5E7874();
  v42 = sub_22C5E75B0();
  if (v20[2])
  {
    sub_22C385E88();
    if (v43)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v50 = *(v49 + 8 * v48);
        v51 = *(v42 + 40);
        sub_22C90B62C();
        v52 = *(v50 + 64);
        v53 = *(v50 + 32);
        sub_22C36AD3C();
        v56 = v55 & v54;
        sub_22C5E79E0();
        sub_22C5E7D18(v57);
        v58 = 0;
        v59 = 0;
        while (1)
        {
          v103 = v58;
          if (!v56)
          {
            v20 = &qword_27D9BF110;
            v31 = &unk_22C922580;
            while (1)
            {
              v60 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                break;
              }

              if (v60 >= v100)
              {
                v82 = sub_22C3806B8();
                v84 = sub_22C3A5908(v82, v83);
                sub_22C374D84(v40, v85, v86, v84);
                v56 = 0;
                goto LABEL_18;
              }

              v56 = *(v50 + 64 + 8 * v60);
              ++v59;
              if (v56)
              {
                v59 = v60;
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_30;
          }

          v60 = v59;
LABEL_17:
          v61 = sub_22C5E76AC(v60);
          v62(v61);
          sub_22C383D08(v31[7]);
          v63 = sub_22C5E7DAC();
          v64(v63);
          v65 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v66 = sub_22C5E7770(v65);
          v67(v66);
          v68 = v31[4];
          v31 = &unk_22C922580;
          v25 = v22;
          v22 = &qword_27D9BF110;
          v20 = &qword_27D9BF110;
          sub_22C5E7DB8();
          v69();
          sub_22C387310(v40);
          v21 = v101;
LABEL_18:
          sub_22C5E71BC(v40, v21, &qword_27D9BF108, &unk_22C921F70);
          v70 = sub_22C3806B8();
          sub_22C3A5908(v70, v71);
          sub_22C36D3E0(v21);
          if (v72)
          {
            break;
          }

          v73 = sub_22C5E7B50();
          v74(v73);
          sub_22C36BA4C(&a18);
          v75 = sub_22C5E7DAC();
          v76(v75);
          sub_22C5E79F8();
          sub_22C5E73B8();
          sub_22C5E72C8(&qword_27D9BAA98, v77);
          sub_22C387D60();
          sub_22C5E7E90();
          v78 = sub_22C5E768C(&a16);
          v79(v78);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v80);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C(&a15);
          v81(v22, v25);
          v58 = sub_22C90B66C() ^ v103;
        }

        sub_22C5E7ED8(&a14);
        sub_22C5E7D7C();
        v87 = sub_22C90B66C();
        v42 = v99;
        sub_22C388D34(v87, *(v99 + 32));
        sub_22C5580B8(&v104);
        sub_22C90AE8C();
        sub_22C5E7664();
        sub_22C36D300(v88, v89);
        if (v90)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C94();
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        v91 = *(v20 + 32);
        sub_22C36ED64();
        if (v92 != v93)
        {
          sub_22C386A8C();
          *v94 = v95;
        }

        else
        {
          v96 = sub_22C3856F8();
          sub_22C88FAFC(v96, v97, v98);
        }

        sub_22C5E7DA0();
        v20[2] = 0;

        goto LABEL_28;
      }

      ++v45;
      if (*(v44 + 8 * v47))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {

    sub_22C5E7DA0();
LABEL_28:
    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E0E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  sub_22C3704C4();
  v25 = sub_22C908C5C();
  v26 = sub_22C369824(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  sub_22C5CA768();
  v102 = sub_22C901FAC();
  v29 = sub_22C369824(v102);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v34 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369ABC();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  sub_22C5E7978();
  sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60);
  sub_22C5E7874();
  v42 = sub_22C5E75B0();
  if (v20[2])
  {
    sub_22C385E88();
    if (v43)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v50 = *(v49 + 8 * v48);
        v51 = *(v42 + 40);
        sub_22C90B62C();
        v52 = *(v50 + 64);
        v53 = *(v50 + 32);
        sub_22C36AD3C();
        v56 = v55 & v54;
        sub_22C5E79E0();
        sub_22C5E7D18(v57);
        v58 = 0;
        v59 = 0;
        while (1)
        {
          v103 = v58;
          if (!v56)
          {
            v20 = &qword_27D9BF100;
            v31 = &qword_22C922FE0;
            while (1)
            {
              v60 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                break;
              }

              if (v60 >= v100)
              {
                v82 = sub_22C3806B8();
                v84 = sub_22C3A5908(v82, v83);
                sub_22C374D84(v40, v85, v86, v84);
                v56 = 0;
                goto LABEL_18;
              }

              v56 = *(v50 + 64 + 8 * v60);
              ++v59;
              if (v56)
              {
                v59 = v60;
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_30;
          }

          v60 = v59;
LABEL_17:
          v61 = sub_22C5E76AC(v60);
          v62(v61);
          sub_22C383D08(v31[7]);
          v63 = sub_22C5E7DAC();
          v64(v63);
          v65 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
          v66 = sub_22C5E7770(v65);
          v67(v66);
          v68 = v31[4];
          v31 = &qword_22C922FE0;
          v25 = v22;
          v22 = &qword_27D9BF100;
          v20 = &qword_27D9BF100;
          sub_22C5E7DB8();
          v69();
          sub_22C387310(v40);
          v21 = v101;
LABEL_18:
          sub_22C5E71BC(v40, v21, &qword_27D9BF0F0, &qword_22C921F58);
          v70 = sub_22C3806B8();
          sub_22C3A5908(v70, v71);
          sub_22C36D3E0(v21);
          if (v72)
          {
            break;
          }

          v73 = sub_22C5E7B50();
          v74(v73);
          sub_22C36BA4C(&a18);
          v75 = sub_22C5E7DAC();
          v76(v75);
          sub_22C5E79F8();
          sub_22C5E7488();
          sub_22C5E72C8(&qword_2814357B0, v77);
          sub_22C387D60();
          sub_22C5E7E90();
          v78 = sub_22C5E768C(&a16);
          v79(v78);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v80);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C(&a15);
          v81(v22, v25);
          v58 = sub_22C90B66C() ^ v103;
        }

        sub_22C5E7ED8(&a14);
        sub_22C5E7D7C();
        v87 = sub_22C90B66C();
        v42 = v99;
        sub_22C388D34(v87, *(v99 + 32));
        sub_22C5580B8(&v104);
        sub_22C90AE8C();
        sub_22C5E7664();
        sub_22C36D300(v88, v89);
        if (v90)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C94();
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        v91 = *(v20 + 32);
        sub_22C36ED64();
        if (v92 != v93)
        {
          sub_22C386A8C();
          *v94 = v95;
        }

        else
        {
          v96 = sub_22C3856F8();
          sub_22C88FAFC(v96, v97, v98);
        }

        sub_22C5E7DA0();
        v20[2] = 0;

        goto LABEL_28;
      }

      ++v45;
      if (*(v44 + 8 * v47))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {

    sub_22C5E7DA0();
LABEL_28:
    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E1320()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9093BC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF128, &qword_22C921F90);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E7444();
    sub_22C5E72C8(&qword_28142FA90, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E14D0()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C903CCC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF0D0, &qword_22C921F40);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E742C();
    sub_22C5E72C8(&qword_281435738, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E1680()
{
  sub_22C36BA7C();
  v1 = v0;
  sub_22C369A48();
  v45 = sub_22C9036EC();
  v2 = sub_22C369824(v45);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v44 = v7;
  v8 = sub_22C36BA0C();
  DecorationTuple = type metadata accessor for QueryDecorationTuple(v8);
  v10 = sub_22C369824(DecorationTuple);
  v42 = v11;
  v43 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v41 = v14;
  v15 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v0 = *(*v0 + 24);
  }

  sub_22C3A5908(&qword_27D9BF088, &qword_22C921F00);
  sub_22C5E7B18();
  sub_22C5E75B0();
  sub_22C5E7CF4();
  if (v16)
  {
    v39 = v1;
    v17 = 0;
    v19 = (v15 + 56);
    v18 = *(v15 + 56);
    v20 = *(v15 + 32);
    sub_22C36AD3C();
    v23 = v22 & v21;
    v25 = (v24 + 63) >> 6;
    v40 = v15;
    if ((v22 & v21) != 0)
    {
      do
      {
        sub_22C5E73D0();
LABEL_11:
        v46 = *(v42 + 72);
        sub_22C5E7270(*(v15 + 48) + v46 * (v26 | (v17 << 6)), v41);
        v28 = v0[5];
        sub_22C90B62C();
        sub_22C90371C();
        sub_22C5E77A4();
        sub_22C5E72C8(&qword_281435770, v29);
        sub_22C909F8C();
        (*(v4 + 8))(v44, v45);
        v30 = *(v41 + *(v43 + 20));
        sub_22C7E6754();
        v31 = sub_22C90B66C();
        sub_22C388D34(v31, *(v0 + 32));
        v32 = sub_22C90AE8C();
        *(v0 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v32;
        v15 = v40;
        sub_22C5E7270(v41, v0[6] + v32 * v46);
        ++v0[2];
      }

      while (v23);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return;
      }

      if (v17 >= v25)
      {
        break;
      }

      ++v27;
      if (v19[v17])
      {
        sub_22C36FD98();
        goto LABEL_11;
      }
    }

    v33 = *(v15 + 32);
    sub_22C36ED64();
    if (v34 != v35)
    {
      sub_22C386A8C();
      *v19 = v36;
    }

    else
    {
      v37 = sub_22C3856F8();
      sub_22C88FAFC(v37, v38, v19);
    }

    v1 = v39;
    *(v15 + 16) = 0;
  }

  *v1 = v0;
  sub_22C36CC48();
}

void sub_22C5E197C()
{
  sub_22C36BA7C();
  v3 = v1;
  v4 = sub_22C3704C4();
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(v4);
  v5 = sub_22C36985C(DecorationEntityValue);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v61 = v8;
  v9 = sub_22C36BA0C();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v9);
  v10 = sub_22C369824(DecorationTupleParameter);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C5CA768();
  v13 = *v1;
  if (*(*v1 + 24) > v0)
  {
    v14 = *(*v1 + 24);
  }

  sub_22C3A5908(&qword_27D9BF090, &qword_22C921F08);
  v15 = sub_22C90AEEC();
  if (!*(v13 + 16))
  {
LABEL_33:

    *v3 = v15;
    sub_22C36CC48();
    return;
  }

  v16 = 0;
  v18 = (v13 + 56);
  v17 = *(v13 + 56);
  v19 = *(v13 + 32);
  sub_22C36AD3C();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v25 = v15 + 56;
  v58 = v13;
  if ((v21 & v20) == 0)
  {
LABEL_6:
    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v24)
      {
        break;
      }

      ++v27;
      if (v18[v16])
      {
        sub_22C375A38();
        v22 = v29 & v28;
        goto LABEL_11;
      }
    }

    v52 = *(v13 + 32);
    sub_22C36ED64();
    if (v53 != v54)
    {
      sub_22C386A8C();
      *v18 = v55;
    }

    else
    {
      v56 = sub_22C3856F8();
      sub_22C88FAFC(v56, v57, v18);
    }

    v3 = v1;
    *(v13 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_11:
    sub_22C5E7C34(v26 | (v16 << 6));
    sub_22C3827F0();
    sub_22C5E7270(v30, v2);
    v31 = *(v15 + 40);
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C909FFC();

    v32 = (v2 + *(DecorationTupleParameter + 20));
    MEMORY[0x2318B8B10](*v32);
    v33 = *(type metadata accessor for QueryDecorationEntity(0) + 20);
    sub_22C5E74A0();
    sub_22C5E7218(v32 + v34, v61);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v36 = sub_22C9039FC();
      v37 = 0;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v36 = sub_22C90399C();
      v37 = 1;
LABEL_15:
      sub_22C36BBA8(v36);
      (*(v38 + 8))(v61);
      goto LABEL_17;
    }

    v37 = EnumCaseMultiPayload;
LABEL_17:
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v37);
    v39 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v39);
    sub_22C90B66C();
    v40 = *(v15 + 32);
    sub_22C36C03C();
    v42 = *(v25 + 8 * v41);
    sub_22C37AC88();
    if (v43)
    {
      break;
    }

    sub_22C37F394();
LABEL_27:
    sub_22C5E7588();
    v47 = *(v25 + v46);
    sub_22C5E74D0();
    *(v25 + v48) = v49;
    v50 = *(v15 + 48);
    sub_22C3827F0();
    sub_22C5E7270(v2, v51);
    ++*(v15 + 16);
    v13 = v58;
    if (!v22)
    {
      goto LABEL_6;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v43)
    {
      if (v44)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v43)
    {
      v45 = 0;
    }

    sub_22C386D30(v45);
    if (!v43)
    {
      sub_22C36D900();
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_22C5E1CD4()
{
  sub_22C3744F8();
  sub_22C3856E0(v5);
  sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (v6)
  {
    sub_22C5E7C64();
    sub_22C381340();
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v0 = (v9 & v7);
    sub_22C5E79EC();
    while (v0)
    {
      sub_22C5E7528();
LABEL_12:
      v14 = *(*(v1 + 48) + 8 * (v10 | (v3 << 6)));
      sub_22C5E7C1C();
      sub_22C7E6754();
      sub_22C90B66C();
      v15 = -1 << *(v2 + 32);
      sub_22C90AE8C();
      sub_22C5E7664();
      *(v2 + 56 + v16) |= v17;
      *(*(v2 + 48) + 8 * v18) = v14;
      sub_22C37B32C();
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v11;
      if (*(v1 + 8 * v3))
      {
        sub_22C375A38();
        v0 = (v13 & v12);
        goto LABEL_12;
      }
    }

    sub_22C37F8D8();
    if (v20 != v21)
    {
      sub_22C5E7578(v19);
    }

    else
    {
      v22 = sub_22C3856F8();
      sub_22C88FAFC(v22, v23, v1);
    }

    sub_22C379C34();
  }

  *v0 = v2;
  sub_22C38C3F0();
}

void sub_22C5E1E10()
{
  sub_22C36BA7C();
  v2 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C5E73A0(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BF0B8, &qword_22C921F30);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v6)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  v7 = 0;
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  sub_22C36AD3C();
  v12 = v11 & v10;
  sub_22C5E7630();
  if (!v12)
  {
LABEL_4:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v0)
      {
        break;
      }

      sub_22C5E7CE8();
      if (v15)
      {
        sub_22C375A38();
        v12 = v17 & v16;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v29 != v30)
    {
      sub_22C5E74F0(v28);
    }

    else
    {
      v31 = sub_22C3856F8();
      sub_22C88FAFC(v31, v32, v1 + 56);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    v18 = sub_22C371A68(v13 | (v7 << 6));
    v19(v18);
    sub_22C5E7828();
    sub_22C5E7104();
    sub_22C385DCC();
    v20 = sub_22C909F7C();
    sub_22C36C014(v20);
    if (v21)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v26 = sub_22C36A08C(v22);
    v27(v26);
    sub_22C381B0C();
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v21)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    sub_22C386D30(v23);
    if (!v21)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E1FEC()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9037EC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF0D8, &qword_22C921F48);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C37D998();
    sub_22C5E72C8(&qword_281435768, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E219C()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C908EAC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v8, v29);
  sub_22C3A5908(&qword_27D9BF0E0, &qword_22C921F50);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v9)
  {
LABEL_25:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v12)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v1);
    }

    sub_22C5E781C();
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v13 = sub_22C371A68(v10 | (v3 << 6));
    v14(v13);
    sub_22C5E7828();
    sub_22C5E7834();
    sub_22C5E72C8(&qword_27D9BAA80, v15);
    sub_22C385DCC();
    v16 = sub_22C909F7C();
    sub_22C36C014(v16);
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    v22 = sub_22C36A08C(v18);
    v23(v22);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_22C386D30(v19);
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E234C()
{
  sub_22C3806F4();
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 24);
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
  sub_22C5E7874();
  v4 = sub_22C5E75B0();
  if (!*(v2 + 16))
  {
LABEL_25:

    *v1 = v4;
    sub_22C5E78F0();
    return;
  }

  v40 = v2;
  v5 = 0;
  v7 = v2 + 56;
  v6 = *(v2 + 56);
  v8 = *(v2 + 32);
  sub_22C36AD3C();
  v11 = v10 & v9;
  sub_22C5E7630();
  v12 = v4 + 56;
  if (!v11)
  {
LABEL_4:
    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v15;
      if (*(v7 + 8 * v5))
      {
        sub_22C375A38();
        v11 = v17 & v16;
        goto LABEL_9;
      }
    }

    v34 = *(v2 + 32);
    sub_22C36ED64();
    if (v36 != v37)
    {
      sub_22C5E7578(v35);
    }

    else
    {
      v38 = sub_22C3856F8();
      sub_22C88FAFC(v38, v39, v7);
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    v18 = (*(v2 + 48) + (v13 | (v5 << 6)) * v14);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 16);
    sub_22C375D08();
    sub_22C5E7F08();
    sub_22C90B64C();
    sub_22C90B66C();
    v22 = *(v4 + 32);
    sub_22C36C03C();
    v24 = *(v12 + 8 * v23);
    sub_22C37AC88();
    if (v25)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C5E7588();
    v29 = *(v12 + v28);
    sub_22C5E74D0();
    *(v12 + v30) = v31;
    sub_22C5E78E0(v32);
    *v33 = v19;
    *(v33 + 8) = v20;
    *(v33 + 16) = v21;
    sub_22C37B32C();
    v2 = v40;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v25)
    {
      if (v26)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v25)
    {
      v27 = 0;
    }

    sub_22C375F24(v27);
    if (!v25)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E24E8()
{
  sub_22C3806F4();
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 24);
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0C8, &qword_22C921F38);
  sub_22C5E7874();
  v4 = sub_22C5E75B0();
  if (!*(v2 + 16))
  {
LABEL_25:

    *v1 = v4;
    sub_22C5E78F0();
    return;
  }

  v29 = v0;
  v30 = v2;
  v5 = 0;
  v7 = v2 + 56;
  v6 = *(v2 + 56);
  v8 = *(v2 + 32);
  sub_22C36AD3C();
  v11 = v10 & v9;
  sub_22C5E7630();
  if (!v11)
  {
LABEL_4:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v13;
      if (*(v7 + 8 * v5))
      {
        sub_22C375A38();
        v11 = v15 & v14;
        goto LABEL_9;
      }
    }

    v23 = *(v2 + 32);
    sub_22C36ED64();
    if (v25 != v26)
    {
      sub_22C5E7578(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v7);
    }

    v1 = v29;
    *(v2 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    v17 = *(v4 + 40);
    sub_22C90A11C();
    sub_22C90B62C();
    sub_22C909FFC();
    sub_22C90B66C();

    v18 = *(v4 + 32);
    sub_22C5E7564();
    if (v19)
    {
      break;
    }

    sub_22C37F394();
LABEL_19:
    sub_22C36D914();
    sub_22C5E7BC4();
    *(*(v4 + 48) + 8 * v22) = v16;
    sub_22C37B32C();
    v2 = v30;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v19)
    {
      v21 = 0;
    }

    sub_22C375F24(v21);
    if (!v19)
    {
      sub_22C36D900();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_22C5E2694()
{
  sub_22C3A5908(&qword_27D9BF170, &qword_22C921FD8);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v4)
  {
    v5 = sub_22C3890D4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_22C5E7D00(v5, v6);
    }

    sub_22C37A1E0();
    while (v3)
    {
      sub_22C3D35D4();
LABEL_15:
      sub_22C5E7B24(v10);
    }

    v11 = v1;
    while (1)
    {
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v12)
      {
        sub_22C375A38();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E274C()
{
  sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v4)
  {
    v5 = sub_22C3890D4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_22C5E7D00(v5, v6);
    }

    sub_22C37A1E0();
    while (v3)
    {
      sub_22C3D35D4();
LABEL_15:
      sub_22C5E7B24(v10);
    }

    v11 = v1;
    while (1)
    {
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v12)
      {
        sub_22C375A38();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E2804()
{
  sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v3)
  {
    v4 = sub_22C3890D4();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      sub_22C5E7D00(v4, v5);
    }

    sub_22C5E7728();
    if (v11)
    {
      do
      {
        sub_22C5E7CC4();
LABEL_15:
        v16 = 3 * v13;
        v17 = *(v1 + 48) + 8 * v16;
        v18 = *(v17 + 16);
        v19 = v0[6] + 8 * v16;
        *v19 = *v17;
        *(v19 + 16) = v18;
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        sub_22C5E7CAC();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E28CC()
{
  sub_22C36BA7C();
  v4 = sub_22C5E7C70();
  v5 = type metadata accessor for PromptTreeIdentifier.Label(v4);
  v6 = sub_22C3699B8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v9)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_22C5E7EF0(v10, v11);
    }

    sub_22C37BB44();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C(v15);
      sub_22C5E77EC();
      sub_22C5E7EC0();
      v18 = *(v0 + 48);
      sub_22C5E74B8();
      sub_22C5E7EA8(v19);
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v17)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E2A88()
{
  sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v3)
  {
    v4 = sub_22C3890D4();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      sub_22C5E7D00(v4, v5);
    }

    sub_22C5E7728();
    if (v11)
    {
      do
      {
        sub_22C5E7CC4();
LABEL_15:
        *(v0[6] + v13) = *(*(v1 + 48) + v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        sub_22C5E7CAC();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_22C5E2B3C()
{
  v1 = v0;
  sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8);
  v2 = *v0;
  v3 = sub_22C90AEDC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void sub_22C5E2C48()
{
  sub_22C36BA7C();
  v4 = sub_22C5E7C70();
  v5 = _s14TypedCandidateVMa(v4);
  v6 = sub_22C3699B8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF130, &qword_22C921F98);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v9)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_22C5E7EF0(v10, v11);
    }

    sub_22C37BB44();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C(v15);
      sub_22C5E77D4();
      sub_22C5E7EC0();
      v18 = *(v0 + 48);
      sub_22C5E745C();
      sub_22C5E7EA8(v19);
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v17)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E2E2C()
{
  sub_22C36BA7C();
  v4 = sub_22C5E7C70();
  DecorationTuple = type metadata accessor for QueryDecorationTuple(v4);
  v6 = sub_22C3699B8(DecorationTuple);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF088, &qword_22C921F00);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v9)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_22C5E7EF0(v10, v11);
    }

    sub_22C37BB44();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C(v15);
      sub_22C5E77BC();
      sub_22C5E7EC0();
      v18 = *(v0 + 48);
      sub_22C37E87C();
      sub_22C5E7EA8(v19);
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v17)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E2F48()
{
  sub_22C36BA7C();
  v4 = sub_22C5E7C70();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v4);
  v6 = sub_22C3699B8(DecorationTupleParameter);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF090, &qword_22C921F08);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v9)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_22C5E7EF0(v10, v11);
    }

    sub_22C37BB44();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C(v15);
      sub_22C380560();
      sub_22C5E7EC0();
      v18 = *(v0 + 48);
      sub_22C3827F0();
      sub_22C5E7EA8(v19);
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v17)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E3078(uint64_t *a1, uint64_t *a2)
{
  sub_22C3A5908(a1, a2);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v7)
  {
    v8 = sub_22C3890D4();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      sub_22C5E7D00(v8, v9);
    }

    sub_22C37A1E0();
    while (v6)
    {
      sub_22C3D35D4();
LABEL_15:
      *(v2[6] + 8 * (v13 | (v4 << 6))) = *(*(v3 + 48) + 8 * (v13 | (v4 << 6)));
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v15)
      {
        sub_22C375A38();
        v6 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_22C5E3134()
{
  sub_22C36BA7C();
  v4 = v0;
  v5 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C37FCFC();
  v9 = sub_22C3A5908(&qword_27D9BF0B8, &qword_22C921F30);
  v10 = *v4;
  sub_22C90AEDC();
  sub_22C5E7E50();
  if (v11)
  {
    sub_22C37B6EC();
    sub_22C5E7C4C();
    if (v15)
    {
      v16 = v12 >= v14;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      memmove(v12, v1, 8 * v13);
    }

    v17 = 0;
    *(v9 + 16) = *(v10 + 16);
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 56);
    sub_22C5E7474();
    sub_22C5E7AAC();
    while (v3)
    {
      sub_22C382D5C();
LABEL_15:
      v25 = sub_22C5E7918(v20);
      v26(v25);
      v27 = sub_22C5E7AC8();
      v28(v27);
    }

    v21 = v17;
    while (1)
    {
      v17 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v17 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E79B0();
      if (v22)
      {
        sub_22C375A38();
        v3 = v24 & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E3308()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C5E7C70();
  v9 = v8(v7);
  sub_22C369824(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C37FCFC();
  v13 = sub_22C3A5908(v6, v4);
  v14 = *v0;
  sub_22C90AEDC();
  sub_22C5E7E50();
  if (v15)
  {
    sub_22C37B6EC();
    sub_22C5E7C4C();
    if (v19)
    {
      v20 = v16 >= v18;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      memmove(v16, v6, 8 * v17);
    }

    v21 = 0;
    *(v13 + 16) = *(v14 + 16);
    v22 = 1 << *(v14 + 32);
    v23 = *(v14 + 56);
    sub_22C5E7474();
    sub_22C5E7AAC();
    while (v2)
    {
      sub_22C382D5C();
LABEL_15:
      v29 = sub_22C5E7918(v24);
      v30(v29);
      v31 = sub_22C5E7AC8();
      v32(v31);
    }

    v25 = v21;
    while (1)
    {
      v21 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v21 >= v1)
      {
        goto LABEL_17;
      }

      sub_22C5E79B0();
      if (v26)
      {
        sub_22C375A38();
        v2 = v28 & v27;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E3484()
{
  sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v5)
  {
    v6 = sub_22C3890D4();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_22C5E7D00(v6, v7);
    }

    sub_22C37A1E0();
    while (v4)
    {
      sub_22C3D35D4();
LABEL_15:
      v16 = 3 * (v11 | (v2 << 6));
      v17 = *(v1 + 48) + 8 * v16;
      v19 = *v17;
      v18 = *(v17 + 8);
      LOBYTE(v17) = *(v17 + 16);
      v20 = v0[6] + 8 * v16;
      *v20 = v19;
      *(v20 + 8) = v18;
      *(v20 + 16) = v17;
    }

    v12 = v2;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v13)
      {
        sub_22C375A38();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E3564()
{
  sub_22C3A5908(&qword_27D9BF0C8, &qword_22C921F38);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v5)
  {
    v6 = sub_22C3890D4();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_22C5E7D00(v6, v7);
    }

    sub_22C37A1E0();
    for (; v4; v18 = v17)
    {
      sub_22C3D35D4();
LABEL_15:
      v16 = v11 | (v2 << 6);
      v17 = *(*(v1 + 48) + 8 * v16);
      *(v0[6] + 8 * v16) = v17;
    }

    v12 = v2;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v13)
      {
        sub_22C375A38();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_22C3744F8();
  sub_22C3856E0(v15);
  sub_22C3A5908(&qword_27D9BF170, &qword_22C921FD8);
  sub_22C375F14();
  sub_22C3839C0();
  sub_22C5E76A0();
  if (v16)
  {
    sub_22C5E7C64();
    v17 = *(v10 + 56);
    v18 = *(v10 + 32);
    sub_22C36AD3C();
    sub_22C36CD2C();
    if (v14)
    {
      while (1)
      {
        sub_22C382D5C();
LABEL_9:
        sub_22C5E7940(v19);
        v25 = *v24;
        v26 = v24[1];
        sub_22C5E7C1C();

        sub_22C909FFC();
        sub_22C90B66C();
        v27 = *(v11 + 32);
        sub_22C36C03C();
        sub_22C38A074(v28);
        if (v29)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C36D914();
        sub_22C5E753C(v32);
        *v33 = v25;
        v33[1] = v26;
        sub_22C37B32C();
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v29)
        {
          if (v30)
          {
            break;
          }
        }

        sub_22C5E7764();
        if (v29)
        {
          v31 = 0;
        }

        sub_22C5E7554(v31);
        if (!v29)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v13)
        {

          v9 = a9;
          goto LABEL_23;
        }

        sub_22C5E79B0();
        if (v21)
        {
          sub_22C375A38();
          v14 = v23 & v22;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v9 = v11;
    sub_22C38C3F0();
  }
}

void sub_22C5E3770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_22C3744F8();
  sub_22C3856E0(v15);
  sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
  sub_22C375F14();
  sub_22C3839C0();
  sub_22C5E76A0();
  if (v16)
  {
    sub_22C5E7C64();
    v17 = *(v10 + 56);
    v18 = *(v10 + 32);
    sub_22C36AD3C();
    sub_22C36CD2C();
    if (v14)
    {
      while (1)
      {
        sub_22C382D5C();
LABEL_9:
        sub_22C5E7940(v19);
        v25 = *v24;
        v26 = v24[1];
        sub_22C5E7C1C();

        sub_22C909FFC();
        sub_22C90B66C();
        v27 = *(v11 + 32);
        sub_22C36C03C();
        sub_22C38A074(v28);
        if (v29)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C36D914();
        sub_22C5E753C(v33);
        *v34 = v25;
        v34[1] = v26;
        sub_22C37B32C();
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v29)
        {
          if (v31)
          {
            break;
          }
        }

        if (v30 == v32)
        {
          v30 = 0;
        }

        sub_22C5E7554(v30);
        if (!v29)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v13)
        {

          v9 = a9;
          goto LABEL_23;
        }

        sub_22C5E79B0();
        if (v21)
        {
          sub_22C375A38();
          v14 = v23 & v22;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v9 = v11;
    sub_22C38C3F0();
  }
}

void sub_22C5E38B4()
{
  sub_22C3806F4();
  sub_22C3856E0(v5);
  sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
  sub_22C375F14();
  sub_22C3839C0();
  sub_22C5E76A0();
  if (v6)
  {
    v31 = v0;
    v7 = 0;
    v8 = *(v1 + 56);
    v9 = *(v1 + 32);
    sub_22C36AD3C();
    sub_22C5E7650();
    if (v0)
    {
      while (1)
      {
        sub_22C5E7528();
LABEL_9:
        sub_22C5E7D94();
        v17 = (v15 + v14 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(v17 + 16);
        sub_22C375D08();
        MEMORY[0x2318B8B30](v19 >> 14);
        MEMORY[0x2318B8B30](v18 >> 14);
        MEMORY[0x2318B8B10](v20);
        v21 = sub_22C90B66C();
        sub_22C374D64(v21, *(v2 + 32));
        if (v22)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C5E7588();
        v26 = *(v3 + v25);
        sub_22C5E74D0();
        *(v3 + v27) = v28;
        sub_22C5E78E0(v29);
        *v30 = v19;
        *(v30 + 8) = v18;
        *(v30 + 16) = v20;
        sub_22C37B32C();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v22)
        {
          if (v23)
          {
            break;
          }
        }

        sub_22C5E7764();
        if (v22)
        {
          v24 = 0;
        }

        sub_22C5E74E0(v24);
        if (!v22)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v10 = v7;
      while (1)
      {
        v7 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v7 >= v4)
        {

          v0 = v31;
          goto LABEL_23;
        }

        sub_22C5E7AE4();
        if (v11)
        {
          sub_22C375A38();
          v0 = (v13 & v12);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v0 = v2;
    sub_22C5E78F0();
  }
}

void sub_22C5E3A20()
{
  sub_22C36BA7C();
  v3 = sub_22C37EC78();
  v4 = type metadata accessor for PromptTreeIdentifier.Label(v3);
  v5 = sub_22C3699B8(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v11 = v10 - v9;
  sub_22C3799BC();
  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  v12 = sub_22C386A68();
  if (*(v1 + 16))
  {
    v40 = v0;
    v13 = 0;
    v14 = *(v1 + 56);
    v15 = *(v1 + 32);
    sub_22C36AD3C();
    v18 = v17 & v16;
    sub_22C5E79EC();
    v19 = v12 + 56;
    if (v18)
    {
      while (1)
      {
        sub_22C383840();
LABEL_9:
        v24 = *(v1 + 48);
        v25 = *(v41 + 72);
        sub_22C5E77EC();
        sub_22C5E7218(v26, v11);
        v27 = *(v12 + 40);
        sub_22C90B62C();
        sub_22C48640C();
        sub_22C90B66C();
        v28 = *(v12 + 32);
        sub_22C36C03C();
        sub_22C38A074(v29);
        if (v30)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C5E7588();
        v35 = *(v19 + v34);
        sub_22C5E74D0();
        *(v19 + v36) = v37;
        v38 = *(v12 + 48);
        sub_22C5E74B8();
        sub_22C5E7270(v11, v39);
        ++*(v12 + 16);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v30)
        {
          if (v32)
          {
            break;
          }
        }

        if (v31 == v33)
        {
          v31 = 0;
        }

        sub_22C5E7554(v31);
        if (!v30)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v20 = v13;
      while (1)
      {
        v13 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v13 >= v2)
        {

          v0 = v40;
          goto LABEL_23;
        }

        sub_22C5E79B0();
        if (v21)
        {
          sub_22C375A38();
          v18 = v23 & v22;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v0 = v12;
    sub_22C36CC48();
  }
}

void sub_22C5E3C0C()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C90952C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C386278();
        sub_22C5E72C8(&qword_28142FA80, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E3D90()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C902D0C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF168, &qword_22C921FD0);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E73E4();
        sub_22C5E72C8(&qword_27D9BAAA8, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E3F14()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C901FAC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF120, &unk_22C926C80);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E7488();
        sub_22C5E72C8(&qword_2814357B0, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E4098()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C90941C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF158, &qword_22C921FC0);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E7804();
        sub_22C5E72C8(&qword_27D9BAAA0, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E421C()
{
  sub_22C3744F8();
  sub_22C3856E0(v4);
  sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0);
  sub_22C375F14();
  sub_22C3839C0();
  sub_22C5E76A0();
  if (v5)
  {
    v22 = v0;
    v6 = 0;
    v7 = *(v1 + 56);
    v8 = 1 << *(v1 + 32);
    sub_22C5E7620();
    sub_22C5E7650();
    if (v0)
    {
      while (1)
      {
        sub_22C5E7528();
LABEL_9:
        sub_22C5E7D94();
        v15 = *(v14 + v13);
        sub_22C5E7C1C();
        MEMORY[0x2318B8B10](v15);
        v16 = sub_22C90B66C();
        sub_22C37EF28(v16);
        if (v17)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C3872F0(v18);
        *(*(v2 + 48) + v21) = v15;
        sub_22C37B32C();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v17)
        {
          if (v19)
          {
            break;
          }
        }

        sub_22C5E7764();
        if (v17)
        {
          v20 = 0;
        }

        sub_22C5E74E0(v20);
        if (!v17)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v9 = v6;
      while (1)
      {
        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v6 >= v3)
        {

          v0 = v22;
          goto LABEL_23;
        }

        sub_22C5E7AE4();
        if (v10)
        {
          sub_22C375A38();
          v0 = (v12 & v11);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v0 = v2;
    sub_22C38C3F0();
  }
}

uint64_t sub_22C5E4358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8);
  result = sub_22C90AEEC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (!v10)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v14 = *(v6 + 40);
      sub_22C90B62C();
      MEMORY[0x2318B8B10](0);
      result = sub_22C90B66C();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v15) >> 6;
        while (++v17 != v20 || (v19 & 1) == 0)
        {
          v21 = v17 == v20;
          if (v17 == v20)
          {
            v17 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v17);
          if (v22 != -1)
          {
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
            goto LABEL_21;
          }
        }

        goto LABEL_25;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
      v10 &= v10 - 1;
      *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      ++*(v6 + 16);
    }

    while (v10);
LABEL_8:
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_23;
      }

      v10 = *(v3 + 56 + 8 * v13);
      ++v7;
      if (v10)
      {
        v7 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v6;
  }

  return result;
}

void sub_22C5E4530()
{
  sub_22C36BA7C();
  v3 = sub_22C37EC78();
  v4 = _s14TypedCandidateVMa(v3);
  v5 = sub_22C369824(v4);
  v47 = v6;
  v48 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377578();
  v9 = *v0;
  if (*(*v0 + 24) > v1)
  {
    v10 = *(*v0 + 24);
  }

  sub_22C3A5908(&qword_27D9BF130, &qword_22C921F98);
  sub_22C5E7B18();
  v11 = sub_22C5E7594();
  if (*(v9 + 16))
  {
    v46 = v9;
    v12 = 0;
    v14 = v9 + 56;
    v13 = *(v9 + 56);
    v15 = *(v9 + 32);
    sub_22C36AD3C();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    v21 = v11 + 56;
    if ((v17 & v16) != 0)
    {
      while (1)
      {
        sub_22C383840();
LABEL_11:
        v25 = *(v9 + 48);
        v26 = *(v47 + 72);
        sub_22C5E77D4();
        sub_22C5E7218(v27, v2);
        v28 = *(v11 + 40);
        sub_22C90B62C();
        sub_22C9093BC();
        sub_22C5E7444();
        sub_22C5E72C8(&qword_28142FA90, v29);
        sub_22C909F8C();
        v30 = (v2 + *(v48 + 20));
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        sub_22C909FFC();
        sub_22C909FFC();
        sub_22C90B66C();
        v35 = *(v11 + 32);
        sub_22C36C03C();
        sub_22C38A074(v36);
        if (v37)
        {
          break;
        }

        sub_22C37F394();
LABEL_21:
        sub_22C5E7588();
        v41 = *(v21 + v40);
        sub_22C5E74D0();
        *(v21 + v42) = v43;
        v44 = *(v11 + 48);
        sub_22C5E745C();
        sub_22C5E7270(v2, v45);
        ++*(v11 + 16);
        v9 = v46;
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v37)
        {
          if (v38)
          {
            break;
          }
        }

        sub_22C5E7764();
        if (v37)
        {
          v39 = 0;
        }

        sub_22C5E7554(v39);
        if (!v37)
        {
          sub_22C36D900();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v22 = v12;
      while (1)
      {
        v12 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v12 >= v20)
        {
          goto LABEL_23;
        }

        ++v22;
        if (*(v14 + 8 * v12))
        {
          sub_22C375A38();
          v18 = v24 & v23;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E478C()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C908C5C();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF138, &qword_22C921FA0);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E7388();
        sub_22C5E72C8(&qword_27D9BAA90, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E4910()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9069BC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF140, &qword_22C921FA8);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E73B8();
        sub_22C5E72C8(&qword_27D9BAA98, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E4A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v91 = sub_22C908C5C();
  v26 = sub_22C369824(v91);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  sub_22C36BA0C();
  v94 = sub_22C9069BC();
  v31 = sub_22C369824(v94);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C5E7AA0(v34);
  v35 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v36 = sub_22C369914(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  sub_22C377318();
  sub_22C5E7AFC();
  sub_22C3A5908(&qword_27D9BF118, &unk_22C921F80);
  sub_22C5E7874();
  sub_22C5E7594();
  sub_22C5E7E50();
  if (v43)
  {
    sub_22C38B45C();
    sub_22C387B80();
    if (v44)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v51 = *(v50 + 8 * v49);
        v52 = v20[5];
        sub_22C90B62C();
        v20 = v51 + 8;
        v53 = v51[8];
        v54 = v21 << *(v51 + 32);
        sub_22C5E7620();
        v57 = v56 & v55;
        sub_22C5E79E0();
        sub_22C5E7BF4(v58);
        sub_22C5E7B88();
        while (1)
        {
          if (!v57)
          {
            v41 = v93;
            v51 = &qword_27D9BF110;
            while (1)
            {
              v59 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v59 >= v92)
              {
                sub_22C375F34();
                v85 = sub_22C5E7B18();
                sub_22C374D84(v85, v86, v87, v88);
                v57 = 0;
                goto LABEL_18;
              }

              v57 = v20[v59];
              ++v28;
              if (v57)
              {
                v28 = v59;
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_25;
          }

          v59 = v28;
LABEL_17:
          v60 = __clz(__rbit64(v57));
          v57 &= v57 - 1;
          v20 = (v60 | (v59 << 6));
          sub_22C5E7DCC();
          sub_22C383D08(v51[6]);
          v61 = sub_22C5E7A14();
          v62(v61);
          v63 = sub_22C380144();
          v64(v63);
          v65 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v66 = sub_22C5E788C(v65);
          v67(v66);
          v68 = v51[4];
          v51 = &qword_27D9BF110;
          v69 = sub_22C5E7A34();
          v70(v69);
          sub_22C387310(v41);
LABEL_18:
          v71 = sub_22C50B478();
          sub_22C5E71BC(v71, v72, &qword_27D9BF108, &unk_22C921F70);
          sub_22C375F34();
          v73 = sub_22C36A024();
          sub_22C36D3E0(v73);
          if (v74)
          {
            break;
          }

          v75 = sub_22C5E79BC();
          v76(v75);
          sub_22C36BA4C(&a17);
          v77 = sub_22C5E7E00();
          v78(v77);
          sub_22C5E79F8();
          sub_22C5E73B8();
          sub_22C5E72C8(&qword_27D9BAA98, v79);
          sub_22C387D60();
          sub_22C5E7E90();
          v80 = sub_22C5E768C(&a13);
          v81(v80);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v82);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C(&a12);
          v83(&qword_27D9BF110, v25);
          v20 = &v95;
          v84 = sub_22C90B66C();
          sub_22C5E7E3C(v84);
        }

        sub_22C5E7ED8(&a11);
        sub_22C5E7D7C();
        sub_22C90B66C();
        v89 = sub_22C38A1A0();
        sub_22C383BF0(v89);
        if (v90)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C7C();
    while (1)
    {
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        goto LABEL_23;
      }

      ++v45;
      if (*(v46 + 8 * v48))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_23:

    sub_22C5E7DD8();
    sub_22C36CC48();
  }
}

void sub_22C5E4EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v91 = sub_22C908C5C();
  v26 = sub_22C369824(v91);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  sub_22C36BA0C();
  v94 = sub_22C901FAC();
  v31 = sub_22C369824(v94);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C5E7AA0(v34);
  v35 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v36 = sub_22C369914(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  sub_22C377318();
  sub_22C5E7AFC();
  sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60);
  sub_22C5E7874();
  sub_22C5E7594();
  sub_22C5E7E50();
  if (v43)
  {
    sub_22C38B45C();
    sub_22C387B80();
    if (v44)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v51 = *(v50 + 8 * v49);
        v52 = v20[5];
        sub_22C90B62C();
        v20 = v51 + 8;
        v53 = v51[8];
        v54 = v21 << *(v51 + 32);
        sub_22C5E7620();
        v57 = v56 & v55;
        sub_22C5E79E0();
        sub_22C5E7BF4(v58);
        sub_22C5E7B88();
        while (1)
        {
          if (!v57)
          {
            v41 = v93;
            v51 = &qword_27D9BF100;
            while (1)
            {
              v59 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v59 >= v92)
              {
                sub_22C375F34();
                v85 = sub_22C5E7B18();
                sub_22C374D84(v85, v86, v87, v88);
                v57 = 0;
                goto LABEL_18;
              }

              v57 = v20[v59];
              ++v28;
              if (v57)
              {
                v28 = v59;
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_25;
          }

          v59 = v28;
LABEL_17:
          v60 = __clz(__rbit64(v57));
          v57 &= v57 - 1;
          v20 = (v60 | (v59 << 6));
          sub_22C5E7DCC();
          sub_22C383D08(v51[6]);
          v61 = sub_22C5E7A14();
          v62(v61);
          v63 = sub_22C380144();
          v64(v63);
          v65 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
          v66 = sub_22C5E788C(v65);
          v67(v66);
          v68 = v51[4];
          v51 = &qword_27D9BF100;
          v69 = sub_22C5E7A34();
          v70(v69);
          sub_22C387310(v41);
LABEL_18:
          v71 = sub_22C50B478();
          sub_22C5E71BC(v71, v72, &qword_27D9BF0F0, &qword_22C921F58);
          sub_22C375F34();
          v73 = sub_22C36A024();
          sub_22C36D3E0(v73);
          if (v74)
          {
            break;
          }

          v75 = sub_22C5E79BC();
          v76(v75);
          sub_22C36BA4C(&a17);
          v77 = sub_22C5E7E00();
          v78(v77);
          sub_22C5E79F8();
          sub_22C5E7488();
          sub_22C5E72C8(&qword_2814357B0, v79);
          sub_22C387D60();
          sub_22C5E7E90();
          v80 = sub_22C5E768C(&a13);
          v81(v80);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v82);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C(&a12);
          v83(&qword_27D9BF100, v25);
          v20 = &v95;
          v84 = sub_22C90B66C();
          sub_22C5E7E3C(v84);
        }

        sub_22C5E7ED8(&a11);
        sub_22C5E7D7C();
        sub_22C90B66C();
        v89 = sub_22C38A1A0();
        sub_22C383BF0(v89);
        if (v90)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C7C();
    while (1)
    {
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        goto LABEL_23;
      }

      ++v45;
      if (*(v46 + 8 * v48))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_23:

    sub_22C5E7DD8();
    sub_22C36CC48();
  }
}

void sub_22C5E52EC()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9093BC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF128, &qword_22C921F90);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E7444();
        sub_22C5E72C8(&qword_28142FA90, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E5470()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C903CCC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0D0, &qword_22C921F40);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E742C();
        sub_22C5E72C8(&qword_281435738, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E55F4()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v42 = sub_22C9036EC();
  v2 = sub_22C369824(v42);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v41 = v7;
  v8 = sub_22C36BA0C();
  DecorationTuple = type metadata accessor for QueryDecorationTuple(v8);
  v10 = sub_22C369824(DecorationTuple);
  v39 = v11;
  v40 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v38 = v14;
  v15 = *v0;
  if (*(*v0 + 24) > v1)
  {
    v16 = *(*v0 + 24);
  }

  sub_22C3A5908(&qword_27D9BF088, &qword_22C921F00);
  v17 = sub_22C5E7594();
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = *(v15 + 56);
    v20 = *(v15 + 32);
    sub_22C36AD3C();
    v23 = v22 & v21;
    v25 = (v24 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        sub_22C383840();
LABEL_11:
        v29 = *(v15 + 48);
        v43 = *(v39 + 72);
        sub_22C5E77BC();
        sub_22C5E7218(v30, v38);
        v31 = *(v17 + 40);
        sub_22C90B62C();
        sub_22C90371C();
        sub_22C5E77A4();
        sub_22C5E72C8(&qword_281435770, v32);
        sub_22C909F8C();
        (*(v4 + 8))(v41, v42);
        v33 = *(v38 + *(v40 + 20));
        sub_22C7E6754();
        v34 = sub_22C90B66C();
        sub_22C388D34(v34, *(v17 + 32));
        v35 = sub_22C90AE8C();
        *(v17 + 56 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        v36 = *(v17 + 48);
        sub_22C37E87C();
        sub_22C5E7270(v38, v37);
        ++*(v17 + 16);
      }

      while (v23);
    }

    v26 = v18;
    while (1)
    {
      v18 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v18 >= v25)
      {
        goto LABEL_13;
      }

      ++v26;
      if (*(v15 + 56 + 8 * v18))
      {
        sub_22C375A38();
        v23 = v28 & v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E58C0()
{
  sub_22C36BA7C();
  v2 = sub_22C37EC78();
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(v2);
  v3 = sub_22C36985C(DecorationEntityValue);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v53 = v6;
  v7 = sub_22C36BA0C();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v7);
  v8 = sub_22C369824(DecorationTupleParameter);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v13 = v12 - v11;
  sub_22C3799BC();
  sub_22C3A5908(&qword_27D9BF090, &qword_22C921F08);
  v14 = sub_22C386A68();
  if (!*(v1 + 16))
  {

LABEL_29:
    *v0 = v14;
    sub_22C36CC48();
    return;
  }

  v50 = v0;
  v15 = 0;
  v16 = *(v1 + 56);
  v17 = *(v1 + 32);
  sub_22C36AD3C();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v23 = v14 + 56;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v15 >= v22)
      {

        v0 = v50;
        goto LABEL_29;
      }

      ++v25;
      if (*(v1 + 56 + 8 * v15))
      {
        sub_22C375A38();
        v20 = v27 & v26;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_9:
    sub_22C5E7C34(v24 | (v15 << 6));
    sub_22C380560();
    sub_22C5E7218(v28, v13);
    v29 = *(v14 + 40);
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C5E7D58();

    v30 = (v13 + *(DecorationTupleParameter + 20));
    MEMORY[0x2318B8B10](*v30);
    v31 = *(type metadata accessor for QueryDecorationEntity(0) + 20);
    sub_22C5E74A0();
    sub_22C5E7218(v30 + v32, v53);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v34 = sub_22C9039FC();
      v35 = 0;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v34 = sub_22C90399C();
      v35 = 1;
LABEL_13:
      sub_22C36BBA8(v34);
      (*(v36 + 8))(v53);
      goto LABEL_15;
    }

    v35 = EnumCaseMultiPayload;
LABEL_15:
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v35);
    v37 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v37);
    sub_22C90B66C();
    v38 = *(v14 + 32);
    sub_22C36C03C();
    v40 = *(v23 + 8 * v39);
    sub_22C37AC88();
    if (v41)
    {
      break;
    }

    sub_22C37F394();
LABEL_25:
    sub_22C5E7588();
    v45 = *(v23 + v44);
    sub_22C5E74D0();
    *(v23 + v46) = v47;
    v48 = *(v14 + 48);
    sub_22C3827F0();
    sub_22C5E7270(v13, v49);
    ++*(v14 + 16);
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v41)
    {
      if (v42)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v41)
    {
      v43 = 0;
    }

    if (*(v23 + 8 * v43) != -1)
    {
      sub_22C36D900();
      goto LABEL_25;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C5E5BE0()
{
  sub_22C3744F8();
  sub_22C3856E0(v4);
  sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10);
  sub_22C375F14();
  sub_22C3839C0();
  sub_22C5E76A0();
  if (v5)
  {
    v6 = 0;
    v7 = *(v1 + 56);
    v8 = *(v1 + 32);
    sub_22C36AD3C();
    v11 = v10 & v9;
    sub_22C5E79EC();
    while (v11)
    {
      sub_22C382D5C();
LABEL_9:
      v17 = *(*(v1 + 48) + 8 * (v12 | (v6 << 6)));
      sub_22C5E7C1C();

      sub_22C7E6754();
      v18 = sub_22C90B66C();
      sub_22C388D34(v18, *(v2 + 32));
      sub_22C90AE8C();
      sub_22C5E7664();
      *(v2 + 56 + v19) |= v20;
      *(*(v2 + 48) + 8 * v21) = v17;
      sub_22C37B32C();
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v3)
      {
        goto LABEL_11;
      }

      sub_22C5E79B0();
      if (v14)
      {
        sub_22C375A38();
        v11 = v16 & v15;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *v0 = v2;
    sub_22C38C3F0();
  }
}

void sub_22C5E5CF4()
{
  sub_22C36BA7C();
  v2 = v0;
  v3 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C5E73A0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  sub_22C3799BC();
  sub_22C3A5908(&qword_27D9BF0B8, &qword_22C921F30);
  sub_22C386A68();
  v11 = sub_22C3865B4();
  if (v12)
  {
    v34 = v0;
    v13 = 0;
    v14 = *(v11 + 56);
    v15 = *(v11 + 32);
    sub_22C36AD3C();
    v18 = v17 & v16;
    sub_22C5E7630();
    v37 = v5 + 16;
    v38 = v5;
    v35 = (v5 + 32);
    v36 = v19;
    if (v18)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v24 = *(v38 + 72);
        (*(v38 + 16))(v10, *(v20 + 48) + v24 * (v21 | (v13 << 6)), v39);
        v25 = *(v1 + 40);
        sub_22C5E7104();
        sub_22C36ED74();
        v26 = *(v1 + 32);
        sub_22C36C03C();
        v28 = *(v1 + 56 + 8 * v27);
        sub_22C37AC88();
        if (v29)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C36D914();
        sub_22C5E7BC4();
        (*v35)(*(v1 + 48) + v33 * v24, v10, v39);
        sub_22C37BE80();
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v29)
        {
          if (v31)
          {
            break;
          }
        }

        if (v30 == v32)
        {
          v30 = 0;
        }

        sub_22C375F24(v30);
        if (!v29)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v22 = v13;
      while (1)
      {
        v13 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v13 >= v2)
        {
          goto LABEL_21;
        }

        sub_22C5E7CE8();
        if (v23)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E5EF0()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9037EC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0D8, &qword_22C921F48);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C37D998();
        sub_22C5E72C8(&qword_281435768, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E6074()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C908EAC();
  v5 = sub_22C5E73A0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0E0, &qword_22C921F50);
  sub_22C386A68();
  v8 = sub_22C3865B4();
  if (v9)
  {
    sub_22C36ACEC(v8);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v14 = sub_22C372A38(v10, v11);
        v15(v14);
        v16 = *(v2 + 40);
        sub_22C5E7834();
        sub_22C5E72C8(&qword_27D9BAA80, v17);
        v18 = sub_22C36ED74();
        sub_22C5E7364(v18);
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        v24 = sub_22C5E7314(v20);
        v25(v24);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C5E74E0(v21);
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v3;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v3 >= v0)
        {
          goto LABEL_21;
        }

        sub_22C5E7868();
        if (v13)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E61F8()
{
  sub_22C3806F4();
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 24);
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
  sub_22C5E7B18();
  v4 = sub_22C5E7594();
  if (*(v2 + 16))
  {
    v34 = v2;
    v5 = 0;
    v6 = *(v2 + 56);
    v7 = *(v2 + 32);
    sub_22C36AD3C();
    v10 = v9 & v8;
    sub_22C5E7630();
    v11 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        sub_22C383840();
LABEL_9:
        v18 = (*(v2 + 48) + (v12 | (v5 << 6)) * v13);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v18 + 16);
        sub_22C375D08();

        sub_22C909FFC();
        sub_22C90B64C();
        sub_22C90B66C();
        v22 = *(v4 + 32);
        sub_22C36C03C();
        v24 = *(v11 + 8 * v23);
        sub_22C37AC88();
        if (v25)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C5E7588();
        v29 = *(v11 + v28);
        sub_22C5E74D0();
        *(v11 + v30) = v31;
        sub_22C5E78E0(v32);
        *v33 = v19;
        *(v33 + 8) = v20;
        *(v33 + 16) = v21;
        sub_22C37B32C();
        v2 = v34;
        if (!v10)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v25)
        {
          if (v26)
          {
            break;
          }
        }

        sub_22C5E7764();
        if (v25)
        {
          v27 = 0;
        }

        sub_22C375F24(v27);
        if (!v25)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v14 = v5;
      while (1)
      {
        v5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v5 >= v0)
        {

          v1 = v0;
          goto LABEL_23;
        }

        sub_22C5E7CE8();
        if (v15)
        {
          sub_22C375A38();
          v10 = v17 & v16;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v1 = v4;
    sub_22C5E78F0();
  }
}

void sub_22C5E6388()
{
  sub_22C3806F4();
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 24);
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0C8, &qword_22C921F38);
  sub_22C5E7B18();
  v4 = sub_22C5E7594();
  if (*(v2 + 16))
  {
    v25 = v0;
    v26 = v2;
    v5 = 0;
    v6 = *(v2 + 56);
    v7 = *(v2 + 32);
    sub_22C36AD3C();
    v10 = v9 & v8;
    sub_22C5E7630();
    if (v10)
    {
      while (1)
      {
        sub_22C383840();
LABEL_9:
        v16 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        v17 = *(v4 + 40);
        sub_22C90A11C();
        sub_22C90B62C();
        v18 = v16;
        sub_22C5E7F08();
        sub_22C90B66C();
        sub_22C36A024();

        v19 = *(v4 + 32);
        sub_22C5E7564();
        if (v20)
        {
          break;
        }

        sub_22C37F394();
LABEL_19:
        sub_22C36D914();
        sub_22C5E7BC4();
        *(*(v4 + 48) + 8 * v24) = v18;
        sub_22C37B32C();
        v2 = v26;
        if (!v10)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v20)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        sub_22C375F24(v21);
        if (!v20)
        {
          sub_22C36D900();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v1)
        {

          v1 = v25;
          goto LABEL_23;
        }

        sub_22C5E7CE8();
        if (v13)
        {
          sub_22C375A38();
          v10 = v15 & v14;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v1 = v4;
    sub_22C5E78F0();
  }
}

uint64_t sub_22C5E6518(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BEF40, &qword_22C9215E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C5E6590()
{
  result = qword_27D9BEF90;
  if (!qword_27D9BEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF90);
  }

  return result;
}

unint64_t sub_22C5E65E4()
{
  result = qword_27D9BEFA8;
  if (!qword_27D9BEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFA8);
  }

  return result;
}

unint64_t sub_22C5E6638()
{
  result = qword_27D9BEFB0;
  if (!qword_27D9BEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFB0);
  }

  return result;
}

unint64_t sub_22C5E6690()
{
  result = qword_27D9BEFC8;
  if (!qword_27D9BEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFC8);
  }

  return result;
}

uint64_t dispatch thunk of ActionRequirementEvaluating.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  sub_22C369B5C();
  v18 = (v12 + *v12);
  v14 = *(v13 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v5 + 16) = v15;
  *v15 = v16;
  v15[1] = sub_22C382AF4;

  return v18(a1, a2, a3, a4, a5);
}

void sub_22C5E6820()
{
  sub_22C5E6894();
  if (v0 <= 0x3F)
  {
    sub_22C9026DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C5E6894()
{
  if (!qword_27D9BEFE0)
  {
    sub_22C5E68DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BEFE0);
    }
  }
}

void sub_22C5E68DC()
{
  if (!qword_27D9BEFE8)
  {
    sub_22C5E6938();
    v0 = sub_22C90A8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BEFE8);
    }
  }
}

unint64_t sub_22C5E6938()
{
  result = qword_27D9BEFF0;
  if (!qword_27D9BEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequirementStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C5E6AD8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C5E6B88()
{
  result = qword_27D9BEFF8;
  if (!qword_27D9BEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFF8);
  }

  return result;
}

unint64_t sub_22C5E6BE0()
{
  result = qword_27D9BF000;
  if (!qword_27D9BF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF000);
  }

  return result;
}

unint64_t sub_22C5E6C38()
{
  result = qword_27D9BF008;
  if (!qword_27D9BF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF008);
  }

  return result;
}

unint64_t sub_22C5E6C90()
{
  result = qword_27D9BF010;
  if (!qword_27D9BF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF010);
  }

  return result;
}

unint64_t sub_22C5E6CE8()
{
  result = qword_27D9BF018;
  if (!qword_27D9BF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF018);
  }

  return result;
}

unint64_t sub_22C5E6D40()
{
  result = qword_27D9BF020;
  if (!qword_27D9BF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF020);
  }

  return result;
}

unint64_t sub_22C5E6D98()
{
  result = qword_27D9BF028;
  if (!qword_27D9BF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF028);
  }

  return result;
}

unint64_t sub_22C5E6DF0()
{
  result = qword_27D9BF030;
  if (!qword_27D9BF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF030);
  }

  return result;
}

unint64_t sub_22C5E6E48()
{
  result = qword_27D9BF038;
  if (!qword_27D9BF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF038);
  }

  return result;
}

unint64_t sub_22C5E6EA0()
{
  result = qword_27D9BF040;
  if (!qword_27D9BF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF040);
  }

  return result;
}

unint64_t sub_22C5E6EF8()
{
  result = qword_27D9BF048;
  if (!qword_27D9BF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF048);
  }

  return result;
}

unint64_t sub_22C5E6F50()
{
  result = qword_27D9BF050;
  if (!qword_27D9BF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF050);
  }

  return result;
}

unint64_t sub_22C5E6FA8()
{
  result = qword_27D9BF058;
  if (!qword_27D9BF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF058);
  }

  return result;
}

unint64_t sub_22C5E7000()
{
  result = qword_27D9BF060;
  if (!qword_27D9BF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF060);
  }

  return result;
}

unint64_t sub_22C5E7058()
{
  result = qword_27D9BF068;
  if (!qword_27D9BF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF068);
  }

  return result;
}

unint64_t sub_22C5E70B0()
{
  result = qword_27D9BF070;
  if (!qword_27D9BF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF070);
  }

  return result;
}

unint64_t sub_22C5E7104()
{
  result = qword_27D9BF0C0;
  if (!qword_27D9BF0C0)
  {
    sub_22C3AC1A0(&qword_27D9BF0B0, &unk_22C926980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF0C0);
  }

  return result;
}

uint64_t sub_22C5E7168()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C5E71BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C3A5908(a3, a4);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C5E7218(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C5E7270(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C5E72C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C5E7314@<X0>(unint64_t a1@<X8>)
{
  *(v3 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  result = *(v2 + 48) + a1 * v1;
  v6 = **(v4 - 120);
  v7 = *(v4 - 88);
  return result;
}

uint64_t sub_22C5E7364(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

uint64_t sub_22C5E73A0(uint64_t result)
{
  *(v1 - 88) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_22C5E7500()
{
  v4 = *(v0 + 48);
  *(v3 - 112) = *(v1 + 72);
  v5 = *(v1 + 16);
  result = v2;
  v7 = *(v3 - 96);
  return result;
}

uint64_t sub_22C5E7594()
{

  return sub_22C90AEEC();
}

uint64_t sub_22C5E75B0()
{

  return sub_22C90AEEC();
}

uint64_t sub_22C5E75CC()
{
  v4 = *(v1 + 48) + v0 * *(v3 - 112);
  result = v2;
  v6 = *(v3 - 96);
  return result;
}

uint64_t sub_22C5E7604()
{
  v2 = *(v0 + 32);
  result = *(v1 - 88);
  v4 = *(v1 - 120);
  return result;
}

uint64_t sub_22C5E76AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 - 312);
  v4 = *(*(v2 - 296) + 48) + *(v3 + 72) * (__clz(__rbit64(v1)) | (a1 << 6));
  v5 = *(v3 + 16);
  v6 = *(v2 - 248);
  result = *(v2 - 256);
  v8 = *(v2 - 336);
  return result;
}

void sub_22C5E76F8()
{
  v2 = *(v0 - 144);
  v1 = *(v0 - 136);
  v3 = *(v0 - 160);
  v4 = *(v0 - 152);
  v5 = *(v0 - 128);
}

void sub_22C5E7728()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t sub_22C5E7770(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  result = *(v2 - 320);
  v6 = *(v2 - 352);
  return result;
}

uint64_t sub_22C5E784C()
{
  v2 = *v0;

  return sub_22C90AEDC();
}

uint64_t sub_22C5E788C(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  result = *(v2 - 280);
  v6 = *(v2 - 328);
  return result;
}

uint64_t sub_22C5E78B8()
{

  return sub_22C5E7168();
}

uint64_t sub_22C5E7918@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 72) * (a1 | (v4 << 6));
  v7 = *(v1 + 16);
  v8 = *(v3 + 48) + v6;
  result = v2;
  v10 = *(v5 - 88);
  return result;
}

void sub_22C5E7978()
{
  *(v2 - 408) = v1;
  if (*(*v1 + 24) > v0)
  {
    v3 = *(*v1 + 24);
  }
}

uint64_t sub_22C5E79BC()
{
  v3 = *(v0 + 48);
  v4 = *v1;
  result = *(v2 - 264);
  v6 = *(v2 - 256);
  return result;
}

void *sub_22C5E79F8()
{

  return memcpy((v0 - 232), (v0 - 160), 0x48uLL);
}

uint64_t sub_22C5E7A14()
{
  result = *(v0 - 264);
  v2 = *(v0 - 256);
  v3 = *(v0 - 368);
  return result;
}

uint64_t sub_22C5E7A34()
{
  result = v1 + v0;
  v4 = *(v2 - 336);
  v5 = *(v2 - 272);
  return result;
}

uint64_t sub_22C5E7A60()
{

  return sub_22C90B24C();
}

uint64_t sub_22C5E7A80()
{

  return sub_22C909F7C();
}

uint64_t sub_22C5E7AC8()
{
  v4 = *(v2 + 32);
  result = *(v1 + 48) + v0;
  v6 = *(v3 - 96);
  return result;
}

void sub_22C5E7AFC()
{
  *(v2 - 424) = v0;
  if (*(*v0 + 24) > v1)
  {
    v3 = *(*v0 + 24);
  }
}

uint64_t sub_22C5E7B24@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = (*(v2 + 48) + 16 * v5);
  v7 = v6[1];
  v8 = (*(v1 + 48) + 16 * v5);
  *v8 = *v6;
  v8[1] = v7;
}

uint64_t sub_22C5E7B50()
{
  v3 = *(v0 + 48);
  v4 = *v1;
  v5 = *(v2 - 248);
  return *(v2 - 256);
}

uint64_t sub_22C5E7B6C()
{
  v2 = *v0;

  return sub_22C90AEDC();
}

uint64_t sub_22C5E7BE4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C5E7BF4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 288) = a1;
  *(v2 - 320) = v1;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_22C5E7C1C()
{
  v2 = *(v0 + 40);

  return sub_22C90B62C();
}

void *sub_22C5E7D00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_22C5E7D18@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 360) = a1;
  *(v2 - 296) = v1;
}

uint64_t sub_22C5E7D3C()
{
  v2 = *(v0 - 88);

  return sub_22C90A0BC();
}

uint64_t sub_22C5E7D58()
{

  return sub_22C909FFC();
}

void sub_22C5E7D7C()
{
  v2 = *(v0 - 240);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C5E7E3C(uint64_t result)
{
  v2 = result ^ *(v1 - 240);
  v3 = *(v1 - 296);
  return result;
}

uint64_t sub_22C5E7E70()
{
  v2 = *(v0 - 104);

  return sub_22C90B36C();
}

uint64_t sub_22C5E7E90()
{

  return sub_22C909F8C();
}

uint64_t sub_22C5E7EA8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C5E7270(v1, a1 + v2);
}

uint64_t sub_22C5E7EC0()
{

  return sub_22C5E7218(v0 + v2, v1);
}

uint64_t sub_22C5E7ED8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
}

void *sub_22C5E7EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t sub_22C5E7F08()
{

  return sub_22C909FFC();
}

uint64_t AuthenticationRequirementEvaluator.__allocating_init(deviceState:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_22C36D1E4(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_22C5E9140(v8, v1, v3, v4);
  sub_22C36FF94(a1);
  return v10;
}

uint64_t AuthenticationRequirementEvaluator.init(deviceState:)(__int128 *a1)
{
  swift_defaultActor_initialize();
  sub_22C36C730(a1, v1 + 112);
  return v1;
}

uint64_t sub_22C5E8044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22C908EAC();
  v4[6] = v5;
  sub_22C3699B8(v5);
  v4[7] = v6;
  v8 = *(v7 + 64);
  v4[8] = sub_22C3699D4();
  v9 = sub_22C9063DC();
  v4[9] = v9;
  sub_22C3699B8(v9);
  v4[10] = v10;
  v12 = *(v11 + 64);
  v4[11] = sub_22C3699D4();
  v13 = sub_22C908F9C();
  v4[12] = v13;
  sub_22C3699B8(v13);
  v4[13] = v14;
  v16 = *(v15 + 64);
  v4[14] = sub_22C3699D4();
  v17 = *(*(sub_22C3A5908(&qword_27D9BF180, &qword_22C921FF8) - 8) + 64);
  v4[15] = sub_22C3699D4();
  v18 = sub_22C9027AC();
  v4[16] = v18;
  sub_22C3699B8(v18);
  v4[17] = v19;
  v21 = *(v20 + 64);
  v4[18] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C5E820C, v3, 0);
}

uint64_t sub_22C5E820C()
{
  v57 = v0;
  v1 = v0[5];
  v2 = v1[17];
  v3 = v1[18];
  sub_22C374168(v1 + 14, v2);
  if (((*(v3 + 8))(v2, v3) & 1) == 0)
  {
    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    v9 = v0[3];
    v10 = v0[4];
    sub_22C908E4C();
    sub_22C5E8608(v10, v5);
    v11 = *(v7 + 8);
    v11(v6, v8);
    if (sub_22C370B74(v5, 1, v4) == 1)
    {
      sub_22C36DD28(v0[15], &qword_27D9BF180, &qword_22C921FF8);
    }

    else
    {
      v12 = v0[11];
      v14 = v0[7];
      v13 = v0[8];
      v15 = v0[6];
      v16 = v0[3];
      v55 = *(v0[17] + 32);
      v55(v0[18], v0[15], v0[16]);
      sub_22C903F8C();
      (*(v14 + 16))(v13, v16, v15);
      v17 = sub_22C9063CC();
      v18 = sub_22C90AAFC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[14];
        v52 = v0[10];
        v53 = v0[9];
        v54 = v0[11];
        v21 = v0[7];
        v20 = v0[8];
        v49 = v0[12];
        v50 = v0[6];
        v22 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v56 = v51;
        *v22 = 136315138;
        v48 = v18;
        sub_22C908E4C();
        v23 = sub_22C908F8C();
        v25 = v24;
        v11(v19, v49);
        (*(v21 + 8))(v20, v50);
        v26 = sub_22C36F9F4(v23, v25, &v56);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_22C366000, v17, v48, "AuthenticationRequirementEvaluator: Authentication requirements not satisfied %s.", v22, 0xCu);
        sub_22C36FF94(v51);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v52 + 8))(v54, v53);
      }

      else
      {
        v28 = v0[10];
        v27 = v0[11];
        v30 = v0[8];
        v29 = v0[9];
        v31 = v0[6];
        v32 = v0[7];

        (*(v32 + 8))(v30, v31);
        (*(v28 + 8))(v27, v29);
      }

      v33 = v0[2];
      v55(v33, v0[18], v0[16]);
      v34 = *MEMORY[0x277D1CD10];
      v35 = sub_22C9027BC();
      sub_22C36985C(v35);
      (*(v36 + 104))(v33, v34);
      v37 = *MEMORY[0x277D1CC20];
      v38 = sub_22C9026DC();
      sub_22C36985C(v38);
      (*(v39 + 104))(v33, v37);
    }
  }

  v40 = v0[18];
  v42 = v0[14];
  v41 = v0[15];
  v43 = v0[11];
  v44 = v0[8];
  v45 = v0[2];
  type metadata accessor for RequirementStatus();
  swift_storeEnumTagMultiPayload();

  v46 = v0[1];

  return v46();
}

uint64_t sub_22C5E8608@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a1;
  v97 = a2;
  v4 = sub_22C90278C();
  v5 = sub_22C369824(v4);
  v90 = v6;
  v91 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9063DC();
  v11 = sub_22C369824(v10);
  v93 = v12;
  v94 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v95 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v85 = &v85 - v18;
  v19 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v85 - v21;
  v23 = sub_22C9089DC();
  v24 = sub_22C369824(v23);
  v87 = v25;
  v88 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v86 = &v85 - v32;
  v33 = sub_22C908F9C();
  v34 = sub_22C369824(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v41 = (v39 - v40);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v85 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v85 - v46;
  v48 = *(v36 + 16);
  v96 = v3;
  v48(&v85 - v46, v3, v33);
  v49 = (*(v36 + 88))(v47, v33);
  if (v49 == *MEMORY[0x277D72688] || v49 == *MEMORY[0x277D72680])
  {
    goto LABEL_6;
  }

  v54 = *MEMORY[0x277D72670];
  if (v49 == *MEMORY[0x277D72678] || v49 == v54)
  {
    v56 = sub_22C9087DC();
    sub_22C3A5950(v56);

    v57 = sub_22C908A0C();
    if (sub_22C370B74(v22, 1, v57) == 1)
    {
      sub_22C36DD28(v22, &qword_27D9BA808, &qword_22C90C6E0);
LABEL_23:
      (*(v36 + 104))(v45, v54, v33);
      v82 = sub_22C3D4C48(v96, v45);
      (*(v36 + 8))(v45, v33);
      v83 = MEMORY[0x277D1CCF8];
      if ((v82 & 1) == 0)
      {
        v83 = MEMORY[0x277D1CCF0];
      }

      (*(v90 + 104))(v89, *v83, v91);
      v84 = v97;
      sub_22C90279C();
      v51 = sub_22C9027AC();
      v52 = v84;
      v53 = 0;
      return sub_22C36C640(v52, v53, 1, v51);
    }

    sub_22C9089EC();
    (*(*(v57 - 8) + 8))(v22, v57);
    v72 = v86;
    v71 = v87;
    v73 = v88;
    (*(v87 + 32))(v86, v30, v88);
    if ((sub_22C5E8E54() & 1) == 0)
    {
      (*(v71 + 8))(v72, v73);
      goto LABEL_23;
    }

    v74 = v85;
    sub_22C903F8C();
    v75 = sub_22C9063CC();
    v76 = sub_22C90AAFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_22C366000, v75, v76, "AuthenticationRequirementEvaluator: Authentication requirement was reported as satisfied by the client.", v77, 2u);
      sub_22C3699EC();
    }

    (*(v93 + 8))(v74, v94);
    (*(v71 + 8))(v72, v73);
LABEL_6:
    v51 = sub_22C9027AC();
    v52 = v97;
    v53 = 1;
    return sub_22C36C640(v52, v53, 1, v51);
  }

  v58 = v95;
  sub_22C903F8C();
  v48(v41, v96, v33);
  v59 = sub_22C9063CC();
  v60 = sub_22C90AADC();
  if (os_log_type_enabled(v59, v60))
  {
    v62 = swift_slowAlloc();
    v92 = v62;
    v96 = swift_slowAlloc();
    v98 = v96;
    *v62 = 136315138;
    v63 = sub_22C908F8C();
    v65 = v64;
    v66 = *(v36 + 8);
    v67 = sub_22C38BC04();
    v66(v67);
    v68 = sub_22C36F9F4(v63, v65, &v98);

    v69 = v92;
    *(v92 + 1) = v68;
    v70 = v66;
    _os_log_impl(&dword_22C366000, v59, v60, "AuthenticationRequirementEvaluator: Unexpected ToolAuthenticationPolicy type %s. Considering authentication requirement satisfied", v69, 0xCu);
    sub_22C36FF94(v96);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v93 + 8))(v95, v94);
  }

  else
  {

    v70 = *(v36 + 8);
    v78 = sub_22C38BC04();
    v70(v78);
    (*(v93 + 8))(v58, v94);
  }

  v79 = v97;
  v80 = sub_22C9027AC();
  sub_22C36C640(v79, 1, 1, v80);
  return (v70)(v47, v33);
}

uint64_t AuthenticationRequirementEvaluator.deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AuthenticationRequirementEvaluator.__deallocating_deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C5E8DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C3B00E8;

  return sub_22C5E8044(a1, a2, a3);
}

uint64_t sub_22C5E8E54()
{
  v1 = v0;
  v2 = sub_22C908CEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9078FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9089DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D1E730])
  {
    (*(v13 + 96))(v16, v12);
    (*(v3 + 32))(v6, v16, v2);
    v18 = sub_22C908C8C();
    (*(v3 + 8))(v6, v2);
  }

  else if (v17 == *MEMORY[0x277D1E830])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    v18 = sub_22C90783C();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t sub_22C5E9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  v6 = sub_22C36D548(&v9);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  type metadata accessor for AuthenticationRequirementEvaluator();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(&v9, v7 + 112);
  return v7;
}

uint64_t dispatch thunk of AuthenticationRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22C3B00E8;

  return v12(a1, a2, a3);
}

BOOL sub_22C5E935C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  sub_22C90B62C();
  sub_22C909FFC();
  sub_22C90B66C();
  sub_22C372A60();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_22C90B4FC();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t sub_22C5E9440(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = *(a2 + 40);
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v4);
    v6 = sub_22C90B66C();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + v8) != v4);
  }

  return v2;
}

void sub_22C5E94F0()
{
  sub_22C36BA7C();
  sub_22C382808();
  v1 = sub_22C90952C();
  v2 = sub_22C369824(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C36C064();
  if (v5)
  {
    v6 = *(v0 + 40);
    sub_22C373650();
    sub_22C5EB4F8(v7, v8);
    sub_22C38732C();
    sub_22C378024();
    do
    {
      sub_22C5EB53C(v9);
      if (!v10)
      {
        break;
      }

      v11 = sub_22C36A0C0();
      v12(v11);
      sub_22C373650();
      sub_22C5EB4F8(&qword_28142FA78, v13);
      sub_22C5EB574();
      v14 = sub_22C5EB560();
      v15(v14);
      v9 = v0 + 1;
    }

    while ((v6 & 1) == 0);
  }

  sub_22C5EB710();
  sub_22C36CC48();
}

void sub_22C5E9614()
{
  sub_22C36BA7C();
  sub_22C382808();
  v1 = sub_22C901FAC();
  v2 = sub_22C369824(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C36C064();
  if (v5)
  {
    v6 = *(v0 + 40);
    sub_22C371A94();
    sub_22C5EB4F8(v7, v8);
    sub_22C38732C();
    sub_22C378024();
    do
    {
      sub_22C5EB53C(v9);
      if (!v10)
      {
        break;
      }

      v11 = sub_22C36A0C0();
      v12(v11);
      sub_22C371A94();
      sub_22C5EB4F8(&qword_27D9BAA28, v13);
      sub_22C5EB574();
      v14 = sub_22C5EB560();
      v15(v14);
      v9 = v0 + 1;
    }

    while ((v6 & 1) == 0);
  }

  sub_22C5EB710();
  sub_22C36CC48();
}

void sub_22C5E9738()
{
  sub_22C36BA7C();
  sub_22C382808();
  v1 = sub_22C90969C();
  v2 = sub_22C369824(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C36C064();
  if (v5)
  {
    v6 = *(v0 + 40);
    sub_22C37F3A8();
    sub_22C5EB4F8(v7, v8);
    sub_22C38732C();
    sub_22C378024();
    do
    {
      sub_22C5EB53C(v9);
      if (!v10)
      {
        break;
      }

      v11 = sub_22C36A0C0();
      v12(v11);
      sub_22C37F3A8();
      sub_22C5EB4F8(&qword_27D9BF198, v13);
      sub_22C5EB574();
      v14 = sub_22C5EB560();
      v15(v14);
      v9 = v0 + 1;
    }

    while ((v6 & 1) == 0);
  }

  sub_22C5EB710();
  sub_22C36CC48();
}

void sub_22C5E985C()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  v3 = sub_22C369824(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  if (*(v1 + 16))
  {
    v6 = *(v1 + 40);
    sub_22C50B118(&qword_27D9BF0C0, &qword_27D9BF0B0, &unk_22C926980);
    sub_22C38732C();
    v7 = v1 + 56;
    sub_22C372A60();
    v10 = ~v9;
    do
    {
      v11 = v8 & v10;
      if (((1 << (v8 & v10)) & *(v7 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v12 = sub_22C36A0C0();
      v13(v12);
      sub_22C50B118(&qword_27D9BF188, &qword_27D9BF0B0, &unk_22C926980);
      sub_22C5EB574();
      v14 = sub_22C5EB560();
      v15(v14);
      v8 = v11 + 1;
    }

    while ((v6 & 1) == 0);
  }

  sub_22C36CC48();
}

void sub_22C5E99F0()
{
  sub_22C3744F8();
  if (*(v0 + 16))
  {
    v1 = v0;
    v2 = *(v0 + 40);
    sub_22C90A11C();
    sub_22C90B62C();
    sub_22C909FFC();
    v3 = sub_22C90B66C();

    sub_22C372A60();
    v5 = ~v4;
    do
    {
      v6 = v3 & v5;
      if (((1 << (v3 & v5)) & *(v1 + 56 + (((v3 & v5) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v7 = *(*(v1 + 48) + 8 * v6);
      v8 = sub_22C90A11C();
      v10 = v9;
      if (v8 == sub_22C90A11C() && v10 == v11)
      {

        break;
      }

      v13 = sub_22C90B4FC();

      v3 = v6 + 1;
    }

    while ((v13 & 1) == 0);
  }

  sub_22C38C3F0();
}

uint64_t CarBluetoothRequirementEvaluator.init()@<X0>(void *a1@<X8>)
{
  if (qword_281434BA0 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437570;
}

uint64_t CarBluetoothRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22C90363C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_22C3A5908(&qword_27D9BD760, &qword_22C922200) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_22C903B1C();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *v3;
  v4[12] = v12;
  v4[13] = v13;

  return MEMORY[0x2822009F8](sub_22C5E9CE8, 0, 0);
}

uint64_t sub_22C5E9CE8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];
  v0[2] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  sub_22C907EAC();
  if (sub_22C370B74(v2, 1, v1) == 1)
  {
    sub_22C5EA10C(v0[9]);

LABEL_10:
    v20 = v0[3];
    type metadata accessor for RequirementStatus();
    sub_22C37FDE8();
    goto LABEL_11;
  }

  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);

  v4 = sub_22C903A1C();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_10;
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  (*(v6 + 104))(v5, *MEMORY[0x277D1EBF0], v7);
  v8 = sub_22C90362C();
  (*(v6 + 8))(v5, v7);
  if (v8)
  {
    goto LABEL_6;
  }

  v26 = v0[4];
  if (sub_22C908E7C() == 0xD000000000000033 && 0x800000022C92E9B0 == v27)
  {
  }

  else
  {
    v29 = sub_22C90B4FC();

    if ((v29 & 1) == 0)
    {
LABEL_6:
      v9 = v0[13];
      v10 = v0[4];
      v11 = sub_22C908E7C();
      LOBYTE(v9) = sub_22C5E935C(v11, v12, v9);

      if (v9)
      {
        v13 = v0[4];
        if (sub_22C5EB7E4())
        {
          v15 = v0[11];
          v14 = v0[12];
          v16 = v0[10];
          v17 = v0[3];
          sub_22C5EA97C(&unk_283FAFA38);
          v19 = v18;
          (*(v15 + 8))(v14, v16);
          *v17 = v19;
          type metadata accessor for RequirementStatus();
          goto LABEL_11;
        }
      }
    }
  }

  v30 = v0[3];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v31 = *MEMORY[0x277D1CD08];
  v32 = sub_22C9027BC();
  sub_22C369A9C(v32);
  (*(v33 + 104))(v30, v31);
  v34 = *MEMORY[0x277D1CC20];
  v35 = sub_22C9026DC();
  sub_22C369A9C(v35);
  (*(v36 + 104))(v30, v34);
  type metadata accessor for RequirementStatus();
  sub_22C37FDE8();
LABEL_11:
  swift_storeEnumTagMultiPayload();
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[9];

  v24 = v0[1];

  return v24();
}

uint64_t sub_22C5EA05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return CarBluetoothRequirementEvaluator.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t sub_22C5EA10C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22C5EA174()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C908D4C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36A0E0();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22C381B20(v10, v11, v12, v13, v14, v15, v16, v17, v35);
  if (v0 && (sub_22C3A5908(&qword_27D9BF1A0, &unk_22C922110), v18 = sub_22C36D928(), *(v4 + 16)))
  {
    sub_22C370868();
    while (v19 < *(v4 + 16))
    {
      v20 = sub_22C377590(v19);
      (v4)(v20);
      v21 = *(v18 + 40);
      sub_22C383220();
      sub_22C5EB4F8(&qword_27D9BF1A8, v22);
      sub_22C36ED74();
      v23 = *(v18 + 32);
      sub_22C386A8C();
      while (1)
      {
        sub_22C37029C(v24);
        if (v26)
        {
          break;
        }

        v27 = sub_22C375A48();
        (v4)(v27);
        sub_22C383220();
        sub_22C5EB4F8(&qword_27D9BF1B0, v28);
        sub_22C37BE94();
        v29 = sub_22C5EB71C();
        (v18)(v29);
        if (v21)
        {
          (v18)(v36, v5);
          v18 = v2;
          goto LABEL_12;
        }

        v24 = v1 + 1;
        v18 = v2;
      }

      v30 = sub_22C385708(v25);
      v31(v30);
      v32 = *(v18 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v34;
LABEL_12:
      sub_22C5EB6C4();
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_22C36CC48();
  }
}

void sub_22C5EA364()
{
  sub_22C3744F8();
  sub_22C5EB744(v2);
  if (v1 && (sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100), v3 = sub_22C36D928(), v4 = v3, (v5 = *(v0 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v0 + 16))
    {
      v8 = (v0 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      ++v6;
      v11 = *(v4 + 40);
      sub_22C90B62C();

      sub_22C909FFC();
      sub_22C90B66C();
      v12 = *(v4 + 32);
      sub_22C386A8C();
      v15 = ~v14;
      while (1)
      {
        v16 = v13 & v15;
        v17 = (v13 & v15) >> 6;
        v18 = *(v7 + 8 * v17);
        v19 = 1 << (v13 & v15);
        if ((v19 & v18) == 0)
        {
          break;
        }

        v20 = (*(v4 + 48) + 16 * v16);
        v21 = *v20 == v10 && v20[1] == v9;
        if (v21 || (sub_22C90B4FC() & 1) != 0)
        {

          goto LABEL_16;
        }

        v13 = v16 + 1;
      }

      *(v7 + 8 * v17) = v19 | v18;
      v22 = (*(v4 + 48) + 16 * v16);
      *v22 = v10;
      v22[1] = v9;
      sub_22C380578();
      if (v24)
      {
        goto LABEL_19;
      }

      *(v4 + 16) = v23;
LABEL_16:
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C38C3F0();
  }
}

void sub_22C5EA4C4()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C90952C();
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C36A0E0();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22C381B20(v10, v11, v12, v13, v14, v15, v16, v17, v35);
  if (v0 && (sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20), v18 = sub_22C36D928(), *(v4 + 16)))
  {
    sub_22C370868();
    while (v19 < *(v4 + 16))
    {
      v20 = sub_22C377590(v19);
      (v4)(v20);
      v21 = *(v18 + 40);
      sub_22C373650();
      sub_22C5EB4F8(&qword_28142FA80, v22);
      sub_22C36ED74();
      v23 = *(v18 + 32);
      sub_22C386A8C();
      while (1)
      {
        sub_22C37029C(v24);
        if (v26)
        {
          break;
        }

        v27 = sub_22C375A48();
        (v4)(v27);
        sub_22C373650();
        sub_22C5EB4F8(&qword_28142FA78, v28);
        sub_22C37BE94();
        v29 = sub_22C5EB71C();
        (v18)(v29);
        if (v21)
        {
          (v18)(v36, v5);
          v18 = v2;
          goto LABEL_12;
        }

        v24 = v1 + 1;
        v18 = v2;
      }

      v30 = sub_22C385708(v25);
      v31(v30);
      v32 = *(v18 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v34;
LABEL_12:
      sub_22C5EB6C4();
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_22C36CC48();
  }
}

void sub_22C5EA6B4(uint64_t a1)
{
  sub_22C5EB744(a1);
  if (v2 && (sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0), v3 = sub_22C36D928(), v4 = v3, (v34 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v3 + 56;
    v32 = v1;
    v33 = v1 + 32;
    while (v5 < *(v1 + 16))
    {
      v7 = (v33 + 24 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v7 + 16);
      v11 = *(v4 + 40);
      sub_22C90B62C();
      MEMORY[0x2318B8B30](v8 >> 14);
      v35 = v9;
      v12 = v9 >> 14;
      MEMORY[0x2318B8B30](v12);
      MEMORY[0x2318B8B10](v10);
      sub_22C90B66C();
      v13 = *(v4 + 32);
      sub_22C386A8C();
      v15 = ~v14;
      v17 = v16 & ~v14;
      v18 = v17 >> 6;
      v19 = *(v6 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      v21 = *(v4 + 48);
      if (((1 << v17) & v19) != 0)
      {
        while (1)
        {
          v22 = (v21 + 24 * v17);
          v23 = *v22;
          v24 = v22[1];
          v25 = *(v22 + 16);
          v26 = v24 >> 14;
          v27 = v8 >> 14 == v23 >> 14 && v26 == v12;
          if (v27 && v25 == v10)
          {
            break;
          }

          v17 = (v17 + 1) & v15;
          v18 = v17 >> 6;
          v19 = *(v6 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          if ((v19 & (1 << v17)) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        *(v6 + 8 * v18) = v19 | v20;
        v29 = v21 + 24 * v17;
        *v29 = v8;
        *(v29 + 8) = v35;
        *(v29 + 16) = v10;
        sub_22C380578();
        if (v31)
        {
          goto LABEL_19;
        }

        *(v4 + 16) = v30;
      }

      ++v5;
      v1 = v32;
      if (v5 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_22C5EA85C()
{
  sub_22C3744F8();
  sub_22C5EB744(v2);
  if (v1 && (sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0), v3 = sub_22C36D928(), v4 = v3, (v5 = *(v0 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v0 + 16))
    {
      v8 = *(v0 + 32 + v6++);
      v9 = *(v4 + 40);
      sub_22C90B62C();
      MEMORY[0x2318B8B10](v8);
      v10 = sub_22C90B66C();
      v11 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *(v7 + 8 * v13);
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        if (*(*(v4 + 48) + v12) == v8)
        {
          goto LABEL_11;
        }

        v10 = v12 + 1;
      }

      *(v7 + 8 * v13) = v15 | v14;
      *(*(v4 + 48) + v12) = v8;
      sub_22C380578();
      if (v17)
      {
        goto LABEL_14;
      }

      *(v4 + 16) = v16;
LABEL_11:
      if (v6 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_22C38C3F0();
  }
}

void sub_22C5EA97C(uint64_t a1)
{
  sub_22C5EB744(a1);
  if (!v2 || (sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8), v3 = sub_22C36D928(), v4 = v3, (v5 = *(v1 + 16)) == 0))
  {
LABEL_8:

    return;
  }

  v6 = v3 + 56;
  while (1)
  {
    v7 = *(v4 + 40);
    sub_22C90B62C();
    MEMORY[0x2318B8B10](0);
    v8 = sub_22C90B66C() & ~(-1 << *(v4 + 32));
    v9 = v8 >> 6;
    v10 = *(v6 + 8 * (v8 >> 6));
    v11 = 1 << v8;
    if ((v11 & v10) == 0)
    {
      break;
    }

LABEL_7:
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  *(v6 + 8 * v9) = v11 | v10;
  sub_22C380578();
  if (!v13)
  {
    *(v4 + 16) = v12;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C5EAA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v27;
  a20 = v28;
  v30 = v29;
  v75 = sub_22C908C5C();
  v31 = sub_22C369824(v75);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  sub_22C5EB750(v34);
  v78 = sub_22C9069BC();
  v35 = sub_22C369824(v78);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  sub_22C5EB764(v38);
  v39 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v41);
  sub_22C37EC88();
  if (v21 && (sub_22C3A5908(&qword_27D9BF118, &unk_22C921F80), sub_22C36D928(), sub_22C5EB730(), v42))
  {
    sub_22C374D9C();
    while (v43 < *(v30 + 16))
    {
      sub_22C5EB694();
      sub_22C5EB5EC();
      sub_22C5EB6F0();
      while (1)
      {
        v79 = v44;
        if (!v26)
        {
          v23 = v77;
          v20 = &qword_27D9BF110;
          while (1)
          {
            v45 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v45 >= v74)
            {
              v64 = sub_22C375F34();
              sub_22C36C640(v77, 1, 1, v64);
              v26 = 0;
              goto LABEL_14;
            }

            v26 = *(v76 + 8 * v45);
            ++v22;
            if (v26)
            {
              v22 = v45;
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v45 = v22;
LABEL_13:
        v46 = sub_22C5EB598(v45);
        v47(v46);
        v48 = sub_22C3767CC();
        v49(v48);
        v50 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        v51 = sub_22C5EB648(v50);
        v52(v51);
        v53 = v20[4];
        v20 = &qword_27D9BF110;
        v54 = sub_22C3799D0();
        v55(v54);
        sub_22C388334();
LABEL_14:
        sub_22C5EB49C(v23, v25, &qword_27D9BF108, &unk_22C921F70);
        v56 = sub_22C375F34();
        if (sub_22C370B74(v25, 1, v56) == 1)
        {
          break;
        }

        v57 = sub_22C37F8EC();
        v58(v57);
        v59 = sub_22C5EB674();
        v60(v59);
        memcpy(v80, v81, sizeof(v80));
        sub_22C5EB4F8(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C(&a13);
        v61(v24, v23);
        sub_22C38A9D0();
        sub_22C5EB4F8(&qword_27D9BAA90, v62);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C(&a12);
        v63(&qword_27D9BF110, v30);
        v44 = sub_22C90B66C() ^ v79;
      }

      sub_22C5EB704();

      MEMORY[0x2318B8B10](v79);
      sub_22C90B66C();
      v20 = v73;
      sub_22C372A60();
      sub_22C5EB6DC();
      while (1)
      {
        sub_22C386290(v65);
        if (v67)
        {
          break;
        }

        v68 = *(v73[6] + 8 * v26);

        sub_22C74B664();
        v22 = v69;

        if (v22)
        {
          sub_22C5EB704();

          goto LABEL_24;
        }

        v65 = v26 + 1;
      }

      sub_22C37BB80(v66);
      if (v71)
      {
        goto LABEL_29;
      }

      v73[2] = v70;
LABEL_24:
      sub_22C37B33C();
      v30 = *(v72 - 256);
      if (v67)
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_26:

    sub_22C36CC48();
  }
}

void sub_22C5EAED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v27;
  a20 = v28;
  v30 = v29;
  v76 = sub_22C908C5C();
  v31 = sub_22C369824(v76);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  sub_22C5EB750(v34);
  v79 = sub_22C901FAC();
  v35 = sub_22C369824(v79);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  sub_22C5EB764(v38);
  v39 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  sub_22C36A0E0();
  MEMORY[0x28223BE20](v41);
  sub_22C37EC88();
  if (v21 && (sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60), sub_22C36D928(), sub_22C5EB730(), v42))
  {
    sub_22C374D9C();
    while (v43 < *(v30 + 16))
    {
      sub_22C5EB694();
      sub_22C5EB5EC();
      sub_22C5EB6F0();
      while (1)
      {
        v80 = v44;
        if (!v26)
        {
          v23 = v78;
          v20 = &qword_27D9BF100;
          while (1)
          {
            v45 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v45 >= v75)
            {
              v65 = sub_22C375F34();
              sub_22C36C640(v78, 1, 1, v65);
              v26 = 0;
              goto LABEL_14;
            }

            v26 = *(v77 + 8 * v45);
            ++v22;
            if (v26)
            {
              v22 = v45;
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v45 = v22;
LABEL_13:
        v46 = sub_22C5EB598(v45);
        v47(v46);
        v48 = sub_22C3767CC();
        v49(v48);
        v50 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
        v51 = sub_22C5EB648(v50);
        v52(v51);
        v53 = v20[4];
        v20 = &qword_27D9BF100;
        v54 = sub_22C3799D0();
        v55(v54);
        sub_22C388334();
LABEL_14:
        sub_22C5EB49C(v23, v25, &qword_27D9BF0F0, &qword_22C921F58);
        v56 = sub_22C375F34();
        if (sub_22C370B74(v25, 1, v56) == 1)
        {
          break;
        }

        v57 = sub_22C37F8EC();
        v58(v57);
        v59 = sub_22C5EB674();
        v60(v59);
        memcpy(v81, v82, sizeof(v81));
        sub_22C371A94();
        sub_22C5EB4F8(&qword_2814357B0, v61);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C(&a13);
        v62(v24, v23);
        sub_22C38A9D0();
        sub_22C5EB4F8(&qword_27D9BAA90, v63);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C(&a12);
        v64(&qword_27D9BF100, v30);
        v44 = sub_22C90B66C() ^ v80;
      }

      sub_22C5EB704();

      MEMORY[0x2318B8B10](v80);
      sub_22C90B66C();
      v20 = v74;
      sub_22C372A60();
      sub_22C5EB6DC();
      while (1)
      {
        sub_22C386290(v66);
        if (v68)
        {
          break;
        }

        v69 = *(v74[6] + 8 * v26);

        sub_22C74B9DC();
        v22 = v70;

        if (v22)
        {
          sub_22C5EB704();

          goto LABEL_24;
        }

        v66 = v26 + 1;
      }

      sub_22C37BB80(v67);
      if (v72)
      {
        goto LABEL_29;
      }

      v74[2] = v71;
LABEL_24:
      sub_22C37B33C();
      v30 = *(v73 - 256);
      if (v68)
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_26:

    sub_22C36CC48();
  }
}

void sub_22C5EB328(uint64_t a1)
{
  if (*(a1 + 16) && (sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10), v2 = sub_22C36D928(), v3 = v2, (v30 = *(a1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v29 = a1 + 32;
    while (v4 < *(a1 + 16))
    {
      v6 = *(v29 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_22C90B62C();

      sub_22C7E6754();
      sub_22C90B66C();
      v8 = *(v3 + 32);
      sub_22C386A8C();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = *(v5 + 8 * v13);
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = *(*(v3 + 48) + 8 * v12);

        sub_22C5DB210(v17, v6, v18, v19, v20, v21, v22, v23, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
        v25 = v24;

        if (v25)
        {

          goto LABEL_12;
        }

        v9 = v12 + 1;
      }

      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v6;
      sub_22C380578();
      if (v27)
      {
        goto LABEL_15;
      }

      *(v3 + 16) = v26;
LABEL_12:
      if (v4 == v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_22C5EB49C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C3A5908(a3, a4);
  sub_22C369A9C(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C5EB4F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C5EB574()
{
  v2 = *(v0 - 96);

  return sub_22C90A0BC();
}

uint64_t sub_22C5EB598@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 - 344);
  v4 = *(*(v2 - 280) + 48) + *(v3 + 72) * (__clz(__rbit64(v1)) | (a1 << 6));
  v5 = *(v3 + 16);
  result = *(v2 - 264);
  v7 = *(v2 - 256);
  v8 = *(v2 - 360);
  return result;
}

uint64_t sub_22C5EB5EC()
{
  v4 = *(v0 + 64);
  *(v2 - 296) = v0 + 64;
  *(v2 - 376) = ((v1 << *(v0 + 32)) + 63) >> 6;
  *(v2 - 280) = v0;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_22C5EB648(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  result = *(v2 - 288);
  v6 = *(v2 - 328);
  return result;
}

uint64_t sub_22C5EB694()
{
  v4 = *(*(v2 - 392) + 8 * v0);
  *(v2 - 384) = v0 + 1;
  v5 = *(v1 + 40);

  return sub_22C90B62C();
}

void sub_22C5EB6C4()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);
}

uint64_t CarPlayRequirementEvaluator.init()@<X0>(void *a1@<X8>)
{
  if (qword_281434BA0 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437570;
}

BOOL sub_22C5EB7E4()
{
  v0 = sub_22C908D6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = ToolDefinition.isAppLaunchRequired(willRunOpensIntent:)(0);
  v6 = 0;
  if (!v5)
  {
    v7 = sub_22C908DEC();
    v8 = (*(v1 + 104))(v4, *MEMORY[0x277D72168], v0);
    MEMORY[0x28223BE20](v8);
    *&v11[-16] = v4;
    v9 = sub_22C5EC62C(sub_22C50AFAC, &v11[-32], v7);

    (*(v1 + 8))(v4, v0);
    return !v9;
  }

  return v6;
}

uint64_t CarPlayRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22C90363C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_22C3A5908(&qword_27D9BD760, &qword_22C922200) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_22C903B1C();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *v3;
  v4[12] = v12;
  v4[13] = v13;

  return MEMORY[0x2822009F8](sub_22C5EBAA4, 0, 0);
}

uint64_t sub_22C5EBAA4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];
  v0[2] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EAC();
  if (sub_22C370B74(v2, 1, v1) == 1)
  {
    sub_22C5EA10C(v0[9]);

    goto LABEL_8;
  }

  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);

  if ((sub_22C903A7C() & 1) == 0)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_8;
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  (*(v5 + 104))(v4, *MEMORY[0x277D1EBF0], v6);
  v7 = sub_22C90362C();
  (*(v5 + 8))(v4, v6);
  if (v7)
  {
    goto LABEL_5;
  }

  v22 = v0[4];
  if (sub_22C908E7C() == 0xD000000000000033 && 0x800000022C92E9B0 == v23)
  {
  }

  else
  {
    v25 = sub_22C90B4FC();

    if ((v25 & 1) == 0)
    {
LABEL_5:
      v9 = v0[12];
      v8 = v0[13];
      v10 = v0[10];
      v11 = v0[11];
      v12 = v0[4];
      v13 = sub_22C908E7C();
      LOBYTE(v8) = sub_22C5E935C(v13, v14, v8);

      (*(v11 + 8))(v9, v10);
      if (v8)
      {
        goto LABEL_8;
      }

      v15 = v0[3];
      goto LABEL_19;
    }
  }

  v15 = v0[3];
  (*(v0[11] + 8))(v0[12], v0[10]);
LABEL_19:
  v26 = *MEMORY[0x277D1CCE0];
  v27 = sub_22C9027BC();
  sub_22C369A9C(v27);
  (*(v28 + 104))(v15, v26);
  v29 = *MEMORY[0x277D1CC20];
  v30 = sub_22C9026DC();
  sub_22C369A9C(v30);
  (*(v31 + 104))(v15, v29);
LABEL_8:
  v16 = v0[12];
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[3];
  type metadata accessor for RequirementStatus();
  swift_storeEnumTagMultiPayload();

  v20 = v0[1];

  return v20();
}

uint64_t sub_22C5EBDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return CarPlayRequirementEvaluator.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t ToolKitDeviceUnlockStateProvider.isDeviceUnlocked.getter()
{
  v0 = sub_22C9096CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277D72FC0];
  v6 = sub_22C9096AC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  (*(v1 + 104))(v4, *MEMORY[0x277D72FC8], v0);
  LOBYTE(v5) = sub_22C9096BC();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

_BYTE *storeEnumTagSinglePayload for ToolKitDeviceUnlockStateProvider(_BYTE *result, int a2, int a3)
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

BOOL sub_22C5EC08C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_22C5EC16C()
{
  sub_22C371AAC();
  v31 = v3;
  v30 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  v4 = sub_22C36985C(v30);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v29 - v7;
  v9 = v2 + 64;
  v8 = *(v2 + 64);
  sub_22C5EDB70();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v32 = v2;

  v16 = 0;
  while (v12)
  {
    v33 = v0;
LABEL_8:
    v18 = __clz(__rbit64(v12)) | (v16 << 6);
    v19 = *(v32 + 56);
    v20 = (*(v32 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = sub_22C901FAC();
    sub_22C36985C(v23);
    v25 = v19 + *(v24 + 72) * v18;
    v26 = v29;
    (*(v24 + 16))(&v29[*(v30 + 48)], v25);
    *v26 = v21;
    v26[1] = v22;

    v27 = v33;
    v28 = v31(v26);
    v0 = v27;
    result = sub_22C36DD28(v26, &qword_27D9BAA30, &unk_22C911F70);
    if (v27)
    {
      goto LABEL_12;
    }

    v12 &= v12 - 1;
    if (v28)
    {
      v1 = 1;
LABEL_12:

      return v1 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      v1 = 0;
      goto LABEL_12;
    }

    v12 = *(v9 + 8 * v17);
    ++v16;
    if (v12)
    {
      v33 = v0;
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5EC338()
{
  sub_22C371AAC();
  v29 = v3;
  v30 = sub_22C901FAC();
  v4 = sub_22C369824(v30);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + 64;
  v9 = *(v2 + 64);
  sub_22C5EDB70();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v27[2] = v16 + 16;
  v28 = v16;
  v27[1] = v16 + 8;
  v31 = v2;

  v18 = 0;
  while (v13)
  {
    v19 = v30;
LABEL_9:
    (*(v28 + 16))(v8, *(v31 + 56) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v19);
    v21 = v29(v8);
    if (v0)
    {
      v25 = sub_22C388838();
      v26(v25);

      return v1 & 1;
    }

    v22 = v21;
    v13 &= v13 - 1;
    v23 = sub_22C388838();
    result = v24(v23);
    if (v22)
    {
      v1 = 1;
LABEL_13:

      return v1 & 1;
    }
  }

  v19 = v30;
  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {
      v1 = 0;
      goto LABEL_13;
    }

    v13 = *(v10 + 8 * v20);
    ++v18;
    if (v13)
    {
      v18 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}