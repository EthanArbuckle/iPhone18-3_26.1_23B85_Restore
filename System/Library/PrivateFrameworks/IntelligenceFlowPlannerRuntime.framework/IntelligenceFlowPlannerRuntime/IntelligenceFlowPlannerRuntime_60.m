void sub_22C88F874()
{
  sub_22C36BA7C();
  sub_22C389358();
  v45 = sub_22C9093BC();
  v5 = sub_22C369824(v45);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C388488(v8);
  v9 = sub_22C9091CC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C8920BC(v15, v43);
  sub_22C3A5908(&qword_27D9C0D90, &qword_22C92B248);
  sub_22C375F14();
  sub_22C383E94();
  sub_22C892444();
  if (v16)
  {
    sub_22C373C4C();
    while (v3)
    {
      sub_22C36D6B8();
LABEL_10:
      sub_22C377780();
      if (v21)
      {
        v22 = sub_22C38190C();
        v23(v22);
        v24 = sub_22C38768C();
      }

      else
      {
        v26 = sub_22C38190C();
        v27(v26);
        v24 = sub_22C8920E8();
      }

      v25(v24);
      v28 = *(v2 + 40);
      sub_22C891E48(&qword_27D9BF390, MEMORY[0x277D72900]);
      v29 = sub_22C38C53C();
      sub_22C378950(v29, *(v2 + 32));
      if (v30)
      {
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

          sub_22C892190(v31);
          if (!v30)
          {
            sub_22C37F630();
            goto LABEL_23;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      sub_22C38AC50();
LABEL_23:
      v34 = sub_22C36A544();
      v35(v34);
      v36 = sub_22C383524();
      v37(v36);
      sub_22C892144();
    }

    v17 = v4;
    while (1)
    {
      v4 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v1)
      {
        break;
      }

      sub_22C36CC00();
      if (v18)
      {
        sub_22C375A38();
        v3 = v20 & v19;
        goto LABEL_10;
      }
    }

    if (v44)
    {
      sub_22C37F8D8();
      if (v39 != v40)
      {
        sub_22C37B880(v38);
      }

      else
      {
        v41 = sub_22C3856F8();
        sub_22C88FAFC(v41, v42, v12);
      }

      *(v0 + 16) = 0;
    }
  }

  sub_22C3864C8();
  sub_22C36CC48();
}

uint64_t sub_22C88FAFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22C9114A0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22C88FB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C891FEC(a3, a1);
  v3 = sub_22C36BA00();
  return sub_22C891FEC(v3, v4);
}

uint64_t sub_22C88FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C892320();
  sub_22C891FEC(v4, v5);

  return a3;
}

uint64_t sub_22C88FBFC()
{
  sub_22C89222C();
  v4 = sub_22C902D0C();
  sub_22C36985C(v4);
  v7 = *(v5 + 16);
  v7(v3, v1, v4);

  return (v7)(v2, v0, v4);
}

uint64_t sub_22C88FC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C891FEC(a3, a1);

  return a2;
}

uint64_t sub_22C88FCE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C8924A4(a1, a2, a3, a4, a5);

  return sub_22C37EF10();
}

uint64_t sub_22C88FD48()
{
  sub_22C892450();
  sub_22C891FEC(v1, v0);

  return sub_22C36BBCC();
}

uint64_t sub_22C88FD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C8924A4(a1, a2, a3, a4, a5);

  return sub_22C37EF10();
}

uint64_t sub_22C88FDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22C901FAC();
  sub_22C36985C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C37EF10();
  v8(v7);

  return a3;
}

uint64_t sub_22C88FE30()
{
  sub_22C892450();
  sub_22C891FEC(v1, v0);

  return sub_22C36BBCC();
}

uint64_t sub_22C88FE78()
{
  sub_22C89222C();
  v4 = sub_22C9069BC();
  sub_22C36985C(v4);
  (*(v5 + 16))(v3, v1);
  v6 = sub_22C908C5C();
  v7 = sub_22C36985C(v6);
  v9 = *(v8 + 16);

  return v9(v2, v0, v7);
}

uint64_t sub_22C88FF28()
{
  v2 = sub_22C89222C();
  v4 = v3(v2);
  sub_22C36985C(v4);
  (*(v5 + 16))(v1, v0);

  return sub_22C37EF10();
}

uint64_t sub_22C88FF90()
{
  sub_22C892450();
  sub_22C37B10C();
  sub_22C891FEC(v1, v0);

  return sub_22C36BBCC();
}

uint64_t sub_22C88FFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36F998(a4, a1);

  return a2;
}

uint64_t sub_22C890008@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C88FFC8((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22C890040(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22C890270(a1, a2, a3, v48);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  *(&v37 + 1) = a1;

  *&v37 = a3;

  while (1)
  {
    sub_22C891C58(v9, v10, v11, v12, v13, v14, v15, v16, v37, v38[0], v38[1], v39[0], v39[1], v40, v41, *(&v41 + 1), v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *&v48[0]);
    v17 = *(&v40 + 1);
    if (!*(&v40 + 1))
    {
      sub_22C36A674();
    }

    v18 = v40;
    sub_22C456E34(&v41, v39);
    v19 = *a5;
    v21 = sub_22C36E2BC(v18, v17);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
        sub_22C90B16C();
        if (v25)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_22C88F6B8(v24);
      v26 = *a5;
      v27 = sub_22C36E2BC(v18, v17);
      if ((v25 & 1) != (v28 & 1))
      {
        goto LABEL_18;
      }

      v21 = v27;
      if (v25)
      {
LABEL_10:
        v29 = *a5;
        sub_22C36F998(v39, v38);
        sub_22C36FF94(v39);

        v30 = (v29[7] + 32 * v21);
        sub_22C36FF94(v30);
        v9 = sub_22C456E34(v38, v30);
        goto LABEL_14;
      }
    }

    v31 = *a5;
    *(*a5 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v32 = (v31[6] + 16 * v21);
    *v32 = v18;
    v32[1] = v17;
    v9 = sub_22C456E34(v39, (v31[7] + 32 * v21));
    v33 = v31[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_17;
    }

    v31[2] = v35;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C890270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_22C8902AC()
{
  sub_22C36BA7C();
  v8 = v7;
  v49 = sub_22C3A5908(&qword_27D9BD050, &qword_22C917420);
  sub_22C36985C(v49);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22C37B974();
  v13 = type metadata accessor for PromptTreeIdentifier.Label(v12);
  v14 = sub_22C3699B8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C377D60();
  v19 = sub_22C3A5908(&qword_27D9C0E70, &unk_22C92B528);
  v20 = sub_22C369914(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v50 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C892400();
  v47 = v0;
  if (v25)
  {
    v48 = v8;
LABEL_7:
    sub_22C892120();
    v29 = (v28 & v27);
    v32 = v31 | (v30 << 6);
    sub_22C891FEC(*(v5 + 48) + *(v16 + 72) * v32, v4);
    v33 = *(*(v5 + 56) + 8 * v32);
    v34 = *(v49 + 48);
    v35 = v4;
    v36 = v49;
    sub_22C892044(v35, v3);
    *(v3 + v34) = v33;
    v37 = sub_22C38A14C();
    sub_22C36C640(v37, v38, v39, v49);

    v8 = v48;
LABEL_8:
    sub_22C8924D4();
    sub_22C5E71BC(v3, v50, &qword_27D9C0E70, &unk_22C92B528);
    v40 = sub_22C37E21C();
    sub_22C36D0A8(v40, v41, v36);
    if (!v42)
    {
      sub_22C892304(v50);
      v29(v47);
      sub_22C8922E8();
      v3 = 0;
    }

    v43 = sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760);
    sub_22C36C640(v8, v3, 1, v43);
    sub_22C36CC48();
  }

  else
  {
    while (1)
    {
      v26 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v26 >= ((v2 + 64) >> 6))
      {
        v44 = sub_22C6AEF30();
        v36 = v49;
        sub_22C36C640(v44, v45, v46, v49);
        v29 = 0;
        goto LABEL_8;
      }

      ++v1;
      if (*(v6 + 8 * v26))
      {
        v48 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_22C890534()
{
  sub_22C36BA7C();
  v3 = v2;
  v66 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  sub_22C36985C(v66);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C37B974();
  v7 = sub_22C902D0C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v14 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = sub_22C3A5908(&qword_27D9BC218, &unk_22C912410);
  v19 = sub_22C369914(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v65 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v26 = *v1;
  v27 = v1[1];
  v28 = v1[2];
  v29 = v1[3];
  v30 = v1[4];
  v59 = v0;
  v64 = v28;
  if (v30)
  {
    v62 = v25;
    v63 = v3;
LABEL_8:
    sub_22C371C3C();
    v60 = v17;
    v61 = v36;
    v39 = v10[9] * (v38 | (v37 << 6));
    v40 = v10[2];
    v41 = v17;
    v43 = v42;
    v40(v41, *(v42 + 48) + v39, v7);
    v40(v14, *(v43 + 56) + v39, v7);
    v44 = *(v66 + 48);
    v45 = v10[4];
    v25 = v62;
    v45(v62, v60, v7);
    v46 = &v25[v44];
    v47 = v61;
    v45(v46, v14, v7);
    v48 = v43;
    v49 = 0;
    v3 = v63;
LABEL_9:
    v50 = 1;
    v51 = v66;
    sub_22C36C640(v25, v49, 1, v66);
    *v1 = v48;
    v1[1] = v27;
    v52 = v65;
    v1[2] = v64;
    v1[3] = v29;
    v1[4] = v47;
    v53 = v1[5];
    v54 = v1[6];
    sub_22C5E71BC(v25, v52, &qword_27D9BC218, &unk_22C912410);
    sub_22C36D0A8(v52, 1, v51);
    if (!v55)
    {
      v56 = v52;
      v57 = v59;
      sub_22C892304(v56);
      v53(v57);
      sub_22C8922E8();
      v50 = 0;
    }

    v58 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    sub_22C36C640(v3, v50, 1, v58);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        v47 = 0;
        v49 = 1;
        v48 = v32;
        goto LABEL_9;
      }

      sub_22C8924C8(v33);
      if (v35)
      {
        v62 = v25;
        v63 = v3;
        v29 = v34;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C890844()
{
  sub_22C36BA7C();
  v52 = v8;
  v51 = sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0);
  sub_22C36985C(v51);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22C37B974();
  v13 = type metadata accessor for _PromptMapper._ToolPromptMap(v12);
  v14 = sub_22C3699B8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C377D60();
  v19 = sub_22C3A5908(&qword_27D9BFC80, &unk_22C92B6F0);
  v20 = sub_22C369914(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v23);
  sub_22C892400();
  v50 = v0;
  if (v24)
  {
LABEL_5:
    sub_22C892120();
    v28 = (v27 & v26);
    v31 = v30 | (v29 << 6);
    v32 = *(*(v6 + 48) + 8 * v31);
    sub_22C891FEC(*(v6 + 56) + *(v16 + 72) * v31, v5);
    v33 = *(v51 + 48);
    *v4 = v32;
    v34 = v5;
    v35 = v51;
    sub_22C892044(v34, v4 + v33);
    v36 = sub_22C38A14C();
    sub_22C36C640(v36, v37, v38, v51);

LABEL_6:
    sub_22C8924D4();
    v39 = sub_22C3806B8();
    sub_22C5E71BC(v39, v40, v41, v42);
    v43 = sub_22C892460();
    sub_22C36D0A8(v43, v44, v35);
    if (!v45)
    {
      sub_22C5E71BC(v3, v50, &qword_27D9BC4B0, &unk_22C9134C0);
      v28(v50);
      sub_22C36DD28(v50, &qword_27D9BC4B0, &unk_22C9134C0);
      v4 = 0;
    }

    v46 = sub_22C3A5908(&qword_27D9BC4B8, &qword_22C9134D0);
    sub_22C36C640(v52, v4, 1, v46);
    sub_22C36CC48();
  }

  else
  {
    while (1)
    {
      v25 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v25 >= ((v2 + 64) >> 6))
      {
        v47 = sub_22C6AEF30();
        v35 = v51;
        sub_22C36C640(v47, v48, v49, v51);
        v28 = 0;
        goto LABEL_6;
      }

      ++v1;
      if (*(v7 + 8 * v25))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22C890AD8()
{
  sub_22C36BA7C();
  v7 = v6;
  v41 = sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80);
  sub_22C36985C(v41);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C386E84();
  v11 = sub_22C90941C();
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C50B438();
  v15 = sub_22C3A5908(&qword_27D9BFC38, &unk_22C924EE0);
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C37EE60();
  if (v20)
  {
    v40 = v7;
LABEL_8:
    sub_22C371C3C();
    v25 = sub_22C381C48(v24);
    v26(v25);
    v27 = sub_22C8921B0();
    v28(v27);
    sub_22C36BECC();
    sub_22C36C640(v29, v30, v31, v5);

    v7 = v40;
LABEL_9:
    sub_22C89226C();
    sub_22C5E71BC(v4, v1, &qword_27D9BFC38, &unk_22C924EE0);
    v32 = sub_22C37E21C();
    sub_22C36D0A8(v32, v33, v5);
    if (!v34)
    {
      sub_22C892304(v1);
      v35 = sub_22C38023C();
      v0(v35);
      sub_22C8922E8();
      v3 = 0;
    }

    v36 = sub_22C3A5908(&qword_27D9BDDE0, &off_22C91BE88);
    sub_22C36C640(v7, v3, 1, v36);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v22 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        sub_22C36A748();
        v5 = v41;
        sub_22C89255C(v37, v38, v39);
        goto LABEL_9;
      }

      sub_22C8924C8(v22);
      if (v23)
      {
        v40 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C890D18()
{
  sub_22C36BA7C();
  v7 = v6;
  v41 = sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0);
  sub_22C36985C(v41);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C386E84();
  v11 = sub_22C908EAC();
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C50B438();
  v15 = sub_22C3A5908(&qword_27D9BFC40, &unk_22C924EF0);
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C37EE60();
  if (v20)
  {
    v40 = v7;
LABEL_8:
    sub_22C371C3C();
    v25 = sub_22C381C48(v24);
    v26(v25);
    v27 = sub_22C8921B0();
    v28(v27);
    sub_22C36BECC();
    sub_22C36C640(v29, v30, v31, v5);

    v7 = v40;
LABEL_9:
    sub_22C89226C();
    sub_22C5E71BC(v4, v1, &qword_27D9BFC40, &unk_22C924EF0);
    v32 = sub_22C37E21C();
    sub_22C36D0A8(v32, v33, v5);
    if (!v34)
    {
      sub_22C892304(v1);
      v35 = sub_22C38023C();
      v0(v35);
      sub_22C8922E8();
      v3 = 0;
    }

    v36 = sub_22C3A5908(&qword_27D9BDE00, &off_22C91BEA8);
    sub_22C36C640(v7, v3, 1, v36);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v22 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        sub_22C36A748();
        v5 = v41;
        sub_22C89255C(v37, v38, v39);
        goto LABEL_9;
      }

      sub_22C8924C8(v22);
      if (v23)
      {
        v40 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C890F58()
{
  sub_22C36BA7C();
  v7 = v6;
  v42 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
  sub_22C36985C(v42);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22C36CD40();
  v12 = type metadata accessor for ToolPromptMap(v11);
  v13 = sub_22C3699B8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C377D60();
  v16 = sub_22C3A5908(&qword_27D9BFC48, &unk_22C924F00);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v20);
  sub_22C8921D4();
  if (v21)
  {
    v41 = v7;
LABEL_8:
    sub_22C371C3C();
    v25 = sub_22C8923BC(v24);
    sub_22C891FEC(v25, v5);
    sub_22C37E8F8();
    v26 = sub_22C38A14C();
    sub_22C36C640(v26, v27, v28, v2);

    v7 = v41;
LABEL_9:
    sub_22C892254();
    v29 = sub_22C3806B8();
    sub_22C5E71BC(v29, v30, v31, v32);
    v33 = sub_22C892460();
    sub_22C36D0A8(v33, v34, v2);
    if (!v35)
    {
      sub_22C892304(v3);
      v36 = sub_22C38023C();
      v0(v36);
      sub_22C8922E8();
      v4 = 0;
    }

    v37 = sub_22C3A5908(&qword_27D9BDE18, &unk_22C91BEC0);
    sub_22C36C640(v7, v4, 1, v37);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v23 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v38 = sub_22C6AEF30();
        v2 = v42;
        sub_22C36C640(v38, v39, v40, v42);
        goto LABEL_9;
      }

      ++v1;
      if (*(v0 + v23))
      {
        v41 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C89119C()
{
  sub_22C36BA7C();
  v7 = v6;
  v46 = sub_22C3A5908(&qword_27D9BD7B0, &qword_22C9190F8);
  sub_22C36985C(v46);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C36CD40();
  v45 = sub_22C901FAC();
  v11 = sub_22C369824(v45);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C50B438();
  v16 = sub_22C3A5908(&qword_27D9C0F08, qword_22C92B710);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  sub_22C8921D4();
  if (v24)
  {
    v43 = v22;
    v44 = v7;
LABEL_8:
    sub_22C371C3C();
    v29 = v28 | (v27 << 6);
    (*(v13 + 16))(v4, *(v5 + 48) + *(v13 + 72) * v29, v45);
    v30 = *(*(v5 + 56) + 8 * v29);
    v31 = *(v46 + 48);
    v32 = v4;
    v33 = v46;
    (*(v13 + 32))(v3, v32, v45);
    *(v3 + v31) = v30;
    v34 = sub_22C38A14C();
    sub_22C36C640(v34, v35, v36, v46);

    v22 = v43;
    v7 = v44;
LABEL_9:
    sub_22C892254();
    sub_22C5E71BC(v3, v22, &qword_27D9C0F08, qword_22C92B710);
    v37 = 1;
    sub_22C36D0A8(v22, 1, v33);
    if (!v38)
    {
      sub_22C892304(v22);
      v0(v2);
      sub_22C8922E8();
      v37 = 0;
    }

    v39 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    sub_22C36C640(v7, v37, 1, v39);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v26 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v26 >= v25)
      {
        v40 = sub_22C6AEF30();
        v33 = v46;
        sub_22C89255C(v40, v41, v42);
        goto LABEL_9;
      }

      ++v1;
      if (*(v0 + v26))
      {
        v43 = v22;
        v44 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C89143C()
{
  sub_22C36BA7C();
  v56 = v3;
  v57 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  sub_22C36985C(v57);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C386E84();
  v52 = sub_22C908C5C();
  v7 = sub_22C369824(v52);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v13 = v12;
  v14 = sub_22C9069BC();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v21 = v20;
  v22 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v23 = sub_22C369914(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  v53 = v27;
  v54 = v0;
  v28 = v0[1];
  v29 = v0[3];
  v48 = v2;
  v55 = v0[2];
  if (v0[4])
  {
    v51 = v1;
LABEL_8:
    sub_22C371C3C();
    v50 = v32;
    v35 = v34 | (v33 << 6);
    v37 = v36;
    (*(v17 + 16))(v21, *(v36 + 48) + *(v17 + 72) * v35, v14);
    (*(v9 + 16))(v13, *(v37 + 56) + *(v9 + 72) * v35, v52);
    v49 = *(v57 + 48);
    v38 = v14;
    v39 = v50;
    (*(v17 + 32))(v53, v21, v38);
    v40 = v53;
    (*(v9 + 32))(v53 + v49, v13, v52);
    v30 = v57;
    v41 = 0;
    v1 = v51;
LABEL_9:
    v42 = 1;
    v43 = v30;
    sub_22C36C640(v40, v41, 1, v30);
    *v54 = v37;
    v54[1] = v28;
    v54[2] = v55;
    v54[3] = v29;
    v54[4] = v39;
    v44 = v54[5];
    v45 = v54[6];
    sub_22C5E71BC(v40, v1, &qword_27D9BF108, &unk_22C921F70);
    sub_22C36D0A8(v1, 1, v43);
    if (!v46)
    {
      sub_22C5E71BC(v1, v48, &qword_27D9BF110, &unk_22C922580);
      v44(v48);
      sub_22C36DD28(v48, &qword_27D9BF110, &unk_22C922580);
      v42 = 0;
    }

    v47 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    sub_22C36C640(v56, v42, 1, v47);
    sub_22C36CC48();
  }

  else
  {
    v30 = v57;
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= ((v0[2] + 64) >> 6))
      {
        v39 = 0;
        v41 = 1;
        v40 = v53;
        v37 = *v0;
        goto LABEL_9;
      }

      ++v29;
      if (*(v28 + 8 * v31))
      {
        v51 = v1;
        v29 = v31;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C8917D4()
{
  sub_22C36BA7C();
  v7 = v6;
  v41 = sub_22C3A5908(&qword_27D9BF790, &qword_22C923048);
  sub_22C36985C(v41);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C386E84();
  v11 = sub_22C902D4C();
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C50B438();
  v15 = sub_22C3A5908(&qword_27D9C0E60, &unk_22C92B500);
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C37EE60();
  if (v20)
  {
    v40 = v7;
LABEL_8:
    sub_22C371C3C();
    v25 = sub_22C381C48(v24);
    v26(v25);
    v27 = sub_22C8921B0();
    v28(v27);
    sub_22C36BECC();
    sub_22C36C640(v29, v30, v31, v5);

    v7 = v40;
LABEL_9:
    sub_22C89226C();
    sub_22C5E71BC(v4, v1, &qword_27D9C0E60, &unk_22C92B500);
    v32 = sub_22C37E21C();
    sub_22C36D0A8(v32, v33, v5);
    if (!v34)
    {
      sub_22C892304(v1);
      v35 = sub_22C38023C();
      v0(v35);
      sub_22C8922E8();
      v3 = 0;
    }

    v36 = sub_22C3A5908(&qword_27D9BF798, &unk_22C923050);
    sub_22C36C640(v7, v3, 1, v36);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v22 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        sub_22C36A748();
        v5 = v41;
        sub_22C89255C(v37, v38, v39);
        goto LABEL_9;
      }

      sub_22C8924C8(v22);
      if (v23)
      {
        v40 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C891A14()
{
  sub_22C36BA7C();
  v7 = v6;
  v42 = sub_22C3A5908(&qword_27D9C0E30, &qword_22C92B4C8);
  sub_22C36985C(v42);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22C36CD40();
  v12 = type metadata accessor for DialogValue(v11);
  v13 = sub_22C3699B8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C377D60();
  v16 = sub_22C3A5908(&qword_27D9C0E38, &unk_22C92B4D0);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v20);
  sub_22C8921D4();
  if (v21)
  {
    v41 = v7;
LABEL_8:
    sub_22C371C3C();
    v25 = sub_22C8923BC(v24);
    sub_22C891FEC(v25, v5);
    sub_22C37E8F8();
    v26 = sub_22C38A14C();
    sub_22C36C640(v26, v27, v28, v2);

    v7 = v41;
LABEL_9:
    sub_22C892254();
    v29 = sub_22C3806B8();
    sub_22C5E71BC(v29, v30, v31, v32);
    v33 = sub_22C892460();
    sub_22C36D0A8(v33, v34, v2);
    if (!v35)
    {
      sub_22C892304(v3);
      v36 = sub_22C38023C();
      v0(v36);
      sub_22C8922E8();
      v4 = 0;
    }

    v37 = sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
    sub_22C36C640(v7, v4, 1, v37);
    sub_22C36CC48();
  }

  else
  {
    sub_22C8923B0();
    while (1)
    {
      v23 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v38 = sub_22C6AEF30();
        v2 = v42;
        sub_22C36C640(v38, v39, v40, v42);
        goto LABEL_9;
      }

      ++v1;
      if (*(v0 + v23))
      {
        v41 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22C891C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C3806F4();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *v26;
  v32 = v26[1];
  v33 = v26[2];
  v34 = v26[3];
  if (v26[4])
  {
    v35 = v26[3];
LABEL_7:
    sub_22C892120();
    v39 = v38 & v37;
    v42 = v41 | (v40 << 6);
    v43 = (*(v31 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    sub_22C36F998(*(v31 + 56) + 32 * v42, &a9);
    *&a12 = v45;
    *(&a12 + 1) = v44;
    sub_22C456E34(&a9, &a13);

    v46 = *(&a12 + 1);
    v47 = a12;
LABEL_8:
    *v26 = v31;
    v26[1] = v32;
    v26[2] = v33;
    v26[3] = v34;
    v26[4] = v39;
    if (v46)
    {
      v49 = v26[5];
      v48 = v26[6];
      *&a9 = v47;
      *(&a9 + 1) = v46;
      a10 = a13;
      a11 = a14;
      v49(&a9);
      sub_22C36DD28(&a9, &qword_27D9C0E20, &qword_22C92B4B8);
    }

    else
    {
      v30[1] = 0u;
      v30[2] = 0u;
      *v30 = 0u;
    }

    sub_22C5E78F0();
  }

  else
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= ((v33 + 64) >> 6))
      {
        v46 = 0;
        v47 = 0;
        v39 = 0;
        a13 = 0u;
        a14 = 0u;
        a12 = 0u;
        goto LABEL_8;
      }

      ++v34;
      if (*(v32 + 8 * v36))
      {
        v34 = v36;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C891D88(uint64_t a1)
{
  v2 = type metadata accessor for DialogValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C891DE4()
{
  result = qword_27D9BCFF0;
  if (!qword_27D9BCFF0)
  {
    sub_22C3AC1A0(&qword_27D9BCFE8, &qword_22C917388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCFF0);
  }

  return result;
}

uint64_t sub_22C891E48(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FallbackDialogGenerationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C891F44()
{
  result = qword_27D9C0EA8;
  if (!qword_27D9C0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0EA8);
  }

  return result;
}

unint64_t sub_22C891F98()
{
  result = qword_27D9C0EB0;
  if (!qword_27D9C0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0EB0);
  }

  return result;
}

uint64_t sub_22C891FEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C892044(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

void sub_22C8920BC(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 - 88) = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v2 + 24) > v3)
  {
    v5 = *(*v2 + 24);
  }
}

uint64_t sub_22C8920E8()
{
  v2 = *(v0 + 56);
  v3 = *(v1 - 144);
  v4 = *(v3 + 72);
  v5 = *(v3 + 16);
  result = *(v1 - 104);
  v7 = *(v1 - 96);
  v8 = *(v1 - 176);
  return result;
}

void sub_22C892144()
{
  ++*(v0 + 16);
  v2 = *(v1 - 160);
  v3 = *(v1 - 152);
}

void sub_22C892168()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

char *sub_22C8921B0()
{
  v5 = *(*(v4 - 104) + 48);
  *v1 = v0;
  v1[1] = v2;
  v6 = *(v3 + 32);
  return v1 + v5;
}

void sub_22C8921D4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
}

void sub_22C892254()
{
  *v2 = v4;
  v2[1] = v1;
  v2[2] = *(v5 - 88);
  v2[3] = v3;
  v2[4] = v0;
  v6 = v2[5];
  v7 = v2[6];
}

void sub_22C89226C()
{
  *v2 = v1;
  v2[1] = v3;
  v6 = *(v5 - 88);
  v2[2] = *(v5 - 96);
  v2[3] = v4;
  v2[4] = v0;
  v7 = v2[5];
  v8 = v2[6];
}

uint64_t sub_22C892284()
{
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[32];
  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[15];
  v24 = v0[13];
}

uint64_t sub_22C8922E8()
{

  return sub_22C36DD28(v0, v1, v2);
}

uint64_t sub_22C892304(uint64_t a1)
{

  return sub_22C5E71BC(a1, v1, v2, v3);
}

uint64_t sub_22C892348()
{

  return sub_22C90B1DC();
}

uint64_t sub_22C892394()
{
  *(v1 - 116) = v0;

  return sub_22C90B1DC();
}

uint64_t sub_22C8923BC@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 112) = v1;
  v6 = v2 | (a1 << 6);
  v7 = (*(v4 + 48) + 16 * v6);
  v8 = *v7;
  v9 = v7[1];
  return *(v4 + 56) + *(v3 + 72) * v6;
}

void sub_22C892400()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
}

uint64_t sub_22C89241C(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_22C892488()
{

  return sub_22C909F7C();
}

uint64_t sub_22C8924A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
}

void sub_22C8924D4()
{
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v0;
  v6 = v1[5];
  v7 = v1[6];
}

void sub_22C892530(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t sub_22C892544()
{
  v2 = *(v0 + 40);

  return sub_22C90B62C();
}

uint64_t sub_22C892588(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v5 = sub_22C9021BC();
  v3[13] = v5;
  sub_22C3699B8(v5);
  v3[14] = v6;
  v8 = *(v7 + 64);
  v3[15] = sub_22C382A94();
  v3[16] = swift_task_alloc();
  v9 = sub_22C90687C();
  v3[17] = v9;
  sub_22C3699B8(v9);
  v3[18] = v10;
  v12 = *(v11 + 64);
  v3[19] = sub_22C382A94();
  v3[20] = swift_task_alloc();
  v13 = sub_22C90077C();
  v3[21] = v13;
  sub_22C3699B8(v13);
  v3[22] = v14;
  v16 = *(v15 + 64);
  v3[23] = sub_22C382A94();
  v3[24] = swift_task_alloc();
  v17 = sub_22C90234C();
  v3[25] = v17;
  sub_22C3699B8(v17);
  v3[26] = v18;
  v20 = *(v19 + 64);
  v3[27] = sub_22C382A94();
  v3[28] = swift_task_alloc();
  v21 = swift_task_alloc();
  v3[29] = v21;
  *v21 = v3;
  v21[1] = sub_22C89278C;

  return sub_22C893544(a2);
}

uint64_t sub_22C89278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v13 = v12;
  v14 = *v11;
  sub_22C369A30();
  *v15 = v14;
  v17 = *(v16 + 232);
  v18 = *v11;
  sub_22C369A30();
  *v19 = v18;

  if (v10)
  {
    v21 = *(v14 + 216);
    v20 = *(v14 + 224);
    v23 = *(v14 + 184);
    v22 = *(v14 + 192);
    v25 = *(v14 + 152);
    v24 = *(v14 + 160);
    v28 = v14 + 120;
    v26 = *(v14 + 120);
    v27 = *(v28 + 8);

    sub_22C369A24();
    sub_22C372E90();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }

  else
  {
    *(v14 + 288) = v13;
    sub_22C372E90();

    return MEMORY[0x2822009F8](v38, v39, v40);
  }
}

uint64_t sub_22C89290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  switch(*(v10 + 288))
  {
    case 1:
      v55 = *(v10 + 80);
      v54 = type metadata accessor for DialogOutput();
      v52 = v55;
      v53 = 1;
      goto LABEL_9;
    case 2:
      v26 = *(v10 + 184);
      v27 = *(v10 + 152);
      v28 = *(v10 + 120);
      v29 = *(v10 + 88);
      v30 = sub_22C374168(*(v10 + 96), *(*(v10 + 96) + 24));
      *(v10 + 264) = sub_22C909F0C();
      sub_22C907FFC();
      sub_22C907FDC();
      sub_22C907FEC();
      v31 = *v30;
      v32 = swift_task_alloc();
      *(v10 + 272) = v32;
      *v32 = v10;
      v32[1] = sub_22C8930F8;
      v33 = *(v10 + 216);
      v34 = *(v10 + 184);
      v35 = *(v10 + 152);
      v36 = *(v10 + 120);
      goto LABEL_4;
    case 3:
      v46 = *(v10 + 80);
      v47 = *MEMORY[0x277D1C9E8];
      v48 = sub_22C90240C();
      sub_22C36985C(v48);
      v50 = *(v49 + 104);
      v50(v46, v47, v48);
      v51 = type metadata accessor for DialogOutput();
      v50(v46 + *(v51 + 20), v47, v48);
      v52 = v46;
      v53 = 0;
      v54 = v51;
LABEL_9:
      sub_22C36C640(v52, v53, 1, v54);
      sub_22C378970();

      sub_22C369A24();
      sub_22C372E90();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10);
    default:
      v11 = *(v10 + 192);
      v12 = *(v10 + 160);
      v13 = *(v10 + 128);
      v14 = *(v10 + 88);
      v15 = *(v10 + 96);
      sub_22C3A5908(&qword_27D9BAB38, &qword_22C92C1F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = 0x7954656369766564;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = static MobileGestalt.answerProductKey.getter();
      *(inited + 56) = v17;
      v18 = sub_22C909F0C();
      v19 = sub_22C374168(v15, v15[3]);
      *(v10 + 240) = sub_22C8A598C(v18);

      sub_22C907FFC();
      sub_22C907FDC();
      sub_22C907FEC();
      v20 = *v19;
      v21 = swift_task_alloc();
      *(v10 + 248) = v21;
      *v21 = v10;
      v21[1] = sub_22C892CAC;
      v22 = *(v10 + 224);
      v23 = *(v10 + 192);
      v24 = *(v10 + 160);
      v25 = *(v10 + 128);
LABEL_4:
      sub_22C372E90();

      return sub_22C87CD94(v37, v38, v39, v40, v41, v42, v43);
  }
}

uint64_t sub_22C892CAC()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v6 = v5[31];
  v7 = v5[30];
  v29 = v5[24];
  sub_22C807C64();
  v9 = *(v8 + 176);
  v28 = *(v10 + 168);
  sub_22C807C64();
  v27 = *(v11 + 160);
  sub_22C807C64();
  v13 = *(v12 + 144);
  v15 = v14[17];
  v16 = v14[16];
  v17 = v14[14];
  v18 = v14[13];
  v19 = *v1;
  sub_22C369A30();
  *v20 = v19;
  *(v21 + 256) = v0;

  v22 = *(v17 + 8);
  v23 = sub_22C36CC9C();
  v24(v23);
  (*(v13 + 8))(v27, v15);
  (*(v9 + 8))(v29, v28);
  if (v0)
  {
    v25 = sub_22C893060;
  }

  else
  {
    v25 = sub_22C892EEC;
  }

  return MEMORY[0x2822009F8](v25, 0, 0);
}

uint64_t sub_22C892EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v11 = v10[28];
  v12 = v10[25];
  v13 = v10[26];
  v14 = v10[10];
  v15 = sub_22C9022FC();
  v17 = v16;
  v18 = sub_22C90231C();
  v20 = v19;
  v21 = *(v13 + 8);
  v22 = sub_22C36BBCC();
  v23(v22);
  *v14 = v15;
  v14[1] = v17;
  v24 = *MEMORY[0x277D1C9D8];
  v25 = sub_22C90240C();
  sub_22C36985C(v25);
  v27 = *(v26 + 104);
  sub_22C37A060();
  v27();
  v28 = v10[10];
  v29 = type metadata accessor for DialogOutput();
  if (v20)
  {
    v30 = sub_22C373CB0(v29);
    *v30 = v18;
    v30[1] = v20;
    v28 = v10[10];
  }

  else
  {
    sub_22C373CB0(v29);
    v31 = *MEMORY[0x277D1C9F0];
  }

  sub_22C37A060();
  v27();
  type metadata accessor for DialogOutput();
  sub_22C36C640(v28, 0, 1, v15);
  sub_22C378970();

  sub_22C369A24();
  sub_22C372E90();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_22C893060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v11 = *(v10 + 256);
  sub_22C376B1C();

  sub_22C369A24();
  sub_22C372E90();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_22C8930F8()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v6 = v5[34];
  v7 = v5[33];
  v29 = v5[23];
  sub_22C807C64();
  v9 = *(v8 + 176);
  v28 = *(v10 + 168);
  sub_22C807C64();
  v27 = *(v11 + 152);
  sub_22C807C64();
  v13 = *(v12 + 144);
  v15 = v14[17];
  v16 = v14[15];
  v17 = v14[14];
  v18 = v14[13];
  v19 = *v1;
  sub_22C369A30();
  *v20 = v19;
  *(v21 + 280) = v0;

  v22 = *(v17 + 8);
  v23 = sub_22C36CC9C();
  v24(v23);
  (*(v13 + 8))(v27, v15);
  (*(v9 + 8))(v29, v28);
  if (v0)
  {
    v25 = sub_22C8934AC;
  }

  else
  {
    v25 = sub_22C893338;
  }

  return MEMORY[0x2822009F8](v25, 0, 0);
}

uint64_t sub_22C893338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v12 = v10[26];
  v11 = v10[27];
  v13 = v10[25];
  v14 = v10[10];
  v15 = sub_22C9022FC();
  v17 = v16;
  v18 = sub_22C90231C();
  v20 = v19;
  v21 = *(v12 + 8);
  v22 = sub_22C36BBCC();
  v23(v22);
  *v14 = v15;
  v14[1] = v17;
  v24 = *MEMORY[0x277D1C9D8];
  v25 = sub_22C90240C();
  sub_22C36985C(v25);
  v27 = *(v26 + 104);
  sub_22C37A060();
  v27();
  v28 = v10[10];
  v29 = type metadata accessor for DialogOutput();
  if (v20)
  {
    v30 = sub_22C373CB0(v29);
    *v30 = v18;
    v30[1] = v20;
    v28 = v10[10];
  }

  else
  {
    sub_22C373CB0(v29);
    v31 = *MEMORY[0x277D1C9F0];
  }

  sub_22C37A060();
  v27();
  type metadata accessor for DialogOutput();
  sub_22C36C640(v28, 0, 1, v15);
  sub_22C378970();

  sub_22C369A24();
  sub_22C372E90();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_22C8934AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370AE4();
  sub_22C3743E4();
  v11 = *(v10 + 280);
  sub_22C376B1C();

  sub_22C369A24();
  sub_22C372E90();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_22C893544(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_22C90806C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_22C908FCC();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = sub_22C908EAC();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = sub_22C90687C();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v14 = sub_22C90977C();
  v1[19] = v14;
  v15 = *(v14 - 8);
  v1[20] = v15;
  v16 = *(v15 + 64) + 15;
  v1[21] = swift_task_alloc();
  v17 = sub_22C9063DC();
  v1[22] = v17;
  v18 = *(v17 - 8);
  v1[23] = v18;
  v19 = *(v18 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v20 = sub_22C908D6C();
  v1[29] = v20;
  v21 = *(v20 - 8);
  v1[30] = v21;
  v22 = *(v21 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v23 = *(*(sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v24 = sub_22C9026BC();
  v1[36] = v24;
  v25 = *(v24 - 8);
  v1[37] = v25;
  v26 = *(v25 + 64) + 15;
  v1[38] = swift_task_alloc();
  v27 = sub_22C907DEC();
  v1[39] = v27;
  v28 = *(v27 - 8);
  v1[40] = v28;
  v29 = *(v28 + 64) + 15;
  v1[41] = swift_task_alloc();
  v30 = sub_22C906ECC();
  v1[42] = v30;
  v31 = *(v30 - 8);
  v1[43] = v31;
  v32 = *(v31 + 64) + 15;
  v1[44] = swift_task_alloc();
  v33 = sub_22C9020CC();
  v1[45] = v33;
  v34 = *(v33 - 8);
  v1[46] = v34;
  v35 = *(v34 + 64) + 15;
  v1[47] = swift_task_alloc();
  v36 = sub_22C907C5C();
  v1[48] = v36;
  v37 = *(v36 - 8);
  v1[49] = v37;
  v38 = *(v37 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C893AA8, 0, 0);
}

uint64_t sub_22C893AA8()
{
  v412 = v0;
  v1 = v0[4];
  result = sub_22C90804C();
  v398 = *(result + 16);
  if (!v398)
  {
LABEL_35:

LABEL_36:
    v122 = 1;
    goto LABEL_37;
  }

  v4 = 0;
  v5 = v0[49];
  v375 = (v0 + 2);
  v6 = v0[46];
  v7 = v0[37];
  v8 = v0[16];
  v9 = v0[6];
  v394 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v391 = v0[43] + 8;
  v389 = (v0[40] + 8);
  v387 = (v7 + 88);
  v385 = *MEMORY[0x277D1CBF0];
  v396 = v5;
  v10 = (v5 + 8);
  v377 = (v7 + 96);
  v378 = (v7 + 8);
  v376 = (v6 + 32);
  v379 = (v0[13] + 8);
  v404 = *MEMORY[0x277D72138];
  v409 = v0[30];
  v322 = (v0[20] + 8);
  v11 = (v6 + 8);
  v369 = v8 + 88;
  HIDWORD(v366) = *MEMORY[0x277D1DC20];
  LODWORD(v366) = *MEMORY[0x277D1DC30];
  HIDWORD(v363) = *MEMORY[0x277D1DC28];
  v357 = (v9 + 8);
  v360 = (v9 + 16);
  v372 = (v0[23] + 8);
  v354 = (v8 + 8);
  *&v3 = 136315138;
  v308 = v3;
  LODWORD(v363) = *MEMORY[0x277D1DC18];
  v327 = v6 + 8;
  v333 = (v5 + 8);
  v384 = result;
  while (1)
  {
    if (v4 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v12 = v0[44];
    v14 = v0[41];
    v13 = v0[42];
    v16 = v0[38];
    v15 = v0[39];
    v17 = v0[36];
    v400 = v4;
    (*(v396 + 16))(v0[51], v394 + *(v396 + 72) * v4, v0[48]);
    sub_22C907C0C();
    sub_22C906EBC();
    v18 = sub_22C89491C();
    v19(v18);
    sub_22C907DAC();
    (*v389)(v14, v15);
    if ((*v387)(v16, v17) == v385)
    {
      break;
    }

    v29 = v0[38];
    v30 = v0[36];
    (*v10)(v0[51], v0[48]);
    v31 = *v378;
    v32 = sub_22C36BBCC();
LABEL_31:
    v34(v32, v33);
LABEL_32:
    result = v384;
    v4 = v400 + 1;
    if (v400 + 1 == v398)
    {
      goto LABEL_35;
    }
  }

  v20 = v0[50];
  v21 = v0[47];
  v22 = v0[45];
  v23 = v0[38];
  v24 = v0[35];
  v25 = v0[12];
  v26 = v0[4];
  (*v377)(v23, v0[36]);
  (*v376)(v21, v23, v22);
  sub_22C90803C();
  sub_22C907C3C();
  if (sub_22C370B74(v24, 1, v25) != 1)
  {
    v35 = v0[35];
    v36 = v0[12];
    v37 = sub_22C908DEC();
    v38 = sub_22C89491C();
    v39(v38);
    v40 = 0;
    v41 = *(v37 + 16);
    do
    {
      v42 = v40;
      if (v41 == v40)
      {
        break;
      }

      if (v40 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v44 = v0[31];
      v43 = v0[32];
      v45 = v0[29];
      (*(v409 + 16))(v43, v37 + ((*(v409 + 80) + 32) & ~*(v409 + 80)) + *(v409 + 72) * v40++, v45);
      (*(v409 + 104))(v44, v404, v45);
      v24 = sub_22C908D5C();
      v46 = *(v409 + 8);
      v46(v44, v45);
      v46(v43, v45);
    }

    while ((v24 & 1) == 0);
    v10 = v333;
    v28 = *v333;
    (*v333)(v0[50], v0[48]);

    if (v41 == v42)
    {
      v11 = v327;
      goto LABEL_14;
    }

    v351 = v28;
    v159 = v0[28];

    sub_22C90405C();
    v160 = sub_22C9063CC();
    v161 = sub_22C90AACC();
    sub_22C36DB24(v161);
    sub_22C3751FC();
    v162 = v0[28];
    v163 = v0[22];
    if (v164)
    {
      *sub_22C36D240() = 0;
      sub_22C371F58(&dword_22C366000, v165, v166, "Audio starting, suppressing dialog.");
      sub_22C3800A8();
    }

    v175 = sub_22C36B868(v167, v168, v169, v170, v171, v172, v173, v174, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v351, v354, v357, v360, v363, v366, v369, v372);
    v176(v175);
    v177 = *v328;
    v178 = sub_22C36D264();
    v179(v178);
    goto LABEL_53;
  }

  v27 = v0[35];
  v28 = *v10;
  (*v10)(v0[50], v0[48]);
  sub_22C89485C(v27);
LABEL_14:
  v47 = v0[51];
  v48 = v0[34];
  v49 = v0[12];
  sub_22C907C3C();
  if (sub_22C370B74(v48, 1, v49) == 1)
  {
    sub_22C89485C(v0[34]);
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v52 = v0[21];
    v53 = v0[19];
    v54 = v0[12];
    v55 = sub_22C908DDC();
    sub_22C38936C(v55, v56, v57, v58, v59, v60, v61, v62, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v348, v354, v357, v360, v363, v366, v369, v372, v375, v376, v377, v378, v379);
    v63 = sub_22C36BBCC();
    v64(v63);
    v50 = sub_22C9096FC();
    v51 = v65;
    (*v322)(v52, v53);
  }

  v0[2] = v50;
  v0[3] = v51;
  v66 = swift_task_alloc();
  *(v66 + 16) = v375;
  v67 = sub_22C5EC08C(sub_22C3AC11C, v66, &unk_283FB05B0);

  if (!v67)
  {
    v68 = v0[47];
    if ((sub_22C9020BC() & 1) == 0)
    {
      v119 = v0[51];
      v120 = v0[48];
      (*v11)(v0[47], v0[45]);
      v121 = sub_22C36BBCC();
      v28(v121);
      goto LABEL_32;
    }
  }

  v69 = v0[18];
  v70 = v0[15];
  v71 = v0[4];
  sub_22C907FDC();
  v72 = sub_22C89491C();
  v74 = v73(v72);
  if (v74 != HIDWORD(v366) && v74 != v366)
  {
    if (v74 != HIDWORD(v363) && v74 != v363)
    {
      v77 = v0[24];
      v78 = v0[7];
      v80 = v0[4];
      v79 = v0[5];
      sub_22C90405C();
      (*v360)(v78, v80, v79);
      v81 = sub_22C9063CC();
      v82 = sub_22C90AAEC();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v0[51];
      v85 = v0[48];
      v382 = v0[45];
      v383 = v0[47];
      v86 = v0[22];
      v380 = v86;
      v381 = v0[24];
      if (v83)
      {
        v345 = v0[51];
        v349 = v28;
        v87 = v0[17];
        v88 = v0[15];
        v89 = v0[7];
        v337 = v0[5];
        v90 = swift_slowAlloc();
        v341 = v85;
        v91 = swift_slowAlloc();
        v411 = v91;
        *v90 = v308;
        sub_22C907FDC();
        v92 = sub_22C90A1AC();
        v94 = v93;
        (*v357)(v89, v337);
        v95 = sub_22C36F9F4(v92, v94, &v411);

        *(v90 + 4) = v95;
        _os_log_impl(&dword_22C366000, v81, v82, "Unknown response mode %s", v90, 0xCu);
        sub_22C36FF94(v91);
        MEMORY[0x2318B9880](v91, -1, -1);
        MEMORY[0x2318B9880](v90, -1, -1);

        sub_22C36A57C(v96, v97, v98, v99, v100, v101, v102, v103, v308, *(&v308 + 1), v317, v322, v327, v333, v337, v341, v345, v349, v354, v357, v360, v363, v366, v369, v372);
        v104(v381, v380);
        (*v11)(v383, v382);
        v348(v344, v340);
      }

      else
      {
        v105 = v0[7];
        v106 = v0[5];

        v107 = *v357;
        v108 = sub_22C36BBCC();
        v110 = v109(v108);
        sub_22C36A57C(v110, v111, v112, v113, v114, v115, v116, v117, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v348, v354, v357, v360, v363, v366, v369, v372);
        v118(v381, v380);
        (*v11)(v383, v382);
        (v28)(v84, v85);
      }

      v32 = v0[18];
      v33 = v0[15];
      v34 = *v354;
      goto LABEL_31;
    }

    v350 = v28;
    v137 = v0[27];

    sub_22C90405C();
    v138 = sub_22C9063CC();
    v139 = sub_22C90AACC();
    sub_22C36DB24(v139);
    sub_22C3751FC();
    v140 = v0[27];
    v141 = v0[22];
    if (v142)
    {
      v143 = sub_22C36D240();
      sub_22C37F644(v143);
      sub_22C371F58(&dword_22C366000, v144, v145, "Display only/forward in-app response, suppressing dialog.");
      sub_22C3800A8();

      v154 = sub_22C36B868(v146, v147, v148, v149, v150, v151, v152, v153, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v350, v354, v357, v360, v363, v366, v369, v372);
      v155(v154);
      v156 = *v137;
    }

    else
    {

      v239 = sub_22C36B868(v231, v232, v233, v234, v235, v236, v237, v238, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v350, v354, v357, v360, v363, v366, v369, v372);
      v240(v239);
      v241 = *v11;
    }

    v157 = sub_22C36D264();
    v158(v157);
LABEL_53:
    sub_22C37A4B4();
    v242();
    v122 = 3;
    goto LABEL_37;
  }

  v348 = v28;
  v134 = v0[51];
  v135 = v0[33];
  v136 = v0[12];

  sub_22C907C3C();
  if (sub_22C370B74(v135, 1, v136) == 1)
  {
    sub_22C89485C(v0[33]);
    goto LABEL_55;
  }

  v180 = v0[11];
  v182 = v0[9];
  v181 = v0[10];
  v183 = v0[8];
  (*(v0[13] + 32))(v0[14], v0[33], v0[12]);
  sub_22C908E9C();
  sub_22C908FAC();
  sub_22C8948C4();
  v184 = sub_22C90AE0C();
  v185 = *(v182 + 8);
  v186 = sub_22C36D264();
  v185(v186);
  (v185)(v180, v183);
  if ((v184 & 1) == 0)
  {
    sub_22C38936C(v0[14], v0[12], v187, v188, v189, v190, v191, v192, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v28, v354, v357, v360, v363, v366, v369, v372, v375, v376, v377, v378, v379);
    v243();
LABEL_55:
    v244 = v0[25];
    sub_22C90405C();
    v245 = sub_22C9063CC();
    v246 = sub_22C90AACC();
    sub_22C36DB24(v246);
    sub_22C3751FC();
    v247 = v0[25];
    v248 = v0[22];
    if (v249)
    {
      v250 = sub_22C36D240();
      sub_22C37F644(v250);
      sub_22C371F58(&dword_22C366000, v251, v252, "Voice only/forward in-app response, generate response.");
      sub_22C3800A8();

      v261 = sub_22C36B868(v253, v254, v255, v256, v257, v258, v259, v260, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v348, v354, v357, v360, v363, v366, v369, v372);
      v262(v261);
      v263 = *v244;
    }

    else
    {

      v274 = sub_22C36B868(v266, v267, v268, v269, v270, v271, v272, v273, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v348, v354, v357, v360, v363, v366, v369, v372);
      v275(v274);
      v276 = *v11;
    }

    v264 = sub_22C36D264();
    v265(v264);
    sub_22C37A4B4();
    v277();
    goto LABEL_36;
  }

  v193 = v0[26];
  sub_22C90405C();
  v24 = sub_22C9063CC();
  v194 = sub_22C90AACC();
  v195 = os_log_type_enabled(v24, v194);
  v196 = v0[47];
  v408 = v0[48];
  v197 = v0[45];
  v198 = v0[26];
  v199 = v0[22];
  v37 = v0[14];
  v41 = v0[12];
  if (v195)
  {
    v410 = 2;
    v406 = v0[51];
    v200 = sub_22C36D240();
    *v200 = 0;
    _os_log_impl(&dword_22C366000, v24, v194, "Voice only/forward in-app response, inform user the tool executed successfully.", v200, 2u);
    MEMORY[0x2318B9880](v200, -1, -1);

    sub_22C36A57C(v201, v202, v203, v204, v205, v206, v207, v208, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v348, v354, v357, v360, v363, v366, v369, v372);
    v209 = sub_22C36CC9C();
    v211 = v210(v209);
    sub_22C38936C(v211, v212, v213, v214, v215, v216, v217, v218, v309, v313, v318, v323, v329, v334, v338, v342, v346, v352, v355, v358, v361, v364, v367, v370, v373, v375, v376, v377, v378, v379);
    v220 = v219(v37, v41);
    v228 = sub_22C37779C(v220, v221, v222, v223, v224, v225, v226, v227, v310, v314, v319, v324, v330);
    v229(v228);
    sub_22C37A4B4();
    v230();
    goto LABEL_38;
  }

LABEL_60:

  sub_22C36A57C(v278, v279, v280, v281, v282, v283, v284, v285, v308, *(&v308 + 1), v317, v322, v327, v333, v336, v340, v344, v348, v354, v357, v360, v363, v366, v369, v372);
  v286 = sub_22C36CC9C();
  v288 = v287(v286);
  sub_22C38936C(v288, v289, v290, v291, v292, v293, v294, v295, v311, v315, v320, v325, v331, v335, v339, v343, v347, v353, v356, v359, v362, v365, v368, v371, v374, v375, v376, v377, v378, v379);
  v297 = v296(v37, v41);
  v305 = sub_22C37779C(v297, v298, v299, v300, v301, v302, v303, v304, v312, v316, v321, v326, v332);
  v306(v305);
  sub_22C37A4B4();
  v307();
  v122 = 2;
LABEL_37:
  v410 = v122;
LABEL_38:
  v124 = v0[50];
  v123 = v0[51];
  v125 = v0[47];
  v126 = v0[44];
  v127 = v0[41];
  v128 = v0[38];
  v129 = v0[34];
  v130 = v0[35];
  v132 = v0[32];
  v131 = v0[33];
  v386 = v0[31];
  v388 = v0[28];
  v390 = v0[27];
  v392 = v0[26];
  v393 = v0[25];
  v395 = v0[24];
  v397 = v0[21];
  v399 = v0[18];
  v401 = v0[17];
  v402 = v0[14];
  v403 = v0[11];
  v405 = v0[10];
  v407 = v0[7];

  v133 = v0[1];

  return v133(v410);
}

uint64_t sub_22C89485C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C8948C4()
{
  result = qword_27D9BF1B8;
  if (!qword_27D9BF1B8)
  {
    sub_22C908FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF1B8);
  }

  return result;
}

uint64_t sub_22C894968()
{
  sub_22C900F8C();
  sub_22C90806C();
  sub_22C894B48(&qword_27D9C0F10, MEMORY[0x277D1E2D8]);
  return sub_22C900F5C();
}

uint64_t ResponseGenerationFeatureStoreService.insert(interactionId:input:)()
{
  sub_22C373CC0();
  sub_22C90806C();
  sub_22C894B48(&qword_27D9C0F10, MEMORY[0x277D1E2D8]);
  sub_22C36B87C();
  return sub_22C900F5C();
}

uint64_t FeatureStoreServiceWrapper.insert(interactionId:triageReport:)()
{
  sub_22C373CC0();
  type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C894B48(&qword_27D9C0F18, type metadata accessor for ResponseGenerationTriageReport);
  sub_22C894B48(&qword_27D9C0F20, type metadata accessor for ResponseGenerationTriageReport);
  sub_22C36B87C();
  return sub_22C900F7C();
}

uint64_t sub_22C894B48(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FeatureStoreServiceWrapper(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C894CA8()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    result = sub_22C90077C();
    if (v2 <= 0x3F)
    {
      result = sub_22C9021BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C894D44()
{
  v0 = sub_22C90687C();
  sub_22C3F0160(v0, qword_27D9C0F28);
  v1 = sub_22C37AA60(v0, qword_27D9C0F28);
  v2 = *MEMORY[0x277D1DC28];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_22C894DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v417 = a1;
  v390 = a2;
  v372 = sub_22C90687C();
  v2 = sub_22C36985C(v372);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  sub_22C3698F8(v5);
  v6 = sub_22C9021BC();
  v7 = sub_22C36A7A4(v6, &v419);
  v385 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C3698F8(v11);
  v12 = sub_22C90077C();
  v13 = sub_22C36A7A4(v12, &v415);
  v382 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  sub_22C36D234(v17);
  v18 = sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C36D5B4();
  sub_22C36D234(v22);
  v23 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  v24 = sub_22C369914(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C3698F8(v28);
  v29 = sub_22C906B9C();
  v30 = sub_22C36A7A4(v29, &v392);
  v359 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v35 = sub_22C906B6C();
  v36 = sub_22C36A7A4(v35, &v395);
  v362 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v40);
  v41 = sub_22C90720C();
  v42 = sub_22C36A7A4(v41, &v435);
  v393 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  sub_22C3698F8(v46);
  v416 = sub_22C90873C();
  v47 = sub_22C369824(v416);
  v392 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  v415 = v51;
  sub_22C36BA0C();
  v421 = sub_22C906C4C();
  v52 = sub_22C369824(v421);
  v399 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  v420 = v56;
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  v424 = v58;
  v59 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v59);
  v61 = *(v60 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v62);
  sub_22C36D5B4();
  sub_22C3698F8(v63);
  v64 = sub_22C9025EC();
  v65 = sub_22C36A7A4(v64, &v399);
  v366 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C3698F8(v69);
  v70 = sub_22C901ECC();
  v71 = sub_22C36A7A4(v70, &v401);
  v364 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C3698A8();
  sub_22C3698F8(v75);
  v76 = sub_22C907DEC();
  v77 = sub_22C36A7A4(v76, &v410);
  v377 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22C3698A8();
  sub_22C36D234(v81);
  v82 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v82);
  v84 = *(v83 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v85);
  sub_22C36D5B4();
  sub_22C3698F8(v86);
  v87 = sub_22C9026BC();
  v88 = sub_22C36A7A4(v87, &v408);
  v375 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  v93 = &v349 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22C9029AC();
  v95 = sub_22C36A7A4(v94, &v402);
  v395 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C3698A8();
  sub_22C36D234(v99);
  v100 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v100);
  v102 = *(v101 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v103);
  sub_22C36D5B4();
  v418 = v104;
  sub_22C36BA0C();
  v419 = sub_22C906ECC();
  v105 = sub_22C369824(v419);
  v379 = v106;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v105);
  sub_22C3698A8();
  v428 = v109;
  sub_22C36BA0C();
  v110 = sub_22C9063DC();
  v111 = sub_22C369824(v110);
  v412 = v112;
  v413 = v111;
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v111);
  sub_22C3698E4();
  v411 = v115;
  MEMORY[0x28223BE20](v116);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v117);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v118);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v119);
  sub_22C36BA64();
  sub_22C3698F8(v120);
  v426 = sub_22C9089DC();
  v121 = sub_22C369824(v426);
  v403 = v122;
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v121);
  sub_22C3698E4();
  v429 = v125;
  MEMORY[0x28223BE20](v126);
  sub_22C36BA64();
  sub_22C3698F8(v127);
  v128 = sub_22C90819C();
  v129 = sub_22C36A7A4(v128, &v433);
  v401 = v130;
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v129);
  sub_22C3698A8();
  sub_22C36D234(v133);
  v134 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v134);
  v136 = *(v135 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v137);
  sub_22C36D5B4();
  v427 = v138;
  sub_22C36BA0C();
  v414 = sub_22C908A0C();
  v139 = sub_22C369824(v414);
  v430 = v140;
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v139);
  sub_22C3698A8();
  sub_22C3698F8(v143);
  v425 = sub_22C90634C();
  v144 = sub_22C369824(v425);
  v146 = v145;
  v148 = *(v147 + 64);
  v149 = MEMORY[0x28223BE20](v144);
  v151 = &v349 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v149);
  v153 = &v349 - v152;
  v423 = sub_22C90636C();
  v154 = sub_22C369824(v423);
  v156 = v155;
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v154);
  v160 = &v349 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  sub_22C90633C();
  v161 = sub_22C90635C();
  v162 = sub_22C90AB6C();
  v163 = sub_22C90AC5C();
  v373 = v93;
  if (v163)
  {
    v164 = sub_22C36D240();
    *v164 = 0;
    v165 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v161, v162, v165, "ResponseGeneration.responseGenerationInput", "", v164, 2u);
    sub_22C3699EC();
  }

  v166 = v425;
  (*(v146 + 16))(v151, v153, v425);
  v167 = sub_22C9063AC();
  v168 = *(v167 + 48);
  v169 = *(v167 + 52);
  swift_allocObject();
  v170 = sub_22C90639C();
  (*(v146 + 8))(v153, v166);
  (*(v156 + 8))(v160, v423);
  v171 = v427;
  sub_22C3A9540();
  v172 = v414;
  if (sub_22C370B74(v171, 1, v414) == 1)
  {
    sub_22C36DD28(v171, &qword_27D9BA808, &qword_22C90C6E0);
LABEL_18:
    v203 = v411;
    sub_22C90405C();
    v204 = sub_22C9063CC();
    v205 = sub_22C90AADC();
    if (sub_22C369E90(v205))
    {
      *sub_22C36D240() = 0;
      sub_22C38BFA4();
      _os_log_impl(v206, v207, v208, v209, v210, 2u);
      sub_22C3699EC();
    }

    (*(v412 + 8))(v203, v413);
    sub_22C899300();
    swift_allocError();
    *v211 = 4;
    swift_willThrow();
    goto LABEL_83;
  }

  v173 = v430;
  v174 = v408;
  (*(v430 + 32))(v408, v171, v172);
  v175 = v409;
  sub_22C9089EC();
  v176 = v403;
  v177 = v426;
  v422 = *(v403 + 88);
  v423 = v403 + 88;
  if (v422(v175, v426) != *MEMORY[0x277D1E838])
  {
    (*(v173 + 8))(v174, v172);
    (*(v176 + 8))(v175, v177);
    goto LABEL_18;
  }

  v354 = v170;
  v178 = *(v176 + 96);
  v411 = v176 + 96;
  v410 = v178;
  v178(v175, v177);
  v179 = v400;
  (*(v401 + 32))(v400, v175, v402);
  sub_22C3A8E40();
  v427 = v181;
  if (!v181)
  {
    v212 = v407;
    sub_22C90405C();
    v213 = sub_22C9063CC();
    v214 = sub_22C90AADC();
    if (sub_22C369E90(v214))
    {
      *sub_22C36D240() = 0;
      sub_22C38BFA4();
      _os_log_impl(v215, v216, v217, v218, v219, 2u);
      sub_22C3699EC();
    }

    (*(v412 + 8))(v212, v413);
    sub_22C899300();
    swift_allocError();
    *v220 = 1;
    swift_willThrow();
    sub_22C36FB04(&v432);
    v221(v179, v402);
    (*(v173 + 8))(v174, v172);
    goto LABEL_83;
  }

  v425 = v180;
  v182 = MEMORY[0x2318B5650]();
  sub_22C370208(&v430);
  sub_22C90405C();
  v183 = v172;
  v184 = sub_22C9063CC();
  v185 = sub_22C90AACC();
  v186 = os_log_type_enabled(v184, v185);
  v355 = v182;
  if (v186)
  {
    v352 = v185;
    v187 = swift_slowAlloc();
    v351 = swift_slowAlloc();
    v433 = v351;
    *v187 = 134218242;
    *(v187 + 4) = *(v182 + 16);
    v353 = v187;
    *(v187 + 12) = 2080;
    v188 = *(v182 + 16);
    v189 = MEMORY[0x277D84F90];
    v190 = v427;
    if (v188)
    {
      v350 = v184;
      v431 = MEMORY[0x277D84F90];

      sub_22C3B5E2C();
      v189 = v431;
      v407 = *(v379 + 16);
      v191 = v182 + ((*(v379 + 80) + 32) & ~*(v379 + 80));
      v406 = *(v379 + 72);
      v409 = v379 + 16;
      v192 = (v379 + 8);
      do
      {
        v193 = v419;
        v407(v428, v191, v419);
        v194 = v418;
        sub_22C906E9C();
        v195 = sub_22C90769C();
        sub_22C3724D4(v194);
        if (v278)
        {
          sub_22C36DD28(v194, &qword_27D9BF330, &unk_22C923250);
          v200 = 0xE100000000000000;
          v198 = 63;
        }

        else
        {
          v196 = sub_22C90768C();
          v197 = v194;
          v198 = v196;
          v200 = v199;
          (*(*(v195 - 8) + 8))(v197, v195);
        }

        (*v192)(v428, v193);
        v431 = v189;
        v201 = *(v189 + 16);
        if (v201 >= *(v189 + 24) >> 1)
        {
          sub_22C3B5E2C();
          v189 = v431;
        }

        *(v189 + 16) = v201 + 1;
        v202 = v189 + 16 * v201;
        *(v202 + 32) = v198;
        *(v202 + 40) = v200;
        v191 += v406;
        --v188;
        v190 = v427;
      }

      while (v188);
      v182 = v355;

      v176 = v403;
      v184 = v350;
    }

    MEMORY[0x2318B7AD0](v189, MEMORY[0x277D837D0]);

    v224 = sub_22C36BA00();
    v227 = sub_22C36F9F4(v224, v225, v226);

    v183 = v353;
    *(v353 + 14) = v227;
    _os_log_impl(&dword_22C366000, v184, v352, "%ld statement result(s) for %s", v183, 0x16u);
    sub_22C36FF94(v351);
    sub_22C3699EC();
    sub_22C3699EC();

    v228 = sub_22C899574();
    v229(v228);
  }

  else
  {

    v222 = sub_22C899574();
    v223(v222);
    v190 = v427;
  }

  v230 = v394;
  sub_22C37A078(&v423);
  sub_22C3A59D8(v182);
  v231 = v419;
  v232 = sub_22C370B74(v183, 1, v419);
  v233 = v395;
  if (v232 == 1)
  {
    sub_22C36DD28(v183, &qword_27D9BC0A0, &unk_22C922F30);
  }

  else
  {
    v234 = v374;
    sub_22C906EBC();
    sub_22C36FB04(&v411);
    v235(v183, v231);
    sub_22C370208(&v405);
    v236 = v234;
    sub_22C907DAC();
    sub_22C36FB04(&v409);
    v237(v234, v378);
    sub_22C37A078(&v407);
    v239 = v376;
    if ((*(v238 + 88))(v231, v376) == *MEMORY[0x277D1CBD0])
    {
      (*(v236 + 96))(v231, v239);
      v240 = v231;
      v241 = v370;
      (*(v233 + 32))(v230, v240, v370);
      v242 = v365;
      sub_22C90298C();
      v243 = v368;
      sub_22C9025BC();
      v244 = v243;
      sub_22C36FB04(&v398);
      v245(v242, v367);
      v246 = v243;
      v247 = v369;
      if (sub_22C370B74(v246, 1, v369) == 1)
      {
        (*(v233 + 8))(v230, v241);
        sub_22C36DD28(v244, &qword_27D9BF318, &qword_22C9225A0);
      }

      else
      {
        v248 = v364;
        v249 = v357;
        v250 = (*(v364 + 32))(v357, v244, v247);
        MEMORY[0x28223BE20](v250);
        *(&v349 - 2) = v249;

        v251 = sub_22C370AFC();
        v254 = sub_22C5EC59C(v251, v252, v253);

        if (v254)
        {
          v396 = &v349 - 4;
          sub_22C36FB04(&v427);
          v255(v394, v370);
          (*(v248 + 8))(v249, v247);
        }

        else
        {
          v256 = sub_22C9087DC();
          MEMORY[0x28223BE20](v256);
          *(&v349 - 2) = v249;
          sub_22C792458();
          v258 = v257;

          v433 = v258;

          sub_22C3CC5E4(v259);

          v260 = v433;
          sub_22C37A078(v388);
          sub_22C90405C();

          v261 = sub_22C9063CC();
          v262 = sub_22C90AACC();
          if (sub_22C369E90(v262))
          {
            v263 = swift_slowAlloc();
            *v263 = 134217984;
            *(v263 + 4) = v260[2];

            sub_22C38BFA4();
            _os_log_impl(v264, v265, v266, v267, v268, 0xCu);
            sub_22C3699EC();
          }

          else
          {
          }

          v269 = v364;
          v270 = v370;
          v271 = v395;
          v355 = v260;
          v396 = &v349 - 4;

          (v353)(v356, v413);
          (*(v271 + 8))(v394, v270);
          (*(v269 + 8))(v249, v369);
        }
      }

      v176 = v403;
    }

    else
    {
      (*(v236 + 8))(v231, v239);
    }
  }

  v428 = sub_22C9087DC();
  v272 = *(v428 + 16);
  LODWORD(v419) = *MEMORY[0x277D1E858];
  LODWORD(v407) = *MEMORY[0x277D1E778];
  v391 = v176 + 8;
  v379 = v393 + 32;
  v393 += 8;
  v406 = v392 + 32;
  v403 = v392 + 8;
  v418 = (v399 + 16);
  v273 = (v399 + 88);
  LODWORD(v409) = *MEMORY[0x277D1DDC8];
  v398 = *MEMORY[0x277D1DDD0];
  LODWORD(v395) = *MEMORY[0x277D1DDD8];
  v274 = (v399 + 8);
  LODWORD(v394) = *MEMORY[0x277D1DD78];
  swift_bridgeObjectRetain_n();
  if (!v272)
  {
LABEL_59:

    v303 = swift_bridgeObjectRelease_n();
    v429 = 0;
    v426 = 0xE000000000000000;
    v304 = v389;
    v305 = v397;
    v306 = v190;
LABEL_73:
    MEMORY[0x28223BE20](v303);
    v326 = v417;
    *(&v349 - 2) = v417;
    *(&v349 - 1) = v304;

    sub_22C370AFC();
    sub_22C3B282C();

    v327 = sub_22C9087DC();
    MEMORY[0x28223BE20](v327);
    v328 = v425;
    *(&v349 - 4) = v326;
    *(&v349 - 3) = v328;
    *(&v349 - 2) = v306;
    sub_22C792254();
    v330 = v329;

    sub_22C3A59A8(v330);

    v331 = sub_22C903B1C();
    sub_22C3724D4(v305);
    if (v278)
    {
      v332 = v371;
      sub_22C90405C();
      v333 = sub_22C9063CC();
      v334 = sub_22C90AACC();
      if (os_log_type_enabled(v333, v334))
      {
        v335 = sub_22C36D240();
        *v335 = 0;
        _os_log_impl(&dword_22C366000, v333, v334, "No Siri request context", v335, 2u);
        v305 = v397;
        sub_22C3699EC();
      }

      (v353)(v332, v413);
    }

    v336 = v381;
    sub_22C379DF8(v305, v381, &qword_27D9BD760, &qword_22C922200);
    sub_22C3724D4(v336);
    if (v278)
    {
      sub_22C36DD28(v336, &qword_27D9BD760, &qword_22C922200);
      v337 = v380;
      sub_22C36C640(v380, 1, 1, v372);
    }

    else
    {
      v337 = v380;
      StructuredContext.SiriRequestContext.mode.getter(v380);
      (*(*(v331 - 8) + 8))(v336, v331);
    }

    v338 = type metadata accessor for DefaultResponseGenerationInputBuilder();
    (*(v382 + 16))(v384, v304 + *(v338 + 20), v383);
    (*(v385 + 16))(v386, v304 + *(v338 + 24), v387);
    sub_22C37A078(&v420);
    sub_22C898AF0(v337, v339);
    sub_22C90800C();
    if (&v349 == 32)
    {
      sub_22C36DD28(v337, &qword_27D9BF1C8, &unk_22C922208);
      sub_22C36FB04(&v432);
      v345 = sub_22C89958C();
      v346(v345);
      v347 = sub_22C89955C();
      v348(v347);
      sub_22C36DD28(v305, &qword_27D9BD760, &qword_22C922200);

      sub_22C896CF4();
    }

    sub_22C36DD28(v337, &qword_27D9BF1C8, &unk_22C922208);
    sub_22C36FB04(&v432);
    v340 = sub_22C89958C();
    v341(v340);
    v342 = sub_22C89955C();
    v343(v342);
    sub_22C36DD28(v305, &qword_27D9BD760, &qword_22C922200);

LABEL_83:
    sub_22C896CF4();
  }

  while (1)
  {
    v275 = v272 - 1;
    v276 = v428 + ((*(v430 + 80) + 32) & ~*(v430 + 80)) + *(v430 + 72) * (v272 - 1);
    v278 = sub_22C90891C() == v425 && v190 == v277;
    if (v278)
    {
    }

    else
    {
      v279 = sub_22C90B4FC();

      if ((v279 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v280 = v429;
    sub_22C9089EC();
    v281 = v426;
    v282 = v422(v280, v426);
    if (v282 == v419)
    {
      v283 = sub_22C36DC60();
      v284(v283);
      sub_22C36BA4C(&v436);
      v286 = v415;
      v285 = v416;
      v287(v415, v280, v416);
      v288 = v424;
      sub_22C90763C();
      v289 = &v434;
      goto LABEL_52;
    }

    sub_22C369908(&v437);
    if (v278)
    {
      break;
    }

    sub_22C36BA4C(&v423);
    v302(v429, v281);
LABEL_58:
    --v272;
    if (!v275)
    {
      goto LABEL_59;
    }
  }

  v290 = v429;
  v291 = sub_22C36DC60();
  v292(v291);
  sub_22C36BA4C(&v411);
  v286 = v404;
  v285 = v405;
  v293(v404, v290, v405);
  v288 = v424;
  sub_22C9071FC();
  v289 = &v425;
LABEL_52:
  sub_22C36BA4C(v289);
  v294(v286, v285);
  v295 = v420;
  v296 = v421;
  (*v418)(v420, v288, v421);
  v297 = *v273;
  v298 = sub_22C36BA00();
  v299(v298);
  sub_22C369908(&v438);
  if (v278)
  {
LABEL_57:
    v300 = v295;
    v301 = *v274;
    (*v274)(v288, v296);
    v301(v300, v296);
    v190 = v427;
    goto LABEL_58;
  }

  sub_22C369908(&v430);
  if (v278)
  {
    v307 = *(v399 + 96);
    v308 = sub_22C36BA00();
    v309(v308);
    sub_22C370208(&v394);
    v311 = v296;
    v312 = v361;
    v313 = v363;
    (*(v310 + 32))(v361, v295, v363);
    sub_22C906B5C();
    goto LABEL_62;
  }

  sub_22C369908(&v427);
  if (!v278)
  {
    sub_22C369908(&v426);
    v288 = v424;
    if (!v278)
    {
      goto LABEL_87;
    }

    goto LABEL_57;
  }

  v314 = *(v399 + 96);
  v315 = sub_22C36BA00();
  v316(v315);
  sub_22C370208(&v391);
  v311 = v296;
  v312 = v358;
  v313 = v360;
  (*(v317 + 32))(v358, v295, v360);
  sub_22C906B5C();
LABEL_62:
  (*(v272 + 7))(v312, v313);
  (*v274)(v424, v311);

  v305 = v397;
  if (v272 <= *(v428 + 16))
  {
    v318 = sub_22C90891C();
    v306 = v427;
    v320 = v318 == v425 && v427 == v319;
    v304 = v389;
    if (v320)
    {
    }

    else
    {
      v321 = sub_22C90B4FC();

      if ((v321 & 1) == 0)
      {

        goto LABEL_86;
      }
    }

    static Session.Transcript.userQuery(event:)();
    v323 = v322;
    v325 = v324;

    if (v325)
    {
      v426 = v325;
      v429 = v323;

      goto LABEL_73;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C896CF4()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "ResponseGeneration.responseGenerationInput", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22C897098()
{
  v0 = sub_22C901FAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = sub_22C906E1C();
  MEMORY[0x2318AF390](v8);
  v9 = sub_22C901F6C();
  v10 = *(v1 + 8);
  v10(v5, v0);
  v10(v7, v0);
  return v9 & 1;
}

uint64_t sub_22C8971CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a1;
  v32 = a2;
  v2 = sub_22C901FAC();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = sub_22C9089DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C906ECC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x277D1E798])
  {
    (*(v10 + 8))(v13, v9);
LABEL_6:
    v25 = 1;
    v24 = v32;
    return sub_22C36C640(v24, v25, 1, v14);
  }

  (*(v10 + 96))(v13, v9);
  v28 = *(v15 + 32);
  v28(v18, v13, v14);
  v19 = sub_22C906E1C();
  MEMORY[0x2318AF390](v19);
  v20 = sub_22C901F6C();
  v21 = *(v30 + 8);
  v22 = v6;
  v23 = v31;
  v21(v22, v31);
  v21(v8, v23);
  if ((v20 & 1) == 0)
  {
    (*(v15 + 8))(v18, v14);
    goto LABEL_6;
  }

  v24 = v32;
  v28(v32, v18, v14);
  v25 = 0;
  return sub_22C36C640(v24, v25, 1, v14);
}

uint64_t sub_22C8974F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a2;
  v128 = a3;
  v126 = a4;
  v5 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v104 - v7;
  v8 = sub_22C906ECC();
  v120 = *(v8 - 8);
  v121 = v8;
  v9 = *(v120 + 64);
  MEMORY[0x28223BE20](v8);
  v124 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9C0F48, &unk_22C92B880);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v123 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v122 = &v104 - v15;
  v106 = sub_22C90077C();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v116 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v110 = &v104 - v20;
  v111 = sub_22C90769C();
  v108 = *(v111 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x28223BE20](v111);
  v107 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22C9063DC();
  v112 = *(v113 - 8);
  v23 = *(v112 + 64);
  v24 = MEMORY[0x28223BE20](v113);
  v109 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v104 - v26;
  v133 = sub_22C9026BC();
  v28 = *(v133 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v133);
  v119 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v127 = &v104 - v32;
  v131 = sub_22C907DEC();
  v136 = *(v131 - 8);
  v33 = *(v136 + 64);
  v34 = MEMORY[0x28223BE20](v131);
  v117 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v104 - v36;
  v38 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v134 = &v104 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v104 = &v104 - v43;
  MEMORY[0x28223BE20](v42);
  v137 = &v104 - v44;
  v45 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v104 - v47;
  v49 = sub_22C90069C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v104 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54 - 8);
  v132 = &v104 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = &v104 - v58;
  v135 = a1;
  sub_22C906E5C();
  v60 = sub_22C370B74(v48, 1, v49);
  v118 = v59;
  if (v60 == 1)
  {
    sub_22C36DD28(v48, &qword_27D9BB190, qword_22C90DD90);
    v61 = sub_22C9086FC();
    sub_22C36C640(v59, 1, 1, v61);
  }

  else
  {
    (*(v50 + 32))(v53, v48, v49);
    sub_22C3A6410(v59);
    (*(v50 + 8))(v53, v49);
  }

  v62 = sub_22C908EAC();
  sub_22C36C640(v137, 1, 1, v62);
  sub_22C906EBC();
  v63 = v127;
  sub_22C907DAC();
  v64 = *(v136 + 8);
  v136 += 8;
  v115 = v64;
  v64(v37, v131);
  v65 = (*(v28 + 88))(v63, v133) == *MEMORY[0x277D1CBB0];
  v66 = v116;
  v114 = v28;
  if (v65)
  {
    sub_22C90405C();
    v67 = sub_22C9063CC();
    v68 = sub_22C90AACC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22C366000, v67, v68, "No tool definition for a tool disambiguation", v69, 2u);
      MEMORY[0x2318B9880](v69, -1, -1);
    }

    (*(v112 + 8))(v27, v113);
  }

  else
  {
    v70 = v110;
    sub_22C906E9C();
    v71 = v111;
    v72 = sub_22C370B74(v70, 1, v111);
    v73 = v130;
    if (v72 == 1)
    {
      sub_22C36DD28(v70, &qword_27D9BF330, &unk_22C923250);
    }

    else
    {
      v74 = v108;
      v75 = v70;
      v76 = v107;
      v77 = (*(v108 + 32))(v107, v75, v71);
      MEMORY[0x2318B5FE0](v77);
      v78 = v104;
      sub_22C908AFC();
      if (v73)
      {
        (*(v105 + 8))(v66, v106);
        sub_22C90405C();
        v79 = v73;
        v80 = sub_22C9063CC();
        v81 = sub_22C90AADC();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          v84 = v73;
          v85 = _swift_stdlib_bridgeErrorToNSError();
          *(v82 + 4) = v85;
          *v83 = v85;
          _os_log_impl(&dword_22C366000, v80, v81, "Error querying tool database: %@", v82, 0xCu);
          sub_22C36DD28(v83, &qword_27D9BB158, qword_22C910FD0);
          v86 = v83;
          v63 = v127;
          MEMORY[0x2318B9880](v86, -1, -1);
          MEMORY[0x2318B9880](v82, -1, -1);
        }

        (*(v112 + 8))(v109, v113);
        (*(v74 + 8))(v76, v71);
        v130 = 0;
      }

      else
      {
        v130 = 0;
        (*(v105 + 8))(v66, v106);
        (*(v74 + 8))(v76, v71);
        v87 = v137;
        sub_22C36DD28(v137, &qword_27D9BC1E8, &qword_22C9123B0);
        sub_22C36C640(v78, 0, 1, v62);
        sub_22C528EA8(v78, v87);
      }
    }
  }

  v88 = v124;
  v89 = *(v114 + 8);
  v90 = v133;
  v89(v63, v133);
  v91 = v117;
  v92 = v135;
  sub_22C906EBC();
  v93 = v119;
  sub_22C907DAC();
  v115(v91, v131);
  v94 = v122;
  sub_22C898280(v93, v122);
  v89(v93, v90);
  sub_22C379DF8(v137, v134, &qword_27D9BC1E8, &qword_22C9123B0);
  v95 = v118;
  sub_22C379DF8(v118, v132, &qword_27D9BF9F0, &unk_22C92DAD0);
  (*(v120 + 16))(v88, v92, v121);
  v96 = sub_22C9087DC();
  MEMORY[0x28223BE20](v96);
  *(&v104 - 2) = v92;
  LOBYTE(v89) = sub_22C5EC6BC(sub_22C8993B0, (&v104 - 4), v96);

  if (v89)
  {
    v97 = *MEMORY[0x277D1DD48];
    v98 = sub_22C906A7C();
    v99 = v125;
    (*(*(v98 - 8) + 104))(v125, v97, v98);
    v100 = v99;
    v101 = 0;
    v102 = v98;
  }

  else
  {
    v102 = sub_22C906A7C();
    v100 = v125;
    v101 = 1;
  }

  sub_22C36C640(v100, v101, 1, v102);
  sub_22C379DF8(v94, v123, &qword_27D9C0F48, &unk_22C92B880);
  sub_22C907C2C();
  sub_22C36DD28(v94, &qword_27D9C0F48, &unk_22C92B880);
  sub_22C36DD28(v137, &qword_27D9BC1E8, &qword_22C9123B0);
  return sub_22C36DD28(v95, &qword_27D9BF9F0, &unk_22C92DAD0);
}

uint64_t sub_22C898280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v2 = sub_22C9063DC();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90947C();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90077C();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C908A8C();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C9093BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C90952C();
  v50 = *(v21 - 8);
  v51 = v21;
  v22 = *(v50 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C9026BC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C9020CC();
  v56 = *(v52 - 8);
  v30 = *(v56 + 64);
  v31 = MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v31);
  v55 = &v39 - v32;
  (*(v26 + 16))(v29, v53, v25);
  if ((*(v26 + 88))(v29, v25) == *MEMORY[0x277D1CBF0])
  {
    (*(v26 + 96))(v29, v25);
    v33 = v52;
    (*(v56 + 32))(v55, v29, v52);
    sub_22C90207C();
    sub_22C90935C();
    v34 = *(v17 + 8);
    v53 = v16;
    v34(v20, v16);
    v35 = sub_22C908B2C();
    MEMORY[0x2318B6010](v35);
    v36 = v49;
    sub_22C908B1C();
    (*(v47 + 8))(v11, v48);
    (*(v45 + 8))(v15, v46);
    sub_22C90946C();
    (*(v40 + 8))(v36, v41);
    (*(v50 + 8))(v24, v51);
    return (*(v56 + 8))(v55, v33);
  }

  else
  {
    (*(v26 + 8))(v29, v25);
    v37 = sub_22C909A5C();
    return sub_22C36C640(v54, 1, 1, v37);
  }
}

uint64_t sub_22C898AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  sub_22C379DF8(a1, &v24 - v11, &qword_27D9BF1C8, &unk_22C922208);
  v13 = sub_22C90687C();
  if (sub_22C370B74(v12, 1, v13) != 1)
  {
    return (*(*(v13 - 8) + 32))(a2, v12, v13);
  }

  sub_22C36DD28(v12, &qword_27D9BF1C8, &unk_22C922208);
  sub_22C90405C();
  v14 = sub_22C9063CC();
  v15 = sub_22C90AADC();
  v16 = 0x27D9BA000uLL;
  if (os_log_type_enabled(v14, v15))
  {
    v24 = a2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    if (qword_27D9BA7E0 != -1)
    {
      swift_once();
    }

    sub_22C37AA60(v13, qword_27D9C0F28);
    v19 = sub_22C90685C();
    v21 = sub_22C36F9F4(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22C366000, v14, v15, "No response mode, defaulting to %s", v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v5 + 8))(v8, v4);
    a2 = v24;
    v16 = 0x27D9BA000;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (*(v16 + 2016) != -1)
  {
    swift_once();
  }

  v23 = sub_22C37AA60(v13, qword_27D9C0F28);
  return (*(*(v13 - 8) + 16))(a2, v23, v13);
}

uint64_t sub_22C898E54(uint64_t a1)
{
  v2 = sub_22C899508();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C898E90(uint64_t a1)
{
  v2 = sub_22C899508();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C898EE8(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v2 = sub_22C901FAC();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - v6;
  v7 = sub_22C906A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_22C9089DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C906F1C();
  v21 = *(v20 - 8);
  v41 = v20;
  v42 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v16 + 88))(v19, v15) != *MEMORY[0x277D1E750])
  {
    (*(v16 + 8))(v19, v15);
LABEL_6:
    v30 = 0;
    return v30 & 1;
  }

  (*(v16 + 96))(v19, v15);
  v25 = v41;
  (*(v42 + 32))(v24, v19, v41);
  sub_22C906F0C();
  (*(v8 + 104))(v12, *MEMORY[0x277D1DD48], v7);
  v26 = sub_22C906A6C();
  v27 = *(v8 + 8);
  v27(v12, v7);
  v27(v14, v7);
  if ((v26 & 1) == 0)
  {
    (*(v42 + 8))(v24, v25);
    goto LABEL_6;
  }

  v28 = v36;
  sub_22C906EDC();
  v29 = v37;
  sub_22C906DFC();
  v30 = sub_22C901F6C();
  v31 = *(v39 + 8);
  v32 = v29;
  v33 = v40;
  v31(v32, v40);
  v31(v28, v33);
  (*(v42 + 8))(v24, v25);
  return v30 & 1;
}

unint64_t sub_22C899300()
{
  result = qword_27D9C0F40;
  if (!qword_27D9C0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DefaultResponseGenerationInputBuilder.ResponseGenerationInputBuilderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C8994B4()
{
  result = qword_27D9C0F50;
  if (!qword_27D9C0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F50);
  }

  return result;
}

unint64_t sub_22C899508()
{
  result = qword_27D9C0F58;
  if (!qword_27D9C0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F58);
  }

  return result;
}

uint64_t sub_22C89955C()
{
  v1 = *(*(v0 - 104) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 232);
  return result;
}

uint64_t sub_22C899574()
{
  v2 = *(v1 - 240);
  result = v0;
  *(v1 - 720) = *(*(v1 - 248) + 8);
  return result;
}

uint64_t sub_22C89958C()
{
  result = *(v0 - 344);
  v2 = *(v0 - 328);
  return result;
}

uint64_t sub_22C8995D0()
{
  sub_22C37B5C8();
  sub_22C8A52D4();
  return sub_22C90B66C();
}

uint64_t sub_22C8996C8()
{
  sub_22C37B5C8();
  sub_22C90B64C();
  return sub_22C90B66C();
}

uint64_t sub_22C899774()
{
  sub_22C37B5C8();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C8997D4(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_22C37B5C8();
  a2(v5, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C899840(uint64_t a1, void (*a2)(uint64_t))
{
  sub_22C37B5C8();
  a2(a1);
  sub_22C8A51C0();

  return sub_22C90B66C();
}

uint64_t sub_22C899890()
{
  sub_22C8A5270();
  sub_22C8A5368();

  return sub_22C90B66C();
}

uint64_t sub_22C899934()
{
  sub_22C8A5270();
  sub_22C909FFC();

  return sub_22C90B66C();
}

uint64_t sub_22C899988()
{
  sub_22C8A5270();
  sub_22C8A5368();

  return sub_22C90B66C();
}

uint64_t sub_22C899A2C()
{
  sub_22C8A5270();
  StructuredSearchQueryKeys.rawValue.getter();
  sub_22C8A51C0();

  return sub_22C90B66C();
}

uint64_t sub_22C899ABC()
{
  sub_22C8A5270();
  sub_22C909FFC();

  return sub_22C90B66C();
}

uint64_t sub_22C899B48()
{
  sub_22C90B62C();
  sub_22C909FFC();

  return sub_22C90B66C();
}

uint64_t sub_22C899C18(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_22C90B62C();
  a3(v6, a2);
  return sub_22C90B66C();
}

uint64_t sub_22C899C64(uint64_t a1, unsigned __int8 a2)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a2);
  return sub_22C90B66C();
}

uint64_t sub_22C899CA8(uint64_t a1, char a2)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a2 & 1);
  return sub_22C90B66C();
}

uint64_t sub_22C899D04()
{
  sub_22C8A5270();
  sub_22C90B64C();
  return sub_22C90B66C();
}

uint64_t sub_22C899D70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_22C90B62C();
  a3(a2);
  sub_22C8A51C0();

  return sub_22C90B66C();
}

uint64_t sub_22C899DC4()
{
  sub_22C8A5270();
  sub_22C8A5368();

  return sub_22C90B66C();
}

uint64_t sub_22C899E6C()
{
  sub_22C90B62C();
  sub_22C8A52D4();
  return sub_22C90B66C();
}

uint64_t sub_22C899ECC()
{
  sub_22C90B62C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C899F18()
{
  sub_22C8A5270();
  sub_22C8A5368();

  return sub_22C90B66C();
}

uint64_t sub_22C899F90()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ResponseGenerationBiomeRoot.Generation(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_22C37BB14();

    v1 = sub_22C89F4A0();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_22C89A008()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ResponseGenerationBiomeRoot.Override(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_22C901DCC();
    sub_22C36A748();
    sub_22C8A51F0(v6, v7, v8, v9);

    v1 = sub_22C89D10C();
    v10 = *(v2 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_22C89A0A0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.ModelInference();
    swift_allocObject();
    sub_22C37BB14();

    v1 = sub_22C8A2040();
    v3 = *(v2 + 48);
    *(v2 + 48) = v1;
  }

  return v1;
}

void sub_22C89A118()
{
  sub_22C36BA7C();
  v2 = v0;
  v81 = v3;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9C1080, &qword_22C92BF48);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v75 = v10;
  sub_22C36BA0C();
  v77 = sub_22C90345C();
  v11 = sub_22C369824(v77);
  v74 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v73 = v15;
  sub_22C36BA0C();
  v79 = sub_22C90348C();
  v16 = sub_22C369824(v79);
  v76 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v78 = v20;
  sub_22C36BA0C();
  v21 = sub_22C90342C();
  v22 = sub_22C369824(v21);
  v80 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  sub_22C36D6DC();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v73 - v32;
  v34 = *(v5 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v38 = (v36 - v37);
  MEMORY[0x28223BE20](v39);
  v41 = &v73 - v40;
  v82 = v34;
  v42 = *(v34 + 16);
  v43 = v2;
  v44 = v2;
  v46 = v45;
  v42(&v73 - v40, v44, v5);
  v83 = v41;
  v47 = v5;
  if (swift_dynamicCast())
  {
    v48 = v80;
    (*(v80 + 32))(v1, v33, v46);
    sub_22C646A98();
    v49(v28, v1, v46);
    if ((*(v48 + 88))(v28, v46) == *MEMORY[0x277D29D28])
    {
      v50 = *(v48 + 96);
      v81 = v46;
      v50(v28, v46);
      v51 = v76;
      (*(v76 + 32))(v78, v28, v79);
      v52 = v75;
      sub_22C90346C();
      v53 = v77;
      sub_22C36D0A8(v52, 1, v77);
      v54 = v82;
      if (v55)
      {
        sub_22C36DD80(v52, &qword_27D9C1080);
        sub_22C90347C();
        v56 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        sub_22C8A52F8(0xD000000000000020, 0x800000022C939370);
        v57 = *(v51 + 8);
        v71 = sub_22C370114();
      }

      else
      {
        v64 = v73;
        v63 = v74;
        (*(v74 + 32))(v73, v52, v53);
        v85 = 0;
        v86 = 0xE000000000000000;
        sub_22C90AF5C();

        v85 = 0xD000000000000021;
        v86 = 0x800000022C9393A0;
        v84 = sub_22C90347C();
        v65 = sub_22C90B47C();
        MEMORY[0x2318B7850](v65);

        MEMORY[0x2318B7850](95, 0xE100000000000000);
        v66 = sub_22C90344C();
        MEMORY[0x2318B7850](v66);

        v67 = v85;
        v68 = v86;
        sub_22C90343C();
        v69 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        sub_22C8A52F8(v67, v68);
        (*(v63 + 8))(v64, v77);
        v70 = *(v51 + 8);
        v71 = v78;
        v72 = v79;
      }

      v70(v71, v72);
      (*(v48 + 8))(v1, v81);
    }

    else
    {
      sub_22C90341C();
      v60 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22C8A52F8(0xD000000000000011, 0x800000022C939350);
      v61 = *(v48 + 8);
      v61(v1, v46);
      v61(v28, v46);
      v54 = v82;
    }
  }

  else
  {
    v42(v38, v43, v5);
    v58 = sub_22C90B4AC();
    if (v58)
    {
      v59 = v58;
      v54 = v82;
      (*(v82 + 8))(v38, v5);
    }

    else
    {
      sub_22C36BA00();
      v59 = swift_allocError();
      v54 = v82;
      (*(v82 + 32))(v62, v38, v5);
    }

    sub_22C9002FC();
  }

  (*(v54 + 8))(v83, v47);
  sub_22C36CC48();
}

uint64_t sub_22C89A778()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.RequestValidation();
    *(swift_allocObject() + 24) = 0;

    v1 = sub_22C89D10C();
    v3 = *(v2 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_22C89A7F8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ResponseGenerationBiomeRoot.ResponseCatalog();
    swift_allocObject();
    sub_22C37BB14();

    v1 = sub_22C89D10C();
    v3 = *(v2 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_22C89A870()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ResponseGenerationBiomeRoot.GMSCall(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_22C90069C();
    sub_22C36A748();
    sub_22C8A51F0(v6, v7, v8, v9);

    v1 = sub_22C89D10C();
    v10 = *(v2 + 64);
    *(v2 + 64) = v1;
  }

  return v1;
}

uint64_t sub_22C89A908@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  if (*(v1 + 96) > 1uLL)
  {
    result = sub_22C378A4C(v1 + 72, &v10);
  }

  else
  {
    v4 = *(v1 + 88);
    v10 = *(v1 + 72);
    v11 = v4;
    v12 = *(v1 + 104);
  }

  if (*(&v11 + 1) != 1)
  {
    v5 = v11;
    *a1 = v10;
    *(a1 + 16) = v5;
    *(a1 + 32) = v12;
    return result;
  }

  sub_22C89AA40();
  if (*(a1 + 24))
  {
    sub_22C378A4C(a1, &v10);
  }

  else
  {
    v6 = *(a1 + 16);
    v10 = *a1;
    v11 = v6;
    v12 = *(a1 + 32);
  }

  swift_beginAccess();
  v7 = *(v1 + 96);
  if (v7 == 1)
  {
    goto LABEL_17;
  }

  v8 = *(&v11 + 1);
  if (*(&v11 + 1) == 1)
  {
    if (v7)
    {
      sub_22C36FF94((v1 + 72));
    }

LABEL_17:
    v9 = v11;
    *(v1 + 72) = v10;
    *(v1 + 88) = v9;
    *(v1 + 104) = v12;
    return swift_endAccess();
  }

  if (v7)
  {
    sub_22C36FF94((v1 + 72));
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  sub_22C36C730(&v10, v1 + 72);
  return swift_endAccess();
}

uint64_t sub_22C89AA40()
{
  v0 = sub_22C9063DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C9061BC();
  sub_22C8A5090(&qword_27D9C10E0, MEMORY[0x277D20318]);
  return sub_22C90620C();
}

uint64_t sub_22C89AC74()
{
  v0 = sub_22C9063DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9C10D8, &unk_22C92BFA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - v7;
  v9 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - v11;
  sub_22C904BBC();
  v13 = sub_22C904BAC();
  if (sub_22C370B74(v8, 1, v13) == 1)
  {
    sub_22C36DD80(v8, &qword_27D9C10D8);
    v14 = sub_22C90625C();
    sub_22C36C640(v12, 1, 1, v14);
LABEL_4:
    sub_22C36DD80(v12, &qword_27D9BE618);
    sub_22C90405C();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AAEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22C366000, v16, v17, "Missing ifRequestId", v18, 2u);
      MEMORY[0x2318B9880](v18, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }

  sub_22C90460C();
  (*(*(v13 - 8) + 8))(v8, v13);
  v15 = sub_22C90625C();
  if (sub_22C370B74(v12, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  sub_22C36DD80(v12, &qword_27D9BE618);
  result = sub_22C89A908(v21);
  if (v22)
  {
    sub_22C378A4C(v21, v20);
    if (v22)
    {
      sub_22C36FF94(v21);
    }

    sub_22C374168(v20, v20[3]);
    sub_22C9062BC();
    return sub_22C36FF94(v20);
  }

  return result;
}

uint64_t ResponseGenerationTriageReport.source.getter()
{
  v0 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C(*(v0 + 20));
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.source.setter()
{
  v3 = sub_22C388498();
  result = sub_22C8A5314(*(v3 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.source.modify()
{
  v0 = sub_22C3704C4();
  v1 = *(type metadata accessor for ResponseGenerationTriageReport(v0) + 20);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.fallbackReason.getter()
{
  v0 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C(*(v0 + 24));
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.fallbackReason.setter()
{
  v3 = sub_22C388498();
  result = sub_22C8A5314(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.fallbackReason.modify()
{
  v0 = sub_22C3704C4();
  v1 = *(type metadata accessor for ResponseGenerationTriageReport(v0) + 24);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.deniedRequestReason.getter()
{
  v0 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C(*(v0 + 28));
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.deniedRequestReason.setter()
{
  v3 = sub_22C388498();
  result = sub_22C8A5314(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.deniedRequestReason.modify()
{
  v0 = sub_22C3704C4();
  v1 = *(type metadata accessor for ResponseGenerationTriageReport(v0) + 28);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.overrideRuleId.getter()
{
  v0 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C(*(v0 + 32));
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.overrideRuleId.setter()
{
  v3 = sub_22C388498();
  result = sub_22C8A5314(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.overrideRuleId.modify()
{
  v0 = sub_22C3704C4();
  v1 = *(type metadata accessor for ResponseGenerationTriageReport(v0) + 32);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.generationError.getter()
{
  v0 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C37607C(*(v0 + 36));
  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.generationError.setter()
{
  v3 = sub_22C388498();
  result = sub_22C8A5314(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationTriageReport.generationError.modify()
{
  v0 = sub_22C3704C4();
  v1 = *(type metadata accessor for ResponseGenerationTriageReport(v0) + 36);
  return sub_22C8A5208();
}

uint64_t ResponseGenerationTriageReport.ModelInference.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.ModelInference.promptVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.ModelInference.modelOutput.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_22C36BA00();
}

uint64_t ResponseGenerationTriageReport.ModelInference.modelOutput.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall ResponseGenerationTriageReport.ModelInference.init(prompt:promptVersion:)(IntelligenceFlowPlannerRuntime::ResponseGenerationTriageReport::ModelInference *__return_ptr retstr, Swift::String prompt, Swift::String promptVersion)
{
  retstr->modelOutput.value._countAndFlagsBits = 0;
  retstr->modelOutput.value._object = 0;
  retstr->prompt = prompt;
  retstr->promptVersion = promptVersion;
}

uint64_t sub_22C89B470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x655674706D6F7270 && a2 == 0xED00006E6F697372;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74754F6C65646F6DLL && a2 == 0xEB00000000747570)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C89B588(char a1)
{
  if (!a1)
  {
    return 0x74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x655674706D6F7270;
  }

  return 0x74754F6C65646F6DLL;
}

uint64_t sub_22C89B610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C89B470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C89B638(uint64_t a1)
{
  v2 = sub_22C89B844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C89B674(uint64_t a1)
{
  v2 = sub_22C89B844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationTriageReport.ModelInference.encode(to:)(void *a1)
{
  v4 = sub_22C3A5908(&qword_27D9C0F68, &qword_22C92B9A8);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C3881C0();
  v10 = *v1;
  v11 = v1[1];
  v16 = v1[3];
  v17 = v1[2];
  v14 = v1[5];
  v15 = v1[4];
  v12 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C89B844();
  sub_22C90B6CC();
  sub_22C90B3CC();
  if (!v18)
  {
    sub_22C37A15C();
    sub_22C90B3CC();
    sub_22C37A15C();
    sub_22C90B37C();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_22C89B844()
{
  result = qword_27D9C0F70;
  if (!qword_27D9C0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F70);
  }

  return result;
}

uint64_t ResponseGenerationTriageReport.ModelInference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9C0F78, &qword_22C92B9B0);
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C370654();
  v12 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C89B844();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v13 = sub_22C90B2DC();
  v23 = v14;
  v21 = sub_22C90B2DC();
  v22 = v15;
  v16 = sub_22C90B26C();
  v18 = v17;
  v19 = v16;
  (*(v8 + 8))(v3, v6);
  *a2 = v13;
  a2[1] = v23;
  a2[2] = v21;
  a2[3] = v22;
  a2[4] = v19;
  a2[5] = v18;

  sub_22C36FF94(a1);
}

uint64_t ResponseGenerationTriageReport.modelInference.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResponseGenerationTriageReport(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22C89BB6C(v4, v5);
}

uint64_t sub_22C89BB6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 ResponseGenerationTriageReport.modelInference.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + *(type metadata accessor for ResponseGenerationTriageReport(0) + 40));
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  sub_22C89BC14(*v5, v5[1]);
  result = *a1;
  v11 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v11;
  v5[4] = v3;
  v5[5] = v4;
  return result;
}

uint64_t sub_22C89BC14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ResponseGenerationTriageReport.modelInference.modify()
{
  v0 = sub_22C3704C4();
  v1 = *(type metadata accessor for ResponseGenerationTriageReport(v0) + 40);
  return sub_22C8A5208();
}

double ResponseGenerationTriageReport.init()@<D0>(uint64_t a1@<X8>)
{
  sub_22C90806C();
  v2 = sub_22C36CCF8();
  sub_22C36C640(v2, v3, 1, v4);
  v5 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C386E98(*(v5 + 20));
  sub_22C386E98(*(v6 + 24));
  sub_22C386E98(*(v7 + 28));
  sub_22C386E98(*(v8 + 32));
  sub_22C386E98(*(v9 + 36));
  v11 = (a1 + *(v10 + 40));
  result = 0.0;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  return result;
}

uint64_t sub_22C89BD20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6361626C6C6166 && a2 == 0xEE006E6F73616552;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000022C939330 == a2;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656469727265766FLL && a2 == 0xEE006449656C7552;
          if (v9 || (sub_22C90B4FC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69746172656E6567 && a2 == 0xEF726F7272456E6FLL;
            if (v10 || (sub_22C90B4FC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x666E496C65646F6DLL && a2 == 0xEE0065636E657265)
            {

              return 6;
            }

            else
            {
              v12 = sub_22C90B4FC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C89BF70(char a1)
{
  result = 0x7475706E69;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x6B6361626C6C6166;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x656469727265766FLL;
      break;
    case 5:
      result = 0x69746172656E6567;
      break;
    case 6:
      result = 0x666E496C65646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C89C068(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C89C0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C89BD20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C89C0E4(uint64_t a1)
{
  v2 = sub_22C89C39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C89C120(uint64_t a1)
{
  v2 = sub_22C89C39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationTriageReport.encode(to:)()
{
  sub_22C8A5350();
  v3 = sub_22C3A5908(&qword_27D9C0F80, &qword_22C92B9B8);
  sub_22C369824(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3881C0();
  v9 = v0[4];
  sub_22C374168(v0, v0[3]);
  sub_22C89C39C();
  sub_22C90B6CC();
  sub_22C90806C();
  sub_22C381C78();
  sub_22C8A5090(v10, v11);
  sub_22C37A15C();
  sub_22C90B3AC();
  if (!v1)
  {
    v12 = type metadata accessor for ResponseGenerationTriageReport(0);
    sub_22C381434(v12[5]);
    sub_22C37BD18(1);
    sub_22C381434(v12[6]);
    sub_22C37BD18(2);
    sub_22C381434(v12[7]);
    sub_22C37BD18(3);
    sub_22C381434(v12[8]);
    sub_22C37BD18(4);
    sub_22C381434(v12[9]);
    sub_22C37BD18(5);
    v16 = sub_22C381434(v12[10]);
    v17 = v14;
    v18 = v13[2];
    v19 = v13[3];
    v20 = v13[4];
    v21 = v13[5];
    sub_22C89BB6C(v16, v14);
    sub_22C89C3F0();
    sub_22C37A15C();
    sub_22C90B3AC();
    sub_22C89BC14(v16, v17);
  }

  return (*(v5 + 8))(v2, v3);
}

unint64_t sub_22C89C39C()
{
  result = qword_27D9C0F88;
  if (!qword_27D9C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F88);
  }

  return result;
}

unint64_t sub_22C89C3F0()
{
  result = qword_27D9C0F98;
  if (!qword_27D9C0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0F98);
  }

  return result;
}

uint64_t ResponseGenerationTriageReport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v44 = v8;
  v45 = sub_22C3A5908(&qword_27D9C0FA0, &qword_22C92B9C0);
  sub_22C369824(v45);
  v43 = v9;
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v49 = v13;
  v14 = sub_22C36BA0C();
  v15 = type metadata accessor for ResponseGenerationTriageReport(v14);
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C387210();
  sub_22C90806C();
  v18 = sub_22C36CCF8();
  sub_22C36C640(v18, v19, 1, v20);
  v21 = (v2 + v16[7]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v2 + v16[8]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v2 + v16[9]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v2 + v16[10]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v2 + v16[11]);
  *v25 = 0;
  v25[1] = 0;
  v47 = v2;
  v26 = v2 + v16[12];
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *v26 = 0u;
  v27 = a1;
  v28 = a1[3];
  v29 = a1[4];
  v48 = v27;
  sub_22C374168(v27, v28);
  sub_22C89C39C();
  sub_22C90B6BC();
  if (!v46)
  {
    LOBYTE(v50) = 0;
    sub_22C381C78();
    sub_22C8A5090(v30, v31);
    sub_22C90B2BC();
    sub_22C381470(v44, v47, &qword_27D9C0F60, &qword_22C92B9A0);
    *v21 = sub_22C36FF50(1);
    v21[1] = v33;
    *v22 = sub_22C36FF50(2);
    v22[1] = v34;
    *v23 = sub_22C36FF50(3);
    v23[1] = v35;
    *v24 = sub_22C36FF50(4);
    v24[1] = v36;
    *v25 = sub_22C36FF50(5);
    v25[1] = v37;
    sub_22C89C810();
    sub_22C90B2BC();
    (*(v43 + 8))(v49, v45);
    v38 = *(v26 + 16);
    v39 = *(v26 + 24);
    v40 = *(v26 + 32);
    v41 = *(v26 + 40);
    sub_22C89BC14(*v26, *(v26 + 8));
    *v26 = v50;
    *(v26 + 16) = v51;
    *(v26 + 32) = v52;
    *(v26 + 40) = v53;
    sub_22C89C864(v47, a2);
  }

  sub_22C36FF94(v48);
  return sub_22C8A50D8();
}

unint64_t sub_22C89C810()
{
  result = qword_27D9C0FB0;
  if (!qword_27D9C0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0FB0);
  }

  return result;
}

uint64_t sub_22C89C864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseGenerationTriageReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C89C938()
{
  sub_22C8A0CB0(319, &qword_27D9C0FC8, MEMORY[0x277D1E2D8]);
  if (v0 <= 0x3F)
  {
    sub_22C430E9C(319, &qword_28142FA20);
    if (v1 <= 0x3F)
    {
      sub_22C430E9C(319, &qword_27D9C0FD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C89CA2C()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C10A0, &qword_22C92BF68);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v87 = v8;
  sub_22C36BA0C();
  v9 = sub_22C90474C();
  v83 = sub_22C369824(v9);
  v84 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22C3698E4();
  v80 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v85 = v15;
  sub_22C36BA0C();
  v16 = sub_22C90454C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C90806C();
  sub_22C36A748();
  sub_22C36C640(v25, v26, v27, v28);
  v29 = type metadata accessor for ResponseGenerationTriageReport(0);
  v82 = (v3 + v29[5]);
  v30 = (v3 + v29[6]);
  *v30 = 0;
  v30[1] = 0;
  v79 = v30;
  v31 = (v3 + v29[7]);
  *v31 = 0;
  v31[1] = 0;
  v77 = v31;
  v32 = (v3 + v29[8]);
  *v32 = 0;
  v32[1] = 0;
  v78 = v32;
  v33 = (v3 + v29[9]);
  *v33 = 0;
  v33[1] = 0;
  v81 = v33;
  v34 = v3 + v29[10];
  *(v34 + 32) = 0u;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  v35 = sub_22C899F90();
  v36 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input;
  swift_beginAccess();
  sub_22C36DD80(v3, &qword_27D9C0F60);
  sub_22C4E719C(v35 + v36, v3, &qword_27D9C0F60, &qword_22C92B9A0);
  swift_endAccess();

  v37 = v1[2];
  v38 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  sub_22C36CA70();
  sub_22C37BBE4();
  v39(v24, v37 + v38, v16);
  sub_22C90453C();
  sub_22C385D88();
  v40 = v1;
  (*(v19 + 8))(v24, v16);
  *v82 = v24;
  v82[1] = v38;
  v41 = v1[2];
  v42 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  sub_22C36CA70();
  v43 = v84[2];
  (v43)(v85, v41 + v42, v83);
  v44 = v84[11];
  v45 = sub_22C36CA88();
  if (v46(v45) != *MEMORY[0x277D1FB28])
  {
    v47 = v84[1];
    v48 = sub_22C36CA88();
    v47(v48);
    v49 = v1[2];
    v50 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
    sub_22C36CA70();
    (v43)(v80, v49 + v50, v83);
    sub_22C90473C();
    sub_22C385D88();
    (v47)(v80, v83);
    *v79 = v80;
    v79[1] = v43;
  }

  v51 = *(sub_22C89A778() + 24);

  switch(v51)
  {
    case 1:
    case 2:
    case 3:
      v53 = 0x73736563637573;
      v43 = sub_22C90B4FC();

      v52 = v87;
      if ((v43 & 1) == 0)
      {
        v54 = 0xE700000000000000;
        switch(*(v40[3] + 24))
        {
          case 1:
            v53 = 0x694C796E65446E69;
            v54 = 0xEA00000000007473;
            break;
          case 2:
            v53 = 0xD000000000000010;
            v54 = 0x800000022C92F260;
            break;
          case 3:
            v54 = 0x800000022C92F280;
            v53 = 0xD000000000000012;
            break;
          default:
            break;
        }

        *v77 = v53;
        v77[1] = v54;
      }

      break;
    default:

      v52 = v87;
      break;
  }

  v55 = sub_22C89A008();
  sub_22C4E719C(v55 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot8Override_override, v52, &qword_27D9C10A0, &qword_22C92BF68);

  v56 = sub_22C901DCC();
  if (sub_22C370B74(v52, 1, v56))
  {
    sub_22C36DD80(v52, &qword_27D9C10A0);
  }

  else
  {
    sub_22C901DBC();
    sub_22C385D88();
    sub_22C36DD80(v52, &qword_27D9C10A0);
    *v78 = v52;
    v78[1] = v43;
  }

  v57 = sub_22C89A0A0();
  v59 = *(v57 + 24);
  v58 = *(v57 + 32);

  if (v58)
  {
    v60 = v40[6];
    v61 = *(v60 + 48);
    if (v61)
    {
      v62 = *(v60 + 40);
    }

    else
    {
      v62 = 0x6E776F6E6B6E75;
    }

    v63 = 0xE700000000000000;
    if (v61)
    {
      v63 = v61;
    }

    v86 = v63;
    v88 = v62;
    v64 = *v34;
    v65 = *(v34 + 8);
    v66 = *(v34 + 16);
    v67 = *(v34 + 24);
    v68 = *(v34 + 32);
    v69 = *(v34 + 40);

    sub_22C89BC14(v64, v65);
    *v34 = v59;
    *(v34 + 8) = v58;
    *(v34 + 16) = v88;
    *(v34 + 24) = v86;
    *(v34 + 32) = 0;
    *(v34 + 40) = 0;
    v70 = v40[6];
    v72 = *(v70 + 56);
    v71 = *(v70 + 64);

    *(v34 + 32) = v72;
    *(v34 + 40) = v71;
  }

  v73 = v40[2];
  v74 = *(v73 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_error);
  if (v74)
  {
    v89 = *(v73 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_error);
    v75 = v74;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v81 = sub_22C90A1CC();
    v81[1] = v76;
  }

  sub_22C36CC48();
}

unint64_t sub_22C89D078(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0x694C796E65446E69;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C89D10C()
{
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

void sub_22C89D150()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v137 = v8;
  v9 = sub_22C3A5908(&qword_27D9C10D8, &unk_22C92BFA8);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v136 = v13;
  sub_22C36BA0C();
  v129 = sub_22C90625C();
  v14 = sub_22C369824(v129);
  v125 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v124 = v18;
  v19 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  v20 = sub_22C369914(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v128 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v132 = v25;
  sub_22C36BA0C();
  v135 = sub_22C90451C();
  v26 = sub_22C369824(v135);
  v131 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v130 = v30;
  v31 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C370654();
  v35 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v36 = sub_22C369914(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  v126 = v39;
  sub_22C369930();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v124 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v124 - v44;
  v46 = sub_22C90069C();
  v47 = sub_22C369824(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  v127 = v52;
  sub_22C369930();
  MEMORY[0x28223BE20](v53);
  sub_22C36CAC0();
  v54 = sub_22C904BAC();
  v55 = sub_22C369824(v54);
  v133 = v56;
  v134 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C369838();
  v61 = v60 - v59;
  v138 = v3;
  sub_22C904BEC();
  sub_22C904B9C();
  if (swift_weakLoadStrong())
  {
    v62 = sub_22C899F90();

    v63 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId;
    sub_22C36CA70();
    sub_22C4E719C(v62 + v63, v45, &qword_27D9BB190, qword_22C90DD90);

    sub_22C36D0A8(v45, 1, v46);
    if (!v64)
    {
      (*(v49 + 32))(v0, v45, v46);
      sub_22C90624C();
      sub_22C389280();
      v65(v43, v0, v46);
      v66 = sub_22C389250();
      sub_22C36EEBC(v66, v67, v68, v46);
      sub_22C90623C();
      sub_22C36BECC();
      sub_22C36C640(v69, v70, v71, v129);
      sub_22C904B8C();
      (*(v49 + 8))(v0, v46);
      goto LABEL_6;
    }
  }

  else
  {
    sub_22C36A748();
    sub_22C36C640(v72, v73, v74, v46);
  }

  sub_22C36DD80(v45, &qword_27D9BB190);
LABEL_6:
  Strong = swift_weakLoadStrong();
  v76 = v132;
  if (!Strong)
  {
    v85 = sub_22C36CCF8();
    sub_22C36C640(v85, v86, 1, v135);
    goto LABEL_12;
  }

  v77 = sub_22C899F90();

  v78 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers;
  sub_22C36CA70();
  sub_22C4E719C(v77 + v78, v76, &qword_27D9BB7A0, &qword_22C9110D0);

  v79 = sub_22C36CCF8();
  v80 = v135;
  sub_22C36D0A8(v79, v81, v135);
  if (v64)
  {
LABEL_12:
    sub_22C36DD80(v76, &qword_27D9BB7A0);
    goto LABEL_14;
  }

  (*(v131 + 32))(v130, v76, v80);
  v82 = v126;
  sub_22C90446C();
  v83 = sub_22C36CCF8();
  sub_22C36D0A8(v83, v84, v46);
  if (v64)
  {
    sub_22C36DD80(v82, &qword_27D9BB190);
  }

  else
  {
    v87 = *(v49 + 32);
    v88 = v127;
    v89 = sub_22C8A5220();
    v90(v89);
    v91 = v124;
    sub_22C90624C();
    sub_22C389280();
    v92(v43, v88, v46);
    v93 = sub_22C389250();
    sub_22C36EEBC(v93, v94, v95, v46);
    sub_22C90623C();
    v96 = v125;
    sub_22C8A51A4();
    v97 = v129;
    v98(v1, v91, v129);
    sub_22C36BECC();
    sub_22C36C640(v99, v100, v101, v97);
    sub_22C90461C();
    v102 = *(v96 + 8);
    v103 = sub_22C372280();
    v104(v103);
    (*(v49 + 8))(v127, v46);
  }

  v105 = v130;
  sub_22C9044DC();
  sub_22C904B7C();
  v106 = v131;
  sub_22C8A51A4();
  v107(v128, v105, v80);
  sub_22C36BECC();
  sub_22C36C640(v108, v109, v110, v80);
  sub_22C90452C();
  v111 = *(v106 + 8);
  v112 = sub_22C372FCC();
  v113(v112);
LABEL_14:
  v115 = v133;
  v114 = v134;
  sub_22C8A51A4();
  v116(v136, v61, v114);
  sub_22C36BECC();
  sub_22C36C640(v117, v118, v119, v114);
  sub_22C904BCC();
  sub_22C90621C();
  sub_22C90622C();
  sub_22C36BECC();
  sub_22C36C640(v120, v121, v122, v123);
  sub_22C904BDC();
  (*(v115 + 8))(v61, v114);
  sub_22C36CC48();
}

uint64_t sub_22C89D8DC(uint64_t a1)
{
  v4 = sub_22C36CA88();
  v6 = sub_22C3A5908(v4, v5);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36FF70();
  v10 = sub_22C904BFC();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C4E719C(a1, v1, &qword_27D9C1068, &qword_22C92BF28);
  v16 = sub_22C383C3C();
  sub_22C36D0A8(v16, v17, v10);
  if (v18)
  {
    return sub_22C36DD80(v1, &qword_27D9C1068);
  }

  (*(v13 + 32))(v2, v1, v10);
  if (swift_weakLoadStrong())
  {
    sub_22C89AC74();
  }

  return (*(v13 + 8))(v2, v10);
}

void sub_22C89DA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v162 = v21;
  v26 = v25;
  v153 = sub_22C9063DC();
  v27 = sub_22C369824(v153);
  v152 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  sub_22C36D234(v31);
  v32 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C36D5B4();
  v161 = v36;
  v37 = sub_22C3A5908(&qword_27D9C10F0, &unk_22C92BFC0);
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C36D5B4();
  v156 = v41;
  sub_22C36BA0C();
  v42 = sub_22C904BFC();
  v43 = sub_22C369824(v42);
  v159 = v44;
  v160 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698A8();
  v157 = v47;
  sub_22C36BA0C();
  v158 = sub_22C90484C();
  v48 = sub_22C369824(v158);
  v155 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698A8();
  sub_22C36D234(v52);
  v53 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v53);
  v55 = *(v54 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v56);
  sub_22C36D5B4();
  sub_22C36D234(v57);
  v58 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v58);
  v60 = *(v59 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v61);
  sub_22C36FF70();
  v150 = sub_22C90069C();
  v62 = sub_22C36985C(v150);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22C369838();
  sub_22C370654();
  v65 = sub_22C90451C();
  v66 = sub_22C369824(v65);
  v163 = v67;
  v164 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C369838();
  v72 = v71 - v70;
  v73 = sub_22C3A5908(&qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C369914(v73);
  v75 = *(v74 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v76);
  v78 = &v145 - v77;
  v79 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v79);
  v81 = *(v80 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v82);
  sub_22C37B974();
  v83 = sub_22C908A0C();
  v84 = sub_22C369824(v83);
  v86 = v85;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  sub_22C3698A8();
  v90 = v89;
  v91 = sub_22C9087DC();
  sub_22C3A5950(v91);

  v92 = sub_22C36CCF8();
  sub_22C36D0A8(v92, v93, v83);
  if (v94)
  {
    sub_22C36DD80(v20, &qword_27D9BA808);
    v95 = v149;
    sub_22C90405C();
    v96 = sub_22C9063CC();
    v97 = sub_22C90AADC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_22C366000, v96, v97, "Transcript has no event.", v98, 2u);
      MEMORY[0x2318B9880](v98, -1, -1);
    }

    sub_22C36FB04(&a16);
    v143 = v95;
    v144 = &a17;
  }

  else
  {
    v148 = v86;
    v99 = *(v86 + 32);
    v100 = sub_22C372280();
    v147 = v83;
    v101(v100);
    v102 = sub_22C90880C();
    sub_22C36985C(v102);
    (*(v103 + 16))(v78, v26, v102);
    sub_22C36BECC();
    sub_22C36C640(v104, v105, v106, v102);
    v107 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript;
    v108 = v162;
    sub_22C382E40();
    sub_22C381470(v78, v108 + v107, &qword_27D9C10D0, &qword_22C92BFA0);
    swift_endAccess();
    sub_22C90450C();
    sub_22C9073EC();
    sub_22C59EAEC(&v165);
    sub_22C9044EC();
    sub_22C8A535C();
    sub_22C9089FC();
    sub_22C9044FC();
    v146 = v90;
    sub_22C90891C();
    sub_22C90449C();
    sub_22C9088EC();
    sub_22C9044AC();
    sub_22C90895C();
    sub_22C9044BC();
    sub_22C90890C();
    sub_22C9044CC();
    sub_22C9088DC();
    sub_22C90447C();
    v109 = v164;
    v110 = v151;
    (*(v163 + 16))(v151, v72, v164);
    sub_22C36BECC();
    sub_22C36C640(v111, v112, v113, v109);
    v114 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers;
    sub_22C382E40();
    sub_22C381470(v110, v108 + v114, &qword_27D9BB7A0, &qword_22C9110D0);
    swift_endAccess();
    sub_22C90445C();
    v115 = sub_22C371A14();
    sub_22C36C640(v115, v116, v117, v150);
    v118 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId;
    sub_22C382E40();
    sub_22C381470(v22, v108 + v118, &qword_27D9BB190, qword_22C90DD90);
    swift_endAccess();
    v119 = v154;
    sub_22C90456C();
    sub_22C90455C();
    v120 = v157;
    sub_22C89D150();
    v121 = v158;
    v122 = swift_allocBox();
    sub_22C70C980(v122, v123);
    v124 = v155;
    sub_22C8A51A4();
    v125();
    *v156 = v118;
    v126 = *MEMORY[0x277D1FB30];
    v127 = sub_22C90481C();
    sub_22C8A5140(v127);
    v129 = *(v128 + 104);
    sub_22C37A060();
    v130();
    v131 = sub_22C371A14();
    sub_22C36CD04(v131, v132, v133, v108);
    sub_22C90487C();
    v135 = v159;
    v134 = v160;
    sub_22C646A98();
    v136 = v161;
    v137(v161, v120, v134);
    v138 = sub_22C37049C();
    v141 = sub_22C8A51F0(v138, v139, v140, v134);
    sub_22C89D8DC(v141);
    sub_22C36DD80(v136, &qword_27D9C1068);
    (*(v135 + 8))(v120, v134);
    (*(v124 + 8))(v119, v121);
    (*(v163 + 8))(v72, v164);
    sub_22C36FB04(&a12);
    v143 = v146;
    v144 = &a11;
  }

  v142(v143, *(v144 - 32));
  sub_22C36CC48();
}

void sub_22C89E2A8()
{
  sub_22C89A118();
  v3 = v0;
  sub_22C904B3C();
  v1 = [v3 code];
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_22C904B2C();
  v2 = [v3 domain];
  sub_22C90A11C();

  sub_22C904B1C();
}

void sub_22C89E380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v24;
  a20 = v25;
  v26 = v21;
  v256 = v27;
  v260 = v28;
  v261 = v29;
  v30 = sub_22C3A5908(&qword_27D9C10E8, &qword_22C92BFB8);
  sub_22C369914(v30);
  v32 = *(v31 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  v249 = v34;
  sub_22C36BA0C();
  v255 = sub_22C90083C();
  v35 = sub_22C369824(v255);
  v254 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v253 = v39;
  sub_22C36BA0C();
  v252 = type metadata accessor for ResponseRedactor();
  v40 = sub_22C36985C(v252);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v273 = v43;
  sub_22C36BA0C();
  v259 = sub_22C9049FC();
  v44 = sub_22C369824(v259);
  v258 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C3698A8();
  v272 = v48;
  v49 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v49);
  v51 = *(v50 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v52);
  sub_22C36D5B4();
  v266 = v53;
  v54 = sub_22C3A5908(&qword_27D9C10F0, &unk_22C92BFC0);
  sub_22C369914(v54);
  v56 = *(v55 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v57);
  sub_22C36D5B4();
  v250 = v58;
  sub_22C36BA0C();
  v267 = sub_22C904BFC();
  v59 = sub_22C369824(v267);
  v265 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA64();
  v264 = v64;
  sub_22C36BA0C();
  v244 = sub_22C90000C();
  v65 = sub_22C369824(v244);
  v243[1] = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C36D234(v69);
  v70 = sub_22C3A5908(&qword_27D9BC428, &unk_22C912FD0);
  v71 = sub_22C369914(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  v77 = v243 - v76;
  v78 = sub_22C3A5908(&qword_27D9BC430, &qword_22C92BFD0);
  v79 = sub_22C369914(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v82);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA64();
  v247 = v84;
  sub_22C36BA0C();
  v85 = sub_22C90625C();
  v86 = sub_22C369824(v85);
  v270 = v87;
  v271 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22C3698A8();
  v269 = v90;
  v91 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v92 = sub_22C369914(v91);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22C369ABC();
  v97 = v95 - v96;
  MEMORY[0x28223BE20](v98);
  v100 = v243 - v99;
  v101 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v102 = sub_22C369914(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22C3698E4();
  v268 = v105;
  sub_22C369930();
  MEMORY[0x28223BE20](v106);
  sub_22C36CAC0();
  v107 = sub_22C3A5908(&qword_27D9C10F8, &qword_22C92BFD8);
  sub_22C369914(v107);
  v109 = *(v108 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v110);
  sub_22C387210();
  v111 = sub_22C3A5908(&qword_27D9C1100, &qword_22C92BFE0);
  sub_22C369914(v111);
  v113 = *(v112 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v114);
  v116 = v243 - v115;
  v117 = sub_22C90464C();
  v118 = sub_22C369824(v117);
  v262 = v119;
  v263 = v118;
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v118);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C90463C();
  v122 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  sub_22C36CA70();
  v123 = sub_22C90454C();
  sub_22C36985C(v123);
  (*(v124 + 16))(v116, v26 + v122, v123);
  sub_22C36BECC();
  sub_22C36C640(v125, v126, v127, v123);
  sub_22C9045EC();
  v128 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  sub_22C36CA70();
  v129 = sub_22C90474C();
  sub_22C8A5140(v129);
  (*(v130 + 16))(v20, v26 + v128, v22);
  v131 = sub_22C37049C();
  sub_22C8A51F0(v131, v132, v133, v22);
  sub_22C9045DC();
  sub_22C4E719C(v260, v100, &qword_27D9BB190, qword_22C90DD90);
  v134 = sub_22C90069C();
  sub_22C36D0A8(v100, 1, v134);
  if (v159)
  {
    sub_22C36DD80(v100, &qword_27D9BB190);
    v139 = 1;
  }

  else
  {
    sub_22C90624C();
    v135 = *(v134 - 8);
    (*(v135 + 16))(v97, v100, v134);
    v136 = sub_22C389250();
    sub_22C36EEBC(v136, v137, v138, v134);
    sub_22C90623C();
    (*(v135 + 8))(v100, v134);
    v139 = 0;
  }

  v140 = v271;
  sub_22C36C640(v23, v139, 1, v271);
  sub_22C9045FC();
  sub_22C90624C();
  sub_22C90068C();
  v141 = sub_22C389250();
  sub_22C36EEBC(v141, v142, v143, v134);
  sub_22C90623C();
  v144 = *(v270 + 16);
  v145 = v268;
  v146 = sub_22C36BA00();
  v147(v146);
  v148 = sub_22C37049C();
  sub_22C8A51F0(v148, v149, v150, v140);
  sub_22C90461C();
  sub_22C90258C();
  v151 = sub_22C90241C();
  sub_22C37BFE0(v77);
  if (v159)
  {
    v152 = &qword_27D9BC428;
    v153 = v77;
LABEL_10:
    sub_22C36DD80(v153, v152);
    goto LABEL_15;
  }

  v154 = v247;
  sub_22C90235C();
  sub_22C36BBA8(v151);
  (*(v155 + 8))(v77, v151);
  v156 = sub_22C90240C();
  v157 = sub_22C383C3C();
  sub_22C36D0A8(v157, v158, v156);
  if (v159)
  {
    v152 = &qword_27D9BC430;
    v153 = v154;
    goto LABEL_10;
  }

  v160 = sub_22C9023FC();
  v162 = v161;
  sub_22C36BBA8(v156);
  (*(v163 + 8))(v154, v156);
  sub_22C372280();
  v164 = sub_22C90A30C();
  if ((v164 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(v164))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(v274) = 0;
  sub_22C9045CC();
  v274 = v160;
  v275 = v162;
  v165 = v243[0];
  sub_22C8FFFEC();
  sub_22C3858B4();
  v166 = sub_22C90ACFC();
  sub_22C36FB04(&v275);
  v167(v165, v244);

  v145 = *(v166 + 16);

  if (!HIDWORD(v145))
  {
    LOBYTE(v274) = 0;
    sub_22C90462C();
LABEL_15:
    v168 = v264;
    sub_22C89D150();
    v169 = v263;
    v170 = swift_allocBox();
    v172 = sub_22C70C980(v170, v171);
    (*(v262 + 16))(v172, v22, v169);
    *v250 = v145;
    v173 = *MEMORY[0x277D1FB38];
    v174 = sub_22C90481C();
    sub_22C8A5140(v174);
    v176 = *(v175 + 104);
    sub_22C37A060();
    v177();
    v178 = sub_22C371A14();
    sub_22C36CD04(v178, v179, v180, v169);
    sub_22C90487C();
    v181 = v266;
    v182 = v267;
    v260 = *(v265 + 16);
    v260(v266, v168, v267);
    v183 = sub_22C371A14();
    v186 = sub_22C36CD04(v183, v184, v185, v182);
    sub_22C89D8DC(v186);
    sub_22C36DD80(v181, &qword_27D9C1068);
    sub_22C9049EC();
    v187 = v252;
    v188 = v273;
    v189 = v273 + *(v252 + 24);
    sub_22C907FFC();
    v190 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *v188 = v190;
    v191 = *(v187 + 20);
    v192 = v190;
    sub_22C9007BC();
    v193 = v253;
    sub_22C90082C();
    v194 = sub_22C90081C();
    sub_22C36FB04(&a11);
    v195(v193, v255);
    [v192 setTimeZone_];

    v196 = type metadata accessor for TypedValueFormatter(0);
    sub_22C386E98(*(v196 + 20));
    v197 = v251;
    sub_22C90258C();
    sub_22C37BFE0(v197);
    if (v159)
    {
      v198 = &qword_27D9BC428;
      v199 = v197;
    }

    else
    {
      v200 = v245;
      sub_22C90236C();
      sub_22C36BBA8(v151);
      (*(v201 + 8))(v197, v151);
      v202 = sub_22C90240C();
      sub_22C36D0A8(v200, 1, v202);
      if (!v203)
      {
        sub_22C9023FC();
        sub_22C36BBA8(v202);
        v205 = *(v204 + 8);
        v206 = sub_22C372FCC();
        v207(v206);
        v208 = sub_22C8A5220();
        sub_22C8E9F9C(v208, v209, v210);

        sub_22C9049AC();
        goto LABEL_22;
      }

      v198 = &qword_27D9BC430;
      v199 = v200;
    }

    sub_22C36DD80(v199, v198);
LABEL_22:
    v211 = v248;
    sub_22C90258C();
    sub_22C37BFE0(v211);
    if (v159)
    {
      v212 = &qword_27D9BC428;
      v213 = v211;
    }

    else
    {
      v214 = v246;
      sub_22C90235C();
      sub_22C36BBA8(v151);
      (*(v215 + 8))(v211, v151);
      v216 = sub_22C90240C();
      sub_22C37BFE0(v214);
      if (!v217)
      {
        sub_22C9023FC();
        sub_22C36BBA8(v216);
        v219 = *(v218 + 8);
        v220 = sub_22C3806B8();
        v221(v220);
        v222 = sub_22C8A5220();
        sub_22C8E9F9C(v222, v223, v224);

        v225 = v249;
        sub_22C90499C();
LABEL_29:
        v226 = *(v26 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId);
        v227 = *(v26 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId + 8);

        sub_22C36BA00();
        v228 = v272;
        sub_22C9049CC();
        sub_22C9049BC();
        sub_22C90460C();
        sub_22C90461C();
        v229 = v257;
        sub_22C89D150();
        v230 = v258;
        sub_22C646A98();
        v231 = v259;
        v232(v225, v228, v259);
        v233 = sub_22C371A14();
        sub_22C36CD04(v233, v234, v235, v231);
        sub_22C904A4C();
        v236 = v266;
        v237 = v267;
        v260(v266, v229, v267);
        v238 = sub_22C37049C();
        v241 = sub_22C8A51F0(v238, v239, v240, v237);
        sub_22C89D8DC(v241);
        sub_22C36DD80(v236, &qword_27D9C1068);
        v242 = *(v265 + 8);
        v242(v229, v237);
        sub_22C8A50D8();
        (*(v230 + 8))(v228, v231);
        v242(v264, v237);
        (*(v270 + 8))(v269, v271);
        (*(v262 + 8))(v22, v263);
        sub_22C36CC48();
        return;
      }

      v212 = &qword_27D9BC430;
      v213 = v214;
    }

    sub_22C36DD80(v213, v212);
    v225 = v249;
    goto LABEL_29;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_22C89F34C()
{
  sub_22C3704C4();
  v3 = sub_22C90454C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C3881C0();
  (*(v6 + 104))(v2, *MEMORY[0x277D1FAE0], v3);
  v9 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  swift_beginAccess();
  (*(v6 + 40))(v1 + v9, v2, v3);
  swift_endAccess();
  v10 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  swift_beginAccess();
  v11 = sub_22C90474C();
  sub_22C36985C(v11);
  (*(v12 + 24))(v1 + v10, v0);
  return swift_endAccess();
}

uint64_t sub_22C89F4A0()
{
  v1 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers;
  v2 = sub_22C90451C();
  sub_22C36C640(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId;
  v4 = sub_22C90069C();
  sub_22C36C640(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript;
  v6 = sub_22C90880C();
  sub_22C36C640(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source) = 0;
  v8 = *MEMORY[0x277D1FAD8];
  v9 = sub_22C90454C();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  v10 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason) = 0;
  v11 = *MEMORY[0x277D1FB28];
  v12 = sub_22C90474C();
  (*(*(v12 - 8) + 104))(v0 + v10, v11, v12);
  v13 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input;
  v14 = sub_22C90806C();
  sub_22C36C640(v0 + v13, 1, 1, v14);
  v15 = (v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_error) = 0;

  return sub_22C89D10C();
}

void sub_22C89F630()
{
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers, &qword_27D9BB7A0);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId, &qword_27D9BB190);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript, &qword_27D9C10D0);
  v1 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  v2 = sub_22C90454C();
  sub_22C36985C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  v5 = sub_22C90474C();
  sub_22C36985C(v5);
  (*(v6 + 8))(v0 + v4);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input, &qword_27D9C0F60);
  v7 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId + 8);

  v8 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_error);
}

uint64_t sub_22C89F76C()
{
  swift_weakDestroy();
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_identifiers, &qword_27D9BB7A0);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_rgId, &qword_27D9BB190);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_transcript, &qword_27D9C10D0);
  v1 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
  v2 = sub_22C90454C();
  sub_22C36985C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_fallbackReason;
  v5 = sub_22C90474C();
  sub_22C36985C(v5);
  (*(v6 + 8))(v0 + v4);
  sub_22C36DD80(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input, &qword_27D9C0F60);
  v7 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId + 8);

  return v0;
}

uint64_t sub_22C89F8A8()
{
  sub_22C89F76C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22C89F928()
{
  sub_22C8A0CB0(319, &qword_27D9BDFE0, MEMORY[0x277D1F738]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_22C8A0CB0(319, &qword_27D9C0190, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_22C8A0CB0(319, &qword_27D9C1000, MEMORY[0x277D1E628]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        v6 = sub_22C90454C();
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          v8 = sub_22C90474C();
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_22C8A0CB0(319, &qword_27D9C0FC8, MEMORY[0x277D1E2D8]);
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

uint64_t sub_22C89FB64()
{
  sub_22C90B21C();
  sub_22C37BB14();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C89FC20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C89FB64();
  *a2 = result;
  return result;
}

unint64_t sub_22C89FC50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22C89D078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_22C89FC7C()
{
  sub_22C36BA7C();
  sub_22C8A5230(v3);
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37FCFC();
  v8 = sub_22C3A5908(&qword_27D9C10C8, &unk_22C92BF90);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C374FF8();
  v12 = sub_22C904BFC();
  v13 = sub_22C369824(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C36A588();
  v16 = sub_22C904A3C();
  v17 = sub_22C369824(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C373CE0();
  sub_22C90471C();

  sub_22C38A15C();
  sub_22C90470C();
  sub_22C3860B4();
  v20 = swift_allocBox();
  v22 = sub_22C371F78(v20, v21);
  v23(v22);
  *v2 = v20;
  v24 = *MEMORY[0x277D1FB68];
  v25 = sub_22C904A0C();
  sub_22C8A5140(v25);
  v27 = *(v26 + 104);
  sub_22C37A060();
  v28();
  v29 = sub_22C382AAC();
  sub_22C36C640(v29, v30, v31, v0);
  sub_22C8A51E4();
  sub_22C904A5C();
  v32 = sub_22C38C28C();
  v33(v32);
  v34 = sub_22C8A5154();
  sub_22C89D8DC(v34);
  sub_22C36DD80(v1, &qword_27D9C1068);
  v35 = sub_22C376B3C();
  v36(v35);
  v37 = sub_22C8A5194();
  v38(v37);
  sub_22C36CC48();
}

void sub_22C89FEB8()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C10C8, &unk_22C92BF90);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C374FF8();
  v10 = sub_22C904BFC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C36A588();
  v14 = sub_22C90491C();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v18 = swift_allocBox();
  v20 = sub_22C371F78(v18, v19);
  v21(v20);
  *v1 = v18;
  v22 = *MEMORY[0x277D1FB70];
  v23 = sub_22C904A0C();
  sub_22C36985C(v23);
  v25 = *(v24 + 104);
  v26 = sub_22C375C78();
  v27(v26);
  sub_22C38AC64();
  sub_22C904A5C();
  v28 = sub_22C38C28C();
  v29(v28);
  v30 = sub_22C8A5154();
  sub_22C89D8DC(v30);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v31 = sub_22C376B3C();
  v32(v31);
  v33 = sub_22C8A5194();
  v34(v33);
  sub_22C36CC48();
}

uint64_t sub_22C8A00E0()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_22C8A013C()
{
  sub_22C36BA7C();
  sub_22C8A5230(v3);
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37FCFC();
  v8 = sub_22C3A5908(&qword_27D9C10A8, &qword_22C92BF70);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C374FF8();
  v12 = sub_22C904BFC();
  v13 = sub_22C369824(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C36A588();
  v16 = sub_22C9048EC();
  v17 = sub_22C369824(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C373CE0();
  sub_22C90471C();

  sub_22C38A15C();
  sub_22C90470C();
  sub_22C3860B4();
  v20 = swift_allocBox();
  v22 = sub_22C371F78(v20, v21);
  v23(v22);
  *v2 = v20;
  v24 = *MEMORY[0x277D1FB40];
  v25 = sub_22C9048BC();
  sub_22C8A5140(v25);
  v27 = *(v26 + 104);
  sub_22C37A060();
  v28();
  v29 = sub_22C382AAC();
  sub_22C36C640(v29, v30, v31, v0);
  sub_22C8A51E4();
  sub_22C90492C();
  v32 = sub_22C38C28C();
  v33(v32);
  v34 = sub_22C8A5154();
  sub_22C89D8DC(v34);
  sub_22C36DD80(v1, &qword_27D9C1068);
  v35 = sub_22C376B3C();
  v36(v35);
  v37 = sub_22C8A5194();
  v38(v37);
  sub_22C36CC48();
}

void sub_22C8A0378()
{
  sub_22C36BA7C();
  v102 = v1;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v101 = v8;
  v9 = sub_22C3A5908(&qword_27D9C10A8, &qword_22C92BF70);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v95 = v13;
  sub_22C36BA0C();
  v14 = sub_22C904BFC();
  v15 = sub_22C369824(v14);
  v99 = v16;
  v100 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v98 = v19;
  v20 = sub_22C3A5908(&qword_27D9C10B0, &qword_22C92BF78);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C36D5B4();
  v94 = v24;
  sub_22C36BA0C();
  v25 = sub_22C9045BC();
  v26 = sub_22C369824(v25);
  v96 = v27;
  v97 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v93 = v30;
  v31 = sub_22C3A5908(&qword_27D9C10B8, &qword_22C92BF80);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C387210();
  v35 = sub_22C3A5908(&qword_27D9C10A0, &qword_22C92BF68);
  v36 = sub_22C369914(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v93 - v43;
  v45 = sub_22C9046EC();
  v46 = sub_22C369824(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C378990();
  sub_22C9046DC();
  sub_22C4E719C(v3, v44, &qword_27D9C10A0, &qword_22C92BF68);
  v51 = sub_22C901DCC();
  sub_22C36D0A8(v44, 1, v51);
  if (v58)
  {
    sub_22C36DD80(v44, &qword_27D9C10A0);
  }

  else
  {
    sub_22C901DBC();
    sub_22C36BBA8(v51);
    (*(v52 + 8))(v44, v51);
  }

  sub_22C9046BC();
  sub_22C4E719C(v3, v41, &qword_27D9C10A0, &qword_22C92BF68);
  sub_22C36D0A8(v41, 1, v51);
  if (v58)
  {
    v53 = &qword_27D9C10A0;
    v54 = v41;
LABEL_10:
    sub_22C36DD80(v54, v53);
    *v0 = 0;
    v64 = v97;
    (*(v96 + 104))(v0, *MEMORY[0x277D1FAF8], v97);
    goto LABEL_11;
  }

  v55 = v94;
  sub_22C901DAC();
  sub_22C36BBA8(v51);
  (*(v56 + 8))(v41, v51);
  v57 = sub_22C902BFC();
  sub_22C36D0A8(v55, 1, v57);
  if (v58)
  {
    v53 = &qword_27D9C10B0;
    v54 = v55;
    goto LABEL_10;
  }

  v59 = v93;
  sub_22C8A0958();
  sub_22C36BBA8(v57);
  v61 = *(v60 + 8);
  v62 = sub_22C372FCC();
  v63(v62);
  v64 = v97;
  (*(v96 + 32))(v0, v59, v97);
LABEL_11:
  v65 = sub_22C37049C();
  v68 = sub_22C8A51F0(v65, v66, v67, v64);
  MEMORY[0x2318B1BA0](v68);
  v69 = v98;
  v70 = v102;
  sub_22C89D150();
  v71 = swift_allocBox();
  sub_22C70C980(v71, v72);
  sub_22C37BBE4();
  v73();
  *v95 = v0;
  v74 = *MEMORY[0x277D1FB48];
  v75 = sub_22C9048BC();
  sub_22C8A5140(v75);
  v77 = *(v76 + 104);
  sub_22C37A060();
  v78();
  sub_22C36BECC();
  sub_22C36C640(v79, v80, v81, v70);
  sub_22C90492C();
  v83 = v99;
  v82 = v100;
  sub_22C646A98();
  v84 = v101;
  v85(v101, v69, v82);
  v86 = sub_22C37049C();
  v89 = sub_22C8A51F0(v86, v87, v88, v82);
  sub_22C89D8DC(v89);
  sub_22C36DD80(v84, &qword_27D9C1068);
  (*(v83 + 8))(v69, v82);
  v90 = *(v48 + 8);
  v91 = sub_22C370114();
  v92(v91);
  sub_22C36CC48();
}

void sub_22C8A0958()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C9045BC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C3881C0();
  v10 = sub_22C3A5908(&qword_27D9C10C0, &qword_22C92BF88);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C370654();
  v14 = sub_22C902C0C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v40 - v24;
  sub_22C902BEC();
  sub_22C37BFE0(v1);
  if (v26)
  {
    sub_22C36DD80(v1, &qword_27D9C10C0);
    *v3 = 0;
    (*(v7 + 104))(v3, *MEMORY[0x277D1FAF8], v4);
  }

  else
  {
    v40[1] = v3;
    v27 = v17[4];
    v28 = sub_22C370114();
    v27(v28);
    (v27)(v22, v25, v14);
    v29 = v17[11];
    v30 = sub_22C3806B8();
    v32 = v31(v30);
    if (v32 == *MEMORY[0x277D1D268])
    {
      v33 = MEMORY[0x277D1FAF0];
    }

    else if (v32 == *MEMORY[0x277D1D260])
    {
      v33 = MEMORY[0x277D1FAE8];
    }

    else if (v32 == *MEMORY[0x277D1D258])
    {
      v33 = MEMORY[0x277D1FB00];
    }

    else
    {
      *v0 = 0;
      v33 = MEMORY[0x277D1FAF8];
    }

    (*(v7 + 104))(v0, *v33, v4);
    v34 = v17[1];
    v35 = sub_22C3806B8();
    v36(v35);
    v37 = *(v7 + 32);
    v38 = sub_22C37E83C();
    v39(v38);
  }

  sub_22C36CC48();
}

void sub_22C8A0CB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C8A0D04()
{
  sub_22C36BA7C();
  sub_22C8A5230(v3);
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37FCFC();
  v8 = sub_22C3A5908(&qword_27D9C1098, &qword_22C92BF60);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C374FF8();
  v12 = sub_22C904BFC();
  v13 = sub_22C369824(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C36A588();
  v16 = sub_22C90472C();
  v17 = sub_22C369824(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C373CE0();
  sub_22C90471C();

  sub_22C38A15C();
  sub_22C90470C();
  sub_22C3860B4();
  v20 = swift_allocBox();
  v22 = sub_22C371F78(v20, v21);
  v23(v22);
  *v2 = v20;
  v24 = *MEMORY[0x277D1FB08];
  v25 = sub_22C9046FC();
  sub_22C8A5140(v25);
  v27 = *(v26 + 104);
  sub_22C37A060();
  v28();
  v29 = sub_22C382AAC();
  sub_22C36C640(v29, v30, v31, v0);
  sub_22C8A51E4();
  sub_22C90485C();
  v32 = sub_22C38C28C();
  v33(v32);
  v34 = sub_22C8A5154();
  sub_22C89D8DC(v34);
  sub_22C36DD80(v1, &qword_27D9C1068);
  v35 = sub_22C376B3C();
  v36(v35);
  v37 = sub_22C8A5194();
  v38(v37);
  sub_22C36CC48();
}

void sub_22C8A0F40()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1098, &qword_22C92BF60);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C374FF8();
  v10 = sub_22C904BFC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C36A588();
  v14 = sub_22C90457C();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v18 = swift_allocBox();
  v20 = sub_22C371F78(v18, v19);
  v21(v20);
  *v1 = v18;
  v22 = *MEMORY[0x277D1FB10];
  v23 = sub_22C9046FC();
  sub_22C36985C(v23);
  v25 = *(v24 + 104);
  v26 = sub_22C375C78();
  v27(v26);
  sub_22C38AC64();
  sub_22C90485C();
  v28 = sub_22C38C28C();
  v29(v28);
  v30 = sub_22C8A5154();
  sub_22C89D8DC(v30);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v31 = sub_22C376B3C();
  v32(v31);
  v33 = sub_22C8A5194();
  v34(v33);
  sub_22C36CC48();
}

void sub_22C8A1168()
{
  sub_22C36BA7C();
  sub_22C8A5350();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1098, &qword_22C92BF60);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D83C();
  v47 = sub_22C904BFC();
  v10 = sub_22C369824(v47);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C370654();
  v13 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C37B974();
  v17 = sub_22C90467C();
  v18 = sub_22C369824(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C373CE0();
  sub_22C90466C();
  sub_22C37E22C();
  sub_22C8A52B8();
  sub_22C904B4C();
  v21 = sub_22C37049C();
  v25 = sub_22C8A51F0(v21, v22, v23, v24);
  MEMORY[0x2318B1B30](v25);
  sub_22C8A535C();
  sub_22C89D150();
  v26 = swift_allocBox();
  v28 = sub_22C388AD8(v26, v27);
  v29(v28);
  *v1 = v26;
  v30 = *MEMORY[0x277D1FB18];
  v31 = sub_22C9046FC();
  sub_22C8A5140(v31);
  v33 = *(v32 + 104);
  sub_22C37A060();
  v34();
  sub_22C36BECC();
  sub_22C36D1B8(v35, v36, v37);
  sub_22C90485C();
  sub_22C37F658();
  sub_22C8A5260();
  v38();
  v39 = sub_22C389250();
  v42 = sub_22C36EEBC(v39, v40, v41, v30);
  sub_22C89D8DC(v42);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v43 = sub_22C8A5240();
  v44(v43);
  v45 = sub_22C8A5250();
  v46(v45);
  sub_22C36CC48();
}

uint64_t sub_22C8A140C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_22C8A1468()
{
  sub_22C36BA7C();
  v65 = v0;
  v4 = v3;
  v6 = v5;
  v62 = v7;
  v8 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36FF70();
  v12 = sub_22C3A5908(&qword_27D9C1090, &qword_22C92BF58);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C371BB4();
  v16 = sub_22C904BFC();
  v17 = sub_22C369824(v16);
  v63 = v18;
  v64 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v23 = v22 - v21;
  v24 = sub_22C3A5908(&qword_27D9BFD08, &qword_22C925480);
  v25 = sub_22C369914(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v28);
  v30 = &v62 - v29;
  v31 = sub_22C90497C();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C378990();
  v37 = *v4;
  sub_22C90496C();
  if (v6)
  {

    sub_22C8A17AC();
    sub_22C90494C();
  }

  if (v37 != 2)
  {
    sub_22C8A17AC();
    sub_22C8A51E4();
    sub_22C90495C();
  }

  v38 = v65;
  sub_22C89D150();
  v39 = swift_allocBox();
  sub_22C70C980(v39, v40);
  sub_22C8A51A4();
  v42(v41);
  *v2 = v30;
  v43 = *MEMORY[0x277D1FB50];
  v44 = sub_22C90493C();
  sub_22C8A5140(v44);
  v46 = *(v45 + 104);
  sub_22C37A060();
  v48(v47);
  sub_22C36BECC();
  sub_22C36C640(v49, v50, v51, v38);
  sub_22C90498C();
  v53 = v63;
  v52 = v64;
  sub_22C646A98();
  v54(v1, v23, v52);
  v55 = sub_22C371A14();
  v58 = sub_22C36CD04(v55, v56, v57, v52);
  sub_22C89D8DC(v58);
  sub_22C36DD80(v1, &qword_27D9C1068);
  (*(v53 + 8))(v23, v52);
  v59 = *(v34 + 8);
  v60 = sub_22C370114();
  v61(v60);
  sub_22C36CC48();
}

void sub_22C8A17AC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9062AC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  sub_22C90629C();
  v49 = v3;
  v50 = v1;
  sub_22C3858B4();
  v15 = sub_22C90AD9C();

  v16 = *(v15 + 16);
  if (v16 <= 3 && v16)
  {
    v47 = v5;
    v48 = v14;
    v44 = v9;
    v45 = *(v15 + 16);
    v46 = v6;
    v17 = 0;
    v18 = v15 + 56;
    v19 = -v16;
    v20 = MEMORY[0x277D84F90];
LABEL_4:
    v21 = (v18 + 32 * v17++);
    while (v19 + v17 != 1)
    {
      if ((v17 - 1) >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v23 = *(v21 - 3);
      v22 = *(v21 - 2);
      if ((v22 ^ v23) >> 14)
      {
        v25 = *(v21 - 1);
        v24 = *v21;
        if ((*v21 & 0x1000000000000000) != 0)
        {
          v29 = *v21;

          sub_22C8A3F68();
          v28 = v30;

          if ((v28 & 0x100000000) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if ((v24 & 0x2000000000000000) != 0)
          {
            v27 = HIBYTE(v24) & 0xF;
            v49 = *(v21 - 1);
            v50 = v24 & 0xFFFFFFFFFFFFFFLL;
            v26 = &v49;
          }

          else if ((v25 & 0x1000000000000000) != 0)
          {
            v26 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v27 = v25 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = *(v21 - 1);
            v32 = *v21;
            v26 = sub_22C90AFCC();
          }

          v28 = sub_22C8A4C9C(v26, v27, v23, v22, v25, v24, 0xAu);

          if ((v28 & 0x100000000) == 0)
          {
LABEL_18:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = *(v20 + 16);
              sub_22C594734();
              v20 = v35;
            }

            v33 = *(v20 + 16);
            if (v33 >= *(v20 + 24) >> 1)
            {
              sub_22C594734();
              v20 = v36;
            }

            *(v20 + 16) = v33 + 1;
            *(v20 + 4 * v33 + 32) = v28;
            v18 = v15 + 56;
            goto LABEL_4;
          }
        }
      }

      ++v17;
      v21 += 4;
    }

    if (*(v20 + 16) != v45)
    {
      v6 = v46;
      (*(v44 + 8))(v48, v46);
      v5 = v47;
      goto LABEL_24;
    }

    v6 = v46;
    v5 = v47;
    if (v45 == 3)
    {
      v41 = *(v20 + 32);
    }

    else
    {
      v41 = 0;
    }

    sub_22C383EB0(v41);
    sub_22C90626C();
    if (v45 == 1)
    {
      v42 = 0;
    }

    else
    {
      if ((v45 - 2) >= *(v20 + 16))
      {
        goto LABEL_39;
      }

      v42 = *(v20 + 4 * (v45 - 2) + 32);
    }

    sub_22C383EB0(v42);
    sub_22C90627C();
    if (v45 <= *(v20 + 16))
    {
      v43 = *(v20 + 4 * v45 + 28);

      LOBYTE(v49) = 0;
      sub_22C90628C();
      (*(v44 + 32))(v47, v15, v46);
      v40 = 0;
      goto LABEL_25;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    swift_bridgeObjectRetain_n();

    __break(1u);
  }

  else
  {
    v37 = *(v9 + 8);
    v38 = sub_22C3806B8();
    v39(v38);
LABEL_24:

    v40 = 1;
LABEL_25:
    sub_22C36C640(v5, v40, 1, v6);
    sub_22C36CC48();
  }
}

void sub_22C8A1B74()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1090, &qword_22C92BF58);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C374FF8();
  v10 = sub_22C904BFC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C36A588();
  v14 = sub_22C90480C();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v18 = swift_allocBox();
  v20 = sub_22C371F78(v18, v19);
  v21(v20);
  *v1 = v18;
  v22 = *MEMORY[0x277D1FB58];
  v23 = sub_22C90493C();
  sub_22C36985C(v23);
  v25 = *(v24 + 104);
  v26 = sub_22C375C78();
  v27(v26);
  sub_22C38AC64();
  sub_22C90498C();
  v28 = sub_22C38C28C();
  v29(v28);
  v30 = sub_22C8A5154();
  sub_22C89D8DC(v30);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v31 = sub_22C376B3C();
  v32(v31);
  v33 = sub_22C8A5194();
  v34(v33);
  sub_22C36CC48();
}

void sub_22C8A1D9C()
{
  sub_22C36BA7C();
  sub_22C8A5350();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1090, &qword_22C92BF58);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D83C();
  v47 = sub_22C904BFC();
  v10 = sub_22C369824(v47);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C370654();
  v13 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C37B974();
  v17 = sub_22C9048AC();
  v18 = sub_22C369824(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C373CE0();
  sub_22C90466C();
  sub_22C37E22C();
  sub_22C8A52B8();
  sub_22C904B4C();
  v21 = sub_22C37049C();
  v25 = sub_22C8A51F0(v21, v22, v23, v24);
  MEMORY[0x2318B1D60](v25);
  sub_22C8A535C();
  sub_22C89D150();
  v26 = swift_allocBox();
  v28 = sub_22C388AD8(v26, v27);
  v29(v28);
  *v1 = v26;
  v30 = *MEMORY[0x277D1FB60];
  v31 = sub_22C90493C();
  sub_22C8A5140(v31);
  v33 = *(v32 + 104);
  sub_22C37A060();
  v34();
  sub_22C36BECC();
  sub_22C36D1B8(v35, v36, v37);
  sub_22C90498C();
  sub_22C37F658();
  sub_22C8A5260();
  v38();
  v39 = sub_22C389250();
  v42 = sub_22C36EEBC(v39, v40, v41, v30);
  sub_22C89D8DC(v42);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v43 = sub_22C8A5240();
  v44(v43);
  v45 = sub_22C8A5250();
  v46(v45);
  sub_22C36CC48();
}

uint64_t sub_22C8A2040()
{
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return sub_22C89D10C();
}

uint64_t sub_22C8A2054()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];
}

void *sub_22C8A208C()
{
  swift_weakDestroy();
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return v0;
}

uint64_t sub_22C8A20C4()
{
  sub_22C8A208C();

  return swift_deallocClassInstance();
}

void sub_22C8A211C()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1088, &qword_22C92BF50);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C374FF8();
  v10 = sub_22C904BFC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C36A588();
  v14 = sub_22C904AFC();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v18 = swift_allocBox();
  v20 = sub_22C371F78(v18, v19);
  v21(v20);
  *v1 = v18;
  v22 = *MEMORY[0x277D1FB78];
  v23 = sub_22C904ACC();
  sub_22C36985C(v23);
  v25 = *(v24 + 104);
  v26 = sub_22C375C78();
  v27(v26);
  sub_22C38AC64();
  sub_22C904B0C();
  v28 = sub_22C38C28C();
  v29(v28);
  v30 = sub_22C8A5154();
  sub_22C89D8DC(v30);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v31 = sub_22C376B3C();
  v32(v31);
  v33 = sub_22C8A5194();
  v34(v33);
  sub_22C36CC48();
}

void sub_22C8A2344()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1088, &qword_22C92BF50);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C374FF8();
  v10 = sub_22C904BFC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C36A588();
  v14 = sub_22C904A8C();
  v15 = sub_22C369824(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v18 = swift_allocBox();
  v20 = sub_22C371F78(v18, v19);
  v21(v20);
  *v1 = v18;
  v22 = *MEMORY[0x277D1FB80];
  v23 = sub_22C904ACC();
  sub_22C36985C(v23);
  v25 = *(v24 + 104);
  v26 = sub_22C375C78();
  v27(v26);
  sub_22C38AC64();
  sub_22C904B0C();
  v28 = sub_22C38C28C();
  v29(v28);
  v30 = sub_22C8A5154();
  sub_22C89D8DC(v30);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v31 = sub_22C376B3C();
  v32(v31);
  v33 = sub_22C8A5194();
  v34(v33);
  sub_22C36CC48();
}

void sub_22C8A256C()
{
  sub_22C36BA7C();
  sub_22C8A5350();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1088, &qword_22C92BF50);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D83C();
  v47 = sub_22C904BFC();
  v10 = sub_22C369824(v47);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C370654();
  v13 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C37B974();
  v17 = sub_22C904ABC();
  v18 = sub_22C369824(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C373CE0();
  sub_22C90466C();
  sub_22C37E22C();
  sub_22C8A52B8();
  sub_22C904B4C();
  v21 = sub_22C37049C();
  v25 = sub_22C8A51F0(v21, v22, v23, v24);
  MEMORY[0x2318B1F70](v25);
  sub_22C8A535C();
  sub_22C89D150();
  v26 = swift_allocBox();
  v28 = sub_22C388AD8(v26, v27);
  v29(v28);
  *v1 = v26;
  v30 = *MEMORY[0x277D1FB88];
  v31 = sub_22C904ACC();
  sub_22C8A5140(v31);
  v33 = *(v32 + 104);
  sub_22C37A060();
  v34();
  sub_22C36BECC();
  sub_22C36D1B8(v35, v36, v37);
  sub_22C904B0C();
  sub_22C37F658();
  sub_22C8A5260();
  v38();
  v39 = sub_22C389250();
  v42 = sub_22C36EEBC(v39, v40, v41, v30);
  sub_22C89D8DC(v42);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v43 = sub_22C8A5240();
  v44(v43);
  v45 = sub_22C8A5250();
  v46(v45);
  sub_22C36CC48();
}

void sub_22C8A2834()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C36D5B4();
  v85 = v5;
  v6 = sub_22C3A5908(&qword_27D9C1070, &unk_22C92BF30);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v84 = v10;
  v11 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C3881C0();
  v83 = sub_22C9047AC();
  v15 = sub_22C369824(v83);
  v81 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v77 = v19;
  sub_22C36BA0C();
  v82 = sub_22C904BFC();
  v20 = sub_22C369824(v82);
  v80 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v75 = v25 - v24;
  v26 = sub_22C9047DC();
  v27 = sub_22C369824(v26);
  v78 = v28;
  v79 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v76 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v34 = &v74 - v33;
  v35 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  sub_22C371BB4();
  v39 = sub_22C90069C();
  sub_22C36985C(v39);
  v41 = *(v40 + 16);
  v42 = sub_22C372FCC();
  v41(v42);
  sub_22C36BECC();
  sub_22C36C640(v43, v44, v45, v39);
  v46 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId;
  v47 = v86;
  swift_beginAccess();
  sub_22C381470(v0, v47 + v46, &qword_27D9BB190, qword_22C90DD90);
  swift_endAccess();
  sub_22C90456C();
  sub_22C8A5214();
  v74 = v34;
  sub_22C90455C();
  sub_22C89D150();
  v48 = v77;
  sub_22C90479C();
  sub_22C90624C();
  v49 = sub_22C372FCC();
  v41(v49);
  sub_22C36BECC();
  sub_22C36C640(v50, v51, v52, v39);
  sub_22C90623C();
  sub_22C90625C();
  sub_22C36BECC();
  sub_22C36C640(v53, v54, v55, v56);
  sub_22C90478C();
  v58 = v78;
  v57 = v79;
  (*(v78 + 16))(v76, v34, v79);
  sub_22C90475C();
  v59 = v81;
  sub_22C37BBE4();
  v60 = v83;
  v61 = v48;
  v62(v84, v48, v83);
  v63 = sub_22C371A14();
  sub_22C36CD04(v63, v64, v65, v60);
  v66 = v75;
  sub_22C90486C();
  v67 = v80;
  v68 = v85;
  v69 = v82;
  (*(v80 + 16))(v85, v66, v82);
  v70 = sub_22C37049C();
  v73 = sub_22C8A51F0(v70, v71, v72, v69);
  sub_22C89D8DC(v73);
  sub_22C36DD80(v68, &qword_27D9C1068);
  (*(v59 + 8))(v61, v60);
  (*(v67 + 8))(v66, v69);
  (*(v58 + 8))(v74, v57);
  sub_22C36CC48();
}

void sub_22C8A2CE0()
{
  sub_22C36BA7C();
  v4 = v1;
  v5 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v98 = v9;
  v10 = sub_22C3A5908(&qword_27D9C1070, &unk_22C92BF30);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v97 = v14;
  sub_22C36BA0C();
  v15 = sub_22C90069C();
  v16 = sub_22C369824(v15);
  v90[0] = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v90[2] = v20;
  v21 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  v90[1] = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  v28 = v90 - v27;
  v29 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  sub_22C37B974();
  v33 = sub_22C9047AC();
  v34 = sub_22C369824(v33);
  v95 = v35;
  v96 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  sub_22C371BB4();
  v38 = sub_22C904BFC();
  v39 = sub_22C369824(v38);
  v93 = v40;
  v94 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v45 = v44 - v43;
  v92 = sub_22C9045AC();
  v46 = sub_22C369824(v92);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v51);
  v53 = v90 - v52;
  sub_22C90456C();
  v100 = v53;
  sub_22C90455C();
  v91 = v45;
  sub_22C89D150();
  v54 = v2;
  sub_22C90479C();
  v55 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId;
  sub_22C36CA70();
  v99 = v4;
  sub_22C4E719C(v4 + v55, v28, &qword_27D9BB190, qword_22C90DD90);
  v56 = sub_22C383C3C();
  v57 = v15;
  if (sub_22C370B74(v56, v58, v15))
  {
    sub_22C36DD80(v28, &qword_27D9BB190);
    v59 = 1;
  }

  else
  {
    v60 = v90[0];
    v61 = *(v90[0] + 16);
    v62 = sub_22C372FCC();
    (v61)(v62);
    sub_22C36DD80(v28, &qword_27D9BB190);
    sub_22C90624C();
    sub_22C634004();
    v61();
    v63 = sub_22C371A14();
    sub_22C36CD04(v63, v64, v65, v57);
    sub_22C90623C();
    v66 = *(v60 + 8);
    v67 = sub_22C3806B8();
    v68(v67);
    v59 = 0;
  }

  v69 = sub_22C90625C();
  sub_22C8A51F0(v0, v59, 1, v69);
  sub_22C90478C();
  v70 = v92;
  (*(v48 + 16))(v3, v100, v92);
  sub_22C90476C();
  v72 = v95;
  v71 = v96;
  sub_22C389280();
  v73 = sub_22C37E83C();
  v74(v73);
  v75 = sub_22C37049C();
  sub_22C8A51F0(v75, v76, v77, v71);
  v78 = v91;
  sub_22C90486C();
  v79 = v93;
  v80 = v94;
  sub_22C37BBE4();
  v81 = v98;
  v82(v98, v78, v80);
  v83 = sub_22C37049C();
  v86 = sub_22C8A51F0(v83, v84, v85, v80);
  sub_22C89D8DC(v86);
  sub_22C36DD80(v81, &qword_27D9C1068);
  (*(v72 + 8))(v54, v71);
  v87 = *(v79 + 8);
  v88 = sub_22C36CA88();
  v89(v88);
  (*(v48 + 8))(v100, v70);
  sub_22C36CC48();
}

void sub_22C8A3204()
{
  sub_22C36BA7C();
  v7 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C36D5B4();
  v101 = v11;
  v12 = sub_22C3A5908(&qword_27D9C1070, &unk_22C92BF30);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C36D5B4();
  v100 = v16;
  sub_22C36BA0C();
  v17 = sub_22C90069C();
  v18 = sub_22C369824(v17);
  v93 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  v94 = v22;
  v23 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v24 = sub_22C369914(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  v92[2] = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  v30 = v92 - v29;
  v31 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C374FF8();
  v35 = sub_22C9047AC();
  v36 = sub_22C369824(v35);
  v98 = v37;
  v99 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  sub_22C370654();
  v40 = sub_22C904BFC();
  v41 = sub_22C369824(v40);
  v96 = v42;
  v97 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  sub_22C387210();
  v45 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  sub_22C36D83C();
  v103 = sub_22C9046AC();
  v49 = sub_22C369824(v103);
  v95 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v53);
  sub_22C36CAC0();
  sub_22C90466C();
  swift_getErrorValue();
  sub_22C89E2A8();
  sub_22C904B4C();
  sub_22C36BECC();
  sub_22C36C640(v54, v55, v56, v57);
  v58 = v4;
  v59 = v1;
  v102 = v2;
  MEMORY[0x2318B1B60](v58);
  v60 = v0;
  sub_22C89D150();
  v61 = v3;
  sub_22C90479C();
  v62 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId;
  sub_22C36CA70();
  sub_22C4E719C(v59 + v62, v30, &qword_27D9BB190, qword_22C90DD90);
  v63 = sub_22C383C3C();
  if (sub_22C370B74(v63, v64, v17))
  {
    sub_22C36DD80(v30, &qword_27D9BB190);
    v65 = 1;
  }

  else
  {
    v67 = v93;
    v66 = v94;
    v92[1] = v59;
    v68 = *(v93 + 16);
    v68(v94, v30, v17);
    sub_22C36DD80(v30, &qword_27D9BB190);
    sub_22C90624C();
    v69 = sub_22C36A724();
    (v68)(v69);
    v70 = sub_22C371A14();
    sub_22C36CD04(v70, v71, v72, v17);
    sub_22C90623C();
    (*(v67 + 8))(v66, v17);
    v65 = 0;
  }

  v73 = sub_22C90625C();
  sub_22C36C640(v5, v65, 1, v73);
  sub_22C90478C();
  v74 = v95;
  (*(v95 + 16))(v6, v102, v103);
  MEMORY[0x2318B1C50](v6);
  v76 = v98;
  v75 = v99;
  sub_22C389280();
  v77 = sub_22C37E83C();
  v78(v77);
  v79 = sub_22C37049C();
  sub_22C8A51F0(v79, v80, v81, v75);
  sub_22C90486C();
  v83 = v96;
  v82 = v97;
  sub_22C37BBE4();
  v84 = v101;
  v85(v101, v60, v82);
  sub_22C36BECC();
  sub_22C36C640(v86, v87, v88, v82);
  sub_22C89D8DC(v84);
  sub_22C36DD80(v84, &qword_27D9C1068);
  (*(v76 + 8))(v61, v75);
  v89 = *(v83 + 8);
  v90 = sub_22C372280();
  v91(v90);
  (*(v74 + 8))(v102, v103);
  sub_22C36CC48();
}

uint64_t sub_22C8A37F4(void *a1, uint64_t a2)
{
  swift_weakDestroy();
  sub_22C36DD80(v2 + *a1, a2);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 52);

  return swift_deallocClassInstance();
}

void sub_22C8A38C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_22C8A0CB0(319, a4, a5);
  if (v6 <= 0x3F)
  {
    v7 = *(v5 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationBiomeRoot.RequestValidation.ValidationResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ResponseGenerationTriageReport.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationTriageReport.ModelInference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C8A3BF8()
{
  result = qword_27D9C1030;
  if (!qword_27D9C1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1030);
  }

  return result;
}

unint64_t sub_22C8A3C50()
{
  result = qword_27D9C1038;
  if (!qword_27D9C1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1038);
  }

  return result;
}

unint64_t sub_22C8A3CA8()
{
  result = qword_27D9C1040;
  if (!qword_27D9C1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1040);
  }

  return result;
}

unint64_t sub_22C8A3D00()
{
  result = qword_27D9C1048;
  if (!qword_27D9C1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1048);
  }

  return result;
}

unint64_t sub_22C8A3D58()
{
  result = qword_27D9C1050;
  if (!qword_27D9C1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1050);
  }

  return result;
}

unint64_t sub_22C8A3DB0()
{
  result = qword_27D9C1058;
  if (!qword_27D9C1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1058);
  }

  return result;
}

unint64_t sub_22C8A3E08()
{
  result = qword_27D9C1060;
  if (!qword_27D9C1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1060);
  }

  return result;
}

id sub_22C8A3E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C90A0EC();

  if (a4)
  {
    v8 = sub_22C909EAC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_22C8A3F0C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_22C90A41C();
    sub_22C37B124(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x2318B78B0](15, a1 >> 16);
    sub_22C37B124(v3);
    return v4 | 8;
  }
}

void sub_22C8A3F68()
{
  sub_22C387D14();

  v2 = sub_22C90A49C();
  v3 = v1;
  if ((v1 & 0x1000000000000000) != 0)
  {
    sub_22C36A724();
    v2 = sub_22C8A48C8();
    v39 = v38;

    v3 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v1 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22C36A724();
      v4 = sub_22C90AFCC();
    }

    v6 = *v4;
    if (v6 == 43)
    {
      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          sub_22C37751C();
          if (v16)
          {
            sub_22C8A5344();
            while (1)
            {
              sub_22C8A5338();
              if (v12 && v20 < v18)
              {
                v21 = -48;
              }

              else if (v20 < 0x41 || v20 >= v17)
              {
                sub_22C8A52A0();
                if (!v12 || v20 >= v22)
                {
                  goto LABEL_130;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }

              v23 = v19 * v0;
              if ((v23 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v23, (v20 + v21)))
              {
                sub_22C8A532C();
                if (!v24)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v6 != 45)
    {
      if (v5)
      {
        sub_22C38B580();
        if (v25 ^ v26 | v24)
        {
          v29 = v32;
        }

        if (v25 ^ v26 | v24)
        {
          v30 = 65;
        }

        if (!(v25 ^ v26 | v24))
        {
          v31 = 58;
        }

        if (v27)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v27;
            if (v34 < 0x30 || v34 >= v31)
            {
              if (v34 < 0x41 || v34 >= v30)
              {
                if (v34 < 0x61 || v34 >= v29)
                {
                  goto LABEL_130;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * v0;
            if ((v36 & 0xFFFFFFFF00000000) == 0)
            {
              v37 = v34 + v35;
              v12 = __CFADD__(v36, v37);
              v33 = v36 + v37;
              if (!v12)
              {
                ++v27;
                if (--v28)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        sub_22C37751C();
        if (v7)
        {
          sub_22C8A5344();
          while (1)
          {
            sub_22C8A5338();
            if (v12 && v11 < v9)
            {
              v13 = -48;
            }

            else if (v11 < 0x41 || v11 >= v8)
            {
              sub_22C8A52A0();
              if (!v12 || v11 >= v14)
              {
                break;
              }

              v13 = -87;
            }

            else
            {
              v13 = -55;
            }

            v15 = v10 * v0;
            if ((v15 & 0xFFFFFFFF00000000) == 0 && v15 >= (v11 + v13))
            {
              sub_22C8A532C();
              if (!v24)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_22C8A5288();
  if (!v24)
  {
    if (v41 != 45)
    {
      if (v40)
      {
        sub_22C8A517C();
        while (1)
        {
          sub_22C386C24();
          if (v12 && v59 < v58)
          {
            v60 = -48;
          }

          else if (v59 < 0x41 || v59 >= v57)
          {
            sub_22C8A52A0();
            if (!v12 || v59 >= v61)
            {
              goto LABEL_130;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }

          v62 = v56 * v0;
          if ((v62 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v62, (v59 + v60)))
          {
            sub_22C37ADF8();
            if (!v24)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        sub_22C8A517C();
        sub_22C8A51B0();
        while (1)
        {
          sub_22C386C24();
          if (v12 && v45 < v44)
          {
            v46 = -48;
          }

          else if (v45 < 0x41 || v45 >= v43)
          {
            sub_22C8A52A0();
            if (!v12 || v45 >= v47)
            {
              goto LABEL_130;
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }

          v48 = v42 * v0;
          if ((v48 & 0xFFFFFFFF00000000) == 0 && v48 >= (v45 + v46))
          {
            sub_22C37ADF8();
            if (!v24)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v40)
  {
    if (v40 != 1)
    {
      sub_22C8A517C();
      sub_22C8A51B0();
      while (1)
      {
        sub_22C386C24();
        if (v12 && v52 < v51)
        {
          v53 = -48;
        }

        else if (v52 < 0x41 || v52 >= v50)
        {
          sub_22C8A52A0();
          if (!v12 || v52 >= v54)
          {
            goto LABEL_130;
          }

          v53 = -87;
        }

        else
        {
          v53 = -55;
        }

        v55 = v49 * v0;
        if ((v55 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v55, (v52 + v53)))
        {
          sub_22C37ADF8();
          if (!v24)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}

void sub_22C8A4410()
{
  sub_22C387D14();

  v2 = sub_22C90A49C();
  v3 = v1;
  if ((v1 & 0x1000000000000000) != 0)
  {
    sub_22C36A724();
    v2 = sub_22C8A48C8();
    v36 = v35;

    v3 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v1 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22C36A724();
      v4 = sub_22C90AFCC();
    }

    v6 = *v4;
    if (v6 == 43)
    {
      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          sub_22C37751C();
          if (v15)
          {
            sub_22C8A5344();
            while (1)
            {
              sub_22C8A5338();
              if (v12 && v19 < v17)
              {
                v20 = -48;
              }

              else if (v19 < 0x41 || v19 >= v16)
              {
                sub_22C5CA9F8();
                if (!v12 || v19 >= v21)
                {
                  goto LABEL_130;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }

              if ((v18 * v0) >> 64 == (v18 * v0) >> 63 && !__OFADD__(v18 * v0, (v19 + v20)))
              {
                sub_22C8A532C();
                if (!v22)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v6 != 45)
    {
      if (v5)
      {
        sub_22C38B580();
        if (v23 ^ v24 | v22)
        {
          v27 = v30;
        }

        if (v23 ^ v24 | v22)
        {
          v28 = 65;
        }

        if (!(v23 ^ v24 | v22))
        {
          v29 = 58;
        }

        if (v25)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v25;
            if (v32 < 0x30 || v32 >= v29)
            {
              if (v32 < 0x41 || v32 >= v28)
              {
                if (v32 < 0x61 || v32 >= v27)
                {
                  goto LABEL_130;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * v0;
            if ((v31 * v0) >> 64 == (v31 * v0) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v25;
                if (--v26)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        sub_22C37751C();
        if (v7)
        {
          sub_22C8A5344();
          while (1)
          {
            sub_22C8A5338();
            if (v12 && v11 < v9)
            {
              v13 = -48;
            }

            else if (v11 < 0x41 || v11 >= v8)
            {
              sub_22C5CA9F8();
              if (!v12 || v11 >= v14)
              {
                break;
              }

              v13 = -87;
            }

            else
            {
              v13 = -55;
            }

            if ((v10 * v0) >> 64 == (v10 * v0) >> 63 && !__OFSUB__(v10 * v0, (v11 + v13)))
            {
              sub_22C8A532C();
              if (!v22)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_22C8A5288();
  if (!v22)
  {
    if (v38 != 45)
    {
      if (v37)
      {
        sub_22C8A517C();
        while (1)
        {
          sub_22C386C24();
          if (v12 && v54 < v53)
          {
            v55 = -48;
          }

          else if (v54 < 0x41 || v54 >= v52)
          {
            sub_22C5CA9F8();
            if (!v12 || v54 >= v56)
            {
              goto LABEL_130;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }

          if ((v51 * v0) >> 64 == (v51 * v0) >> 63 && !__OFADD__(v51 * v0, (v54 + v55)))
          {
            sub_22C37ADF8();
            if (!v22)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        sub_22C8A517C();
        sub_22C8A51B0();
        while (1)
        {
          sub_22C386C24();
          if (v12 && v42 < v41)
          {
            v43 = -48;
          }

          else if (v42 < 0x41 || v42 >= v40)
          {
            sub_22C5CA9F8();
            if (!v12 || v42 >= v44)
            {
              goto LABEL_130;
            }

            v43 = -87;
          }

          else
          {
            v43 = -55;
          }

          if ((v39 * v0) >> 64 == (v39 * v0) >> 63 && !__OFSUB__(v39 * v0, (v42 + v43)))
          {
            sub_22C37ADF8();
            if (!v22)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v37)
  {
    if (v37 != 1)
    {
      sub_22C8A517C();
      sub_22C8A51B0();
      while (1)
      {
        sub_22C386C24();
        if (v12 && v48 < v47)
        {
          v49 = -48;
        }

        else if (v48 < 0x41 || v48 >= v46)
        {
          sub_22C5CA9F8();
          if (!v12 || v48 >= v50)
          {
            goto LABEL_130;
          }

          v49 = -87;
        }

        else
        {
          v49 = -55;
        }

        if ((v45 * v0) >> 64 == (v45 * v0) >> 63 && !__OFADD__(v45 * v0, (v48 + v49)))
        {
          sub_22C37ADF8();
          if (!v22)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}