void sub_22BC81724(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v41 = *(a4 + 16);
  v5 = *(v41 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v38 = sub_22BDB43E4();
  v8 = *(v38 - 8);
  if (*(v8 + 84) <= 0x7FFFFFFFu)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v39 = *(v8 + 84);
  v40 = v9;
  v10 = v9 - 1;
  if (v9 - 1 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = sub_22BDBA044();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  if (v11 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v11;
  }

  if (v6)
  {
    v17 = *(v5 + 64);
  }

  else
  {
    v17 = *(v5 + 64) + 1;
  }

  v18 = *(v8 + 80) & 0xF8 | 7;
  v19 = *(v8 + 64) + 7;
  v20 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v17 + v18;
  v22 = *(v14 + 80);
  v23 = *(*(v12 - 8) + 64) + ((v22 + 8 + v20 + (v21 & ~v18)) & ~v22) + 1;
  v24 = 8 * v23;
  if (a3 > v16)
  {
    if (v23 <= 3)
    {
      v25 = ((a3 - v16 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v25))
      {
        v13 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v13 = v26;
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

  if (v16 < a2)
  {
    v27 = ~v16 + a2;
    if (v23 < 4)
    {
      v29 = (v27 >> v24) + 1;
      if (*(*(v12 - 8) + 64) + ((v22 + 8 + v20 + (v21 & ~(*(v8 + 80) & 0xF8 | 7))) & ~v22) != -1)
      {
        v32 = v13;
        v33 = v27 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v33;
          a1[2] = BYTE2(v33);
          v13 = v32;
        }

        else
        {
          v13 = v32;
          if (v23 == 2)
          {
            *a1 = v33;
          }

          else
          {
            *a1 = v27;
          }
        }
      }
    }

    else
    {
      v28 = v13;
      bzero(a1, v23);
      v13 = v28;
      *a1 = v27;
      v29 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v23] = v29;
        break;
      case 2:
        *&a1[v23] = v29;
        break;
      case 3:
        goto LABEL_65;
      case 4:
        *&a1[v23] = v29;
        break;
      default:
        return;
    }

    return;
  }

  v30 = ~v18;
  v31 = a1;
  switch(v13)
  {
    case 1:
      a1[v23] = 0;
      if (a2)
      {
        goto LABEL_39;
      }

      return;
    case 2:
      *&a1[v23] = 0;
      if (a2)
      {
        goto LABEL_39;
      }

      return;
    case 3:
LABEL_65:
      __break(1u);
      return;
    case 4:
      *&a1[v23] = 0;
      goto LABEL_38;
    default:
LABEL_38:
      if (!a2)
      {
        return;
      }

LABEL_39:
      if (v7 == v16)
      {
        v34 = a2 + 1;
        v15 = v6;
        v12 = v41;
LABEL_41:

        sub_22BB336D0(v31, v34, v15, v12);
        return;
      }

      v35 = (&a1[v21] & v30);
      if (v10 != v16)
      {
        v36 = (v35 + v20);
        if (v16 <= 0x7FFFFFFE)
        {
          *v36 = a2;
          return;
        }

        v31 = (v36 + v22 + 8) & ~v22;
        v34 = a2;
        goto LABEL_41;
      }

      if (a2 < v40)
      {
        v34 = a2 + 1;
        v15 = v39;
        if (v39 < 0x7FFFFFFF)
        {
          v37 = ((((v35 + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v34 & 0x80000000) != 0)
          {
            *v37 = a2 - 0x7FFFFFFF;
            v37[1] = 0;
          }

          else
          {
            v37[1] = a2;
          }

          return;
        }

        v31 = &a1[v21] & v30;
        v12 = v38;
        goto LABEL_41;
      }

      if ((((v19 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
      {
        bzero((&a1[v21] & v30), v20);
        *v35 = a2 - v40;
      }

      return;
  }
}

void sub_22BC81B68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BC81BDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22BBED848(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22BC81C6C()
{
  sub_22BDB43E4();
  if (v0 <= 0x3F)
  {
    sub_22BC05698();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BC81D40()
{
  sub_22BC81B68(319, &qword_2814288F0, MEMORY[0x277D72DC0]);
  if (v0 <= 0x3F)
  {
    sub_22BC81B68(319, &qword_28142DCE8, MEMORY[0x277D1CD68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BC81E74()
{
  result = sub_22BDBA594();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BC81F18()
{
  sub_22BC81B68(319, &qword_281428AA0, MEMORY[0x277D1DC38]);
  if (v0 <= 0x3F)
  {
    sub_22BC05698();
    if (v1 <= 0x3F)
    {
      sub_22BC81B68(319, &qword_281428920, MEMORY[0x277D72610]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_22BC81FEC()
{
  sub_22BB35F54();
  sub_22BBCBF80(v2);
  v5 = v5 && v3 == v4;
  if (v5 || (sub_22BDBB6D4()) && (v6 = type metadata accessor for FollowUpActionRequest(0), v7 = *(v6 + 20), sub_22BBED848(0, &qword_281428758, 0x277D23720), (sub_22BDBA5D4()))
  {
    return *(v1 + *(v6 + 24)) == *(v0 + *(v6 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BC82084(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022BDD2290 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697463416B6E696CLL && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x800000022BDD2430 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

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

uint64_t sub_22BC821B0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x697463416B6E696CLL;
  }

  return 0xD00000000000001BLL;
}

void sub_22BC8221C()
{
  sub_22BB31014();
  sub_22BBBEB7C();
  v4 = sub_22BBE6DE0(&qword_27D8E3798, &qword_22BDBFAB8);
  sub_22BB30444(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB3721C();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = sub_22BB313A8();
  sub_22BB699E4(v12, v13);
  sub_22BC8D0C8();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  v14 = *v3;
  v15 = v3[1];
  sub_22BB3B668();
  sub_22BDBB624();
  if (!v1)
  {
    v20 = type metadata accessor for FollowUpActionRequest(0);
    v16 = *(v20 + 20);
    sub_22BB393D0();
    v17 = sub_22BB8AB74();
    sub_22BBE6DE0(v17, v18);
    sub_22BBB5F9C(&qword_27D8E37A0, &qword_27D8E2E68, &unk_22BDBD5D0);
    sub_22BB3B668();
    sub_22BDBB664();
    v19 = *(v3 + *(v20 + 24));
    sub_22BB8D22C();
    sub_22BB3B668();
    sub_22BDBB654();
  }

  (*(v6 + 8))(v2, v4);
  sub_22BB376A8();
}

void sub_22BC823C4()
{
  sub_22BB31014();
  v3 = v2;
  v25 = sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0);
  sub_22BB30444(v25);
  v24 = v4;
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB395E0();
  v26 = sub_22BBE6DE0(&qword_27D8E3780, &qword_22BDBFAB0);
  sub_22BB30444(v26);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB36FD8();
  v11 = type metadata accessor for FollowUpActionRequest(0);
  v12 = sub_22BB2F330(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v17 = (v16 - v15);
  v18 = v3[4];
  sub_22BB699E4(v3, v3[3]);
  sub_22BC8D0C8();
  sub_22BDBB894();
  if (v1)
  {
    sub_22BB32FA4(v3);
  }

  else
  {
    *v17 = sub_22BDBB594();
    v17[1] = v19;
    sub_22BB393D0();
    sub_22BBB5F9C(&qword_27D8E3790, &qword_27D8E2E68, &unk_22BDBD5D0);
    sub_22BB3DE30();
    sub_22BDBB5D4();
    (*(v24 + 32))(v17 + *(v11 + 20), v0, v25);
    sub_22BB8D22C();
    v20 = sub_22BDBB5C4();
    v21 = sub_22BB974D8();
    v22(v21, v26);
    *(v17 + *(v11 + 24)) = v20;
    sub_22BB8C3BC();
    sub_22BB32FA4(v3);
    sub_22BB73B80();
    sub_22BB8DA24(v17, v23);
  }

  sub_22BB376A8();
}

uint64_t sub_22BC82744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC82084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC8276C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BC821A8();
  *a1 = result;
  return result;
}

uint64_t sub_22BC82794(uint64_t a1)
{
  v2 = sub_22BC8D0C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC827D0(uint64_t a1)
{
  v2 = sub_22BC8D0C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC82840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_22BDB77D4();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22BDB54C4();
  v68 = *(v77 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v77);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E3920, &qword_22BDC0278);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v63 - v10;
  v72 = sub_22BDB54B4();
  v66 = *(v72 - 1);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v72);
  v65 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDBA8C4();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = sub_22BBE6DE0(&qword_27D8E3918, &qword_22BDC0270);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v63 - v21;
  v23 = sub_22BDBA8D4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v64 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v63 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v63 - v32;
  MEMORY[0x28223BE20](v31);
  v79 = &v63 - v34;
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v22, 1, v23) == 1)
  {
    sub_22BB58728(a1, &qword_27D8E3918, &qword_22BDC0270);
    v35 = v22;
    v36 = &qword_27D8E3918;
    v37 = &qword_22BDC0270;
LABEL_3:
    sub_22BB58728(v35, v36, v37);
    v38 = 1;
    v40 = v77;
    v39 = v78;
    return sub_22BB336D0(v39, v38, 1, v40);
  }

  v63 = a1;
  v41 = v79;
  (*(v24 + 32))(v79, v22, v23);
  v42 = *(v24 + 16);
  v42(v33, v41, v23);
  if ((*(v24 + 88))(v33, v23) == *MEMORY[0x277D73340])
  {
    (*(v24 + 96))(v33, v23);
    v44 = v70;
    v43 = v71;
    (*(v70 + 32))(v18, v33, v71);
    v45 = v69;
    (*(v44 + 16))(v69, v18, v43);
    v46 = v73;
    sub_22BC8BF98(v45, v73);
    sub_22BB58728(v63, &qword_27D8E3918, &qword_22BDC0270);
    (*(v44 + 8))(v18, v43);
    (*(v24 + 8))(v79, v23);
    v47 = v72;
    if (sub_22BB3AA28(v46, 1, v72) != 1)
    {
      v58 = v65;
      v59 = *(v66 + 32);
      v59(v65, v46, v47);
      v60 = v67;
      v59(v67, v58, v47);
      v61 = v68;
      v40 = v77;
      (*(v68 + 104))(v60, *MEMORY[0x277D1CD60], v77);
      v39 = v78;
      (*(v61 + 32))(v78, v60, v40);
      v38 = 0;
      return sub_22BB336D0(v39, v38, 1, v40);
    }

    v36 = &qword_27D8E3920;
    v37 = &qword_22BDC0278;
    v35 = v46;
    goto LABEL_3;
  }

  v73 = v33;
  v48 = v76;
  sub_22BDB63F4();
  v42(v30, v79, v23);
  v49 = sub_22BDB77C4();
  v50 = sub_22BDBB114();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v80 = v72;
    *v51 = 136315138;
    LODWORD(v71) = v50;
    v42(v64, v30, v23);
    v52 = sub_22BDBAC14();
    v54 = v53;
    v55 = *(v24 + 8);
    v55(v30, v23);
    v56 = sub_22BB32EE0(v52, v54, &v80);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_22BB2C000, v49, v71, "ShortcutsDialogPromptHandler: Unexpected SystemStyle case: %s", v51, 0xCu);
    v57 = v72;
    sub_22BB32FA4(v72);
    MEMORY[0x2318A6080](v57, -1, -1);
    MEMORY[0x2318A6080](v51, -1, -1);

    sub_22BB58728(v63, &qword_27D8E3918, &qword_22BDC0270);
    (*(v74 + 8))(v76, v75);
  }

  else
  {

    sub_22BB58728(v63, &qword_27D8E3918, &qword_22BDC0270);
    v55 = *(v24 + 8);
    v55(v30, v23);
    (*(v74 + 8))(v48, v75);
  }

  v55(v79, v23);
  v40 = v77;
  v55(v73, v23);
  v38 = 1;
  v39 = v78;
  return sub_22BB336D0(v39, v38, 1, v40);
}

uint64_t sub_22BC83084()
{
  sub_22BB2F0D4();
  v1[5] = v2;
  v1[6] = v0;
  sub_22BB35494(v3, v4, v5);
  v6 = sub_22BDBA074();
  v1[7] = v6;
  sub_22BB30434(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_22BB30ACC();
  v10 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BC83128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BB31550();
  sub_22BB8DC94();
  v16 = v14[8];
  v15 = v14[9];
  v17 = v14[6];
  v18 = v14[7];
  v19 = v14[3];
  v20 = v17[4];
  sub_22BB69FEC(v17, v17[3]);
  sub_22BB3459C(v16);
  sub_22BB3E4B4();
  v21();
  sub_22BDBA054();
  v14[10] = v22;
  v14[11] = sub_22BDBA064();
  v23 = *(v16 + 8);
  v24 = sub_22BB393C4();
  v25(v24);
  v26 = *(v20 + 8);
  sub_22BB3720C();
  v45 = v27 + *v27;
  v29 = *(v28 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v14[12] = v30;
  *v30 = v31;
  v30[1] = sub_22BC83298;
  v32 = v14[4];
  v33 = v14[5];
  sub_22BB95750();
  sub_22BBCC0EC();
  sub_22BB31534();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, v45, a12, a13, a14);
}

uint64_t sub_22BC83298()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  sub_22BB2F09C();

  return v8();
}

uint64_t sub_22BC833D0()
{
  sub_22BB2F0D4();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  sub_22BC8DAF4(v5);
  v6 = sub_22BDBA354();
  v1[12] = v6;
  sub_22BB30434(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = sub_22BB31AF0();
  v1[15] = swift_task_alloc();
  v10 = type metadata accessor for DisambiguationListItem(0);
  v1[16] = v10;
  sub_22BB30434(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = sub_22BB30ACC();
  v14 = sub_22BDBA074();
  v1[19] = v14;
  sub_22BB30434(v14);
  v1[20] = v15;
  v17 = *(v16 + 64);
  v1[21] = sub_22BB30ACC();
  v18 = sub_22BBE6DE0(&qword_27D8E2EF8, &qword_22BDC0230);
  v1[22] = v18;
  sub_22BB30434(v18);
  v1[23] = v19;
  v21 = *(v20 + 64);
  v1[24] = sub_22BB31AF0();
  v1[25] = swift_task_alloc();
  v22 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22BC83790()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[29];
  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[26];
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  v8 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC838CC()
{
  sub_22BB34E84();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  sub_22BB32FA4(v0 + 2);
  v5 = *(v4 + 32);
  v6 = sub_22BB31F54();
  v7(v6);
  v8 = *(v4 + 88);
  v9 = sub_22BB30AE4();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x277D72098])
  {
    v12 = v0[24];
    (*(v0[23] + 96))(v12, v0[22]);
    v14 = *v12;
    v13 = v12[1];
  }

  else if (v11 != *MEMORY[0x277D720A0])
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
  }

  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[21];
  v18 = v0[18];
  v20 = v0[14];
  v19 = v0[15];

  v21 = v0[1];
  v22 = sub_22BB2F324();

  return v23(v22);
}

uint64_t sub_22BC83A24()
{
  sub_22BB2F0D4();
  v6 = sub_22BB69598(v1, v2, v3, v4, v5);
  v0[13] = v6;
  sub_22BB30434(v6);
  v0[14] = v7;
  v9 = *(v8 + 64);
  v0[15] = sub_22BB31AF0();
  v10 = swift_task_alloc();
  v11 = sub_22BB69538(v10);
  v12 = type metadata accessor for DisambiguationListItem(v11);
  v0[17] = v12;
  sub_22BB30434(v12);
  v0[18] = v13;
  v15 = *(v14 + 64);
  v0[19] = sub_22BB30ACC();
  v16 = sub_22BDBA074();
  v0[20] = v16;
  sub_22BB30434(v16);
  v0[21] = v17;
  v19 = *(v18 + 64);
  v0[22] = sub_22BB30ACC();
  v20 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22BC83D70()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[26];
  v3 = v1[25];
  v4 = v1[24];
  v5 = v1[23];
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  v8 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC83EAC()
{
  sub_22BB2F35C();
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  sub_22BB32FA4(v0 + 2);

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BC83F38()
{
  sub_22BB2F0D4();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  sub_22BC8DAF4(v5);
  v6 = sub_22BDBA354();
  v1[12] = v6;
  sub_22BB30434(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = sub_22BB31AF0();
  v1[15] = swift_task_alloc();
  v10 = type metadata accessor for DisambiguationListItem(0);
  v1[16] = v10;
  sub_22BB30434(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = sub_22BB30ACC();
  v14 = sub_22BDBA074();
  v1[19] = v14;
  sub_22BB30434(v14);
  v1[20] = v15;
  v17 = *(v16 + 64);
  v1[21] = sub_22BB30ACC();
  v18 = sub_22BBE6DE0(&qword_27D8E2EE8, &qword_22BDBD760);
  v1[22] = v18;
  sub_22BB30434(v18);
  v1[23] = v19;
  v21 = *(v20 + 64);
  v1[24] = sub_22BB31AF0();
  v1[25] = swift_task_alloc();
  v22 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22BC842F8()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[29];
  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[26];
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  v8 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC84434()
{
  sub_22BB30F5C();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  sub_22BB32FA4(v0 + 2);
  v5 = *(v4 + 16);
  v6 = sub_22BB31F54();
  v7(v6);
  v8 = *(v4 + 88);
  v9 = sub_22BB30AE4();
  v11 = v10(v9);
  v12 = v0[25];
  if (v11 == *MEMORY[0x277D72098])
  {
    v14 = v0[23];
    v13 = v0[24];
    (*(v14 + 8))(v12, v0[22]);
    v15 = *(v14 + 96);
    v16 = sub_22BB2F324();
    v17(v16);
    v18 = *v13;
  }

  else
  {
    v19 = *MEMORY[0x277D720A0];
    v20 = *(v0[23] + 8);
    v20(v12, v0[22]);
    if (v11 != v19)
    {
      v20(v0[24], v0[22]);
    }

    v18 = MEMORY[0x277D84F90];
  }

  v22 = v0[24];
  v21 = v0[25];
  v23 = v0[21];
  v24 = v0[18];
  v26 = v0[14];
  v25 = v0[15];

  sub_22BB39738();

  return v27(v18);
}

uint64_t sub_22BC845B0()
{
  sub_22BB2F0D4();
  v6 = sub_22BB69598(v1, v2, v3, v4, v5);
  v0[13] = v6;
  sub_22BB30434(v6);
  v0[14] = v7;
  v9 = *(v8 + 64);
  v0[15] = sub_22BB31AF0();
  v10 = swift_task_alloc();
  v11 = sub_22BB69538(v10);
  v12 = type metadata accessor for DisambiguationListItem(v11);
  v0[17] = v12;
  sub_22BB30434(v12);
  v0[18] = v13;
  v15 = *(v14 + 64);
  v0[19] = sub_22BB30ACC();
  v16 = sub_22BDBA074();
  v0[20] = v16;
  sub_22BB30434(v16);
  v0[21] = v17;
  v19 = *(v18 + 64);
  v0[22] = sub_22BB30ACC();
  v20 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22BC848FC()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[26];
  v3 = v1[25];
  v4 = v1[24];
  v5 = v1[23];
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  v8 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC84A38()
{
  sub_22BB2F0D4();
  sub_22BB33488(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  v0[10] = sub_22BB30ACC();
  v11 = sub_22BDBA5C4();
  v0[11] = v11;
  sub_22BB30434(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v15 = sub_22BB30ACC();
  sub_22BB977A0(v15);
  v16 = sub_22BDBA074();
  v0[14] = v16;
  sub_22BB30434(v16);
  v0[15] = v17;
  v19 = *(v18 + 64);
  v0[16] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E2ED0, &qword_22BDBD740);
  v0[17] = v20;
  sub_22BB30434(v20);
  v0[18] = v21;
  v23 = *(v22 + 64);
  v0[19] = sub_22BB31AF0();
  v0[20] = swift_task_alloc();
  v24 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_22BC84BB4()
{
  sub_22BB58688();
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v27 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v6[4];
  sub_22BB69FEC(v6, v6[3]);
  (*(v1 + 16))(v2, v8, v4);
  sub_22BDBA054();
  v0[21] = v10;
  v0[22] = sub_22BDBA064();
  (*(v1 + 8))(v2, v4);
  v11 = sub_22BDBA634();
  v12 = swift_allocBox();
  sub_22BB30474(v11);
  (*(v13 + 16))();
  *v3 = v12;
  (*(v5 + 104))(v3, *MEMORY[0x277D72AD0], v27);
  v14 = *(v9 + 32);
  sub_22BB3720C();
  v28 = v15 + *v15;
  v17 = *(v16 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v0[23] = v18;
  *v18 = v19;
  v18[1] = sub_22BC84DDC;
  v20 = v0[20];
  v21 = v0[13];
  v22 = v0[7];
  v23 = v0[4];
  v24 = v0[5];
  v29 = v0[8];
  sub_22BB32660();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BC84DDC()
{
  sub_22BB30F5C();
  sub_22BB32690();
  v2 = v1[23];
  v3 = v1[22];
  v4 = v1[21];
  v5 = v1[13];
  v6 = v1[12];
  v7 = v1[11];
  v8 = *v0;
  sub_22BB3052C();
  *v9 = v8;

  v10 = *(v6 + 8);
  v11 = sub_22BB30AE4();
  v12(v11);
  v13 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC84F54()
{
  sub_22BB34E84();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_22BB3459C(v3);
  v5(v4);
  v6 = *(v3 + 88);
  v7 = sub_22BB2F324();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D72098])
  {
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];
    v13 = v0[10];
    v14 = *(v11 + 96);
    v15 = sub_22BB2F3F0();
    v16(v15);
    sub_22BC73FE4(*v10, v13);

    v17 = *(v11 + 8);
    v18 = sub_22BB30AE4();
    v19(v18);
    v20 = sub_22BDBA594();
    v21 = sub_22BB3AA28(v13, 1, v20);
    v22 = v0[10];
    v23 = v0[2];
    if (v21 == 1)
    {
      v24 = sub_22BDBA514();
      v25 = swift_allocBox();
      v26 = *MEMORY[0x277D729A0];
      sub_22BB30474(v24);
      (*(v27 + 104))();
      *v23 = v25;
      v28 = *MEMORY[0x277D72A58];
      sub_22BB30474(v20);
      (*(v29 + 104))(v23);
      sub_22BB2F164(v22);
      if (!v30)
      {
        sub_22BB58728(v0[10], &qword_27D8E2668, &unk_22BDBCCD0);
      }
    }

    else
    {
      sub_22BB30474(v20);
      v43 = *(v42 + 32);
      v44 = sub_22BB3182C();
      v45(v44);
    }
  }

  else
  {
    v31 = v9;
    v32 = v0[2];
    v33 = *MEMORY[0x277D720A0];
    v34 = *(v0[18] + 8);
    v34(v0[20], v0[17]);
    v35 = sub_22BDBA514();
    v36 = swift_allocBox();
    v37 = *MEMORY[0x277D729A0];
    sub_22BB30474(v35);
    (*(v38 + 104))();
    *v32 = v36;
    v39 = *MEMORY[0x277D72A58];
    v40 = sub_22BDBA594();
    sub_22BB2F330(v40);
    (*(v41 + 104))(v32, v39);
    if (v31 != v33)
    {
      v34(v0[19], v0[17]);
    }
  }

  v47 = v0[19];
  v46 = v0[20];
  v48 = v0[16];
  v49 = v0[13];
  v50 = v0[10];

  sub_22BB2F09C();

  return v51();
}

uint64_t sub_22BC85270()
{
  sub_22BB2F0D4();
  sub_22BB33488(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_22BDBA074();
  v0[10] = v8;
  sub_22BB30434(v8);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = sub_22BB30ACC();
  v12 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_22BC85314()
{
  sub_22BB35458();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[3];
  v6 = v3[4];
  sub_22BB69FEC(v3, v3[3]);
  v7 = sub_22BB53CE0(v2);
  v8(v7);
  sub_22BDBA054();
  sub_22BC8DAE8();
  v0[13] = v9;
  v0[14] = sub_22BDBA064();
  v10 = *(v2 + 8);
  v11 = sub_22BB313A8();
  v12(v11);
  v13 = *(v6 + 32);
  sub_22BB3561C();
  v21 = v14 + *v14;
  v16 = *(v15 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v0[15] = v17;
  *v17 = v18;
  sub_22BB528EC(v17);
  sub_22BB33430();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BC85478()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  sub_22BB2F09C();

  return v8();
}

uint64_t sub_22BC855B0()
{
  sub_22BB2F0D4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  sub_22BB35494(v5, v6, v7);
  v8 = sub_22BDBA074();
  v1[9] = v8;
  sub_22BB30434(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22BB30ACC();
  v12 = type metadata accessor for ActionConfirmationDialogRequest(0);
  v1[12] = v12;
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  v15 = sub_22BB30ACC();
  sub_22BB977A0(v15);
  v16 = sub_22BDBA784();
  v1[14] = v16;
  sub_22BB30434(v16);
  v1[15] = v17;
  v19 = *(v18 + 64);
  v1[16] = sub_22BB31AF0();
  v1[17] = swift_task_alloc();
  v20 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22BC8588C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 144);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  sub_22BB2F44C();
  v6 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BC85988()
{
  sub_22BB34E84();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
  v7 = *MEMORY[0x277D731B0];
  v8 = sub_22BB3A858();
  v9(v8);
  sub_22BB2F324();
  v10 = sub_22BDBA774();
  v11 = *(v4 + 8);
  v12 = sub_22BB30AE4();
  v11(v12);
  v13 = sub_22BB2F3F0();
  v11(v13);

  sub_22BB39738();

  return v14(v10 & 1);
}

uint64_t sub_22BC85A70()
{
  sub_22BB2F0D4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  sub_22BB35494(v5, v6, v7);
  v8 = sub_22BDBA074();
  v1[9] = v8;
  sub_22BB30434(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22BB30ACC();
  v12 = type metadata accessor for ActionConfirmationDialogRequest(0);
  v1[12] = v12;
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  v15 = sub_22BB30ACC();
  sub_22BB977A0(v15);
  v16 = sub_22BDBA784();
  v1[14] = v16;
  sub_22BB30434(v16);
  v1[15] = v17;
  v19 = *(v18 + 64);
  v1[16] = sub_22BB31AF0();
  v1[17] = swift_task_alloc();
  v20 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22BC85D4C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 144);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  sub_22BB2F44C();
  v6 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BC85E48()
{
  sub_22BB2F0D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E3918, &qword_22BDC0270);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_22BB30ACC();
  v7 = sub_22BDBA074();
  v1[6] = v7;
  sub_22BB30434(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = sub_22BB30ACC();
  v11 = sub_22BDBA944();
  v1[9] = v11;
  sub_22BB30434(v11);
  v1[10] = v12;
  v14 = *(v13 + 64);
  v1[11] = sub_22BB30ACC();
  v15 = type metadata accessor for ActionConfirmationDialogRequest(0);
  v1[12] = v15;
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  v1[13] = sub_22BB30ACC();
  v18 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22BC85F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  v22 = v20[12];
  v21 = v20[13];
  v23 = v20[10];
  v24 = v20[11];
  v25 = v20[8];
  v26 = v20[9];
  v27 = v20[7];
  v58 = v20[6];
  v28 = v20[4];
  v29 = v20[5];
  v30 = v20[3];
  v67 = v28[3];
  v63 = v26;
  v65 = v28[4];
  v66 = sub_22BB69FEC(v28, v67);
  v31 = (*(v23 + 16))(v24, v30, v26);
  MEMORY[0x2318A4900](v31);
  v32 = sub_22BDBA054();
  v61 = v33;
  v62 = v32;
  v60 = sub_22BDBA064();
  (*(v27 + 8))(v25, v58);
  v34 = v21 + v22[5];
  sub_22BDBA924();
  v59 = sub_22BDBA914();
  v36 = v35;
  v37 = sub_22BDBA904();
  v39 = v38;
  sub_22BDBA8F4();
  sub_22BC82840(v29, v21 + v22[8]);
  LOBYTE(v29) = sub_22BDBA8A4();
  LOBYTE(v30) = sub_22BDBA8E4();
  (*(v23 + 8))(v24, v63);
  *v21 = v62;
  v21[1] = v61;
  v21[2] = v60;
  v40 = (v21 + v22[6]);
  *v40 = v59;
  v40[1] = v36;
  v41 = (v21 + v22[7]);
  *v41 = v37;
  v41[1] = v39;
  *(v21 + v22[9]) = v29 & 1;
  *(v21 + v22[10]) = v30 & 1;
  v42 = *(v65 + 40);
  sub_22BB36CE0();
  v64 = v43 + *v43;
  v45 = *(v44 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v20[14] = v46;
  *v46 = v47;
  v46[1] = sub_22BC861D0;
  v48 = v20[13];
  sub_22BB95750();
  sub_22BB3CEF4();

  return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, v59, v60, v61, v65 + 40, v64, v65, v66, v67, a18, a19, a20);
}

uint64_t sub_22BC861D0()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[14];
  v3 = v1[13];
  v4 = v1[11];
  v5 = v1[8];
  v6 = v1[5];
  v7 = *v0;
  sub_22BB3052C();
  *v8 = v7;

  sub_22BB2F44C();

  sub_22BB2F09C();

  return v9();
}

uint64_t sub_22BC8632C()
{
  sub_22BB2F0D4();
  sub_22BB33488(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_22BDBA594();
  v0[10] = v8;
  sub_22BB30434(v8);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = sub_22BB30ACC();
  v12 = sub_22BDBA074();
  v0[13] = v12;
  sub_22BB30434(v12);
  v0[14] = v13;
  v15 = *(v14 + 64);
  v0[15] = sub_22BB30ACC();
  v16 = sub_22BDBA784();
  v0[16] = v16;
  sub_22BB30434(v16);
  v0[17] = v17;
  v19 = *(v18 + 64);
  v0[18] = sub_22BB31AF0();
  v0[19] = swift_task_alloc();
  v20 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

void sub_22BC86474()
{
  sub_22BB58688();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = v5[4];
  sub_22BB69FEC(v5, v5[3]);
  v9 = sub_22BB53CE0(v2);
  v10(v9);
  sub_22BDBA054();
  sub_22BC8DAE8();
  *(v0 + 160) = v11;
  *(v0 + 168) = sub_22BDBA064();
  v12 = *(v2 + 8);
  v13 = sub_22BB8AB74();
  v14(v13);
  sub_22BDBA334();
  *(v0 + 176) = v15;
  sub_22BDBA344();
  v16 = *(v8 + 48);
  sub_22BB3720C();
  v27 = v17 + *v17;
  v19 = *(v18 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 184) = v20;
  *v20 = v21;
  v20[1] = sub_22BC86628;
  v22 = *(v0 + 152);
  v23 = *(v0 + 96);
  v24 = *(v0 + 32);
  v30 = *(v0 + 64);
  v29 = *(v0 + 56);
  v28 = *(v0 + 40);
  sub_22BB35F94();
  sub_22BB89CE8();
  sub_22BB32660();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BC86628()
{
  sub_22BB30F5C();
  sub_22BB32690();
  v2 = v1[23];
  v3 = v1[22];
  v4 = v1[21];
  v5 = v1[20];
  v6 = v1[12];
  v7 = v1[11];
  v8 = v1[10];
  v9 = *v0;
  sub_22BB3052C();
  *v10 = v9;

  v11 = *(v7 + 8);
  v12 = sub_22BB2F0E0();
  v13(v12);
  v14 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BC867BC()
{
  sub_22BB34E84();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = *MEMORY[0x277D731B0];
  v8 = sub_22BB3A858();
  v9(v8);
  sub_22BB2F324();
  v10 = sub_22BDBA774();
  v11 = *(v4 + 8);
  v12 = sub_22BB30AE4();
  v11(v12);
  v13 = sub_22BB2F3F0();
  v11(v13);

  sub_22BB39738();

  return v14(v10 & 1);
}

uint64_t sub_22BC868A4()
{
  sub_22BB2F0D4();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  sub_22BB35494(v7, v8, v9);
  v10 = sub_22BDBA594();
  v1[11] = v10;
  sub_22BB30434(v10);
  v1[12] = v11;
  v13 = *(v12 + 64);
  v14 = sub_22BB30ACC();
  sub_22BB977A0(v14);
  v15 = sub_22BDBA074();
  v1[14] = v15;
  sub_22BB30434(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = sub_22BB30ACC();
  v19 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_22BC86998()
{
  sub_22BB58688();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = v5[4];
  sub_22BB69FEC(v5, v5[3]);
  v9 = sub_22BB53CE0(v2);
  v10(v9);
  sub_22BDBA054();
  sub_22BC8DAE8();
  *(v0 + 136) = v11;
  *(v0 + 144) = sub_22BDBA064();
  v12 = *(v2 + 8);
  v13 = sub_22BB8AB74();
  v14(v13);
  sub_22BDBA334();
  *(v0 + 152) = v15;
  sub_22BDBA344();
  v16 = *(v8 + 48);
  sub_22BB3720C();
  v27 = v17 + *v17;
  v19 = *(v18 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 160) = v20;
  *v20 = v21;
  v20[1] = sub_22BC86B4C;
  v22 = *(v0 + 104);
  v23 = *(v0 + 40);
  v24 = *(v0 + 16);
  v30 = *(v0 + 72);
  v29 = *(v0 + 64);
  v28 = *(v0 + 48);
  sub_22BB35F94();
  sub_22BB89CE8();
  sub_22BB32660();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BC86B4C()
{
  sub_22BB34E84();
  sub_22BB32690();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = v1[16];
  v7 = v1[13];
  v8 = v1[12];
  v9 = v1[11];
  v10 = *v0;
  sub_22BB3052C();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);

  sub_22BB2F09C();

  return v12();
}

uint64_t sub_22BC86D0C()
{
  sub_22BB2F0D4();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22BDBA074();
  v1[6] = v5;
  sub_22BB30434(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_22BB30ACC();
  v9 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC86DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BB31550();
  sub_22BB8DC94();
  v16 = v14[7];
  v15 = v14[8];
  v17 = v14[5];
  v18 = v14[6];
  v19 = v14[3];
  v20 = v17[4];
  sub_22BB69FEC(v17, v17[3]);
  sub_22BB3459C(v16);
  sub_22BB3E4B4();
  v21();
  sub_22BDBA054();
  v14[9] = v22;
  v14[10] = sub_22BDBA064();
  v23 = *(v16 + 8);
  v24 = sub_22BB393C4();
  v25(v24);
  v26 = *(v20 + 56);
  sub_22BB3720C();
  v43 = v27 + *v27;
  v29 = *(v28 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v14[11] = v30;
  *v30 = v31;
  v30[1] = sub_22BC86F24;
  v32 = v14[4];
  sub_22BB95750();
  sub_22BBCC0EC();
  sub_22BB31534();

  return v40(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, v43, a12, a13, a14);
}

uint64_t sub_22BC86F24()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[8];
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  sub_22BB2F09C();

  return v8();
}

uint64_t sub_22BC8705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BB35954();
}

uint64_t sub_22BC87074()
{
  sub_22BB30F5C();
  sub_22BB699C4(*(v1 + 40));
  v2 = *(v0 + 64);
  sub_22BB3720C();
  v10 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 48) = v6;
  *v6 = v7;
  v8 = sub_22BB52E04(v6);

  return v10(v8);
}

uint64_t sub_22BC87174()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BC87254()
{
  sub_22BB2F0D4();
  sub_22BB33488(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_22BDBA074();
  v0[10] = v8;
  sub_22BB30434(v8);
  v0[11] = v9;
  v11 = *(v10 + 64);
  v0[12] = sub_22BB30ACC();
  v12 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_22BC872F8()
{
  sub_22BB35458();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[3];
  v6 = v3[4];
  sub_22BB69FEC(v3, v3[3]);
  v7 = sub_22BB53CE0(v2);
  v8(v7);
  sub_22BDBA054();
  sub_22BC8DAE8();
  v0[13] = v9;
  v0[14] = sub_22BDBA064();
  v10 = *(v2 + 8);
  v11 = sub_22BB313A8();
  v12(v11);
  v13 = *(v6 + 72);
  sub_22BB3561C();
  v21 = v14 + *v14;
  v16 = *(v15 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v0[15] = v17;
  *v17 = v18;
  sub_22BB528EC(v17);
  sub_22BB33430();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BC8745C()
{
  sub_22BB2F0D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BDBA854();
  v1[5] = v4;
  sub_22BB30434(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v8 = sub_22BB30ACC();
  v9 = sub_22BC8DAF4(v8);
  v10 = type metadata accessor for FollowUpActionRequest(v9);
  v1[8] = v10;
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  v1[9] = sub_22BB30ACC();
  v13 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC87524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BB974BC();
  sub_22BB58688();
  v17 = v16[8];
  v18 = v16[9];
  v19 = v16[6];
  v20 = v16[7];
  v21 = v16[4];
  v22 = v16[5];
  v23 = v16[3];
  v24 = v21[4];
  v52 = v21[3];
  v51 = sub_22BB69FEC(v21, v52);
  sub_22BB3459C(v19);
  sub_22BB3E4B4();
  v25();
  v26 = sub_22BDBA844();
  v28 = v27;
  v29 = v18 + *(v17 + 20);
  sub_22BDBA834();
  v30 = sub_22BDBA824();
  v31 = *(v19 + 8);
  v32 = sub_22BB393C4();
  v33(v32);
  *v18 = v26;
  v18[1] = v28;
  *(v18 + *(v17 + 24)) = v30;
  v34 = *(v24 + 80);
  sub_22BB3720C();
  v50 = v35 + *v35;
  v37 = *(v36 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v16[10] = v38;
  *v38 = v39;
  v38[1] = sub_22BC876A4;
  v40 = v16[9];
  sub_22BB95750();
  sub_22BB32660();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, v50, v51, v52, a14, a15, a16);
}

uint64_t sub_22BC876A4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[7];
  v5 = *v0;
  sub_22BB3052C();
  *v6 = v5;

  sub_22BB73B80();
  sub_22BB8DA24(v3, v7);

  sub_22BB2F09C();

  return v8();
}

uint64_t sub_22BC877C8()
{
  v1 = v0[4];
  sub_22BB69FEC(v0, v0[3]);
  v2 = *(v1 + 88);
  v3 = sub_22BB30AE4();
  return v4(v3);
}

uint64_t sub_22BC87818()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC85270();
}

uint64_t sub_22BC878FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC83A24();
}

uint64_t sub_22BC879C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC845B0();
}

uint64_t sub_22BC87A8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC83084();
}

uint64_t sub_22BC87B4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC85E48();
}

uint64_t sub_22BC87BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D722C0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22BB3C48C;

  return MEMORY[0x2821DA878](a1, a2, a3, a4);
}

uint64_t sub_22BC87CB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC86D0C();
}

uint64_t sub_22BC87D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC868A4();
}

uint64_t sub_22BC87E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC87254();
}

uint64_t sub_22BC87F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BB3C48C;

  return sub_22BC8705C(a1, a2, a3);
}

uint64_t sub_22BC87FF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC8745C();
}

uint64_t sub_22BC8809C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC84A38();
}

uint64_t sub_22BC88180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(MEMORY[0x277D722C8] + 4);
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_22BC88270;

  return MEMORY[0x2821DA880](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22BC88270()
{
  sub_22BB2F0D4();
  v2 = v1;
  sub_22BB32690();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22BB3052C();
  *v6 = v5;

  sub_22BB39738();

  return v7(v2);
}

uint64_t sub_22BC88358()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BC88414;

  return sub_22BC833D0();
}

uint64_t sub_22BC88414()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_22BB31F54();

  return v7(v6);
}

uint64_t sub_22BC88504()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BC8DA90;

  return sub_22BC83F38();
}

uint64_t sub_22BC885C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(MEMORY[0x277D722D0] + 4);
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_22BB3C48C;

  return MEMORY[0x2821DA888](a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_22BC886BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BC8DA90;

  return sub_22BC85A70();
}

uint64_t sub_22BC88790()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BC88270;

  return sub_22BC855B0();
}

uint64_t sub_22BC88868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BC8DA90;

  return sub_22BC8632C();
}

uint64_t sub_22BC88948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  a3[3] = &type metadata for ShortcutsDialogPromptHandler;
  a3[4] = sub_22BC8D170();
  v6 = swift_allocObject();
  *a3 = v6;
  v6[5] = a1;
  v6[6] = a2;
  sub_22BB8B8A0(v6 + 2);
  sub_22BB30474(a1);
  v8 = *(v7 + 16);

  return v8();
}

uint64_t sub_22BC889E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v77 = a4;
  v81 = a1;
  v82 = a2;
  v78 = type metadata accessor for TypedValueUndoContext(0);
  v7 = sub_22BB2F330(v78);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v72 = v11 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v73 = &v71 - v16;
  v76 = sub_22BBE6DE0(&qword_27D8E3730, &qword_22BDBFA88);
  sub_22BB2F330(v76);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  v20 = MEMORY[0x28223BE20](v19);
  v79 = &v71 - v21;
  v80 = *(a3 - 8);
  v22 = *(v80 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v74 = v24 - v23;
  v25 = sub_22BDBB254();
  sub_22BB30444(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22BB30444(TupleTypeMetadata2);
  v33 = v32;
  v35 = *(v34 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  sub_22BB395E0();
  v38 = *(v37 + 48);
  v39 = *(v27 + 16);
  v39(v5, v81, v25);
  v39(v5 + v38, v82, v25);
  sub_22BB2F164(v5);
  if (v41)
  {
    sub_22BB2F164(v5 + v38);
    if (v41)
    {
      (*(v27 + 8))(v5, v25);
      goto LABEL_11;
    }

LABEL_9:
    (*(v33 + 8))(v5, TupleTypeMetadata2);
    goto LABEL_20;
  }

  v40 = sub_22BB3182C();
  (v39)(v40);
  sub_22BB2F164(v5 + v38);
  if (v41)
  {
    v42 = *(v80 + 8);
    v43 = sub_22BB37494();
    v44(v43);
    goto LABEL_9;
  }

  v45 = v80;
  v46 = v74;
  (*(v80 + 32))(v74, v5 + v38, a3);
  v47 = sub_22BDBABD4();
  v48 = *(v45 + 8);
  v48(v46, a3);
  v49 = sub_22BB37494();
  (v48)(v49);
  (*(v27 + 8))(v5, v25);
  if ((v47 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v50 = type metadata accessor for TypedValueExecutionResult();
  v51 = v50[9];
  v52 = *(v76 + 48);
  v53 = v81;
  v54 = v79;
  sub_22BC5E5C4();
  v55 = v82;
  sub_22BC5E5C4();
  v56 = v78;
  sub_22BB31814(v54, 1, v78);
  if (!v41)
  {
    v57 = v73;
    sub_22BC5E5C4();
    sub_22BB31814(v54 + v52, 1, v56);
    if (!v58)
    {
      sub_22BBADC44();
      v62 = v72;
      sub_22BB8D7FC();
      v63 = sub_22BC88F9C();
      sub_22BB8DA24(v62, type metadata accessor for TypedValueUndoContext);
      sub_22BB8DA24(v57, type metadata accessor for TypedValueUndoContext);
      sub_22BB58728(v54, &qword_27D8E2528, &unk_22BDBD190);
      if ((v63 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    sub_22BB38CF8();
    sub_22BB8DA24(v57, v59);
LABEL_19:
    sub_22BB58728(v54, &qword_27D8E3730, &qword_22BDBFA88);
    goto LABEL_20;
  }

  sub_22BB31814(v54 + v52, 1, v56);
  if (!v41)
  {
    goto LABEL_19;
  }

  sub_22BB58728(v54, &qword_27D8E2528, &unk_22BDBD190);
LABEL_23:
  v64 = v50[10];
  v65 = *(v53 + v64);
  v66 = *(v55 + v64);
  if (v65)
  {
    if (!v66)
    {
      goto LABEL_20;
    }

    sub_22BBED848(0, &qword_2814287A0, 0x277D23B48);
    v67 = v66;
    v68 = v65;
    v69 = sub_22BDBB234();

    if ((v69 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v66)
  {
    goto LABEL_20;
  }

  v70 = v50[11];
  if (sub_22BDBA034())
  {
    v60 = *(v53 + v50[12]) ^ *(v55 + v50[12]) ^ 1;
    return v60 & 1;
  }

LABEL_20:
  v60 = 0;
  return v60 & 1;
}

uint64_t sub_22BC88F9C()
{
  sub_22BB35F54();
  if ((sub_22BDB43B4() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for TypedValueUndoContext(0);
  v3 = *(v2 + 20);
  v4 = (v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = (v0 + v3);
  v7 = v6[1];
  if (v5)
  {
    if (v7)
    {
      v8 = *v4 == *v6 && v5 == v7;
      if (v8 || (sub_22BDBB6D4() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_9:
  v9 = *(v2 + 24);
  v10 = *(v1 + v9);
  v11 = *(v1 + v9 + 8);
  v12 = (v0 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    return 1;
  }

  return sub_22BDBB6D4();
}

uint64_t sub_22BC89068(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000022BDD2290 == a2;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000022BDD2450 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

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

uint64_t sub_22BC89180(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000011;
}

uint64_t sub_22BC891D8()
{
  sub_22BBBEB7C();
  v4 = sub_22BBE6DE0(&qword_27D8E37E8, &qword_22BDBFB48);
  sub_22BB30444(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB3721C();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = sub_22BB313A8();
  sub_22BB699E4(v12, v13);
  sub_22BC8D1C4();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  sub_22BDB43E4();
  sub_22BB3E180();
  sub_22BC80F98(v14, v15);
  sub_22BB3B7A8();
  if (!v1)
  {
    v16 = type metadata accessor for TypedValueUndoContext(0);
    v17 = (v3 + *(v16 + 20));
    v18 = *v17;
    v19 = v17[1];
    sub_22BB393D0();
    sub_22BB3B668();
    sub_22BDBB604();
    v20 = (v3 + *(v16 + 24));
    v21 = *v20;
    v22 = v20[1];
    sub_22BB8D22C();
    sub_22BB3B668();
    sub_22BDBB624();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_22BC8936C()
{
  sub_22BB31014();
  v3 = v2;
  v4 = sub_22BDB43E4();
  v5 = sub_22BB30444(v4);
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v37 = v10 - v9;
  v38 = sub_22BBE6DE0(&qword_27D8E37D0, &qword_22BDBFB40);
  sub_22BB30444(v38);
  v35 = v11;
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BB3A5CC();
  v16 = type metadata accessor for TypedValueUndoContext(v15);
  v17 = sub_22BB2F330(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v22 = v21 - v20;
  v23 = v3[4];
  sub_22BB699E4(v3, v3[3]);
  sub_22BC8D1C4();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v3);
  }

  else
  {
    v34 = v16;
    sub_22BB3E180();
    sub_22BC80F98(v24, v25);
    sub_22BDBB5D4();
    (*(v36 + 32))(v22, v37, v4);
    sub_22BB393D0();
    v26 = sub_22BDBB574();
    v27 = (v22 + *(v16 + 20));
    *v27 = v26;
    v27[1] = v28;
    sub_22BB8D22C();
    v29 = sub_22BDBB594();
    v31 = v30;
    (*(v35 + 8))(v1, v38);
    v32 = (v22 + *(v34 + 24));
    *v32 = v29;
    v32[1] = v31;
    sub_22BB8C3BC();
    sub_22BB32FA4(v3);
    sub_22BB38CF8();
    sub_22BB8DA24(v22, v33);
  }

  sub_22BB376A8();
}

uint64_t sub_22BC896C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC89068(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC896F0(uint64_t a1)
{
  v2 = sub_22BC8D1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC8972C(uint64_t a1)
{
  v2 = sub_22BC8D1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC8979C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22BDBA1C4();
  v4 = sub_22BB30444(v3);
  v50 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BBE6DE0(&qword_27D8E37C8, &qword_22BDBFB30);
  v12 = sub_22BB2F0C8(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB3721C();
  v24 = sub_22BBE6DE0(&qword_27D8E3760, &qword_22BDBFAA8);
  sub_22BB2F0C8(v24);
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BDBA214();
  sub_22BDBA1D4();
  sub_22BB38518();
  sub_22BC5E5C4();
  sub_22BB31814(v17, 1, v3);
  if (v28)
  {
    sub_22BB58728(v19, &qword_27D8E37C8, &qword_22BDBFB30);
    v35 = type metadata accessor for TypedValueUndoContext(0);
    v39 = v1;
    v40 = 1;
  }

  else
  {
    v29 = v50;
    (*(v50 + 32))(v10, v17, v3);
    sub_22BDBA1A4();
    v30 = sub_22BDBA184();
    v48 = v31;
    v49 = v30;
    v32 = sub_22BDBA194();
    v34 = v33;
    (*(v29 + 8))(v10, v3);
    sub_22BB58728(v19, &qword_27D8E37C8, &qword_22BDBFB30);
    v35 = type metadata accessor for TypedValueUndoContext(0);
    v36 = (v1 + *(v35 + 20));
    v37 = v48;
    *v36 = v49;
    v36[1] = v37;
    v38 = (v1 + *(v35 + 24));
    *v38 = v32;
    v38[1] = v34;
    v39 = v1;
    v40 = 0;
  }

  sub_22BB336D0(v39, v40, 1, v35);
  v41 = sub_22BDBA1E4();
  v42 = sub_22BBE6DE0(&qword_27D8E3018, &qword_22BDBDAA8);
  v43 = a1 + v42[11];
  sub_22BDBA1F4();
  v44 = sub_22BDBA204();
  sub_22BC8D26C();
  v45 = v42[9];
  result = sub_22BC8D26C();
  *(a1 + v42[10]) = v41;
  *(a1 + v42[12]) = v44 & 1;
  return result;
}

uint64_t sub_22BC89AD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BB35954();
}

uint64_t sub_22BC89AEC()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v2 + 24));
  v3 = *(MEMORY[0x277D1E260] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v2 + 32) = v4;
  *v4 = v5;
  v4[1] = sub_22BC8DA70;
  v6 = sub_22BB95750();

  return MEMORY[0x282177E58](v6, v0, v1);
}

uint64_t sub_22BC89B90()
{
  sub_22BB2F0D4();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[17] = v5;
  v1[18] = v6;
  v7 = sub_22BDBA224();
  v1[23] = v7;
  sub_22BB30434(v7);
  v1[24] = v8;
  v10 = *(v9 + 64);
  v1[25] = sub_22BB30ACC();
  v11 = sub_22BBE6DE0(&qword_27D8E2988, &unk_22BDBD050);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  v1[26] = sub_22BB30ACC();
  v14 = sub_22BDBA014();
  v1[27] = v14;
  sub_22BB30434(v14);
  v1[28] = v15;
  v17 = *(v16 + 64);
  v1[29] = sub_22BB30ACC();
  v18 = sub_22BDBA044();
  v1[30] = v18;
  sub_22BB30434(v18);
  v1[31] = v19;
  v21 = *(v20 + 64);
  v1[32] = sub_22BB30ACC();
  v22 = sub_22BBE6DE0(&qword_27D8E2B20, &unk_22BDBF750);
  sub_22BB2F0C8(v22);
  v24 = *(v23 + 64);
  v1[33] = sub_22BB30ACC();
  v25 = sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  sub_22BB2F0C8(v25);
  v27 = *(v26 + 64);
  v1[34] = sub_22BB30ACC();
  v28 = sub_22BBE6DE0(&qword_27D8E37B0, &unk_22BDBFB18);
  sub_22BB2F0C8(v28);
  v30 = *(v29 + 64);
  v1[35] = sub_22BB31AF0();
  v1[36] = swift_task_alloc();
  v31 = sub_22BDBA264();
  v1[37] = v31;
  sub_22BB30434(v31);
  v1[38] = v32;
  v34 = *(v33 + 64);
  v1[39] = sub_22BB30ACC();
  v35 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_22BC89DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  v21 = *(v20 + 272);
  v22 = *(v20 + 168);
  sub_22BC5E5C4();
  v23 = sub_22BDB8274();
  v24 = sub_22BB3AA28(v21, 1, v23);
  v25 = *(v20 + 280);
  if (v24 == 1)
  {
    sub_22BB58728(*(v20 + 272), &qword_27D8E2968, &unk_22BDBD220);
    v26 = sub_22BDBA244();
    sub_22BB30B28();
    sub_22BB336D0(v27, v28, v29, v26);
  }

  else
  {
    sub_22BC8A578(*(v20 + 280));
    sub_22BB30474(v23);
    v31 = *(v30 + 8);
    v32 = sub_22BB2F3F0();
    v33(v32);
    v26 = sub_22BDBA244();
    sub_22BB2F164(v25);
    if (!v34)
    {
      v40 = *(v20 + 280);
      v39 = *(v20 + 288);
      sub_22BB30474(v26);
      (*(v41 + 32))();
      goto LABEL_7;
    }
  }

  v36 = *(v20 + 280);
  v35 = *(v20 + 288);
  v37 = *MEMORY[0x277D72630];
  sub_22BDBA244();
  sub_22BB30474(v26);
  (*(v38 + 104))(v35, v37, v26);
  sub_22BB2F164(v36);
  if (!v34)
  {
    sub_22BB58728(*(v20 + 280), &qword_27D8E37B0, &unk_22BDBFB18);
  }

LABEL_7:
  v43 = *(v20 + 304);
  v42 = *(v20 + 312);
  v44 = *(v20 + 288);
  v45 = *(v20 + 264);
  v46 = *(v20 + 224);
  v87 = *(v20 + 232);
  v88 = *(v20 + 216);
  v89 = *(v20 + 208);
  v90 = *(v20 + 296);
  v47 = *(v20 + 168);
  v91 = *(v20 + 152);
  v92 = *(v20 + 256);
  v86 = *(v20 + 144);
  sub_22BDBA244();
  v48 = sub_22BB72084();
  sub_22BB336D0(v48, v49, v50, v26);
  v51 = type metadata accessor for InvocationOptions(0);
  v52 = v51[7];
  sub_22BC5E5C4();
  v53 = v51[6];
  v54 = (v47 + v51[5]);
  v55 = *v54;
  v56 = v54[1];
  v57 = v47 + v53;
  v58 = *(v47 + v53);
  v59 = *(v57 + 8);

  sub_22BDBA254();
  (*(v46 + 16))(v87, v86, v88);
  v60 = *(v43 + 16);
  v61 = sub_22BB2F0E0();
  v62(v61);
  sub_22BB331C8();
  sub_22BB336D0(v63, v64, v65, v90);

  sub_22BB2F324();
  sub_22BDBA024();
  v66 = *(v20 + 160);
  sub_22BB690EC(*(v20 + 176), v20 + 16);
  v67 = *(v20 + 48);
  sub_22BB69FEC((v20 + 16), *(v20 + 40));
  sub_22BC5E5C4();
  if (*(v20 + 120))
  {
    v68 = *(v20 + 128);
    sub_22BB69FEC((v20 + 96), *(v20 + 120));
    v69 = sub_22BB393C4();
    sub_22BC88948(v69, v70, v71);
    sub_22BB32FA4((v20 + 96));
  }

  else
  {
    sub_22BB58728(v20 + 96, &qword_27D8E2F10, &qword_22BDBD7D0);
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    *(v20 + 88) = 0;
  }

  v72 = *(MEMORY[0x277D1E278] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v20 + 320) = v73;
  *v73 = v74;
  v73[1] = sub_22BC8A248;
  v75 = *(v20 + 256);
  v76 = *(v20 + 200);
  sub_22BB3CEF4();

  return MEMORY[0x282177E70](v77, v78, v79, v80, v81, v82, v83, v84, a9, v86, v87, v88, v89, v90, v91, v92, a17, a18, a19, a20);
}

uint64_t sub_22BC8A248()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  v4 = *(v2 + 320);
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  *(v3 + 328) = v0;

  sub_22BB58728(v3 + 56, &qword_27D8E37B8, &qword_22BDBFB28);
  if (v0)
  {
    v7 = sub_22BC8A488;
  }

  else
  {
    v7 = sub_22BC8A364;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22BC8A364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  v20 = v18[38];
  v19 = v18[39];
  v21 = v18[37];
  v43 = v18[36];
  v44 = v18[35];
  v22 = v18[32];
  v45 = v18[34];
  v46 = v18[33];
  v23 = v18[30];
  v24 = v18[31];
  v25 = v18[25];
  v47 = v18[29];
  v48 = v18[26];
  v26 = v18[23];
  v27 = v18[24];
  sub_22BC8979C(v18[17]);
  v28 = *(v27 + 8);
  v29 = sub_22BB2F324();
  v30(v29);
  (*(v24 + 8))(v22, v23);
  v31 = *(v20 + 8);
  v32 = sub_22BB32E04();
  v33(v32);
  sub_22BB32FA4(v18 + 2);

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, v45, v46, v47, v48, a16, a17, a18);
}

void sub_22BC8A488()
{
  sub_22BB35458();
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v4 = *(v2 + 8);
  v5 = sub_22BB2F324();
  v6(v5);
  sub_22BB32FA4(v0 + 2);
  v7 = v0[41];
  v8 = v0[39];
  v10 = v0[35];
  v9 = v0[36];
  sub_22BB69718();

  sub_22BB2F09C();
  sub_22BB33430();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BC8A578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22BDB8274();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  (*(v7 + 16))(v11 - v10, v2, v4);
  v12 = *(v7 + 88);
  v13 = sub_22BB37494();
  v15 = v14(v13);
  if (v15 == *MEMORY[0x277D1DC20])
  {
    v16 = MEMORY[0x277D72620];
LABEL_7:
    v18 = *v16;
    v19 = sub_22BDBA244();
    sub_22BB2F330(v19);
    (*(v20 + 104))(a1, v18, v19);
    v21 = sub_22BB72084();
    v24 = v19;
    return sub_22BB336D0(v21, v22, v23, v24);
  }

  v17 = v15;
  if (v15 == *MEMORY[0x277D1DC30])
  {
    v16 = MEMORY[0x277D72638];
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x277D1DC28])
  {
    v16 = MEMORY[0x277D72628];
    goto LABEL_7;
  }

  v26 = *MEMORY[0x277D1DC18];
  v27 = sub_22BDBA244();
  sub_22BB2F330(v27);
  v29 = *(v28 + 104);
  if (v17 == v26)
  {
    v29(a1, *MEMORY[0x277D72618], v27);
    v21 = sub_22BB72084();
    v24 = v27;
    return sub_22BB336D0(v21, v22, v23, v24);
  }

  v29(a1, *MEMORY[0x277D72630], v27);
  v30 = sub_22BB72084();
  sub_22BB336D0(v30, v31, v32, v27);
  v33 = *(v7 + 8);
  v34 = sub_22BB37494();
  return v35(v34);
}

uint64_t sub_22BC8A7A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BB35954();
}

uint64_t sub_22BC8A7B8()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 32));
  v1 = *(MEMORY[0x277D1E298] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 40) = v2;
  *v2 = v3;
  v4 = sub_22BB6C6BC(v2);

  return MEMORY[0x282177E90](v4);
}

uint64_t sub_22BC8A850()
{
  sub_22BB2F0D4();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = sub_22BBE6DE0(&qword_27D8E37A8, &qword_22BDBFAE8);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  v1[24] = sub_22BB30ACC();
  v8 = sub_22BB31C00();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC8A8D8()
{
  sub_22BB2F35C();
  v1 = *(v0 + 176);
  sub_22BB690EC(*(v0 + 184), v0 + 80);
  v2 = *(v0 + 112);
  sub_22BB69FEC((v0 + 80), *(v0 + 104));
  sub_22BC5E5C4();
  v3 = *(v0 + 192);
  if (*(v0 + 40))
  {
    sub_22BB690EC(v0 + 16, v0 + 120);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    sub_22BDBA9E4();
    sub_22BC8D11C(v0 + 16);
    v7 = sub_22BDBA9F4();
    v8 = v3;
    v9 = 0;
  }

  else
  {
    sub_22BB58728(v0 + 16, &qword_27D8E2990, &qword_22BDBFAF0);
    v7 = sub_22BDBA9F4();
    v8 = v3;
    v9 = 1;
  }

  sub_22BB336D0(v8, v9, 1, v7);
  v10 = *(MEMORY[0x277D1E2A0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_22BC8AA40;
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);
  v14 = sub_22BB3487C(*(v0 + 160));

  return MEMORY[0x282177E98](v14);
}

uint64_t sub_22BC8AA40()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  v7 = *(v4 + 200);
  *v6 = *v1;
  *(v5 + 208) = v0;

  v8 = *(v4 + 192);
  if (v0)
  {
    sub_22BB58728(v8, &qword_27D8E37A8, &qword_22BDBFAE8);
    v9 = sub_22BC8AC08;
  }

  else
  {
    *(v5 + 216) = v3;
    sub_22BB58728(v8, &qword_27D8E37A8, &qword_22BDBFAE8);
    v9 = sub_22BC8AB9C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22BC8AB9C()
{
  sub_22BB2F0D4();
  v1 = v0[24];
  sub_22BB32FA4(v0 + 10);

  sub_22BB39738();
  v3 = v0[27];

  return v2(v3);
}

uint64_t sub_22BC8AC08()
{
  sub_22BB2F0D4();
  v1 = v0[24];
  sub_22BB32FA4(v0 + 10);

  sub_22BB2F09C();
  v3 = v0[26];

  return v2();
}

uint64_t sub_22BC8AC70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BB35954();
}

uint64_t sub_22BC8AC84()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v2 + 24));
  v3 = *(MEMORY[0x277D1E268] + 4);
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22BC8DA70;
  v5 = sub_22BB3487C(*(v2 + 16));

  return MEMORY[0x282177E60](v5, v0, v1);
}

uint64_t sub_22BC8AD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BB35954();
}

uint64_t sub_22BC8AD44()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 40));
  v1 = *(MEMORY[0x277D1E270] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 48) = v2;
  *v2 = v3;
  v4 = sub_22BB52E04(v2);

  return MEMORY[0x282177E68](v4);
}

uint64_t sub_22BC8ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BB35954();
}

uint64_t sub_22BC8ADF4()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 40));
  v1 = *(MEMORY[0x277D1E280] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 48) = v2;
  *v2 = v3;
  v4 = sub_22BB52E04(v2);

  return MEMORY[0x282177E78](v4);
}

uint64_t sub_22BC8AE8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BB35954();
}

uint64_t sub_22BC8AEA4()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 32));
  v1 = *(MEMORY[0x277D1E288] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22BC8AF4C;
  v3 = *(v0 + 24);
  v4 = sub_22BB3487C(*(v0 + 16));

  return MEMORY[0x282177E80](v4);
}

uint64_t sub_22BC8AF4C()
{
  sub_22BB2F0D4();
  v3 = v2;
  sub_22BB32690();
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;

  sub_22BB39738();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_22BC8B038(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BB35954();
}

uint64_t sub_22BC8B050()
{
  sub_22BB2F35C();
  sub_22BB699C4(*(v0 + 32));
  v1 = *(MEMORY[0x277D1E290] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 40) = v2;
  *v2 = v3;
  v4 = sub_22BB6C6BC(v2);

  return MEMORY[0x282177E88](v4);
}

uint64_t sub_22BC8B0E8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BC8B1E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC89AD8(a1);
}

uint64_t sub_22BC8B280()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BB3C48C;

  return sub_22BC89B90();
}

uint64_t sub_22BC8B348(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BB3C48C;

  return sub_22BC8A7A0(a1, a2);
}

uint64_t sub_22BC8B3F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BB3C48C;

  return sub_22BC8B038(a1, a2);
}

uint64_t sub_22BC8B498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BC8DAA0;

  return sub_22BC8A850();
}

uint64_t sub_22BC8B544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BB3C48C;

  return sub_22BC8AC70(a1);
}

uint64_t sub_22BC8B5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BB3C48C;

  return sub_22BC8AD2C(a1, a2, a3);
}

uint64_t sub_22BC8B688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BB3C48C;

  return sub_22BC8ADDC(a1, a2, a3);
}

uint64_t sub_22BC8B738(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BC8B7DC;

  return sub_22BC8AE8C(a1, a2);
}

uint64_t sub_22BC8B7DC()
{
  sub_22BB2F0D4();
  v3 = v2;
  sub_22BB32690();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;

  sub_22BB39738();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_22BC8B8C8()
{
  sub_22BB35F54();
  sub_22BBCBF80(v0);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_22BDBB6D4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DisambiguationListItem(0) + 20);

  return sub_22BDBA574();
}

uint64_t sub_22BC8B934(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BC8B9F0(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22BC8BA18(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22BBE6DE0(&qword_27D8E3800, &qword_22BDBFB58);
  sub_22BB30444(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = sub_22BB313A8();
  sub_22BB699E4(v15, v16);
  sub_22BC8D218();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  v17 = *v3;
  v18 = v3[1];
  v23[15] = 0;
  sub_22BDBB624();
  if (!v2)
  {
    v19 = *(type metadata accessor for DisambiguationListItem(0) + 20);
    sub_22BB393D0();
    sub_22BDBA594();
    sub_22BB89844();
    sub_22BC80F98(v20, v21);
    sub_22BDBB664();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_22BC8BBA0()
{
  sub_22BB31014();
  v3 = v2;
  v26 = sub_22BDBA594();
  v4 = sub_22BB30444(v26);
  v25 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB36FD8();
  v27 = sub_22BBE6DE0(&qword_27D8E37F0, &qword_22BDBFB50);
  sub_22BB30444(v27);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB3A5CC();
  v12 = type metadata accessor for DisambiguationListItem(v11);
  v13 = sub_22BB2F330(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v18 = (v17 - v16);
  v19 = v3[4];
  sub_22BB699E4(v3, v3[3]);
  sub_22BC8D218();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v3);
  }

  else
  {
    *v18 = sub_22BDBB594();
    v18[1] = v20;
    sub_22BB393D0();
    sub_22BB89844();
    sub_22BC80F98(v21, v22);
    sub_22BB3DE30();
    sub_22BDBB5D4();
    v23 = sub_22BC8DAB8();
    v24(v23);
    (*(v25 + 32))(v18 + *(v12 + 20), v1, v26);
    sub_22BB8C3BC();
    sub_22BB32FA4(v3);
    sub_22BB8DA24(v18, type metadata accessor for DisambiguationListItem);
  }

  sub_22BB376A8();
}

uint64_t sub_22BC8BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC8B934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BC8BE8C(uint64_t a1)
{
  v2 = sub_22BC8D218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC8BEC8(uint64_t a1)
{
  v2 = sub_22BC8D218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BC8BF04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22BC8BF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3928, &qword_22BDC0280);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_22BDB54A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  v17 = MEMORY[0x2318A4880](v14);
  v18 = [v17 source];

  sub_22BC8C278(v18, v7);
  if (sub_22BB3AA28(v7, 1, v8) == 1)
  {
    v19 = sub_22BDBA8C4();
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_22BB58728(v7, &qword_27D8E3928, &qword_22BDC0280);
    v20 = 1;
  }

  else
  {
    v21 = (*(v9 + 32))(v16, v7, v8);
    v22 = MEMORY[0x2318A4880](v21);
    v23 = [v22 bundleIdentifier];

    sub_22BDBABF4();
    v24 = (*(v9 + 16))(v13, v16, v8);
    v25 = MEMORY[0x2318A4880](v24);
    [v25 isExplicitRequest];

    sub_22BDB5494();
    v26 = sub_22BDBA8C4();
    (*(*(v26 - 8) + 8))(a1, v26);
    (*(v9 + 8))(v16, v8);
    v20 = 0;
  }

  v27 = sub_22BDB54B4();
  return sub_22BB336D0(a2, v20, 1, v27);
}

uint64_t sub_22BC8C278@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB77D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB54A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 4)
  {
    sub_22BDB63F4();
    v15 = sub_22BDB77C4();
    v16 = sub_22BDBB114();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = a2;
      v27 = a1;
      v19 = v18;
      v28 = v18;
      *v17 = 136315138;
      type metadata accessor for LNConfirmationSystemStyleMontaraEnablementSource(0);
      v20 = sub_22BDBAC14();
      v22 = sub_22BB32EE0(v20, v21, &v28);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_22BB2C000, v15, v16, "ShortcutsDialogPromptHandler: Unexpected LNConfirmationSystemStyleMontaraEnablementSource case: %s", v17, 0xCu);
      sub_22BB32FA4(v19);
      v23 = v19;
      a2 = v26;
      MEMORY[0x2318A6080](v23, -1, -1);
      MEMORY[0x2318A6080](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v14 = 1;
  }

  else
  {
    (*(v10 + 104))(v13, **(&unk_278722E00 + a1), v9);
    (*(v10 + 32))(a2, v13, v9);
    v14 = 0;
  }

  return sub_22BB336D0(a2, v14, 1, v9);
}

void sub_22BC8C518()
{
  sub_22BB31014();
  v4 = v3;
  v40 = v5;
  v46 = type metadata accessor for TypedValueUndoContext(0);
  v6 = sub_22BB2F330(v46);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = sub_22BDBA564();
  v10 = sub_22BB30444(v9);
  v41 = v11;
  v42 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDBA044();
  v18 = sub_22BB30444(v17);
  v45 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  sub_22BB36FD8();
  v47 = sub_22BBE6DE0(&qword_27D8E3738, &unk_22BDBFA90);
  sub_22BB30444(v47);
  v43 = v22;
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB395E0();
  v26 = v4[4];
  sub_22BB699E4(v4, v4[3]);
  sub_22BC8CF00();
  sub_22BB3A41C();
  sub_22BC80F98(v27, v28);
  sub_22BDBB894();
  if (!v1)
  {
    v29 = v43;
    sub_22BB92830();
    sub_22BC80F98(v30, v31);
    sub_22BDBB5D4();
    sub_22BB393D0();
    sub_22BC80F98(&qword_281428908, MEMORY[0x277D72A10]);
    sub_22BB3DE30();
    sub_22BDBB5D4();
    sub_22BB8D22C();
    sub_22BC80F98(&qword_27D8E3750, type metadata accessor for TypedValueUndoContext);
    sub_22BDBB5D4();
    v44 = sub_22BDBB5A4();
    (*(v29 + 8))(v0, v47);
    (*(v41 + 32))(v40, v16, v42);
    sub_22BB331C8();
    sub_22BB336D0(v32, v33, v34, v42);
    v35 = sub_22BBE6DE0(&qword_27D8E3018, &qword_22BDBDAA8);
    v36 = v35[9];
    sub_22BBADC44();
    sub_22BB8D7FC();
    sub_22BB331C8();
    sub_22BB336D0(v37, v38, v39, v46);
    (*(v45 + 32))(v40 + v35[11], v2, v17);
    *(v40 + v35[10]) = 0;
    *(v40 + v35[12]) = v44 & 1;
  }

  sub_22BB32FA4(v4);
  sub_22BB376A8();
}

void sub_22BC8C98C()
{
  sub_22BB31014();
  sub_22BBBEB7C();
  v4 = sub_22BBE6DE0(&qword_27D8E3758, &qword_22BDBFAA0);
  sub_22BB30444(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB3721C();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = sub_22BB313A8();
  sub_22BB699E4(v12, v13);
  sub_22BC8CF00();
  sub_22BB3A41C();
  sub_22BC80F98(v14, v15);
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  v16 = sub_22BBE6DE0(&qword_27D8E3018, &qword_22BDBDAA8);
  v17 = v16[11];
  sub_22BDBA044();
  sub_22BB92830();
  sub_22BC80F98(v18, v19);
  sub_22BB3B7A8();
  if (!v1)
  {
    sub_22BB393D0();
    sub_22BBE6DE0(&qword_27D8E3760, &qword_22BDBFAA8);
    sub_22BC8CF60();
    sub_22BB3DE30();
    sub_22BB3B7A8();
    v20 = v16[9];
    sub_22BB8D22C();
    sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
    sub_22BC8D014();
    sub_22BB3B7A8();
    v21 = *(v3 + v16[12]);
    sub_22BB3B668();
    sub_22BDBB634();
  }

  (*(v6 + 8))(v2, v4);
  sub_22BB376A8();
}

uint64_t sub_22BC8CB94()
{
  v0 = sub_22BDBB534();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22BC8CBE0(char a1)
{
  result = 0x74757074756FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x746E6F436F646E75;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x727474416B6E696CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_22BC8CCBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22BC8CB94();
  *a2 = result;
  return result;
}

unint64_t sub_22BC8CCEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22BC8CBE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22BC8CD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BC8CB94();
  *a1 = result;
  return result;
}

uint64_t sub_22BC8CD68(uint64_t a1)
{
  v2 = sub_22BC80F98(&qword_27D8E3748, sub_22BC8CF00);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC8CDD4(uint64_t a1)
{
  v2 = sub_22BC80F98(&qword_27D8E3748, sub_22BC8CF00);

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22BC8CE74()
{
  result = qword_281429970;
  if (!qword_281429970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429970);
  }

  return result;
}

void sub_22BC8CF00()
{
  if (!qword_27D8E3740)
  {
    v0 = _s10CodingKeysOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8E3740);
    }
  }
}

unint64_t sub_22BC8CF60()
{
  result = qword_27D8E3768;
  if (!qword_27D8E3768)
  {
    sub_22BBEB2E0(&qword_27D8E3760, &qword_22BDBFAA8);
    sub_22BC80F98(&qword_281428910, MEMORY[0x277D72A10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3768);
  }

  return result;
}

unint64_t sub_22BC8D014()
{
  result = qword_27D8E3770;
  if (!qword_27D8E3770)
  {
    sub_22BBEB2E0(&qword_27D8E2528, &unk_22BDBD190);
    sub_22BC80F98(&qword_27D8E3778, type metadata accessor for TypedValueUndoContext);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3770);
  }

  return result;
}

unint64_t sub_22BC8D0C8()
{
  result = qword_27D8E3788;
  if (!qword_27D8E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3788);
  }

  return result;
}

unint64_t sub_22BC8D170()
{
  result = qword_27D8E37C0;
  if (!qword_27D8E37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E37C0);
  }

  return result;
}

unint64_t sub_22BC8D1C4()
{
  result = qword_27D8E37D8;
  if (!qword_27D8E37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E37D8);
  }

  return result;
}

unint64_t sub_22BC8D218()
{
  result = qword_27D8E37F8;
  if (!qword_27D8E37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E37F8);
  }

  return result;
}

uint64_t sub_22BC8D26C()
{
  sub_22BB35F54();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F330(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationListItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22BC8D3B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22BC8D3F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

_BYTE *sub_22BC8D448(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s17ActionPromptVoterVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22BC8D5B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BC8D6CC()
{
  result = qword_27D8E38C0;
  if (!qword_27D8E38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38C0);
  }

  return result;
}

unint64_t sub_22BC8D724()
{
  result = qword_27D8E38C8;
  if (!qword_27D8E38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38C8);
  }

  return result;
}

unint64_t sub_22BC8D77C()
{
  result = qword_27D8E38D0;
  if (!qword_27D8E38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38D0);
  }

  return result;
}

unint64_t sub_22BC8D7D4()
{
  result = qword_27D8E38D8;
  if (!qword_27D8E38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38D8);
  }

  return result;
}

unint64_t sub_22BC8D82C()
{
  result = qword_27D8E38E0;
  if (!qword_27D8E38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38E0);
  }

  return result;
}

unint64_t sub_22BC8D884()
{
  result = qword_27D8E38E8;
  if (!qword_27D8E38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38E8);
  }

  return result;
}

unint64_t sub_22BC8D8DC()
{
  result = qword_27D8E38F0;
  if (!qword_27D8E38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38F0);
  }

  return result;
}

unint64_t sub_22BC8D934()
{
  result = qword_27D8E38F8;
  if (!qword_27D8E38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E38F8);
  }

  return result;
}

unint64_t sub_22BC8D98C()
{
  result = qword_27D8E3900;
  if (!qword_27D8E3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3900);
  }

  return result;
}

uint64_t sub_22BC8DAB8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t *sub_22BC8DB14@<X0>(char *a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v85 = a1;
  v7 = sub_22BBE6DE0(&qword_27D8E2680, &qword_22BDBCCB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v80 - v9;
  v11 = sub_22BBE6DE0(&qword_27D8E3930, &qword_22BDC0308);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v80 - v13;
  v15 = sub_22BDBA594();
  v91 = *(v15 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22BBE6DE0(&qword_27D8E3938, &unk_22BDC0310);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v80 - v21;
  if (a2)
  {
    if (a2 == 1)
    {
      sub_22BDBA654();
      v23 = sub_22BDBA894();
      if (sub_22BB3AA28(v10, 1, v23) == 1)
      {
        v24 = &qword_27D8E2680;
        v25 = &qword_22BDBCCB0;
        v26 = v10;
LABEL_9:
        result = sub_22BB6B75C(v26, v24, v25);
        *a3 = 0u;
        *(a3 + 1) = 0u;
        a3[4] = 0;
        return result;
      }

      v89 = v23;
      sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
      v31 = v91;
      v32 = *(v91 + 72);
      v33 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_22BDBCBD0;
      v35 = sub_22BDBA514();
      v36 = swift_allocBox();
      v83 = a3;
      v37 = v36;
      v90 = v15;
      v39 = v38;
      sub_22BC8E318();
      v40 = v85;
      sub_22BDBA5E4();
      v41 = *MEMORY[0x277D72960];
      sub_22BB30474(v35);
      (*(v42 + 104))(v39);
      *(v34 + v33) = v37;
      a3 = v83;
      (*(v31 + 104))(v34 + v33, *MEMORY[0x277D72A58], v90);
      a3[3] = sub_22BBE6DE0(&qword_27D8E3940, &qword_22BDC0320);
      a3[4] = swift_getOpaqueTypeConformance2();
      sub_22BB8B8A0(a3);
      sub_22BDBA884();
      if (v3)
      {

        sub_22BB35A90();
        (*(v43 + 8))(v10, v44);
        return sub_22BC8E35C(a3);
      }

      sub_22BB35A90();
      return (*(v75 + 8))(v10, v76);
    }

    else
    {
      v28 = v22;
      sub_22BDBA664();
      v29 = sub_22BDBA6B4();
      if (sub_22BB3AA28(v28, 1, v29) == 1)
      {
        v24 = &qword_27D8E3938;
        v25 = &unk_22BDC0310;
        v26 = v28;
        goto LABEL_9;
      }

      v82 = v28;
      v61 = v85;
      v62 = *(v85 + 2);
      if (v62)
      {
        v81 = v29;
        v83 = a3;
        v84 = v3;
        v92 = MEMORY[0x277D84F90];
        sub_22BD27A40();
        v63 = v92;
        v64 = sub_22BDBA514();
        LODWORD(v90) = *MEMORY[0x277D729B8];
        v89 = v64 - 8;
        v88 = *MEMORY[0x277D72A58];
        v86 = v91 + 32;
        v87 = (v91 + 104);
        v65 = (v61 + 40);
        do
        {
          v67 = *(v65 - 1);
          v66 = *v65;
          v68 = v15;
          v69 = swift_allocBox();
          *v70 = v67;
          v70[1] = v66;
          (*(*(v64 - 8) + 104))(v70, v90, v64);
          *v18 = v69;
          (*v87)(v18, v88, v68);
          v92 = v63;
          v72 = *(v63 + 16);
          v71 = *(v63 + 24);

          if (v72 >= v71 >> 1)
          {
            sub_22BD27A40();
            v63 = v92;
          }

          *(v63 + 16) = v72 + 1;
          (*(v91 + 32))(v63 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v72, v18, v68);
          v65 += 2;
          --v62;
          v15 = v68;
        }

        while (v62);
        a3 = v83;
        v4 = v84;
        v29 = v81;
      }

      a3[3] = sub_22BBE6DE0(qword_27D8E3950, qword_22BDC0330);
      a3[4] = swift_getOpaqueTypeConformance2();
      sub_22BB8B8A0(a3);
      v73 = v82;
      sub_22BDBA6A4();
      if (v4)
      {

        sub_22BB30474(v29);
        (*(v74 + 8))(v73, v29);
        return sub_22BC8E35C(a3);
      }

      sub_22BB30474(v29);
      return (*(v79 + 8))(v73, v29);
    }
  }

  else
  {
    sub_22BDBA644();
    v27 = sub_22BDBA7F4();
    if (sub_22BB3AA28(v14, 1, v27) == 1)
    {
      v24 = &qword_27D8E3930;
      v25 = &qword_22BDC0308;
      v26 = v14;
      goto LABEL_9;
    }

    v89 = v27;
    sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
    v45 = v91;
    v46 = *(v91 + 72);
    v47 = *(v91 + 80);
    v84 = v3;
    v48 = (v47 + 32) & ~v47;
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_22BDBCBD0;
    v50 = sub_22BDBA514();
    v51 = a3;
    v52 = swift_allocBox();
    v90 = v15;
    v54 = v53;
    *v53 = sub_22BDBAC44();
    v54[1] = v55;
    v56 = *MEMORY[0x277D729B8];
    sub_22BB30474(v50);
    (*(v57 + 104))(v54);
    *(v49 + v48) = v52;
    a3 = v51;
    (*(v45 + 104))(v49 + v48, *MEMORY[0x277D72A58], v90);
    v51[3] = sub_22BBE6DE0(&qword_27D8E3948, &qword_22BDC0328);
    v51[4] = swift_getOpaqueTypeConformance2();
    sub_22BB8B8A0(v51);
    v58 = v84;
    sub_22BDBA7E4();
    if (v58)
    {

      sub_22BB35A90();
      (*(v59 + 8))(v14, v60);
      return sub_22BC8E35C(a3);
    }

    sub_22BB35A90();
    return (*(v77 + 8))(v14, v78);
  }
}

unint64_t sub_22BC8E318()
{
  result = qword_27D8E2698[0];
  if (!qword_27D8E2698[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27D8E2698);
  }

  return result;
}

uint64_t *sub_22BC8E35C(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2318A6080);
  }

  return result;
}

uint64_t sub_22BC8E3B8()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22BDBCBD0;
      *(inited + 32) = 0xD000000000000011;
      *(inited + 40) = 0x800000022BDD2470;
      *(inited + 72) = sub_22BBE6DE0(&qword_27D8E39E8, &qword_22BDC04C8);
      *(inited + 48) = v1;
    }
  }

  else
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = v0[1];
    sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_22BDBCBC0;
    *(v6 + 32) = 0x64496C6F6F74;
    *(v6 + 40) = 0xE600000000000000;
    v7 = MEMORY[0x277D837D0];
    *(v6 + 48) = v1;
    *(v6 + 56) = v5;
    *(v6 + 72) = v7;
    *(v6 + 80) = 0x6574656D61726170;
    *(v6 + 120) = v7;
    *(v6 + 88) = 0xEB00000000644972;
    *(v6 + 96) = v4;
    *(v6 + 104) = v3;
  }

  return sub_22BDBAB14();
}

uint64_t sub_22BC8E598(uint64_t a1)
{
  v2 = sub_22BC8EBEC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BC8E5D4(uint64_t a1)
{
  v2 = sub_22BC8EBEC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BC8E634(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_22BC8E650(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BC8E664(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BC8E6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22BC8E6EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_22BC8E718(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22BC8EAD0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BC8E7A0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22BB3AA28(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22BC8E8DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            sub_22BB336D0(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_22BC8EAD0()
{
  result = qword_27D8E39D8;
  if (!qword_27D8E39D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8E39D8);
  }

  return result;
}

__n128 sub_22BC8EB2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22BC8EB48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22BC8EB88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BC8EBEC()
{
  result = qword_27D8E39E0;
  if (!qword_27D8E39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E39E0);
  }

  return result;
}

void sub_22BC8EC40(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v163 = a5;
  v148 = a4;
  v155 = a2;
  v162 = a1;
  v6 = sub_22BBE6DE0(&qword_27D8E3038, &qword_22BDBDAD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = &v143 - v8;
  sub_22BB2F120();
  v150 = sub_22BDB8B64();
  v9 = sub_22BB30444(v150);
  v147 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v146 = v14 - v13;
  sub_22BB2F120();
  v154 = sub_22BDBA424();
  v15 = sub_22BB30444(v154);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v153 = v21 - v20;
  sub_22BB2F120();
  v159 = sub_22BDBA4B4();
  v22 = sub_22BB30444(v159);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  v158 = v28 - v27;
  sub_22BB2F120();
  v29 = sub_22BDBA594();
  v30 = sub_22BB30444(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30560();
  v160 = v35;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v36);
  v164 = &v143 - v37;
  sub_22BB30B70();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = (&v143 - v40);
  MEMORY[0x28223BE20](v39);
  v43 = &v143 - v42;
  v44 = a3 + 64;
  v45 = 1 << *(a3 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(a3 + 64);
  v48 = (v45 + 63) >> 6;
  v168 = (v32 + 88);
  v169 = v32 + 16;
  v167 = *MEMORY[0x277D72A38];
  v166 = *MEMORY[0x277D729F8];
  v170 = (v32 + 8);
  v171 = a3;
  v161 = v32 + 96;
  v151 = v17 + 8;
  v152 = v17 + 16;
  v156 = v24 + 8;
  v157 = v24 + 16;

  v49 = 0;
  v165 = MEMORY[0x277D84F90];
  while (1)
  {
    v50 = v49;
    if (!v47)
    {
      break;
    }

LABEL_8:
    v51 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v52 = *(v32 + 16);
    v52(v43, *(v171 + 56) + *(v32 + 72) * (v51 | (v49 << 6)), v29);
    v52(v41, v43, v29);
    v53 = *(v32 + 88);
    v54 = sub_22BB31B54();
    v56 = v55(v54);
    if (v56 == v167)
    {
      v59 = sub_22BB33C50();
      v60(v59);
      v144 = *v41;
      swift_projectBox();
      v61 = sub_22BB31F1C();
      v62 = v159;
      v63(v61);
      v64 = sub_22BDBA3B4();
      sub_22BB31074(v64, v65);
      goto LABEL_13;
    }

    if (v56 == v166)
    {
      v66 = sub_22BB33C50();
      v67(v66);
      v144 = *v41;
      swift_projectBox();
      v68 = sub_22BB31F1C();
      v62 = v154;
      v69(v68);
      v70 = sub_22BDBA3B4();
      sub_22BB31074(v70, v71);
LABEL_13:
      v72 = sub_22BB31F1C();
      v73(v72, v62);
      v74 = sub_22BB30CAC();
      v75(v74);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = *(v165 + 16);
        sub_22BB305BC();
        sub_22BB8C414();
        v165 = v84;
      }

      v76 = v143;
      v78 = *(v165 + 16);
      v77 = *(v165 + 24);
      v79 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        sub_22BB2F158(v77);
        v144 = v85;
        sub_22BB8C414();
        v79 = v144;
        v165 = v86;
      }

      v80 = v165;
      *(v165 + 16) = v79;
      v81 = v80 + 16 * v78;
      v82 = v145;
      *(v81 + 32) = v76;
      *(v81 + 40) = v82;
    }

    else
    {
      v57 = *v170;
      (*v170)(v43, v29);
      v58 = sub_22BB31B54();
      (v57)(v58);
    }
  }

  while (2)
  {
    v49 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
    }

    else
    {
      if (v49 < v48)
      {
        v47 = *(v44 + 8 * v49);
        ++v50;
        if (v47)
        {
          goto LABEL_8;
        }

        continue;
      }

      v87 = sub_22BD1D0F4(v165);
      v88 = v163;
      v89 = sub_22BC8F598(v163);
      if (v162)
      {
        goto LABEL_20;
      }

      v90 = v89;
      if (sub_22BDB9FF4())
      {
        goto LABEL_20;
      }

      v91 = v149;
      sub_22BC90370(v148, v149);
      v92 = v150;
      if (sub_22BB3AA28(v91, 1, v150) == 1)
      {
        sub_22BB58780(v91, &qword_27D8E3038, &qword_22BDBDAD0);
      }

      else
      {
        v93 = v147;
        v94 = *(v147 + 32);
        v95 = v146;
        v96 = sub_22BB34278();
        v97(v96);
        if (v90)
        {
          v98 = sub_22BDB8B54();
          v165 = v87;
          v99 = v98;
          v100 = sub_22BDB9FE4();
          v102 = sub_22BC1E3F0(v100, v101, v99);

          v87 = v165;

          (*(v93 + 8))(v95, v92);
          if (v102)
          {
            goto LABEL_20;
          }
        }

        else
        {
          (*(v93 + 8))(v95, v92);
        }
      }

      if (v88 && *(v87 + 16) && (v90 & 1) != 0)
      {
        v165 = v87;
        v103 = sub_22BC8F7B8(v88);
        v104 = *(v103 + 16);
        if (v104)
        {
          v105 = *(v32 + 80);
          v163 = v103;
          v106 = v103 + ((v105 + 32) & ~v105);
          v171 = *(v32 + 72);
          v107 = *(v32 + 16);
          v108 = MEMORY[0x277D84F90];
          v109 = v160;
          while (1)
          {
            v110 = v164;
            v107(v164, v106, v29);
            v107(v109, v110, v29);
            v111 = *v168;
            v112 = sub_22BB31B54();
            v114 = v113(v112);
            if (v114 == v167)
            {
              break;
            }

            if (v114 == v166)
            {
              v124 = sub_22BB33C50();
              v125(v124);
              v126 = *v109;
              swift_projectBox();
              v127 = sub_22BB31F1C();
              v119 = v154;
              v128(v127);
              v121 = sub_22BDBA3B4();
              v123 = v129;
              goto LABEL_36;
            }

            v135 = *v170;
            v136 = sub_22BB31B54();
            (v135)(v136);
            v135(v164, v29);
LABEL_42:
            v106 += v171;
            if (!--v104)
            {

              goto LABEL_46;
            }
          }

          v115 = sub_22BB33C50();
          v116(v115);
          v117 = *v109;
          swift_projectBox();
          v118 = sub_22BB31F1C();
          v119 = v159;
          v120(v118);
          v121 = sub_22BDBA3B4();
          v123 = v122;
LABEL_36:
          v130 = sub_22BB31F1C();
          v131(v130, v119);

          (*v170)(v164, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = *(v108 + 16);
            sub_22BB305BC();
            sub_22BB8C414();
            v108 = v138;
          }

          v133 = *(v108 + 16);
          v132 = *(v108 + 24);
          if (v133 >= v132 >> 1)
          {
            sub_22BB2F158(v132);
            sub_22BB8C414();
            v108 = v139;
          }

          *(v108 + 16) = v133 + 1;
          v134 = v108 + 16 * v133;
          *(v134 + 32) = v121;
          *(v134 + 40) = v123;
          v109 = v160;
          goto LABEL_42;
        }

        v108 = MEMORY[0x277D84F90];
LABEL_46:
        v140 = sub_22BD1D0F4(v108);
        v141 = sub_22BC903E0(v140, v165);

        v142 = *(v141 + 16);
      }

      else
      {
LABEL_20:
      }
    }

    break;
  }
}

uint64_t sub_22BC8F598(uint64_t a1)
{
  v2 = sub_22BBE6DE0(qword_27D8E39F0, &qword_22BDC04D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_22BDB9FC4();
  v9 = sub_22BDBA734();
  if (sub_22BB3AA28(v6, 1, v9) == 1)
  {
    sub_22BDB9FA4();
    sub_22BB336D0(v8, 0, 1, v9);
    if (sub_22BB3AA28(v6, 1, v9) != 1)
    {
      sub_22BB58780(v6, qword_27D8E39F0, &qword_22BDC04D0);
    }
  }

  else
  {
    (*(*(v9 - 8) + 32))(v8, v6, v9);
    sub_22BB336D0(v8, 0, 1, v9);
  }

  if (sub_22BB3AA28(v8, 1, v9) == 1)
  {
    sub_22BB58780(v8, qword_27D8E39F0, &qword_22BDC04D0);
    LOBYTE(a1) = 0;
  }

  else
  {
    v10 = sub_22BDBA714();
    v12 = v11;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (a1)
    {
      sub_22BC8FC98(a1);
      LOBYTE(a1) = sub_22BC1E3F0(v10, v12, v13);
    }
  }

  return a1 & 1;
}

uint64_t sub_22BC8F7B8(uint64_t a1)
{
  v88 = sub_22BDB6094();
  v2 = sub_22BB30444(v88);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDB6174();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  v76 = v16;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v17);
  v87 = &v72 - v18;
  v19 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v72 - v21;
  v89 = sub_22BDBA594();
  v23 = sub_22BB30444(v89);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v75 = (v29 - v28);
  sub_22BB2F120();
  v30 = sub_22BDB92A4();
  v31 = sub_22BB30444(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v38 = v37 - v36;
  v39 = *(a1 + 16);
  if (v39)
  {
    v85 = v10;
    v86 = v9;
    v41 = *(v35 + 16);
    v40 = v35 + 16;
    v42 = a1 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v82 = *(v40 + 56);
    v83 = v41;
    v43 = (v13 + 8);
    v81 = v4 + 88;
    v80 = *MEMORY[0x277D1EB18];
    v78 = v4 + 8;
    v79 = v40 - 8;
    v73 = v25;
    v74 = (v25 + 32);
    v77 = MEMORY[0x277D84F90];
    v44 = v34;
    v84 = v40;
    while (1)
    {
      v83(v38, v42, v44);
      v45 = v87;
      sub_22BDB9294();
      sub_22BDB6164();
      v46 = *v43;
      v47 = v45;
      v48 = v44;
      v49 = v85;
      (*v43)(v47, v85);
      v50 = sub_22BB3722C();
      v51 = v88;
      v53 = v52(v50, v88);
      if (v53 == v80)
      {
        v54 = sub_22BB3722C();
        v55(v54, v51);
        v56 = v76;
        sub_22BDB9294();
        sub_22BDB6154();
        v46(v56, v49);
        v57 = sub_22BB30CAC();
        v58(v57);
        v44 = v48;
        if (sub_22BB3AA28(v22, 1, v89) != 1)
        {
          v59 = *v74;
          (*v74)(v75, v22, v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = *(v77 + 16);
            sub_22BB305BC();
            sub_22BD8EBF4();
            v77 = v69;
          }

          v61 = *(v77 + 16);
          v60 = *(v77 + 24);
          v62 = v73;
          if (v61 >= v60 >> 1)
          {
            sub_22BB2F158(v60);
            sub_22BD8EBF4();
            v62 = v73;
            v77 = v70;
          }

          v63 = v77;
          *(v77 + 16) = v61 + 1;
          v59(v63 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v61, v75, v89);
          goto LABEL_12;
        }
      }

      else
      {
        v64 = sub_22BB30CAC();
        v65(v64);
        v66 = sub_22BB3722C();
        v67(v66, v51);
        sub_22BB336D0(v22, 1, 1, v89);
        v44 = v48;
      }

      sub_22BB58780(v22, &qword_27D8E2668, &unk_22BDBCCD0);
LABEL_12:
      v42 += v82;
      if (!--v39)
      {
        return v77;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_22BC8FC98(uint64_t a1)
{
  v92 = sub_22BDBA4D4();
  v2 = sub_22BB30444(v92);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v91 = v8 - v7;
  v9 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v86 - v11;
  sub_22BB2F120();
  v101 = sub_22BDBA514();
  v12 = sub_22BB30444(v101);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  v100 = v17;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v18);
  v99 = &v86 - v19;
  sub_22BB2F120();
  v20 = sub_22BDB6094();
  v21 = sub_22BB30444(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  v28 = v27 - v26;
  v110 = sub_22BDB6174();
  v29 = sub_22BB30444(v110);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v104 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v33);
  v35 = &v86 - v34;
  v36 = 0;
  v37 = *(a1 + 16);
  v108 = a1;
  v109 = (v38 + 8);
  v39 = (v23 + 88);
  v107 = *MEMORY[0x277D1EAB8];
  v106 = (v23 + 8);
  v102 = *MEMORY[0x277D72A58];
  v96 = v14 + 88;
  v97 = (v14 + 16);
  v95 = *MEMORY[0x277D72970];
  v94 = (v14 + 8);
  v90 = v14 + 96;
  v89 = (v4 + 32);
  v88 = (v4 + 8);
  v93 = MEMORY[0x277D84F90];
  v98 = v20;
  v103 = (v23 + 88);
  while (1)
  {
    if (v37 == v36)
    {
      sub_22BD1D0F4(v93);
      return;
    }

    if (v36 >= v37)
    {
      break;
    }

    v40 = *(sub_22BDB92A4() - 8);
    v41 = *(v40 + 80);
    v42 = *(v40 + 72);
    v43 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_21;
    }

    sub_22BDB9294();
    sub_22BDB6164();
    v44 = *v109;
    (*v109)(v35, v110);
    v45 = (*v39)(v28, v20);
    (*v106)(v28, v20);
    if (v45 == v107)
    {
      v46 = v37;
      v47 = v104;
      sub_22BDB9294();
      v48 = v105;
      sub_22BDB6154();
      v44(v47, v110);
      v49 = sub_22BDBA594();
      if (sub_22BB3AA28(v48, 1, v49) == 1)
      {
        sub_22BB58780(v48, &qword_27D8E2668, &unk_22BDBCCD0);
        v37 = v46;
LABEL_12:
        v39 = v103;
        goto LABEL_13;
      }

      v50 = *(v49 - 8);
      v51 = v50[11];
      v52 = sub_22BB34278();
      v54 = v53(v52);
      v37 = v46;
      if (v54 != v102)
      {
        v69 = v50[1];
        v70 = sub_22BB34278();
        v71(v70);
        goto LABEL_12;
      }

      v55 = v50[12];
      v56 = sub_22BB34278();
      v57(v56);
      v58 = *v48;
      v59 = swift_projectBox();
      v60 = *v97;
      v61 = v99;
      v62 = v101;
      (*v97)(v99, v59, v101);

      v63 = v100;
      v60(v100, v61, v62);
      v64 = v63;
      v65 = sub_22BB31F1C();
      v67 = v66(v65, v62);
      v39 = v103;
      if (v67 != v95)
      {
        v68 = *v94;
        (*v94)(v61, v62);
        v68(v64, v62);
        v20 = v98;
        goto LABEL_13;
      }

      v72 = sub_22BB3722C();
      v73(v72, v62);
      v74 = v91;
      v75 = v92;
      (*v89)(v91, v63, v92);
      v76 = sub_22BDBA4C4();
      v87 = v77;
      (*v88)(v74, v75);
      (*v94)(v61, v62);
      v78 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = *(v78 + 16);
        sub_22BB305BC();
        sub_22BB8C414();
        v78 = v84;
      }

      v20 = v98;
      v80 = *(v78 + 16);
      v79 = *(v78 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_22BB2F158(v79);
        sub_22BB8C414();
        v78 = v85;
      }

      *(v78 + 16) = v80 + 1;
      v93 = v78;
      v81 = v78 + 16 * v80;
      v82 = v87;
      *(v81 + 32) = v76;
      *(v81 + 40) = v82;
      v36 = v43;
    }

    else
    {
LABEL_13:
      ++v36;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_22BC90370(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3038, &qword_22BDBDAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BC903E0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_22BBC0B54(0, v6, v8);
    v9 = sub_22BC90638(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_22BC905A8(v12, v6, a2, a1);

    MEMORY[0x2318A6080](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_22BC905A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22BC90638(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22BC90638(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_22BDBB814();

      sub_22BDBAC54();
      v42 = sub_22BDBB834();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_22BDBB6D4();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_22BC9D7C8(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_22BDBB814();

      sub_22BDBAC54();
      v19 = sub_22BDBB834();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_22BDBB6D4();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void sub_22BC909DC(uint64_t a1)
{
  v2 = sub_22BDB8E14();
  if (v3 <= 0x3F)
  {
    v15 = *(v2 - 8) + 64;
    sub_22BC9D1E8(319, &qword_281428A60, MEMORY[0x277D1E5C0]);
    if (v5 <= 0x3F)
    {
      v16 = *(v4 - 8) + 64;
      sub_22BC9D1E8(319, qword_28142D9D8, type metadata accessor for ResultResponse);
      if (v7 <= 0x3F)
      {
        v17 = *(v6 - 8) + 64;
        sub_22BC9D1E8(319, qword_28142A4F8, type metadata accessor for FollowUpActionRequest);
        if (v9 <= 0x3F)
        {
          v18 = *(v8 - 8) + 64;
          v10 = *(a1 + 88);
          v11 = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v19 = *(v11 - 8) + 64;
            v13 = sub_22BDB43E4();
            if (v14 <= 0x3F)
            {
              v20 = *(v13 - 8) + 64;
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_22BC90C1C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BDBA594();
  v5 = sub_22BB30444(v4);
  v72 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30C74();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v71 = v13;
  v14 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  v15 = sub_22BB2F0C8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v18);
  v67 = v1;
  if (v3 == v1 || *(v3 + 16) != *(v67 + 16))
  {
LABEL_20:
    sub_22BB314EC();
  }

  else
  {
    v65 = &v61 - v19;
    v66 = v20;
    v64 = v11;
    v21 = 0;
    v62 = v3;
    v22 = *(v3 + 64);
    v61 = v3 + 64;
    v23 = 1 << *(v3 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v68 = v72 + 16;
    v69 = (v72 + 32);
    v63 = (v72 + 8);
    while (1)
    {
      v27 = v66;
      if (!v25)
      {
        break;
      }

      v70 = (v25 - 1) & v25;
      v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_12:
      v31 = (*(v62 + 48) + 16 * v28);
      v32 = *v31;
      v33 = v31[1];
      v35 = v71;
      v34 = v72;
      (*(v72 + 16))(v71, *(v62 + 56) + *(v72 + 72) * v28, v4);
      v36 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      v37 = *(v36 + 48);
      *v27 = v32;
      *(v27 + 1) = v33;
      (*(v34 + 32))(&v27[v37], v35, v4);
      sub_22BB331C8();
      sub_22BB336D0(v38, v39, v40, v36);

LABEL_13:
      v41 = v65;
      sub_22BB6BEE0(v27, v65, &qword_27D8E27D8, &qword_22BDC0640);
      v42 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
      v43 = sub_22BB36B68();
      if (sub_22BB3AA28(v43, v44, v42) == 1)
      {
        goto LABEL_20;
      }

      v45 = *(v42 + 48);
      v47 = *v41;
      v46 = *(v41 + 1);
      v48 = v67;
      v49 = v64;
      (*v69)(v64, &v41[v45], v4);
      v50 = sub_22BD8446C();
      v52 = v51;

      if ((v52 & 1) == 0)
      {
        (*v63)(v49, v4);
        goto LABEL_20;
      }

      v54 = v71;
      v53 = v72;
      (*(v72 + 16))(v71, *(v48 + 56) + *(v72 + 72) * v50, v4);
      sub_22BC9D714(&qword_27D8E3168, MEMORY[0x277D72A78]);
      v55 = sub_22BDBABD4();
      v56 = *(v53 + 8);
      v56(v54, v4);
      v56(v49, v4);
      v25 = v70;
      if ((v55 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v29 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
        sub_22BB30B28();
        sub_22BB336D0(v57, v58, v59, v60);
        v70 = 0;
        goto LABEL_13;
      }

      v30 = *(v61 + 8 * v29);
      ++v21;
      if (v30)
      {
        v70 = (v30 - 1) & v30;
        v28 = __clz(__rbit64(v30)) | (v29 << 6);
        v21 = v29;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22BC9106C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB9504();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v50 - v9;
  v10 = sub_22BBE6DE0(&qword_27D8E3040, &qword_22BDBDAD8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = &v50 - v14;
  v55 = v15;
  v53 = v8;
  v16 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v50 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v22 = v55;
    if (!v20)
    {
      break;
    }

    v59 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_12:
    v26 = (*(v51 + 48) + 16 * v23);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v23, v4);
    v31 = sub_22BBE6DE0(&qword_27D8E3060, &qword_22BDBDAF0);
    v32 = *(v31 + 48);
    *v22 = v27;
    *(v22 + 1) = v28;
    (*(v29 + 32))(&v22[v32], v30, v4);
    sub_22BB336D0(v22, 0, 1, v31);

LABEL_13:
    v33 = v54;
    sub_22BB6BEE0(v22, v54, &qword_27D8E3040, &qword_22BDBDAD8);
    v34 = sub_22BBE6DE0(&qword_27D8E3060, &qword_22BDBDAF0);
    v35 = sub_22BB3AA28(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = *(v33 + 1);
    v40 = v56;
    v41 = v53;
    (*v58)(v53, &v33[v37], v4);
    v42 = sub_22BD8446C();
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_22BC9D714(qword_27D8E3AB0, MEMORY[0x277D1E5B0]);
    v47 = sub_22BDBABD4();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v20 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v49 = sub_22BBE6DE0(&qword_27D8E3060, &qword_22BDBDAF0);
      sub_22BB336D0(v22, 1, 1, v49);
      v59 = 0;
      goto LABEL_13;
    }

    v25 = *(v50 + 8 * v24);
    ++v16;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v23 = __clz(__rbit64(v25)) | (v24 << 6);
      v16 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BC91514(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_22BDBB814();

      sub_22BDBAC54();
      v16 = sub_22BDBB834();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_22BDBB6D4();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BC916BC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v26 = *(a2 - 8);
  v27 = a2;
  v7 = *(v26 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23);
  v24 = 1;
  if (sub_22BB3AA28(v21, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v21, v12);
    v29(v17, v10);
    (*(v13 + 8))(v17, v12);
    if (v5)
    {
      return (*(v26 + 32))(v28, v10, v27);
    }

    v24 = 0;
  }

  return sub_22BB336D0(a5, v24, 1, v30);
}

uint64_t sub_22BC91948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  a6(a1, a2, a3, a4, a5);
  return v15;
}

uint64_t sub_22BC919C8()
{
  v1 = sub_22BBDB89C();
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB33230();
  sub_22BB33C64();
  v5 = sub_22BB2F324();
  sub_22BC9E554(v5, v6, v7);
  sub_22BB30AE4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = *(v0 + 8);

      v13 = *(sub_22BBE6DE0(&qword_27D8E3BA0, &unk_22BDC0840) + 48);
      v14 = sub_22BDB9504();
      sub_22BB31F70(v14);
      (*(v15 + 8))(v0 + v13);
      result = 3;
      break;
    case 2:
      sub_22BC9D3D4(v0, type metadata accessor for DialogResponseError);
      result = 4;
      break;
    case 3:
      return result;
    default:
      v10 = sub_22BDB9504();
      sub_22BB31F70(v10);
      (*(v11 + 8))(v0);
      result = 2;
      break;
  }

  return result;
}

void sub_22BC91B08()
{
  sub_22BB30F94();
  v1 = v0;
  v2 = sub_22BDB9504();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = type metadata accessor for DialogResponseError(0);
  v12 = sub_22BB2F330(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v17 = (v16 - v15);
  sub_22BB33C64();
  sub_22BC9E554(v1, v17, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v24 = *v17;
      v25 = *(v17 + 1);
      v26 = sub_22BBE6DE0(&qword_27D8E3BA0, &unk_22BDC0840);
      (*(v5 + 32))(v10, &v17[*(v26 + 48)], v2);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22BDBCBC0;
      *(inited + 32) = 7955819;
      *(inited + 40) = 0xE300000000000000;
      v28 = MEMORY[0x277D837D0];
      *(inited + 48) = v24;
      *(inited + 56) = v25;
      *(inited + 72) = v28;
      *(inited + 80) = 0x65756C6176;
      *(inited + 88) = 0xE500000000000000;
      *(inited + 120) = v2;
      sub_22BB8B8A0((inited + 96));
      sub_22BC9F7D8();
      v29();
      goto LABEL_6;
    case 2u:
      v21 = *v17;
      v22 = *(v17 + 1);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_22BDBCBD0;
      strcpy((v23 + 32), "parameterKey");
      *(v23 + 45) = 0;
      *(v23 + 46) = -5120;
      *(v23 + 72) = MEMORY[0x277D837D0];
      *(v23 + 48) = v21;
      *(v23 + 56) = v22;
      goto LABEL_4;
    case 3u:
LABEL_4:
      sub_22BDBAB14();
      break;
    default:
      (*(v5 + 32))(v10, v17, v2);
      sub_22BBE6DE0(&qword_27D8E3370, &qword_22BDBF370);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_22BDBCBD0;
      *(v19 + 32) = 0x65756C6176;
      *(v19 + 40) = 0xE500000000000000;
      *(v19 + 72) = v2;
      sub_22BB8B8A0((v19 + 48));
      sub_22BC9F7D8();
      v20();
LABEL_6:
      sub_22BDBAB14();
      (*(v5 + 8))(v10, v2);
      break;
  }

  sub_22BB314EC();
}

void sub_22BC91E54()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BDB9504();
  v71 = sub_22BB30444(v5);
  v72 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BB30C74();
  v69 = (v9 - v10);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v70 = &v69 - v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v16 = type metadata accessor for DialogResponseError(0);
  v17 = sub_22BB2F330(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  v22 = (v20 - v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v69 - v27;
  v29 = sub_22BBE6DE0(&qword_27D8E3B98, &qword_22BDC0838);
  sub_22BB2F0C8(v29);
  v31 = *(v30 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB33230();
  v34 = (v0 + *(v33 + 56));
  sub_22BC9E554(v4, v0, type metadata accessor for DialogResponseError);
  sub_22BC9E554(v2, v34, type metadata accessor for DialogResponseError);
  sub_22BB33728();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB33C64();
      sub_22BC9E554(v0, v26, v45);
      v47 = *v26;
      v46 = *(v26 + 1);
      v48 = *(sub_22BBE6DE0(&qword_27D8E3BA0, &unk_22BDC0840) + 48);
      if (sub_22BB32E10() != 1)
      {
        (*(v72 + 8))(&v26[v48], v71);
        goto LABEL_21;
      }

      v50 = *v34;
      v49 = v34[1];
      v51 = *(v72 + 32);
      v52 = &v26[v48];
      v53 = v71;
      v51(v70, v52, v71);
      v54 = v34 + v48;
      v55 = v69;
      v51(v69, v54, v53);
      if (v47 == v50 && v46 == v49)
      {
      }

      else
      {
        v57 = sub_22BDBB6D4();

        if ((v57 & 1) == 0)
        {
          v58 = *(v72 + 8);
          v58(v55, v53);
          v58(v70, v53);
          goto LABEL_27;
        }
      }

      v67 = v70;
      sub_22BB39744();
      sub_22BDB94D4();
      v68 = *(v72 + 8);
      v68(v55, v53);
      v68(v67, v53);
      goto LABEL_27;
    case 2u:
      sub_22BB33C64();
      v38 = sub_22BB30AE4();
      sub_22BC9E554(v38, v39, v40);
      v42 = *v22;
      v41 = v22[1];
      if (sub_22BB32E10() != 2)
      {
LABEL_21:

        goto LABEL_22;
      }

      if (v42 == *v34 && v41 == v34[1])
      {
        v66 = v34[1];
      }

      else
      {
        v44 = v34[1];
        sub_22BDBB6D4();
      }

      goto LABEL_27;
    case 3u:
      if (sub_22BB32E10() == 3)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    default:
      sub_22BB33C64();
      v35 = sub_22BB31F54();
      sub_22BC9E554(v35, v36, v37);
      if (sub_22BB32E10())
      {
        (*(v72 + 8))(v28, v71);
LABEL_22:
        sub_22BB325EC(v0, &qword_27D8E3B98, &qword_22BDC0838);
      }

      else
      {
        v59 = v71;
        v60 = v72;
        v61 = *(v72 + 32);
        v62 = sub_22BB32E04();
        v63(v62);
        sub_22BDB94D4();
        v64 = *(v60 + 8);
        v64(v15, v59);
        v65 = sub_22BB345A8();
        (v64)(v65);
LABEL_27:
        sub_22BB361E4();
      }

      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BC922EC(uint64_t a1)
{
  v2 = sub_22BC9D714(&qword_27D8E3B88, type metadata accessor for DialogResponseError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BC92358(uint64_t a1)
{
  v2 = sub_22BC9D714(&qword_27D8E3B88, type metadata accessor for DialogResponseError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BC92420(uint64_t a1)
{
  v2 = sub_22BC9F768();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BC9245C(uint64_t a1)
{
  v2 = sub_22BC9F768();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BC924C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_22BC9CFD4();
}

uint64_t sub_22BC924F4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 96);
  v4 = type metadata accessor for ToolExecutionEvent();
  sub_22BB36A38();
  v5 = sub_22BDBB254();
  sub_22BB30444(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB33230();
  v11 = *(v1 + qword_28142DAB0);

  sub_22BC926B8(v0);

  v12 = sub_22BB36B68();
  if (sub_22BB3AA28(v12, v13, v4) == 1)
  {
    (*(v7 + 8))(v0, v5);
  }

  else
  {
    sub_22BB30AE4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v14 = *(v0 + 8);
      v15 = *(v0 + 16);

      v16 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v17 = v16[12];
      sub_22BB37CAC(v16[16]);

      sub_22BB37CAC(v16[20]);

      sub_22BB37CAC(v16[24]);

      sub_22BB325EC(v0 + v17, &qword_27D8E2928, &qword_22BDBCFA0);
      return 1;
    }

    sub_22BB30474(v4);
    v20 = *(v19 + 8);
    v21 = sub_22BB30AE4();
    v22(v21);
  }

  return 0;
}

uint64_t sub_22BC926B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for ToolExecutionEvent();
  v7 = sub_22BDBB254();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v3 + 112);
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  sub_22BC916BC(sub_22BC9D428, MEMORY[0x277D84A98], v6, v13, a1);
  return (*(v8 + 8))(v11, v7);
}

void sub_22BC92848()
{
  sub_22BB30F94();
  v1 = v0;
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  swift_defaultActor_initialize();
  v17 = qword_28142F458;
  v18 = sub_22BDB9564();
  sub_22BB30B28();
  sub_22BB336D0(v19, v20, v21, v18);
  v0[qword_28142F460] = 0;
  v22 = qword_28142DAB0;
  v23 = *(v10 + 104);
  v51 = *(v10 + 80);
  v48 = *(v10 + 88);
  *&v0[v22] = sub_22BC9F7EC(v48);
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v24, v25, v26, v27);
  type metadata accessor for FollowUpActionRequest(0);
  sub_22BB30B28();
  sub_22BB336D0(v28, v29, v30, v31);
  v32 = qword_28142DA98;
  v33 = sub_22BDB8E14();
  sub_22BB2F330(v33);
  (*(v34 + 32))(&v1[v32], v9);
  sub_22BB30B28();
  sub_22BB336D0(v35, v36, v37, v18);
  sub_22BB3B574();
  sub_22BB385F4(v16, &v1[v17], &qword_27D8E3A80, &qword_22BDC0608);
  swift_endAccess();
  sub_22BB34070();
  v39 = *(v38 + 168);
  sub_22BB3E388(v48.n128_f64[0]);
  (*(v40 + 32))(&v1[v41], v7);
  sub_22BB34070();
  v1[*(v42 + 176)] = v5;
  sub_22BB34070();
  v44 = *(v43 + 184);
  v45 = sub_22BDB43E4();
  sub_22BB2F330(v45);
  (*(v46 + 32))(&v1[v44], v49);
  sub_22BB34070();
  sub_22BB95B48(*(v47 + 192));
  sub_22BB314EC();
}

void sub_22BC92ADC()
{
  sub_22BB30F94();
  v1 = v0;
  v57 = v2;
  v58 = v3;
  v56 = v4;
  v54 = v5;
  v55 = v6;
  v7 = *v0;
  v8 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = sub_22BDB8E14();
  v15 = sub_22BB30444(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v22 = v21 - v20;
  swift_defaultActor_initialize();
  v23 = qword_28142F458;
  v24 = sub_22BDB9564();
  sub_22BB30B28();
  sub_22BB336D0(v25, v26, v27, v24);
  v0[qword_28142F460] = 0;
  v28 = qword_28142DAB0;
  v29 = *(v7 + 104);
  v59 = *(v7 + 80);
  v53 = *(v7 + 88);
  *&v0[v28] = sub_22BC9F7EC(v53);
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v30, v31, v32, v33);
  type metadata accessor for FollowUpActionRequest(0);
  sub_22BB30B28();
  sub_22BB336D0(v34, v35, v36, v37);
  v38 = v54;
  sub_22BDB9544();
  (*(v17 + 32))(&v1[qword_28142DA98], v22, v14);
  sub_22BB30474(v24);
  (*(v39 + 32))(v13, v38, v24);
  sub_22BB331C8();
  sub_22BB336D0(v40, v41, v42, v24);
  sub_22BB3B574();
  sub_22BB385F4(v13, &v1[v23], &qword_27D8E3A80, &qword_22BDC0608);
  swift_endAccess();
  sub_22BB34070();
  v44 = *(v43 + 168);
  sub_22BB3E388(v53.n128_f64[0]);
  (*(v45 + 32))(&v1[v46], v55);
  sub_22BB34070();
  v1[*(v47 + 176)] = v56;
  sub_22BB34070();
  v49 = *(v48 + 184);
  v50 = sub_22BDB43E4();
  sub_22BB2F330(v50);
  (*(v51 + 32))(&v1[v49], v57);
  sub_22BB34070();
  sub_22BB95B48(*(v52 + 192));
  sub_22BB314EC();
}

uint64_t sub_22BC92DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v130 = a6;
  v128 = a3;
  v129 = a5;
  v11 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB334AC();
  v15 = sub_22BDBA594();
  v16 = sub_22BB30444(v15);
  *&v127 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  sub_22BB33230();
  v20 = sub_22BDBA5C4();
  v21 = sub_22BB30444(v20);
  *&v126 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  v27 = (v26 - v25);
  v131 = a2;
  v132 = a4;
  v28 = type metadata accessor for ToolExecutionEvent();
  sub_22BB30444(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - v34;
  (*(v30 + 16))(&v120 - v34, a1, v28);
  sub_22BB2F12C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v82 = sub_22BB3A5E0();
      v83(v82);
      sub_22BBC96CC();
      v84 = v130;
      v85 = v126;
      *v130 = v127;
      v84[1] = v85;
      *(v84 + 4) = v6;
      *(v84 + 5) = v30;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 3u:
      v62 = sub_22BB3A5E0();
      v63(v62);
      v64 = *(v35 + 4);
      v65 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      v66 = v65[16];
      v67 = &v35[v65[20]];
      v68 = *v67;
      v69 = *(v67 + 1);
      sub_22BB3B0A8(v65[24]);
      v70 = *(v35 + 1);
      v127 = *v35;
      v125 = v70;

      v71 = *(v126 + 32);
      v71(v27, &v35[v66], v20);
      v72 = sub_22BBE6DE0(&qword_27D8E3058, &qword_22BDBDAE8);
      v73 = *(v72 + 64);
      v74 = v130;
      v75 = (v130 + *(v72 + 80));
      v76 = v125;
      *v130 = v127;
      v74[1] = v76;
      *(v74 + 4) = v64;
      v71(v74 + v73, v27, v20);
      *v75 = v68;
      v75[1] = v69;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 4u:
      v77 = sub_22BB3A5E0();
      v78(v77);
      v79 = sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730);
      sub_22BB3B0A8(*(v79 + 48));

      sub_22BC9D54C(v35, v130, type metadata accessor for ActionConfirmationDialogRequest);
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 5u:
      v39 = sub_22BB3A5E0();
      v40(v39);
      v124 = *(v35 + 4);
      v41 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      v42 = v41[16];
      v43 = v41[20];
      v44 = &v35[v41[24]];
      v46 = *v44;
      v45 = *(v44 + 1);
      *&v126 = v46;
      *&v125 = v45;
      v47 = &v35[v41[28]];
      v48 = *v47;
      v122 = *(v47 + 1);
      v123 = v48;
      sub_22BB3B0A8(v41[32]);
      v49 = *(v35 + 1);
      v121 = *v35;
      v120 = v49;

      v50 = *(v127 + 32);
      v50(v6, &v35[v42], v15);
      sub_22BB6BEE0(&v35[v43], v7, &qword_27D8E2928, &qword_22BDBCFA0);
      v51 = sub_22BBE6DE0(&qword_27D8E3048, &unk_22BDC0630);
      v52 = v51[16];
      v53 = v51[20];
      v54 = v130;
      v55 = (v130 + v51[24]);
      v56 = (v130 + v51[28]);
      v57 = v120;
      *v130 = v121;
      v54[1] = v57;
      *(v54 + 4) = v124;
      v50(v54 + v52, v6, v15);
      sub_22BB6BEE0(v7, v54 + v53, &qword_27D8E2928, &qword_22BDBCFA0);
      v58 = v125;
      *v55 = v126;
      v55[1] = v58;
      v59 = v122;
      *v56 = v123;
      v56[1] = v59;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 6u:
      v86 = sub_22BB3A5E0();
      v87(v86);
      v88 = *v35;
      v89 = *(v35 + 1);
      v90 = *(v35 + 3);

      v91 = v130;
      *v130 = v88;
      *(v91 + 1) = v89;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v92 = sub_22BB3A5E0();
      v93(v92);
      v127 = *v35;
      v94 = *(v35 + 2);
      v95 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v96 = v95[12];
      v97 = &v35[v95[16]];
      v98 = *v97;
      v99 = *(v97 + 1);
      v100 = &v35[v95[20]];
      v101 = *v100;
      v102 = *(v100 + 1);
      sub_22BB3B0A8(v95[24]);

      v103 = type metadata accessor for ActionConfirmationDialogRequest(0);
      v104 = v130;
      sub_22BB6BEE0(&v35[v96], v130 + v103[5], &qword_27D8E2928, &qword_22BDBCFA0);
      v105 = v103[8];
      sub_22BDB54C4();
      sub_22BB30B28();
      sub_22BB336D0(v106, v107, v108, v109);
      *v104 = v127;
      *(v104 + 2) = v94;
      v110 = (v104 + v103[6]);
      *v110 = v98;
      v110[1] = v99;
      v111 = (v104 + v103[7]);
      *v111 = v101;
      v111[1] = v102;
      *(v104 + v103[9]) = 1;
      *(v104 + v103[10]) = 0;
      sub_22BB30740();
      return swift_storeEnumTagMultiPayload();
    case 8u:
      v80 = sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0);
      sub_22BB3B0A8(*(v80 + 48));

      sub_22BB3650C();
      sub_22BC9D3D4(v35, v81);
      goto LABEL_13;
    case 9u:
      v113 = *(v35 + 1);
      v114 = *(v35 + 2);

      v115 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
      v116 = *(v115 + 48);
      sub_22BB3B0A8(*(v115 + 64));

      sub_22BB325EC(&v35[v116], &qword_27D8E2928, &qword_22BDBCFA0);
      goto LABEL_13;
    case 0xBu:
      v60 = type metadata accessor for TypedValueExecutionResult();
      sub_22BB31F70(v60);
      (*(v61 + 8))(v35);
      goto LABEL_13;
    default:
      v36 = *(v30 + 8);
      v37 = sub_22BB2F12C();
      v38(v37);
LABEL_13:
      sub_22BC9D758();
      sub_22BB369E0();
      swift_allocError();
      *v117 = 2;
      swift_willThrow();
      v118 = sub_22BB3A5E0();
      return v119(v118);
  }
}

uint64_t sub_22BC93528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = *v4;
  v7 = sub_22BBE6DE0(&qword_27D8E2B40, &unk_22BDBD9B0);
  v5[41] = v7;
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  v5[42] = sub_22BB30ACC();
  v10 = sub_22BDBA874();
  v5[43] = v10;
  sub_22BB30434(v10);
  v5[44] = v11;
  v13 = *(v12 + 64);
  v5[45] = sub_22BB30ACC();
  v14 = type metadata accessor for FollowUpActionRequest(0);
  v5[46] = v14;
  sub_22BB2F0C8(v14);
  v16 = *(v15 + 64);
  v5[47] = sub_22BB30ACC();
  v17 = sub_22BDB97C4();
  v5[48] = v17;
  sub_22BB30434(v17);
  v5[49] = v18;
  v20 = *(v19 + 64);
  v5[50] = sub_22BB30ACC();
  v21 = sub_22BDBA134();
  v5[51] = v21;
  sub_22BB30434(v21);
  v5[52] = v22;
  v24 = *(v23 + 64);
  v5[53] = sub_22BB30ACC();
  v25 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v5[54] = v25;
  sub_22BB2F0C8(v25);
  v27 = *(v26 + 64);
  v5[55] = sub_22BBB79B0();
  v5[56] = swift_task_alloc();
  v28 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB2F0C8(v28);
  v30 = *(v29 + 64);
  v5[57] = sub_22BB30ACC();
  v31 = sub_22BDBA084();
  v5[58] = v31;
  sub_22BB30434(v31);
  v5[59] = v32;
  v34 = *(v33 + 64);
  v5[60] = sub_22BB30ACC();
  sub_22BB36F5C();
  v5[61] = *(v35 + 80);
  sub_22BB36F5C();
  v5[62] = *(v36 + 96);
  sub_22BB36A38();
  v37 = type metadata accessor for TypedValueExecutionResult();
  v5[63] = v37;
  sub_22BB30434(v37);
  v5[64] = v38;
  v40 = *(v39 + 64);
  v5[65] = sub_22BB30ACC();
  v41 = sub_22BDB77D4();
  v5[66] = v41;
  sub_22BB30434(v41);
  v5[67] = v42;
  v44 = *(v43 + 64) + 15;
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  sub_22BB36A38();
  v45 = type metadata accessor for ToolExecutionEvent();
  v5[73] = v45;
  sub_22BB30444(v45);
  v5[74] = v46;
  v48 = *(v47 + 64) + 15;
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  sub_22BB36F5C();
  v5[80] = *(v49 + 104);
  sub_22BB36F5C();
  v5[81] = *(v50 + 88);
  v51 = sub_22BB3E2CC();
  v5[82] = v51;
  sub_22BB30434(v51);
  v5[83] = v52;
  v54 = *(v53 + 64) + 15;
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  sub_22BB36A38();
  v55 = sub_22BDBB254();
  sub_22BB2F0C8(v55);
  v57 = *(v56 + 64);
  v5[86] = sub_22BB30ACC();
  sub_22BB30418();
  v5[87] = v58;
  v60 = *(v59 + 64);
  v5[88] = sub_22BB30ACC();
  v61 = sub_22BB3E2CC();
  v5[89] = v61;
  sub_22BB30434(v61);
  v5[90] = v62;
  v64 = *(v63 + 64);
  v5[91] = sub_22BB30ACC();
  v65 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v65, v66, v67);
}

uint64_t sub_22BC93A5C()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 320);
  (*(*(v0 + 696) + 16))(*(v0 + 704), v6 + *(*v6 + 168), v2);
  sub_22BB2F0E0();
  sub_22BDBB054();
  *(v0 + 56) = v5;
  *(v0 + 64) = v2;
  *(v0 + 72) = v4;
  *(v0 + 80) = v3;
  type metadata accessor for ToolExecution();
  *(v0 + 736) = swift_getWitnessTable();
  *(v0 + 744) = qword_28142DA98;
  *(v0 + 752) = qword_28142DAB0;
  *(v0 + 760) = *(*v6 + 176);
  *(v0 + 768) = qword_28142DAA8;
  *(v0 + 776) = qword_28142DAA0;
  sub_22BB31B88();
  swift_beginAccess();
  *(v0 + 808) = *MEMORY[0x277D723D8];
  *(v0 + 812) = *MEMORY[0x277D722A8];
  sub_22BB345D8();
  *(v0 + 784) = swift_getAssociatedConformanceWitness();
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 792) = v8;
  *v8 = v0;
  v9 = sub_22BB38000(v8);

  return MEMORY[0x282200310](v9);
}

uint64_t sub_22BC93C18()
{
  sub_22BB2F35C();
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = sub_22BC95130;
  }

  else
  {
    v6 = sub_22BC93D40;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22BC93D40()
{
  v2 = *(v0 + 688);
  v3 = *(v0 + 584);
  sub_22BB36B74(v2);
  if (v4)
  {
    v5 = *(v0 + 800);
    v6 = sub_22BB69224();
    (*(v7 + 8))(v6);
    sub_22BDBB004();
    if (!v5)
    {
      type metadata accessor for RuntimeError();
      sub_22BB31C10();
      sub_22BC9D714(v8, v9);
      sub_22BB358DC();
      sub_22BB369E0();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

LABEL_29:
    sub_22BB89D04();
    v160 = *(v0 + 672);
    v161 = *(v0 + 632);
    v162 = *(v0 + 624);
    v163 = *(v0 + 616);
    sub_22BB699FC();
    v311 = *(v0 + 376);
    v320 = *(v0 + 360);
    v330 = *(v0 + 336);

    sub_22BB2F09C();
LABEL_30:

    return v164();
  }

  else
  {
    v10 = *(v0 + 576);
    v11 = *(v0 + 320);
    (*(*(v0 + 592) + 32))(*(v0 + 632), v2, v3);
    sub_22BDB63F4();

    v12 = sub_22BDB77C4();
    v13 = sub_22BDBB134();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 744);
      v16 = *(v0 + 632);
      v306 = *(v0 + 624);
      v17 = *(v0 + 592);
      v18 = *(v0 + 584);
      v333 = *(v0 + 576);
      v315 = *(v0 + 536);
      v325 = *(v0 + 528);
      v19 = *(v0 + 320);
      v20 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = sub_22BDB8E04();
      v23 = sub_22BB3CDBC(v21, v22);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      sub_22BB31B88();
      swift_beginAccess();
      v24 = *(v17 + 16);
      v25 = sub_22BB2F3F0();
      v26(v25);
      v27 = sub_22BDBAC14();
      v29 = sub_22BB3CDBC(v27, v28);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_22BB2C000, v12, v13, "ToolExecution: %s received dialog event %s", v20, 0x16u);
      swift_arrayDestroy();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v30 = *(v315 + 8);
      v30(v333, v325);
    }

    else
    {
      v31 = *(v0 + 576);
      v32 = *(v0 + 536);
      v33 = *(v0 + 528);

      v30 = *(v32 + 8);
      v34 = sub_22BB2F3F0();
      (v30)(v34);
    }

    v35 = *(v0 + 632);
    v36 = *(v0 + 616);
    v37 = *(v0 + 592);
    v38 = *(v0 + 584);
    v39 = *(*(v0 + 320) + *(v0 + 752));
    sub_22BB3B574();

    sub_22BC95364(v35);
    swift_endAccess();

    v40 = *(v37 + 16);
    sub_22BB35FA0();
    v40();
    sub_22BB2F0E0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
        (*(*(v0 + 592) + 8))(*(v0 + 616), *(v0 + 584));
        goto LABEL_23;
      case 3u:
        v112 = *(v0 + 616);
        v113 = *(v112 + 1);
        v114 = *(v112 + 2);

        v115 = *(v112 + 4);

        v116 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
        v117 = sub_22BB3518C(v116);
        sub_22BB37CAC(*(v117 + 80));

        sub_22BB37CAC(v114[24]);

        v118 = sub_22BDBA5C4();
        goto LABEL_22;
      case 4u:
        v53 = *(v0 + 616);
        v54 = *(v53 + *(sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730) + 48) + 8);

        sub_22BB37238();
        sub_22BC9D3D4(v53, v55);
        goto LABEL_23;
      case 5u:
        v112 = *(v0 + 616);
        v124 = *(v112 + 1);
        v125 = *(v112 + 2);

        v126 = *(v112 + 4);

        v127 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
        v128 = sub_22BB3518C(v127);
        v129 = *(v128 + 80);
        sub_22BB37CAC(*(v128 + 96));

        sub_22BB37CAC(v125[28]);

        sub_22BB37CAC(v125[32]);

        sub_22BB325EC(&v112[v129], &qword_27D8E2928, &qword_22BDBCFA0);
        v118 = sub_22BDBA594();
LABEL_22:
        sub_22BB31F70(v118);
        (*(v130 + 8))(&v112[v36]);
        goto LABEL_23;
      case 6u:
        v329 = *(v0 + 800);
        v149 = *(v0 + 648);
        v310 = v149;
        v319 = *(v0 + 640);
        v150 = *(v0 + 632);
        v151 = *(v0 + 600);
        v152 = *(v0 + 584);
        v153 = *(v0 + 488);
        v154 = *(v0 + 496);
        v155 = *(v0 + 288);
        v336 = *(*(v0 + 592) + 8);
        v336(*(v0 + 616), v152);
        (v40)(v151, v150, v152);
        sub_22BC92DF8(v151, v153, v310, v154, v319, v155);
        v156 = sub_22BB69224();
        if (!v329)
        {
          (*(v157 + 8))(v156);
          v224 = v336;
          goto LABEL_41;
        }

        v158 = *(v0 + 632);
        v159 = *(v0 + 584);
        (*(v157 + 8))(v156);
        v67 = sub_22BB2F324();
        v68 = v336;
LABEL_28:
        v68(v67);
        goto LABEL_29;
      case 7u:
        v119 = *(v0 + 616);
        v120 = *(v119 + 8);
        v121 = *(v119 + 16);

        v122 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
        v123 = v122[12];
        sub_22BB37CAC(v122[16]);

        sub_22BB37CAC(v122[20]);

        sub_22BB37CAC(v122[24]);

        sub_22BB325EC(v119 + v123, &qword_27D8E2928, &qword_22BDBCFA0);
LABEL_23:
        v131 = *(v0 + 800);
        v132 = *(v0 + 648);
        v133 = *(v0 + 640);
        v135 = *(v0 + 488);
        v134 = *(v0 + 496);
        v136 = *(v0 + 288);
        (v40)(*(v0 + 608), *(v0 + 632), *(v0 + 584));
        v137 = sub_22BB39744();
        sub_22BC92DF8(v137, v138, v132, v134, v133, v139);
        v140 = sub_22BB69224();
        if (v131)
        {
          v142 = *(v0 + 632);
          v143 = *(v0 + 592);
          v144 = *(v0 + 584);
          (*(v141 + 8))(v140);
          v145 = *(v143 + 8);
          v146 = sub_22BB2F324();
          v147(v146);
          goto LABEL_29;
        }

        v148 = *(v0 + 592);
        (*(v141 + 8))(v140);
LABEL_40:
        v224 = *(v148 + 8);
LABEL_41:
        v225 = *(v0 + 728);
        v226 = *(v0 + 704);
        v227 = *(v0 + 688);
        v228 = *(v0 + 680);
        v229 = *(v0 + 672);
        v230 = *(v0 + 624);
        v231 = *(v0 + 616);
        v277 = *(v0 + 608);
        v278 = *(v0 + 600);
        v279 = *(v0 + 576);
        v280 = *(v0 + 568);
        v281 = *(v0 + 560);
        v282 = *(v0 + 552);
        v283 = *(v0 + 544);
        v285 = *(v0 + 520);
        v287 = *(v0 + 480);
        v289 = *(v0 + 456);
        v291 = *(v0 + 448);
        v296 = *(v0 + 440);
        v303 = *(v0 + 424);
        v313 = *(v0 + 400);
        v322 = *(v0 + 376);
        v331 = *(v0 + 360);
        v337 = *(v0 + 336);
        v224(*(v0 + 632), *(v0 + 584));

        sub_22BB2F09C();
        goto LABEL_30;
      case 8u:
        v183 = *(v0 + 760);
        v169 = *(v0 + 616);
        v184 = *(v0 + 376);
        v185 = *(v0 + 320);
        v186 = v169 + *(sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0) + 48);
        v188 = *v186;
        v187 = *(v186 + 1);
        v189 = sub_22BB30AE4();
        sub_22BC9D54C(v189, v190, v191);
        if (*(v185 + v183) == 1)
        {
          sub_22BC9F7C4();
          v192 = *(v0 + 376);
          v193 = *(v0 + 352);
          v194 = *(v0 + 360);
          v195 = *(v0 + 344);
          v197 = *(v0 + 304);
          v196 = *(v0 + 312);
          sub_22BDBA864();
          v188(v194, v197, v196);

          v198 = *(v193 + 8);
          v199 = sub_22BB32E04();
          v200(v199);
          sub_22BB3650C();
          sub_22BC9D3D4(v192, v201);
          goto LABEL_49;
        }

        v257 = *(v0 + 768);
        v258 = *(v0 + 592);
        v332 = *(v0 + 584);
        v338 = *(v0 + 632);
        v259 = *(v0 + 368);
        v260 = *(v0 + 352);
        v261 = *(v0 + 360);
        v262 = *(v0 + 336);
        v314 = *(v0 + 376);
        v324 = *(v0 + 344);
        v263 = *(v0 + 320);
        v298 = *(v0 + 304);
        v305 = *(v0 + 312);
        sub_22BC9E554(v314, v262, type metadata accessor for FollowUpActionRequest);
        sub_22BB331C8();
        sub_22BB336D0(v264, v265, v266, v259);
        sub_22BB3B574();
        sub_22BB385F4(v262, v263 + v257, &qword_27D8E2B40, &unk_22BDBD9B0);
        swift_endAccess();
        sub_22BDBA864();
        v188(v261, v298, v305);

        (*(v260 + 8))(v261, v324);
        sub_22BB3650C();
        sub_22BC9D3D4(v314, v267);
        (*(v258 + 8))(v338, v332);
        break;
      case 9u:
        v69 = *(v0 + 616);
        v70 = *(v0 + 552);
        v71 = *(v0 + 456);
        v72 = *(v0 + 320);
        v73 = *v69;
        v334 = v69[1];
        v308 = v69[2];
        v74 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
        v75 = v69 + *(v74 + 64);
        v317 = *v75;
        v327 = *(v75 + 1);
        sub_22BB6BEE0(v69 + *(v74 + 48), v71, &qword_27D8E2928, &qword_22BDBCFA0);
        sub_22BDB63F4();

        v76 = sub_22BDB77C4();
        v77 = sub_22BDBB134();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = *(v0 + 744);
          v79 = *(v0 + 528);
          v80 = *(v0 + 320);
          v293 = *(v0 + 536) + 8;
          v300 = *(v0 + 552);
          sub_22BB31AD8();
          sub_22BB6B650();
          *v1 = 136315138;
          v81 = sub_22BDB8E04();
          v83 = sub_22BB3CDBC(v81, v82);

          *(v1 + 4) = v83;
          _os_log_impl(&dword_22BB2C000, v76, v77, "ToolExecution: %s received result dialog event. Storing to be returned with output", v1, 0xCu);
          sub_22BB393DC();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          v84 = v300;
          v85 = v79;
        }

        else
        {
          v232 = *(v0 + 552);
          v233 = *(v0 + 536);
          v234 = *(v0 + 528);

          v84 = sub_22BB2F3F0();
        }

        v30(v84, v85);
        v290 = *(v0 + 808);
        v235 = *(v0 + 776);
        v236 = *(v0 + 592);
        v297 = *(v0 + 584);
        v304 = *(v0 + 632);
        v237 = *(v0 + 448);
        v238 = *(v0 + 456);
        v239 = *(v0 + 416);
        v240 = *(v0 + 424);
        v241 = *(v0 + 320);
        v288 = *(v0 + 312);
        v284 = *(v0 + 408);
        v286 = *(v0 + 304);
        v242 = type metadata accessor for ResultResponse(0);
        sub_22BB3CD70(v238, v237 + *(v242 + 20), &qword_27D8E2928, &qword_22BDBCFA0);
        *v237 = v73;
        v237[1] = v334;
        v237[2] = v308;
        sub_22BB331C8();
        sub_22BB336D0(v243, v244, v245, v242);
        sub_22BB3B574();
        v246 = v308;

        sub_22BB385F4(v237, v241 + v235, &qword_27D8E2530, &qword_22BDBCBF0);
        swift_endAccess();
        (*(v239 + 104))(v240, v290, v284);
        v317(v240, v286, v288);

        (*(v239 + 8))(v240, v284);
        sub_22BB325EC(v238, &qword_27D8E2928, &qword_22BDBCFA0);
        (*(v236 + 8))(v304, v297);
        break;
      case 0xAu:
        v166 = *(v0 + 776);
        v167 = *(v0 + 440);
        v168 = *(v0 + 320);
        (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 616), *(v0 + 384));
        v169 = &qword_27D8E2530;
        sub_22BB3CD70(v168 + v166, v167, &qword_27D8E2530, &qword_22BDBCBF0);
        v170 = type metadata accessor for ResultResponse(0);
        LODWORD(v166) = sub_22BB3AA28(v167, 1, v170);
        v171 = sub_22BB2F324();
        sub_22BB325EC(v171, v172, &qword_22BDBCBF0);
        if (v166 == 1)
        {
          sub_22BB3CD70(*(v0 + 296), v0 + 16, &qword_27D8E2B28, &unk_22BDBD230);
          v173 = *(v0 + 632);
          v174 = *(v0 + 592);
          v175 = *(v0 + 584);
          v177 = *(v0 + 392);
          v176 = *(v0 + 400);
          v178 = *(v0 + 384);
          if (*(v0 + 40))
          {
            v179 = *(v0 + 48);
            sub_22BB69FEC((v0 + 16), *(v0 + 40));
            sub_22BB39744();
            sub_22BDB9234();
            v180 = *(v177 + 8);
            v181 = sub_22BB331D4();
            v182(v181);
            sub_22BB32FA4((v0 + 16));
          }

          else
          {
            v268 = *(v177 + 8);
            v269 = sub_22BB331D4();
            v270(v269);
            sub_22BB325EC(v0 + 16, &qword_27D8E2B28, &unk_22BDBD230);
          }

          v271 = *(v174 + 8);
          v272 = sub_22BB30AE4();
          v273(v272);
        }

        else
        {
          v247 = *(v0 + 544);
          sub_22BDB63F4();
          v248 = sub_22BDB77C4();
          v249 = sub_22BDBB134();
          os_log_type_enabled(v248, v249);
          sub_22BC9F7C4();
          v250 = *(v0 + 544);
          v251 = *(v0 + 536);
          v252 = *(v0 + 528);
          v253 = *(v0 + 392);
          v323 = *(v0 + 400);
          v254 = *(v0 + 384);
          if (v255)
          {
            sub_22BB2F114();
            v256 = swift_slowAlloc();
            *v256 = 0;
            _os_log_impl(&dword_22BB2C000, v248, v249, "ToolExecution: Ignoring status update since we've received the completion result", v256, 2u);
            sub_22BB2F368();
            MEMORY[0x2318A6080]();
          }

          v30(v250, v252);
          (*(v253 + 8))(v323, v254);
LABEL_49:
          (v169[1])(v333, v325);
        }

        break;
      case 0xBu:
        v41 = *(v0 + 568);
        v42 = *(v0 + 320);
        v326 = *(*(v0 + 512) + 32);
        (v326)(*(v0 + 520), *(v0 + 616), *(v0 + 504));
        sub_22BDB63F4();

        v43 = sub_22BDB77C4();
        v44 = sub_22BDBB134();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = *(v0 + 744);
          v46 = *(v0 + 720);
          v307 = *(v0 + 712);
          v316 = *(v0 + 728);
          v47 = *(v0 + 528);
          v48 = *(v0 + 320);
          v292 = *(v0 + 536) + 8;
          v299 = *(v0 + 568);
          v49 = sub_22BB31AD8();
          v339 = swift_slowAlloc();
          *v49 = 136315138;
          v50 = sub_22BDB8E04();
          v52 = sub_22BB3CDBC(v50, v51);

          *(v49 + 4) = v52;
          _os_log_impl(&dword_22BB2C000, v43, v44, "ToolExecution: %s completed", v49, 0xCu);
          sub_22BB32FA4(v339);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();

          v30(v299, v47);
          (*(v46 + 8))(v316, v307);
        }

        else
        {
          v202 = *(v0 + 728);
          v203 = *(v0 + 720);
          v204 = *(v0 + 712);
          v205 = *(v0 + 568);
          v206 = *(v0 + 536);
          v207 = *(v0 + 528);

          v208 = sub_22BB39744();
          (v30)(v208);
          v209 = *(v203 + 8);
          v210 = sub_22BB2F3F0();
          v211(v210);
        }

        v212 = *(v0 + 776);
        v213 = *(v0 + 768);
        v312 = *(v0 + 648);
        v321 = *(v0 + 640);
        v148 = *(v0 + 592);
        v214 = *(v0 + 520);
        v215 = *(v0 + 504);
        v295 = *(v0 + 488);
        v302 = *(v0 + 496);
        v216 = *(v0 + 432);
        v218 = *(v0 + 320);
        v217 = *(v0 + 328);
        v219 = *(v0 + 288);
        sub_22BB36A38();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v221 = *(TupleTypeMetadata3 + 48);
        v222 = *(TupleTypeMetadata3 + 64);
        v223 = sub_22BB2F324();
        v326(v223);
        sub_22BB31B88();
        swift_beginAccess();
        sub_22BB3CD70(v218 + v212, v219 + v221, &qword_27D8E2530, &qword_22BDBCBF0);
        sub_22BB31B88();
        swift_beginAccess();
        sub_22BB3CD70(v218 + v213, v219 + v222, &qword_27D8E2B40, &unk_22BDBD9B0);
        *(v0 + 88) = v295;
        *(v0 + 96) = v312;
        *(v0 + 104) = v302;
        *(v0 + 112) = v321;
        type metadata accessor for ToolExecution.Outcome();
        sub_22BB358DC();
        swift_storeEnumTagMultiPayload();
        goto LABEL_40;
      case 0xCu:
        v56 = *(v0 + 728);
        v57 = *(v0 + 720);
        v58 = *(v0 + 712);
        v59 = *(v0 + 632);
        v60 = *(v0 + 592);
        v61 = *(v0 + 584);
        v62 = **(v0 + 616);
        swift_willThrow();
        v63 = *(v57 + 8);
        v64 = sub_22BB2F324();
        v65(v64);
        v66 = *(v60 + 8);
        v67 = sub_22BB331D4();
        goto LABEL_28;
      default:
        v86 = *(v0 + 616);
        v87 = *(v0 + 560);
        v89 = v86[1];
        v88 = v86[2];
        v90 = v86[4];
        v328 = v86[5];
        v335 = v86[6];

        sub_22BDB63F4();
        v91 = sub_22BDB77C4();
        v92 = sub_22BDBB114();
        if (sub_22BB3FCAC(v92))
        {
          sub_22BB2F114();
          v93 = swift_slowAlloc();
          sub_22BB3E4A8(v93);
          sub_22BB5420C();
          _os_log_impl(v94, v95, v96, v97, v98, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        v301 = *(v0 + 812);
        v99 = *(v0 + 592);
        v309 = *(v0 + 584);
        v318 = *(v0 + 632);
        v100 = *(v0 + 560);
        v101 = v91;
        v102 = *(v0 + 536);
        v103 = *(v0 + 528);
        v104 = *(v0 + 472);
        v105 = *(v0 + 480);
        v106 = *(v0 + 464);
        v107 = *(v0 + 304);
        v294 = *(v0 + 312);

        v30(v100, v103);
        sub_22BB379E4();
        v108(v105, v301, v106);
        v328(v105, v107, v294);

        v109 = *(v104 + 8);
        v110 = sub_22BB2F12C();
        v111(v110);
        (*(v99 + 8))(v318, v309);
        break;
    }

    sub_22BB345D8();
    *(v0 + 784) = swift_getAssociatedConformanceWitness();
    v274 = *(MEMORY[0x277D856D8] + 4);
    v275 = swift_task_alloc();
    *(v0 + 792) = v275;
    *v275 = v0;
    v276 = sub_22BB38000();

    return MEMORY[0x282200310](v276);
  }
}

uint64_t sub_22BC95130()
{
  v1 = v0[98];
  v2 = v0[89];
  v3 = *(v0[83] + 32);
  v3(v0[84], v0[85], v0[82]);
  sub_22BB2F324();
  swift_getAssociatedConformanceWitness();
  sub_22BB2F0E0();
  v4 = sub_22BDBB6A4();
  v5 = v0[84];
  if (v4)
  {
    (*(v0[83] + 8))(v5, v0[82]);
  }

  else
  {
    v6 = v0[82];
    sub_22BB369E0();
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = sub_22BB69224();
  (*(v9 + 8))(v8);
  sub_22BB89D04();
  v10 = v0[84];
  v11 = v0[79];
  v12 = v0[78];
  v13 = v0[77];
  sub_22BB699FC();
  v16 = v0[47];
  v17 = v0[45];
  v18 = v0[42];

  sub_22BB2F09C();

  return v14();
}

uint64_t sub_22BC95364(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = *v1;
  v4 = sub_22BDB77D4();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v3[10];
  v8 = v3[12];
  v9 = type metadata accessor for ToolExecutionEvent();
  v10 = sub_22BDBB254();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  v19 = *(v9 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v47 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  v28 = v3[14];
  swift_beginAccess();
  (*(v11 + 16))(v18, &v2[v28], v10);
  if (sub_22BB3AA28(v18, 1, v9) == 1)
  {
    (*(v11 + 8))(v18, v10);
    v29 = v51;
    if (sub_22BC9C70C(v9))
    {
      (*(v19 + 16))(v15, v29, v9);
      v30 = v15;
      v31 = 0;
    }

    else
    {
      v30 = v15;
      v31 = 1;
    }

    sub_22BB336D0(v30, v31, 1, v9);
    swift_beginAccess();
    (*(v11 + 40))(&v2[v28], v15, v10);
    swift_endAccess();
    (*(v19 + 32))(v25, v29, v9);
    sub_22BC9BD30(v25, v29);
    return (*(v19 + 8))(v25, v9);
  }

  else
  {
    (*(v19 + 32))(v27, v18, v9);
    v33 = *(v19 + 16);
    v33(v25, v51, v9);
    v51 = sub_22BDBAC14();
    v35 = v34;
    sub_22BDB63F4();
    v33(v47, v27, v9);

    v36 = sub_22BDB77C4();
    v37 = sub_22BDBB114();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52[0] = v46;
      *v38 = 136315394;
      v39 = sub_22BB32EE0(v51, v35, v52);

      *(v38 + 4) = v39;
      *(v38 + 12) = 2080;
      v40 = v47;
      v33(v25, v47, v9);
      v41 = sub_22BDBAC14();
      v43 = v42;
      (*(v19 + 8))(v40, v9);
      v44 = sub_22BB32EE0(v41, v43, v52);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_22BB2C000, v36, v37, "ToolExecution: Received new event: %s while current event was not responded to: %s", v38, 0x16u);
      v45 = v46;
      swift_arrayDestroy();
      MEMORY[0x2318A6080](v45, -1, -1);
      MEMORY[0x2318A6080](v38, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v47, v9);
    }

    (*(v49 + 8))(v48, v50);
    result = sub_22BDBB4D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22BC9595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *v3;
  v6 = sub_22BDB77D4();
  v4[9] = v6;
  sub_22BB30434(v6);
  v4[10] = v7;
  v9 = *(v8 + 64);
  v4[11] = sub_22BB30ACC();
  v10 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  v4[12] = sub_22BB30ACC();
  sub_22BB36F5C();
  v14 = *(v13 + 80);
  sub_22BB36F5C();
  v16 = *(v15 + 96);
  v17 = type metadata accessor for ToolExecutionEvent();
  v4[13] = v17;
  v18 = sub_22BDBB254();
  v4[14] = v18;
  sub_22BB30434(v18);
  v4[15] = v19;
  v21 = *(v20 + 64);
  v4[16] = sub_22BB30ACC();
  v22 = *(v17 - 8);
  v4[17] = v22;
  v23 = *(v22 + 64);
  v4[18] = sub_22BB30ACC();
  v24 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22BC95B00()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = *(v0[8] + qword_28142DAB0);

  sub_22BC926B8(v1);

  v4 = sub_22BB36B68();
  if (sub_22BB3AA28(v4, v5, v2) == 1)
  {
    v6 = v0[11];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_22BDB63F4();
    v7 = sub_22BDB77C4();
    v8 = sub_22BDBB114();
    v9 = sub_22BB34888(v8);
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    if (v9)
    {
      sub_22BB2F114();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22BB2C000, v7, v8, "ToolExecution: Ignoring update since there's no pending dialog request", v13, 2u);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    v14 = *(v11 + 8);
    v15 = sub_22BB30AE4();
    v16(v15);
    v17 = v0[18];
    v18 = v0[16];
    v20 = v0[11];
    v19 = v0[12];

    sub_22BB2F09C();
    goto LABEL_10;
  }

  v22 = v0[8];
  v23 = v0[5];
  (*(v0[17] + 32))(v0[18], v0[16], v0[13]);
  v24 = sub_22BB30AE4();
  if ((sub_22BC97A60(v24, v25) & 1) == 0)
  {
    sub_22BC9D758();
    sub_22BB369E0();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
    v46 = sub_22BB33760();
    v47(v46);

    sub_22BB2F09C();
LABEL_10:

    return v21();
  }

  v26 = v0[12];
  v27 = v0[8];
  v28 = v0[5];
  v29 = sub_22BDB9564();
  sub_22BB2F330(v29);
  v31 = *(v30 + 16);
  v32 = sub_22BB2F324();
  v33(v32);
  sub_22BB331C8();
  sub_22BB336D0(v34, v35, v36, v29);
  v37 = qword_28142F458;
  sub_22BB3B574();
  sub_22BB385F4(v26, v27 + v37, &qword_27D8E3A80, &qword_22BDC0608);
  swift_endAccess();
  v38 = swift_task_alloc();
  v0[19] = v38;
  *v38 = v0;
  v38[1] = sub_22BC95E20;
  v39 = v0[18];
  v40 = v0[7];
  v41 = v0[8];
  v42 = v0[5];
  v43 = v0[6];

  return sub_22BC993A8();
}

uint64_t sub_22BC95E20()
{
  sub_22BB2F35C();
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_22BC95FE4;
  }

  else
  {
    v6 = sub_22BC95F48;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22BC95F48()
{
  sub_22BB2F35C();
  (*(v0[17] + 8))(v0[18], v0[13]);
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BC95FE4()
{
  v1 = *(v0 + 160);
  v2 = sub_22BB33760();
  v3(v2);

  sub_22BB2F09C();

  return v4();
}

uint64_t sub_22BC9607C(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a2;
  *(v3 + 128) = v2;
  *(v3 + 112) = a1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  *(v3 + 136) = v6;
  v7 = *(v4 + 96);
  *(v3 + 144) = v7;
  *&v8 = v6;
  *(&v8 + 1) = *(v5 + 88);
  *&v9 = v7;
  *(&v9 + 1) = *(v5 + 104);
  *(v3 + 72) = v9;
  *(v3 + 56) = v8;
  v10 = type metadata accessor for ToolExecution.Outcome();
  *(v3 + 152) = v10;
  sub_22BB30434(v10);
  *(v3 + 160) = v11;
  v13 = *(v12 + 64);
  *(v3 + 168) = sub_22BB30ACC();
  v14 = sub_22BDB77D4();
  *(v3 + 176) = v14;
  sub_22BB30434(v14);
  *(v3 + 184) = v15;
  v17 = *(v16 + 64);
  *(v3 + 192) = sub_22BB3307C();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  v18 = sub_22BDB4C34();
  *(v3 + 232) = v18;
  sub_22BB30434(v18);
  *(v3 + 240) = v19;
  v21 = *(v20 + 64);
  *(v3 + 248) = sub_22BB30ACC();
  v22 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v22);
  v24 = *(v23 + 64);
  *(v3 + 256) = sub_22BB30ACC();
  v25 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v25);
  v27 = *(v26 + 64);
  *(v3 + 264) = sub_22BB3307C();
  *(v3 + 272) = swift_task_alloc();
  v28 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_22BC962D0()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 128);
  v4 = qword_28142F458;
  sub_22BB31B88();
  swift_beginAccess();
  sub_22BB3CD70(v3 + v4, v2, &qword_27D8E3A80, &qword_22BDC0608);
  sub_22BDB9564();
  v5 = 1;
  v6 = sub_22BB36B68();
  if (!sub_22BB3AA28(v6, v7, v8))
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 256);
    sub_22BDB8174();
    v5 = 0;
  }

  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 232);
  sub_22BB325EC(*(v0 + 256), &qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB336D0(v11, v5, 1, v13);
  v14 = sub_22BB30AE4();
  sub_22BB3CD70(v14, v15, v16, v17);
  v18 = sub_22BB3AA28(v12, 1, v13);
  v19 = *(v0 + 272);
  if (v18 == 1)
  {
    v20 = *(v0 + 128);
    sub_22BB325EC(*(v0 + 272), &qword_27D8E27C0, &qword_22BDBCDF0);
    v21 = sub_22BDB8E04();
    v23 = v22;
  }

  else
  {
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 232);
    (*(v25 + 32))(v24, *(v0 + 264), v26);
    sub_22BB6BA68();
    sub_22BC9D714(v27, v28);
    v21 = sub_22BDBB684();
    v23 = v29;
    (*(v25 + 8))(v24, v26);
    sub_22BB325EC(v19, &qword_27D8E27C0, &qword_22BDBCDF0);
  }

  v30 = *(v0 + 224);
  *(v0 + 280) = v23;
  *(v0 + 288) = v21;
  sub_22BDB63F4();

  v31 = sub_22BDB77C4();
  v32 = sub_22BDBB134();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 224);
  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  if (v33)
  {
    sub_22BB31AD8();
    sub_22BB6B650();
    *v1 = 136315138;
    v37 = sub_22BB30AE4();
    *(v1 + 4) = sub_22BB32EE0(v37, v38, v39);
    sub_22BB34EB8(&dword_22BB2C000, v40, v32, "ToolExecution: Cancelling execution of %s");
    sub_22BB393DC();
    sub_22BB2F368();
    MEMORY[0x2318A6080](v41);
    sub_22BB2F368();
    MEMORY[0x2318A6080](v42);
  }

  v43 = *(v36 + 8);
  v44 = sub_22BB331D4();
  v43(v44);
  *(v0 + 296) = v43;
  v45 = *(v0 + 120);
  v46 = *(v0 + 112);
  v47 = *(*(v0 + 128) + qword_28142DAB0);

  v48 = sub_22BB31F54();
  sub_22BC96D00(v48, v49);

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v50 = swift_task_alloc();
  *(v0 + 304) = v50;
  *v50 = v0;
  v50[1] = sub_22BC9662C;
  v51 = *(v0 + 168);
  v52 = *(v0 + 128);
  sub_22BB31B88();

  return sub_22BC93528(v53, v54, v55, v56);
}

uint64_t sub_22BC9662C()
{
  sub_22BB2F35C();
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(v2 + 312) = v0;

  sub_22BB325EC(v2 + 16, &qword_27D8E2B28, &unk_22BDBD230);
  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_22BC96A5C;
  }

  else
  {
    v6 = sub_22BC9676C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22BC9676C()
{
  v2 = v0[21];
  v3 = v0[19];
  sub_22BB2F3F0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[35];
  if (EnumCaseMultiPayload == 6)
  {
    v6 = v0[27];
    v7 = v0[17];
    v8 = v0[18];
    v9 = type metadata accessor for TypedValueExecutionResult();
    v10 = sub_22BB32E04();
    sub_22BBEB2E0(v10, v11);
    v12 = sub_22BB2F12C();
    sub_22BBEB2E0(v12, v13);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v1 = *(TupleTypeMetadata3 + 48);
    sub_22BB325EC(v2 + *(TupleTypeMetadata3 + 64), &qword_27D8E2B40, &unk_22BDBD9B0);
    sub_22BB325EC(v2 + v1, &qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB30474(v9);
    v16 = *(v15 + 8);
    v17 = sub_22BB345A8();
    v18(v17);
    sub_22BDB63F4();

    v19 = sub_22BDB77C4();
    v20 = sub_22BDBB134();

    if (os_log_type_enabled(v19, v20))
    {
      sub_22BB3B7C8();
      v21 = v0[27];
LABEL_6:
      v27 = v0[22];
      v28 = v0[23];
      sub_22BB31AD8();
      v43 = sub_22BB6B650();
      *(v1 + 4) = sub_22BB71FC8(4.8149e-34, v43, v29);
      sub_22BB34EB8(&dword_22BB2C000, v30, v20, "ToolExecution: Canceled execution of %s");
      sub_22BB393DC();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v31 = sub_22BB2F0E0();
      v42(v31);
      goto LABEL_10;
    }

    v32 = v0[37];
    v33 = v0[35];
    v34 = v0[27];
  }

  else
  {
    v22 = v0[26];
    v23 = *(v0[20] + 8);
    v24 = sub_22BB2F3F0();
    v25(v24);
    sub_22BDB63F4();

    v19 = sub_22BDB77C4();
    v20 = sub_22BDBB134();

    if (os_log_type_enabled(v19, v20))
    {
      sub_22BB3B7C8();
      v26 = v0[26];
      goto LABEL_6;
    }

    v32 = v0[37];
    v35 = v0[35];
    v36 = v0[26];
  }

  v37 = v0[22];
  v38 = v0[23];

  v39 = sub_22BB2F0E0();
  v32(v39);
LABEL_10:

  sub_22BB3B674();

  sub_22BB2F09C();

  return v40();
}

uint64_t sub_22BC96A5C()
{
  v2 = *(v0 + 312);
  v3 = *(v0 + 200);
  sub_22BDB63F4();
  v4 = v2;
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB134();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 312);
  if (v7)
  {
    v9 = sub_22BB31AD8();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    sub_22BB5420C();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_22BB325EC(v10, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 192);
  v20 = *(v0 + 184) + 8;
  (*(v0 + 296))(*(v0 + 200), *(v0 + 176));
  sub_22BDB63F4();

  v21 = sub_22BDB77C4();
  v22 = sub_22BDBB134();

  if (os_log_type_enabled(v21, v22))
  {
    sub_22BB3B7C8();
    v23 = *(v0 + 192);
    v24 = *(v0 + 176);
    sub_22BB31AD8();
    v36 = sub_22BB6B650();
    *(v1 + 4) = sub_22BB71FC8(4.8149e-34, v36, v25);
    sub_22BB34EB8(&dword_22BB2C000, v26, v22, "ToolExecution: Canceled execution of %s");
    sub_22BB393DC();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v27 = sub_22BB2F0E0();
    v35(v27);
  }

  else
  {
    v28 = *(v0 + 296);
    v29 = *(v0 + 280);
    v30 = *(v0 + 192);
    v31 = *(v0 + 176);

    v32 = sub_22BB2F0E0();
    v28(v32);
  }

  sub_22BB3B674();

  sub_22BB2F09C();

  return v33();
}

uint64_t sub_22BC96D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22BDBA874();
  v158 = *(v7 - 8);
  v159 = v7;
  v8 = *(v158 + 64);
  MEMORY[0x28223BE20](v7);
  v157 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDBA794();
  v155 = *(v10 - 8);
  v156 = v10;
  v11 = *(v155 + 64);
  MEMORY[0x28223BE20](v10);
  v154 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDBA784();
  v161 = *(v13 - 8);
  v14 = *(v161 + 64);
  MEMORY[0x28223BE20](v13);
  v160 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BBE6DE0(&qword_27D8E2ED0, &qword_22BDBD740);
  v152 = *(v16 - 8);
  v153 = v16;
  v17 = *(v152 + 64);
  MEMORY[0x28223BE20](v16);
  v151 = &v137 - v18;
  v19 = sub_22BBE6DE0(&qword_27D8E2EE8, &qword_22BDBD760);
  v149 = *(v19 - 8);
  v150 = v19;
  v20 = *(v149 + 64);
  MEMORY[0x28223BE20](v19);
  v148 = &v137 - v21;
  v147 = sub_22BBE6DE0(&qword_27D8E2EF8, &qword_22BDC0230);
  v146 = *(v147 - 8);
  v22 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v145 = &v137 - v23;
  v144 = sub_22BDBA084();
  v143 = *(v144 - 8);
  v24 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v6 + 96);
  v141 = *(v6 + 80);
  v140 = v26;
  v165 = type metadata accessor for ToolExecutionEvent();
  v27 = sub_22BDBB254();
  v162 = *(v27 - 8);
  v163 = v27;
  v28 = *(v162 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = &v137 - v32;
  v164 = sub_22BDB77D4();
  v34 = *(v164 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v164);
  v37 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB63F4();

  v38 = sub_22BDB77C4();
  v39 = sub_22BDBB134();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v139 = a2;
    v41 = v40;
    v42 = swift_slowAlloc();
    v137 = v13;
    v43 = v42;
    v166 = v42;
    *v41 = 136315138;
    v44 = *v3;
    v138 = v31;
    v45 = a1;
    v46 = *(v44 + 112);
    swift_beginAccess();
    v47 = v3 + v46;
    a1 = v45;
    (*(v162 + 16))(v33, v47, v163);
    v48 = sub_22BDBAC14();
    v50 = sub_22BB32EE0(v48, v49, &v166);
    v31 = v138;

    *(v41 + 4) = v50;
    _os_log_impl(&dword_22BB2C000, v38, v39, "ToolExecution: Handling %s as part of cancellation", v41, 0xCu);
    sub_22BB32FA4(v43);
    v51 = v43;
    v13 = v137;
    MEMORY[0x2318A6080](v51, -1, -1);
    v52 = v41;
    a2 = v139;
    MEMORY[0x2318A6080](v52, -1, -1);
  }

  (*(v34 + 8))(v37, v164);
  sub_22BC926B8(v31);
  v53 = v165;
  result = sub_22BB3AA28(v31, 1, v165);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v109 = v31[1];
        v110 = v31[2];
        v111 = v31[3];
        v112 = v31[5];
        v72 = v31[6];
        v113 = v31[7];

        v75 = v146;
        v76 = v145;
        v74 = v147;
        (*(v146 + 104))(v145, *MEMORY[0x277D720A0], v147);
        goto LABEL_15;
      case 2u:
        v68 = v31[1];
        v69 = v31[2];
        v70 = v31[3];
        v71 = v31[5];
        v72 = v31[6];
        v73 = v31[7];

        v75 = v149;
        v74 = v150;
        v76 = v148;
        (*(v149 + 104))(v148, *MEMORY[0x277D720A0], v150);
LABEL_15:
        v72(v76, a1, a2);

        return (*(v75 + 8))(v76, v74);
      case 3u:
        v77 = v31[1];
        v78 = v31[2];

        v79 = v31[4];

        v80 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
        v81 = v80[16];
        v82 = *(v31 + v80[20] + 8);

        v83 = v31 + v80[24];
        v84 = *v83;
        v85 = *(v83 + 1);
        v87 = v151;
        v86 = v152;
        v88 = v153;
        (*(v152 + 104))(v151, *MEMORY[0x277D720A0], v153);
        v84(v87, a1, a2);

        (*(v86 + 8))(v87, v88);
        v89 = sub_22BDBA5C4();
        return (*(*(v89 - 8) + 8))(v31 + v81, v89);
      case 4u:
        v55 = v31 + *(sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730) + 48);
        v56 = *v55;
        v57 = *(v55 + 1);
        v59 = v160;
        v58 = v161;
        (*(v161 + 104))(v160, *MEMORY[0x277D731A8], v13);
        v56(v59, a1, a2);

        (*(v58 + 8))(v59, v13);
        v60 = type metadata accessor for ActionConfirmationDialogRequest;
        return sub_22BC9D3D4(v31, v60);
      case 5u:
        v114 = v31[1];
        v115 = v31[2];

        v116 = v31[4];

        v117 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
        v81 = v117[16];
        v118 = v13;
        v119 = v117[20];
        v120 = *(v31 + v117[24] + 8);

        v121 = *(v31 + v117[28] + 8);

        v122 = v31 + v117[32];
        v123 = *v122;
        v124 = *(v122 + 1);
        v126 = v160;
        v125 = v161;
        (*(v161 + 104))(v160, *MEMORY[0x277D731A8], v118);
        v123(v126, a1, a2);

        (*(v125 + 8))(v126, v118);
        sub_22BB325EC(v31 + v119, &qword_27D8E2928, &qword_22BDBCFA0);
        v89 = sub_22BDBA594();
        return (*(*(v89 - 8) + 8))(v31 + v81, v89);
      case 6u:
        v127 = v31[1];
        v128 = v31[2];
        v129 = v31[3];

        v131 = v154;
        v130 = v155;
        v132 = v156;
        (*(v155 + 104))(v154, *MEMORY[0x277D731C8], v156);
        v128(v131, a1, a2);

        return (*(v130 + 8))(v131, v132);
      case 7u:
        v90 = v31[1];
        v91 = v31[2];

        v92 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
        v93 = v92[12];
        v94 = *(v31 + v92[16] + 8);

        v95 = *(v31 + v92[20] + 8);

        v96 = v31 + v92[24];
        v97 = *v96;
        v98 = *(v96 + 1);
        v100 = v160;
        v99 = v161;
        (*(v161 + 104))(v160, *MEMORY[0x277D731A8], v13);
        v97(v100, a1, a2);

        (*(v99 + 8))(v100, v13);
        v66 = v31 + v93;
        goto LABEL_12;
      case 8u:
        v133 = v31 + *(sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0) + 48);
        v134 = *v133;
        v135 = *(v133 + 1);
        v136 = v157;
        sub_22BDBA864();
        v134(v136, a1, a2);

        (*(v158 + 8))(v136, v159);
        v60 = type metadata accessor for FollowUpActionRequest;
        return sub_22BC9D3D4(v31, v60);
      case 9u:
        v61 = v31[1];
        v62 = v31[2];

        v63 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
        v64 = *(v63 + 48);
        v65 = *(v31 + *(v63 + 64) + 8);

        v66 = v31 + v64;
LABEL_12:
        result = sub_22BB325EC(v66, &qword_27D8E2928, &qword_22BDBCFA0);
        break;
      case 0xAu:
      case 0xCu:
        result = (*(*(v53 - 8) + 8))(v31, v53);
        break;
      case 0xBu:
        v67 = type metadata accessor for TypedValueExecutionResult();
        result = (*(*(v67 - 8) + 8))(v31, v67);
        break;
      default:
        v101 = v31[1];
        v102 = v31[2];
        v103 = v31[4];
        v104 = v31[5];
        v105 = v31[6];

        v106 = v143;
        v107 = v142;
        v108 = v144;
        (*(v143 + 104))(v142, *MEMORY[0x277D722B0], v144);
        v104(v107, a1, a2);

        result = (*(v106 + 8))(v107, v108);
        break;
    }
  }

  return result;
}

uint64_t sub_22BC97A60(uint64_t a1, uint64_t a2)
{
  v240 = a2;
  v232 = a1;
  v4 = *v2;
  v5 = sub_22BDB77D4();
  v6 = sub_22BB30444(v5);
  v242 = v7;
  v243 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v241 = v11 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  v13 = sub_22BB2F0C8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  v227 = v16 - v17;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v18);
  sub_22BB2F39C();
  v226 = v19;
  v20 = sub_22BBE6DE0(&qword_27D8E2F78, &unk_22BDBD980);
  v21 = sub_22BB2F0C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30C74();
  v229 = v24 - v25;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F39C();
  v228 = v27;
  sub_22BB36F5C();
  v29 = *(v28 + 80);
  sub_22BB36F5C();
  v31 = *(v30 + 96);
  v225[2] = v32;
  v225[1] = v31;
  v33 = type metadata accessor for ToolExecutionEvent();
  v34 = sub_22BB30444(v33);
  v230 = v35;
  v231 = v34;
  v37 = *(v36 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  v233 = v225 - v39;
  v238 = sub_22BDB8E14();
  v40 = sub_22BB30444(v238);
  v245 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BB30C74();
  v235 = v44 - v45;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v46);
  v234 = v225 - v47;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v48);
  v237 = v225 - v49;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v50);
  sub_22BB2F39C();
  v236 = v51;
  v239 = sub_22BDB4C34();
  v52 = sub_22BB30444(v239);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BB30C74();
  v59 = v57 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = v225 - v61;
  v63 = sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  sub_22BB2F0C8(v63);
  v65 = *(v64 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v66);
  sub_22BB334AC();
  v67 = sub_22BDB9564();
  v68 = sub_22BB30444(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BB30574();
  v75 = v74 - v73;
  v76 = qword_28142F458;
  sub_22BB31B88();
  swift_beginAccess();
  v77 = v2 + v76;
  v78 = v67;
  sub_22BB3CD70(v77, v3, &qword_27D8E3A80, &qword_22BDC0608);
  if (sub_22BB3AA28(v3, 1, v67) == 1)
  {
    sub_22BB325EC(v3, &qword_27D8E3A80, &qword_22BDC0608);
    v79 = v241;
    sub_22BDB63F4();
    v80 = sub_22BDB77C4();
    v81 = sub_22BDBB114();
    if (os_log_type_enabled(v80, v81))
    {
      sub_22BB2F114();
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_22BB2C000, v80, v81, "ToolExecution: Not checking action requirements given this execution was initialized without an action value", v82, 2u);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    (*(v242 + 8))(v79, v243);
    goto LABEL_5;
  }

  v83 = v70;
  (*(v70 + 32))(v75, v3, v78);
  v84 = v240;
  sub_22BDB8174();
  sub_22BDB8174();
  sub_22BB33728();
  v85 = sub_22BDB4C04();
  v86 = *(v54 + 8);
  v86(v59, v239);
  v87 = sub_22BB33728();
  (v86)(v87);
  v88 = v75;
  if (v85)
  {
    v243 = v83;
    v241 = v78;
    v89 = v236;
    sub_22BDB9544();
    v90 = sub_22BDB8E04();
    v62 = v91;
    v92 = (v245 + 1);
    v93 = v245[1];
    v83 = v238;
    v93(v89, v238);
    v242 = v88;
    sub_22BDB9544();
    v94 = sub_22BDB8E04();
    v96 = v95;
    v97 = sub_22BB2F12C();
    v245 = v92;
    (v93)(v97);
    if (v90 == v94 && v62 == v96)
    {

      sub_22BB319EC();
    }

    else
    {
      sub_22BB35FA0();
      v99 = sub_22BB8AB80();

      sub_22BB319EC();
      if ((v99 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v100 = sub_22BDB9554();
    v62 = v101;
    v102 = sub_22BDB9554();
    LOBYTE(v104) = v103;
    if (v62)
    {
      if (!v103)
      {
        goto LABEL_36;
      }

      if (v100 == v102 && v62 == v103)
      {
      }

      else
      {
        v106 = sub_22BB8AB80();

        if ((v106 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v103)
    {
      goto LABEL_34;
    }

    v107 = v234;
    sub_22BDB9544();
    v108 = sub_22BDB8DC4();
    v62 = v109;
    v83 = v238;
    v110 = v245;
    v93(v107, v238);
    v111 = v235;
    sub_22BDB9544();
    v112 = sub_22BDB8DC4();
    v104 = v113;
    v93(v111, v83);
    if (v62)
    {
      if (v104)
      {
        v114 = v108 == v112 && v62 == v104;
        v110 = v241;
        v83 = v243;
        if (v114)
        {

          v112 = v242;
        }

        else
        {
          sub_22BB35FA0();
          v115 = sub_22BB8AB80();

          v112 = v242;
          if ((v115 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_41;
      }

      sub_22BB319EC();
LABEL_36:

      goto LABEL_37;
    }

    sub_22BB319EC();
    if (!v104)
    {
LABEL_41:
      sub_22BDB9524();
      sub_22BDB9524();
      v121 = sub_22BB31F54();
      v123 = sub_22BC9106C(v121, v122);

      if (v123)
      {
        v124 = *(v83 + 8);
        v125 = sub_22BB39744();
        v126(v125);
LABEL_5:
        LOBYTE(v62) = 1;
        return v62 & 1;
      }

      v127 = sub_22BDB9524();
      v128 = sub_22BD1D1B4(v127);
      v129 = sub_22BDB9524();
      v130 = sub_22BD1D1B4(v129);
      v131 = v112;
      MEMORY[0x28223BE20](v130);
      v225[-2] = v112;
      v225[-1] = v84;
      v132 = v244;
      v133 = sub_22BC99200(0, sub_22BC9D7AC, &v225[-4], v128);
      v134 = v132;
      if (v133 > 1)
      {

        (*(v243 + 8))(v112, v110);
LABEL_55:
        LOBYTE(v62) = 0;
        return v62 & 1;
      }

      v135 = v133;
      v136 = sub_22BB31F54();
      v138 = sub_22BC91514(v136, v137);
      if (!v135 && (v138 & 1) != 0)
      {

        (*(v243 + 8))(v242, v110);
        LOBYTE(v62) = 1;
        return v62 & 1;
      }

      v139 = sub_22BB2F324();
      v141 = *(sub_22BC99354(v139, v140) + 16);

      v142 = v242;
      v143 = v243;
      if (v141)
      {

        (*(v143 + 8))(v142, v110);
        goto LABEL_55;
      }

      v144 = sub_22BB31F54();
      v146 = sub_22BC99354(v144, v145);

      if (v146[2] > 1uLL)
      {

LABEL_54:
        (*(v143 + 8))(v242, v110);
        goto LABEL_55;
      }

      v148 = v230;
      v147 = v231;
      v149 = v233;
      (*(v230 + 16))(v233, v232, v231);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_22BB3E198();

          if (!v132)
          {
            goto LABEL_75;
          }

          v155 = sub_22BDB9524();
          sub_22BB31B54();
          sub_22BD80EEC(v155, v156);

          v157 = sub_22BDB9504();
          v158 = sub_22BB3A840();
          if (sub_22BB3AA28(v158, v159, v157) == 1)
          {

            sub_22BB325EC(v226, &qword_27D8E2F80, &qword_22BDC0600);
            sub_22BDB5284();
            sub_22BB30B28();
            sub_22BB336D0(v160, v161, v162, v163);
LABEL_82:
            v213 = v228;
            goto LABEL_86;
          }

          v208 = v226;
          sub_22BDB94C4();
          sub_22BB30474(v157);
          (*(v209 + 8))(v208, v157);
          v210 = sub_22BDB5284();
          v211 = sub_22BB3A840();
          if (sub_22BB3AA28(v211, v212, v210) == 1)
          {

            goto LABEL_82;
          }

          sub_22BB30418();
          v220 = v219;
          if ((*(v221 + 88))(v228, v210) != *MEMORY[0x277D1CAF0])
          {

            (*(v220 + 8))(v228, v210);
LABEL_87:
            (*(v143 + 8))(v131, v110);
            LOBYTE(v62) = 0;
            return v62 & 1;
          }

LABEL_68:
          if (v245[2])
          {
            v189 = sub_22BC740CC(v245);
            v191 = v190;

            if (!v191)
            {
              LOBYTE(v62) = 0;
LABEL_97:

              (*(v143 + 8))(v131, v110);
              return v62 & 1;
            }

            if (v147 == v189 && v134 == v191)
            {
              LOBYTE(v62) = 1;
            }

            else
            {
              sub_22BB31B54();
              LOBYTE(v62) = sub_22BB8AB80();
            }

            v245 = v191;
          }

          else
          {
            LOBYTE(v62) = 1;
          }

          goto LABEL_97;
        case 2u:
          sub_22BB3E198();

          if (!v132)
          {
            goto LABEL_75;
          }

          v172 = sub_22BDB9524();
          sub_22BB31B54();
          sub_22BD80EEC(v172, v173);

          v174 = sub_22BDB9504();
          v175 = sub_22BB3A840();
          if (sub_22BB3AA28(v175, v176, v174) == 1)
          {

            sub_22BB325EC(v227, &qword_27D8E2F80, &qword_22BDC0600);
            sub_22BDB5284();
            sub_22BB30B28();
            sub_22BB336D0(v177, v178, v179, v180);
          }

          else
          {
            v214 = v227;
            sub_22BDB94C4();
            sub_22BB30474(v174);
            (*(v215 + 8))(v214, v174);
            v216 = sub_22BDB5284();
            v217 = sub_22BB3A840();
            if (sub_22BB3AA28(v217, v218, v216) != 1)
            {
              sub_22BB30418();
              v223 = v222;
              if ((*(v224 + 88))(v229, v216) == *MEMORY[0x277D1CAF0])
              {
                goto LABEL_68;
              }

              (*(v223 + 8))(v229, v216);
              goto LABEL_87;
            }
          }

          v213 = v229;
LABEL_86:
          sub_22BB325EC(v213, &qword_27D8E2F78, &unk_22BDBD980);
          goto LABEL_87;
        case 3u:
          v245 = v146;
          v131 = v242;
          v244 = v132;
          v181 = *(v149 + 1);
          v182 = *(v149 + 2);

          v183 = *(v149 + 4);

          v184 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
          v185 = v184[16];
          v186 = &v149[v184[20]];
          v147 = *v186;
          v134 = v186[1];
          sub_22BB6B644(v184[24]);

          v187 = sub_22BDBA5C4();
          sub_22BB31F70(v187);
          (*(v188 + 8))(&v149[v185]);
          if (v134)
          {
            goto LABEL_68;
          }

LABEL_75:

          LOBYTE(v62) = type metadata accessor for RuntimeError();
          sub_22BB31C10();
          sub_22BC9D714(v193, v194);
          sub_22BB369E0();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v83 = v143;
          goto LABEL_38;
        case 4u:

          v170 = sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730);
          sub_22BB6B644(*(v170 + 48));

          v171 = type metadata accessor for ActionConfirmationDialogRequest;
          goto LABEL_77;
        case 5u:

          v196 = *(v149 + 1);
          v197 = *(v149 + 2);

          v198 = *(v149 + 4);

          v199 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
          v200 = v199[16];
          v201 = v149;
          v202 = v199[20];
          v203 = *&v201[v199[24] + 8];

          v204 = *&v201[v199[28] + 8];

          v205 = *&v201[v199[32] + 8];

          sub_22BB325EC(&v201[v202], &qword_27D8E2928, &qword_22BDBCFA0);
          v206 = sub_22BDBA594();
          sub_22BB31F70(v206);
          (*(v207 + 8))(&v201[v200]);
          goto LABEL_54;
        case 7u:

          v166 = *(v149 + 1);
          v167 = *(v149 + 2);

          v168 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
          v169 = v168[12];
          sub_22BB6B644(v168[16]);

          sub_22BB6B644(v168[20]);

          sub_22BB6B644(v168[24]);

          v154 = &v149[v169];
          goto LABEL_62;
        case 8u:

          v195 = sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0);
          sub_22BB6B644(*(v195 + 48));

          v171 = type metadata accessor for FollowUpActionRequest;
LABEL_77:
          sub_22BC9D3D4(v149, v171);
          goto LABEL_54;
        case 9u:

          v150 = *(v149 + 1);
          v151 = *(v149 + 2);

          v152 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
          v153 = *(v152 + 48);
          sub_22BB6B644(*(v152 + 64));

          v154 = &v149[v153];
LABEL_62:
          sub_22BB325EC(v154, &qword_27D8E2928, &qword_22BDBCFA0);
          goto LABEL_54;
        case 0xBu:

          v164 = type metadata accessor for TypedValueExecutionResult();
          sub_22BB31F70(v164);
          (*(v165 + 8))(v149);
          goto LABEL_54;
        default:

          (*(v148 + 8))(v149, v147);
          goto LABEL_54;
      }
    }

LABEL_34:
    LOBYTE(v62) = v104;
    goto LABEL_36;
  }

LABEL_37:
  sub_22BC9D758();
  sub_22BB369E0();
  swift_allocError();
  *v116 = 1;
  swift_willThrow();
LABEL_38:
  v117 = *(v83 + 8);
  v118 = sub_22BB39744();
  v119(v118);
  return v62 & 1;
}