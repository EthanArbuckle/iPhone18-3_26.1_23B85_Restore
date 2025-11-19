void sub_22BCF2CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  sub_22BD00B7C(v13);
  v68 = sub_22BBE6DE0(&qword_27D8E4EE8, &qword_22BDC7668);
  sub_22BB30444(v68);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F240(v17, v66);
  v18 = sub_22BBE6DE0(&qword_27D8E4EF0, &qword_22BDC7670);
  sub_22BB30444(v18);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB37048(v22, v67);
  v23 = sub_22BBE6DE0(&qword_27D8E4EF8, &qword_22BDC7678);
  sub_22BB30444(v23);
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB354DC();
  v27 = _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
  v28 = sub_22BB2F330(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v31);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v32);
  sub_22BB3E4C0();
  v33 = v12[3];
  v34 = v12[4];
  sub_22BB9575C(v12);
  sub_22BCFE5E4();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v11)
  {
    v35 = sub_22BB7553C();
    sub_22BD01008(v35);
    if (v36)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v41 == v42)
    {
      __break(1u);
      return;
    }

    sub_22BB3DE3C(v37, v38, v39, v40);
    sub_22BD00A3C();
    if (v33)
    {
LABEL_9:
      sub_22BDBB3A4();
      sub_22BB31A08();
      v45 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BB97E38(v45);
      sub_22BD00E30();
      sub_22BB36D74();
      v46 = *MEMORY[0x277D84160];
      sub_22BB330A0();
      v48 = *(v47 + 104);
      v49 = sub_22BD00C90();
      v50(v49);
      swift_willThrow();
      swift_unknownObjectRelease();
      v51 = sub_22BB397A4();
      v52(v51, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BCFE638();
        sub_22BB8DB14();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          _s18TaskDefinitionThinO14TaskActionThinVMa(0);
          sub_22BBBE724();
          sub_22BCF8848(v43, v44);
          sub_22BB8AC44();
          sub_22BD00B5C();
          swift_unknownObjectRelease();
          v58 = sub_22BB3FCC8();
          v59(v58);
          v60 = sub_22BB38B68();
          v61(v60);
          sub_22BD00B30();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_22BCF8A34(v10, 0);
          sub_22BD00D58();
          v53 = v69;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BCFE68C();
        sub_22BB77E64();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB4C34();
          sub_22BB35B60();
          sub_22BCF8848(v56, v57);
          sub_22BB34EF8();
          swift_unknownObjectRelease();
          v62 = sub_22BB3FCC8();
          v63(v62);
          v64 = sub_22BB3A280();
          v65(v64);
          sub_22BD00B30();
          goto LABEL_16;
        }
      }

      v54 = sub_22BB3A280();
      v55(v54);
      swift_unknownObjectRelease();
    }

    v12 = v69;
  }

  v53 = v12;
LABEL_12:
  sub_22BB32FA4(v53);
  sub_22BD00E18();
  sub_22BB376A8();
}

uint64_t sub_22BCF315C()
{
  sub_22BB35F54();
  v3 = v1 == 0x6574656C706D6F63 && v2 == 0xE800000000000000;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x656C706D6F636E69 && v0 == 0xEA00000000006574)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28();
    sub_22BBC05FC();
    sub_22BD00D98();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_22BCF3204(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BDBB6D4();
    sub_22BBC05FC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_22BCF3270()
{
  sub_22BB31014();
  sub_22BD00E54();
  v3 = sub_22BBE6DE0(&qword_27D8E4FE8, &qword_22BDC76F0);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB38B54(v7, v42);
  v8 = sub_22BBE6DE0(&qword_27D8E4FF0, &qword_22BDC76F8);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB354DC();
  v12 = sub_22BBE6DE0(&qword_27D8E4FF8, &qword_22BDC7700);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BB30CE4();
  v17 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v16);
  v18 = sub_22BB2F0C8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  sub_22BB33230();
  v21 = sub_22BBE6DE0(&qword_27D8E5000, &qword_22BDC7708);
  sub_22BB30444(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BD00790();
  v28 = *(v1 + 24);
  v27 = *(v1 + 32);
  v29 = sub_22BB393C4();
  sub_22BB699E4(v29, v30);
  sub_22BCFE830();
  sub_22BD00CA8();
  sub_22BDBB8A4();
  sub_22BD01048();
  v31 = sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  if (sub_22BB3AA28(v0, 1, v31) == 1)
  {
    sub_22BCFE884();
    sub_22BB71F34();
    sub_22BDBB5F4();
    v32 = sub_22BB37D64();
    v33(v32);
    v34 = *(v23 + 8);
  }

  else
  {
    sub_22BC54A0C();
    sub_22BC8D26C();
    sub_22BCFE8D8();
    sub_22BBBEB1C();
    sub_22BB71F34();
    sub_22BDBB5F4();
    _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
    sub_22BBBDE8C();
    sub_22BCF8848(v37, v38);
    sub_22BD00AB0();
    v39 = sub_22BB692D0();
    v40(v39);
    sub_22BB58728(v2, &qword_27D8E4FF8, &qword_22BDC7700);
    v41 = *(v23 + 8);
  }

  v35 = sub_22BB757A0();
  v36(v35);
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCF35CC()
{
  sub_22BB31014();
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E4FB0, &qword_22BDC76D8);
  sub_22BB30444(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB37048(v8, v61);
  v63 = sub_22BBE6DE0(&qword_27D8E4FB8, &qword_22BDC76E0);
  sub_22BB30444(v63);
  v64 = v9;
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB30BA8();
  v13 = sub_22BBE6DE0(&qword_27D8E4FC0, &qword_22BDC76E8);
  sub_22BB30444(v13);
  v65 = v14;
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB354DC();
  v18 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(0);
  v19 = sub_22BB2F330(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v22);
  sub_22BB8AD68();
  v24 = v3[3];
  v23 = v3[4];
  v25 = sub_22BD00E6C();
  sub_22BB699E4(v25, v26);
  sub_22BCFE830();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v0)
  {
    v27 = sub_22BD00C14();
    sub_22BD01028(v27);
    v28 = v13;
    if (!v29)
    {
      sub_22BB2F4F4();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      sub_22BD00BEC(v30, v31, v32, v33);
      sub_22BD00B8C();
      swift_unknownObjectRelease();
      if (!(v13 >> 1))
      {
        if (v13)
        {
          sub_22BB75960();
          sub_22BCFE884();
          sub_22BBC0580();
          swift_unknownObjectRelease();
          v36 = sub_22BB9607C();
          v37(v36);
          v38 = sub_22BB34604();
          v39(v38, v18);
          v40 = sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
          sub_22BD00938(v40);
        }

        else
        {
          sub_22BCFE8D8();
          sub_22BBC0580();
          _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
          sub_22BBBDE8C();
          sub_22BCF8848(v48, v49);
          sub_22BD009CC();
          swift_unknownObjectRelease();
          v50 = *(v64 + 8);
          v51 = sub_22BB757A0();
          v52(v51);
          v53 = *(v65 + 8);
          v54 = sub_22BB3A84C();
          v55(v54);
          sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
          v56 = sub_22BD0095C();
          sub_22BB336D0(v56, v57, 1, v58);
          sub_22BB2F530();
          sub_22BCF8A34(v1, v62);
        }

        sub_22BB2F530();
        v59 = sub_22BB8AB74();
        sub_22BCF8A34(v59, v60);
        sub_22BB32FA4(0);
        goto LABEL_11;
      }

      v28 = v18;
    }

    sub_22BDBB3A4();
    sub_22BB31A08();
    v42 = v41;
    v43 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    sub_22BBBEDFC(v43);
    sub_22BB36D74();
    v44 = *MEMORY[0x277D84160];
    sub_22BB330A0();
    (*(v45 + 104))(v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = sub_22BB34604();
    v47(v46, v28);
    v3 = 0;
  }

  sub_22BB32FA4(v3);
LABEL_11:
  sub_22BB376A8();
}

uint64_t sub_22BCF3A94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022BDD3310 == a2;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_22BD00D44();
    if (a1 == 0x6C61636974697263 && a2 == v6)
    {

      return 1;
    }

    else
    {
      sub_22BB32E28();
      sub_22BBC05FC();
      sub_22BD00D98();
      if (v3)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_22BCF3B3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BDBB6D4();
    sub_22BBC05FC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_22BCF3BA4()
{
  sub_22BB31014();
  v52 = v0;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E4F70, &qword_22BDC76B0);
  sub_22BB30444(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB340E0(v9, v50);
  v10 = sub_22BBE6DE0(&qword_27D8E4F78, &qword_22BDC76B8);
  sub_22BB30444(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB37048(v14, v51);
  v15 = sub_22BDB4C84();
  v16 = sub_22BB30444(v15);
  v53 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v20 = sub_22BB3848C();
  v21 = _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(v20);
  v22 = sub_22BB2F0C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  sub_22BB72E10();
  v25 = sub_22BBE6DE0(&qword_27D8E4F80, &qword_22BDC76C0);
  sub_22BB30444(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB36808();
  v32 = *(v4 + 24);
  v31 = *(v4 + 32);
  v33 = sub_22BB53C48();
  sub_22BB699E4(v33, v34);
  sub_22BCFE6E0();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BCF8A8C(v52, v1);
  sub_22BBBE7B4();
  if (sub_22BB3AA28(v35, v36, v37) == 1)
  {
    sub_22BCFE734();
    sub_22BB52E84();
    sub_22BDBB5F4();
    v38 = sub_22BB37D64();
    v39(v38);
    v40 = *(v27 + 8);
  }

  else
  {
    (*(v53 + 32))(v2, v1, v15);
    sub_22BCFE788();
    sub_22BB77E64();
    sub_22BB52E84();
    sub_22BDBB5F4();
    sub_22BB69AD8();
    sub_22BCF8848(v43, v44);
    sub_22BB980C8();
    sub_22BB38B78();
    v45 = sub_22BB3ADA8();
    v46(v45);
    v47 = sub_22BB977C4();
    v48(v47, v15);
    v49 = *(v27 + 8);
  }

  v41 = sub_22BD0073C();
  v42(v41);
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCF3F18()
{
  sub_22BB31014();
  v4 = v3;
  v70 = v5;
  v6 = sub_22BBE6DE0(&qword_27D8E4F40, &qword_22BDC7698);
  sub_22BB30444(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB2F240(v10, v68);
  v69 = sub_22BBE6DE0(&qword_27D8E4F48, &qword_22BDC76A0);
  sub_22BB30444(v69);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30BA8();
  v14 = sub_22BBE6DE0(&qword_27D8E4F50, &qword_22BDC76A8);
  sub_22BB30444(v14);
  v71 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB32750();
  v19 = _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(0);
  v20 = sub_22BB2F330(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v23);
  sub_22BB8AD68();
  v25 = v4[3];
  v24 = v4[4];
  v26 = sub_22BD00E6C();
  sub_22BB699E4(v26, v27);
  sub_22BCFE6E0();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v1)
  {
    v28 = sub_22BDBB5E4();
    sub_22BD01028(v28);
    v29 = v14;
    if (!v30)
    {
      sub_22BB2F4F4();
      if (v35 == v36)
      {
        __break(1u);
        return;
      }

      v37 = v14;
      v38 = *(v34 + v32);
      sub_22BCFD8E0(v32 + 1, v31, v4, v34, v32, v33);
      v40 = v39;
      v42 = v41;
      swift_unknownObjectRelease();
      if (v40 == v42 >> 1)
      {
        if (v38)
        {
          sub_22BB75960();
          sub_22BCFE734();
          sub_22BB8DB14();
          sub_22BB31D34();
          sub_22BDBB554();
          v43 = v70;
          swift_unknownObjectRelease();
          v52 = sub_22BB34F2C();
          v53(v52);
          v54 = *(v71 + 8);
          v55 = sub_22BB33728();
          v56(v55);
          v57 = sub_22BDB4C84();
          sub_22BD00938(v57);
        }

        else
        {
          sub_22BCFE788();
          sub_22BB31D34();
          sub_22BDBB554();
          v58 = sub_22BDB4C84();
          sub_22BB69AD8();
          sub_22BCF8848(v59, v60);
          sub_22BDBB5D4();
          swift_unknownObjectRelease();
          v61 = sub_22BB977C4();
          v62(v61, v69);
          v63 = *(v71 + 8);
          v64 = sub_22BB33728();
          v65(v64);
          sub_22BB336D0(v2, 0, 1, v58);
          v66 = sub_22BB6BE0C();
          sub_22BCF8A34(v66, v0);
          v43 = v70;
        }

        v67 = sub_22BB68F28();
        sub_22BCF8A34(v67, v43);
        sub_22BB32FA4(v4);
        goto LABEL_11;
      }

      v29 = v37;
    }

    v44 = sub_22BDBB3A4();
    sub_22BB31A08();
    v46 = v45;
    v47 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    sub_22BBBEDFC(v47);
    sub_22BB36D74();
    v48 = *MEMORY[0x277D84160];
    sub_22BB30474(v44);
    (*(v49 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = sub_22BB34604();
    v51(v50, v29);
  }

  sub_22BB32FA4(v4);
LABEL_11:
  sub_22BB376A8();
}

uint64_t sub_22BCF4478()
{
  sub_22BB35F54();
  v3 = v1 == 0x6E776F6E6B6E75 && v2 == 0xE700000000000000;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6465727265666E69 && v0 == 0xEF73736563637553;
    if (v5 || (sub_22BB32E28() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_22BD00D44();
      v7 = v1 == 0x6465727265666E69 && v0 == v6;
      if (v7 || (sub_22BB32E28() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == sub_22BD00D14() && v0 == v8;
        if (v9 || (sub_22BB32E28() & 1) != 0)
        {

          return 3;
        }

        else if (v1 == 0x6C65636E6163 && v0 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          sub_22BB32E28();
          sub_22BBC05FC();
          if (v1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_22BCF45BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BDBB6D4();
    sub_22BBC05FC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_22BCF4628()
{
  sub_22BB31014();
  sub_22BD00E54();
  v3 = sub_22BBE6DE0(&qword_27D8E50A0, &qword_22BDC7750);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB2F240(v7, v57);
  v61 = sub_22BBE6DE0(&qword_27D8E50A8, &qword_22BDC7758);
  sub_22BB30444(v61);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB30BA8();
  sub_22BD00C78(v11);
  v62 = sub_22BBE6DE0(&qword_27D8E50B0, &qword_22BDC7760);
  sub_22BB30444(v62);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB6BB20(v15, v58);
  v59 = _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(0);
  v16 = sub_22BB2F330(v59);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB305A8();
  v60 = v19;
  v20 = sub_22BBE6DE0(&qword_27D8E50B8, &qword_22BDC7768);
  sub_22BB30444(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB34298();
  v24 = sub_22BBE6DE0(&qword_27D8E50C0, &qword_22BDC7770);
  sub_22BB30444(v24);
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB3721C();
  v28 = _s18TaskDefinitionThinO14TaskStatusThinOMa(0);
  v29 = sub_22BB2F0C8(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  sub_22BB33230();
  v32 = sub_22BBE6DE0(&qword_27D8E50C8, &qword_22BDC7778);
  sub_22BB30444(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v37);
  sub_22BB36808();
  v39 = *(v1 + 24);
  v38 = *(v1 + 32);
  v40 = sub_22BB3A19C();
  sub_22BB699E4(v40, v41);
  sub_22BCFE980();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BD01048();
  sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  v42 = sub_22BD00E84();
  switch(sub_22BB3AA28(v42, 4, v43))
  {
    case 1u:
      sub_22BCFEB24();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v51 = sub_22BB9607C();
      goto LABEL_7;
    case 2u:
      sub_22BD00E78();
      sub_22BCFEAD0();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v51 = sub_22BB3B088();
      goto LABEL_7;
    case 3u:
      sub_22BD00DF8();
      sub_22BCFEA28();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v51 = sub_22BB37D64();
      v52 = v61;
      goto LABEL_7;
    case 4u:
      sub_22BB3E098();
      sub_22BCFE9D4();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v51 = sub_22BB37D64();
LABEL_7:
      v53(v51, v52);
      v54 = *(v34 + 8);
      v55 = sub_22BD0073C();
      v56(v55);
      break;
    default:
      sub_22BCF8A34(v0, v60);
      sub_22BB8D22C();
      sub_22BCFEA7C();
      sub_22BB52E84();
      sub_22BDBB5F4();
      sub_22BD008A4();
      sub_22BCF8848(v44, v45);
      sub_22BBC2544();
      v46 = sub_22BB3AB0C();
      v47(v46, v2);
      sub_22BCF8AE4(v60, _s18TaskDefinitionThinO21TaskFailureReasonThinOMa);
      v48 = *(v34 + 8);
      v49 = sub_22BD0073C();
      v50(v49);
      break;
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCF4B70()
{
  sub_22BB31014();
  sub_22BD00D8C();
  v92 = v1;
  v95 = sub_22BBE6DE0(&qword_27D8E5038, &qword_22BDC7720);
  sub_22BB30444(v95);
  v93 = v2;
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB38B54(v6, v87);
  v7 = sub_22BBE6DE0(&qword_27D8E5040, &qword_22BDC7728);
  sub_22BB30444(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB6BB20(v11, v88);
  v12 = sub_22BBE6DE0(&qword_27D8E5048, &qword_22BDC7730);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB340E0(v16, v89);
  v91 = sub_22BBE6DE0(&qword_27D8E5050, &qword_22BDC7738);
  sub_22BB30444(v91);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB30BA8();
  sub_22BD00C78(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E5058, &qword_22BDC7740);
  sub_22BB30444(v21);
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  sub_22BB52928();
  v25 = sub_22BBE6DE0(&qword_27D8E5060, &qword_22BDC7748);
  sub_22BB30444(v25);
  v94 = v26;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB36808();
  v30 = _s18TaskDefinitionThinO14TaskStatusThinOMa(0);
  v31 = sub_22BB2F330(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v34);
  sub_22BB3E4C0();
  v36 = v0[3];
  v35 = v0[4];
  v96 = v0;
  v37 = sub_22BB3A19C();
  sub_22BB699E4(v37, v38);
  sub_22BCFE980();
  sub_22BD00918();
  sub_22BDBB894();
  if (!v97)
  {
    v39 = sub_22BD00BC4();
    sub_22BD00A84(v39);
    if (!v40)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      v47 = *(v44 + v42);
      sub_22BB97F40(v41, v42, v43, v44);
      sub_22BD00F50();
      if (!(v25 >> 1))
      {
        switch(v47)
        {
          case 1:
            sub_22BD00E78();
            sub_22BCFEAD0();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v75 = sub_22BB34F2C();
            v76(v75, v91);
            v77 = sub_22BB5426C();
            v78(v77);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v52 = sub_22BB3AAFC();
            v54 = 2;
            goto LABEL_15;
          case 2:
            sub_22BB8D22C();
            sub_22BCFEA7C();
            sub_22BB3E1EC();
            sub_22BDBB554();
            _s18TaskDefinitionThinO21TaskFailureReasonThinOMa(0);
            sub_22BD008A4();
            sub_22BCF8848(v69, v70);
            sub_22BD00998();
            swift_unknownObjectRelease();
            v79 = sub_22BB8DCCC();
            v80(v79);
            v81 = *(v94 + 8);
            v82 = sub_22BB3AAD8();
            v83(v82);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v84 = sub_22BD0095C();
            sub_22BB336D0(v84, v85, 4, v86);
            sub_22BB73BA4();
            v47 = v90;
            sub_22BCF8A34(0, v90);
            goto LABEL_16;
          case 3:
            sub_22BD00DF8();
            sub_22BCFEA28();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v71 = sub_22BB34F2C();
            v72(v71);
            v73 = sub_22BB5426C();
            v74(v73);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v52 = sub_22BB3AAFC();
            v54 = 3;
            goto LABEL_15;
          case 4:
            sub_22BB3E098();
            sub_22BCFE9D4();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v64 = *(v93 + 8);
            v65 = sub_22BC54A0C();
            v66(v65);
            v67 = sub_22BB5426C();
            v68(v67);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v52 = sub_22BB3AAFC();
            v54 = 4;
            goto LABEL_15;
          default:
            sub_22BCFEB24();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v48 = sub_22BB37D64();
            v49(v48);
            v50 = sub_22BB5426C();
            v51(v50);
            sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
            v52 = sub_22BB3AAFC();
            v54 = 1;
LABEL_15:
            sub_22BB336D0(v52, v54, 4, v53);
LABEL_16:
            sub_22BB73BA4();
            sub_22BCF8A34(v47, v92);
            v63 = v96;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_22BDBB3A4();
    sub_22BB31A08();
    v55 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    sub_22BD00EF0(v55);
    sub_22BB36D74();
    v56 = *MEMORY[0x277D84160];
    sub_22BB330A0();
    v58 = *(v57 + 104);
    v59 = sub_22BD00A78();
    v60(v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = sub_22BB3B6B8();
    v62(v61);
  }

  v63 = v96;
LABEL_10:
  sub_22BB32FA4(v63);
  sub_22BB975A0();
  sub_22BB376A8();
}

uint64_t sub_22BCF5300()
{
  sub_22BB35F54();
  v3 = v1 == 0x737574617473 && v2 == 0xE600000000000000;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x745374706D6F7270 && v0 == 0xEB00000000657461)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28();
    sub_22BBC05FC();
    sub_22BD00D98();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_22BCF53A0(char a1)
{
  sub_22BD00D74();
  MEMORY[0x2318A57F0](a1 & 1);
  return sub_22BDBB834();
}

void sub_22BCF53E0()
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  v2 = sub_22BBE6DE0(&qword_27D8E5028, &qword_22BDC7718);
  sub_22BB30444(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB3721C();
  sub_22BB3B3AC();
  sub_22BCFE92C();
  sub_22BD0071C();
  v6 = sub_22BD00E24();
  _s18TaskDefinitionThinO14TaskStatusThinOMa(v6);
  sub_22BB75710();
  sub_22BCF8848(v7, v8);
  sub_22BB36BDC();
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    v11 = *(v0 + *(_s18TaskDefinitionThinO15TaskOutcomeThinVMa(0) + 20));
    sub_22BD008D4();
    sub_22BCF939C();
    sub_22BB37A08();
    sub_22BDBB664();
  }

  v9 = sub_22BB35198();
  v10(v9);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void sub_22BCF5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BB31014();
  v16 = sub_22BD00EB4(v15);
  v17 = _s18TaskDefinitionThinO14TaskStatusThinOMa(v16);
  v18 = sub_22BB2F330(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  v44 = v21;
  v22 = sub_22BBE6DE0(&qword_27D8E5010, &qword_22BDC7710);
  sub_22BB30444(v22);
  v43 = v23;
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22BB30CE4();
  v28 = _s18TaskDefinitionThinO15TaskOutcomeThinVMa(v27);
  v29 = sub_22BB2F330(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB3662C();
  v33 = v12[3];
  v32 = v12[4];
  v34 = sub_22BB3A84C();
  sub_22BB699E4(v34, v35);
  sub_22BCFE92C();
  sub_22BD00C6C();
  sub_22BDBB894();
  if (v14)
  {
    sub_22BB32FA4(v12);
  }

  else
  {
    sub_22BB75710();
    sub_22BCF8848(v36, v37);
    sub_22BB36BDC();
    sub_22BD00B9C();
    sub_22BB73BA4();
    sub_22BCF8A34(v44, v13);
    sub_22BD008D4();
    sub_22BCF93F0();
    sub_22BB3B0C0();
    sub_22BDBB5D4();
    v38 = *(v43 + 8);
    v39 = sub_22BB89D18();
    v40(v39);
    *(v13 + *(v28 + 20)) = a12;
    v41 = sub_22BB6BE0C();
    sub_22BCF8A8C(v41, v42);
    sub_22BB32FA4(v12);
    sub_22BCF8AE4(v13, _s18TaskDefinitionThinO15TaskOutcomeThinVMa);
  }

  sub_22BB376A8();
}

uint64_t sub_22BCF5790(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BCF5810()
{
  sub_22BD00D74();
  MEMORY[0x2318A57F0](0);
  return sub_22BDBB834();
}

void sub_22BCF5868()
{
  sub_22BD00EDC();
  v0 = sub_22BBE6DE0(&qword_27D8E4FA0, &qword_22BDC76D0);
  sub_22BB30444(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32750();
  sub_22BB3B3AC();
  sub_22BCFE7DC();
  sub_22BD00758();
  sub_22BDB4354();
  sub_22BD0088C();
  sub_22BCF8848(v6, v7);
  sub_22BD00A78();
  sub_22BDBB664();
  v8 = *(v2 + 8);
  v9 = sub_22BB52D78();
  v10(v9);
  sub_22BD00EC8();
}

void sub_22BCF598C()
{
  sub_22BB31014();
  sub_22BB310A8(v2);
  v3 = sub_22BDB4354();
  v4 = sub_22BB30444(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v7 = sub_22BBE6DE0(&qword_27D8E4F88, &qword_22BDC76C8);
  sub_22BB30444(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB3848C();
  v12 = _s18TaskDefinitionThinO15TaskContextThinVMa(v11);
  v13 = sub_22BB2F0C8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  sub_22BB36FD8();
  v16 = v0[3];
  v17 = v0[4];
  v18 = sub_22BB500C0();
  sub_22BB699E4(v18, v19);
  sub_22BCFE7DC();
  sub_22BD00CA8();
  sub_22BDBB894();
  if (!v1)
  {
    sub_22BD0088C();
    sub_22BCF8848(v20, v21);
    sub_22BB31C28();
    v22 = sub_22BB977C4();
    v23(v22, v7);
    v24 = sub_22BB3569C();
    v25(v24);
    sub_22BB8987C();
    v26 = sub_22BB3A86C();
    sub_22BCF8A34(v26, v27);
  }

  sub_22BB32FA4(v0);
  sub_22BD00C9C();
  sub_22BB376A8();
}

uint64_t sub_22BCF5B6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022BDD2520 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F43656369766564 && a2 == 0xED0000747865746ELL;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000022BDD3330 == a2;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000022BDD3350 == a2;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
            if (v10 || (sub_22BDBB6D4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000011 && 0x800000022BDD3370 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_22BDBB6D4();

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

uint64_t sub_22BCF5DB4(unsigned __int8 a1)
{
  sub_22BD00D74();
  MEMORY[0x2318A57F0](a1);
  return sub_22BDBB834();
}

unint64_t sub_22BCF5DF4(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F43656369766564;
      break;
    case 3:
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x656D6F6374756FLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void sub_22BCF5ED0()
{
  sub_22BD00EDC();
  v3 = sub_22BBE6DE0(&qword_27D8E4E88, &qword_22BDC7648);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3721C();
  sub_22BB3B3AC();
  sub_22BCFE4E8();
  sub_22BD0071C();
  sub_22BDB43E4();
  sub_22BB377E0();
  sub_22BCF8848(v7, v8);
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    v9 = _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
    sub_22BD0096C(v9);
    sub_22BD00E9C(v10);
    sub_22BDB4C34();
    sub_22BB35B60();
    sub_22BCF8848(v11, v12);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v13 = v2[6];
    v14 = sub_22BD00E9C(2);
    _s18TaskDefinitionThinO15TaskContextThinVMa(v14);
    sub_22BB70148();
    sub_22BCF8848(v15, v16);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v28 = *(v0 + v2[7]);
    sub_22BBC05F0();
    sub_22BBE6DE0(&qword_27D8E4EA0, &qword_22BDC7650);
    sub_22BCFEBCC(&qword_27D8E4EA8, &qword_27D8E4EB0);
    sub_22BB3AD98();
    sub_22BDBB664();
    v17 = v2[8];
    v18 = sub_22BD00E9C(4);
    _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v18);
    sub_22BD00874();
    sub_22BCF8848(v19, v20);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v21 = v2[9];
    v22 = sub_22BD00E9C(5);
    _s18TaskDefinitionThinO15TaskOutcomeThinVMa(v22);
    sub_22BD0085C();
    sub_22BCF8848(v23, v24);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v25 = (v0 + v2[10]);
    v29 = *v25;
    v30 = v25[8];
    v31 = *(v25 + 1);
    sub_22BD00EA8();
    sub_22BCFE53C();
    sub_22BDBB664();
  }

  v26 = sub_22BB35198();
  v27(v26);
  sub_22BD00EC8();
}

void sub_22BCF6220()
{
  sub_22BB31014();
  v3 = v2;
  v62 = v4;
  v64 = _s18TaskDefinitionThinO15TaskOutcomeThinVMa(0);
  v5 = sub_22BB2F330(v64);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v63 = v8;
  v9 = sub_22BB2F120();
  v65 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v9);
  v10 = sub_22BB2F330(v65);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v66 = v13;
  v14 = sub_22BB2F120();
  v67 = _s18TaskDefinitionThinO15TaskContextThinVMa(v14);
  v15 = sub_22BB2F330(v67);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  v68 = v18;
  sub_22BB2F120();
  v19 = sub_22BDB4C34();
  v20 = sub_22BB30444(v19);
  v69 = v21;
  v70 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BB72E10();
  v24 = sub_22BDB43E4();
  v25 = sub_22BB30444(v24);
  v71 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB3662C();
  v73 = sub_22BBE6DE0(&qword_27D8E50F0, &qword_22BDC7790);
  sub_22BB30444(v73);
  v30 = *(v29 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB36808();
  v72 = _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
  v32 = sub_22BB2F330(v72);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB305A8();
  v36 = v35;
  v37 = v3[3];
  v38 = v3[4];
  v39 = sub_22BB2F324();
  sub_22BB699E4(v39, v40);
  sub_22BCFE4E8();
  sub_22BD00918();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v3);
  }

  else
  {
    sub_22BB377E0();
    sub_22BCF8848(v41, v42);
    sub_22BD00CB4();
    sub_22BDBB5D4();
    v43 = *(v71 + 32);
    v44 = sub_22BB3B69C();
    v45(v44);
    sub_22BB35B60();
    sub_22BCF8848(v46, v47);
    sub_22BD00CB4();
    sub_22BD00F90();
    (*(v69 + 32))(v36 + v72[5], v1, v70);
    LOBYTE(v74) = 2;
    sub_22BB70148();
    sub_22BCF8848(v48, v49);
    sub_22BD00CB4();
    sub_22BD00B14();
    v50 = v72[6];
    sub_22BB8987C();
    sub_22BCF8A34(v68, v36 + v51);
    sub_22BBE6DE0(&qword_27D8E4EA0, &qword_22BDC7650);
    sub_22BBC05F0();
    sub_22BCFEBCC(&qword_27D8E5100, &qword_27D8E5108);
    sub_22BD00F90();
    *(v36 + v72[7]) = v74;
    sub_22BD00874();
    sub_22BCF8848(v52, v53);
    sub_22BD00CB4();
    sub_22BD00B14();
    v54 = v72[8];
    sub_22BB2F530();
    sub_22BCF8A34(v66, v36 + v55);
    sub_22BD0085C();
    sub_22BCF8848(v56, v57);
    sub_22BD00CB4();
    sub_22BD00B14();
    sub_22BB97C08();
    sub_22BCF8A34(v63, v58);
    sub_22BD00EA8();
    sub_22BCFEC64();
    sub_22BD00B14();
    v59 = sub_22BD00A00();
    v60(v59);
    v61 = v36 + v72[10];
    *v61 = 5;
    *(v61 + 8) = v75;
    *(v61 + 16) = v76;
    sub_22BCF8A8C(v36, v62);
    sub_22BB32FA4(v3);
    sub_22BCF8AE4(v36, _s18TaskDefinitionThinO18TaskEvaluationThinVMa);
  }

  sub_22BD00E18();
  sub_22BB376A8();
}

uint64_t sub_22BCF696C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF1884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCF6994(uint64_t a1)
{
  v2 = sub_22BCFEB78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF69D0(uint64_t a1)
{
  v2 = sub_22BCFEB78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF230C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCF6A6C(uint64_t a1)
{
  v2 = sub_22BCFE590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6AA8(uint64_t a1)
{
  v2 = sub_22BCFE590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6B14(uint64_t a1)
{
  v2 = sub_22BCFE638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6B50(uint64_t a1)
{
  v2 = sub_22BCFE638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6B8C(uint64_t a1)
{
  v2 = sub_22BCFE5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6BC8(uint64_t a1)
{
  v2 = sub_22BCFE5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6C04(uint64_t a1)
{
  v2 = sub_22BCFE68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6C40(uint64_t a1)
{
  v2 = sub_22BCFE68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6CAC(uint64_t a1)
{
  v2 = sub_22BCFE830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6CE8(uint64_t a1)
{
  v2 = sub_22BCFE830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6D24(uint64_t a1)
{
  v2 = sub_22BCFE8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6D60(uint64_t a1)
{
  v2 = sub_22BCFE8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6D9C(uint64_t a1)
{
  v2 = sub_22BCFE884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6DD8(uint64_t a1)
{
  v2 = sub_22BCFE884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6E44(uint64_t a1)
{
  v2 = sub_22BCFE6E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6E80(uint64_t a1)
{
  v2 = sub_22BCFE6E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6EBC(uint64_t a1)
{
  v2 = sub_22BCFE734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6EF8(uint64_t a1)
{
  v2 = sub_22BCFE734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6F34(uint64_t a1)
{
  v2 = sub_22BCFE788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF6F70(uint64_t a1)
{
  v2 = sub_22BCFE788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF6FDC(uint64_t a1)
{
  v2 = sub_22BCFE9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7018(uint64_t a1)
{
  v2 = sub_22BCFE9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7054(uint64_t a1)
{
  v2 = sub_22BCFE980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7090(uint64_t a1)
{
  v2 = sub_22BCFE980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF70CC(uint64_t a1)
{
  v2 = sub_22BCFEA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7108(uint64_t a1)
{
  v2 = sub_22BCFEA28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7144(uint64_t a1)
{
  v2 = sub_22BCFEA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7180(uint64_t a1)
{
  v2 = sub_22BCFEA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF71BC(uint64_t a1)
{
  v2 = sub_22BCFEAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF71F8(uint64_t a1)
{
  v2 = sub_22BCFEAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7234(uint64_t a1)
{
  v2 = sub_22BCFEB24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7270(uint64_t a1)
{
  v2 = sub_22BCFEB24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF72DC(uint64_t a1)
{
  v2 = sub_22BCFE92C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF7318(uint64_t a1)
{
  v2 = sub_22BCFE92C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF5790(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCF73B4(uint64_t a1)
{
  v2 = sub_22BCFE7DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF73F0(uint64_t a1)
{
  v2 = sub_22BCFE7DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCF5B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCF748C(uint64_t a1)
{
  v2 = sub_22BCFE4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCF74C8(uint64_t a1)
{
  v2 = sub_22BCFE4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCF7534@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v4 = sub_22BB2F330(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = sub_22BB3DFC0();
  v8 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB30D5C();
  v12 = sub_22BB3AAD8();
  sub_22BCF8A8C(v12, v13);
  sub_22BD00AA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB3AF78();
    v14 = sub_22BB3AC54();
    sub_22BCF8A34(v14, v15);
    v16 = sub_22BDB43E4();
    sub_22BB2F330(v16);
    (*(v17 + 16))(a1, v1);
    v18 = *(v1 + *(v3 + 24));
    sub_22BB30848();
    sub_22BCF8AE4(v1, v19);
    *(a1 + *(_s18TaskDefinitionThinO14TaskActionThinVMa(0) + 20)) = v18;
  }

  else
  {
    v20 = sub_22BDB4C34();
    sub_22BB2F330(v20);
    v22 = *(v21 + 32);
    v23 = sub_22BB500C0();
    v24(v23);
  }

  _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_22BCF76B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB3B094();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  v24 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  v25 = sub_22BB2F330(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  sub_22BD00A30();
  v28 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  v29 = sub_22BB2F0C8(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30C74();
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v36 = sub_22BB2F0C8(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  v41 = v40 - v39;
  sub_22BB37D4C();
  v42 = sub_22BB32E04();
  sub_22BCF8A8C(v42, v43);
  v44 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  sub_22BB31814(v41, 1, v44);
  if (!v45)
  {
    sub_22BC8D26C();
    sub_22BCF95D4(v34, v19);
    sub_22BB31814(v19, 1, v24);
    if (!v45)
    {
      sub_22BD0079C();
      v46 = sub_22BB95B5C();
      sub_22BCF8A34(v46, v47);
      sub_22BCF7534(v23);
      sub_22BB327E8();
      sub_22BCF8AE4(v18, v48);
    }

    sub_22BB58728(v34, &qword_27D8E3D98, &qword_22BDC1130);
    v49 = _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
    sub_22BD00FB0(v49);
  }

  v50 = sub_22BBE6DE0(&qword_27D8E4E80, &qword_22BDC7270);
  sub_22BD00FB0(v50);
  sub_22BB36A24();
}

uint64_t sub_22BCF7890@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v4 = sub_22BB2F330(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BD00A30();
  sub_22BB53D70();
  v7 = sub_22BB37494();
  sub_22BCF8A8C(v7, v8);
  sub_22BB53C48();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = sub_22BDB4C84();
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    sub_22BB336D0(a1, 1, 1, v10);
    sub_22BB362D0();
    return sub_22BCF8AE4(v1, v12);
  }

  else
  {
    sub_22BB30474(v10);
    v15 = *(v14 + 32);
    v16 = sub_22BB31F54();
    v17(v16);
    return sub_22BB336D0(a1, 0, 1, v11);
  }
}

void sub_22BCF7988()
{
  sub_22BB30F94();
  v4 = v1;
  v6 = v5;
  v7 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v8 = sub_22BB2F0C8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB345CC();
  v158 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v11 = sub_22BB30444(v158);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v155 = v16;
  v17 = sub_22BB2F120();
  v18 = _s18TaskDefinitionThinO23CandidateEvaluationThinVMa(v17);
  v19 = sub_22BB30444(v18);
  v156 = v20;
  v157 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v25 = v24 - v23;
  v26 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v27 = sub_22BB2F0C8(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB305A8();
  v145 = v30;
  v31 = sub_22BB2F120();
  v32 = _s18TaskDefinitionThinO14TaskStatusThinOMa(v31);
  v33 = sub_22BB2F0C8(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB30C74();
  v146 = v36 - v37;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v38);
  v149 = &v135 - v39;
  v40 = sub_22BB2F120();
  v148 = _s18TaskDefinitionThinO15TaskOutcomeThinVMa(v40);
  v41 = sub_22BB2F330(v148);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BB305A8();
  v151 = v44;
  v45 = sub_22BB2F120();
  v46 = _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(v45);
  v47 = sub_22BB2F0C8(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BB305A8();
  v150 = v50;
  v51 = sub_22BB2F120();
  v52 = _s18TaskDefinitionThinO15TaskContextThinVMa(v51);
  v53 = sub_22BB2F0C8(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BB30574();
  sub_22BB33230();
  v56 = sub_22BDB4C34();
  v57 = sub_22BB30444(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BB30574();
  sub_22BB319F8();
  v62 = sub_22BDB43E4();
  v63 = sub_22BB30444(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BB30574();
  v68 = v67 - v66;
  v141 = v69;
  v70 = *(v69 + 16);
  v140 = v68;
  v142 = v71;
  v70();
  v72 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v73 = v72[5];
  v143 = v2;
  v144 = v59;
  v74 = *(v59 + 16);
  v159 = v56;
  v153 = v74;
  v154 = v59 + 16;
  v74(v2, v4 + v73, v56);
  v75 = v4 + v72[6];
  v147 = v0;
  sub_22BDB7A64();
  v83 = *(v4 + v72[7]);
  v84 = *(v83 + 16);
  v85 = MEMORY[0x277D84F90];
  if (v84)
  {
    v136 = v72;
    v137 = v3;
    v138 = v4;
    v139 = v6;
    v161 = MEMORY[0x277D84F90];
    sub_22BD284D8();
    v85 = v161;
    v86 = *(v13 + 80);
    sub_22BB2F390();
    v88 = v83 + v87;
    v152 = *(v13 + 72);
    v89 = v155;
    do
    {
      v160 = v85;
      sub_22BD00844();
      sub_22BCF8A8C(v88, v89);
      v90 = v25;
      v91 = v158;
      v92 = v158[7];
      sub_22BDB7B24();
      sub_22BDB7B34();
      v93 = v157;
      v94 = v90 + v157[6];
      sub_22BB89D18();
      sub_22BDB7B14();
      v153(v90, v89, v159);
      v95 = v91[5];
      v96 = v93[5];
      sub_22BB32C5C();
      sub_22BCF8A8C(v89 + v97, v90 + v98);
      v99 = *(v89 + v91[8]);
      v100 = *(v89 + v91[9]);
      v101 = v91[10];
      v25 = v90;
      v102 = *(v89 + v101);
      sub_22BD0082C();
      sub_22BCF8AE4(v89, v103);
      *(v90 + v93[7]) = v99;
      *(v90 + v93[8]) = v100;
      v104 = v93[9];
      v85 = v160;
      *(v90 + v104) = v102;
      v161 = v85;
      v105 = *(v85 + 16);
      if (v105 >= *(v85 + 24) >> 1)
      {
        sub_22BD284D8();
        v85 = v161;
      }

      *(v85 + 16) = v105 + 1;
      v106 = *(v156 + 80);
      sub_22BB2F390();
      sub_22BCF8A34(v90, v85 + v107 + *(v108 + 72) * v105);
      v88 += v152;
      --v84;
    }

    while (v84);
    v6 = v139;
    v4 = v138;
    v3 = v137;
    v72 = v136;
  }

  v109 = v150;
  sub_22BCF76B0(v4 + v72[8], v76, v77, v78, v79, v80, v81, v82, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
  v110 = v4 + v72[9];
  sub_22BB3A464();
  v111 = v145;
  sub_22BCF8A8C(v110, v145);
  v112 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v113 = sub_22BB3AA28(v111, 4, v112);
  v114 = v146;
  if (!v113)
  {
    sub_22BB6F948();
    sub_22BCF8A34(v111, v3);
    sub_22BCF7890(v114);
    sub_22BB362D0();
    sub_22BCF8AE4(v3, v115);
  }

  v116 = sub_22BBE6DE0(&qword_27D8E4E78, &qword_22BDC7268);
  sub_22BB336D0(v114, v113, 4, v116);
  v117 = v114;
  v118 = v149;
  sub_22BCF8A34(v117, v149);
  v119 = *(v110 + *(type metadata accessor for FeedbackLearning.TaskOutcome(0) + 20));
  v120 = v151;
  sub_22BCF8A34(v118, v151);
  *(v120 + *(v148 + 20)) = v119;
  v121 = sub_22BD01234(*(v4 + v72[10]), *(v4 + v72[10] + 8), *(v4 + v72[10] + 16), *(v4 + v72[10] + 24));
  v123 = v122;
  v125 = v124;
  v127 = v126;
  (*(v141 + 32))(v6, v140, v142);
  v128 = _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
  (*(v144 + 32))(v6 + v128[5], v143, v159);
  v129 = v128[6];
  sub_22BB8987C();
  sub_22BCF8A34(v147, v6 + v130);
  *(v6 + v128[7]) = v85;
  v131 = v128[8];
  sub_22BB2F530();
  sub_22BCF8A34(v109, v6 + v132);
  sub_22BB97C08();
  sub_22BCF8A34(v120, v133);
  v134 = v6 + v128[10];
  *v134 = v121;
  *(v134 + 8) = v123;
  *(v134 + 16) = v125;
  *(v134 + 24) = v127;
  sub_22BB314EC();
}

void sub_22BCF80B8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22BBBFEBC();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_22BCF80F0()
{
  result = qword_27D8E4428;
  if (!qword_27D8E4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4428);
  }

  return result;
}

unint64_t sub_22BCF8144()
{
  result = qword_27D8E4430;
  if (!qword_27D8E4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4430);
  }

  return result;
}

unint64_t sub_22BCF8198()
{
  result = qword_27D8E4438;
  if (!qword_27D8E4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4438);
  }

  return result;
}

unint64_t sub_22BCF81EC()
{
  result = qword_27D8E4440;
  if (!qword_27D8E4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4440);
  }

  return result;
}

unint64_t sub_22BCF8240()
{
  result = qword_27D8E4448;
  if (!qword_27D8E4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4448);
  }

  return result;
}

unint64_t sub_22BCF8294()
{
  result = qword_27D8E44B0;
  if (!qword_27D8E44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44B0);
  }

  return result;
}

unint64_t sub_22BCF82E8()
{
  result = qword_27D8E44B8;
  if (!qword_27D8E44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44B8);
  }

  return result;
}

unint64_t sub_22BCF833C()
{
  result = qword_27D8E44C0;
  if (!qword_27D8E44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44C0);
  }

  return result;
}

unint64_t sub_22BCF8390()
{
  result = qword_27D8E44C8;
  if (!qword_27D8E44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44C8);
  }

  return result;
}

unint64_t sub_22BCF83E4()
{
  result = qword_27D8E44D0;
  if (!qword_27D8E44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44D0);
  }

  return result;
}

unint64_t sub_22BCF8438()
{
  result = qword_27D8E44D8;
  if (!qword_27D8E44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44D8);
  }

  return result;
}

unint64_t sub_22BCF848C()
{
  result = qword_27D8E44E0;
  if (!qword_27D8E44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44E0);
  }

  return result;
}

unint64_t sub_22BCF84E0()
{
  result = qword_27D8E44E8;
  if (!qword_27D8E44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44E8);
  }

  return result;
}

unint64_t sub_22BCF8534()
{
  result = qword_27D8E44F0;
  if (!qword_27D8E44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E44F0);
  }

  return result;
}

unint64_t sub_22BCF8588()
{
  result = qword_27D8E4530;
  if (!qword_27D8E4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4530);
  }

  return result;
}

unint64_t sub_22BCF85DC()
{
  result = qword_27D8E4538;
  if (!qword_27D8E4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4538);
  }

  return result;
}

unint64_t sub_22BCF8630()
{
  result = qword_27D8E4568;
  if (!qword_27D8E4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4568);
  }

  return result;
}

unint64_t sub_22BCF8684()
{
  result = qword_27D8E4570;
  if (!qword_27D8E4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4570);
  }

  return result;
}

unint64_t sub_22BCF86D8()
{
  result = qword_27D8E4578;
  if (!qword_27D8E4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4578);
  }

  return result;
}

unint64_t sub_22BCF872C()
{
  result = qword_27D8E4580;
  if (!qword_27D8E4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4580);
  }

  return result;
}

unint64_t sub_22BCF8780()
{
  result = qword_27D8E4588;
  if (!qword_27D8E4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4588);
  }

  return result;
}

unint64_t sub_22BCF87D4()
{
  result = qword_27D8E45C0;
  if (!qword_27D8E45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E45C0);
  }

  return result;
}

uint64_t sub_22BCF8848(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22BCF8890()
{
  result = qword_27D8E4600;
  if (!qword_27D8E4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4600);
  }

  return result;
}

unint64_t sub_22BCF88E4()
{
  result = qword_27D8E4608;
  if (!qword_27D8E4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4608);
  }

  return result;
}

unint64_t sub_22BCF8938()
{
  result = qword_27D8E4610;
  if (!qword_27D8E4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4610);
  }

  return result;
}

unint64_t sub_22BCF898C()
{
  result = qword_27D8E4620;
  if (!qword_27D8E4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4620);
  }

  return result;
}

unint64_t sub_22BCF89E0()
{
  result = qword_27D8E4628;
  if (!qword_27D8E4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4628);
  }

  return result;
}

uint64_t sub_22BCF8A34(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BCF8A8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BCF8AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22BCF8B3C()
{
  result = qword_27D8E4688;
  if (!qword_27D8E4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4688);
  }

  return result;
}

unint64_t sub_22BCF8B90()
{
  result = qword_27D8E4690;
  if (!qword_27D8E4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4690);
  }

  return result;
}

unint64_t sub_22BCF8BE4()
{
  result = qword_27D8E46A0;
  if (!qword_27D8E46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E46A0);
  }

  return result;
}

unint64_t sub_22BCF8C38()
{
  result = qword_27D8E46A8;
  if (!qword_27D8E46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E46A8);
  }

  return result;
}

unint64_t sub_22BCF8CAC()
{
  result = qword_27D8E46F0;
  if (!qword_27D8E46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E46F0);
  }

  return result;
}

unint64_t sub_22BCF8D00()
{
  result = qword_27D8E4710;
  if (!qword_27D8E4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4710);
  }

  return result;
}

unint64_t sub_22BCF8D54()
{
  result = qword_27D8E4718;
  if (!qword_27D8E4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4718);
  }

  return result;
}

unint64_t sub_22BCF8DA8()
{
  result = qword_27D8E4720;
  if (!qword_27D8E4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4720);
  }

  return result;
}

unint64_t sub_22BCF8DFC()
{
  result = qword_27D8E4748;
  if (!qword_27D8E4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4748);
  }

  return result;
}

unint64_t sub_22BCF8E50()
{
  result = qword_27D8E4750;
  if (!qword_27D8E4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4750);
  }

  return result;
}

unint64_t sub_22BCF8EA4()
{
  result = qword_27D8E4758;
  if (!qword_27D8E4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4758);
  }

  return result;
}

unint64_t sub_22BCF8F18()
{
  result = qword_27D8E4780;
  if (!qword_27D8E4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4780);
  }

  return result;
}

unint64_t sub_22BCF8F6C()
{
  result = qword_27D8E4788;
  if (!qword_27D8E4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4788);
  }

  return result;
}

unint64_t sub_22BCF8FC0()
{
  result = qword_27D8E4798;
  if (!qword_27D8E4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4798);
  }

  return result;
}

unint64_t sub_22BCF9034()
{
  result = qword_27D8E4808;
  if (!qword_27D8E4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4808);
  }

  return result;
}

unint64_t sub_22BCF9088()
{
  result = qword_27D8E4810;
  if (!qword_27D8E4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4810);
  }

  return result;
}

unint64_t sub_22BCF90DC()
{
  result = qword_27D8E4818;
  if (!qword_27D8E4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4818);
  }

  return result;
}

unint64_t sub_22BCF9130()
{
  result = qword_27D8E4820;
  if (!qword_27D8E4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4820);
  }

  return result;
}

unint64_t sub_22BCF9184()
{
  result = qword_27D8E4830;
  if (!qword_27D8E4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4830);
  }

  return result;
}

unint64_t sub_22BCF91D8()
{
  result = qword_27D8E4838;
  if (!qword_27D8E4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4838);
  }

  return result;
}

unint64_t sub_22BCF922C()
{
  result = qword_27D8E4890;
  if (!qword_27D8E4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4890);
  }

  return result;
}

unint64_t sub_22BCF9280()
{
  result = qword_27D8E4898;
  if (!qword_27D8E4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4898);
  }

  return result;
}

unint64_t sub_22BCF92D4()
{
  result = qword_27D8E48A0;
  if (!qword_27D8E48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48A0);
  }

  return result;
}

unint64_t sub_22BCF9348()
{
  result = qword_27D8E48C8;
  if (!qword_27D8E48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48C8);
  }

  return result;
}

unint64_t sub_22BCF939C()
{
  result = qword_27D8E48D8;
  if (!qword_27D8E48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48D8);
  }

  return result;
}

unint64_t sub_22BCF93F0()
{
  result = qword_27D8E48F0;
  if (!qword_27D8E48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E48F0);
  }

  return result;
}

unint64_t sub_22BCF9464()
{
  result = qword_27D8E4900;
  if (!qword_27D8E4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4900);
  }

  return result;
}

unint64_t sub_22BCF94D8()
{
  result = qword_27D8E4940;
  if (!qword_27D8E4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4940);
  }

  return result;
}

unint64_t sub_22BCF952C()
{
  result = qword_27D8E4948;
  if (!qword_27D8E4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4948);
  }

  return result;
}

unint64_t sub_22BCF9580()
{
  result = qword_27D8E4958;
  if (!qword_27D8E4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4958);
  }

  return result;
}

uint64_t sub_22BCF95D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BCF9644()
{
  result = qword_27D8E49A8;
  if (!qword_27D8E49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49A8);
  }

  return result;
}

unint64_t sub_22BCF9698()
{
  result = qword_27D8E49B0;
  if (!qword_27D8E49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49B0);
  }

  return result;
}

unint64_t sub_22BCF96EC()
{
  result = qword_27D8E49B8;
  if (!qword_27D8E49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49B8);
  }

  return result;
}

unint64_t sub_22BCF9764()
{
  result = qword_27D8E49E8;
  if (!qword_27D8E49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49E8);
  }

  return result;
}

unint64_t sub_22BCF97BC()
{
  result = qword_27D8E49F0;
  if (!qword_27D8E49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49F0);
  }

  return result;
}

unint64_t sub_22BCF9814()
{
  result = qword_27D8E49F8;
  if (!qword_27D8E49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E49F8);
  }

  return result;
}

unint64_t sub_22BCF986C()
{
  result = qword_27D8E4A00;
  if (!qword_27D8E4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A00);
  }

  return result;
}

unint64_t sub_22BCF98C4()
{
  result = qword_27D8E4A08;
  if (!qword_27D8E4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A08);
  }

  return result;
}

unint64_t sub_22BCF991C()
{
  result = qword_27D8E4A10;
  if (!qword_27D8E4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A10);
  }

  return result;
}

unint64_t sub_22BCF9974()
{
  result = qword_27D8E4A18;
  if (!qword_27D8E4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A18);
  }

  return result;
}

uint64_t _s16CandidateOutcomeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s16CandidateOutcomeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCF9B9C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_22BCF9BC8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 3 ^ 0x82;
  }

  *result = v2;
  return result;
}

uint64_t _s26CandidateDonationOptionSetVwet(uint64_t a1, int a2)
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

uint64_t _s26CandidateDonationOptionSetVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_22BCF9CB8()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BCF9D20()
{
  result = sub_22BDBA014();
  if (v1 <= 0x3F)
  {
    result = sub_22BDBA594();
    if (v2 <= 0x3F)
    {
      result = sub_22BDBA994();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BCF9DD0()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.CandidateParameter(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
      if (v3 <= 0x3F)
      {
        result = sub_22BDB7B44();
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

unsigned __int8 *_s16TaskPromptStatusOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s16TaskPromptStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCFA094(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22BCFA0A8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_22BCFA138()
{
  result = type metadata accessor for FeedbackLearning.FlowActionEvent(319);
  if (v1 <= 0x3F)
  {
    result = sub_22BDBA014();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCFA1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_22BD00C84();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      sub_22BD00CE4();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCFA2B8()
{
  v0 = sub_22BD00C84();
  sub_22BCFDCB4(v0, v1, v2, v3);
  v5 = v4;
  if (v6 <= 0x3F)
  {
    sub_22BD00CE4();
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

void sub_22BCFA33C()
{
  sub_22BDB43E4();
  if (v0 <= 0x3F)
  {
    sub_22BDB4C34();
    if (v1 <= 0x3F)
    {
      sub_22BDB7A84();
      if (v2 <= 0x3F)
      {
        sub_22BCFA458(319, &qword_281428858, type metadata accessor for FeedbackLearning.CandidateEvaluation, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for FeedbackLearning.TaskFinalResolutionState(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FeedbackLearning.TaskOutcome(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22BCFA458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_22BCFA4E4()
{
  result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
  if (v1 <= 0x3F)
  {
    result = sub_22BDB7B94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCFA818(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFA89C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCFA9A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_22BB7560C((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFAA2C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BCFAB2C()
{
  result = qword_27D8E4A20;
  if (!qword_27D8E4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A20);
  }

  return result;
}

unint64_t sub_22BCFAB84()
{
  result = qword_27D8E4A28;
  if (!qword_27D8E4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A28);
  }

  return result;
}

unint64_t sub_22BCFABDC()
{
  result = qword_27D8E4A30;
  if (!qword_27D8E4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A30);
  }

  return result;
}

unint64_t sub_22BCFAC34()
{
  result = qword_27D8E4A38;
  if (!qword_27D8E4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A38);
  }

  return result;
}

unint64_t sub_22BCFAC8C()
{
  result = qword_27D8E4A40;
  if (!qword_27D8E4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A40);
  }

  return result;
}

unint64_t sub_22BCFACE4()
{
  result = qword_27D8E4A48;
  if (!qword_27D8E4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A48);
  }

  return result;
}

unint64_t sub_22BCFAD3C()
{
  result = qword_27D8E4A50;
  if (!qword_27D8E4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A50);
  }

  return result;
}

unint64_t sub_22BCFAD94()
{
  result = qword_27D8E4A58;
  if (!qword_27D8E4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A58);
  }

  return result;
}

unint64_t sub_22BCFADEC()
{
  result = qword_27D8E4A60;
  if (!qword_27D8E4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A60);
  }

  return result;
}

unint64_t sub_22BCFAE44()
{
  result = qword_27D8E4A68;
  if (!qword_27D8E4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A68);
  }

  return result;
}

unint64_t sub_22BCFAE9C()
{
  result = qword_27D8E4A70;
  if (!qword_27D8E4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A70);
  }

  return result;
}

unint64_t sub_22BCFAEF4()
{
  result = qword_27D8E4A78;
  if (!qword_27D8E4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A78);
  }

  return result;
}

unint64_t sub_22BCFAF4C()
{
  result = qword_27D8E4A80;
  if (!qword_27D8E4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A80);
  }

  return result;
}

unint64_t sub_22BCFAFA4()
{
  result = qword_27D8E4A88;
  if (!qword_27D8E4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A88);
  }

  return result;
}

unint64_t sub_22BCFAFFC()
{
  result = qword_27D8E4A90;
  if (!qword_27D8E4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A90);
  }

  return result;
}

unint64_t sub_22BCFB054()
{
  result = qword_27D8E4A98;
  if (!qword_27D8E4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4A98);
  }

  return result;
}

unint64_t sub_22BCFB0AC()
{
  result = qword_27D8E4AA0;
  if (!qword_27D8E4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AA0);
  }

  return result;
}

unint64_t sub_22BCFB104()
{
  result = qword_27D8E4AA8;
  if (!qword_27D8E4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AA8);
  }

  return result;
}

unint64_t sub_22BCFB15C()
{
  result = qword_27D8E4AB0;
  if (!qword_27D8E4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AB0);
  }

  return result;
}

unint64_t sub_22BCFB1B4()
{
  result = qword_27D8E4AB8;
  if (!qword_27D8E4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AB8);
  }

  return result;
}

unint64_t sub_22BCFB20C()
{
  result = qword_27D8E4AC0;
  if (!qword_27D8E4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AC0);
  }

  return result;
}

unint64_t sub_22BCFB264()
{
  result = qword_27D8E4AC8;
  if (!qword_27D8E4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AC8);
  }

  return result;
}

unint64_t sub_22BCFB2BC()
{
  result = qword_27D8E4AD0;
  if (!qword_27D8E4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AD0);
  }

  return result;
}

unint64_t sub_22BCFB314()
{
  result = qword_27D8E4AD8;
  if (!qword_27D8E4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AD8);
  }

  return result;
}

unint64_t sub_22BCFB36C()
{
  result = qword_27D8E4AE0;
  if (!qword_27D8E4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AE0);
  }

  return result;
}

unint64_t sub_22BCFB3C4()
{
  result = qword_27D8E4AE8;
  if (!qword_27D8E4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AE8);
  }

  return result;
}

unint64_t sub_22BCFB41C()
{
  result = qword_27D8E4AF0;
  if (!qword_27D8E4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AF0);
  }

  return result;
}

unint64_t sub_22BCFB474()
{
  result = qword_27D8E4AF8;
  if (!qword_27D8E4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4AF8);
  }

  return result;
}

unint64_t sub_22BCFB4CC()
{
  result = qword_27D8E4B00;
  if (!qword_27D8E4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B00);
  }

  return result;
}

unint64_t sub_22BCFB524()
{
  result = qword_27D8E4B08;
  if (!qword_27D8E4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B08);
  }

  return result;
}

unint64_t sub_22BCFB57C()
{
  result = qword_27D8E4B10;
  if (!qword_27D8E4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B10);
  }

  return result;
}

unint64_t sub_22BCFB5D4()
{
  result = qword_27D8E4B18;
  if (!qword_27D8E4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B18);
  }

  return result;
}

unint64_t sub_22BCFB62C()
{
  result = qword_27D8E4B20;
  if (!qword_27D8E4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B20);
  }

  return result;
}

unint64_t sub_22BCFB684()
{
  result = qword_27D8E4B28;
  if (!qword_27D8E4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B28);
  }

  return result;
}

unint64_t sub_22BCFB6DC()
{
  result = qword_27D8E4B30;
  if (!qword_27D8E4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B30);
  }

  return result;
}

unint64_t sub_22BCFB734()
{
  result = qword_27D8E4B38;
  if (!qword_27D8E4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B38);
  }

  return result;
}

unint64_t sub_22BCFB78C()
{
  result = qword_27D8E4B40;
  if (!qword_27D8E4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B40);
  }

  return result;
}

unint64_t sub_22BCFB7E4()
{
  result = qword_27D8E4B48;
  if (!qword_27D8E4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B48);
  }

  return result;
}

unint64_t sub_22BCFB83C()
{
  result = qword_27D8E4B50;
  if (!qword_27D8E4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B50);
  }

  return result;
}

unint64_t sub_22BCFB894()
{
  result = qword_27D8E4B58;
  if (!qword_27D8E4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B58);
  }

  return result;
}

unint64_t sub_22BCFB8EC()
{
  result = qword_27D8E4B60;
  if (!qword_27D8E4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B60);
  }

  return result;
}

unint64_t sub_22BCFB944()
{
  result = qword_27D8E4B68;
  if (!qword_27D8E4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B68);
  }

  return result;
}

unint64_t sub_22BCFB99C()
{
  result = qword_27D8E4B70;
  if (!qword_27D8E4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B70);
  }

  return result;
}

unint64_t sub_22BCFB9F4()
{
  result = qword_27D8E4B78;
  if (!qword_27D8E4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B78);
  }

  return result;
}

unint64_t sub_22BCFBA4C()
{
  result = qword_27D8E4B80;
  if (!qword_27D8E4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B80);
  }

  return result;
}

unint64_t sub_22BCFBAA4()
{
  result = qword_27D8E4B88;
  if (!qword_27D8E4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B88);
  }

  return result;
}

unint64_t sub_22BCFBAFC()
{
  result = qword_27D8E4B90;
  if (!qword_27D8E4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B90);
  }

  return result;
}

unint64_t sub_22BCFBB54()
{
  result = qword_27D8E4B98;
  if (!qword_27D8E4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4B98);
  }

  return result;
}

unint64_t sub_22BCFBBAC()
{
  result = qword_27D8E4BA0;
  if (!qword_27D8E4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BA0);
  }

  return result;
}

unint64_t sub_22BCFBC04()
{
  result = qword_27D8E4BA8;
  if (!qword_27D8E4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BA8);
  }

  return result;
}

unint64_t sub_22BCFBC5C()
{
  result = qword_27D8E4BB0;
  if (!qword_27D8E4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BB0);
  }

  return result;
}

unint64_t sub_22BCFBCB4()
{
  result = qword_27D8E4BB8;
  if (!qword_27D8E4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BB8);
  }

  return result;
}

unint64_t sub_22BCFBD0C()
{
  result = qword_27D8E4BC0;
  if (!qword_27D8E4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BC0);
  }

  return result;
}

unint64_t sub_22BCFBD64()
{
  result = qword_27D8E4BC8;
  if (!qword_27D8E4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BC8);
  }

  return result;
}

unint64_t sub_22BCFBDBC()
{
  result = qword_27D8E4BD0;
  if (!qword_27D8E4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BD0);
  }

  return result;
}

unint64_t sub_22BCFBE14()
{
  result = qword_27D8E4BD8;
  if (!qword_27D8E4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BD8);
  }

  return result;
}

unint64_t sub_22BCFBE6C()
{
  result = qword_27D8E4BE0;
  if (!qword_27D8E4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BE0);
  }

  return result;
}

unint64_t sub_22BCFBEC4()
{
  result = qword_27D8E4BE8;
  if (!qword_27D8E4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BE8);
  }

  return result;
}

unint64_t sub_22BCFBF1C()
{
  result = qword_27D8E4BF0;
  if (!qword_27D8E4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BF0);
  }

  return result;
}

unint64_t sub_22BCFBF74()
{
  result = qword_27D8E4BF8;
  if (!qword_27D8E4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4BF8);
  }

  return result;
}

unint64_t sub_22BCFBFCC()
{
  result = qword_27D8E4C00;
  if (!qword_27D8E4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C00);
  }

  return result;
}

unint64_t sub_22BCFC024()
{
  result = qword_27D8E4C08;
  if (!qword_27D8E4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C08);
  }

  return result;
}

unint64_t sub_22BCFC07C()
{
  result = qword_27D8E4C10;
  if (!qword_27D8E4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C10);
  }

  return result;
}

unint64_t sub_22BCFC0D4()
{
  result = qword_27D8E4C18;
  if (!qword_27D8E4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C18);
  }

  return result;
}

unint64_t sub_22BCFC12C()
{
  result = qword_27D8E4C20;
  if (!qword_27D8E4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C20);
  }

  return result;
}

unint64_t sub_22BCFC184()
{
  result = qword_27D8E4C28;
  if (!qword_27D8E4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C28);
  }

  return result;
}

unint64_t sub_22BCFC1DC()
{
  result = qword_27D8E4C30;
  if (!qword_27D8E4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C30);
  }

  return result;
}

unint64_t sub_22BCFC234()
{
  result = qword_27D8E4C38;
  if (!qword_27D8E4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C38);
  }

  return result;
}

unint64_t sub_22BCFC28C()
{
  result = qword_27D8E4C40;
  if (!qword_27D8E4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C40);
  }

  return result;
}

unint64_t sub_22BCFC2E4()
{
  result = qword_27D8E4C48;
  if (!qword_27D8E4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C48);
  }

  return result;
}

unint64_t sub_22BCFC33C()
{
  result = qword_27D8E4C50;
  if (!qword_27D8E4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C50);
  }

  return result;
}

unint64_t sub_22BCFC394()
{
  result = qword_27D8E4C58;
  if (!qword_27D8E4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C58);
  }

  return result;
}

unint64_t sub_22BCFC3EC()
{
  result = qword_27D8E4C60;
  if (!qword_27D8E4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C60);
  }

  return result;
}

unint64_t sub_22BCFC444()
{
  result = qword_27D8E4C68;
  if (!qword_27D8E4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C68);
  }

  return result;
}

unint64_t sub_22BCFC49C()
{
  result = qword_27D8E4C70;
  if (!qword_27D8E4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C70);
  }

  return result;
}

unint64_t sub_22BCFC4F4()
{
  result = qword_27D8E4C78;
  if (!qword_27D8E4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C78);
  }

  return result;
}

unint64_t sub_22BCFC54C()
{
  result = qword_27D8E4C80;
  if (!qword_27D8E4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C80);
  }

  return result;
}

unint64_t sub_22BCFC5A4()
{
  result = qword_27D8E4C88;
  if (!qword_27D8E4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C88);
  }

  return result;
}

unint64_t sub_22BCFC5FC()
{
  result = qword_27D8E4C90;
  if (!qword_27D8E4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C90);
  }

  return result;
}

unint64_t sub_22BCFC654()
{
  result = qword_27D8E4C98;
  if (!qword_27D8E4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4C98);
  }

  return result;
}

unint64_t sub_22BCFC6AC()
{
  result = qword_27D8E4CA0;
  if (!qword_27D8E4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CA0);
  }

  return result;
}

unint64_t sub_22BCFC704()
{
  result = qword_27D8E4CA8;
  if (!qword_27D8E4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CA8);
  }

  return result;
}

unint64_t sub_22BCFC75C()
{
  result = qword_27D8E4CB0;
  if (!qword_27D8E4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CB0);
  }

  return result;
}

unint64_t sub_22BCFC7B4()
{
  result = qword_27D8E4CB8;
  if (!qword_27D8E4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CB8);
  }

  return result;
}

unint64_t sub_22BCFC80C()
{
  result = qword_27D8E4CC0;
  if (!qword_27D8E4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CC0);
  }

  return result;
}

unint64_t sub_22BCFC864()
{
  result = qword_27D8E4CC8;
  if (!qword_27D8E4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CC8);
  }

  return result;
}

unint64_t sub_22BCFC8BC()
{
  result = qword_27D8E4CD0;
  if (!qword_27D8E4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CD0);
  }

  return result;
}

unint64_t sub_22BCFC914()
{
  result = qword_27D8E4CD8;
  if (!qword_27D8E4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CD8);
  }

  return result;
}

unint64_t sub_22BCFC96C()
{
  result = qword_27D8E4CE0;
  if (!qword_27D8E4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CE0);
  }

  return result;
}

unint64_t sub_22BCFC9C4()
{
  result = qword_27D8E4CE8;
  if (!qword_27D8E4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CE8);
  }

  return result;
}

unint64_t sub_22BCFCA1C()
{
  result = qword_27D8E4CF0;
  if (!qword_27D8E4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CF0);
  }

  return result;
}

unint64_t sub_22BCFCA74()
{
  result = qword_27D8E4CF8;
  if (!qword_27D8E4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4CF8);
  }

  return result;
}

unint64_t sub_22BCFCACC()
{
  result = qword_27D8E4D00;
  if (!qword_27D8E4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D00);
  }

  return result;
}

unint64_t sub_22BCFCB24()
{
  result = qword_27D8E4D08;
  if (!qword_27D8E4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D08);
  }

  return result;
}

unint64_t sub_22BCFCB7C()
{
  result = qword_27D8E4D10;
  if (!qword_27D8E4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D10);
  }

  return result;
}

unint64_t sub_22BCFCBD4()
{
  result = qword_27D8E4D18;
  if (!qword_27D8E4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D18);
  }

  return result;
}

unint64_t sub_22BCFCC2C()
{
  result = qword_27D8E4D20;
  if (!qword_27D8E4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D20);
  }

  return result;
}

unint64_t sub_22BCFCC84()
{
  result = qword_27D8E4D28;
  if (!qword_27D8E4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D28);
  }

  return result;
}

unint64_t sub_22BCFCCDC()
{
  result = qword_27D8E4D30;
  if (!qword_27D8E4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D30);
  }

  return result;
}

unint64_t sub_22BCFCD34()
{
  result = qword_27D8E4D38;
  if (!qword_27D8E4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D38);
  }

  return result;
}

unint64_t sub_22BCFCD8C()
{
  result = qword_27D8E4D40;
  if (!qword_27D8E4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D40);
  }

  return result;
}

unint64_t sub_22BCFCDE4()
{
  result = qword_27D8E4D48;
  if (!qword_27D8E4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D48);
  }

  return result;
}

unint64_t sub_22BCFCE3C()
{
  result = qword_27D8E4D50;
  if (!qword_27D8E4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D50);
  }

  return result;
}

unint64_t sub_22BCFCE94()
{
  result = qword_27D8E4D58;
  if (!qword_27D8E4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D58);
  }

  return result;
}

unint64_t sub_22BCFCEEC()
{
  result = qword_27D8E4D60;
  if (!qword_27D8E4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D60);
  }

  return result;
}

unint64_t sub_22BCFCF44()
{
  result = qword_27D8E4D68;
  if (!qword_27D8E4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D68);
  }

  return result;
}

unint64_t sub_22BCFCF9C()
{
  result = qword_27D8E4D70;
  if (!qword_27D8E4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D70);
  }

  return result;
}

unint64_t sub_22BCFCFF4()
{
  result = qword_27D8E4D78;
  if (!qword_27D8E4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D78);
  }

  return result;
}

unint64_t sub_22BCFD04C()
{
  result = qword_27D8E4D80;
  if (!qword_27D8E4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D80);
  }

  return result;
}

unint64_t sub_22BCFD0A4()
{
  result = qword_27D8E4D88;
  if (!qword_27D8E4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D88);
  }

  return result;
}

unint64_t sub_22BCFD0FC()
{
  result = qword_27D8E4D90;
  if (!qword_27D8E4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D90);
  }

  return result;
}

unint64_t sub_22BCFD154()
{
  result = qword_27D8E4D98;
  if (!qword_27D8E4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4D98);
  }

  return result;
}

unint64_t sub_22BCFD1AC()
{
  result = qword_27D8E4DA0;
  if (!qword_27D8E4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DA0);
  }

  return result;
}

unint64_t sub_22BCFD204()
{
  result = qword_27D8E4DA8;
  if (!qword_27D8E4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DA8);
  }

  return result;
}

unint64_t sub_22BCFD25C()
{
  result = qword_27D8E4DB0;
  if (!qword_27D8E4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DB0);
  }

  return result;
}

unint64_t sub_22BCFD2B4()
{
  result = qword_27D8E4DB8;
  if (!qword_27D8E4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DB8);
  }

  return result;
}

unint64_t sub_22BCFD30C()
{
  result = qword_27D8E4DC0;
  if (!qword_27D8E4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DC0);
  }

  return result;
}

unint64_t sub_22BCFD364()
{
  result = qword_27D8E4DC8;
  if (!qword_27D8E4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DC8);
  }

  return result;
}

unint64_t sub_22BCFD3BC()
{
  result = qword_27D8E4DD0;
  if (!qword_27D8E4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DD0);
  }

  return result;
}

unint64_t sub_22BCFD414()
{
  result = qword_27D8E4DD8;
  if (!qword_27D8E4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DD8);
  }

  return result;
}

unint64_t sub_22BCFD46C()
{
  result = qword_27D8E4DE0;
  if (!qword_27D8E4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DE0);
  }

  return result;
}

unint64_t sub_22BCFD4C4()
{
  result = qword_27D8E4DE8;
  if (!qword_27D8E4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DE8);
  }

  return result;
}

unint64_t sub_22BCFD51C()
{
  result = qword_27D8E4DF0;
  if (!qword_27D8E4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DF0);
  }

  return result;
}

unint64_t sub_22BCFD574()
{
  result = qword_27D8E4DF8;
  if (!qword_27D8E4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4DF8);
  }

  return result;
}

unint64_t sub_22BCFD5CC()
{
  result = qword_27D8E4E00;
  if (!qword_27D8E4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E00);
  }

  return result;
}

unint64_t sub_22BCFD624()
{
  result = qword_27D8E4E08;
  if (!qword_27D8E4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E08);
  }

  return result;
}

unint64_t sub_22BCFD67C()
{
  result = qword_27D8E4E10;
  if (!qword_27D8E4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E10);
  }

  return result;
}

unint64_t sub_22BCFD6D4()
{
  result = qword_27D8E4E18;
  if (!qword_27D8E4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E18);
  }

  return result;
}

unint64_t sub_22BCFD72C()
{
  result = qword_27D8E4E20;
  if (!qword_27D8E4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E20);
  }

  return result;
}

unint64_t sub_22BCFD784()
{
  result = qword_27D8E4E28;
  if (!qword_27D8E4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E28);
  }

  return result;
}

unint64_t sub_22BCFD7DC()
{
  result = qword_27D8E4E30;
  if (!qword_27D8E4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E30);
  }

  return result;
}

unint64_t sub_22BCFD834()
{
  result = qword_27D8E4E38;
  if (!qword_27D8E4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E38);
  }

  return result;
}

unint64_t sub_22BCFD88C()
{
  result = qword_27D8E4E40;
  if (!qword_27D8E4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E40);
  }

  return result;
}

uint64_t sub_22BCFD8E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22BCFDA84()
{
  v0 = sub_22BD00C84();
  result = v1(v0);
  if (v3 <= 0x3F)
  {
    sub_22BD00CE4();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BCFDB64()
{
  v0 = sub_22BDB4C84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_22BCFDBFC()
{
  v0 = sub_22BD00C84();
  result = v1(v0);
  if (v3 <= 0x3F)
  {
    sub_22BD00CE4();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BCFDCB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_22BCFA458(0, a3, a4, MEMORY[0x277D83D88]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22BCFDD2C()
{
  v3 = sub_22BB30CF8();
  v5 = v4(v3);
  sub_22BB314BC(v5);
  if (*(v6 + 84) == v1)
  {
    v7 = sub_22BD00E84();

    return sub_22BB3AA28(v7, v1, v8);
  }

  else
  {
    v10 = *(v0 + *(v2 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(v0 + *(v2 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22BCFDDE4()
{
  v4 = sub_22BB31C98();
  v6 = v5(v4);
  result = sub_22BB314BC(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = sub_22BB34284();

    return sub_22BB336D0(v9, v10, v11, v12);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 3;
  }

  return result;
}

uint64_t sub_22BCFDED8()
{
  v0 = sub_22BD00C84();
  sub_22BCFDF30(v0, v1, v2);
  v4 = v3;
  if (v5 <= 0x3F)
  {
    sub_22BD00CE4();
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_22BCFDF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BCFDFA4()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.CandidateParameter(319);
    if (v2 <= 0x3F)
    {
      result = sub_22BDB7B44();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BCFE080(uint64_t a1, uint64_t a2, int *a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  sub_22BB2F474();
  v12 = sub_22BDB43E4();
  sub_22BB314BC(v12);
  if (*(v13 + 84) == v6)
  {
    v14 = sub_22BB69A84();
LABEL_8:

    return sub_22BB3AA28(v14, v6, v15);
  }

  v16 = sub_22BDB4C34();
  sub_22BB314BC(v16);
  if (*(v17 + 84) == v6)
  {
    sub_22BD00CCC();
LABEL_7:
    v14 = v7 + v18;
    goto LABEL_8;
  }

  v19 = a4(0);
  v20 = sub_22BB314BC(v19);
  if (*(v21 + 84) == v6)
  {
    v15 = v20;
    v18 = a3[6];
    goto LABEL_7;
  }

  if (v6 != 0x7FFFFFFF)
  {
    v24 = a5(0);
    v25 = sub_22BB314BC(v24);
    if (*(v26 + 84) == v6)
    {
      v15 = v25;
      v18 = a3[8];
    }

    else
    {
      v15 = a6(0);
      v18 = a3[9];
    }

    goto LABEL_7;
  }

  v23 = *(v7 + a3[7]);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  return (v23 + 1);
}

void sub_22BCFE234()
{
  sub_22BB3B094();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_22BB2F474();
  v12 = sub_22BDB43E4();
  sub_22BB314BC(v12);
  if (*(v13 + 84) == v11)
  {
    sub_22BB33224();
  }

  else
  {
    v14 = sub_22BDB4C34();
    sub_22BB314BC(v14);
    if (*(v15 + 84) == v11)
    {
      sub_22BD00CF0();
    }

    else
    {
      v16 = v7(0);
      sub_22BB314BC(v16);
      if (*(v17 + 84) == v11)
      {
        v18 = v9[6];
      }

      else
      {
        if (v11 == 0x7FFFFFFF)
        {
          *(v1 + v9[7]) = (v0 - 1);
          sub_22BB36A24();
          return;
        }

        v24 = v5(0);
        sub_22BB314BC(v24);
        if (*(v25 + 84) == v11)
        {
          v26 = v9[8];
        }

        else
        {
          v3(0);
          v27 = v9[9];
        }
      }
    }
  }

  sub_22BB313F4();
  sub_22BB36A24();

  sub_22BB336D0(v19, v20, v21, v22);
}

void sub_22BCFE3CC()
{
  sub_22BDB43E4();
  if (v0 <= 0x3F)
  {
    sub_22BDB4C34();
    if (v1 <= 0x3F)
    {
      _s18TaskDefinitionThinO15TaskContextThinVMa(319);
      if (v2 <= 0x3F)
      {
        sub_22BCFA458(319, &qword_281428870, _s18TaskDefinitionThinO23CandidateEvaluationThinVMa, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          _s18TaskDefinitionThinO28TaskFinalResolutionStateThinOMa(319);
          if (v4 <= 0x3F)
          {
            _s18TaskDefinitionThinO15TaskOutcomeThinVMa(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BCFE4E8()
{
  result = qword_27D8E4E90;
  if (!qword_27D8E4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4E90);
  }

  return result;
}

unint64_t sub_22BCFE53C()
{
  result = qword_27D8E4EC8;
  if (!qword_27D8E4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4EC8);
  }

  return result;
}

unint64_t sub_22BCFE590()
{
  result = qword_27D8E4ED8;
  if (!qword_27D8E4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4ED8);
  }

  return result;
}

unint64_t sub_22BCFE5E4()
{
  result = qword_27D8E4F00;
  if (!qword_27D8E4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4F00);
  }

  return result;
}

unint64_t sub_22BCFE638()
{
  result = qword_27D8E4F08;
  if (!qword_27D8E4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4F08);
  }

  return result;
}

unint64_t sub_22BCFE68C()
{
  result = qword_27D8E4F18;
  if (!qword_27D8E4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4F18);
  }

  return result;
}

unint64_t sub_22BCFE6E0()
{
  result = qword_27D8E4F58;
  if (!qword_27D8E4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4F58);
  }

  return result;
}

unint64_t sub_22BCFE734()
{
  result = qword_27D8E4F60;
  if (!qword_27D8E4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4F60);
  }

  return result;
}

unint64_t sub_22BCFE788()
{
  result = qword_27D8E4F68;
  if (!qword_27D8E4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4F68);
  }

  return result;
}

unint64_t sub_22BCFE7DC()
{
  result = qword_27D8E4F90;
  if (!qword_27D8E4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4F90);
  }

  return result;
}

unint64_t sub_22BCFE830()
{
  result = qword_27D8E4FC8;
  if (!qword_27D8E4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4FC8);
  }

  return result;
}

unint64_t sub_22BCFE884()
{
  result = qword_27D8E4FD0;
  if (!qword_27D8E4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4FD0);
  }

  return result;
}

unint64_t sub_22BCFE8D8()
{
  result = qword_27D8E4FD8;
  if (!qword_27D8E4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4FD8);
  }

  return result;
}

unint64_t sub_22BCFE92C()
{
  result = qword_27D8E5018;
  if (!qword_27D8E5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5018);
  }

  return result;
}

unint64_t sub_22BCFE980()
{
  result = qword_27D8E5068;
  if (!qword_27D8E5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5068);
  }

  return result;
}

unint64_t sub_22BCFE9D4()
{
  result = qword_27D8E5070;
  if (!qword_27D8E5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5070);
  }

  return result;
}

unint64_t sub_22BCFEA28()
{
  result = qword_27D8E5078;
  if (!qword_27D8E5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5078);
  }

  return result;
}

unint64_t sub_22BCFEA7C()
{
  result = qword_27D8E5080;
  if (!qword_27D8E5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5080);
  }

  return result;
}

unint64_t sub_22BCFEAD0()
{
  result = qword_27D8E5090;
  if (!qword_27D8E5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5090);
  }

  return result;
}

unint64_t sub_22BCFEB24()
{
  result = qword_27D8E5098;
  if (!qword_27D8E5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5098);
  }

  return result;
}

unint64_t sub_22BCFEB78()
{
  result = qword_27D8E50E0;
  if (!qword_27D8E50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E50E0);
  }

  return result;
}

uint64_t sub_22BCFEBCC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(&qword_27D8E4EA0, &qword_22BDC7650);
    sub_22BCF8848(a2, _s18TaskDefinitionThinO23CandidateEvaluationThinVMa);
    sub_22BB345A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BCFEC64()
{
  result = qword_27D8E5120;
  if (!qword_27D8E5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5120);
  }

  return result;
}

uint64_t sub_22BCFECB8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return sub_22BB7560C((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFED3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCFEE08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 5);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFEE8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCFF048(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return sub_22BBE7CE0();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_22BBB7244(a1);
}

_BYTE *sub_22BCFF090(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BCFF13C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return sub_22BB7560C((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFF1C0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCFF28C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BB7560C(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return sub_22BB7560C((*a1 | (v4 << 8)) - 7);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_22BB7560C((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BB7560C((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BB7560C(v8);
}

_BYTE *sub_22BCFF310(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BCFF3E0()
{
  result = qword_27D8E5128;
  if (!qword_27D8E5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5128);
  }

  return result;
}

unint64_t sub_22BCFF438()
{
  result = qword_27D8E5130;
  if (!qword_27D8E5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5130);
  }

  return result;
}

unint64_t sub_22BCFF490()
{
  result = qword_27D8E5138;
  if (!qword_27D8E5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5138);
  }

  return result;
}

unint64_t sub_22BCFF4E8()
{
  result = qword_27D8E5140;
  if (!qword_27D8E5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5140);
  }

  return result;
}

unint64_t sub_22BCFF540()
{
  result = qword_27D8E5148;
  if (!qword_27D8E5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5148);
  }

  return result;
}

unint64_t sub_22BCFF598()
{
  result = qword_27D8E5150;
  if (!qword_27D8E5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5150);
  }

  return result;
}

unint64_t sub_22BCFF5F0()
{
  result = qword_27D8E5158;
  if (!qword_27D8E5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5158);
  }

  return result;
}

unint64_t sub_22BCFF648()
{
  result = qword_27D8E5160;
  if (!qword_27D8E5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5160);
  }

  return result;
}

unint64_t sub_22BCFF6A0()
{
  result = qword_27D8E5168;
  if (!qword_27D8E5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5168);
  }

  return result;
}

unint64_t sub_22BCFF6F8()
{
  result = qword_27D8E5170;
  if (!qword_27D8E5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5170);
  }

  return result;
}

unint64_t sub_22BCFF750()
{
  result = qword_27D8E5178;
  if (!qword_27D8E5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5178);
  }

  return result;
}

unint64_t sub_22BCFF7A8()
{
  result = qword_27D8E5180;
  if (!qword_27D8E5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5180);
  }

  return result;
}

unint64_t sub_22BCFF800()
{
  result = qword_27D8E5188;
  if (!qword_27D8E5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5188);
  }

  return result;
}

unint64_t sub_22BCFF858()
{
  result = qword_27D8E5190;
  if (!qword_27D8E5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5190);
  }

  return result;
}

unint64_t sub_22BCFF8B0()
{
  result = qword_27D8E5198;
  if (!qword_27D8E5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5198);
  }

  return result;
}

unint64_t sub_22BCFF908()
{
  result = qword_27D8E51A0;
  if (!qword_27D8E51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51A0);
  }

  return result;
}

unint64_t sub_22BCFF960()
{
  result = qword_27D8E51A8;
  if (!qword_27D8E51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51A8);
  }

  return result;
}

unint64_t sub_22BCFF9B8()
{
  result = qword_27D8E51B0;
  if (!qword_27D8E51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51B0);
  }

  return result;
}

unint64_t sub_22BCFFA10()
{
  result = qword_27D8E51B8;
  if (!qword_27D8E51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51B8);
  }

  return result;
}

unint64_t sub_22BCFFA68()
{
  result = qword_27D8E51C0;
  if (!qword_27D8E51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51C0);
  }

  return result;
}

unint64_t sub_22BCFFAC0()
{
  result = qword_27D8E51C8;
  if (!qword_27D8E51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51C8);
  }

  return result;
}

unint64_t sub_22BCFFB18()
{
  result = qword_27D8E51D0;
  if (!qword_27D8E51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51D0);
  }

  return result;
}

unint64_t sub_22BCFFB70()
{
  result = qword_27D8E51D8;
  if (!qword_27D8E51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51D8);
  }

  return result;
}

unint64_t sub_22BCFFBC8()
{
  result = qword_27D8E51E0;
  if (!qword_27D8E51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51E0);
  }

  return result;
}

unint64_t sub_22BCFFC20()
{
  result = qword_27D8E51E8;
  if (!qword_27D8E51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51E8);
  }

  return result;
}

unint64_t sub_22BCFFC78()
{
  result = qword_27D8E51F0;
  if (!qword_27D8E51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51F0);
  }

  return result;
}

unint64_t sub_22BCFFCD0()
{
  result = qword_27D8E51F8;
  if (!qword_27D8E51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E51F8);
  }

  return result;
}

unint64_t sub_22BCFFD28()
{
  result = qword_27D8E5200;
  if (!qword_27D8E5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5200);
  }

  return result;
}

unint64_t sub_22BCFFD80()
{
  result = qword_27D8E5208;
  if (!qword_27D8E5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5208);
  }

  return result;
}

unint64_t sub_22BCFFDD8()
{
  result = qword_27D8E5210;
  if (!qword_27D8E5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5210);
  }

  return result;
}

unint64_t sub_22BCFFE30()
{
  result = qword_27D8E5218;
  if (!qword_27D8E5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5218);
  }

  return result;
}

unint64_t sub_22BCFFE88()
{
  result = qword_27D8E5220;
  if (!qword_27D8E5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5220);
  }

  return result;
}

unint64_t sub_22BCFFEE0()
{
  result = qword_27D8E5228;
  if (!qword_27D8E5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5228);
  }

  return result;
}

unint64_t sub_22BCFFF38()
{
  result = qword_27D8E5230;
  if (!qword_27D8E5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5230);
  }

  return result;
}

unint64_t sub_22BCFFF90()
{
  result = qword_27D8E5238;
  if (!qword_27D8E5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5238);
  }

  return result;
}

unint64_t sub_22BCFFFE8()
{
  result = qword_27D8E5240;
  if (!qword_27D8E5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5240);
  }

  return result;
}

unint64_t sub_22BD00040()
{
  result = qword_27D8E5248;
  if (!qword_27D8E5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5248);
  }

  return result;
}

unint64_t sub_22BD00098()
{
  result = qword_27D8E5250;
  if (!qword_27D8E5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5250);
  }

  return result;
}

unint64_t sub_22BD000F0()
{
  result = qword_27D8E5258;
  if (!qword_27D8E5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5258);
  }

  return result;
}

unint64_t sub_22BD00148()
{
  result = qword_27D8E5260;
  if (!qword_27D8E5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5260);
  }

  return result;
}

unint64_t sub_22BD001A0()
{
  result = qword_27D8E5268;
  if (!qword_27D8E5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5268);
  }

  return result;
}

unint64_t sub_22BD001F8()
{
  result = qword_27D8E5270;
  if (!qword_27D8E5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5270);
  }

  return result;
}

unint64_t sub_22BD00250()
{
  result = qword_27D8E5278;
  if (!qword_27D8E5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5278);
  }

  return result;
}

unint64_t sub_22BD002A8()
{
  result = qword_27D8E5280;
  if (!qword_27D8E5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5280);
  }

  return result;
}

unint64_t sub_22BD00300()
{
  result = qword_27D8E5288;
  if (!qword_27D8E5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5288);
  }

  return result;
}

unint64_t sub_22BD00358()
{
  result = qword_27D8E5290;
  if (!qword_27D8E5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5290);
  }

  return result;
}

unint64_t sub_22BD003B0()
{
  result = qword_27D8E5298;
  if (!qword_27D8E5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5298);
  }

  return result;
}

unint64_t sub_22BD00408()
{
  result = qword_27D8E52A0;
  if (!qword_27D8E52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E52A0);
  }

  return result;
}

unint64_t sub_22BD00460()
{
  result = qword_27D8E52A8;
  if (!qword_27D8E52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E52A8);
  }

  return result;
}

unint64_t sub_22BD004B8()
{
  result = qword_27D8E52B0;
  if (!qword_27D8E52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E52B0);
  }

  return result;
}

unint64_t sub_22BD00510()
{
  result = qword_27D8E52B8;
  if (!qword_27D8E52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E52B8);
  }

  return result;
}

unint64_t sub_22BD00568()
{
  result = qword_27D8E52C0;
  if (!qword_27D8E52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E52C0);
  }

  return result;
}

unint64_t sub_22BD005C0()
{
  result = qword_27D8E52C8;
  if (!qword_27D8E52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E52C8);
  }

  return result;
}

unint64_t sub_22BD00618()
{
  result = qword_27D8E52D0;
  if (!qword_27D8E52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E52D0);
  }

  return result;
}

uint64_t sub_22BD0071C()
{

  return sub_22BDBB8A4();
}

uint64_t sub_22BD00758()
{

  return sub_22BDBB8A4();
}

uint64_t sub_22BD008E0()
{

  return sub_22BCF8AE4(v0, type metadata accessor for FeedbackLearning.TaskStatus);
}

uint64_t sub_22BD00938(uint64_t a1)
{
  v4 = *(v1 - 168);

  return sub_22BB336D0(v4, 1, 1, a1);
}

uint64_t sub_22BD0097C()
{

  return sub_22BB3AA28(v0 + v2, 4, v1);
}

uint64_t sub_22BD00998()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 176);

  return sub_22BDBB5D4();
}

uint64_t sub_22BD009CC()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 152);

  return sub_22BDBB584();
}

uint64_t sub_22BD00A00()
{
  v2 = *(v0 + 8);
  result = *(v1 - 144);
  v4 = *(v1 - 136);
  return result;
}

uint64_t sub_22BD00A3C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BD00A5C()
{
  v2 = *(*(v1 - 104) + 32);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

uint64_t sub_22BD00AB0()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 88);

  return sub_22BDBB614();
}

uint64_t sub_22BD00ADC()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 152);
  v4 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BD00B14()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);

  return sub_22BDBB5D4();
}

uint64_t sub_22BD00B30()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t sub_22BD00B3C(unsigned int a1)
{
  if (a1 >= 2)
  {
    return a1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BD00B9C()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);

  return sub_22BDBB5D4();
}

uint64_t sub_22BD00BC4()
{
  *(v4 - 256) = v0;
  *(v4 - 248) = v2;
  v6 = *(v4 - 112);
  *(v4 - 240) = v1;
  *(v4 - 96) = v3;

  return sub_22BDBB5E4();
}

uint64_t sub_22BD00BEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v6 = *(a4 + a2);

  return sub_22BCFD8E0(a2 + 1, a1, v4, a4, a2, a3);
}

uint64_t sub_22BD00C14()
{
  *(v4 - 168) = v0;
  *(v4 - 160) = v3;
  *(v4 - 176) = v1;
  v6 = *(v4 - 96);
  *(v4 - 88) = v2;

  return sub_22BDBB5E4();
}

uint64_t sub_22BD00D58()
{
  v3 = *(v1 - 160);

  return sub_22BCF8A34(v0, v3);
}

uint64_t sub_22BD00D74()
{

  return sub_22BDBB814();
}

void sub_22BD00DC4()
{
  v2 = *(v1 - 120);
  v3 = *(v1 - 112);
  *(v1 - 216) = v0;
}

uint64_t sub_22BD00E04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 4)
  {
    return v2 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BD00EF0(uint64_t a1)
{
  v5 = *(a1 + 48);
  *v2 = v1;
  v6 = *(v3 - 96);

  return sub_22BDBB564();
}

uint64_t sub_22BD00F10()
{
  v2 = *(v0 - 112);

  return sub_22BDBB3A4();
}

uint64_t sub_22BD00F30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v6 = *(a4 + a2);

  return sub_22BCFD8E0(a2 + 1, a1, v4, a4, a2, a3);
}

uint64_t sub_22BD00F50()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BD00F70()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BD00F90()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);

  return sub_22BDBB5D4();
}

uint64_t sub_22BD00FB0(uint64_t a1)
{

  return sub_22BB336D0(v1, v2, 1, a1);
}

uint64_t sub_22BD00FD0()
{

  return sub_22BDBB334();
}

uint64_t sub_22BD00FF0()
{
  v2 = *(v0 - 232);

  return sub_22BDBB554();
}

uint64_t sub_22BD01048()
{
  v3 = *(v1 - 96);

  return sub_22BCF8A8C(v3, v0);
}

uint64_t sub_22BD01060@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s23StatementFailureOutcomeVMa(0);
  v5 = sub_22BB2F0C8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = _s23StatementSuccessOutcomeVMa(0);
  v12 = sub_22BB2F0C8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v17 = v16 - v15;
  v18 = _s23StatementCreatedOutcomeVMa(0);
  v19 = sub_22BB2F0C8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = sub_22BB52E94();
  v23 = _s20TaskStatementOutcomeOMa(v22);
  v24 = sub_22BB2F330(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v29 = v28 - v27;
  sub_22BB372D8();
  sub_22BD05500(v2, v29);
  sub_22BB32E04();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BD05488(v29, v17);
      sub_22BB31170();
      sub_22BD05500(v17, a1);
      sub_22BB35B78();
      v32 = v17;
    }

    else
    {
      sub_22BD05488(v29, v10);
      sub_22BB31170();
      sub_22BD05500(v10, a1);
      sub_22BB30860();
      v32 = v10;
    }

    return sub_22BD05430(v32, v31);
  }

  else
  {
    sub_22BB377F8();
    v33 = sub_22BB3FBBC();
    sub_22BD05488(v33, v34);
    sub_22BB30D74();
    v35 = sub_22BB30428();
    return sub_22BD05488(v35, v36);
  }
}

uint64_t sub_22BD01234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22BD0C8D0();
  v6 = *(a4 + 16);
  if (v6)
  {
    v23 = a1;
    v24 = MEMORY[0x277D84F90];
    sub_22BD284B8(0, v6, 0);
    v7 = (a4 + 56);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(v7 - 16);
      v11 = *(v7 - 24);

      v12 = sub_22BD01234(v11, v10, v9, v8);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22BD284B8((v19 > 1), v20 + 1, 1);
      }

      *(v24 + 16) = v20 + 1;
      v21 = v24 + 32 * v20;
      *(v21 + 32) = v12;
      *(v21 + 40) = v14;
      *(v21 + 48) = v16;
      *(v21 + 56) = v18;
      v7 += 4;
      --v6;
    }

    while (v6);
    return v23;
  }

  return a1;
}

void sub_22BD01384()
{
  sub_22BB30F94();
  v47 = v2;
  v48 = v3;
  v4 = sub_22BDB43E4();
  v5 = sub_22BB30444(v4);
  v45 = v6;
  v46 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB36858();
  v9 = sub_22BDB4C34();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v15 = sub_22BB52E94();
  v16 = _s28StatementResolutionReferenceOMa(v15);
  v17 = sub_22BB2F330(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  v26 = sub_22BBE6DE0(&qword_27D8E52F0, &qword_22BDC8A20);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v45 - v31;
  v33 = *(v30 + 56);
  sub_22BD05500(v47, &v45 - v31);
  sub_22BD05500(v48, &v32[v33]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB31170();
    v34 = sub_22BB313A8();
    sub_22BD05500(v34, v35);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v45;
      v36 = v46;
      (*(v45 + 32))(v0, &v32[v33], v46);
      sub_22BB362AC();
      sub_22BDB43B4();
      v38 = *(v37 + 8);
      v39 = sub_22BB3AC54();
      v38(v39);
      (v38)(v22, v36);
LABEL_9:
      sub_22BD05430(v32, _s28StatementResolutionReferenceOMa);
      goto LABEL_10;
    }

    v42 = sub_22BB3B088();
    v43(v42);
  }

  else
  {
    sub_22BB31170();
    v40 = sub_22BB8AB74();
    sub_22BD05500(v40, v41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v12 + 32))(v1, &v32[v33], v9);
      sub_22BB89D18();
      sub_22BDB4C04();
      v44 = *(v12 + 8);
      v44(v1, v9);
      v44(v25, v9);
      goto LABEL_9;
    }

    (*(v12 + 8))(v25, v9);
  }

  sub_22BB58728(v32, &qword_27D8E52F0, &qword_22BDC8A20);
LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BD016C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65)
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

uint64_t sub_22BD01790(char a1)
{
  if (a1)
  {
    return 0x76456E6F69746361;
  }

  else
  {
    return 0x65756C6176;
  }
}

void sub_22BD017D0()
{
  sub_22BB31014();
  sub_22BBBE73C();
  v2 = sub_22BBE6DE0(&qword_27D8E5418, &qword_22BDC8EE8);
  v52 = sub_22BB30444(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB340F4(v6, v45);
  v7 = sub_22BDB43E4();
  v8 = sub_22BB30444(v7);
  v50 = v9;
  v51 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v48 = v12;
  v13 = sub_22BBE6DE0(&qword_27D8E5420, &qword_22BDC8EF0);
  sub_22BB30444(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB391AC();
  v17 = sub_22BDB4C34();
  v18 = sub_22BB30444(v17);
  v46 = v19;
  v47 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v22 = sub_22BB3ABC8();
  v23 = _s28StatementResolutionReferenceOMa(v22);
  v24 = sub_22BB2F330(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v29 = v28 - v27;
  v30 = sub_22BBE6DE0(&qword_27D8E5428, &qword_22BDC8EF8);
  sub_22BB30444(v30);
  v32 = *(v31 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v33);
  sub_22BB32750();
  v34 = *(v0 + 24);
  v35 = *(v0 + 32);
  v36 = sub_22BB53C48();
  sub_22BB699E4(v36, v37);
  sub_22BD0BB60();
  sub_22BBBDEA4();
  sub_22BDBB8A4();
  sub_22BB31170();
  sub_22BD05500(v53, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v50 + 32))(v48, v29, v51);
    sub_22BB75960();
    sub_22BD0D000();
    sub_22BB32800();
    sub_22BDBB5F4();
    sub_22BB8D244();
    sub_22BD0B918(v38);
    sub_22BB3849C();
    sub_22BDBB664();
    sub_22BB38B78();
    v39(v49, v52);
    (*(v50 + 8))(v48, v51);
  }

  else
  {
    (*(v46 + 32))(v1, v29, v47);
    sub_22BD0D054();
    sub_22BB32800();
    sub_22BDBB5F4();
    sub_22BB586A8();
    sub_22BD0B918(v40);
    sub_22BDBB664();
    v41 = sub_22BB692D0();
    v42(v41);
    (*(v46 + 8))(v1, v47);
  }

  v43 = sub_22BB3AB0C();
  v44(v43, v30);
  sub_22BB376A8();
}

void sub_22BD01C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  v94 = v10;
  v13 = v12;
  v87 = v14;
  v93 = sub_22BBE6DE0(&qword_27D8E53E8, &qword_22BDC8EC8);
  sub_22BB30444(v93);
  v90 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB30BA8();
  sub_22BB8AD78(v19);
  v20 = sub_22BBE6DE0(&qword_27D8E53F0, &qword_22BDC8ED0);
  v21 = sub_22BB30444(v20);
  v88 = v22;
  v89 = v21;
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB37048(v26, v83);
  v27 = sub_22BBE6DE0(&qword_27D8E53F8, &unk_22BDC8ED8);
  v28 = sub_22BB30444(v27);
  v91 = v29;
  v92 = v28;
  v31 = *(v30 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  v33 = sub_22BB391AC();
  v34 = _s28StatementResolutionReferenceOMa(v33);
  v35 = sub_22BB2F330(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v38);
  sub_22BB3B5E8();
  MEMORY[0x28223BE20](v39);
  v41 = &v83 - v40;
  v42 = v13[4];
  sub_22BB699E4(v13, v13[3]);
  sub_22BD0BB60();
  sub_22BB75564();
  v43 = v94;
  sub_22BDBB894();
  if (!v43)
  {
    v84 = v11;
    v44 = v92;
    v45 = v93;
    v85 = v41;
    v86 = v34;
    v94 = v13;
    v46 = sub_22BDBB5E4();
    sub_22BD006D0(v46, 0);
    sub_22BB8B6D8();
    if (v47)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v50 == v51)
    {
      __break(1u);
      return;
    }

    v52 = sub_22BB3A47C(v48, v49);
    sub_22BD006A8(v52);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    if (v54 != v56 >> 1)
    {
LABEL_9:
      v60 = v86;
      v61 = sub_22BDBB3A4();
      sub_22BB31A08();
      v63 = v62;
      v64 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
      *v63 = v60;
      sub_22BDBB564();
      sub_22BB36D74();
      v65 = *MEMORY[0x277D84160];
      sub_22BB30474(v61);
      (*(v66 + 104))(v63);
      swift_willThrow();
      swift_unknownObjectRelease();
      v67 = sub_22BB397A4();
      v68(v67, v44);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BD0D000();
        sub_22BB2F230();
        v57 = v13;
        sub_22BDBB554();
        v58 = v85;
        if (!v57)
        {
          sub_22BDB43E4();
          sub_22BB8D244();
          sub_22BD0B918(v59);
          sub_22BBB79C8();
          sub_22BDBB5D4();
          swift_unknownObjectRelease();
          v75 = sub_22BB34F2C();
          v76(v75, v45);
          v77 = sub_22BB38B68();
          v78(v77);
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_22BD05488(v44, v58);
          sub_22BD05488(v58, v87);
          v69 = v94;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BD0D054();
        sub_22BB2F230();
        v70 = v13;
        sub_22BDBB554();
        v58 = v85;
        if (!v70)
        {
          sub_22BDB4C34();
          sub_22BB586A8();
          sub_22BD0B918(v73);
          v44 = v84;
          v74 = v89;
          sub_22BDBB5D4();
          swift_unknownObjectRelease();
          v79 = sub_22BB34F2C();
          v80(v79, v74);
          v81 = sub_22BB3A988();
          v82(v81);
          goto LABEL_16;
        }
      }

      v71 = sub_22BB3A988();
      v72(v71);
      swift_unknownObjectRelease();
    }

    v13 = v94;
  }

  v69 = v13;
LABEL_12:
  sub_22BB32FA4(v69);
  sub_22BB376A8();
}

uint64_t sub_22BD021DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BD02278(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E5478, &qword_22BDC8F18);
  sub_22BB30444(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB32750();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = sub_22BB313A8();
  sub_22BB699E4(v10, v11);
  sub_22BD0D0FC();
  sub_22BBBDEA4();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  _s28StatementResolutionReferenceOMa(0);
  sub_22BB32C84();
  sub_22BD0B918(v12);
  sub_22BDBB664();
  v13 = *(v4 + 8);
  v14 = sub_22BB52D78();
  return v15(v14);
}

void sub_22BD023B4()
{
  sub_22BB31014();
  v3 = v2;
  v27 = v4;
  v5 = _s28StatementResolutionReferenceOMa(0);
  v6 = sub_22BB2F330(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v9 = sub_22BBE6DE0(&qword_27D8E5468, &qword_22BDC8F10);
  sub_22BB30444(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BB3848C();
  v14 = _s23StatementCreatedOutcomeVMa(v13);
  v15 = sub_22BB2F0C8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB36FD8();
  v18 = v3[3];
  v19 = v3[4];
  v20 = sub_22BB500C0();
  sub_22BB699E4(v20, v21);
  sub_22BD0D0FC();
  sub_22BDBB894();
  if (!v0)
  {
    sub_22BB32C84();
    sub_22BD0B918(v22);
    sub_22BDBB5D4();
    v23 = sub_22BB977C4();
    v24(v23, v9);
    sub_22BB30D74();
    v25 = sub_22BB97B0C();
    sub_22BD05488(v25, v26);
    sub_22BB377F8();
    sub_22BD05488(v1, v27);
  }

  sub_22BB32FA4(v3);
  sub_22BB376A8();
}

uint64_t sub_22BD0259C(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E5450, &qword_22BDC8F08);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB354DC();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = sub_22BB313A8();
  sub_22BB699E4(v11, v12);
  sub_22BD0D0A8();
  sub_22BB75564();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  sub_22BD11144();
  sub_22BB32C84();
  sub_22BD0B918(v13);
  sub_22BB36BDC();
  sub_22BBC7880();
  sub_22BB71FE8();
  sub_22BDBB664();
  if (!v1)
  {
    v14 = *(_s23StatementSuccessOutcomeVMa(0) + 20);
    sub_22BB393D0();
    sub_22BDB4E24();
    sub_22BB37A18();
    sub_22BD0B918(v15);
    sub_22BBC7880();
    sub_22BB71FE8();
    sub_22BDBB664();
  }

  v16 = *(v5 + 8);
  v17 = sub_22BB30428();
  return v18(v17);
}

void sub_22BD0272C()
{
  sub_22BB31014();
  sub_22BBBE360(v2);
  v32 = sub_22BDB4E24();
  v3 = sub_22BB30444(v32);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v6 = sub_22BB52E94();
  v33 = _s28StatementResolutionReferenceOMa(v6);
  v7 = sub_22BB2F330(v33);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v34 = sub_22BBE6DE0(&qword_27D8E5430, &qword_22BDC8F00);
  sub_22BB30444(v34);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BB3848C();
  v14 = _s23StatementSuccessOutcomeVMa(v13);
  v15 = sub_22BB2F330(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB36FD8();
  v18 = v1[3];
  v19 = v1[4];
  v20 = sub_22BB52D78();
  sub_22BB699E4(v20, v21);
  sub_22BD0D0A8();
  sub_22BB97D28();
  if (v0)
  {
    sub_22BB32FA4(v1);
  }

  else
  {
    sub_22BBC05A0();
    sub_22BB32C84();
    sub_22BD0B918(v22);
    sub_22BB3A878();
    sub_22BB30D74();
    v23 = sub_22BB52D78();
    sub_22BD05488(v23, v24);
    sub_22BB393D0();
    sub_22BB37A18();
    sub_22BD0B918(v25);
    sub_22BB3CDD4();
    v26 = sub_22BD11080();
    v27(v26);
    v28 = sub_22BD10F20();
    v29(v28);
    sub_22BD05500(v18, v31);
    sub_22BB32FA4(v30);
    sub_22BD05430(v18, _s23StatementSuccessOutcomeVMa);
  }

  sub_22BB376A8();
}

uint64_t sub_22BD029C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_22BB35F54();
  sub_22BD01384();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 20);

  return a4(v5 + v8, v4 + v8);
}

uint64_t sub_22BD02A50(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E5498, &qword_22BDC8F28);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB354DC();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = sub_22BB313A8();
  sub_22BB699E4(v11, v12);
  sub_22BD0D150();
  sub_22BB75564();
  sub_22BC8DAAC();
  sub_22BDBB8A4();
  sub_22BD11144();
  sub_22BB32C84();
  sub_22BD0B918(v13);
  sub_22BB36BDC();
  sub_22BBC7880();
  sub_22BB71FE8();
  sub_22BDBB664();
  if (!v1)
  {
    v14 = *(_s23StatementFailureOutcomeVMa(0) + 20);
    sub_22BB393D0();
    sub_22BDB4CE4();
    sub_22BD10EFC();
    sub_22BD0B918(v15);
    sub_22BBC7880();
    sub_22BB71FE8();
    sub_22BDBB664();
  }

  v16 = *(v5 + 8);
  v17 = sub_22BB30428();
  return v18(v17);
}

void sub_22BD02BE0()
{
  sub_22BB31014();
  sub_22BBBE360(v2);
  v32 = sub_22BDB4CE4();
  v3 = sub_22BB30444(v32);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v6 = sub_22BB52E94();
  v33 = _s28StatementResolutionReferenceOMa(v6);
  v7 = sub_22BB2F330(v33);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v34 = sub_22BBE6DE0(&qword_27D8E5480, &qword_22BDC8F20);
  sub_22BB30444(v34);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BB3848C();
  v14 = _s23StatementFailureOutcomeVMa(v13);
  v15 = sub_22BB2F330(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB36FD8();
  v18 = v1[3];
  v19 = v1[4];
  v20 = sub_22BB52D78();
  sub_22BB699E4(v20, v21);
  sub_22BD0D150();
  sub_22BB97D28();
  if (v0)
  {
    sub_22BB32FA4(v1);
  }

  else
  {
    sub_22BBC05A0();
    sub_22BB32C84();
    sub_22BD0B918(v22);
    sub_22BB3A878();
    sub_22BB30D74();
    v23 = sub_22BB52D78();
    sub_22BD05488(v23, v24);
    sub_22BB393D0();
    sub_22BD10EFC();
    sub_22BD0B918(v25);
    sub_22BB3CDD4();
    v26 = sub_22BD11080();
    v27(v26);
    v28 = sub_22BD10F20();
    v29(v28);
    sub_22BD05500(v18, v31);
    sub_22BB32FA4(v30);
    sub_22BD05430(v18, _s23StatementFailureOutcomeVMa);
  }

  sub_22BB376A8();
}

void sub_22BD02E7C()
{
  sub_22BB30F94();
  v53 = v5;
  v7 = v6;
  v51 = _s23StatementFailureOutcomeVMa(0);
  v8 = sub_22BB2F330(v51);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v52 = v11;
  v12 = sub_22BB2F120();
  v50 = _s23StatementSuccessOutcomeVMa(v12);
  v13 = sub_22BB2F330(v50);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  sub_22BB36858();
  v16 = _s23StatementCreatedOutcomeVMa(0);
  v17 = sub_22BB2F0C8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  sub_22BB36FD8();
  v20 = _s20TaskStatementOutcomeOMa(0);
  v21 = sub_22BB2F330(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v24);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v25);
  v27 = &v50 - v26;
  v28 = sub_22BBE6DE0(&qword_27D8E52F8, &qword_22BDC8A28);
  sub_22BB2F0C8(v28);
  v30 = *(v29 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB395E0();
  v33 = *(v32 + 56);
  sub_22BD05500(v7, v0);
  sub_22BD05500(v53, v0 + v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BB372D8();
      v35 = sub_22BB3B528();
      sub_22BD05500(v35, v36);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BB36E1C();
        sub_22BD05488(v0 + v33, v1);
        sub_22BB362AC();
        sub_22BD01384();
        if (v37)
        {
          v38 = *(v50 + 20);
          sub_22BDB4E14();
        }

        sub_22BB35B78();
        sub_22BD05430(v1, v39);
        sub_22BB35B78();
        v41 = v3;
LABEL_18:
        sub_22BD05430(v41, v40);
        sub_22BB3A6E4();
        sub_22BD05430(v0, v49);
        goto LABEL_19;
      }

      sub_22BB35B78();
      v43 = v3;
    }

    else
    {
      sub_22BB372D8();
      sub_22BD05500(v0, v2);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BB69AF0();
        v44 = v52;
        sub_22BD05488(v0 + v33, v52);
        sub_22BD01384();
        if (v45)
        {
          v46 = *(v51 + 20);
          sub_22BDB4CB4();
        }

        sub_22BB30860();
        sub_22BD05430(v44, v47);
        sub_22BB30860();
        v41 = v2;
        goto LABEL_18;
      }

      sub_22BB30860();
      v43 = v2;
    }
  }

  else
  {
    sub_22BB372D8();
    sub_22BD05500(v0, v27);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BB377F8();
      sub_22BD05488(v0 + v33, v4);
      sub_22BB97B0C();
      sub_22BD01384();
      sub_22BD05430(v4, _s23StatementCreatedOutcomeVMa);
      sub_22BD05430(v27, _s23StatementCreatedOutcomeVMa);
      sub_22BB3A6E4();
      sub_22BD05430(v0, v48);
      goto LABEL_19;
    }

    sub_22BB38E30();
    v43 = v27;
  }

  sub_22BD05430(v43, v42);
  sub_22BB58728(v0, &qword_27D8E52F8, &qword_22BDC8A28);
LABEL_19:
  sub_22BB314EC();
}

void sub_22BD0324C()
{
  sub_22BB31014();
  sub_22BBBE73C();
  v3 = sub_22BBE6DE0(&qword_27D8E54E8, &qword_22BDC8F50);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB37048(v7, v64);
  v69 = _s23StatementFailureOutcomeVMa(0);
  v8 = sub_22BB2F330(v69);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  sub_22BD10F3C(v11);
  v12 = sub_22BBE6DE0(&qword_27D8E54F0, &qword_22BDC8F58);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB30BA8();
  v16 = sub_22BB2F120();
  v67 = _s23StatementSuccessOutcomeVMa(v16);
  v17 = sub_22BB2F330(v67);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  sub_22BD10FE4(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E54F8, &qword_22BDC8F60);
  sub_22BB30444(v21);
  v66 = v22;
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BB391AC();
  v65 = _s23StatementCreatedOutcomeVMa(v26);
  v27 = sub_22BB2F330(v65);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  v30 = sub_22BB3ABC8();
  v31 = _s20TaskStatementOutcomeOMa(v30);
  v32 = sub_22BB2F330(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  v37 = v36 - v35;
  v73 = sub_22BBE6DE0(&qword_27D8E5500, &qword_22BDC8F68);
  sub_22BB30444(v73);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  sub_22BB32750();
  v43 = v0[4];
  sub_22BB699E4(v0, v0[3]);
  sub_22BD0D1A4();
  sub_22BBBDEA4();
  sub_22BDBB8A4();
  sub_22BB372D8();
  sub_22BD05500(v72, v37);
  sub_22BB500C0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = (v39 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v46 = v68;
      sub_22BD05488(v37, v68);
      sub_22BB393D0();
      sub_22BD0D24C();
      sub_22BB354EC();
      sub_22BDBB5F4();
      sub_22BB3813C();
      sub_22BD0B918(v47);
      sub_22BB3849C();
      sub_22BBBD288();
      v48 = sub_22BB3CAF4();
      v49(v48);
      v50 = _s23StatementSuccessOutcomeVMa;
    }

    else
    {
      v46 = v70;
      sub_22BD05488(v37, v70);
      sub_22BB3CF44();
      sub_22BD0D1F8();
      sub_22BB354EC();
      sub_22BDBB5F4();
      sub_22BB31D40();
      sub_22BD0B918(v58);
      sub_22BB3849C();
      sub_22BBBE6D0();
      sub_22BB38B78();
      v59(v71, v2);
      v50 = _s23StatementFailureOutcomeVMa;
    }

    sub_22BD05430(v46, v50);
    v60 = *v45;
    v61 = sub_22BB3FBBC();
    v63(v61, v62);
  }

  else
  {
    v51 = sub_22BB3B528();
    sub_22BD05488(v51, v52);
    sub_22BD0D2A0();
    sub_22BB32800();
    sub_22BDBB5F4();
    sub_22BB33DB8();
    sub_22BD0B918(v53);
    sub_22BD10F48();
    v54 = *(v66 + 8);
    v55 = sub_22BB97B0C();
    v56(v55);
    sub_22BB38E30();
    sub_22BD05430(v2, v57);
    (*v45)(v1, v73);
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BD03768()
{
  sub_22BB31014();
  v98 = v1;
  v4 = v3;
  v93 = v5;
  v96 = sub_22BBE6DE0(&qword_27D8E54A8, &qword_22BDC8F30);
  sub_22BB30444(v96);
  v92 = v6;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30BA8();
  sub_22BD10F3C(v10);
  v11 = sub_22BBE6DE0(&qword_27D8E54B0, &qword_22BDC8F38);
  v12 = sub_22BB30444(v11);
  v90 = v13;
  v91 = v12;
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB37048(v17, v86[0]);
  v18 = sub_22BBE6DE0(&qword_27D8E54B8, &qword_22BDC8F40);
  v19 = sub_22BB30444(v18);
  v88 = v20;
  v89 = v19;
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB340F4(v24, v86[0]);
  v25 = sub_22BBE6DE0(&qword_27D8E54C0, &qword_22BDC8F48);
  v26 = sub_22BB30444(v25);
  v94 = v27;
  v95 = v26;
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB395E0();
  v31 = _s20TaskStatementOutcomeOMa(0);
  v32 = sub_22BB2F330(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v35);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v36);
  sub_22BD110C4();
  MEMORY[0x28223BE20](v37);
  v39 = v86 - v38;
  v41 = v4[3];
  v40 = v4[4];
  v97 = v4;
  v42 = sub_22BB8AB74();
  sub_22BB699E4(v42, v43);
  sub_22BD0D1A4();
  sub_22BD11038();
  if (v1)
  {
    goto LABEL_11;
  }

  v44 = sub_22BB759E0();
  sub_22BD006D0(v44, 0);
  if (v46 == v45 >> 1)
  {
    goto LABEL_10;
  }

  sub_22BB2F4F4();
  if (v49 == v50)
  {
    __break(1u);
    return;
  }

  v51 = sub_22BB974E4(v47, v48);
  sub_22BD006A8(v51);
  sub_22BBBFF50();
  if (v40)
  {
LABEL_10:
    v55 = sub_22BDBB3A4();
    sub_22BB31A08();
    v56 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    sub_22BD11124(v56);
    sub_22BB36D74();
    v57 = *MEMORY[0x277D84160];
    sub_22BB30474(v55);
    v59 = *(v58 + 104);
    v60 = sub_22BB527FC();
    v61(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = sub_22BB720A0();
    v63(v62, v2);
LABEL_11:
    v64 = v97;
    goto LABEL_12;
  }

  if (v0)
  {
    if (v0 == 1)
    {
      sub_22BB393D0();
      sub_22BD0D24C();
      sub_22BB2F230();
      sub_22BDBB554();
      v52 = v87;
      if (!v39)
      {
        _s23StatementSuccessOutcomeVMa(0);
        sub_22BB3813C();
        sub_22BD0B918(v53);
        v54 = v86[2];
        sub_22BD10F14();
        sub_22BDBB5D4();
        sub_22BBCC128();
        swift_unknownObjectRelease();
        v70 = sub_22BB3B0D0();
        v71(v70);
        v72 = sub_22BB54280();
        v73(v72);
        sub_22BB3857C();
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v80 = v54;
        v79 = v97;
        goto LABEL_21;
      }
    }

    else
    {
      sub_22BB3CF44();
      sub_22BD0D1F8();
      sub_22BB2F230();
      sub_22BDBB554();
      v52 = v87;
      if (!v39)
      {
        _s23StatementFailureOutcomeVMa(0);
        sub_22BB31D40();
        sub_22BD0B918(v69);
        v54 = v86[4];
        sub_22BBB79C8();
        sub_22BDBB5D4();
        sub_22BBCC128();
        swift_unknownObjectRelease();
        v81 = sub_22BB36A5C();
        v82(v81);
        v83 = sub_22BB38B68();
        v84(v83);
        sub_22BB3857C();
        goto LABEL_20;
      }
    }
  }

  else
  {
    sub_22BD0D2A0();
    sub_22BB2F230();
    sub_22BDBB554();
    if (!v39)
    {
      _s23StatementCreatedOutcomeVMa(0);
      sub_22BB33DB8();
      sub_22BD0B918(v67);
      sub_22BB70BD8();
      v68 = v94;
      sub_22BBCC128();
      swift_unknownObjectRelease();
      v74 = sub_22BB3FCD8();
      v75(v74);
      v76 = *(v68 + 8);
      v77 = sub_22BB32E04();
      v78(v77);
      swift_storeEnumTagMultiPayload();
      v79 = v97;
      v52 = v87;
      v80 = v40;
LABEL_21:
      v85 = v93;
      sub_22BD05488(v80, v52);
      sub_22BD05488(v52, v85);
      sub_22BB32FA4(v79);
      goto LABEL_13;
    }
  }

  v65 = sub_22BB54280();
  v66(v65);
  swift_unknownObjectRelease();
  v64 = v97;
LABEL_12:
  sub_22BB32FA4(v64);
LABEL_13:
  sub_22BB376A8();
}

void sub_22BD03E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = _s24StatementExecutionResultOMa(0);
  v29 = sub_22BB2F0C8(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  v34 = v33 - v32;
  v35 = _s19EvaluatorVoteSourceOMa(0);
  v36 = sub_22BB2F330(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v39);
  v41 = &a9 - v40;
  v42 = sub_22BBE6DE0(&qword_27D8E4E68, &qword_22BDC7260);
  sub_22BB2F0C8(v42);
  v44 = *(v43 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v45);
  sub_22BB395E0();
  v47 = *(v46 + 56);
  sub_22BD05500(v27, v20);
  sub_22BD05500(v25, v20 + v47);
  sub_22BB500C0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB692E0();
    sub_22BD05500(v20, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v48 = *v21 == *(v20 + v47);
LABEL_8:
      sub_22BB3ADB4();
      sub_22BD05430(v20, v50);
      goto LABEL_9;
    }
  }

  else
  {
    sub_22BB692E0();
    sub_22BD05500(v20, v41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22BB362E8();
      sub_22BD05488(v20 + v47, v34);
      sub_22BD04890();
      sub_22BD05430(v34, _s24StatementExecutionResultOMa);
      sub_22BD05430(v41, _s24StatementExecutionResultOMa);
      goto LABEL_8;
    }

    sub_22BB32398();
    sub_22BD05430(v41, v49);
  }

  sub_22BB58728(v20, &qword_27D8E4E68, &qword_22BDC7260);
LABEL_9:
  sub_22BB314EC();
}

void sub_22BD04070()
{
  sub_22BB31014();
  v45 = v0;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E5548, &qword_22BDC8F88);
  sub_22BB30444(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  sub_22BD10F3C(v9);
  v10 = sub_22BBE6DE0(&qword_27D8E5550, &qword_22BDC8F90);
  sub_22BB30444(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB340F4(v14, v43);
  v44 = _s24StatementExecutionResultOMa(0);
  v15 = sub_22BB2F330(v44);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = sub_22BB3848C();
  v19 = _s19EvaluatorVoteSourceOMa(v18);
  v20 = sub_22BB2F330(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BB36858();
  v23 = sub_22BBE6DE0(&qword_27D8E5558, &qword_22BDC8F98);
  sub_22BB30444(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  sub_22BB52928();
  v29 = *(v4 + 24);
  v30 = *(v4 + 32);
  v31 = sub_22BB393C4();
  sub_22BB699E4(v31, v32);
  sub_22BD0D2F4();
  sub_22BB75690();
  sub_22BB692E0();
  sub_22BD05500(v45, v1);
  sub_22BB37074();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v1;
    sub_22BB75960();
    sub_22BD0D348();
    sub_22BB31D34();
    sub_22BDBB5F4();
    sub_22BD0D444();
    sub_22BD1105C();
    v34 = sub_22BB397A4();
    v35(v34, v1);
  }

  else
  {
    sub_22BD05488(v1, v2);
    sub_22BD0D3F0();
    sub_22BB31D34();
    sub_22BDBB5F4();
    sub_22BB3E4E0();
    sub_22BD0B918(v36);
    sub_22BD10F74();
    v37 = sub_22BB3AB0C();
    v38(v37, v1);
    sub_22BB32398();
    sub_22BD05430(v2, v39);
  }

  v40 = *(v25 + 8);
  v41 = sub_22BB89D18();
  v42(v41);
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BD043A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  v13 = v12;
  v71 = v14;
  v72 = sub_22BBE6DE0(&qword_27D8E5508, &qword_22BDC8F70);
  sub_22BB30444(v72);
  v73 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB30BA8();
  sub_22BB8AD78(v19);
  v20 = sub_22BBE6DE0(&qword_27D8E5510, &qword_22BDC8F78);
  sub_22BB30444(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB37048(v24, v68);
  v25 = sub_22BBE6DE0(&qword_27D8E5518, &qword_22BDC8F80);
  sub_22BB30444(v25);
  v74 = v26;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BB391AC();
  v31 = _s19EvaluatorVoteSourceOMa(v30);
  v32 = sub_22BB2F330(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30C74();
  sub_22BB3B5E8();
  MEMORY[0x28223BE20](v35);
  sub_22BB89894();
  MEMORY[0x28223BE20](v36);
  sub_22BB69750();
  v37 = v13[3];
  sub_22BB699E4(v13, v37);
  sub_22BD0D2F4();
  sub_22BB75564();
  sub_22BDBB894();
  if (!v11)
  {
    v38 = sub_22BB3DE64();
    sub_22BD006D0(v38, 0);
    sub_22BB8B6D8();
    if (v39)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v42 == v43)
    {
      __break(1u);
      return;
    }

    v44 = sub_22BB3A47C(v40, v41);
    sub_22BD006A8(v44);
    sub_22BBBEB8C();
    if (v37)
    {
LABEL_9:
      v45 = sub_22BDBB3A4();
      sub_22BB31A08();
      v47 = v46;
      v48 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BD11104(v48);
      sub_22BB36D74();
      v49 = *MEMORY[0x277D84160];
      sub_22BB30474(v45);
      (*(v50 + 104))(v47);
      swift_willThrow();
      swift_unknownObjectRelease();
      v51 = sub_22BB3B088();
      v52(v51, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BD0D348();
        sub_22BB35FDC();
        sub_22BDBB554();
        if (!v31)
        {
          sub_22BD0D39C();
          sub_22BD10FB0();
          swift_unknownObjectRelease();
          v57 = *(v73 + 8);
          v58 = sub_22BB500C0();
          v59(v58);
          v60 = sub_22BB334FC();
          v61(v60);
          sub_22BD11014();
          sub_22BB3705C();
          v62 = v70;
LABEL_16:
          sub_22BD05488(v62, v69);
          sub_22BB3705C();
          sub_22BD05488(v69, v71);
          v53 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BD0D3F0();
        sub_22BB35FDC();
        sub_22BDBB554();
        if (!v31)
        {
          _s24StatementExecutionResultOMa(0);
          sub_22BB3E4E0();
          sub_22BD0B918(v56);
          sub_22BB68F34();
          swift_unknownObjectRelease();
          v63 = sub_22BB73BBC();
          v64(v63);
          v65 = *(v74 + 8);
          v66 = sub_22BB31528();
          v67(v66);
          swift_storeEnumTagMultiPayload();
          sub_22BB3705C();
          v62 = v73;
          goto LABEL_16;
        }
      }

      v54 = sub_22BB334FC();
      v55(v54);
      swift_unknownObjectRelease();
    }

    v13 = 0;
  }

  v53 = v13;
LABEL_12:
  sub_22BB32FA4(v53);
  sub_22BB376A8();
}

void sub_22BD04890()
{
  sub_22BB30F94();
  v153 = v5;
  v154 = v6;
  v145 = _s20TaskStatementOutcomeOMa(0);
  v7 = sub_22BB2F330(v145);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v135 = v10;
  v11 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB30BA8();
  v140 = v15;
  v144 = sub_22BBE6DE0(&qword_27D8E52D8, &unk_22BDC89F8);
  sub_22BB2F330(v144);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB30BA8();
  v146 = v19;
  sub_22BB2F120();
  v20 = sub_22BDB8294();
  v21 = sub_22BB30444(v20);
  v151 = v22;
  v152 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30560();
  v147 = v25;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F39C();
  v148 = v27;
  v28 = sub_22BB2F120();
  v138 = _s23StatementFailureOutcomeVMa(v28);
  v29 = sub_22BB2F330(v138);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB305A8();
  v142 = v32;
  v33 = sub_22BB2F120();
  v150 = _s23StatementCreatedOutcomeVMa(v33);
  v34 = sub_22BB2F330(v150);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30560();
  v134 = v37;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v38);
  sub_22BB2F39C();
  sub_22BB2F14C(v39);
  v40 = sub_22BBE6DE0(&qword_27D8E3DB8, &qword_22BDC1150);
  v41 = sub_22BB2F0C8(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BB30560();
  v139 = v44;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v45);
  sub_22BB2F39C();
  v137 = v46;
  v149 = sub_22BBE6DE0(&qword_27D8E52E0, &qword_22BDC8A08);
  v47 = sub_22BB2F330(v149);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BB30560();
  v143 = v50;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v51);
  sub_22BB2F39C();
  v141 = v52;
  v53 = sub_22BB2F120();
  v136 = _s23StatementSuccessOutcomeVMa(v53);
  v54 = sub_22BB2F330(v136);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BB30574();
  v57 = sub_22BB3ABC8();
  v58 = _s24StatementExecutionResultOMa(v57);
  v59 = sub_22BB2F330(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v62);
  sub_22BB6C6EC();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = &v132 - v65;
  MEMORY[0x28223BE20](v64);
  sub_22BB92338();
  MEMORY[0x28223BE20](v67);
  v69 = &v132 - v68;
  v70 = sub_22BBE6DE0(&qword_27D8E52E8, &unk_22BDC8A10);
  sub_22BB2F0C8(v70);
  v72 = *(v71 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v73);
  sub_22BB354DC();
  v75 = v1 + *(v74 + 56);
  sub_22BD05500(v153, v1);
  sub_22BD05500(v154, v75);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB36644();
      v98 = sub_22BB97B0C();
      sub_22BD05500(v98, v99);
      sub_22BB3627C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v102 = &qword_27D8E3DB8;
        v103 = &qword_22BDC1150;
        v104 = v3;
        goto LABEL_30;
      }

      v100 = *(v149 + 48);
      v101 = v141;
      sub_22BBC7880();
      sub_22BC8D26C();
      sub_22BBC7880();
      sub_22BC8D26C();
      if (sub_22BB3AA28(v101, 1, v150) == 1)
      {
        sub_22BB36B74(v101 + v100);
        if (v82)
        {
          sub_22BB58728(v101, &qword_27D8E3DB8, &qword_22BDC1150);
          goto LABEL_51;
        }
      }

      else
      {
        v115 = v137;
        sub_22BC5E5C4();
        sub_22BB36B74(v101 + v100);
        if (!v82)
        {
          sub_22BB377F8();
          v127 = v101 + v100;
          v128 = v133;
          sub_22BD05488(v127, v133);
          sub_22BB3AC54();
          sub_22BD01384();
          sub_22BB3DFE0();
          sub_22BD05430(v128, v129);
          v130 = sub_22BB3627C();
          sub_22BD05430(v130, v131);
          sub_22BB58728(v101, &qword_27D8E3DB8, &qword_22BDC1150);
          goto LABEL_51;
        }

        sub_22BB38E30();
        sub_22BD05430(v115, v116);
      }

      sub_22BB58728(v101, &qword_27D8E52E0, &qword_22BDC8A08);
      goto LABEL_51;
    case 2u:
      sub_22BB36644();
      sub_22BD05500(v1, v66);
      sub_22BB3627C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_22BB30860();
        v77 = v66;
        goto LABEL_27;
      }

      sub_22BB69AF0();
      v83 = v142;
      sub_22BD05488(v75, v142);
      sub_22BD01384();
      if (v84)
      {
        v85 = *(v138 + 20);
        sub_22BDB4CB4();
      }

      sub_22BB30860();
      sub_22BD05430(v83, v86);
      sub_22BB30860();
      v88 = v66;
      goto LABEL_50;
    case 3u:
      sub_22BB36644();
      sub_22BD05500(v1, v4);
      v89 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
      sub_22BB3627C();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v151 + 8))(v4 + v89, v152);
        v102 = &qword_27D8E3DB8;
        v103 = &qword_22BDC1150;
        v104 = v4;
        goto LABEL_30;
      }

      v91 = v151;
      v90 = v152;
      v92 = *(v151 + 32);
      v93 = v148;
      v92(v148, v4 + v89, v152);
      v94 = v147;
      v92(v147, v75 + v89, v90);
      v95 = *(v149 + 48);
      v96 = v143;
      sub_22BBC7880();
      sub_22BC8D26C();
      sub_22BBC7880();
      sub_22BC8D26C();
      v97 = v150;
      if (sub_22BB3AA28(v96, 1, v150) == 1)
      {
        sub_22BB36B74(v96 + v95);
        if (!v82)
        {
          goto LABEL_43;
        }

        sub_22BB58728(v96, &qword_27D8E3DB8, &qword_22BDC1150);
      }

      else
      {
        v112 = v139;
        sub_22BC5E5C4();
        sub_22BB36B74(v96 + v95);
        if (v82)
        {
          sub_22BB38E30();
          sub_22BD05430(v112, v113);
LABEL_43:
          sub_22BB58728(v96, &qword_27D8E52E0, &qword_22BDC8A08);
LABEL_44:
          v114 = *(v91 + 8);
          v114(v94, v90);
          v114(v93, v90);
          goto LABEL_51;
        }

        sub_22BB377F8();
        v120 = v96 + v95;
        v121 = v134;
        sub_22BD05488(v120, v134);
        sub_22BB3AC54();
        sub_22BD01384();
        sub_22BB3DFE0();
        sub_22BD05430(v121, v122);
        v123 = sub_22BB3627C();
        sub_22BD05430(v123, v124);
        sub_22BB58728(v96, &qword_27D8E3DB8, &qword_22BDC1150);
        if ((v97 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      sub_22BDB8284();
      v125 = *(v91 + 8);
      v125(v94, v90);
      v125(v93, v90);
      sub_22BB32398();
      sub_22BD05430(v1, v126);
      goto LABEL_53;
    case 4u:
      sub_22BB36644();
      v78 = sub_22BB30428();
      sub_22BD05500(v78, v79);
      sub_22BB3627C();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v80 = *(v144 + 48);
        v81 = v146;
        sub_22BC8D26C();
        sub_22BC8D26C();
        if (sub_22BB3AA28(v81, 1, v145) == 1)
        {
          sub_22BB36B74(v81 + v80);
          if (!v82)
          {
            goto LABEL_37;
          }

          sub_22BB58728(v81, &qword_27D8E4318, &unk_22BDC2E90);
        }

        else
        {
          v108 = v140;
          sub_22BC5E5C4();
          sub_22BB36B74(v81 + v80);
          if (v82)
          {
            sub_22BB3A6E4();
            sub_22BD05430(v108, v109);
LABEL_37:
            sub_22BB58728(v81, &qword_27D8E52D8, &unk_22BDC89F8);
            goto LABEL_38;
          }

          sub_22BB351A8();
          v117 = v135;
          sub_22BD05488(v81 + v80, v135);
          sub_22BB3AC54();
          sub_22BD02E7C();
          sub_22BD05430(v117, _s20TaskStatementOutcomeOMa);
          v118 = sub_22BB3627C();
          sub_22BD05430(v118, v119);
          sub_22BB58728(v81, &qword_27D8E4318, &unk_22BDC2E90);
        }

LABEL_38:
        sub_22BB32398();
        goto LABEL_52;
      }

      v102 = &qword_27D8E4318;
      v103 = &unk_22BDC2E90;
      v104 = v0;
LABEL_30:
      sub_22BB58728(v104, v102, v103);
LABEL_31:
      sub_22BB58728(v1, &qword_27D8E52E8, &unk_22BDC8A10);
LABEL_53:
      sub_22BB314EC();
      return;
    case 5u:
      sub_22BB3627C();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_51;
      }

      goto LABEL_31;
    default:
      sub_22BB36644();
      sub_22BD05500(v1, v69);
      sub_22BB3627C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22BB35B78();
        v77 = v69;
LABEL_27:
        sub_22BD05430(v77, v76);
        goto LABEL_31;
      }

      sub_22BB36E1C();
      sub_22BD05488(v75, v2);
      sub_22BD01384();
      if (v105)
      {
        v106 = *(v136 + 20);
        sub_22BDB4E14();
      }

      sub_22BB35B78();
      sub_22BD05430(v2, v107);
      sub_22BB35B78();
      v88 = v69;
LABEL_50:
      sub_22BD05430(v88, v87);
LABEL_51:
      sub_22BB32398();
      v110 = v1;
LABEL_52:
      sub_22BD05430(v110, v111);
      goto LABEL_53;
  }
}