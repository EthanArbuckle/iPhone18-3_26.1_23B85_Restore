uint64_t *sub_22603F678()
{
  if (qword_27D785DC8 != -1)
  {
    swift_once();
  }

  return &qword_27D788430;
}

uint64_t *sub_22603F6D8()
{
  if (qword_27D785DD0 != -1)
  {
    swift_once();
  }

  return &qword_27D788440;
}

uint64_t *sub_22603F738()
{
  if (qword_27D785DD8 != -1)
  {
    swift_once();
  }

  return &qword_27D788450;
}

uint64_t sub_22603F798(uint64_t a1, uint64_t a2)
{
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v64[0] = 0;
  v64[1] = 0;
  v61 = 0;
  v60 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v70 = a1;
  v69 = a2;
  sub_226046338();
  v35 = sub_225F26174();
  v67 = v35;
  sub_2260998E8();
  if (a2)
  {
    v65 = a2;
    sub_2260998E8();
    v63 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
    sub_225F4C138();
    sub_22609A028();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
      sub_22609A388();
      if (!v62)
      {
LABEL_52:
        sub_225EFE6E8(v64);

        goto LABEL_53;
      }

      v61 = v62;
      sub_22604639C();
      v33 = sub_225F26174();
      if (!v33)
      {

        goto LABEL_52;
      }

      v60 = v33;
      v2 = sub_22603F6D8();
      v27 = *v2;
      v28 = v2[1];
      sub_2260998E8();
      v59[0] = v27;
      v59[1] = v28;
      sub_226099938();
      sub_225EFE6BC(v59);
      v29 = v59[2];
      v30 = v59[3];
      sub_2260998E8();
      v3 = sub_22603F738();
      v31 = *v3;
      v32 = v3[1];
      sub_2260998E8();
      sub_2260998E8();
      v58[0] = v29;
      v58[1] = v30;
      v55 = v31;
      v56 = v32;
      sub_225F4C5E0(v58, &v57);
      if (v56)
      {
        break;
      }

      if (*(&v57 + 1))
      {
        goto LABEL_14;
      }

      sub_225EFE6BC(&v55);
      v26 = 1;
LABEL_12:

      if (v26)
      {

        [v33 setContextType_];

        goto LABEL_40;
      }

      sub_2260998E8();
      v4 = sub_226040948();
      v23 = *v4;
      v24 = v4[1];
      sub_2260998E8();
      sub_2260998E8();
      v54[0] = v29;
      v54[1] = v30;
      v51 = v23;
      v52 = v24;
      sub_225F4C5E0(v54, &v53);
      if (v52)
      {
        sub_225F4C5E0(&v51, v40);
        if (*(&v53 + 1))
        {
          v39 = v53;
          v21 = MEMORY[0x22AA72BD0](v40[0], v40[1], v53, *(&v53 + 1));
          sub_225EFE6BC(&v39);
          sub_225EFE6BC(v40);
          sub_225EFE6BC(&v51);
          v22 = v21;
          goto LABEL_23;
        }

        sub_225EFE6BC(v40);
LABEL_25:
        sub_225F4C1C0(&v51);
        v22 = 0;
        goto LABEL_23;
      }

      if (*(&v53 + 1))
      {
        goto LABEL_25;
      }

      sub_225EFE6BC(&v51);
      v22 = 1;
LABEL_23:

      if (v22)
      {

        [v33 setContextType_];

        goto LABEL_40;
      }

      sub_2260998E8();
      v5 = sub_226040A30();
      v19 = *v5;
      v20 = v5[1];
      sub_2260998E8();
      sub_2260998E8();
      v50[0] = v29;
      v50[1] = v30;
      v47 = v19;
      v48 = v20;
      sub_225F4C5E0(v50, &v49);
      if (!v48)
      {
        if (!*(&v49 + 1))
        {
          sub_225EFE6BC(&v47);
          v18 = 1;
          goto LABEL_34;
        }

        goto LABEL_37;
      }

      sub_225F4C5E0(&v47, v42);
      if (!*(&v49 + 1))
      {
        sub_225EFE6BC(v42);
LABEL_37:
        sub_225F4C1C0(&v47);
        v18 = 0;
        goto LABEL_34;
      }

      v41 = v49;
      v17 = MEMORY[0x22AA72BD0](v42[0], v42[1], v49, *(&v49 + 1));
      sub_225EFE6BC(&v41);
      sub_225EFE6BC(v42);
      sub_225EFE6BC(&v47);
      v18 = v17;
LABEL_34:

      if (v18)
      {
        [v33 setContextType_];
      }

      else
      {
        [v33 setContextType_];
      }

LABEL_40:
      sub_2260462D4();
      v16 = sub_225F26174();
      if (v16)
      {
        v46 = v16;
        v6 = sub_22603F678();
        v12 = *v6;
        v13 = v6[1];
        sub_2260998E8();
        v45[0] = v12;
        v45[1] = v13;
        sub_226099938();
        sub_225EFE6BC(v45);
        v14 = sub_226042C28(v45[2], v45[3]);
        v15 = v7;

        if (v15)
        {
          v43 = v14;
          v44 = v15;
          sub_2260998E8();
          v11 = sub_2260999F8();

          [v16 setBundleId_];
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BE0](v16);
          [v33 setEntityType_];
          MEMORY[0x277D82BD8](v16);
        }

        MEMORY[0x277D82BD8](v16);
      }

      [v33 setEnrollmentResult_];
      MEMORY[0x277D82BE0](v35);
      if (v35)
      {
        [v35 addRetrievedEntityStates_];
        MEMORY[0x277D82BD8](v35);
      }

      MEMORY[0x277D82BD8](v33);
    }

    sub_225F4C5E0(&v55, v38);
    if (*(&v57 + 1))
    {
      v37 = v57;
      v25 = MEMORY[0x22AA72BD0](v38[0], v38[1], v57, *(&v57 + 1));
      sub_225EFE6BC(&v37);
      sub_225EFE6BC(v38);
      sub_225EFE6BC(&v55);
      v26 = v25;
      goto LABEL_12;
    }

    sub_225EFE6BC(v38);
LABEL_14:
    sub_225F4C1C0(&v55);
    v26 = 0;
    goto LABEL_12;
  }

LABEL_53:
  sub_2260461E8();
  v10 = sub_225F26174();
  v66 = v10;
  MEMORY[0x277D82BE0](v10);
  if (v10)
  {
    [v10 setEnded_];
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BE0](v10);
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_22604158C(v9, a1, 0, 1u);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  return MEMORY[0x277D82BD8](v35);
}

void sub_226040104(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v44 = a1;
  v45 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v53 = a1;
  v54 = a2;
  sub_226046400();
  v46 = sub_225F26174();
  v51 = v46;
  sub_2260998E8();
  if (v47)
  {
    v42 = v44;
    v43 = v47;
    v34 = v47;
    v35 = v44;
    v49 = v44;
    v50 = v47;
    v41 = sub_226098A78();
    v28 = v41;
    v29 = *(v41 - 8);
    v39 = v29;
    v30 = v29;
    v31 = *(v29 + 64);
    v32 = &v16;
    MEMORY[0x28223BE20](&v16, v41, v2, v3);
    v33 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v33;
    v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
    v36 = &v16;
    v37 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v35, v34, &v16, v6);
    v40 = &v16 - v37;
    v38 = &v16 - v37;
    sub_226098A18();
    if ((*(v39 + 48))(v40, 1, v41) == 1)
    {
      sub_225F7C078(v38);
    }

    else
    {
      (*(v30 + 32))(v33, v38, v28);
      v7 = v46;
      if (v46)
      {
        v27 = v46;
        v26 = v46;
        sub_225F7BD5C();
        v24 = &v16;
        MEMORY[0x28223BE20](&v16, v33, v28, v8);
        v23 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v30 + 16))();
        v25 = sub_22603E5E0(v23);
        [v26 setOriginalAsrId_];
      }

      (*(v30 + 8))(v33, v28);
    }
  }

  v10 = v46;
  if (v46)
  {
    v22 = v46;
    v21 = v46;
  }

  else
  {
    v21 = 0;
  }

  v19 = v21;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v20 = &v16;
  v17 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v16, v12, v13, v14);
  v18 = &v16 - v17;
  v15 = sub_226098A78();
  (*(*(v15 - 8) + 56))(v18, 1);
  sub_2260430A0(v19, v18);
  sub_225F7C078(v18);
}

uint64_t sub_2260405B8()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786F50);
  __swift_project_value_buffer(v1, qword_27D786F50);
  return sub_226040604();
}

uint64_t sub_226040604()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226040700()
{
  if (qword_27D785DC0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786F50);
}

uint64_t sub_22604076C()
{
  result = sub_226099AA8();
  qword_27D788430 = result;
  qword_27D788438 = v1;
  return result;
}

uint64_t sub_2260407B0()
{
  v0 = sub_22603F678();
  v2 = *v0;
  v3 = v0[1];
  sub_2260998E8();
  return v2;
}

uint64_t sub_2260407F4()
{
  result = sub_226099AA8();
  qword_27D788440 = result;
  qword_27D788448 = v1;
  return result;
}

uint64_t sub_226040838()
{
  v0 = sub_22603F6D8();
  v2 = *v0;
  v3 = v0[1];
  sub_2260998E8();
  return v2;
}

uint64_t sub_22604087C()
{
  result = sub_226099AA8();
  qword_27D788450 = result;
  qword_27D788458 = v1;
  return result;
}

uint64_t sub_2260408C0()
{
  v0 = sub_22603F738();
  v2 = *v0;
  v3 = v0[1];
  sub_2260998E8();
  return v2;
}

uint64_t sub_226040904()
{
  result = sub_226099AA8();
  qword_27D788460 = result;
  qword_27D788468 = v1;
  return result;
}

uint64_t *sub_226040948()
{
  if (qword_27D785DE0 != -1)
  {
    swift_once();
  }

  return &qword_27D788460;
}

uint64_t sub_2260409A8()
{
  v0 = sub_226040948();
  v2 = *v0;
  v3 = v0[1];
  sub_2260998E8();
  return v2;
}

uint64_t sub_2260409EC()
{
  result = sub_226099AA8();
  qword_27D788470 = result;
  qword_27D788478 = v1;
  return result;
}

uint64_t *sub_226040A30()
{
  if (qword_27D785DE8 != -1)
  {
    swift_once();
  }

  return &qword_27D788470;
}

uint64_t sub_226040A90()
{
  v0 = sub_226040A30();
  v2 = *v0;
  v3 = v0[1];
  sub_2260998E8();
  return v2;
}

uint64_t sub_226040AD4(uint64_t a1)
{
  v14 = a1;
  v23 = 0;
  v22 = 0;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v2, v3, v4);
  v16 = &v11 - v15;
  v17 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, &v11 - v15, v7, v8);
  v18 = &v11 - v17;
  v23 = v9;
  v22 = v1;
  sub_225F14508(v9, &v11 - v17);
  v19 = sub_226099808();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  if ((*(v20 + 48))(v18, 1))
  {
    goto LABEL_35;
  }

  sub_225F14508(v18, v16);
  v13 = (*(v20 + 88))(v16, v19);
  if (v13 == *MEMORY[0x277CDCE70])
  {
    sub_225F149A8(v18);
    return 1;
  }

  else if (v13 == *MEMORY[0x277CDCE50])
  {
    sub_225F149A8(v18);
    return 2;
  }

  else if (v13 == *MEMORY[0x277CDCE10])
  {
    sub_225F149A8(v18);
    return 3;
  }

  else if (v13 == *MEMORY[0x277CDCE68])
  {
    sub_225F149A8(v18);
    return 4;
  }

  else if (v13 == *MEMORY[0x277CDCE38])
  {
    sub_225F149A8(v18);
    return 5;
  }

  else if (v13 == *MEMORY[0x277CDCE28])
  {
    sub_225F149A8(v18);
    return 6;
  }

  else if (v13 == *MEMORY[0x277CDCE20])
  {
    sub_225F149A8(v18);
    return 7;
  }

  else if (v13 == *MEMORY[0x277CDCE78])
  {
    sub_225F149A8(v18);
    return 8;
  }

  else if (v13 == *MEMORY[0x277CDCE18])
  {
    sub_225F149A8(v18);
    return 9;
  }

  else if (v13 == *MEMORY[0x277CDCE00])
  {
    sub_225F149A8(v18);
    return 10;
  }

  else if (v13 == *MEMORY[0x277CDCE08])
  {
    sub_225F149A8(v18);
    return 11;
  }

  else if (v13 == *MEMORY[0x277CDCE58])
  {
    sub_225F149A8(v18);
    return 12;
  }

  else if (v13 == *MEMORY[0x277CDCE60])
  {
    sub_225F149A8(v18);
    return 13;
  }

  else if (v13 == *MEMORY[0x277CDCE48])
  {
    sub_225F149A8(v18);
    return 14;
  }

  else if (v13 == *MEMORY[0x277CDCE40])
  {
    sub_225F149A8(v18);
    return 15;
  }

  else
  {
    if (v13 != *MEMORY[0x277CDCE30])
    {
      (*(v20 + 8))(v16, v19);
LABEL_35:
      sub_225F149A8(v18);
      return 0;
    }

    sub_225F149A8(v18);
    return 16;
  }
}

uint64_t sub_226040F84(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v14 = 0;
  v11 = sub_226098BA8();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v11, v7, v11, v2);
  v12 = &v6 - v8;
  v15 = v4;
  v14 = v1;
  (*(v9 + 16))(v3);
  v13 = (*(v9 + 88))(v12, v11);
  if (v13 == *MEMORY[0x277D1EAB8])
  {
    HIDWORD(v6) = 1;
  }

  else if (v13 == *MEMORY[0x277D1EA58])
  {
    HIDWORD(v6) = 2;
  }

  else if (v13 == *MEMORY[0x277D1EA78])
  {
    HIDWORD(v6) = 3;
  }

  else if (v13 == *MEMORY[0x277D1EA90])
  {
    HIDWORD(v6) = 4;
  }

  else if (v13 == *MEMORY[0x277D1EA60])
  {
    HIDWORD(v6) = 5;
  }

  else if (v13 == *MEMORY[0x277D1EB10])
  {
    HIDWORD(v6) = 6;
  }

  else if (v13 == *MEMORY[0x277D1EA98])
  {
    HIDWORD(v6) = 7;
  }

  else if (v13 == *MEMORY[0x277D1EAA8])
  {
    HIDWORD(v6) = 8;
  }

  else if (v13 == *MEMORY[0x277D1EAB0])
  {
    HIDWORD(v6) = 9;
  }

  else if (v13 == *MEMORY[0x277D1EB38])
  {
    HIDWORD(v6) = 10;
  }

  else if (v13 == *MEMORY[0x277D1EB28])
  {
    HIDWORD(v6) = 11;
  }

  else if (v13 == *MEMORY[0x277D1EB48])
  {
    HIDWORD(v6) = 12;
  }

  else if (v13 == *MEMORY[0x277D1EB00])
  {
    HIDWORD(v6) = 13;
  }

  else if (v13 == *MEMORY[0x277D1EB18])
  {
    HIDWORD(v6) = 14;
  }

  else if (v13 == *MEMORY[0x277D1EA68])
  {
    HIDWORD(v6) = 31;
  }

  else if (v13 == *MEMORY[0x277D1EA80])
  {
    HIDWORD(v6) = 15;
  }

  else if (v13 == *MEMORY[0x277D1EAA0])
  {
    HIDWORD(v6) = 18;
  }

  else if (v13 == *MEMORY[0x277D1EA88])
  {
    HIDWORD(v6) = 30;
  }

  else if (v13 == *MEMORY[0x277D1EAD8])
  {
    HIDWORD(v6) = 25;
  }

  else if (v13 == *MEMORY[0x277D1EA50])
  {
    HIDWORD(v6) = 26;
  }

  else if (v13 == *MEMORY[0x277D1EAD0])
  {
    HIDWORD(v6) = 27;
  }

  else if (v13 == *MEMORY[0x277D1EB20])
  {
    HIDWORD(v6) = 28;
  }

  else if (v13 == *MEMORY[0x277D1EB08])
  {
    HIDWORD(v6) = 29;
  }

  else if (v13 == *MEMORY[0x277D1EAF8])
  {
    HIDWORD(v6) = 19;
  }

  else if (v13 == *MEMORY[0x277D1EB30])
  {
    HIDWORD(v6) = 20;
  }

  else if (v13 == *MEMORY[0x277D1EAE0])
  {
    HIDWORD(v6) = 21;
  }

  else if (v13 == *MEMORY[0x277D1EAE8])
  {
    HIDWORD(v6) = 22;
  }

  else if (v13 == *MEMORY[0x277D1EAC0])
  {
    HIDWORD(v6) = 23;
  }

  else if (v13 == *MEMORY[0x277D1EAC8])
  {
    HIDWORD(v6) = 24;
  }

  else if (v13 == *MEMORY[0x277D1EA70])
  {
    HIDWORD(v6) = 16;
  }

  else if (v13 == *MEMORY[0x277D1EAF0])
  {
    HIDWORD(v6) = 17;
  }

  else
  {
    (*(v9 + 8))(v12, v11);
    HIDWORD(v6) = 0;
  }

  return HIDWORD(v6);
}

uint64_t sub_22604158C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v174 = a4;
  v173 = a3;
  v175 = a2;
  v185 = a1;
  v170 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v206 = 0;
  v171 = 0;
  v201 = 0;
  v196 = 0;
  v191 = 0;
  v190 = 0;
  v172 = a4;
  v176 = sub_226098C58();
  v177 = *(v176 - 8);
  v178 = v177;
  v181 = *(v177 + 64);
  MEMORY[0x28223BE20](v185, v175, v173, v174);
  v183 = (v181 + 15) & 0xFFFFFFFFFFFFFFF0;
  v179 = v60 - v183;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v180 = v60 - v183;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v182 = v60 - v183;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v184 = v60 - v183;
  v210 = v17;
  v209 = v18;
  v207 = v19;
  v208 = v20 & 1;
  v206 = v4;
  v21 = v17;
  if (v185)
  {
    v169 = v185;
    v167 = v185;
    v201 = v185;
    sub_22603929C();
    v168 = sub_225F26174();
    if (v168)
    {
      v166 = v168;
      v162 = v168;
      v196 = v168;
      v164 = 0;
      sub_225F7BD5C();
      v22 = sub_226098A78();
      v158 = *(v22 - 8);
      v159 = v158;
      v23 = *(v158 + 64);
      v161 = v60;
      v25 = MEMORY[0x28223BE20](v60, v175, v22, v24);
      v160 = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v159 + 16))(v25);
      v163 = sub_22603E5E0(v160);
      [v162 setAsrId_];

      sub_226039300();
      v165 = sub_225F26174();
      if (v165)
      {
        v157 = v165;
        v156 = v165;
        v191 = v165;
        v27 = v162;
        [v156 setEventMetadata_];

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v28 = v167;
          objc_opt_self();
          v155 = swift_dynamicCastObjCClass();
          if (v155)
          {
            v154 = v155;
          }

          else
          {

            v154 = 0;
          }

          v152 = v154;
          [v156 setContextualEntityCollectionTriggered_];

          v153 = v171;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v29 = v167;
            objc_opt_self();
            v151 = swift_dynamicCastObjCClass();
            if (v151)
            {
              v150 = v151;
            }

            else
            {

              v150 = 0;
            }

            v149 = v150;
            [v156 setContextualEntityRetrievalContext_];

            v153 = v171;
          }

          else
          {
            v30 = v184;
            v31 = sub_226040700();
            (*(v178 + 16))(v30, v31, v176);
            v147 = sub_226098C48();
            v144 = v147;
            v146 = sub_22609A098();
            v145 = v146;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v148 = sub_22609A4F8();
            if (os_log_type_enabled(v147, v146))
            {
              v32 = v171;
              v135 = sub_22609A188();
              v131 = v135;
              v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v133 = 0;
              v136 = sub_225EF5468(0);
              v134 = v136;
              v137 = sub_225EF5468(v133);
              v189 = v135;
              v188 = v136;
              v187 = v137;
              v138 = 0;
              v139 = &v189;
              sub_225EF54BC(0, &v189);
              sub_225EF54BC(v138, v139);
              v186 = v148;
              v140 = v60;
              MEMORY[0x28223BE20](v60, v33, v34, v35);
              v141 = &v60[-6];
              v60[-4] = v36;
              v60[-3] = &v188;
              v60[-2] = &v187;
              v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
              sub_225EFE598();
              sub_226099C28();
              v143 = v32;
              if (v32)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_225EEB000, v144, v145, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", v131, 2u);
                v129 = 0;
                sub_225EF7AF4(v134);
                sub_225EF7AF4(v137);
                sub_22609A168();

                v130 = v143;
              }
            }

            else
            {

              v130 = v171;
            }

            v128 = v130;

            (*(v178 + 8))(v184, v176);
            v153 = v128;
          }
        }

        v127 = v153;
        if (v172)
        {
          v123 = [objc_opt_self() sharedStream];
          swift_getObjectType();
          [v123 emitMessage_];
        }

        else
        {
          v126 = v173;
          v124 = v173;
          v190 = v173;
          v125 = [objc_opt_self() sharedStream];
          swift_getObjectType();
          v37 = sub_226042F9C(v124);
          [v125 emitMessage:v156 timestamp:v37];
        }

        swift_unknownObjectRelease();

        return v127;
      }

      else
      {
        v38 = v182;
        v39 = sub_226040700();
        (*(v178 + 16))(v38, v39, v176);
        v120 = sub_226098C48();
        v117 = v120;
        v119 = sub_22609A098();
        v118 = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v121 = sub_22609A4F8();
        if (os_log_type_enabled(v120, v119))
        {
          v40 = v171;
          v108 = sub_22609A188();
          v104 = v108;
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v106 = 0;
          v109 = sub_225EF5468(0);
          v107 = v109;
          v110 = sub_225EF5468(v106);
          v195 = v108;
          v194 = v109;
          v193 = v110;
          v111 = 0;
          v112 = &v195;
          sub_225EF54BC(0, &v195);
          sub_225EF54BC(v111, v112);
          v192 = v121;
          v113 = v60;
          MEMORY[0x28223BE20](v60, v41, v42, v43);
          v114 = &v60[-6];
          v60[-4] = v44;
          v60[-3] = &v194;
          v60[-2] = &v193;
          v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v116 = v40;
          if (v40)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v117, v118, "Failed to create SELF event", v104, 2u);
            v102 = 0;
            sub_225EF7AF4(v107);
            sub_225EF7AF4(v110);
            sub_22609A168();

            v103 = v116;
          }
        }

        else
        {

          v103 = v171;
        }

        v101 = v103;

        (*(v178 + 8))(v182, v176);
        return v101;
      }
    }

    else
    {
      v45 = v180;
      v46 = sub_226040700();
      (*(v178 + 16))(v45, v46, v176);
      v99 = sub_226098C48();
      v96 = v99;
      v98 = sub_22609A098();
      v97 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v100 = sub_22609A4F8();
      if (os_log_type_enabled(v99, v98))
      {
        v47 = v171;
        v87 = sub_22609A188();
        v83 = v87;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v85 = 0;
        v88 = sub_225EF5468(0);
        v86 = v88;
        v89 = sub_225EF5468(v85);
        v200 = v87;
        v199 = v88;
        v198 = v89;
        v90 = 0;
        v91 = &v200;
        sub_225EF54BC(0, &v200);
        sub_225EF54BC(v90, v91);
        v197 = v100;
        v92 = v60;
        MEMORY[0x28223BE20](v60, v48, v49, v50);
        v93 = &v60[-6];
        v60[-4] = v51;
        v60[-3] = &v199;
        v60[-2] = &v198;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v95 = v47;
        if (v47)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v96, v97, "Failed to create SELF event metadata", v83, 2u);
          v81 = 0;
          sub_225EF7AF4(v86);
          sub_225EF7AF4(v89);
          sub_22609A168();

          v82 = v95;
        }
      }

      else
      {

        v82 = v171;
      }

      v80 = v82;

      (*(v178 + 8))(v180, v176);
      return v80;
    }
  }

  else
  {
    v52 = v179;
    v53 = sub_226040700();
    (*(v178 + 16))(v52, v53, v176);
    v78 = sub_226098C48();
    v75 = v78;
    v77 = sub_22609A098();
    v76 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v79 = sub_22609A4F8();
    if (os_log_type_enabled(v78, v77))
    {
      v54 = v171;
      v66 = sub_22609A188();
      v62 = v66;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v64 = 0;
      v67 = sub_225EF5468(0);
      v65 = v67;
      v68 = sub_225EF5468(v64);
      v205 = v66;
      v204 = v67;
      v203 = v68;
      v69 = 0;
      v70 = &v205;
      sub_225EF54BC(0, &v205);
      sub_225EF54BC(v69, v70);
      v202 = v79;
      v71 = v60;
      MEMORY[0x28223BE20](v60, v55, v56, v57);
      v72 = &v60[-6];
      v60[-4] = v58;
      v60[-3] = &v204;
      v60[-2] = &v203;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v74 = v54;
      if (v54)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v75, v76, "topLevelEvent is nil", v62, 2u);
        v60[1] = 0;
        sub_225EF7AF4(v65);
        sub_225EF7AF4(v68);
        sub_22609A168();

        v61 = v74;
      }
    }

    else
    {

      v61 = v171;
    }

    v60[0] = v61;

    (*(v178 + 8))(v179, v176);
    return v60[0];
  }
}

uint64_t sub_226042C28(uint64_t a1, uint64_t a2)
{
  v6 = a2 != 0;
  sub_2260998E8();
  if (v6)
  {
    sub_2260998E8();
    if (a2)
    {
      sub_226099AA8();
      v4 = sub_226099B98();

      v5 = v4;
      goto LABEL_6;
    }

    sub_22609A3B8();
    __break(1u);
  }

  v5 = 0;
LABEL_6:

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_2260998E8();
  return a1;
}

uint64_t sub_226042F9C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  mach_get_times();
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2260430A0(void *a1, uint64_t a2)
{
  v236 = a2;
  v247 = a1;
  v234 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v235 = 0;
  v266 = 0;
  v261 = 0;
  v256 = 0;
  v237 = sub_226098C58();
  v238 = *(v237 - 8);
  v239 = v238;
  v243 = *(v238 + 64);
  v4 = MEMORY[0x28223BE20](v247, v236, v237, v3);
  v245 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  v240 = v77 - v245;
  v7 = MEMORY[0x28223BE20](v4, v5, v77 - v245, v6);
  v241 = v77 - v245;
  v10 = MEMORY[0x28223BE20](v7, v8, v77 - v245, v9);
  v242 = v77 - v245;
  v13 = MEMORY[0x28223BE20](v10, v11, v77 - v245, v12);
  v244 = v77 - v245;
  v16 = MEMORY[0x28223BE20](v13, v14, v77 - v245, v15);
  v246 = v77 - v245;
  v273 = v16;
  v272 = v17;
  v271 = v2;
  v18 = v16;
  if (v247)
  {
    v233 = v247;
    v231 = v247;
    v266 = v247;
    sub_225F7BCF8();
    v232 = sub_225F26174();
    if (v232)
    {
      v230 = v232;
      v213 = v232;
      v261 = v232;
      v214 = 0;
      v215 = sub_225F7BD5C();
      v216 = v215;
      v226 = sub_226098A78();
      v217 = v226;
      v218 = *(v226 - 8);
      v225 = v218;
      v219 = v218;
      v19 = *(v218 + 64);
      v220 = v77;
      MEMORY[0x28223BE20](v77, v226, v20, v21);
      v221 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
      v222 = v77;
      v223 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
      v26 = MEMORY[0x28223BE20](v236, v77, v24, v25);
      v227 = v77 - v223;
      v224 = v77 - v223;
      sub_225F7BF50(v26, v77 - v223);
      v228 = *(v225 + 48);
      v229 = (v225 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v228(v227, 1, v226) == 1)
      {
        sub_226098A68();
        if (v228(v224, 1, v217) != 1)
        {
          sub_225F7C078(v224);
        }
      }

      else
      {
        (*(v219 + 32))(v221, v224, v217);
      }

      v211 = sub_22603E5E0(v221);
      [v213 setDodMlId_];

      sub_225F7BDC0();
      v212 = sub_225F26174();
      if (v212)
      {
        v210 = v212;
        v209 = v212;
        v256 = v212;
        v27 = v213;
        [v209 setEventMetadata_];

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v28 = v231;
          objc_opt_self();
          v208 = swift_dynamicCastObjCClass();
          if (v208)
          {
            v207 = v208;
          }

          else
          {

            v207 = 0;
          }

          v206 = v207;
          [v209 setContextualReplayBiomeRecordCreated_];

LABEL_34:
          v39 = v244;
          v40 = sub_226040700();
          (*(v239 + 16))(v39, v40, v237);
          v41 = v231;
          v163 = 7;
          v164 = swift_allocObject();
          *(v164 + 16) = v231;
          v174 = sub_226098C48();
          v157 = v174;
          v173 = sub_22609A088();
          v158 = v173;
          v159 = 17;
          v167 = swift_allocObject();
          v160 = v167;
          *(v167 + 16) = 64;
          v168 = swift_allocObject();
          v161 = v168;
          *(v168 + 16) = 8;
          v162 = 32;
          v42 = swift_allocObject();
          v43 = v164;
          v165 = v42;
          *(v42 + 16) = sub_225F3E198;
          *(v42 + 24) = v43;
          v44 = swift_allocObject();
          v45 = v165;
          v171 = v44;
          v166 = v44;
          *(v44 + 16) = sub_225F3E1C8;
          *(v44 + 24) = v45;
          v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
          v169 = sub_22609A4F8();
          v170 = v46;

          v47 = v167;
          v48 = v170;
          *v170 = sub_225EF7434;
          v48[1] = v47;

          v49 = v168;
          v50 = v170;
          v170[2] = sub_225EF7434;
          v50[3] = v49;

          v51 = v170;
          v52 = v171;
          v170[4] = sub_225F3E358;
          v51[5] = v52;
          sub_225EF5418();

          if (os_log_type_enabled(v174, v173))
          {
            v53 = v235;
            v150 = sub_22609A188();
            v147 = v150;
            v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
            v153 = 1;
            v151 = sub_225EF5468(1);
            v149 = v151;
            v152 = sub_225EF5468(0);
            v252[0] = v150;
            v251 = v151;
            v250 = v152;
            v154 = v252;
            sub_225EF54BC(2, v252);
            sub_225EF54BC(v153, v154);
            v248 = sub_225EF7434;
            v249 = v160;
            sub_225EF73E8(&v248, v154, &v251, &v250);
            v155 = v53;
            v156 = v53;
            if (v53)
            {
              v145 = 0;

              __break(1u);
            }

            else
            {
              v248 = sub_225EF7434;
              v249 = v161;
              sub_225EF73E8(&v248, v252, &v251, &v250);
              v143 = 0;
              v144 = 0;
              v248 = sub_225F3E358;
              v249 = v166;
              sub_225EF73E8(&v248, v252, &v251, &v250);
              v141 = 0;
              v142 = 0;
              _os_log_impl(&dword_225EEB000, v157, v158, "SELF: Wrapping and logging an event of type %@", v147, 0xCu);
              sub_225EF7AF4(v149);
              sub_225EF7AF4(v152);
              sub_22609A168();

              v146 = v141;
            }
          }

          else
          {
            v54 = v235;

            v146 = v54;
          }

          v140 = v146;

          (*(v239 + 8))(v244, v237);
          v139 = [objc_opt_self() sharedStream];
          swift_getObjectType();
          [v139 emitMessage_];
          swift_unknownObjectRelease();

          return v140;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v29 = v231;
          objc_opt_self();
          v205 = swift_dynamicCastObjCClass();
          if (v205)
          {
            v204 = v205;
          }

          else
          {

            v204 = 0;
          }

          v203 = v204;
          [v209 setContextualReplayBiomeRecordDeleted_];

          goto LABEL_34;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v30 = v231;
          objc_opt_self();
          v202 = swift_dynamicCastObjCClass();
          if (v202)
          {
            v201 = v202;
          }

          else
          {

            v201 = 0;
          }

          v200 = v201;
          [v209 setPersonalizationExperimentContext_];

          goto LABEL_34;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v31 = v231;
          objc_opt_self();
          v199 = swift_dynamicCastObjCClass();
          if (v199)
          {
            v198 = v199;
          }

          else
          {

            v198 = 0;
          }

          v197 = v198;
          [v209 setAudioFileResultTier1_];

          goto LABEL_34;
        }

        v32 = v246;
        v33 = sub_226040700();
        (*(v239 + 16))(v32, v33, v237);
        v195 = sub_226098C48();
        v192 = v195;
        v194 = sub_22609A098();
        v193 = v194;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v196 = sub_22609A4F8();
        if (os_log_type_enabled(v195, v194))
        {
          v34 = v235;
          v183 = sub_22609A188();
          v179 = v183;
          v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v181 = 0;
          v184 = sub_225EF5468(0);
          v182 = v184;
          v185 = sub_225EF5468(v181);
          v255 = v183;
          v254 = v184;
          v253 = v185;
          v186 = 0;
          v187 = &v255;
          sub_225EF54BC(0, &v255);
          sub_225EF54BC(v186, v187);
          v252[1] = v196;
          v188 = v77;
          MEMORY[0x28223BE20](v77, v35, v36, v37);
          v189 = &v77[-6];
          v77[-4] = v38;
          v77[-3] = &v254;
          v77[-2] = &v253;
          v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v191 = v34;
          if (v34)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v192, v193, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the DODML ASR SELF schema.", v179, 2u);
            v177 = 0;
            sub_225EF7AF4(v182);
            sub_225EF7AF4(v185);
            sub_22609A168();

            v178 = v191;
          }
        }

        else
        {

          v178 = v235;
        }

        v175 = v178;

        (*(v239 + 8))(v246, v237);
        return v175;
      }

      else
      {
        v55 = v242;
        v56 = sub_226040700();
        (*(v239 + 16))(v55, v56, v237);
        v137 = sub_226098C48();
        v134 = v137;
        v136 = sub_22609A078();
        v135 = v136;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v138 = sub_22609A4F8();
        if (os_log_type_enabled(v137, v136))
        {
          v57 = v235;
          v125 = sub_22609A188();
          v121 = v125;
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v123 = 0;
          v126 = sub_225EF5468(0);
          v124 = v126;
          v127 = sub_225EF5468(v123);
          v260 = v125;
          v259 = v126;
          v258 = v127;
          v128 = 0;
          v129 = &v260;
          sub_225EF54BC(0, &v260);
          sub_225EF54BC(v128, v129);
          v257 = v138;
          v130 = v77;
          MEMORY[0x28223BE20](v77, v58, v59, v60);
          v131 = &v77[-6];
          v77[-4] = v61;
          v77[-3] = &v259;
          v77[-2] = &v258;
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v133 = v57;
          if (v57)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v134, v135, "Failed to create DODMLSchemaDODMLClientEvent", v121, 2u);
            v119 = 0;
            sub_225EF7AF4(v124);
            sub_225EF7AF4(v127);
            sub_22609A168();

            v120 = v133;
          }
        }

        else
        {

          v120 = v235;
        }

        v118 = v120;

        (*(v239 + 8))(v242, v237);
        return v118;
      }
    }

    else
    {
      v62 = v241;
      v63 = sub_226040700();
      (*(v239 + 16))(v62, v63, v237);
      v116 = sub_226098C48();
      v113 = v116;
      v115 = sub_22609A098();
      v114 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v117 = sub_22609A4F8();
      if (os_log_type_enabled(v116, v115))
      {
        v64 = v235;
        v104 = sub_22609A188();
        v100 = v104;
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v102 = 0;
        v105 = sub_225EF5468(0);
        v103 = v105;
        v106 = sub_225EF5468(v102);
        v265 = v104;
        v264 = v105;
        v263 = v106;
        v107 = 0;
        v108 = &v265;
        sub_225EF54BC(0, &v265);
        sub_225EF54BC(v107, v108);
        v262 = v117;
        v109 = v77;
        MEMORY[0x28223BE20](v77, v65, v66, v67);
        v110 = &v77[-6];
        v77[-4] = v68;
        v77[-3] = &v264;
        v77[-2] = &v263;
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v112 = v64;
        if (v64)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v113, v114, "Failed to create event metadata", v100, 2u);
          v98 = 0;
          sub_225EF7AF4(v103);
          sub_225EF7AF4(v106);
          sub_22609A168();

          v99 = v112;
        }
      }

      else
      {

        v99 = v235;
      }

      v97 = v99;

      (*(v239 + 8))(v241, v237);
      return v97;
    }
  }

  else
  {
    v69 = v240;
    v70 = sub_226040700();
    (*(v239 + 16))(v69, v70, v237);
    v95 = sub_226098C48();
    v92 = v95;
    v94 = sub_22609A078();
    v93 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v96 = sub_22609A4F8();
    if (os_log_type_enabled(v95, v94))
    {
      v71 = v235;
      v83 = sub_22609A188();
      v79 = v83;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v81 = 0;
      v84 = sub_225EF5468(0);
      v82 = v84;
      v85 = sub_225EF5468(v81);
      v270 = v83;
      v269 = v84;
      v268 = v85;
      v86 = 0;
      v87 = &v270;
      sub_225EF54BC(0, &v270);
      sub_225EF54BC(v86, v87);
      v267 = v96;
      v88 = v77;
      MEMORY[0x28223BE20](v77, v72, v73, v74);
      v89 = &v77[-6];
      v77[-4] = v75;
      v77[-3] = &v269;
      v77[-2] = &v268;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v91 = v71;
      if (v71)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v92, v93, "topLevelEvent is nil", v79, 2u);
        v77[1] = 0;
        sub_225EF7AF4(v82);
        sub_225EF7AF4(v85);
        sub_22609A168();

        v78 = v91;
      }
    }

    else
    {

      v78 = v235;
    }

    v77[0] = v78;

    (*(v239 + 8))(v240, v237);
    return v77[0];
  }
}

void sub_226044FA4(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v45 = a1;
  v46 = 0;
  v53 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v54 = a1;
  v55 = a2;
  sub_226046464();
  v47 = sub_225F26174();
  v52 = v47;
  sub_2260998E8();
  if (v48)
  {
    v43 = v45;
    v44 = v48;
    v35 = v48;
    v36 = v45;
    v50 = v45;
    v51 = v48;
    v42 = sub_226098A78();
    v29 = v42;
    v30 = *(v42 - 8);
    v40 = v30;
    v31 = v30;
    v32 = *(v30 + 64);
    v33 = &v17;
    MEMORY[0x28223BE20](&v17, v42, v2, v3);
    v34 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v34;
    v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
    v37 = &v17;
    v38 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v36, v35, &v17, v6);
    v41 = &v17 - v38;
    v39 = &v17 - v38;
    sub_226098A18();
    if ((*(v40 + 48))(v41, 1, v42) == 1)
    {
      sub_225F7C078(v39);
    }

    else
    {
      (*(v31 + 32))(v34, v39, v29);
      v7 = v47;
      if (v47)
      {
        v28 = v47;
        v27 = v47;
        sub_225F7BD5C();
        v25 = &v17;
        v9 = MEMORY[0x28223BE20](&v17, v34, v29, v8);
        v24 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v31 + 16))(v9);
        v26 = sub_22603E5E0(v24);
        [v27 setOriginalAsrId_];
      }

      (*(v31 + 8))(v34, v29);
    }
  }

  v11 = v47;
  if (v47)
  {
    v23 = v47;
    v22 = v47;
  }

  else
  {
    v22 = 0;
  }

  v20 = v22;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v21 = &v17;
  v18 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17, v13, v14, v15);
  v19 = &v17 - v18;
  v16 = sub_226098A78();
  (*(*(v16 - 8) + 56))(v19, 1);
  sub_2260430A0(v20, v19);
  sub_225F7C078(v19);
}

unint64_t sub_226045530()
{
  v2 = qword_27D786F70;
  if (!qword_27D786F70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F70);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226045594()
{
  v2 = qword_27D786F78;
  if (!qword_27D786F78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F78);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_22604578C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = a1;
  v41 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v39 = 0;
  v49 = 0;
  v43 = sub_226098C58();
  v44 = *(v43 - 8);
  v45 = v44;
  v46 = *(v44 + 64);
  MEMORY[0x28223BE20](0, v42, v43, v3);
  v47 = v14 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v4;
  v56 = v5;
  v54 = v2;
  sub_226046120();
  v48 = sub_225F26174();
  if (v48)
  {
    v38 = v48;
    v35 = v48;
    v49 = v48;
    sub_2260998E8();
    v34 = sub_2260999F8();

    [v35 setPostItn_];

    v36 = v35;
    v37 = v39;
  }

  else
  {
    v6 = v47;
    v7 = sub_226040700();
    (*(v45 + 16))(v6, v7, v43);
    v32 = sub_226098C48();
    v29 = v32;
    v31 = sub_22609A078();
    v30 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v33 = sub_22609A4F8();
    if (os_log_type_enabled(v32, v31))
    {
      v8 = v39;
      v20 = sub_22609A188();
      v16 = v20;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v18 = 0;
      v21 = sub_225EF5468(0);
      v19 = v21;
      v22 = sub_225EF5468(v18);
      v53 = v20;
      v52 = v21;
      v51 = v22;
      v23 = 0;
      v24 = &v53;
      sub_225EF54BC(0, &v53);
      sub_225EF54BC(v23, v24);
      v50 = v33;
      v25 = v14;
      MEMORY[0x28223BE20](v14, v9, v10, v11);
      v26 = &v14[-6];
      v14[-4] = v12;
      v14[-3] = &v52;
      v14[-2] = &v51;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v28 = v8;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v29, v30, "Failed to create ASROneBestTranscriptTier1", v16, 2u);
        v14[1] = 0;
        sub_225EF7AF4(v19);
        sub_225EF7AF4(v22);
        sub_22609A168();

        v15 = v28;
      }
    }

    else
    {

      v15 = v39;
    }

    v14[0] = v15;

    (*(v45 + 8))(v47, v43);
    v36 = 0;
    v37 = v14[0];
  }

  return v36;
}

id CESASelfHelper.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for CESASelfHelper();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id CESASelfHelper.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CESASelfHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_226045F50(uint64_t a1)
{
  v4 = sub_226098A38();
  v6 = [v1 initWithNSUUID_];
  MEMORY[0x277D82BD8](v4);
  v2 = sub_226098A78();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

unint64_t sub_226045FF4()
{
  v2 = qword_27D786F80;
  if (!qword_27D786F80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046058()
{
  v2 = qword_27D786F88;
  if (!qword_27D786F88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260460BC()
{
  v2 = qword_27D786F90;
  if (!qword_27D786F90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F90);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046120()
{
  v2 = qword_27D786F98;
  if (!qword_27D786F98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046184()
{
  v2 = qword_280D763C8;
  if (!qword_280D763C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260461E8()
{
  v2 = qword_280D763D0;
  if (!qword_280D763D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604624C()
{
  v2 = qword_280D76620;
  if (!qword_280D76620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D785E80, &unk_22609F9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260462D4()
{
  v2 = qword_27D786FD8;
  if (!qword_27D786FD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FD8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046338()
{
  v2 = qword_280D763D8;
  if (!qword_280D763D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604639C()
{
  v2 = qword_27D786FE0;
  if (!qword_27D786FE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046400()
{
  v2 = qword_27D786FE8;
  if (!qword_27D786FE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046464()
{
  v2 = qword_27D786FF0;
  if (!qword_27D786FF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046574()
{
  v2 = qword_27D786FF8;
  if (!qword_27D786FF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226046664()
{
  v2 = qword_27D787000;
  if (!qword_27D787000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226046714(unsigned int a1, void *a2)
{
  v199 = a2;
  v212 = a1;
  v194 = a1;
  v232 = 0;
  v198 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v195 = 0;
  v196 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v197 = &v86 - v196;
  v200 = sub_226098C58();
  v201 = *(v200 - 8);
  v202 = v201;
  v203 = *(v201 + 64);
  MEMORY[0x28223BE20](v198, v199, v200, v6);
  v205 = (v203 + 15) & 0xFFFFFFFFFFFFFFF0;
  v204 = &v86 - v205;
  MEMORY[0x28223BE20](v7, v8, &v86 - v205, v9);
  v206 = &v86 - v205;
  v232 = v10;
  v231 = v11;
  v230 = v2;
  v218 = sub_226098A78();
  v207 = v218;
  v208 = *(v218 - 8);
  v216 = v208;
  v209 = v208;
  v210 = *(v208 + 64);
  MEMORY[0x28223BE20](v218 - 8, v218, v12, v13);
  v211 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = v211;
  v213 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v212, v15, v16, v17);
  v217 = &v86 - v213;
  v214 = &v86 - v213;
  sub_2260484EC();
  v215 = v18;
  sub_226098A18();

  if ((*(v216 + 48))(v217, 1, v218) == 1)
  {
    v68 = v204;
    sub_225F7C078(v214);
    v69 = sub_226047F30();
    (*(v202 + 16))(v68, v69, v200);
    v106 = 17;
    v111 = 7;
    v112 = swift_allocObject();
    *(v112 + 16) = v194;
    v122 = sub_226098C48();
    v104 = v122;
    v121 = sub_22609A098();
    v105 = v121;
    v115 = swift_allocObject();
    v107 = v115;
    v108 = 32;
    *(v115 + 16) = 32;
    v70 = swift_allocObject();
    v71 = v108;
    v116 = v70;
    v109 = v70;
    *(v70 + 16) = 8;
    v110 = v71;
    v72 = swift_allocObject();
    v73 = v112;
    v113 = v72;
    *(v72 + 16) = sub_226048A58;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    v75 = v113;
    v119 = v74;
    v114 = v74;
    *(v74 + 16) = sub_225EF7B84;
    *(v74 + 24) = v75;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v117 = sub_22609A4F8();
    v118 = v76;

    v77 = v115;
    v78 = v118;
    *v118 = sub_225EF7434;
    v78[1] = v77;

    v79 = v116;
    v80 = v118;
    v118[2] = sub_225EF7434;
    v80[3] = v79;

    v81 = v118;
    v82 = v119;
    v118[4] = sub_225EF7B90;
    v81[5] = v82;
    sub_225EF5418();

    if (os_log_type_enabled(v122, v121))
    {
      v83 = v195;
      v97 = sub_22609A188();
      v94 = v97;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v98 = sub_225EF5468(0);
      v96 = v98;
      v100 = 1;
      v99 = sub_225EF5468(1);
      v228 = v97;
      v227 = v98;
      v226 = v99;
      v101 = &v228;
      sub_225EF54BC(2, &v228);
      sub_225EF54BC(v100, v101);
      v224 = sub_225EF7434;
      v225 = v107;
      sub_225EF73E8(&v224, v101, &v227, &v226);
      v102 = v83;
      v103 = v83;
      if (v83)
      {
        v92 = 0;

        __break(1u);
      }

      else
      {
        v224 = sub_225EF7434;
        v225 = v109;
        sub_225EF73E8(&v224, &v228, &v227, &v226);
        v90 = 0;
        v91 = 0;
        v224 = sub_225EF7B90;
        v225 = v114;
        sub_225EF73E8(&v224, &v228, &v227, &v226);
        v88 = 0;
        v89 = 0;
        _os_log_impl(&dword_225EEB000, v104, v105, "Invalid codepath UUID string: %s", v94, 0xCu);
        sub_225EF7AF4(v96);
        sub_225EF7AF4(v99);
        sub_22609A168();

        v93 = v88;
      }
    }

    else
    {
      v84 = v195;

      v93 = v84;
    }

    v87 = v93;

    (*(v202 + 8))(v204, v200);
    return v87;
  }

  else
  {
    v19 = v206;
    v163 = *(v209 + 32);
    v162 = v209 + 32;
    v154 = v163;
    v155 = (v209 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v163(v211, v214, v207);
    v20 = sub_226047F30();
    (*(v202 + 16))(v19, v20, v200);
    v164 = &v86;
    v22 = MEMORY[0x28223BE20](&v86, v211, v207, v21);
    v161 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(v209 + 16);
    v158 = v209 + 16;
    v156 = v24;
    v157 = (v209 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v22);
    v159 = *(v158 + 64);
    v160 = (v159 + 16) & ~v159;
    v169 = swift_allocObject();
    v163((v169 + v160), v161, v207);
    v25 = v199;
    v178 = 7;
    v179 = swift_allocObject();
    *(v179 + 16) = v199;
    v192 = sub_226098C48();
    v165 = v192;
    v191 = sub_22609A088();
    v166 = v191;
    v173 = 17;
    v182 = swift_allocObject();
    v167 = v182;
    v172 = 32;
    *(v182 + 16) = 32;
    v26 = swift_allocObject();
    v27 = v172;
    v183 = v26;
    v168 = v26;
    v175 = 8;
    *(v26 + 16) = 8;
    v177 = v27;
    v28 = swift_allocObject();
    v29 = v169;
    v170 = v28;
    *(v28 + 16) = sub_2260498E0;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v170;
    v184 = v30;
    v171 = v30;
    *(v30 + 16) = sub_225EF7B84;
    *(v30 + 24) = v31;
    v185 = swift_allocObject();
    v174 = v185;
    *(v185 + 16) = v172;
    v186 = swift_allocObject();
    v176 = v186;
    *(v186 + 16) = v175;
    v32 = swift_allocObject();
    v33 = v179;
    v180 = v32;
    *(v32 + 16) = sub_226049944;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v180;
    v189 = v34;
    v181 = v34;
    *(v34 + 16) = sub_225EF7B84;
    *(v34 + 24) = v35;
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v187 = sub_22609A4F8();
    v188 = v36;

    v37 = v182;
    v38 = v188;
    *v188 = sub_225EF7434;
    v38[1] = v37;

    v39 = v183;
    v40 = v188;
    v188[2] = sub_225EF7434;
    v40[3] = v39;

    v41 = v184;
    v42 = v188;
    v188[4] = sub_225EF7B90;
    v42[5] = v41;

    v43 = v185;
    v44 = v188;
    v188[6] = sub_225EF7434;
    v44[7] = v43;

    v45 = v186;
    v46 = v188;
    v188[8] = sub_225EF7434;
    v46[9] = v45;

    v47 = v188;
    v48 = v189;
    v188[10] = sub_225EF7B90;
    v47[11] = v48;
    sub_225EF5418();

    if (os_log_type_enabled(v192, v191))
    {
      v49 = v195;
      v147 = sub_22609A188();
      v144 = v147;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v148 = sub_225EF5468(0);
      v146 = v148;
      v150 = 2;
      v149 = sub_225EF5468(2);
      v223 = v147;
      v222 = v148;
      v221 = v149;
      v151 = &v223;
      sub_225EF54BC(v150, &v223);
      sub_225EF54BC(v150, v151);
      v219 = sub_225EF7434;
      v220 = v167;
      sub_225EF73E8(&v219, v151, &v222, &v221);
      v152 = v49;
      v153 = v49;
      if (v49)
      {
        v142 = 0;

        __break(1u);
      }

      else
      {
        v219 = sub_225EF7434;
        v220 = v168;
        sub_225EF73E8(&v219, &v223, &v222, &v221);
        v140 = 0;
        v141 = 0;
        v219 = sub_225EF7B90;
        v220 = v171;
        sub_225EF73E8(&v219, &v223, &v222, &v221);
        v138 = 0;
        v139 = 0;
        v219 = sub_225EF7434;
        v220 = v174;
        sub_225EF73E8(&v219, &v223, &v222, &v221);
        v136 = 0;
        v137 = 0;
        v219 = sub_225EF7434;
        v220 = v176;
        sub_225EF73E8(&v219, &v223, &v222, &v221);
        v134 = 0;
        v135 = 0;
        v219 = sub_225EF7B90;
        v220 = v181;
        sub_225EF73E8(&v219, &v223, &v222, &v221);
        v132 = 0;
        v133 = 0;
        _os_log_impl(&dword_225EEB000, v165, v166, "Enqueuing experiment trigger log on a background task. codepathId=%s requestId=%s", v144, 0x16u);
        sub_225EF7AF4(v146);
        sub_225EF7AF4(v149);
        sub_22609A168();

        v143 = v132;
      }
    }

    else
    {
      v50 = v195;

      v143 = v50;
    }

    v130 = v143;

    (*(v202 + 8))(v206, v200);
    sub_226099D78();
    v127 = 0;
    v51 = sub_226099DA8();
    (*(*(v51 - 8) + 56))(v197, 0, 1);
    v129 = &v86;
    v53 = MEMORY[0x28223BE20](&v86, v211, v207, v52);
    v124 = &v86 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54(v53);
    v55 = v199;
    v123 = (v159 + 40) & ~v159;
    v125 = v123 + v210;
    v126 = (v123 + v210 + 8) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v193;
    v58 = v123;
    v59 = v124;
    v60 = v154;
    v61 = v127;
    v62 = v207;
    v128 = v56;
    v56[2] = v127;
    v56[3] = v61;
    v56[4] = v57;
    v60(v56 + v58, v59, v62);
    v63 = v126;
    v64 = v199;
    v65 = v127;
    v66 = v197;
    v67 = v128;
    *(v128 + v125) = v194;
    *(v67 + v63) = v64;
    sub_225F38F2C(v65, v65, v66, &unk_2260A1538, v67, MEMORY[0x277D84F78] + 8);

    (*(v209 + 8))(v211, v207);
    return v130;
  }
}

uint64_t sub_226047DE8()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76858);
  __swift_project_value_buffer(v1, qword_280D76858);
  return sub_226047E34();
}

uint64_t sub_226047E34()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226047F30()
{
  if (qword_280D76850 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76858);
}

BOOL sub_226047F9C()
{
  sub_22609A4F8();
  *v0 = "SIRI_SPEECH_SV_SPEECH_PROFILE";
  *(v0 + 8) = 29;
  *(v0 + 16) = 2;
  sub_225EF5418();
  v2 = sub_22609A478();

  return v2 != 0;
}

uint64_t sub_226048074()
{
  result = sub_22609A4F8();
  sub_225EF5418();
  return result;
}

BOOL sub_2260481D0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_226047F9C();
  *a2 = result;
  return result;
}

uint64_t sub_226048210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2260466E0();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_226048240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226048074();
  *a1 = result;
  return result;
}

uint64_t sub_226048280()
{
  sub_22609A4F8();
  *v0 = "564d6ff3-3ffe-4043-ae8f-a8cd94439700";
  *(v0 + 8) = 36;
  *(v0 + 16) = 2;
  *(v0 + 24) = "919f4f9e-5c16-4a9a-a5fe-961764dfe664";
  *(v0 + 32) = 36;
  *(v0 + 40) = 2;
  *(v0 + 48) = "92dead10-2f1e-4683-9870-8f8c48540c95";
  *(v0 + 56) = 36;
  *(v0 + 64) = 2;
  *(v0 + 72) = "ec4cd78f-f001-461c-a92a-b473eec3d65c";
  *(v0 + 80) = 36;
  *(v0 + 88) = 2;
  *(v0 + 96) = "cd58f65f-e518-49c3-9863-8fb2f43a8153";
  *(v0 + 104) = 36;
  *(v0 + 112) = 2;
  sub_225EF5418();
  v4 = sub_22609A478();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_12:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_12;
    case 2:
      v3 = 2;
      goto LABEL_12;
    case 3:
      v3 = 3;
      goto LABEL_12;
    case 4:
      v3 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_226048484()
{
  result = sub_22609A4F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  sub_225EF5418();
  return result;
}

uint64_t sub_22604874C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_226048280();
  *a2 = result;
  return result;
}

uint64_t sub_226048784@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_2260484EC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2260487B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226048484();
  *a1 = result;
  return result;
}

uint64_t sub_2260487E4()
{
  sub_226098BD8();
  result = sub_226098BC8();
  qword_280D77718 = result;
  return result;
}

uint64_t *sub_226048818()
{
  if (qword_280D76CC8 != -1)
  {
    swift_once();
  }

  return &qword_280D77718;
}

uint64_t sub_226048878()
{
  v0 = sub_226048818();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_2260488B0(unsigned int a1, uint64_t a2)
{
  v11 = a1;
  v13 = a2;
  v20 = 0;
  v22 = a1;
  v21 = a2;
  v15 = 0;
  v12 = type metadata accessor for CESAExperimentationManager();
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v2, v3, v4);
  v16 = &v7 - v14;
  sub_225F7BF50(v5, &v7 - v14);
  v17 = sub_226098A78();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  if ((*(v18 + 48))(v16, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_226098A38();
    (*(v18 + 8))(v16, v17);
    v10 = v9;
  }

  v8 = v10;
  sub_226046714(v11, v10);
  return MEMORY[0x277D82BD8](v8);
}

uint64_t sub_226048A84(void *a1)
{
  if (!a1)
  {
    return sub_226099AA8();
  }

  MEMORY[0x277D82BE0](a1);
  v5 = [a1 UUIDString];
  v6 = sub_226099A08();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t sub_226048C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 64) = a7;
  *(v7 + 161) = a6;
  *(v7 + 56) = a5;
  *(v7 + 16) = v7;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 160) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  v8 = sub_226098C58();
  *(v7 + 72) = v8;
  v12 = *(v8 - 8);
  *(v7 + 80) = v12;
  v9 = *(v12 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 160) = a6;
  *(v7 + 40) = a7;
  v10 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_226048D5C, 0, 0);
}

uint64_t sub_226048D5C()
{
  v14 = MEMORY[0x277CE4828];
  v13 = *(v0 + 161);
  v10 = *(v0 + 56);
  *(v0 + 16) = v0;
  v1 = sub_226048818();
  v12 = *v1;
  *(v0 + 96) = *v1;
  MEMORY[0x277D82BE0](v12);
  v11 = sub_226098A78();
  *(v0 + 104) = v11;
  v9 = *(v11 - 8);
  *(v0 + 112) = v9;
  v2 = *(v9 + 64) + 15;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  (*(v9 + 16))(v3, v10, v11);
  v19 = sub_226098A38();
  *(v0 + 128) = v19;
  sub_22604826C();
  v16 = sub_2260466E0();
  v17 = v4;
  *(v0 + 136) = v4;
  v18 = (v14 + *v14);
  v5 = v14[1];
  v6 = swift_task_alloc();
  v15[18] = v6;
  *v6 = v15[2];
  v6[1] = sub_226048F44;
  v7 = v15[8];

  return v18(v19, v16, v17, v7);
}

uint64_t sub_226048F44()
{
  v13 = *v1;
  v2 = *(*v1 + 144);
  v13[2] = *v1;
  v14 = v13 + 2;
  v13[19] = v0;

  if (v0)
  {
    v7 = *v14;

    return MEMORY[0x2822009F8](sub_22604917C, 0, 0);
  }

  else
  {
    v3 = v13[17];
    v8 = v13[16];
    v11 = v13[15];
    v9 = v13[14];
    v10 = v13[13];
    v12 = v13[12];

    (*(v9 + 8))(v11, v10);

    v4 = v13[11];

    v5 = *(*v14 + 8);

    return v5();
  }
}

uint64_t sub_22604917C()
{
  v40 = v0;
  v26 = v0[19];
  v1 = v0[17];
  v19 = v0[16];
  v22 = v0[15];
  v20 = v0[14];
  v21 = v0[13];
  v23 = v0[12];
  v2 = v0[11];
  v24 = v0[10];
  v25 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v21);

  MEMORY[0x277D82BD8](v23);
  v3 = v26;
  v0[6] = v26;
  v4 = sub_226047F30();
  (*(v24 + 16))(v2, v4, v25);
  v5 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v33 = sub_226098C48();
  v34 = sub_22609A098();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_22602A774;
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225EF7B84;
  *(v31 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v32 = v6;

  *v32 = sub_225EF7434;
  v32[1] = v29;

  v32[2] = sub_225EF7434;
  v32[3] = v30;

  v32[4] = sub_225EF7B90;
  v32[5] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v33, v34))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v16 = sub_225EF5468(0);
    v17 = sub_225EF5468(1);
    v35 = buf;
    v36 = v16;
    v37 = v17;
    sub_225EF54BC(2, &v35);
    sub_225EF54BC(1, &v35);
    v38 = sub_225EF7434;
    v39 = v29;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v30;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7B90;
    v39 = v31;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_225EEB000, v33, v34, "Error emitting codepath trigger: %s", buf, 0xCu);
    sub_225EF7AF4(v16);
    sub_225EF7AF4(v17);
    sub_22609A168();
  }

  else
  {
  }

  v14 = v18[19];
  v12 = v18[11];
  v13 = v18[9];
  v11 = v18[10];
  MEMORY[0x277D82BD8](v33);
  (*(v11 + 8))(v12, v13);

  v7 = v18[11];

  v8 = *(v18[2] + 8);
  v9 = v18[2];

  return v8();
}

uint64_t sub_2260498E0()
{
  v1 = *(sub_226098A78() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_226048A60();
}

uint64_t sub_22604994C(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_226098A78() - 8);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v3 = v11 + *(v6 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v12 = *(v1 + v3);
  v13 = *(v1 + ((v3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226048C04(a1, v8, v9, v10, v1 + v11, v12, v13);
}

unint64_t sub_226049AB8()
{
  v2 = qword_27D787008;
  if (!qword_27D787008)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226049B34()
{
  v2 = qword_27D787010;
  if (!qword_27D787010)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226049BEC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_226049D54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_226049F7C()
{
  v2 = qword_27D787018;
  if (!qword_27D787018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787020, qword_2260A1590);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604A01C()
{
  v2 = qword_27D787028;
  if (!qword_27D787028)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604A0B0()
{
  v2 = qword_27D787030;
  if (!qword_27D787030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787038, qword_2260A1638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604A150()
{
  v2 = qword_27D787040;
  if (!qword_27D787040)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787040);
    return WitnessTable;
  }

  return v2;
}

uint64_t CESAContextualData.__allocating_init(assets:taskName:applicationName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return CESAContextualData.init(assets:taskName:applicationName:)(a1, a2, a3, a4, a5);
}

uint64_t CESAContextualData.init(assets:taskName:applicationName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v18 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v25 = sub_2260997E8();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v6 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v25, v24, v25, v20);
  v17 = &v17 - v8;
  v32 = v9;
  v30 = v18;
  v31 = v21;
  v28 = v10;
  v29 = v11;
  v27 = v5;
  (*(v22 + 16))(v7);
  (*(v22 + 32))(v5 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets, v17, v25);
  sub_2260998E8();
  v12 = v21;
  v13 = (v5 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  *v13 = v18;
  v13[1] = v12;
  sub_2260998E8();
  v14 = v19;
  v15 = (v5 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  *v15 = v20;
  v15[1] = v14;

  (*(v22 + 8))(v24, v25);
  return v26;
}

uint64_t CESAContextualData.fetchNamedEntities(timeInterval:)(double a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *(v2 + 368) = v1;
  *(v2 + 360) = a1;
  *(v2 + 192) = v2;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 240) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 296) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 328) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  v3 = sub_226099628();
  *(v2 + 376) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 384) = swift_task_alloc();
  v5 = sub_2260996E8();
  *(v2 + 392) = v5;
  v13 = *(v5 - 8);
  *(v2 + 400) = v13;
  v6 = *(v13 + 64) + 15;
  *(v2 + 408) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787060, &qword_2260A1758) - 8) + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v8 = sub_226099698();
  *(v2 + 424) = v8;
  v14 = *(v8 - 8);
  *(v2 + 432) = v14;
  *(v2 + 440) = *(v14 + 64);
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787068, &qword_2260A1760) - 8) + 64) + 15;
  *(v2 + 464) = swift_task_alloc();
  v10 = sub_2260997E8();
  *(v2 + 472) = v10;
  v15 = *(v10 - 8);
  *(v2 + 480) = v15;
  v16 = *(v15 + 64);
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  *MEMORY[0x277D85DE8];
  v11 = *(v2 + 192);

  return MEMORY[0x2822009F8](sub_22604A768, 0, 0);
}

uint64_t sub_22604A768()
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = v0[62];
  v10 = v0[60];
  v11 = v0[59];
  v8 = v0[47];
  v15 = v0[46];
  v0[24] = v0;
  v9 = swift_allocObject();
  v0[63] = v9;
  v0[27] = v9 + 16;
  *(v9 + 16) = sub_22609A4F8();
  sub_22604CA6C();
  v1 = sub_225F26174();
  v0[64] = v1;
  v0[28] = v1;
  v2 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets;
  v3 = *(v10 + 16);
  v0[65] = v3;
  v0[66] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v12, v15 + v2, v11);
  v13 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  v14 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName + 8);
  v0[67] = v14;
  sub_2260998E8();
  v16 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  v17 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName + 8);
  v0[68] = v17;
  sub_2260998E8();
  v4 = *(MEMORY[0x277CDCDE8] + 4);
  v18 = swift_task_alloc();
  v0[69] = v18;
  *v18 = v0[24];
  v18[1] = sub_22604A9A8;
  v5 = *MEMORY[0x277D85DE8] - v19;
  v6 = v0[62];

  return MEMORY[0x28212C2F0](v13, v14, v16, v17);
}

uint64_t sub_22604A9A8(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = *v2;
  v4 = *(*v2 + 552);
  v16[24] = *v2;
  v17 = v16 + 24;
  v16[70] = a1;
  v16[71] = v1;

  if (v1)
  {
    v7 = __OFSUB__(*MEMORY[0x277D85DE8], v18);
    v8 = sub_22604C674;
    v10 = *v17;
  }

  else
  {
    v5 = v16[68];
    v12 = v16[67];
    v14 = v16[62];
    v13 = v16[60];
    v15 = v16[59];

    v6 = *(v13 + 8);
    v16[72] = v6;
    v16[73] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v14, v15);
    v7 = __OFSUB__(*MEMORY[0x277D85DE8], v18);
    v8 = sub_22604ABE8;
    v9 = *v17;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22604ABE8()
{
  v74 = *MEMORY[0x277D85DE8];
  v1 = v0[70];
  v0[24] = v0;
  v0[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787078, &qword_2260A1768);
  sub_22604CAD0();
  sub_22609A028();
  while (1)
  {
    v71 = v73[58];
    v72 = v73[53];
    v70 = v73[54];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787088, &qword_2260A1770);
    sub_22609A388();
    if ((*(v70 + 48))(v71, 1, v72) == 1)
    {
      break;
    }

    v2 = v73[58];
    v67 = v73[57];
    v3 = v73[53];
    v4 = (v73[54] + 32);
    v66 = *v4;
    (*v4)();
    sub_22604D48C();
    v68 = sub_225F26174();
    v73[42] = v68;
    sub_226099658();
    v69 = sub_226099F58();

    if ((v69 & 1) == 0)
    {
      v5 = v73[57];
      sub_226099658();
      v65 = sub_226099ED8();

      [v68 setMatchingSourceBundleIds_];
      MEMORY[0x277D82BD8](v65);
    }

    v61 = v73[64];
    v55 = v73[63];
    v53 = v73[57];
    v58 = v73[56];
    v54 = v73[55];
    v59 = v73[53];
    v46 = v73[45];
    v52 = v73[54];
    v48 = sub_226098A08();
    v41 = *(v48 - 8);
    v45 = *(v41 + 64);
    v43 = swift_task_alloc();
    v42 = swift_task_alloc();
    sub_226099688();
    sub_2260989C8();
    v49 = *(v41 + 8);
    v49(v42, v48);

    v44 = sub_2260989D8();
    v49(v43, v48);

    [v68 setFromDate_];
    MEMORY[0x277D82BD8](v44);
    v50 = swift_task_alloc();
    v47 = swift_task_alloc();
    sub_226099678();
    sub_2260989C8();
    v49(v47, v48);

    v51 = sub_2260989D8();
    v49(v50, v48);

    [v68 setToDate_];
    MEMORY[0x277D82BD8](v51);
    v56 = swift_allocObject();
    v73[43] = v56 + 16;
    *(v56 + 16) = 0;

    (*(v52 + 16))(v58, v53, v59);
    v57 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v55;
    *(v60 + 24) = v56;
    (v66)(v60 + v57, v58, v59);
    v73[6] = sub_22604D4F0;
    v73[7] = v60;
    v73[2] = MEMORY[0x277D85DD0];
    *(v73 + 6) = 1107296256;
    *(v73 + 7) = 0;
    v73[4] = sub_22604D148;
    v73[5] = &block_descriptor_2;
    v63 = _Block_copy(v73 + 2);
    v6 = v73[7];

    v73[44] = 0;
    v64 = [v61 iterRankedNamedEntitiesWithQuery:v68 error:v73 + 44 block:v63];
    v62 = v73[44];
    MEMORY[0x277D82BE0](v62);
    MEMORY[0x277D82BD8](0);
    _Block_release(v63);
    if ((v64 & 1) == 0)
    {
      v19 = v73[64];
      v20 = v73[63];
      v17 = v73[57];
      v18 = v73[53];
      v16 = v73[54];
      sub_2260988E8();
      MEMORY[0x277D82BD8](v62);
      swift_willThrow();

      MEMORY[0x277D82BD8](v68);
      (*(v16 + 8))(v17, v18);
      sub_225EFE6E8(v73 + 14);
      MEMORY[0x277D82BD8](v19);

      v11 = v73[62];
      v21 = v73[61];
      v22 = v73[58];
      v23 = v73[57];
      v24 = v73[56];
      v25 = v73[52];
      v26 = v73[51];
      v27 = v73[48];

      v12 = *MEMORY[0x277D85DE8] - v74;
      v13 = *(v73[24] + 8);
      v14 = v73[24];

      return v13();
    }

    v39 = v73[57];
    v40 = v73[53];
    v38 = v73[54];

    MEMORY[0x277D82BD8](v68);
    (*(v38 + 8))(v39, v40);
  }

  v29 = v73[66];
  v30 = v73[65];
  v31 = v73[61];
  v28 = v73[59];
  v34 = v73[46];
  sub_225EFE6E8(v73 + 14);
  sub_22604CB58();
  v7 = sub_225F26174();
  v73[74] = v7;
  v73[30] = v7;
  v30(v31, v34 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets, v28);
  v32 = *(v34 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  v33 = *(v34 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName + 8);
  v73[75] = v33;
  sub_2260998E8();
  v35 = *(v34 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  v36 = *(v34 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName + 8);
  v73[76] = v36;
  sub_2260998E8();
  v8 = *(MEMORY[0x277CDCDF0] + 4);
  v37 = swift_task_alloc();
  v73[77] = v37;
  *v37 = v73[24];
  v37[1] = sub_22604B670;
  v9 = *MEMORY[0x277D85DE8] - v74;
  v10 = v73[61];

  return MEMORY[0x28212C2F8](v32, v33, v35, v36);
}

uint64_t sub_22604B670(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = *v2;
  v4 = *(*v2 + 616);
  v16[24] = *v2;
  v17 = v16 + 24;
  v16[78] = a1;
  v16[79] = v1;

  if (v1)
  {
    v6 = __OFSUB__(*MEMORY[0x277D85DE8], v18);
    v7 = sub_22604C864;
    v9 = *v17;
  }

  else
  {
    v5 = v16[76];
    v11 = v16[75];
    v14 = v16[73];
    v15 = v16[72];
    v12 = v16[61];
    v13 = v16[59];

    v15(v12, v13);
    v6 = __OFSUB__(*MEMORY[0x277D85DE8], v18);
    v7 = sub_22604B89C;
    v8 = *v17;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22604B89C()
{
  v62 = *MEMORY[0x277D85DE8];
  v1 = v0[78];
  v0[24] = v0;
  v0[31] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787098, &qword_2260A1778);
  sub_22604D1C8();
  sub_22609A028();
  while (1)
  {
    v58 = v60[52];
    v59 = v60[49];
    v57 = v60[50];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870A8, &qword_2260A1780);
    sub_22609A388();
    if ((*(v57 + 48))(v58, 1, v59) == 1)
    {
      break;
    }

    v52 = v60[74];
    v2 = v60[52];
    v46 = v60[51];
    v3 = v60[49];
    v43 = v60[45];
    (*(v60[50] + 32))();
    sub_22604D250();
    v51 = sub_225F26174();
    v60[32] = v51;
    sub_2260996B8();
    v41 = sub_2260999F8();

    [v51 setBundleID_];
    MEMORY[0x277D82BD8](v41);
    v47 = sub_226098A08();
    v44 = *(v47 - 8);
    v42 = *(v44 + 64);
    v49 = swift_task_alloc();
    v45 = swift_task_alloc();
    sub_2260996D8();
    sub_2260989C8();
    v48 = *(v44 + 8);
    v48(v45, v47);

    v50 = sub_2260989D8();
    v48(v49, v47);

    [v51 setSuggestionDate_];
    MEMORY[0x277D82BD8](v50);
    v53 = [v52 rankedGlobalSuggestionsFromContext:v51 contactsOnly:sub_2260996A8() & 1];
    sub_22604D2B4();
    v54 = sub_226099C88();
    v60[33] = v54;
    MEMORY[0x277D82BD8](v53);
    v60[34] = 0;
    sub_2260998E8();
    v60[35] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870C0, &qword_2260A1788);
    sub_22604D318();
    sub_22609A028();
    v55 = 0;
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870D0, &qword_2260A1790);
    sub_22609A388();
    v40 = v60[36];
    if (v40)
    {
      v60[37] = v40;
      v39 = [v40 recipients];
      if (v39)
      {
        sub_22604D3A0();
        v37 = sub_226099C88();
        MEMORY[0x277D82BD8](v39);
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v60[38] = v38;
      if (v60[38])
      {
        v61 = v60[38];
      }

      else
      {
        sub_22604D3A0();
        v61 = sub_22609A4F8();
        if (v60[38])
        {
          sub_225EFE6E8(v60 + 38);
        }
      }

      v60[39] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870E0, &qword_2260A1798);
      sub_22604D404();
      sub_22609A028();
      for (i = v55; ; ++i)
      {
LABEL_14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870F0, &unk_2260A17A0);
        sub_22609A388();
        v35 = v60[40];
        if (!v35)
        {
          sub_225EFE6E8(v60 + 20);
          MEMORY[0x277D82BD8](v40);
          v55 = i;
          goto LABEL_4;
        }

        v60[41] = v35;
        v34 = [v35 displayName];
        if (v34)
        {
          v30 = sub_226099A08();
          v31 = v4;
          MEMORY[0x277D82BD8](v34);
          v32 = v30;
          v33 = v31;
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        if (!v33)
        {
          goto LABEL_29;
        }

        v60[22] = v32;
        v60[23] = v33;
        if (sub_226099B18())
        {
          break;
        }

        v28 = v60[48];
        v27 = v60[63] + 16;
        sub_2260998E8();
        sub_226099618();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D20, &qword_2260A0F00);
        sub_226099CE8();
        result = swift_endAccess();
        v29 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
          return result;
        }

        v7 = v60[51];
        v60[34] = v29;
        if (v29 >= sub_2260996C8())
        {

          MEMORY[0x277D82BD8](v35);
          sub_225EFE6E8(v60 + 20);
          MEMORY[0x277D82BD8](v40);
          v26 = v56;
          goto LABEL_32;
        }

        MEMORY[0x277D82BD8](v35);
      }

LABEL_29:
      MEMORY[0x277D82BD8](v35);
      goto LABEL_14;
    }

    v26 = v56;
LABEL_32:
    v24 = v60[51];
    v25 = v60[49];
    v23 = v60[50];
    sub_225EFE6E8(v60 + 18);

    MEMORY[0x277D82BD8](v51);
    (*(v23 + 8))(v24, v25);
    v56 = v26;
  }

  v13 = v60[74];
  v14 = v60[64];
  v15 = v60[62];
  v16 = v60[61];
  v17 = v60[58];
  v18 = v60[57];
  v19 = v60[56];
  v20 = v60[52];
  v21 = v60[51];
  v22 = v60[48];
  v11 = (v60[63] + 16);
  sub_225EFE6E8(v60 + 16);
  swift_beginAccess();
  v12 = *v11;
  sub_2260998E8();
  swift_endAccess();
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v8 = *MEMORY[0x277D85DE8] - v62;
  v9 = *(v60[24] + 8);
  v10 = v60[24];

  return v9(v12);
}

uint64_t sub_22604C674()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = v0[68];
  v7 = v0[67];
  v11 = v0[64];
  v12 = v0[63];
  v9 = v0[62];
  v8 = v0[60];
  v10 = v0[59];
  v0[24] = v0;

  (*(v8 + 8))(v9, v10);
  MEMORY[0x277D82BD8](v11);

  v13 = v0[71];
  v2 = v0[62];
  v14 = v0[61];
  v15 = v0[58];
  v16 = v0[57];
  v17 = v0[56];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[48];

  v3 = *MEMORY[0x277D85DE8] - v21;
  v4 = *(v0[24] + 8);
  v5 = v0[24];

  return v4();
}

uint64_t sub_22604C864()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = v0[76];
  v7 = v0[75];
  v12 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v13 = v0[64];
  v14 = v0[63];
  v8 = v0[61];
  v9 = v0[59];
  v0[24] = v0;

  v11(v8, v9);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v15 = v0[79];
  v2 = v0[62];
  v16 = v0[61];
  v17 = v0[58];
  v18 = v0[57];
  v19 = v0[56];
  v20 = v0[52];
  v21 = v0[51];
  v22 = v0[48];

  v3 = *MEMORY[0x277D85DE8] - v23;
  v4 = *(v0[24] + 8);
  v5 = v0[24];

  return v4();
}

unint64_t sub_22604CA6C()
{
  v2 = qword_27D787070;
  if (!qword_27D787070)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D787070);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604CAD0()
{
  v2 = qword_27D787080;
  if (!qword_27D787080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787078, &qword_2260A1768);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604CB58()
{
  v2 = qword_27D787090;
  if (!qword_27D787090)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D787090);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_22604CBBC(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v49 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v43 = "Fatal error";
  v44 = "Not enough bits to represent the passed value";
  v45 = "Swift/Integers.swift";
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v51 = (*(*(sub_226099628() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v50, v49, v46, v47);
  v52 = v20 - v51;
  v64 = v6;
  v63 = v7;
  v62 = v8 + 16;
  v61 = v9 + 16;
  v60 = v10;
  v53 = [v6 item];
  v56 = [v53 name];
  v54 = sub_226099A08();
  v55 = v11;
  MEMORY[0x277D82BD8](v53);
  v57 = sub_226099B18();

  MEMORY[0x277D82BD8](v56);
  result = v57;
  if ((v57 & 1) == 0)
  {
    v38 = [v50 item];
    v41 = [v38 bestLanguage];
    v39 = sub_226099A08();
    v40 = v13;
    MEMORY[0x277D82BD8](v38);
    v42 = sub_226099B18();

    MEMORY[0x277D82BD8](v41);
    result = v42;
    if ((v42 & 1) == 0)
    {
      v33 = 0x1FB269000uLL;
      v30 = [v50 0x1FB2698F8];
      v29 = [v30 name];
      v31 = sub_226099A08();
      v32 = v14;
      MEMORY[0x277D82BD8](v30);
      [v50 score];
      v34 = v15;
      v35 = [v50 (v33 + 2296)];
      v36 = [v35 category];
      MEMORY[0x277D82BD8](v35);
      sub_225EF81A8();
      v37 = v16;
      if (v16 > 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_22609A3B8();
        __break(1u);
      }

      v21 = [v50 item];
      v24 = [v21 bestLanguage];
      v22 = sub_226099A08();
      v23 = v17;
      MEMORY[0x277D82BD8](v21);
      sub_226099608();
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v29);
      v25 = &v59;
      v26 = 33;
      v27 = 0;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D20, &qword_2260A0F00);
      sub_226099CE8();
      swift_endAccess();
      result = swift_beginAccess();
      v18 = *(v47 + 16);
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
      }

      else
      {
        v20[1] = v47 + 16;
        *(v47 + 16) = v28;
        swift_endAccess();
        v20[2] = &v58;
        swift_beginAccess();
        swift_endAccess();
        result = sub_226099668();
        if (v28 >= result)
        {
          *v49 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22604D148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  v5(a2, a3);
  MEMORY[0x277D82BD8](a2);
}

unint64_t sub_22604D1C8()
{
  v2 = qword_27D7870A0;
  if (!qword_27D7870A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787098, &qword_2260A1778);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7870A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604D250()
{
  v2 = qword_27D7870B0;
  if (!qword_27D7870B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604D2B4()
{
  v2 = qword_27D7870B8;
  if (!qword_27D7870B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604D318()
{
  v2 = qword_27D7870C8;
  if (!qword_27D7870C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7870C0, &qword_2260A1788);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7870C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604D3A0()
{
  v2 = qword_27D7870D8;
  if (!qword_27D7870D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604D404()
{
  v2 = qword_27D7870E8;
  if (!qword_27D7870E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7870E0, &qword_2260A1798);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7870E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604D48C()
{
  v2 = qword_27D7870F8;
  if (!qword_27D7870F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_22604D4F0(void *a1, _BYTE *a2)
{
  v3 = sub_226099698();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));

  return sub_22604CBBC(a1, a2, v4, v5, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_22604D5DC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets;
  v2 = sub_2260997E8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_22604D648()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  v3 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName + 8);
  sub_2260998E8();
  return v2;
}

uint64_t sub_22604D68C()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  v3 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName + 8);
  sub_2260998E8();
  return v2;
}

uint64_t CESAContextualData.deinit()
{
  v3 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets;
  v1 = sub_2260997E8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_225EFE6BC(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  sub_225EFE6BC(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  return v4;
}

uint64_t CESAContextualData.__deallocating_deinit()
{
  v0 = *CESAContextualData.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CESAContextualData()
{
  v1 = qword_27D787100;
  if (!qword_27D787100)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_22604D858()
{
  v2 = sub_2260997E8();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

__CFString *CESRSpeechProfileUpdateTypeDescription(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_27857F000[(a1 - 1)];
  }
}

__CFString *CESRSpeechProfileUpdateResultTypeDescription(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Undefined";
  }

  else
  {
    return off_27857F040[(a1 - 1)];
  }
}

void sub_22604E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CESRSpeechProfileBuilderServiceGetXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283963940];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_addVocabularyItems_sourceBundleIds_isBoosted_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

void ___reverseLookupFieldTypeFromOntologyLabel_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _reverseLookupFieldTypeFromOntologyLabel_lookupCache;
  _reverseLookupFieldTypeFromOntologyLabel_lookupCache = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = _reverseLookupFieldTypeFromOntologyLabel_validFieldTypes;
  _reverseLookupFieldTypeFromOntologyLabel_validFieldTypes = v2;

  if ((*MEMORY[0x277D22CB8] & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = *MEMORY[0x277D22CB8] + 1;
    do
    {
      if (KVFieldTypeIsValidForItemType())
      {
        v6 = _reverseLookupFieldTypeFromOntologyLabel_validFieldTypes;
        v7 = KVFieldTypeToNumber();
        [v6 addObject:v7];
      }

      ++v4;
    }

    while (v5 != v4);
  }
}

void sub_226050E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_226052060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2260541F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *CESRSpeechProfileAdminResultDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Undefined";
  }

  else
  {
    return off_27857F328[a1 - 1];
  }
}

id _BOOLValueForKey(const __CFString *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(a1, @"com.apple.SpeechProfile");
  if (v2 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "_BOOLValueForKey";
      v8 = 2112;
      v9 = v2;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_225EEB000, v3, OS_LOG_TYPE_ERROR, "%s value %@ for key %@ should respond to -BOOLValue", &v6, 0x20u);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_2260576D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__388(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226058D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _buildLaunchHandlerWithFunction(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___buildLaunchHandlerWithFunction_block_invoke;
  aBlock[3] = &unk_27857F470;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void _registerBGST(void *a1, void *a2)
{
  v3 = MEMORY[0x277CF0810];
  v4 = a2;
  v5 = a1;
  v6 = [v3 sharedScheduler];
  [v6 registerForTaskWithIdentifier:v5 usingQueue:0 launchHandler:v4];
}

void _submitBGSTRequest(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:v3];

  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  v9 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v9)
    {
      *buf = 136315394;
      v18 = "_submitBGSTRequest";
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Skipping submission of existing task %@.", buf, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 136315394;
      v18 = "_submitBGSTRequest";
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Starting submission of task %@.", buf, 0x16u);
    }

    v6 = v4[2](v4, v3);
    v10 = [MEMORY[0x277CF0810] sharedScheduler];
    v16 = 0;
    v11 = [v10 submitTaskRequest:v6 error:&v16];
    v12 = v16;

    v13 = *v7;
    v14 = *v7;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "_submitBGSTRequest";
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Successfully submitted task %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "_submitBGSTRequest";
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to submit task %@. Error: %@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id ___registerAndSubmitReplayRecordPruningBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF07D8];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3];

  [v4 setInterval:900.0];
  [v4 setPriority:2];

  return v4;
}

void ___registerAndSubmitReplayRecordPruningBGST_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = BiomeLibrary();
  v1 = [v0 Siri];
  v2 = [v1 ASR];
  v3 = [v2 ContextualReplayRecord];

  v4 = [v3 pruner];
  [v4 deleteWithPolicy:@"replay-record-pruning" eventsPassingTest:&__block_literal_global_373];

  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "_runReplayRecordPruning";
    _os_log_impl(&dword_225EEB000, v5, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering replay record pruning", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL ___runReplayRecordPruning_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  [v2 timestamp];
  v5 = Current - v4;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    [v2 timestamp];
    v16 = 136315650;
    v17 = "_runReplayRecordPruning_block_invoke";
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering replay record pruning for event of age %f with timestamp %f", &v16, 0x20u);
  }

  if (v5 >= 900.0)
  {
    v9 = objc_opt_class();
    v10 = [v2 eventBody];
    v11 = [v10 metadata];
    v12 = [v11 ids];
    v13 = [v12 asrId];
    [v9 logContextualReplayBiomeRecordDeleted:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5 >= 900.0;
}

id ___registerAndSubmitDailyANECompilationBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = _createGenericDailyMaintenanceRequest(a2);
  [v2 setRequiresExternalPower:0];

  return v2;
}

id _createGenericDailyMaintenanceRequest(void *a1)
{
  v1 = MEMORY[0x277CF07D8];
  v2 = a1;
  v3 = [[v1 alloc] initWithIdentifier:v2];

  [v3 setInterval:86400.0];
  [v3 setPriority:1];
  [v3 setRequiresUserInactivity:1];

  return v3;
}

void ___registerAndSubmitDailyANECompilationBGST_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  if (+[CESRUtilities isAutomaticCompilationEnabled])
  {
    [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:3 completion:&__block_literal_global_363];
  }

  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runDailyANECompilation";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering ANE compilation", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ___runDailyANECompilation_block_invoke()
{
  [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:7 completion:0];

  return +[CoreEmbeddedSpeechAnalyzer resetCache];
}

id _createGenericPostInstallUtilityRequest(void *a1)
{
  v1 = MEMORY[0x277CF07C8];
  v2 = a1;
  v3 = [[v1 alloc] initWithIdentifier:v2];

  [v3 setPostInstall:1];
  [v3 setPriority:2];

  return v3;
}

void ___registerAndSubmitPostInstallANECompilationBGST_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  if (+[CESRUtilities isAutomaticCompilationEnabled])
  {
    [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:3 completion:&__block_literal_global_356];
  }

  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runPostInstallANECompilation";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering ANE compilation", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ___runPostInstallANECompilation_block_invoke()
{
  [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:7 completion:0];

  return +[CoreEmbeddedSpeechAnalyzer resetCache];
}

void ___registerAndSubmitDailyAssetSubscriptionCleanupBGST_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  +[CoreEmbeddedSpeechRecognizer cleanupUnusedSubscriptions];
  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runSubscriptionCleanup";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering daily subscription cleanup.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void ___registerAndSubmitPostInstallAssetSubscriptionBGST_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  +[CoreEmbeddedSpeechRecognizer handlePostInstallSubscriptions];
  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "_runPostInstallAssetSubscription";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering post-install subscription.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

id ___registerAndSubmitDailySpeechProfileMaintenanceBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF07D8];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3];

  [v4 setPriority:1];
  [v4 setInterval:86400.0];
  [v4 setRequiresNetworkConnectivity:0];
  [v4 setRequiresExternalPower:1];

  return v4;
}

void ___registerAndSubmitDailySpeechProfileMaintenanceBGST_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CEF0E8];
  v1 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_runDailySpeechProfileMaintenance";
    _os_log_impl(&dword_225EEB000, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering daily speech profile maintenance.", &v5, 0xCu);
  }

  v2 = +[CESRSpeechProfileDispatcher sharedDispatcher];
  [v2 runMaintenanceWithShouldDefer:0 completion:0];

  v3 = *v0;
  if (os_log_type_enabled(*v0, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_runDailySpeechProfileMaintenance";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering daily speech profile maintenance.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

id ___registerAndSubmitPostInstallSpeechProfileMigrationBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF07C8];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3];

  [v4 setPostInstall:1];
  [v4 setPriority:2];
  [v4 setTrySchedulingBefore:300.0];
  [v4 setRequiresNetworkConnectivity:0];
  [v4 setRequiresExternalPower:0];
  [v4 setRequiresProtectionClass:4];

  return v4;
}

void ___buildLaunchHandlerWithFunction_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___buildLaunchHandlerWithFunction_block_invoke_2;
  v14[3] = &unk_27857F448;
  v14[4] = &v15;
  [v3 setExpirationHandler:v14];
  (*(*(a1 + 32) + 16))();
  v4 = *(v16 + 24);
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  v7 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v7)
    {
      *buf = 136315138;
      v20 = "_buildLaunchHandlerWithFunction_block_invoke";
      _os_log_debug_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: ExpirationHandler called.", buf, 0xCu);
    }

    v13 = 0;
    v8 = [v3 setTaskExpiredWithRetryAfter:&v13 error:0.0];
    v9 = v13;
    if ((v8 & 1) == 0)
    {
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v12 = @"Unknown";
        if (v9)
        {
          v12 = v9;
        }

        *buf = 136315394;
        v20 = "_buildLaunchHandlerWithFunction_block_invoke";
        v21 = 2112;
        v22 = v12;
        _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to expire task with error: %@", buf, 0x16u);
      }

      [v3 setTaskCompleted];
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v20 = "_buildLaunchHandlerWithFunction_block_invoke";
      _os_log_debug_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: Task completed before expiration.", buf, 0xCu);
    }

    [v3 setTaskCompleted];
  }

  _Block_object_dispose(&v15, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22605CBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___registerAndSubmitPostInstallSpeechProfileMigrationBGST_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CEF0E8];
  v1 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_runPostInstallSpeechProfileMigration";
    _os_log_impl(&dword_225EEB000, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering post-install speech profile migration.", &v5, 0xCu);
  }

  v2 = +[CESRSpeechProfileDispatcher sharedDispatcher];
  [v2 runMigration:0];

  v3 = *v0;
  if (os_log_type_enabled(*v0, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_runPostInstallSpeechProfileMigration";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering post-install speech profile migration.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22605F130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__941(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226062088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1057(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22606315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AFPhrasesAndUtterancesForEARSausage_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [v5 objectAtIndexedSubscript:*(a1 + 56)];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 40) objectAtIndexedSubscript:v8];
  v10 = [CESRUtilities afTokensForEARTokens:v9 removeSpaceBefore:*(a1 + 64)];
  if ([v10 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277CEF458]);
    [v11 setTokens:v10];
    v12 = [*(a1 + 48) containsObject:v11];
    v13 = *(a1 + 48);
    if (v12)
    {
      v14 = [v13 indexOfObject:v11];
    }

    else
    {
      v14 = [v13 count];
      [*(a1 + 48) addObject:v11];
    }

    v15 = [v6 interpretationIndices];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    v17 = [v15 arrayByAddingObject:v16];
    [v6 setInterpretationIndices:v17];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      v22 = 0.0;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v26 + 1) + 8 * i) confidence];
          v22 = v22 + v24;
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 0.0;
    }

    [v6 setConfidenceScore:{(v22 + objc_msgSend(v6, "confidenceScore"))}];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void *CESRSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

id CESRISO8601StringForDate(void *a1)
{
  v1 = MEMORY[0x277CCAA68];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setFormatOptions:{objc_msgSend(v3, "formatOptions") | 0x800}];
  v4 = [v3 stringFromDate:v2];

  return v4;
}

id CESRLaterDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    if (!v3 || v4)
    {
      if (v3 || !v4)
      {
        v6 = [v3 laterDate:v4];
      }

      else
      {
        v6 = v4;
      }
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _speechCategoriesDescription(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

void sub_22606B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22606BB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void sub_22606C03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void sub_22606C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22606CA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22606CE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22606D260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22606D66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22606DA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22606DD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226072938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1922(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226075064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CESRSpeechServiceGetXPCInterface()
{
  v30[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2839639A0];
  v1 = MEMORY[0x277CBEB98];
  v30[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_startSpeechRecognitionWithParameters_didStartHandler_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v29 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_startSpeechRecognitionWithParameters_didStartHandlerWithInfo_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_startSpeechRecognitionWithParameters_didStartHandlerWithInfo_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion_ argumentIndex:3 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_fetchModelPropertiesForAssetConfig_completion_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_fetchModelPropertiesForAssetConfig_completion_ argumentIndex:0 ofReply:0];

  v22 = *MEMORY[0x277D85DE8];

  return v0;
}

id CESRSpeechServiceDelegateGetXPCInterface()
{
  v58[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28395EA00];
  v1 = MEMORY[0x277CBEB98];
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_speechServiceDidRecognizeTokens_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_speechServiceDidRecognizeTokens_withMetadata_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v56 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_speechServiceDidRecognizeTokens_withMetadata_ argumentIndex:1 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v55 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_speechServiceDidRecognizePartialPackage_withMetadata_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v54 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_speechServiceDidRecognizePartialPackage_withMetadata_ argumentIndex:1 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v53[2] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_speechServiceDidFinishRecognitionWithStatistics_error_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_speechServiceDidProduceEndpointFeaturesWithWordCount_trailingSilenceDuration_eosLikelihood_pauseCounts_silencePosterior_processedAudioDurationInMilliseconds_acousticEndpointerScore_ argumentIndex:3 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v51 = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_speechServiceDidSelectRecognitionModelWithModelProperties_ argumentIndex:0 ofReply:0];

  v25 = MEMORY[0x277CBEB98];
  v50 = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_speechServiceDidRecognizePackage_ argumentIndex:0 ofReply:0];

  v28 = MEMORY[0x277CBEB98];
  v49 = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v30 = [v28 setWithArray:v29];
  [v0 setClasses:v30 forSelector:sel_speechServiceDidRecognizePackage_withMetadata_ argumentIndex:0 ofReply:0];

  v31 = MEMORY[0x277CBEB98];
  v48 = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v33 = [v31 setWithArray:v32];
  [v0 setClasses:v33 forSelector:sel_speechServiceDidRecognizePackage_withMetadata_ argumentIndex:1 ofReply:0];

  v34 = MEMORY[0x277CBEB98];
  v47 = objc_opt_class();
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v36 = [v34 setWithArray:v35];
  [v0 setClasses:v36 forSelector:sel_speechServiceDidRecognizeFinalResultCandidatePackage_ argumentIndex:0 ofReply:0];

  v37 = MEMORY[0x277CBEB98];
  v46 = objc_opt_class();
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v39 = [v37 setWithArray:v38];
  [v0 setClasses:v39 forSelector:sel_speechServiceDidRecognizeVoiceCommandCandidatePackage_withMetadata_ argumentIndex:0 ofReply:0];

  v40 = MEMORY[0x277CBEB98];
  v45 = objc_opt_class();
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v42 = [v40 setWithArray:v41];
  [v0 setClasses:v42 forSelector:sel_speechServiceDidRecognizeVoiceCommandCandidatePackage_withMetadata_ argumentIndex:1 ofReply:0];

  v43 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __Block_byref_object_copy__2166(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___applyItemTypeFilter_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      KVItemTypeFromNumber();
      v6 = KVItemTypeDescription();
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "_applyItemTypeFilter_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_225EEB000, v5, OS_LOG_TYPE_INFO, "%s Omitting all vocabulary items with itemType: %@ based on omitted set: %@", &v9, 0x20u);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v3];
  }

  v8 = *MEMORY[0x277D85DE8];
}

id loadBookmark(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = getLibraryPath();
  v3 = v2;
  if (a1 == 1)
  {
    v4 = @"/Assistant/DictationUserEdit/FullPayloadCorrection";
  }

  else
  {
    v4 = @"/Assistant/DictationUserEdit/ConfusionPair";
  }

  v5 = [v2 stringByAppendingPathComponent:v4];
  v6 = [v5 stringByAppendingPathComponent:@"bookmark"];

  if (![v6 length])
  {
    v17 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "loadBookmark";
      v26 = 2112;
      v27 = v6;
      v18 = "%s User Edit: invalid bookmark path %@, start enumeration from beginning";
LABEL_15:
      _os_log_impl(&dword_225EEB000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
    }

LABEL_16:
    v16 = 0;
    goto LABEL_21;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if ((v8 & 1) == 0)
  {
    v17 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "loadBookmark";
      v26 = 2112;
      v27 = v6;
      v18 = "%s User Edit: cannot find bookmark from path %@, start enumeration from beginning";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v9 = MEMORY[0x277CCAAC8];
  v10 = [MEMORY[0x277CCA910] bm_allowedClassesForSecureCodingBMBookmark];
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  v23 = 0;
  v12 = [v9 unarchivedObjectOfClasses:v10 fromData:v11 error:&v23];
  v13 = v23;

  v14 = *MEMORY[0x277CEF0E8];
  v15 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v13 || !v12)
  {
    if (v15)
    {
      v19 = v14;
      v20 = [v13 description];
      *buf = 136315394;
      v25 = "loadBookmark";
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEFAULT, "%s User Edit: failed to deserialize bookmark, error: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    if (v15)
    {
      *buf = 136315394;
      v25 = "loadBookmark";
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_225EEB000, v14, OS_LOG_TYPE_DEFAULT, "%s User Edit: loaded bookmark from Biome %@", buf, 0x16u);
    }

    v16 = v12;
  }

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

id getLibraryPath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 firstObject];

  return v1;
}

uint64_t saveBookmark(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = @"/Assistant/DictationUserEdit/ConfusionPair";
  if (a1 == 1)
  {
    v4 = @"/Assistant/DictationUserEdit/FullPayloadCorrection";
  }

  v5 = v4;
  if ([(__CFString *)v5 length])
  {
    v6 = getLibraryPath();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 stringByAppendingPathComponent:v5];
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

      v11 = 0;
      if (v10)
      {
        v11 = v8;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = [v11 stringByAppendingPathComponent:@"bookmark"];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 length])
  {
    v26 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:0 error:&v26];
    v14 = v26;
    if (v14 || !v13)
    {
      v20 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v14 description];
        *buf = 136315394;
        v28 = "saveBookmark";
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_DEFAULT, "%s User Edit: failed to serialize bookmark, error: %@", buf, 0x16u);
      }
    }

    else
    {
      v25 = 0;
      v15 = [v13 writeToFile:v12 options:1073741825 error:&v25];
      v14 = v25;
      v16 = *MEMORY[0x277CEF0E8];
      v17 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          *buf = 136315394;
          v28 = "saveBookmark";
          v29 = 2112;
          v30 = v12;
          _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_DEFAULT, "%s User Edit: saved Biome bookmark on disk %@", buf, 0x16u);
        }

        v18 = 1;
        goto LABEL_28;
      }

      if (v17)
      {
        *buf = 136315394;
        v28 = "saveBookmark";
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_DEFAULT, "%s User Edit: failed to save bookmark on disk %@", buf, 0x16u);
      }
    }

    v18 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v19 = *MEMORY[0x277CEF0E8];
  v18 = 0;
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "saveBookmark";
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEFAULT, "%s User Edit: invalid file path for bookmark file %@", buf, 0x16u);
    v18 = 0;
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t CESRCorrectionPronunciationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v27 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v24 = PBReaderReadString();
          if (v24)
          {
            [a1 addTtsPronunciations:v24];
          }

          goto LABEL_46;
        }

        if (v13 != 7)
        {
LABEL_38:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }

        v21 = PBReaderReadData();
        v22 = 16;
        goto LABEL_45;
      }

      if (v13 == 4)
      {
        v21 = PBReaderReadString();
        v22 = 56;
LABEL_45:
        v25 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_46;
      }

      if (v13 != 5)
      {
        goto LABEL_38;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 64) |= 1u;
      while (1)
      {
        v28 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v28 & 0x7F) << v14;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_51;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_51:
      *(a1 + 40) = v20;
LABEL_46:
      v26 = [a2 position];
      if (v26 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v21 = PBReaderReadString();
        v22 = 32;
        break;
      case 2:
        v21 = PBReaderReadString();
        v22 = 24;
        break;
      case 3:
        v21 = PBReaderReadString();
        v22 = 8;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

void sub_22607FFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2879(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226080618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t CESRUserCorrectionsProfileEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v34 = PBReaderReadString();
        v35 = *(a1 + 16);
        *(a1 + 16) = v34;

        goto LABEL_69;
      }

      if (v13 != 2)
      {
        goto LABEL_54;
      }

      v21 = objc_alloc_init(CESRCorrectionPronunciation);
      objc_storeStrong((a1 + 24), v21);
      v39[0] = 0;
      v39[1] = 0;
      if (!PBReaderPlaceMark() || !CESRCorrectionPronunciationReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v39[0] & 0x7F) << v22;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v24;
        }

LABEL_59:
        v36 = 32;
        goto LABEL_68;
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39[0] & 0x7F) << v28;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_63:
        v36 = 36;
        goto LABEL_68;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v39[0] & 0x7F) << v14;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_67:
        v36 = 8;
LABEL_68:
        *(a1 + v36) = v20;
        goto LABEL_69;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t CESRRawSpeechProfileWordTagFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"\\contact-first"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"\\contact-middle"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"\\contact-last"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"\\contact-nickname"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"\\contact-first-phonetic"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"\\contact-last-phonetic"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_226085F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3369(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226088A24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id AppOovDirectory(void *a1)
{
  v1 = a1;
  v2 = AFLibraryDirectoryWithSubPath();
  v3 = [v2 stringByAppendingPathComponent:@"SpeechModels"];
  v4 = [v1 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

uint64_t CESRAppEntityAllocationStrategyEnumFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"in_order"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"equal"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"proportional"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CESRAppEntityProportionTransformationFunctionEnumFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"identity"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"log"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"exponent"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *CESRAppEntityAllocationStrategyEnumAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", a1];
  }

  else
  {
    v2 = off_27857FD98[a1];
  }

  return v2;
}

__CFString *CESRAppEntityProportionTransformationFunctionEnumAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", a1];
  }

  else
  {
    v2 = off_27857FDB8[a1];
  }

  return v2;
}

id CESRSpeechProfileInstanceOptionsDescription(char a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Assistant"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"Dictation"];
  }

  v4 = [v3 componentsJoinedByString:@"|"];

  return v4;
}

uint64_t __Block_byref_object_copy__4503(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226092A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226093074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2260934B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2260938A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22609616C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t CoreEmbeddedSpeechRecognizerGetQoSClassFromInstanceUUID(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (uuid_is_null(result))
    {
      return 0;
    }

    else if (uuid_compare(v1, CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive))
    {
      if (uuid_compare(v1, CoreEmbeddedSpeechRecognizerInstanceUUIDBackground))
      {
        return 0;
      }

      else
      {
        return 17;
      }
    }

    else
    {
      return 25;
    }
  }

  return result;
}

void sub_226096A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_226096DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2260971A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

const unsigned __int8 *CoreEmbeddedSpeechRecognizerGetIsHighPriorityFromInstanceUUID(const unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    if (uuid_is_null(result))
    {
      return 0;
    }

    else
    {
      return (uuid_compare(v1, CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive) == 0);
    }
  }

  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}