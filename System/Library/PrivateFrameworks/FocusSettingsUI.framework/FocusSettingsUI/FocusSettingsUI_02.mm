uint64_t sub_24B8FA6AC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = sub_24BAA922C();
  v2 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v48 = qword_27F077088;
  v81 = sub_24BAA7C2C();
  v82 = v5;
  v47 = sub_24B8F5E3C();
  v6 = sub_24BAA93CC();
  v8 = v7;
  v10 = v9;
  sub_24BAA988C();
  v11 = sub_24BAA933C();
  v49 = v12;
  v50 = v11;
  v46 = v13;
  v51 = v14;

  sub_24B900910(v6, v8, v10 & 1);

  sub_24BAA915C();
  v15 = KeyPath;
  (*(v2 + 104))(v4, *MEMORY[0x277CE0A10], KeyPath);
  v52 = sub_24BAA925C();

  (*(v2 + 8))(v4, v15);
  KeyPath = swift_getKeyPath();
  v16 = v46 & 1;
  LOBYTE(v81) = v46 & 1;
  v46 &= 1u;
  v81 = sub_24BAA7C2C();
  v82 = v17;
  v18 = sub_24BAA93CC();
  v20 = v19;
  v22 = v21;
  sub_24BAA974C();
  v47 = sub_24BAA933C();
  v48 = v23;
  v45 = v24;
  v26 = v25;

  sub_24B900910(v18, v20, v22 & 1);

  v27 = sub_24BAA915C();
  v28 = swift_getKeyPath();
  LOBYTE(v20) = v26 & 1;
  LOBYTE(v81) = v26 & 1;
  v29 = swift_getKeyPath();
  v30 = v49;
  v31 = v50;
  *&v73 = v50;
  *(&v73 + 1) = v49;
  LOBYTE(v74) = v16;
  *(&v74 + 1) = *v72;
  DWORD1(v74) = *&v72[3];
  v32 = v51;
  *(&v74 + 1) = v51;
  LOWORD(v75) = 256;
  *(&v75 + 2) = v70;
  WORD3(v75) = v71;
  *(&v75 + 1) = KeyPath;
  v76 = v52;
  *&v66[0] = v52;
  v64 = v74;
  v65 = v75;
  v63 = v73;
  v34 = v47;
  v33 = v48;
  v35 = v45;
  *&v77 = v47;
  *(&v77 + 1) = v45;
  LOBYTE(v78) = v20;
  DWORD1(v78) = *(v69 + 3);
  *(&v78 + 1) = v69[0];
  *(&v78 + 1) = v48;
  LOWORD(v79) = 256;
  WORD3(v79) = v68;
  *(&v79 + 2) = v67;
  *(&v79 + 1) = v28;
  *v80 = v27;
  *&v80[8] = v29;
  *&v80[16] = 1;
  v80[24] = 0;
  *(v66 + 8) = v77;
  *(&v66[4] + 1) = *&v80[9];
  *(&v66[3] + 8) = *v80;
  *(&v66[2] + 8) = v79;
  *(&v66[1] + 8) = v78;
  v36 = v73;
  v37 = v74;
  v38 = v66[0];
  *(a1 + 32) = v75;
  *(a1 + 48) = v38;
  *a1 = v36;
  *(a1 + 16) = v37;
  v39 = v66[1];
  v40 = v66[2];
  v41 = v66[3];
  v42 = v66[4];
  *(a1 + 128) = v66[5];
  *(a1 + 96) = v41;
  *(a1 + 112) = v42;
  *(a1 + 64) = v39;
  *(a1 + 80) = v40;
  v81 = v34;
  v82 = v35;
  v83 = v20;
  *v84 = v69[0];
  *&v84[3] = *(v69 + 3);
  v85 = v33;
  v86 = 256;
  v87 = v67;
  v88 = v68;
  v89 = v28;
  v90 = v27;
  v91 = v29;
  v92 = 1;
  v93 = 0;
  sub_24B8F3208(&v73, v54, &qword_27F063C70);
  sub_24B8F3208(&v77, v54, &qword_27F063C78);
  sub_24B8F35E4(&v81, &qword_27F063C78);
  v54[0] = v31;
  v54[1] = v30;
  v55 = v46;
  *v56 = *v72;
  *&v56[3] = *&v72[3];
  v57 = v32;
  v58 = 256;
  v59 = v70;
  v60 = v71;
  v61 = KeyPath;
  v62 = v52;
  return sub_24B8F35E4(v54, &qword_27F063C70);
}

uint64_t sub_24B8FAB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AppFilterListSection.AutomationsGridContent(0);
  sub_24B8F3208(v1 + *(v10 + 20), v9, &qword_27F063B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA854C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24B8FADAC@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_24BAA866C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063BD0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  sub_24B8FB074();
  v18 = v1;
  sub_24BAA8BCC();
  v19 = 0;
  sub_24B8FFA70(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  sub_24B90074C();
  sub_24BAA9D8C();
  v10 = sub_24BAA90AC();
  sub_24BAA828C();
  v11 = &v9[*(v7 + 36)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  sub_24BAA865C();
  sub_24B9007A0();
  sub_24B8FFA70(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  sub_24BAA944C();
  (*(v3 + 8))(v5, v2);
  return sub_24B8F35E4(v9, &qword_27F063BD0);
}

uint64_t sub_24B8FB074()
{
  v0 = sub_24BAA9C6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24BAA854C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;

    if (v17 < v15)
    {
      v15 = v17;
    }

    sub_24B8FAB9C(v10);
    if (v15 > 768.0)
    {
      (*(v5 + 104))(v8, *MEMORY[0x277CDF9F0], v4);
      sub_24B8FFA70(&qword_27F063C10, MEMORY[0x277CDFA28]);
      v18 = sub_24BAA9F4C();
      v19 = *(v5 + 8);
      v19(v8, v4);
      v19(v10, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
      sub_24BAA9C7C();
      v20 = (v1 + 104);
      v21 = swift_allocObject();
      if (v18)
      {
        *(v21 + 16) = xmmword_24BAAD820;
        v30 = xmmword_24BAAD830;
        *v3 = xmmword_24BAAD830;
        v22 = *MEMORY[0x277CDF108];
        v23 = *v20;
        (*v20)(v3, v22, v0);
        sub_24BAA9C8C();
        *v3 = v30;
        v23(v3, v22, v0);
      }

      else
      {
        *(v21 + 16) = xmmword_24BAAD840;
        v30 = xmmword_24BAAD830;
        *v3 = xmmword_24BAAD830;
        v27 = *MEMORY[0x277CDF108];
        v28 = *v20;
        (*v20)(v3, v27, v0);
        sub_24BAA9C8C();
        *v3 = v30;
        v28(v3, v27, v0);
        sub_24BAA9C8C();
        *v3 = v30;
        v28(v3, v27, v0);
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_24B8FAB9C(v10);
  }

  v24 = sub_24BAA853C();
  (*(v5 + 8))(v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
  sub_24BAA9C7C();
  v21 = swift_allocObject();
  if (v24)
  {
    *(v21 + 16) = xmmword_24BAAD5B0;
    *v3 = xmmword_24BAAD830;
    (*(v1 + 104))(v3, *MEMORY[0x277CDF108], v0);
  }

  else
  {
    *(v21 + 16) = xmmword_24BAAD820;
    v30 = xmmword_24BAAD830;
    *v3 = xmmword_24BAAD830;
    v25 = *MEMORY[0x277CDF108];
    v26 = *(v1 + 104);
    v26(v3, v25, v0);
    sub_24BAA9C8C();
    *v3 = v30;
    v26(v3, v25, v0);
  }

LABEL_12:
  sub_24BAA9C8C();
  return v21;
}

__n128 sub_24B8FB6CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppFilterListSection.AutomationsGridContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  v10 = *(a1 + *(v4 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
  sub_24BAA9B8C();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a2 = sub_24BAA86FC();
  *(a2 + 8) = v5;
  *(a2 + 16) = sub_24B902B6C;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = v10;
  *(a2 + 36) = *(&v10 + 3);
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *(a2 + 57) = v7.n128_u32[0];
  *(a2 + 60) = *(v7.n128_u32 + 3);
  result = v7;
  *(a2 + 64) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9;
  *(a2 + 96) = 1;
  return result;
}

uint64_t sub_24B8FB850@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = type metadata accessor for AppFilterListSection.AddAutomationView(0) - 8;
  v3 = MEMORY[0x28223BE20](v44);
  v47 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = (v42 - v5);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D20);
  v54 = *(v46 - 8);
  v6 = MEMORY[0x28223BE20](v46);
  v45 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = v42 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D28);
  v53 = *(v43 - 8);
  v9 = MEMORY[0x28223BE20](v43);
  v51 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v42 - v11;
  v42[1] = *(v1 + 8);
  v42[0] = type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v57 = v59;
  v58 = v60;
  v12 = swift_allocObject();
  v13 = *(v1 + 80);
  *(v12 + 80) = *(v1 + 64);
  *(v12 + 96) = v13;
  *(v12 + 112) = *(v1 + 96);
  v14 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  v15 = *(v1 + 48);
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = v15;
  sub_24B900C24(v1, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D30);
  sub_24BAA7E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D38);
  sub_24B900C5C();
  sub_24B900D48();
  sub_24B900E1C();
  sub_24BAA9C0C();
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v57 = v59;
  v58 = v60;
  v16 = swift_allocObject();
  v17 = *(v1 + 80);
  *(v16 + 80) = *(v1 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(v1 + 96);
  v18 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v18;
  v19 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v19;
  sub_24B900C24(v1, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063D80);
  sub_24B900F44();
  sub_24B901030();
  sub_24B901104();
  v20 = v50;
  sub_24BAA9C0C();
  v55 = *(v1 + 40);
  v56 = *(v1 + 56);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  MEMORY[0x24C24FC10](&v59, v21);
  v22 = v59;
  LOBYTE(v2) = *(v2 + 96);
  KeyPath = swift_getKeyPath();
  v24 = v44;
  v25 = v52;
  *(v52 + *(v44 + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  *v25 = sub_24BAA86FC();
  v25[1] = v26;
  v27 = v25 + *(v24 + 32);
  LOBYTE(v59) = v22;
  sub_24BAA99EC();
  v28 = *(&v55 + 1);
  *v27 = v55;
  *(v27 + 1) = v28;
  *(v25 + *(v24 + 36)) = v2;
  v29 = *(v53 + 16);
  v30 = v51;
  v31 = v43;
  v29(v51, v49, v43);
  v44 = *(v54 + 16);
  v32 = v45;
  v33 = v20;
  v34 = v46;
  (v44)(v45, v33, v46);
  v35 = v25;
  v36 = v47;
  sub_24B9011B8(v35, v47, type metadata accessor for AppFilterListSection.AddAutomationView);
  v37 = v48;
  v29(v48, v30, v31);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DC8);
  (v44)(&v37[*(v38 + 48)], v32, v34);
  sub_24B9011B8(v36, &v37[*(v38 + 64)], type metadata accessor for AppFilterListSection.AddAutomationView);
  sub_24B901220(v52, type metadata accessor for AppFilterListSection.AddAutomationView);
  v39 = *(v54 + 8);
  v39(v50, v34);
  v40 = *(v53 + 8);
  v40(v49, v31);
  sub_24B901220(v36, type metadata accessor for AppFilterListSection.AddAutomationView);
  v39(v32, v34);
  return (v40)(v51, v31);
}

uint64_t sub_24B8FBFD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AppFilterListSection.AppConfigurationItemView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FocusConfigurationAction(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  LODWORD(v7) = v9[*(v7 + 28)];
  sub_24B901220(v9, type metadata accessor for FocusConfigurationAction);
  if (v7 == 1)
  {
    MEMORY[0x24C24FC10](v10);
    v11 = sub_24B9B1220(v9);
    v23 = v12;
    v24 = v11;
    sub_24B901220(v9, type metadata accessor for FocusConfigurationAction);
    MEMORY[0x24C24FC10](v10);
    v13 = sub_24B9B1330(v9);
    v15 = v14;
    sub_24B901220(v9, type metadata accessor for FocusConfigurationAction);
    sub_24BAA9B8C();
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v5 = sub_24BAA86FC();
    *(v5 + 1) = v16;
    *(v5 + 2) = sub_24B902B6C;
    *(v5 + 3) = 0;
    v5[32] = 0;
    v17 = v23;
    *(v5 + 5) = v24;
    *(v5 + 6) = v17;
    *(v5 + 7) = v13;
    *(v5 + 8) = v15;
    v18 = &v5[*(v2 + 36)];
    v25 = 0;
    sub_24BAA99EC();
    v19 = v27;
    *v18 = v26;
    *(v18 + 1) = v19;
    sub_24B901280(v5, a1, type metadata accessor for AppFilterListSection.AppConfigurationItemView);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v3 + 56))(a1, v20, 1, v2);
}

uint64_t sub_24B8FC288@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for AppFilterListSection.SystemConfigurationItemView(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - v6;
  v7 = type metadata accessor for FocusSystemConfigurationAction(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x24C24FC10]();
  v17 = v15[*(v7 + 20)];
  sub_24B901220(v15, type metadata accessor for FocusSystemConfigurationAction);
  if (v17 == 1)
  {
    MEMORY[0x24C24FC10](v16);
    v18 = *&v13[*(v7 + 32)];
    sub_24B901220(v13, type metadata accessor for FocusSystemConfigurationAction);
    v19 = [v18 title];

    v20 = sub_24BAAA01C();
    v36 = v21;

    MEMORY[0x24C24FC10](v16);
    v22 = [*&v10[*(v7 + 32)] subtitle];
    if (v22)
    {
      v23 = v22;
      v24 = sub_24BAAA01C();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_24B901220(v10, type metadata accessor for FocusSystemConfigurationAction);
    sub_24BAA9B8C();
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v5 = sub_24BAA86FC();
    v5[1] = v29;
    v30 = v36;
    v5[2] = v20;
    v5[3] = v30;
    v5[4] = v24;
    v5[5] = v26;
    v31 = v5 + *(v1 + 32);
    v39 = 0;
    sub_24BAA99EC();
    v32 = v41;
    *v31 = v40;
    *(v31 + 1) = v32;
    v33 = v37;
    sub_24B901280(v5, v37, type metadata accessor for AppFilterListSection.SystemConfigurationItemView);
    v34 = v33;
    v28 = v38;
    sub_24B901280(v34, v38, type metadata accessor for AppFilterListSection.SystemConfigurationItemView);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v28 = v38;
  }

  return (*(v2 + 56))(v28, v27, 1, v1);
}

uint64_t sub_24B8FC66C()
{
  type metadata accessor for AppIconCache();
  swift_allocObject();
  return sub_24B9AAAD8(8, 1);
}

uint64_t sub_24B8FC6AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for FocusConfigurationAction(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for AppConfigurationEditView(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[5];
  v42 = a1[6];
  v43 = v14;
  type metadata accessor for AppFilterListSection.AppConfigurationItemView(0);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  v16 = &v9[*(v4 + 36)];
  v17 = *v16;
  v40 = *(v16 + 1);
  v41 = v17;

  sub_24B901220(v9, type metadata accessor for FocusConfigurationAction);
  MEMORY[0x24C24FC10](v15);
  v18 = &v7[*(v4 + 40)];
  v20 = *v18;
  v19 = *(v18 + 1);

  sub_24B901220(v7, type metadata accessor for FocusConfigurationAction);
  sub_24BAA9B8C();
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v21 = (v13 + v11[7]);
  v22 = v42;
  *v21 = v43;
  v21[1] = v22;
  v23 = (v13 + v11[8]);
  v24 = v40;
  *v23 = v41;
  v23[1] = v24;
  v25 = (v13 + v11[9]);
  *v25 = v20;
  v25[1] = v19;
  v26 = v13 + v11[11];
  LOBYTE(v45) = 0;
  sub_24BAA99EC();
  v27 = *(&v48 + 1);
  *v26 = v48;
  *(v26 + 1) = v27;
  v28 = v13 + v11[12];
  LOBYTE(v45) = 1;
  sub_24BAA99EC();
  v29 = *(&v48 + 1);
  *v28 = v48;
  *(v28 + 1) = v29;
  v30 = v13 + v11[13];
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E98);
  sub_24BAA99EC();
  v31 = v50;
  v32 = v51;
  v33 = v49;
  *v30 = v48;
  *(v30 + 1) = v33;
  v30[32] = v31;
  *(v30 + 5) = v32;
  v34 = *a1;
  if (*a1)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

    v35 = sub_24BAA813C();
    v36 = v44;
    sub_24B901280(v13, v44, type metadata accessor for AppConfigurationEditView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E80);
    v38 = (v36 + *(result + 36));
    *v38 = v35;
    v38[1] = v34;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8FCA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for FocusConfigurationAction(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FilterGridItem();
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E50);
  MEMORY[0x28223BE20](v54);
  v55 = &v43 - v14;
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[8];
  v51 = a1[5];
  v52 = v16;
  v49 = v15;
  v50 = v17;
  type metadata accessor for AppFilterListSection.AppConfigurationItemView(0);

  MEMORY[0x24C24FC10](v3);
  v18 = &v9[*(v7 + 40)];
  v19 = *v18;
  v20 = v18[1];

  sub_24B901220(v9, type metadata accessor for FocusConfigurationAction);
  v48 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v19, v20);
  type metadata accessor for AppIconCache();
  v53 = sub_24B8FFA70(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v21 = sub_24BAA86FC();
  v46 = v22;
  v47 = v21;
  KeyPath = swift_getKeyPath();
  v23 = v44;
  sub_24BAA9B8C();
  MEMORY[0x24C24FC10](v23);
  sub_24B8F35E4(v5, &unk_27F064670);
  LOBYTE(v23) = v9[*(v7 + 32)];
  sub_24B901220(v9, type metadata accessor for FocusConfigurationAction);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v13 = sub_24BAA86FC();
  v13[1] = v24;
  v25 = v11[7];
  *(v13 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v26 = v11[8];
  *(v13 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v27 = (v13 + v11[9]);
  v28 = v49;
  *v27 = v51;
  v27[1] = v28;
  v29 = (v13 + v11[10]);
  v30 = v50;
  *v29 = v52;
  v29[1] = v30;
  *(v13 + v11[11]) = 0;
  v31 = v13 + v11[12];
  *v31 = v48;
  *(v31 + 1) = 0x4038000000000000;
  v32 = v46;
  *(v31 + 2) = v47;
  *(v31 + 3) = v32;
  *(v31 + 4) = KeyPath;
  v31[40] = 0;
  *(v13 + v11[13]) = 2;
  *(v13 + v11[14]) = v23;
  *(v13 + v11[15]) = 2;
  *(v13 + v11[16]) = 0;
  v33 = *a1;
  if (*a1)
  {

    v34 = sub_24BAA813C();
    v35 = v13;
    v36 = v55;
    sub_24B901280(v35, v55, type metadata accessor for FilterGridItem);
    v37 = (v36 + *(v54 + 36));
    *v37 = v34;
    v37[1] = v33;
    v38 = sub_24BAA82FC();
    v39 = sub_24BAA813C();
    v40 = v56;
    sub_24B90294C(v36, v56, &qword_27F063E50);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E30);
    v42 = (v40 + *(result + 36));
    *v42 = v39;
    v42[1] = v38;
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8FCF50(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B9011B8(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AppFilterListSection.AppConfigurationItemView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_24B901280(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for AppFilterListSection.AppConfigurationItemView);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E38);
  sub_24B901FCC();
  sub_24B8F384C(&qword_27F063E78, &qword_27F063E38);
  return sub_24BAA9D9C();
}

uint64_t sub_24B8FD114(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  a4();
  return sub_24BAA84CC();
}

uint64_t sub_24B8FD180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for FocusSystemConfigurationAction(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemConfigurationEditView(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v28 = a1[2];
  type metadata accessor for AppFilterListSection.SystemConfigurationItemView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x24C24FC10]();
  v12 = &v6[*(v4 + 36)];
  v14 = *v12;
  v13 = *(v12 + 1);

  sub_24B901220(v6, type metadata accessor for FocusSystemConfigurationAction);
  sub_24BAA9B8C();
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v15 = (v10 + v8[7]);
  *v15 = v28;
  v15[1] = v11;
  v16 = (v10 + v8[8]);
  *v16 = v14;
  v16[1] = v13;
  v17 = v10 + v8[10];
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E98);
  sub_24BAA99EC();
  v18 = v35;
  v19 = v36;
  v20 = v34;
  *v17 = v33;
  *(v17 + 1) = v20;
  v17[32] = v18;
  *(v17 + 5) = v19;
  v21 = v10 + v8[11];
  LOBYTE(v30) = 0;
  sub_24BAA99EC();
  v22 = *(&v33 + 1);
  *v21 = v33;
  *(v21 + 1) = v22;
  v23 = *a1;
  if (*a1)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

    v24 = sub_24BAA813C();
    v25 = v29;
    sub_24B901280(v10, v29, type metadata accessor for SystemConfigurationEditView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063EB0);
    v27 = (v25 + *(result + 36));
    *v27 = v24;
    v27[1] = v23;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8FD4B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x28223BE20](v3);
  v37[0] = v37 - v4;
  v5 = type metadata accessor for FocusSystemConfigurationAction(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - v9;
  v11 = type metadata accessor for FilterGridItem();
  MEMORY[0x28223BE20](v11);
  v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v40 = a1[2];
  v15 = a1[5];
  v42 = a1[4];
  v16 = *(type metadata accessor for AppFilterListSection.SystemConfigurationItemView(0) + 28);
  v43 = v15;

  v41 = v14;

  v44 = a1;
  v37[1] = v16;
  v38 = v3;
  MEMORY[0x24C24FC10](v3);
  v39 = v5;
  v17 = [*&v10[*(v5 + 32)] icon];
  if (v17 && (v18 = v17, v19 = [v17 systemName], v18, v19))
  {
    sub_24BAAA01C();

    v20 = sub_24BAA994C();
  }

  else
  {
    v20 = 0;
  }

  sub_24B901220(v10, type metadata accessor for FocusSystemConfigurationAction);
  v21 = v44;
  v22 = v37[0];
  v23 = v38;
  sub_24BAA9B8C();
  MEMORY[0x24C24FC10](v23);
  sub_24B8F35E4(v22, &qword_27F063DB8);
  LOBYTE(v22) = v8[*(v39 + 24)];
  sub_24B901220(v8, type metadata accessor for FocusSystemConfigurationAction);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v13 = sub_24BAA86FC();
  v13[1] = v24;
  v25 = v11[5];
  *(v13 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v26 = v11[6];
  *(v13 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v27 = (v13 + v11[7]);
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  v29 = (v13 + v11[8]);
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;
  *(v13 + v11[9]) = v20;
  v31 = (v13 + v11[10]);
  *(v31 + 25) = 0u;
  *v31 = 0u;
  v31[1] = 0u;
  *(v13 + v11[11]) = 2;
  *(v13 + v11[12]) = v22;
  *(v13 + v11[13]) = 2;
  *(v13 + v11[14]) = 0;
  v32 = *v21;
  if (*v21)
  {

    v33 = sub_24BAA813C();
    v34 = v45;
    sub_24B901280(v13, v45, type metadata accessor for FilterGridItem);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E50);
    v36 = (v34 + *(result + 36));
    *v36 = v33;
    v36[1] = v32;
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8FD8F0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B9011B8(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AppFilterListSection.SystemConfigurationItemView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_24B901280(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for AppFilterListSection.SystemConfigurationItemView);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063EA0);
  sub_24B902084();
  sub_24B8F384C(&qword_27F063EA8, &qword_27F063EA0);
  return sub_24BAA9D9C();
}

uint64_t sub_24B8FDAB4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for AppFilterListSection.AddAutomationView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063EC8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063ED0);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063ED8);
  MEMORY[0x28223BE20](v31);
  v14 = &v29 - v13;
  sub_24B9011B8(v1, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppFilterListSection.AddAutomationView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_24B901280(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppFilterListSection.AddAutomationView);
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063EE0);
  sub_24B9026F8();
  sub_24BAA9A5C();
  LOBYTE(v4) = sub_24B8FE4F4();
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v4 & 1;
  v19 = &v8[*(v6 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_24B9027F8;
  v19[2] = v18;
  v20 = v1 + *(v3 + 32);
  v21 = *v20;
  v22 = *(v20 + 8);
  v38 = v21;
  v39 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063AA0);
  v27 = sub_24B902800();
  v28 = sub_24B8FF9B4();
  sub_24BAA968C();

  sub_24B8F35E4(v8, &qword_27F063EC8);
  v34 = v6;
  v35 = v23;
  v36 = v27;
  v37 = v28;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_24BAA94DC();
  (*(v30 + 8))(v12, v24);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v34 = sub_24BAA7C2C();
  v35 = v25;
  sub_24B8F5E3C();
  sub_24BAA859C();

  return sub_24B9028E4(v14);
}

uint64_t sub_24B8FDFA8()
{
  type metadata accessor for AppFilterListSection.AddAutomationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24B8FE01C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063EF8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F28);
  MEMORY[0x28223BE20](v5);
  v7 = &v24[-v6];
  v8 = type metadata accessor for FilterGridItem();
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + *(type metadata accessor for AppFilterListSection.AddAutomationView(0) + 28));
  if (v11 == 2 || (v11 & 1) == 0)
  {
    *v4 = sub_24BAA8AAC();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F30);
    sub_24B8FEA54(a1, &v4[*(v23 + 44)]);
    sub_24B8F3208(v4, v7, &qword_27F063EF8);
    swift_storeEnumTagMultiPayload();
    sub_24B8FFA70(&qword_27F063E58, type metadata accessor for FilterGridItem);
    sub_24B8F384C(&qword_27F063EF0, &qword_27F063EF8);
    sub_24BAA8D0C();
    return sub_24B8F35E4(v4, &qword_27F063EF8);
  }

  else
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v12 = sub_24BAA7C2C();
    v14 = v13;
    v15 = sub_24BAA994C();
    v25 = sub_24B8FE4F4();
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v10 = sub_24BAA86FC();
    v10[1] = v16;
    v17 = v8[5];
    *(v10 + v17) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
    swift_storeEnumTagMultiPayload();
    v18 = v8[6];
    *(v10 + v18) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    v19 = (v10 + v8[7]);
    *v19 = v12;
    v19[1] = v14;
    v20 = (v10 + v8[8]);
    *v20 = 0;
    v20[1] = 0;
    *(v10 + v8[9]) = v15;
    v21 = (v10 + v8[10]);
    *(v21 + 25) = 0u;
    *v21 = 0u;
    v21[1] = 0u;
    *(v10 + v8[11]) = 1;
    *(v10 + v8[12]) = (v25 & 1) == 0;
    *(v10 + v8[13]) = 0;
    *(v10 + v8[14]) = 0;
    sub_24B9011B8(v10, v7, type metadata accessor for FilterGridItem);
    swift_storeEnumTagMultiPayload();
    sub_24B8FFA70(&qword_27F063E58, type metadata accessor for FilterGridItem);
    sub_24B8F384C(&qword_27F063EF0, &qword_27F063EF8);
    sub_24BAA8D0C();
    return sub_24B901220(v10, type metadata accessor for FilterGridItem);
  }
}

uint64_t sub_24B8FE4F4()
{
  v1 = type metadata accessor for FocusSystemConfigurationAction(0);
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - v4;
  v5 = type metadata accessor for FocusConfigurationAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = *v0;
  if (!*v0)
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v40 = v12;

  v13 = v45;
  v14 = *(v45 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v43 = v9;
    v44 = v5;
    while (v15 < *(v13 + 16))
    {
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = *(v6 + 72);
      sub_24B9011B8(v13 + v17 + v18 * v15, v11, type metadata accessor for FocusConfigurationAction);
      if (v11[*(v5 + 20)])
      {
        sub_24B901220(v11, type metadata accessor for FocusConfigurationAction);
      }

      else
      {
        sub_24B901280(v11, v9, type metadata accessor for FocusConfigurationAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B914E10(0, *(v16 + 16) + 1, 1);
          v16 = v45;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24B914E10(v20 > 1, v21 + 1, 1);
          v16 = v45;
        }

        *(v16 + 16) = v21 + 1;
        v22 = v16 + v17 + v21 * v18;
        v9 = v43;
        sub_24B901280(v43, v22, type metadata accessor for FocusConfigurationAction);
        v5 = v44;
      }

      if (v14 == ++v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_14:

  v23 = *(v16 + 16);

  if (v23)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v25 = v45;
  v26 = *(v45 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    v30 = v38;
    v29 = v39;
    v31 = v41;
    while (v27 < *(v25 + 16))
    {
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = *(v30 + 72);
      sub_24B9011B8(v25 + v32 + v33 * v27, v31, type metadata accessor for FocusSystemConfigurationAction);
      if (*(v31 + *(v29 + 20)))
      {
        sub_24B901220(v31, type metadata accessor for FocusSystemConfigurationAction);
      }

      else
      {
        sub_24B901280(v31, v42, type metadata accessor for FocusSystemConfigurationAction);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v45 = v28;
        if ((v34 & 1) == 0)
        {
          sub_24B914DCC(0, *(v28 + 16) + 1, 1);
          v28 = v45;
        }

        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_24B914DCC(v35 > 1, v36 + 1, 1);
          v28 = v45;
        }

        *(v28 + 16) = v36 + 1;
        sub_24B901280(v42, v28 + v32 + v36 * v33, type metadata accessor for FocusSystemConfigurationAction);
        v31 = v41;
      }

      if (v26 == ++v27)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_28:

  v37 = *(v28 + 16);

  return v37 == 0;
}

uint64_t sub_24B8FEA54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F38);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v61 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F40);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F48);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  v19 = sub_24BAA994C();
  v20 = *(v4 + 44);
  *(v6 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  *v6 = v19;
  if (*a1)
  {
    v66 = v13;

    v21 = sub_24B991A94();

    KeyPath = swift_getKeyPath();
    sub_24B90294C(v6, v9, &qword_27F063F38);
    v23 = &v9[*(v7 + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    LOBYTE(v21) = sub_24BAA910C();
    sub_24BAA828C();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_24B90294C(v9, v16, &qword_27F063F40);
    v32 = &v16[*(v10 + 36)];
    *v32 = v21;
    *(v32 + 1) = v25;
    *(v32 + 2) = v27;
    *(v32 + 3) = v29;
    *(v32 + 4) = v31;
    v32[40] = 0;
    sub_24B90294C(v16, v18, &qword_27F063F48);
    v33 = v18;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v75 = sub_24BAA7C2C();
    v76 = v34;
    sub_24B8F5E3C();
    v35 = sub_24BAA93CC();
    v37 = v36;
    v39 = v38;
    sub_24BAA916C();
    v63 = sub_24BAA939C();
    v62 = v40;
    v42 = v41;
    v65 = v43;

    sub_24B900910(v35, v37, v39 & 1);

    v44 = swift_getKeyPath();

    v45 = sub_24B991A94();

    v46 = swift_getKeyPath();
    v47 = v42 & 1;
    LOBYTE(v75) = v42 & 1;
    v48 = swift_getKeyPath();
    v49 = v66;
    sub_24B8F3208(v33, v66, &qword_27F063F48);
    v50 = v49;
    v51 = v64;
    sub_24B8F3208(v50, v64, &qword_27F063F48);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F50);
    v53 = v51 + *(v52 + 48);
    v54 = v63;
    *&v69 = v63;
    v55 = v62;
    *(&v69 + 1) = v62;
    LOBYTE(v70) = v47;
    *(&v70 + 1) = v68[0];
    DWORD1(v70) = *(v68 + 3);
    *(&v70 + 1) = v65;
    *&v71 = v44;
    BYTE8(v71) = 0;
    HIDWORD(v71) = *&v67[3];
    *(&v71 + 9) = *v67;
    *&v72 = v46;
    *(&v72 + 1) = v45;
    v73 = v48;
    v74 = 1;
    *(v53 + 80) = 1;
    v56 = v70;
    *v53 = v69;
    *(v53 + 16) = v56;
    v57 = v73;
    v58 = v71;
    *(v53 + 48) = v72;
    *(v53 + 64) = v57;
    *(v53 + 32) = v58;
    v59 = v51 + *(v52 + 64);
    *v59 = 0;
    *(v59 + 8) = 1;
    sub_24B8F3208(&v69, &v75, &qword_27F063F58);
    sub_24B8F35E4(v33, &qword_27F063F48);
    v75 = v54;
    v76 = v55;
    v77 = v47;
    *v78 = v68[0];
    *&v78[3] = *(v68 + 3);
    v79 = v65;
    v80 = v44;
    v81 = 0;
    *v82 = *v67;
    *&v82[3] = *&v67[3];
    v83 = v46;
    v84 = v45;
    v85 = v48;
    v86 = 0;
    v87 = 1;
    sub_24B8F35E4(&v75, &qword_27F063F58);
    return sub_24B8F35E4(v66, &qword_27F063F48);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B8FF0BC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for AddAppFiltersView();
  v3 = (a1 + v2[5]);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v3 = sub_24BAA86FC();
  v3[1] = v4;
  v5 = v2[6];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[7];
  *v6 = sub_24B8FC66C;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_24BAA85FC();
  LOBYTE(v5) = sub_24BAA90BC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063AA0);
  v9 = a1 + *(result + 36);
  *v9 = v7;
  v9[8] = v5;
  return result;
}

uint64_t sub_24B8FF208@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for AppFilterListSection(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = (a1 + v2[6]);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B8FFA70(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v4 = sub_24BAA86FC();
  v4[1] = v5;
  v6 = a1 + v2[7];
  sub_24BAA99EC();
  *v6 = v10;
  *(v6 + 1) = *(&v10 + 1);
  v7 = a1 + v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10);
  sub_24BAA99EC();
  *v7 = v10;
  *(v7 + 2) = v11;
  v8 = a1 + v2[9];
  result = sub_24BAA99EC();
  *v8 = v10;
  *(v8 + 1) = *(&v10 + 1);
  return result;
}

uint64_t sub_24B8FF3E0(uint64_t a1)
{
  v2 = sub_24BAA854C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24BAA880C();
}

uint64_t sub_24B8FF4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24B8FF5AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_24B8FF670()
{
  sub_24B901C90(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B9018D4(319, &qword_27F063A38, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B8F47B4();
      if (v2 <= 0x3F)
      {
        sub_24B9018D4(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24B9015B0(319, &qword_27F063A48, &qword_27F063A10, &unk_24BAB3020, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24B8FF838()
{
  result = qword_27F063A88;
  if (!qword_27F063A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063A88);
  }

  return result;
}

unint64_t sub_24B8FF88C()
{
  result = qword_27F063A90;
  if (!qword_27F063A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063AA0);
    sub_24B8F384C(&qword_27F063AA8, &qword_27F063A98);
    sub_24B8FF9B4();
    swift_getOpaqueTypeConformance2();
    sub_24B8FFAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063A90);
  }

  return result;
}

unint64_t sub_24B8FF9B4()
{
  result = qword_27F063AB0;
  if (!qword_27F063AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063AA0);
    sub_24B8FFA70(&qword_27F063AB8, type metadata accessor for AddAppFiltersView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063AB0);
  }

  return result;
}

uint64_t sub_24B8FFA70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B8FFAB8()
{
  result = qword_27F063AC0;
  if (!qword_27F063AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063AC8);
    sub_24B8FFBCC(&qword_27F063AD0, &qword_27F063AD8, &unk_24BAAD988, sub_24B8FFB9C);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063AC0);
  }

  return result;
}

uint64_t sub_24B8FFBCC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B8FFC50()
{
  result = qword_27F063AF0;
  if (!qword_27F063AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063AF8);
    sub_24B8FFA70(&qword_27F063B00, type metadata accessor for AppFilterListSection.AutomationsGridContent);
    sub_24B8F384C(&qword_27F063B08, &qword_27F063B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063AF0);
  }

  return result;
}

uint64_t sub_24B8FFD5C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24B8FFD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for AppFilterListSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA8B9C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B8FFFAC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_24B900028()
{
  result = qword_27F063B60;
  if (!qword_27F063B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063B58);
    sub_24B9000B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063B60);
  }

  return result;
}

unint64_t sub_24B9000B4()
{
  result = qword_27F063B68;
  if (!qword_27F063B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063B68);
  }

  return result;
}

uint64_t sub_24B90018C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24B900270(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B90033C()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B901C90(319, &qword_27F063BA0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B9018D4(319, &qword_27F063BA8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B9015B0(319, &qword_27F063BB0, &qword_27F063A10, &unk_24BAB3020, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24B900470(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24B9004CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24B900530()
{
  result = qword_27F063BB8;
  if (!qword_27F063BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063B28);
    sub_24B9005BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063BB8);
  }

  return result;
}

unint64_t sub_24B9005BC()
{
  result = qword_27F063BC0;
  if (!qword_27F063BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063A58);
    sub_24B900648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063BC0);
  }

  return result;
}

unint64_t sub_24B900648()
{
  result = qword_27F063BC8;
  if (!qword_27F063BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063A50);
    sub_24B8FFBCC(&qword_27F063A70, &qword_27F063A60, &unk_24BAAD958, sub_24B8FF808);
    sub_24B8FF88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063BC8);
  }

  return result;
}

unint64_t sub_24B90074C()
{
  result = qword_27F063BD8;
  if (!qword_27F063BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063BD8);
  }

  return result;
}

unint64_t sub_24B9007A0()
{
  result = qword_27F063BE0;
  if (!qword_27F063BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063BD0);
    sub_24B8F384C(&qword_27F063BE8, &qword_27F063BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063BE0);
  }

  return result;
}

unint64_t sub_24B900858()
{
  result = qword_27F063C30;
  if (!qword_27F063C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063C18);
    sub_24B8F384C(&qword_27F063C38, &qword_27F063C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063C30);
  }

  return result;
}

uint64_t sub_24B900910(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24B900970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B9009B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B900A24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063BD0);
  sub_24BAA866C();
  sub_24B9007A0();
  sub_24B8FFA70(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24B900ADC()
{
  result = qword_27F063D10;
  if (!qword_27F063D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063C18);
    sub_24B900858();
    swift_getOpaqueTypeConformance2();
    sub_24B8FFA70(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063D10);
  }

  return result;
}

unint64_t sub_24B900C5C()
{
  result = qword_27F063D40;
  if (!qword_27F063D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063D30);
    sub_24B8F384C(&qword_27F063D48, &qword_27F0668B0);
    sub_24B8F384C(&qword_27F063D50, &qword_27F0668B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063D40);
  }

  return result;
}

unint64_t sub_24B900D48()
{
  result = qword_27F063D58;
  if (!qword_27F063D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063D38);
    sub_24B8FFA70(&qword_27F063D60, type metadata accessor for AppFilterListSection.AppConfigurationItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063D58);
  }

  return result;
}

unint64_t sub_24B900E1C()
{
  result = qword_27F063D68;
  if (!qword_27F063D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F064670);
    sub_24B8FFA70(&qword_27F063D70, type metadata accessor for FocusConfigurationAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063D68);
  }

  return result;
}

uint64_t objectdestroy_79Tm()
{

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

unint64_t sub_24B900F44()
{
  result = qword_27F063D88;
  if (!qword_27F063D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063D78);
    sub_24B8F384C(&qword_27F063D90, &qword_27F0668C0);
    sub_24B8F384C(&qword_27F063D98, &qword_27F0668C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063D88);
  }

  return result;
}

unint64_t sub_24B901030()
{
  result = qword_27F063DA0;
  if (!qword_27F063DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063D80);
    sub_24B8FFA70(&qword_27F063DA8, type metadata accessor for AppFilterListSection.SystemConfigurationItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063DA0);
  }

  return result;
}

unint64_t sub_24B901104()
{
  result = qword_27F063DB0;
  if (!qword_27F063DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063DB8);
    sub_24B8FFA70(&qword_27F063DC0, type metadata accessor for FocusSystemConfigurationAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063DB0);
  }

  return result;
}

uint64_t sub_24B9011B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B901220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B901280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9012FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_24B9013D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B901488()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B9015B0(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B9018D4(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B9018D4(319, &qword_27F063DE0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B9015B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24B901628(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B9016F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B9017A8()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B9018D4(319, &qword_27F063DF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B901C90(319, &qword_27F063E00, type metadata accessor for FocusSystemConfigurationAction, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B9018D4(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B9018D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24B901938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B901A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B901AB8()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B901BFC();
    if (v1 <= 0x3F)
    {
      sub_24B9018D4(319, &qword_27F063DF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24B901C90(319, &unk_27F0646A0, type metadata accessor for FocusConfigurationAction, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24B9018D4(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B901BFC()
{
  if (!qword_27F063E18)
  {
    type metadata accessor for AppIconCache();
    sub_24B8FFA70(&qword_27F0651D0, type metadata accessor for AppIconCache);
    v0 = sub_24BAA831C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063E18);
    }
  }
}

void sub_24B901C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24B901D8C()
{
  v1 = (type metadata accessor for AppFilterListSection.AppConfigurationItemView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_24B900C14();

  v5 = v0 + v3 + v1[10];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670) + 32);
  v7 = sub_24BAA7E4C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for FocusConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B901FCC()
{
  result = qword_27F063E40;
  if (!qword_27F063E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063E30);
    sub_24B902084();
    sub_24B8F384C(&qword_27F063E70, &unk_27F068AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063E40);
  }

  return result;
}

unint64_t sub_24B902084()
{
  result = qword_27F063E48;
  if (!qword_27F063E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063E50);
    sub_24B8FFA70(&qword_27F063E58, type metadata accessor for FilterGridItem);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063E48);
  }

  return result;
}

unint64_t sub_24B902184()
{
  result = qword_27F063E88;
  if (!qword_27F063E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063E80);
    sub_24B8FFA70(&qword_27F063E90, type metadata accessor for AppConfigurationEditView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063E88);
  }

  return result;
}

uint64_t sub_24B90226C()
{
  v1 = (type metadata accessor for AppFilterListSection.SystemConfigurationItemView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8) + 32);
  v7 = sub_24BAA7E4C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for FocusSystemConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B902480()
{
  result = qword_27F063EB8;
  if (!qword_27F063EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063EB0);
    sub_24B8FFA70(&qword_27F063EC0, type metadata accessor for SystemConfigurationEditView);
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063EB8);
  }

  return result;
}

uint64_t sub_24B902568()
{
  v1 = type metadata accessor for AppFilterListSection.AddAutomationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B9026F8()
{
  result = qword_27F063EE8;
  if (!qword_27F063EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063EE0);
    sub_24B8FFA70(&qword_27F063E58, type metadata accessor for FilterGridItem);
    sub_24B8F384C(&qword_27F063EF0, &qword_27F063EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063EE8);
  }

  return result;
}

unint64_t sub_24B902800()
{
  result = qword_27F063F00;
  if (!qword_27F063F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063EC8);
    sub_24B8F384C(&qword_27F063F08, &qword_27F063F10);
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063F00);
  }

  return result;
}

uint64_t sub_24B9028E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B90294C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B902A48()
{
  result = qword_27F063F80;
  if (!qword_27F063F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063AA0);
    sub_24B902800();
    sub_24B8FF9B4();
    swift_getOpaqueTypeConformance2();
    sub_24B8FFA70(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063F80);
  }

  return result;
}

uint64_t sub_24B902B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B902C64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for WeekdayToggles()
{
  result = qword_27F063F90;
  if (!qword_27F063F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B902D60()
{
  sub_24B902DE4();
  if (v0 <= 0x3F)
  {
    sub_24B902E48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B902DE4()
{
  if (!qword_27F063FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063FA8);
    v0 = sub_24BAA9BBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063FA0);
    }
  }
}

void sub_24B902E48()
{
  if (!qword_27F063FB0)
  {
    sub_24BAA7F2C();
    v0 = sub_24BAA82EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063FB0);
    }
  }
}

void *sub_24B902EBC()
{
  v0 = sub_24BAA7F2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeekdayToggles();
  sub_24BA8DA80(v3);
  v4 = sub_24BAA7E9C();
  v6 = *(v1 + 8);
  v5 = v1 + 8;
  v6(v3, v0);
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = qword_285EBE820;
  if ((v4 - 2) > 5)
  {
    return result;
  }

  v13 = qword_285EBE820;
  v14 = &byte_285EBE840;
  v15 = (v4 - 1);
  v16 = 15;
  sub_24B904A90(qword_285EBE820, &byte_285EBE840, 0, (2 * (v4 - 1)) | 1);
  v0 = v13;
  v4 = v14;
  v3 = v15;
  v5 = v16;
  if ((v16 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_24BAAA7AC();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v5 >> 1, v3))
  {
    goto LABEL_14;
  }

  if (v11 != (v5 >> 1) - v3)
  {
LABEL_15:
    swift_unknownObjectRelease_n();
LABEL_4:
    sub_24B99B108(v0, v4, v3, v5);
    v9 = v8;
    goto LABEL_11;
  }

  v12 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  result = v12;
  if (v12)
  {
    return result;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_11:
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_24B9030A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = type metadata accessor for WeekdayToggles();
  v6 = v5 - 8;
  v51 = *(v5 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24BAA7F2C();
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FF0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = *a1;
  v20 = *(v6 + 28);
  sub_24BA8DA80(v12);
  result = sub_24BAA7EDC();
  if (*(result + 16) <= v19)
  {
    __break(1u);
  }

  else
  {
    v46 = v14;
    v47 = v18;
    v48 = v13;
    v22 = result + 16 * v19;
    v49 = v20;
    v24 = *(v22 + 32);
    v23 = *(v22 + 40);

    v25 = *(v54 + 8);
    v54 += 8;
    v45 = v25;
    v25(v12, v53);
    v55 = v24;
    v56 = v23;
    sub_24B90399C(a2, &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24BAAA1BC();
    v26 = sub_24BAAA1AC();
    v27 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v28 = v27 + v7;
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 16) = v26;
    *(v29 + 24) = v30;
    sub_24B903B2C(v8, v29 + v27);
    *(v29 + v28) = v19;
    sub_24B90399C(a2, v8);
    v31 = sub_24BAAA1AC();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = MEMORY[0x277D85700];
    sub_24B903B2C(v8, v32 + v27);
    *(v32 + v28) = v19;
    sub_24BAA9B9C();
    sub_24B8F5E3C();
    v33 = v52;
    sub_24BAA9AFC();
    sub_24BA8DA80(v12);
    result = sub_24BAA7ECC();
    if (*(result + 16) > v19)
    {
      v34 = result + 16 * v19;
      v35 = *(v34 + 32);
      v36 = *(v34 + 40);

      v45(v12, v53);
      *&v57 = v35;
      *(&v57 + 1) = v36;
      sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
      v37 = v47;
      v38 = v48;
      sub_24BAA959C();

      (*(v46 + 8))(v33, v38);
      sub_24BAA9D1C();
      sub_24BAA86BC();
      v39 = v50;
      sub_24B904010(v37, v50);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FD0);
      v40 = (v39 + *(result + 36));
      v41 = v62;
      v40[4] = v61;
      v40[5] = v41;
      v40[6] = v63;
      v42 = v58;
      *v40 = v57;
      v40[1] = v42;
      v43 = v60;
      v40[2] = v59;
      v40[3] = v43;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B90360C@<X0>(uint64_t a1@<X2>, unsigned __int8 a2@<W3>, BOOL *a3@<X8>)
{
  v8[1] = *a1;
  v9 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FF8);
  MEMORY[0x24C24FC10](v8, v5);
  v6 = sub_24B914650(a2, v8[0]);

  *a3 = v6;
  return result;
}

uint64_t sub_24B903694(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  if (*a1 == 1)
  {
    v15 = *a4;
    v16 = v7;
    v17 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FF8);
    MEMORY[0x24C24FC10](&v18);
    sub_24B8E523C(&v10, a5);
  }

  else
  {
    v15 = *a4;
    v16 = v7;
    v17 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FF8);
    MEMORY[0x24C24FC10](&v18);
    sub_24B9AC58C(a5);
  }

  v12 = v6;
  v13 = v7;
  v14 = v8;
  v11 = v18;
  sub_24BAA9B6C();
}

uint64_t sub_24B9037C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_24BAA8AAC();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FB8);
  v9[1] = sub_24B902EBC();
  swift_getKeyPath();
  sub_24B90399C(v2, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B903B2C(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FD0);
  sub_24B8F384C(&qword_27F063FD8, &qword_27F063FC8);
  sub_24B8F3E00();
  sub_24B903C10();
  return sub_24BAA9BFC();
}

uint64_t sub_24B90399C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekdayToggles();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B903A00()
{
  v1 = (type metadata accessor for WeekdayToggles() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA7F2C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B903B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekdayToggles();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B903B90@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WeekdayToggles() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B9030A8(a1, v6, a2);
}

unint64_t sub_24B903C10()
{
  result = qword_27F063FE0;
  if (!qword_27F063FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063FD0);
    sub_24B903C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063FE0);
  }

  return result;
}

unint64_t sub_24B903C9C()
{
  result = qword_27F063FE8;
  if (!qword_27F063FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063FF0);
    sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
    sub_24B903D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063FE8);
  }

  return result;
}

unint64_t sub_24B903D54()
{
  result = qword_27F0690A0;
  if (!qword_27F0690A0)
  {
    sub_24BAA905C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0690A0);
  }

  return result;
}

uint64_t sub_24B903DB0@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for WeekdayToggles() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_24B90360C(v4, v5, a1);
}

uint64_t objectdestroy_3Tm()
{
  v1 = (type metadata accessor for WeekdayToggles() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA7F2C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_24B903F7C(_BYTE *a1)
{
  v3 = *(type metadata accessor for WeekdayToggles() - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v5 = *(v4 + *(v3 + 64));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_24B903694(a1, v6, v7, v4, v5);
}

uint64_t sub_24B904010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B904080(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_24BAAA7AC();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v4 != v9 + v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_24BAA3A1C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + v14), v4 - v14);
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24B9041F8(uint64_t *a1, size_t a2, uint64_t a3, void (*a4)(size_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v17;
  v18 = (v10 + 32);
  v19 = v10 + 32 + a2;
  __dst = (v19 + a3);
  result = sub_24B9046A8(result);
  if (result)
  {
    v20 = result;
    v31 = v10;
    v21 = v4[2];
    v22 = (v4[1] + v21);
    v23 = &v22[a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, a2);
    }

    a4(v19, a3);
    if (__dst != &v23[v33] || __dst >= &v23[v33 + v15])
    {
      memmove(__dst, &v23[v33], v15);
    }

    *(v20 + 16) = 0;

    v10 = v31;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v25 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v26 = v4[1];
    memcpy((v10 + 32), (v26 + v21), a2);
    result = (a4)(&v18[a2], a3);
    v27 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(__dst, (v26 + v27), v28 - v27);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v29 = *(v10 + 16);
  v12 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v30 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v10;
  v4[1] = &v18[-v21];
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

uint64_t sub_24B904414(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_24BAAA7AC();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_24B9044CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_24BAAA7AC();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + a5 + v8;
  if (v13 == v11 + v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_24BAA3A1C(v6, v25);
}

uint64_t sub_24B9046A8(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_24BAAA7AC();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v6 + v7 != v9 + v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_24BAAA7AC();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v15 = v8 + v6 - result - 32;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_24B9AEF0C(v5, v4, 0);
    return v16;
  }

  return result;
}

void *sub_24B904808(void *result)
{
  v2 = v1[3];
  v28 = v1[2];
  v3 = ((v2 >> 1) - v28);
  if (__OFSUB__(v2 >> 1, v28))
  {
    goto LABEL_46;
  }

  v4 = result[4];
  v5 = result[3] >> 1;
  if (v4 != v5)
  {
    v6 = result[2];
    if (v4 < v6 || v4 >= v5)
    {
      goto LABEL_47;
    }

    v8 = result[1];
    v9 = v4 + 1;
    v10 = *(v8 + v4);
    v25 = result[2];
    v26 = v1;
    while (!__OFADD__(v3, 1))
    {
      v29 = sub_24B9044CC(v3, v3 + 1, *v1, v1[1], v28, v2);
      v11 = sub_24B90468C();
      sub_24B9041F8(&v29, v3, 0, v11);

      v2 = v1[3];
      v28 = v1[2];
      v12 = (v2 >> 1) - v28;
      if (__OFSUB__(v2 >> 1, v28))
      {
        goto LABEL_40;
      }

      v24 = v2 >> 1;
      v27 = v1[1];
      if (v2)
      {
        sub_24BAAA7AC();
        swift_unknownObjectRetain();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
          v13 = MEMORY[0x277D84F90];
        }

        v14 = *(v13 + 16);
        if (v27 + (v2 >> 1) == v13 + v14 + 32)
        {
          v16 = *(v13 + 24);

          v17 = (v16 >> 1) - v14;
          v18 = __OFADD__(v12, v17);
          v15 = (v12 + v17);
          if (v18)
          {
            goto LABEL_45;
          }
        }

        else
        {

          v15 = ((v2 >> 1) - v28);
        }

        v6 = v25;
        v1 = v26;
        if (v3 < v15)
        {
LABEL_21:
          v19 = v9;
          while (1)
          {
            *(v3 + v27 + v28) = v10;
            v3 = (v3 + 1);
            if (v5 == v19)
            {
              v10 = 7;
              v9 = v5;
              goto LABEL_28;
            }

            if (v9 < v6 || v19 >= v5)
            {
              break;
            }

            v10 = *(v8 + v19++);
            if (v15 == v3)
            {
              v9 = v19;
              v3 = v15;
              goto LABEL_28;
            }
          }

          __break(1u);
          break;
        }
      }

      else
      {
        v15 = ((v2 >> 1) - v28);
        if (v3 < v12)
        {
          goto LABEL_21;
        }
      }

LABEL_28:
      v18 = __OFSUB__(v3, v12);
      v20 = v3 - v12;
      if (v18)
      {
        goto LABEL_41;
      }

      if (v20)
      {
        sub_24BAAA7AC();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = MEMORY[0x277D84F90];
        }

        v21 = result[2];
        v18 = __OFADD__(v21, v20);
        v22 = &v20[v21];
        if (v18)
        {
          goto LABEL_42;
        }

        result[2] = v22;

        v23 = &v20[v24];
        if (__OFADD__(v24, v20))
        {
          goto LABEL_43;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v2 = v2 & 1 | (2 * v23);
        v6 = v25;
        v1 = v26;
        v26[3] = v2;
      }

      if (v10 == 7)
      {
        return result;
      }
    }

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
LABEL_47:
    __break(1u);
  }

  return result;
}

void *sub_24B904A90(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_24BAAA7AC();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  if (v12 + v8 + v9 != v13 + v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_24B904080(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + (v20 >> 1));
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_24BAAA7AC();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + a3), v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_24B904414(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_24B904808(v32);
  }

  return result;
}

void sub_24B904D64()
{
  sub_24B90B718(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B904FA8(319, &qword_27F063E00, type metadata accessor for FocusSystemConfigurationAction);
    if (v1 <= 0x3F)
    {
      sub_24B8F45F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B904EA0()
{
  sub_24B90B718(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B904FA8(319, &unk_27F0646A0, type metadata accessor for FocusConfigurationAction);
    if (v1 <= 0x3F)
    {
      sub_24B8F45F4();
      if (v2 <= 0x3F)
      {
        sub_24B904FFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B904FA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24BAA9BBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B904FFC()
{
  if (!qword_27F063A40)
  {
    v0 = sub_24BAA9A2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063A40);
    }
  }
}

uint64_t sub_24B905068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_24BAA8A4C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0640F8);
  MEMORY[0x28223BE20](v37);
  v6 = (&v36 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064100);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7);
  v36 = &v36 - v9;
  v10 = type metadata accessor for AppConfigurationEditView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_24B90AD14(v1, &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppConfigurationEditView);
  sub_24BAAA1BC();
  v13 = sub_24BAAA1AC();
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_24B90AF7C(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AppConfigurationEditView);
  sub_24B90AD14(v1, &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppConfigurationEditView);
  v17 = sub_24BAAA1AC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = MEMORY[0x277D85700];
  sub_24B90AF7C(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v14, type metadata accessor for AppConfigurationEditView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E98);
  sub_24BAA9B9C();
  *v6 = sub_24BAA9CCC();
  v6[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064108);
  sub_24B90578C(v2, &v47, v6 + *(v20 + 44));
  v21 = [objc_opt_self() systemGroupedBackgroundColor];
  v22 = sub_24BAA973C();
  v23 = sub_24BAA90BC();
  v24 = v37;
  v25 = v38;
  v26 = v6 + *(v37 + 36);
  *v26 = v22;
  v26[8] = v23;
  v28 = v39;
  v27 = v40;
  (*(v39 + 104))(v25, *MEMORY[0x277CDDDC0], v40);
  v29 = sub_24B90BE70();
  v30 = v36;
  sub_24BAA964C();
  (*(v28 + 8))(v25, v27);
  sub_24B8F35E4(v6, &qword_27F0640F8);
  v44 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064050);
  v45 = v24;
  v46 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
  v32 = sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  v45 = v31;
  v46 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v43;
  v34 = v41;
  sub_24BAA96CC();
  (*(v42 + 8))(v30, v34);
  LOBYTE(v27) = sub_24BAA90DC();
  v45 = v47;
  sub_24B90BF84(&v45);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064128);
  *(v33 + *(result + 36)) = v27;
  return result;
}

double sub_24B9055D8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppConfigurationEditView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064170);
  sub_24BAA99FC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_24B905664()
{
  type metadata accessor for AppConfigurationEditView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064170);
  sub_24BAA9A0C();
  sub_24BAA99FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24B90578C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064138);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v69 = v65 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064140);
  MEMORY[0x28223BE20](v71);
  v75 = v65 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064148);
  MEMORY[0x28223BE20](v73);
  v74 = v65 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064150);
  v8 = MEMORY[0x28223BE20](v72);
  v80 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = v65 - v11;
  MEMORY[0x28223BE20](v10);
  v78 = v65 - v12;
  v13 = type metadata accessor for FocusAppConfigurationDetailView(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v79 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (v65 - v17);
  v19 = type metadata accessor for AppConfigurationEditView(0);
  v20 = v19[7];
  v21 = (a1 + v19[6]);
  v22 = v21[1];
  v67 = *v21;
  v23 = *(a1 + v20 + 8);
  v66 = *(a1 + v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  sub_24BAA9B8C();
  v82 = v19;
  v24 = v19[10];
  v68 = a1;
  v25 = (a1 + v24);
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(v83.origin.x) = v26;
  v83.origin.y = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v28 = v87;
  LOBYTE(v19) = v88;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B90A67C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v18 = sub_24BAA86FC();
  v18[1] = v29;
  v18[2] = v67;
  v18[3] = v22;
  v18[4] = v66;
  v18[5] = v23;
  v30 = v18 + *(v14 + 40);
  *v30 = v28;
  v30[16] = v19;
  v31 = *(v14 + 44);
  v67 = v18;
  v32 = v18 + v31;
  v33 = *(a2 + 1);
  v34 = *(a2 + 2);
  *v32 = *a2;
  *(v32 + 1) = v33;
  v90 = *a2;
  *(v32 + 2) = v34;
  v32[48] = *(a2 + 48);

  sub_24B90BFFC(&v90, &v87);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v83.origin.x = sub_24BAA7C2C();
  v83.origin.y = v35;
  v36 = v68;
  v37 = (v68 + v82[9]);
  v38 = *v37;
  v39 = *(v37 + 1);
  v85 = v38;
  v86 = v39;
  v40 = sub_24BAA9A1C();
  v66 = v65;
  v65[3] = v88;
  MEMORY[0x28223BE20](v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064158);
  sub_24B90C07C();
  sub_24B8F5E3C();
  sub_24B8F384C(&qword_27F064168, &qword_27F064158);
  v41 = v69;
  sub_24BAA95BC();

  v42 = (v36 + v82[11]);
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  v47 = *(v42 + 32);
  v48 = v42[5];
  *&v87 = *v42;
  *(&v87 + 1) = v44;
  *&v88 = v45;
  *(&v88 + 1) = v46;
  LOBYTE(v89) = v47;
  *(&v89 + 1) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064170);
  sub_24BAA99FC();
  MidY = 0.0;
  MidX = 0.0;
  if ((v84 & 1) == 0)
  {
    MidX = CGRectGetMidX(v83);
  }

  *&v87 = v43;
  *(&v87 + 1) = v44;
  *&v88 = v45;
  *(&v88 + 1) = v46;
  LOBYTE(v89) = v47;
  *(&v89 + 1) = v48;
  sub_24BAA99FC();
  if ((v84 & 1) == 0)
  {
    MidY = CGRectGetMidY(v83);
  }

  v51 = v75;
  (*(v76 + 32))(v75, v41, v77);
  v52 = &v51[*(v71 + 36)];
  *v52 = MidX;
  v52[1] = MidY;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v53 = v51;
  v54 = v74;
  sub_24B90294C(v53, v74, &qword_27F064140);
  v55 = (v54 + *(v73 + 36));
  v56 = v88;
  *v55 = v87;
  v55[1] = v56;
  v55[2] = v89;
  v57 = v70;
  sub_24B90294C(v54, v70, &qword_27F064148);
  *(v57 + *(v72 + 36)) = 0;
  v58 = v78;
  sub_24B90294C(v57, v78, &qword_27F064150);
  v59 = v67;
  v60 = v79;
  sub_24B90AD14(v67, v79, type metadata accessor for FocusAppConfigurationDetailView);
  v61 = v80;
  sub_24B8F3208(v58, v80, &qword_27F064150);
  v62 = v81;
  sub_24B90AD14(v60, v81, type metadata accessor for FocusAppConfigurationDetailView);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064178);
  sub_24B8F3208(v61, v62 + *(v63 + 48), &qword_27F064150);
  sub_24B8F35E4(v58, &qword_27F064150);
  sub_24B90CB54(v59, type metadata accessor for FocusAppConfigurationDetailView);
  sub_24B8F35E4(v61, &qword_27F064150);
  return sub_24B90CB54(v60, type metadata accessor for FocusAppConfigurationDetailView);
}

uint64_t sub_24B90600C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064180);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v58 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v45 - v6;
  v7 = sub_24BAA83FC();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppConfigurationEditView(0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v55 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064188);
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064190);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v54 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v45 - v26;
  sub_24BAA824C();
  v28 = sub_24BAA826C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v47 = v29 + 56;
  v48 = v30;
  v30(v14, 0, 1, v28);
  sub_24B90AD14(v2, &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppConfigurationEditView);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_24B90AF7C(&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for AppConfigurationEditView);
  sub_24BAA9A4C();
  sub_24BAA83EC();
  v33 = sub_24BAA845C();
  sub_24BAA846C();
  sub_24BAA846C();
  if (sub_24BAA846C() != v33)
  {
    sub_24BAA846C();
  }

  v34 = sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA953C();
  (*(v51 + 8))(v9, v52);
  v35 = *(v55 + 8);
  v35(v19, v15);
  v59 = v15;
  v60 = v34;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  sub_24BAA94DC();
  (*(v49 + 8))(v22, v36);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v59 = sub_24BAA7C2C();
  v60 = v37;
  sub_24BAA825C();
  v48(v14, 0, 1, v28);
  sub_24B8F5E3C();
  v38 = v53;
  sub_24BAA9A6C();
  v39 = v56;
  sub_24BAA94DC();
  v35(v38, v15);
  v40 = v54;
  sub_24B8F3208(v27, v54, &qword_27F064190);
  v41 = v58;
  sub_24B8F3208(v39, v58, &qword_27F064180);
  v42 = v57;
  sub_24B8F3208(v40, v57, &qword_27F064190);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064198);
  sub_24B8F3208(v41, v42 + *(v43 + 48), &qword_27F064180);
  sub_24B8F35E4(v39, &qword_27F064180);
  sub_24B8F35E4(v27, &qword_27F064190);
  sub_24B8F35E4(v41, &qword_27F064180);
  return sub_24B8F35E4(v40, &qword_27F064190);
}

uint64_t sub_24B9067B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppConfigurationEditView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-v8];
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v23 = sub_24BAA7C2C();
  v24 = v10;
  sub_24BAA825C();
  v11 = sub_24BAA826C();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_24B90AD14(a1, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AppConfigurationEditView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_24B90AF7C(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for AppConfigurationEditView);
  sub_24B8F5E3C();
  sub_24BAA9A6C();
  v14 = a1 + *(v4 + 40);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v23) = v15;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  v17 = v22[15];
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = (v17 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  v21 = (a2 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_24B90CF38;
  v21[2] = v19;
  return result;
}

uint64_t sub_24B906AB4(uint64_t a1)
{
  v2 = sub_24BAA868C();
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - v4;
  v5 = type metadata accessor for FocusConfigurationAction(0);
  v6 = MEMORY[0x28223BE20](v5);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  type metadata accessor for AppConfigurationEditView(0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  v18[v5[5]] = 0;
  MEMORY[0x24C24FC10](v19);
  v20 = *&v16[v5[9]];
  sub_24B90CB54(v16, type metadata accessor for FocusConfigurationAction);
  v21 = [v20 identifier];

  if (!v21)
  {
    sub_24BAAA01C();
    v21 = sub_24BAA9FDC();
  }

  MEMORY[0x24C24FC10](v19);
  v22 = *&v13[v5[10]];
  v23 = v22;
  sub_24B90CB54(v13, type metadata accessor for FocusConfigurationAction);
  v39 = a1;
  if (v22)
  {
    MEMORY[0x24C24FC10](v19);

    sub_24B90CB54(v10, type metadata accessor for FocusConfigurationAction);
    v24 = sub_24BAA9FDC();

    v25 = [v23 mangledTypeNameForBundleIdentifier_];

    sub_24BAAA01C();
    v22 = sub_24BAA9FDC();
  }

  v26 = objc_allocWithZone(MEMORY[0x277D23720]);
  sub_24B90A754();
  v27 = sub_24BAAA11C();

  v28 = [v26 initWithIdentifier:v21 mangledTypeName:v22 openAppWhenRun:0 parameters:v27];

  v29 = v5[9];
  *&v18[v29] = v28;
  v30 = v5[11];
  v31 = *&v18[v30];
  if (v31)
  {

    *&v18[v30] = 0;
  }

  sub_24B90AD14(v18, v10, type metadata accessor for FocusConfigurationAction);
  sub_24B90AD14(v10, v35, type metadata accessor for FocusConfigurationAction);
  sub_24BAA9B6C();
  sub_24B90CB54(v10, type metadata accessor for FocusConfigurationAction);
  v32 = v36;
  sub_24BA8DA5C(v36);
  MEMORY[0x24C24FC10](v37);
  sub_24BAA867C();
  sub_24BAA9B6C();
  sub_24B8F35E4(v32, &qword_27F063940);
  return sub_24B90CB54(v18, type metadata accessor for FocusConfigurationAction);
}

uint64_t sub_24B906F70@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for AppConfigurationHostView(0);
  v3 = (v2 - 8);
  v64 = *(v2 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24BAA8A4C();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064030);
  MEMORY[0x28223BE20](v55);
  v7 = (&v48 - v6);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064038);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v48 - v8;
  v9 = v3[9];
  v10 = (v1 + v3[8]);
  v11 = v10[1];
  v52 = *v10;
  v50 = v11;
  v53 = v1;
  v12 = *(v1 + v9 + 8);
  v51 = *(v1 + v9);
  v13 = v3[10];
  v14 = type metadata accessor for FocusAppConfigurationDetailView(0);
  sub_24B8F3208(v1 + v13, v7 + v14[7], &unk_27F064670);
  v15 = (v1 + v3[12]);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v66) = v16;
  *(&v66 + 1) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v19 = v69;
  v18 = v70;
  v20 = v71;
  v66 = 0u;
  v67 = 0u;
  v68 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E98);
  sub_24BAA9BAC();
  v22 = v69;
  v21 = v70;
  LOBYTE(v3) = v73;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B90A67C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v49 = v71;
  v48 = v72;
  *v7 = sub_24BAA86FC();
  v7[1] = v23;
  v24 = v50;
  v7[2] = v52;
  v7[3] = v24;
  v7[4] = v51;
  v7[5] = v12;
  v25 = v7 + v14[8];
  *v25 = v19;
  *(v25 + 1) = v18;
  v25[16] = v20;
  v26 = v7 + v14[9];
  *v26 = v22;
  *(v26 + 1) = v21;
  v27 = v48;
  *(v26 + 1) = v49;
  *(v26 + 2) = v27;
  v26[48] = v3;
  v28 = [objc_opt_self() systemGroupedBackgroundColor];
  v29 = sub_24BAA973C();
  v30 = sub_24BAA90BC();
  v31 = v55;
  v32 = v7 + *(v55 + 36);
  *v32 = v29;
  v32[8] = v30;
  v33 = v57;
  v34 = v56;
  v35 = v58;
  (*(v57 + 104))(v56, *MEMORY[0x277CDDDC0], v58);
  v36 = sub_24B90A594();
  v37 = v54;
  sub_24BAA964C();
  (*(v33 + 8))(v34, v35);
  sub_24B8F35E4(v7, &qword_27F064030);
  v38 = v53;
  v65 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064050);
  v69 = v31;
  v70 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
  v40 = sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  v69 = v39;
  v70 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v61;
  v42 = v59;
  sub_24BAA96CC();
  (*(v60 + 8))(v37, v42);
  LOBYTE(v7) = sub_24BAA90DC();
  *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064068) + 36)) = v7;
  v43 = v62;
  sub_24B90AD14(v38, v62, type metadata accessor for AppConfigurationHostView);
  v44 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v45 = swift_allocObject();
  sub_24B90AF7C(v43, v45 + v44, type metadata accessor for AppConfigurationHostView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064070);
  v47 = (v41 + *(result + 36));
  *v47 = 0;
  v47[1] = 0;
  v47[2] = sub_24B90A6F8;
  v47[3] = v45;
  return result;
}

uint64_t sub_24B90760C(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064058);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  sub_24B90A7A8();
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B9077C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppConfigurationHostView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v19 = sub_24BAA7C2C();
  v20 = v7;
  sub_24B90AD14(a1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AppConfigurationHostView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24B90AF7C(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for AppConfigurationHostView);
  sub_24B8F5E3C();
  sub_24BAA9A7C();
  v10 = a1 + *(v4 + 40);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v19) = v11;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  v13 = v18[15];
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v13 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_24B9027F8;
  v17[2] = v15;
  return result;
}

uint64_t sub_24B907A1C(uint64_t a1)
{
  v2 = type metadata accessor for FocusConfigurationAction(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppConfigurationHostView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  v5[*(v3 + 28)] = 1;
  sub_24BAA9B6C();
  return (*(a1 + *(v6 + 36)))(1);
}

uint64_t sub_24B907B08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - v3;
  v5 = type metadata accessor for FocusConfigurationAction(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = *(type metadata accessor for AppConfigurationHostView(0) + 32);
  MEMORY[0x24C24FC10](v2);
  v15 = v13[v5[5]];
  result = sub_24B90CB54(v13, type metadata accessor for FocusConfigurationAction);
  if ((v15 & 1) == 0)
  {
    MEMORY[0x24C24FC10](v2);
    v30 = v4;
    sub_24B8F3208(v1 + v14, v4, &unk_27F064670);
    v17 = [*&v11[v5[9]] identifier];
    if (!v17)
    {
      sub_24BAAA01C();
      v17 = sub_24BAA9FDC();
    }

    v31 = v8;
    v32 = v11;
    v18 = *&v11[v5[10]];
    if (v18)
    {
      v19 = sub_24BAA9FDC();
      v20 = [v18 mangledTypeNameForBundleIdentifier_];

      sub_24BAAA01C();
      v18 = sub_24BAA9FDC();
    }

    v21 = objc_allocWithZone(MEMORY[0x277D23720]);
    sub_24B90A754();
    v22 = sub_24BAAA11C();

    v23 = [v21 initWithIdentifier:v17 mangledTypeName:v18 openAppWhenRun:0 parameters:v22];

    v24 = v30;
    MEMORY[0x24C24FC10](v2);
    v25 = v5[9];

    *&v13[v25] = v23;
    sub_24BAA9B6C();
    sub_24B8F35E4(v24, &unk_27F064670);
    MEMORY[0x24C24FC10](v2);
    v13[v5[6]] = 1;
    sub_24BAA9B6C();
    v26 = v31;
    MEMORY[0x24C24FC10](v2);
    v27 = v5[11];
    v28 = *&v26[v27];
    if (v28)
    {

      *&v26[v27] = 0;
    }

    sub_24BAA9B6C();
    return sub_24B90CB54(v32, type metadata accessor for FocusConfigurationAction);
  }

  return result;
}

uint64_t sub_24B907E84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_24BAA8A4C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0641A0);
  MEMORY[0x28223BE20](v37);
  v6 = (&v36 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0641A8);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7);
  v36 = &v36 - v9;
  v10 = type metadata accessor for SystemConfigurationEditView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_24B90AD14(v1, &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemConfigurationEditView);
  sub_24BAAA1BC();
  v13 = sub_24BAAA1AC();
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_24B90AF7C(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SystemConfigurationEditView);
  sub_24B90AD14(v1, &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemConfigurationEditView);
  v17 = sub_24BAAA1AC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = MEMORY[0x277D85700];
  sub_24B90AF7C(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v14, type metadata accessor for SystemConfigurationEditView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E98);
  sub_24BAA9B9C();
  *v6 = sub_24BAA9CCC();
  v6[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0641B0);
  sub_24B9085A8(v2, &v47, v6 + *(v20 + 44));
  v21 = [objc_opt_self() systemGroupedBackgroundColor];
  v22 = sub_24BAA973C();
  v23 = sub_24BAA90BC();
  v24 = v37;
  v25 = v38;
  v26 = v6 + *(v37 + 36);
  *v26 = v22;
  v26[8] = v23;
  v28 = v39;
  v27 = v40;
  (*(v39 + 104))(v25, *MEMORY[0x277CDDDC0], v40);
  v29 = sub_24B90C6E4();
  v30 = v36;
  sub_24BAA964C();
  (*(v28 + 8))(v25, v27);
  sub_24B8F35E4(v6, &qword_27F0641A0);
  v44 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  v45 = v24;
  v46 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v32 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v45 = v31;
  v46 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v43;
  v34 = v41;
  sub_24BAA96CC();
  (*(v42 + 8))(v30, v34);
  LOBYTE(v27) = sub_24BAA90DC();
  v45 = v47;
  sub_24B90BF84(&v45);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0641D0);
  *(v33 + *(result + 36)) = v27;
  return result;
}

double sub_24B9083F4@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemConfigurationEditView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064170);
  sub_24BAA99FC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_24B908480()
{
  type metadata accessor for SystemConfigurationEditView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064170);
  sub_24BAA9A0C();
  sub_24BAA99FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24B9085A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064138);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v60 = v57 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064140);
  MEMORY[0x28223BE20](v62);
  v66 = v57 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064148);
  MEMORY[0x28223BE20](v64);
  v65 = v57 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064150);
  v8 = MEMORY[0x28223BE20](v63);
  v72 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = v57 - v11;
  MEMORY[0x28223BE20](v10);
  v70 = v57 - v12;
  v13 = type metadata accessor for FocusSystemConfigurationDetailView(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v71 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (v57 - v17);
  v19 = type metadata accessor for SystemConfigurationEditView(0);
  v20 = (a1 + *(v19 + 24));
  v22 = *v20;
  v21 = v20[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  sub_24BAA9B8C();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B90A67C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v18 = sub_24BAA86FC();
  v18[1] = v23;
  v18[2] = v22;
  v18[3] = v21;
  v24 = *(v14 + 36);
  v67 = v18;
  v25 = v18 + v24;
  v26 = *(a2 + 1);
  v27 = *(a2 + 2);
  *v25 = *a2;
  *(v25 + 1) = v26;
  v81 = *a2;
  *(v25 + 2) = v27;
  v25[48] = *(a2 + 48);

  sub_24B90BFFC(&v81, &v78);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v74.origin.x = sub_24BAA7C2C();
  v74.origin.y = v28;
  v29 = (a1 + *(v19 + 36));
  v30 = *v29;
  v31 = *(v29 + 1);
  v76 = v30;
  v77 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  v32 = sub_24BAA9A1C();
  v59 = v57;
  v57[1] = v79;
  MEMORY[0x28223BE20](v32);
  v58 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064158);
  sub_24B90C07C();
  sub_24B8F5E3C();
  sub_24B8F384C(&qword_27F064168, &qword_27F064158);
  v33 = v60;
  sub_24BAA95BC();

  v34 = (a1 + *(v58 + 32));
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  v39 = *(v34 + 32);
  v40 = v34[5];
  *&v78 = *v34;
  *(&v78 + 1) = v36;
  *&v79 = v37;
  *(&v79 + 1) = v38;
  LOBYTE(v80) = v39;
  *(&v80 + 1) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064170);
  sub_24BAA99FC();
  MidY = 0.0;
  MidX = 0.0;
  if ((v75 & 1) == 0)
  {
    MidX = CGRectGetMidX(v74);
  }

  *&v78 = v35;
  *(&v78 + 1) = v36;
  *&v79 = v37;
  *(&v79 + 1) = v38;
  LOBYTE(v80) = v39;
  *(&v80 + 1) = v40;
  sub_24BAA99FC();
  if ((v75 & 1) == 0)
  {
    MidY = CGRectGetMidY(v74);
  }

  v43 = v66;
  (*(v68 + 32))(v66, v33, v69);
  v44 = &v43[*(v62 + 36)];
  *v44 = MidX;
  v44[1] = MidY;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v45 = v43;
  v46 = v65;
  sub_24B90294C(v45, v65, &qword_27F064140);
  v47 = (v46 + *(v64 + 36));
  v48 = v79;
  *v47 = v78;
  v47[1] = v48;
  v47[2] = v80;
  v49 = v61;
  sub_24B90294C(v46, v61, &qword_27F064148);
  *(v49 + *(v63 + 36)) = 0;
  v50 = v70;
  sub_24B90294C(v49, v70, &qword_27F064150);
  v51 = v67;
  v52 = v71;
  sub_24B90AD14(v67, v71, type metadata accessor for FocusSystemConfigurationDetailView);
  v53 = v72;
  sub_24B8F3208(v50, v72, &qword_27F064150);
  v54 = v73;
  sub_24B90AD14(v52, v73, type metadata accessor for FocusSystemConfigurationDetailView);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0641D8);
  sub_24B8F3208(v53, v54 + *(v55 + 48), &qword_27F064150);
  sub_24B8F35E4(v50, &qword_27F064150);
  sub_24B90CB54(v51, type metadata accessor for FocusSystemConfigurationDetailView);
  sub_24B8F35E4(v53, &qword_27F064150);
  return sub_24B90CB54(v52, type metadata accessor for FocusSystemConfigurationDetailView);
}

uint64_t sub_24B908D9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064180);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v58 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v45 - v6;
  v7 = sub_24BAA83FC();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SystemConfigurationEditView(0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v55 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064188);
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064190);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v54 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v45 - v26;
  sub_24BAA824C();
  v28 = sub_24BAA826C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v47 = v29 + 56;
  v48 = v30;
  v30(v14, 0, 1, v28);
  sub_24B90AD14(v2, &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemConfigurationEditView);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_24B90AF7C(&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for SystemConfigurationEditView);
  sub_24BAA9A4C();
  sub_24BAA83EC();
  v33 = sub_24BAA845C();
  sub_24BAA846C();
  sub_24BAA846C();
  if (sub_24BAA846C() != v33)
  {
    sub_24BAA846C();
  }

  v34 = sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA953C();
  (*(v51 + 8))(v9, v52);
  v35 = *(v55 + 8);
  v35(v19, v15);
  v59 = v15;
  v60 = v34;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  sub_24BAA94DC();
  (*(v49 + 8))(v22, v36);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v59 = sub_24BAA7C2C();
  v60 = v37;
  sub_24BAA825C();
  v48(v14, 0, 1, v28);
  sub_24B8F5E3C();
  v38 = v53;
  sub_24BAA9A6C();
  v39 = v56;
  sub_24BAA94DC();
  v35(v38, v15);
  v40 = v54;
  sub_24B8F3208(v27, v54, &qword_27F064190);
  v41 = v58;
  sub_24B8F3208(v39, v58, &qword_27F064180);
  v42 = v57;
  sub_24B8F3208(v40, v57, &qword_27F064190);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064198);
  sub_24B8F3208(v41, v42 + *(v43 + 48), &qword_27F064180);
  sub_24B8F35E4(v39, &qword_27F064180);
  sub_24B8F35E4(v27, &qword_27F064190);
  sub_24B8F35E4(v41, &qword_27F064180);
  return sub_24B8F35E4(v40, &qword_27F064190);
}

uint64_t sub_24B909548(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B909728(uint64_t a1)
{
  v2 = type metadata accessor for SystemConfigurationEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v13[0] = sub_24BAA7C2C();
  v13[1] = v8;
  sub_24BAA825C();
  v9 = sub_24BAA826C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_24B90AD14(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemConfigurationEditView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_24B90AF7C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SystemConfigurationEditView);
  sub_24B8F5E3C();
  return sub_24BAA9A6C();
}

uint64_t sub_24B909970()
{
  v0 = sub_24BAA868C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_24BA8DA5C(&v5 - v2);
  MEMORY[0x24C24FC10](v1);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F35E4(v3, &qword_27F063940);
}

uint64_t sub_24B909A84()
{
  v0 = sub_24BAA868C();
  MEMORY[0x28223BE20](v0 - 8);
  v19[1] = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v19[0]);
  v3 = v19 - v2;
  v4 = type metadata accessor for FocusSystemConfigurationAction(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  type metadata accessor for SystemConfigurationEditView(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x24C24FC10]();
  v10[*(v5 + 28)] = 0;
  sub_24BAA9B6C();
  MEMORY[0x24C24FC10](v11);
  v12 = *&v10[*(v5 + 40)];
  sub_24B90CB54(v10, type metadata accessor for FocusSystemConfigurationAction);
  v13 = [v12 setting];

  MEMORY[0x24C24FC10](v11);
  v14 = *&v8[*(v5 + 40)];
  sub_24B90CB54(v8, type metadata accessor for FocusSystemConfigurationAction);
  v15 = [v14 operation];

  v16 = [objc_allocWithZone(MEMORY[0x277D7A198]) initWithSetting:v13 operation:v15];
  MEMORY[0x24C24FC10](v11);
  v17 = *(v5 + 40);

  *&v10[v17] = v16;
  sub_24BAA9B6C();
  sub_24BA8DA5C(v3);
  MEMORY[0x24C24FC10](v19[0]);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F35E4(v3, &qword_27F063940);
}

uint64_t sub_24B909D58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  result = sub_24BAA93CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24B909E28@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_24BAA8A4C();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064088);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064090);
  MEMORY[0x28223BE20](v35);
  v7 = &v31 - v6;
  *v5 = sub_24BAA8BCC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v8 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064098) + 44)];
  v9 = type metadata accessor for SystemConfigurationHostView(0);
  v10 = *(v9 + 28);
  v11 = (v1 + *(v9 + 24));
  v12 = v11[1];
  v33 = *v11;
  v13 = type metadata accessor for FocusSystemConfigurationDetailView(0);
  sub_24B8F3208(v1 + v10, v8 + *(v13 + 24), &qword_27F063DB8);
  v41 = 0u;
  v42 = 0u;
  v43 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063E98);
  sub_24BAA9BAC();
  v15 = v44;
  v14 = v45;
  v16 = v48;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B90A67C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v32 = v46;
  v31 = v47;
  *v8 = sub_24BAA86FC();
  v8[1] = v17;
  v8[2] = v33;
  v8[3] = v12;
  v18 = v8 + *(v13 + 28);
  *v18 = v15;
  *(v18 + 1) = v14;
  v19 = v31;
  *(v18 + 1) = v32;
  *(v18 + 2) = v19;
  v18[48] = v16;
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  sub_24B8F384C(&qword_27F0640A0, &qword_27F064088);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v21 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v44 = v20;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  sub_24BAA96CC();
  sub_24B8F35E4(v5, &qword_27F064088);
  v22 = [objc_opt_self() systemGroupedBackgroundColor];
  v23 = sub_24BAA973C();
  v24 = sub_24BAA90BC();
  v25 = &v7[*(v35 + 36)];
  *v25 = v23;
  v25[8] = v24;
  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x277CDDDC0], v38);
  sub_24B90AB48();
  v29 = v39;
  sub_24BAA964C();
  (*(v26 + 8))(v27, v28);
  sub_24B8F35E4(v7, &qword_27F064090);
  LOBYTE(v28) = sub_24BAA90DC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0640B0);
  *(v29 + *(result + 36)) = v28;
  return result;
}

uint64_t sub_24B90A2D8(uint64_t a1)
{
  v2 = type metadata accessor for SystemConfigurationHostView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24B90AD14(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemConfigurationHostView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24B90AF7C(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SystemConfigurationHostView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24B90A488(uint64_t a1)
{
  v2 = type metadata accessor for FocusSystemConfigurationAction(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SystemConfigurationHostView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  MEMORY[0x24C24FC10]();
  v5[*(v3 + 28)] = 1;
  sub_24BAA9B6C();
  return (*(a1 + *(v6 + 32)))(1);
}

unint64_t sub_24B90A594()
{
  result = qword_27F064040;
  if (!qword_27F064040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064030);
    sub_24B90A67C(&qword_27F064048, type metadata accessor for FocusAppConfigurationDetailView);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064040);
  }

  return result;
}

uint64_t sub_24B90A67C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B90A754()
{
  result = qword_27F066A90;
  if (!qword_27F066A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F066A90);
  }

  return result;
}

unint64_t sub_24B90A7A8()
{
  result = qword_27F064080;
  if (!qword_27F064080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064078);
    sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064080);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AppConfigurationHostView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v5 + *(v1 + 32);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670) + 32);
  v11 = sub_24BAA7E4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = type metadata accessor for FocusConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B90AB48()
{
  result = qword_27F0640A8;
  if (!qword_27F0640A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
    sub_24B8F384C(&qword_27F0640A0, &qword_27F064088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
    sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0640A8);
  }

  return result;
}

uint64_t sub_24B90AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B90AD7C()
{
  v1 = type metadata accessor for SystemConfigurationHostView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v5 + *(v1 + 28);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8) + 32);
  v11 = sub_24BAA7E4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = type metadata accessor for FocusSystemConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B90AF7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B90B014()
{
  result = qword_27F0640B8;
  if (!qword_27F0640B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064070);
    sub_24B90B0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0640B8);
  }

  return result;
}

unint64_t sub_24B90B0A0()
{
  result = qword_27F0640C0;
  if (!qword_27F0640C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064030);
    sub_24B90A594();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
    sub_24B8F384C(&qword_27F064060, &qword_27F064058);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0640C0);
  }

  return result;
}

unint64_t sub_24B90B24C()
{
  result = qword_27F0640C8;
  if (!qword_27F0640C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0640B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064090);
    sub_24B90AB48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0640C8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24B90B5E4()
{
  sub_24B90B718(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B904FA8(319, &unk_27F0646A0, type metadata accessor for FocusConfigurationAction);
    if (v1 <= 0x3F)
    {
      sub_24B904FFC();
      if (v2 <= 0x3F)
      {
        sub_24B90B718(319, &qword_27F0640E0, &qword_27F063E98, &unk_24BAAE170, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B90B718(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24B90BA44()
{
  sub_24B90B718(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B904FA8(319, &qword_27F063E00, type metadata accessor for FocusSystemConfigurationAction);
    if (v1 <= 0x3F)
    {
      sub_24B90B718(319, &qword_27F0640E0, &qword_27F063E98, &unk_24BAAE170, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B904FFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t objectdestroy_44Tm()
{
  v1 = type metadata accessor for AppConfigurationEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v5 + *(v1 + 32);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670) + 32);
  v11 = sub_24BAA7E4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = type metadata accessor for FocusConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24B90BE70()
{
  result = qword_27F064110;
  if (!qword_27F064110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0640F8);
    sub_24B8F384C(&qword_27F064118, &qword_27F064120);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064110);
  }

  return result;
}

unint64_t sub_24B90C07C()
{
  result = qword_27F064160;
  if (!qword_27F064160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064160);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for AppConfigurationEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v5 + *(v1 + 32);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670) + 32);
  v11 = sub_24BAA7E4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = type metadata accessor for FocusConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B90C384(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return a2(v4, v5, v6);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for SystemConfigurationEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v5 + *(v1 + 28);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8) + 32);
  v11 = sub_24BAA7E4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = type metadata accessor for FocusSystemConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B90C658(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

unint64_t sub_24B90C6E4()
{
  result = qword_27F0641B8;
  if (!qword_27F0641B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0641A0);
    sub_24B8F384C(&qword_27F0641C0, &qword_27F0641C8);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0641B8);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v1 = type metadata accessor for SystemConfigurationEditView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v5 + *(v1 + 28);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8) + 32);
  v11 = sub_24BAA7E4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = type metadata accessor for FocusSystemConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B90CAD8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24B90CB54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B90CBB8()
{
  result = qword_27F0641E0;
  if (!qword_27F0641E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0640F8);
    sub_24B90BE70();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
    sub_24B8F384C(&qword_27F064060, &qword_27F064058);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0641E0);
  }

  return result;
}

unint64_t sub_24B90CD64()
{
  result = qword_27F0641E8;
  if (!qword_27F0641E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0641D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0641A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0641A0);
    sub_24B90C6E4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
    sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0641E8);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24B90CF60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24B90CFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B90D030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_24BAA8A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0641F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0641F8);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064200);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  v42 = &v42 - v13;
  *v9 = sub_24BAA8BCC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064208);
  sub_24B90D704(v2, &v9[*(v14 + 44)]);
  v15 = sub_24BAA90DC();
  sub_24BAA828C();
  v16 = &v9[*(v7 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v48 = sub_24BAA7C2C();
  v49 = v21;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v22 = sub_24B9101EC();
  v23 = sub_24B8F5E3C();
  sub_24BAA95CC();
  (*(v4 + 8))(v6, v3);

  v24 = sub_24B8F35E4(v9, &qword_27F0641F0);
  MEMORY[0x28223BE20](v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  v48 = v7;
  v49 = MEMORY[0x277D837D0];
  v50 = v22;
  v51 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v28 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v48 = v27;
  v49 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v42;
  v31 = v44;
  sub_24BAA96CC();
  (*(v43 + 8))(v11, v31);
  v52 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  LODWORD(v43) = v50;
  v32 = swift_allocObject();
  v33 = v2[5];
  v32[5] = v2[4];
  v32[6] = v33;
  v32[7] = v2[6];
  v34 = v2[1];
  v32[1] = *v2;
  v32[2] = v34;
  v35 = v2[3];
  v32[3] = v2[2];
  v32[4] = v35;
  sub_24B9102B8(v2, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064228);
  v48 = v31;
  v49 = v25;
  v50 = OpaqueTypeConformance2;
  v51 = v29;
  swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064230);
  v37 = sub_24BAA8EFC();
  v38 = sub_24B8F384C(&qword_27F064238, &qword_27F064230);
  v39 = sub_24B9106A4(&qword_27F064240, MEMORY[0x277CDE2A0]);
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v51 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v46;
  sub_24BAA968C();

  return (*(v45 + 8))(v30, v40);
}

uint64_t sub_24B90D704@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064258);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v72 - v8);
  v10 = swift_allocObject();
  v11 = a1[5];
  v10[5] = a1[4];
  v10[6] = v11;
  v10[7] = a1[6];
  v12 = a1[1];
  v10[1] = *a1;
  v10[2] = v12;
  v13 = a1[3];
  v10[3] = a1[2];
  v10[4] = v13;
  sub_24B9102B8(a1, &v101);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v14 = sub_24BAA7C2C();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24BAAD5B0;
  if (*a1)
  {
    v18 = v17;
    v85 = v14;
    v86 = v16;
    v79 = v9;
    v80 = v7;
    v87 = v10;

    sub_24B984444();
    v19 = sub_24B8D7188();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 mode];

      v22 = [v21 name];
      v23 = sub_24BAAA01C();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v18[7] = MEMORY[0x277D837D0];
    v18[8] = sub_24B8F6A20();
    v18[4] = v23;
    v18[5] = v25;
    v26 = sub_24BAA9FEC();
    v28 = v27;

    v101 = v26;
    v102 = v28;
    sub_24B8F5E3C();
    v84 = sub_24BAA93CC();
    v85 = v29;
    v74 = v30;
    v32 = v31;
    KeyPath = swift_getKeyPath();
    v86 = swift_getKeyPath();
    v33 = v32 & 1;
    v135 = v33;
    v76 = v33;
    v132 = 1;
    v83 = sub_24BAA989C();
    v34 = swift_getKeyPath();
    v78 = v34;
    v82 = sub_24BAA915C();
    v35 = swift_getKeyPath();
    v77 = v35;
    v36 = sub_24BAA90AC();
    v37 = v36;
    v75 = v36;
    sub_24BAA828C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v137 = 0;
    v81 = sub_24BAA90DC();
    sub_24BAA828C();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v139 = 0;
    v54 = sub_24BAA8AAC();
    v55 = v79;
    *v79 = v54;
    *(v55 + 8) = 0;
    *(v55 + 16) = 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064260);
    sub_24B90EAAC(a1, v55 + *(v56 + 44));
    v57 = v80;
    sub_24B8F3208(v55, v80, &qword_27F064258);
    v58 = v87;
    *a2 = sub_24B91042C;
    *(a2 + 8) = v58;
    v59 = v74;
    *&v88 = v84;
    *(&v88 + 1) = v74;
    LOBYTE(v89) = v33;
    *(&v89 + 1) = *v134;
    DWORD1(v89) = *&v134[3];
    v60 = KeyPath;
    *(&v89 + 1) = v85;
    *&v90 = KeyPath;
    BYTE8(v90) = 1;
    *(&v90 + 9) = *v133;
    HIDWORD(v90) = *&v133[3];
    v91 = v86;
    LOBYTE(v92) = 1;
    *(&v92 + 1) = *v136;
    DWORD1(v92) = *&v136[3];
    *(&v92 + 1) = v34;
    *&v93 = v83;
    *(&v93 + 1) = v35;
    *&v94 = v82;
    BYTE8(v94) = v37;
    *(&v94 + 9) = *v138;
    HIDWORD(v94) = *&v138[3];
    *&v95 = v39;
    *(&v95 + 1) = v41;
    *&v96 = v43;
    *(&v96 + 1) = v45;
    LOBYTE(v97) = 0;
    DWORD1(v97) = *(v141 + 3);
    *(&v97 + 1) = v141[0];
    BYTE8(v97) = v81;
    HIDWORD(v97) = *&v140[3];
    *(&v97 + 9) = *v140;
    *&v98 = v47;
    *(&v98 + 1) = v49;
    *&v99 = v51;
    *(&v99 + 1) = v53;
    v100 = 0;
    v61 = v98;
    v62 = v99;
    *(a2 + 208) = 0;
    *(a2 + 176) = v61;
    *(a2 + 192) = v62;
    v63 = v88;
    v64 = v89;
    v65 = v91;
    *(a2 + 48) = v90;
    *(a2 + 64) = v65;
    *(a2 + 16) = v63;
    *(a2 + 32) = v64;
    v66 = v92;
    v67 = v93;
    v68 = v97;
    *(a2 + 144) = v96;
    *(a2 + 160) = v68;
    v69 = v95;
    *(a2 + 112) = v94;
    *(a2 + 128) = v69;
    *(a2 + 80) = v66;
    *(a2 + 96) = v67;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064268);
    sub_24B8F3208(v57, a2 + *(v70 + 64), &qword_27F064258);

    sub_24B8F3208(&v88, &v101, &qword_27F064270);
    sub_24B8F35E4(v55, &qword_27F064258);
    sub_24B8F35E4(v57, &qword_27F064258);
    v101 = v84;
    v102 = v59;
    v103 = v76;
    *v104 = *v134;
    *&v104[3] = *&v134[3];
    v105 = v85;
    v106 = v60;
    v107 = 1;
    *v108 = *v133;
    *&v108[3] = *&v133[3];
    v109 = v86;
    v110 = 0;
    v111 = 1;
    *&v112[3] = *&v136[3];
    *v112 = *v136;
    v113 = v78;
    v114 = v83;
    v115 = v77;
    v116 = v82;
    v117 = v75;
    *&v118[3] = *&v138[3];
    *v118 = *v138;
    v119 = v39;
    v120 = v41;
    v121 = v43;
    v122 = v45;
    v123 = 0;
    *&v124[3] = *(v141 + 3);
    *v124 = v141[0];
    v125 = v81;
    *v126 = *v140;
    *&v126[3] = *&v140[3];
    v127 = v47;
    v128 = v49;
    v129 = v51;
    v130 = v53;
    v131 = 0;
    sub_24B8F35E4(&v101, &qword_27F064270);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9106A4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B90DDFC()
{
  sub_24BAA908C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642E8);
  sub_24B910550();
  return sub_24BAA829C();
}

uint64_t sub_24B90DE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24BAA8AAC();
  *(a3 + 8) = 0x4034000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064318);
  sub_24B90E01C(a1, a2, a3 + *(v6 + 44));
  v7 = sub_24BAA90AC();
  sub_24BAA83CC();
  v9 = v8;
  v11 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  sub_24B910354(v31, v9, v11);

  sub_24BAA828C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064300) + 36);
  *v20 = v7;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  LOBYTE(a2) = sub_24BAA911C();
  sub_24BAA828C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642E8);
  v30 = a3 + *(result + 36);
  *v30 = a2;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_24B90E01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v95 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064320);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v96 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v94 = &v76[-v7];
  v8 = sub_24BAA975C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for HomeScreenPageView();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v76[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064328);
  v91 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v93 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v76[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v76[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v76[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v76[-v28];
  v90 = a1;
  v30 = *(v9 + 104);
  v83 = *MEMORY[0x277CE0EE0];
  v86 = v8;
  v84 = v9 + 104;
  v82 = v30;
  v30(v11);

  v85 = v11;
  v31 = sub_24BAA98BC();
  v32 = type metadata accessor for ActivityConfigViewModel();
  v33 = sub_24B9106A4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v81 = v32;
  v80 = v33;
  *v17 = sub_24BAA86FC();
  v17[1] = v34;
  v35 = v12[5];
  *(v17 + v35) = swift_getKeyPath();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v36 = (v17 + v12[6]);
  *&v98 = 0;
  sub_24BAA99EC();
  v37 = *(&v105 + 1);
  *v36 = v105;
  v36[1] = v37;
  v38 = v17 + v12[7];
  LOBYTE(v98) = 0;
  sub_24BAA99EC();
  v39 = *(&v105 + 1);
  *v38 = v105;
  *(v38 + 1) = v39;
  v40 = (v17 + v12[8]);
  v41 = type metadata accessor for HomeScreenSnapshot();
  sub_24B9106A4(&qword_27F064330, type metadata accessor for HomeScreenSnapshot);
  v78 = v41;
  *v40 = sub_24BAA84DC();
  v40[1] = v42;
  v43 = (v17 + v12[9]);
  v43[4] = 0u;
  v43[5] = 0u;
  v43[2] = 0u;
  v43[3] = 0u;
  *v43 = 0u;
  v43[1] = 0u;
  *(v17 + v12[11]) = 0;
  v44 = v17 + v12[12];
  *v44 = v31;
  v77 = xmmword_24BAAE680;
  *(v44 + 8) = xmmword_24BAAE680;
  *(v44 + 3) = 0x4010000000000000;
  *(v17 + v12[10]) = 0x4042000000000000;
  sub_24BAA83CC();
  sub_24BAA9D1C();
  v45 = 1;
  sub_24BAA86BC();
  sub_24B9106EC(v17, v27);
  v92 = v18;
  v46 = &v27[*(v18 + 36)];
  v47 = v103;
  v46[4] = v102;
  v46[5] = v47;
  v46[6] = v104;
  v48 = v99;
  *v46 = v98;
  v46[1] = v48;
  v49 = v101;
  v46[2] = v100;
  v46[3] = v49;
  sub_24B90294C(v27, v29, &qword_27F064328);
  v105 = *(v90 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064250);
  sub_24BAA99FC();
  if (v97)
  {
    v82(v85, v83, v86);

    v50 = sub_24BAA98BC();
    *v15 = sub_24BAA86FC();
    v15[1] = v51;
    v52 = v12[5];
    *(v15 + v52) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v53 = (v15 + v12[6]);
    v97 = 0;
    sub_24BAA99EC();
    v54 = *(&v105 + 1);
    *v53 = v105;
    v53[1] = v54;
    v55 = v15 + v12[7];
    LOBYTE(v97) = 0;
    sub_24BAA99EC();
    v56 = *(&v105 + 1);
    *v55 = v105;
    *(v55 + 1) = v56;
    v57 = (v15 + v12[8]);
    *v57 = sub_24BAA84DC();
    v57[1] = v58;
    v59 = (v15 + v12[9]);
    v59[4] = 0u;
    v59[5] = 0u;
    v59[2] = 0u;
    v59[3] = 0u;
    *v59 = 0u;
    v59[1] = 0u;
    *(v15 + v12[11]) = 0;
    v60 = v15 + v12[12];
    *v60 = v50;
    *(v60 + 8) = v77;
    *(v60 + 3) = 0x4010000000000000;
    *(v15 + v12[10]) = 0x4042000000000000;
    sub_24BAA83CC();
    sub_24BAA9D1C();
    v61 = v94;
    sub_24BAA86BC();

    v62 = v88;
    sub_24B9106EC(v15, v88);
    v63 = v92;
    v64 = &v62[*(v92 + 36)];
    v65 = v108;
    v66 = v110;
    v67 = v111;
    v64[4] = v109;
    v64[5] = v66;
    v64[6] = v67;
    v68 = v106;
    v69 = v107;
    *v64 = v105;
    v64[1] = v68;
    v64[2] = v69;
    v64[3] = v65;
    v70 = v87;
    sub_24B90294C(v62, v87, &qword_27F064328);
    sub_24B90294C(v70, v61, &qword_27F064328);
    v45 = 0;
  }

  else
  {
    v61 = v94;
    v63 = v92;
  }

  (*(v91 + 56))(v61, v45, 1, v63);
  v71 = v93;
  sub_24B8F3208(v29, v93, &qword_27F064328);
  v72 = v96;
  sub_24B8F3208(v61, v96, &qword_27F064320);
  v73 = v95;
  sub_24B8F3208(v71, v95, &qword_27F064328);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064338);
  sub_24B8F3208(v72, v73 + *(v74 + 48), &qword_27F064320);
  sub_24B8F35E4(v61, &qword_27F064320);
  sub_24B8F35E4(v29, &qword_27F064328);
  sub_24B8F35E4(v72, &qword_27F064320);
  return sub_24B8F35E4(v71, &qword_27F064328);
}

uint64_t sub_24B90EAAC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064278);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v97 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064280);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v97 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064288);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v104 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v97 - v18;
  v20 = [objc_opt_self() shouldShowInternalFeedbackUI];
  __asm { FMOV            V0.2D, #8.0 }

  v105 = _Q0;
  if (v20)
  {
    v26 = swift_allocObject();
    v100 = a2;
    v27 = a1[5];
    v26[5] = a1[4];
    v26[6] = v27;
    v26[7] = a1[6];
    v28 = a1[1];
    v26[1] = *a1;
    v26[2] = v28;
    v29 = a1[3];
    v26[3] = a1[2];
    v26[4] = v29;
    sub_24B9102B8(a1, v106);
    v98 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642B8);
    v99 = v19;
    sub_24B8F384C(&qword_27F0642C0, &qword_27F0642B8);
    sub_24BAA9A5C();
    v30 = sub_24BAA90AC();
    sub_24BAA828C();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642C8) + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = sub_24BAA911C();
    sub_24BAA828C();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642D0) + 36)];
    *v49 = v40;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = sub_24BAA985C();
    v51 = sub_24BAA90BC();
    v52 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642D8) + 36)];
    *v52 = v50;
    v52[8] = v51;
    v53 = sub_24BAA982C();
    KeyPath = swift_getKeyPath();
    v55 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642E0) + 36)];
    *v55 = KeyPath;
    v55[1] = v53;
    v56 = &v14[*(v11 + 36)];
    v57 = *(sub_24BAA869C() + 20);
    v58 = *MEMORY[0x277CE0118];
    v59 = sub_24BAA8B2C();
    v60 = &v56[v57];
    a2 = v100;
    v61 = v58;
    v5 = v98;
    (*(*(v59 - 8) + 104))(v60, v61, v59);
    *v56 = v105;
    *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
    v19 = v99;
    sub_24B90294C(v14, v99, &qword_27F064280);
    (*(v12 + 56))(v19, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v19, 1, 1, v11);
  }

  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v107 = sub_24BAA7C2C();
  v108 = v62;
  v63 = swift_allocObject();
  v64 = a1[5];
  v63[5] = a1[4];
  v63[6] = v64;
  v63[7] = a1[6];
  v65 = a1[1];
  v63[1] = *a1;
  v63[2] = v65;
  v66 = a1[3];
  v63[3] = a1[2];
  v63[4] = v66;
  sub_24B9102B8(a1, v106);
  sub_24B8F5E3C();
  v67 = v101;
  sub_24BAA9A7C();
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  v68 = v103;
  sub_24BAA965C();
  (*(v102 + 8))(v67, v68);
  LOBYTE(v68) = sub_24BAA90AC();
  sub_24BAA828C();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064290) + 36)];
  *v77 = v68;
  *(v77 + 1) = v70;
  *(v77 + 2) = v72;
  *(v77 + 3) = v74;
  *(v77 + 4) = v76;
  v77[40] = 0;
  LOBYTE(v68) = sub_24BAA911C();
  sub_24BAA828C();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064298) + 36)];
  *v86 = v68;
  *(v86 + 1) = v79;
  *(v86 + 2) = v81;
  *(v86 + 3) = v83;
  *(v86 + 4) = v85;
  v86[40] = 0;
  v87 = [objc_opt_self() systemGray5Color];
  v88 = sub_24BAA973C();
  LOBYTE(v67) = sub_24BAA90BC();
  v89 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A0) + 36)];
  *v89 = v88;
  v89[8] = v67;
  v90 = &v10[*(v5 + 36)];
  v91 = *(sub_24BAA869C() + 20);
  v92 = *MEMORY[0x277CE0118];
  v93 = sub_24BAA8B2C();
  (*(*(v93 - 8) + 104))(&v90[v91], v92, v93);
  *v90 = v105;
  *&v90[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
  v94 = v104;
  sub_24B8F3208(v19, v104, &qword_27F064288);
  sub_24B8F3208(v10, v8, &qword_27F064278);
  sub_24B8F3208(v94, a2, &qword_27F064288);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642B0);
  sub_24B8F3208(v8, a2 + *(v95 + 48), &qword_27F064278);
  sub_24B8F35E4(v10, &qword_27F064278);
  sub_24B8F35E4(v19, &qword_27F064288);
  sub_24B8F35E4(v8, &qword_27F064278);
  return sub_24B8F35E4(v94, &qword_27F064288);
}

void sub_24B90F3B0()
{
  v1 = sub_24BAA7D5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedApplication];
  if (*v0)
  {
    v6 = v5;

    sub_24B984444();
    v7 = sub_24B8D7188();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 mode];

      v10 = [v9 name];
      sub_24BAAA01C();
    }

    else
    {
    }

    v11 = objc_opt_self();
    v12 = sub_24BAA9FDC();

    v13 = [v11 tapToRadarURLForModeName_];

    sub_24BAA7D3C();
    v14 = sub_24BAA7D2C();
    (*(v2 + 8))(v4, v1);
    sub_24BA20B34(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_24B9106A4(&qword_27F0636B0, type metadata accessor for OpenExternalURLOptionsKey);
    v15 = sub_24BAA9EDC();

    [v6 openURL:v14 options:v15 completionHandler:0];
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9106A4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86DC();
    __break(1u);
  }
}

__n128 sub_24B90F6AC@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_24BAA8AAC();
  sub_24B90F718(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0x4010000000000000;
  a1[1].n128_u8[0] = 0;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_24B90F718@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA994C();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v3 = sub_24BAA93CC();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_24B8F319C(v3, v5, v7);

  sub_24B900910(v3, v5, v7);
}

uint64_t sub_24B90F854(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B90FA40(_OWORD *a1)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9 = sub_24BAA7C2C();
  v10 = v2;
  v3 = swift_allocObject();
  v4 = a1[5];
  v3[5] = a1[4];
  v3[6] = v4;
  v3[7] = a1[6];
  v5 = a1[1];
  v3[1] = *a1;
  v3[2] = v5;
  v6 = a1[3];
  v3[3] = a1[2];
  v3[4] = v6;
  sub_24B9102B8(a1, v8);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24B90FB54()
{
  v1 = v0[11];
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_24BAA81CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064250);
  sub_24BAA99FC();
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81CC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24BAAE690;
  *(v2 + 32) = v1;
  sub_24BAA99FC();
  if (v5)
  {

    MEMORY[0x24C2501C0](v3);
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24BAAA14C();
    }

    sub_24BAAA16C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B6C();
  sub_24BAA9B6C();
  if (*v0)
  {

    sub_24B9951AC(v2);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9106A4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B90FDE4(uint64_t a1)
{
  v2 = sub_24BAA8EFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064230);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  v12 = a1;
  sub_24B9102F8();
  sub_24BAA84CC();
  sub_24BAA8EEC();
  sub_24B8F384C(&qword_27F064238, &qword_27F064230);
  sub_24B9106A4(&qword_27F064240, MEMORY[0x277CDE2A0]);
  sub_24BAA93EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

__n128 sub_24B91001C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v5 = v15;
  v6 = v16.n128_u8[0];
  v7 = swift_allocObject();
  v8 = *(a1 + 80);
  v7[5] = *(a1 + 64);
  v7[6] = v8;
  v7[7] = *(a1 + 96);
  v9 = *(a1 + 16);
  v7[1] = *a1;
  v7[2] = v9;
  v10 = *(a1 + 48);
  v7[3] = *(a1 + 32);
  v7[4] = v10;
  sub_24B9102B8(a1, &v15);
  sub_24BA0D310(v4, v5, *(&v5 + 1), v6, sub_24B91034C, v7, &v15);
  v11 = v22;
  *(a2 + 96) = v21;
  *(a2 + 112) = v11;
  *(a2 + 128) = v23;
  v12 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v12;
  v13 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v13;
  result = v16;
  *a2 = v15;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24B910148()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064250);
  return sub_24BAA9A0C();
}

unint64_t sub_24B9101EC()
{
  result = qword_27F064210;
  if (!qword_27F064210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0641F0);
    sub_24B8F384C(&qword_27F064218, &qword_27F064220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064210);
  }

  return result;
}

unint64_t sub_24B9102F8()
{
  result = qword_27F064248;
  if (!qword_27F064248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064248);
  }

  return result;
}

double sub_24B910354(void *a1, double a2, double a3)
{
  [a1 size];
  v6 = 0.0;
  if (v7 != 0.0)
  {
    [a1 size];
    v9 = v8;
    [a1 size];
    v11 = v9 / v10;
    if (v11 > 0.0)
    {
      v12 = (a3 + -40.0) / v11;
      if (a2 + -40.0 < v12)
      {
        v12 = a2 + -40.0;
      }

      return (a2 - v12) * 0.5;
    }
  }

  return v6;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_24B910550()
{
  result = qword_27F0642F0;
  if (!qword_27F0642F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0642E8);
    sub_24B9105DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0642F0);
  }

  return result;
}

unint64_t sub_24B9105DC()
{
  result = qword_27F0642F8;
  if (!qword_27F0642F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064300);
    sub_24B8F384C(&qword_27F064308, &qword_27F064310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0642F8);
  }

  return result;
}

uint64_t sub_24B9106A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B9106EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeScreenPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B910750()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064228);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0641F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0641F0);
  sub_24B9101EC();
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064230);
  sub_24BAA8EFC();
  sub_24B8F384C(&qword_27F064238, &qword_27F064230);
  sub_24B9106A4(&qword_27F064240, MEMORY[0x277CDE2A0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B9109FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24B910A9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24B910B08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

void sub_24B910B7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064528);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v70 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064530);
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v70 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064538);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064540);
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v70 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064548);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - v8;
  v82 = sub_24BAA7D5C();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v99 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24BAAA32C();
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x28223BE20](v10);
  v95 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_24BAAA2EC();
  MEMORY[0x28223BE20](v94);
  v93 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24BAA9E5C();
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064550);
  v91 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v90 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064558);
  v88 = *(v16 - 8);
  v89 = v16;
  MEMORY[0x28223BE20](v16);
  v87 = &v70 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064560);
  v18 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064568);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v70 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v70 - v27;
  v29 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService__queryFragment;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  sub_24BAA817C();
  v30 = *(v26 + 32);
  v70 = v25;
  v30(&v1[v29], v28, v25);
  v31 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService__status;
  v100 = xmmword_24BAAC5C0;
  v101 = 4;
  sub_24BAA817C();
  (*(v22 + 32))(&v1[v31], v24, v21);
  v32 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService__searchResults;
  v33 = MEMORY[0x277D84F90];
  *&v100 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064490);
  sub_24BAA817C();
  (*(v18 + 32))(&v1[v32], v20, v86);
  *&v1[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_completionCancellable] = 0;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_queryCancellable] = 0;
  *&v1[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_locationManager] = 0;
  v34 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService_completer;
  *&v1[v34] = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
  v35 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService__completions;
  *&v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644A0);
  v36 = v87;
  sub_24BAA817C();
  (*(v88 + 32))(&v1[v35], v36, v89);
  v37 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService__searchCompletion;
  *&v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644B0);
  v38 = v90;
  sub_24BAA817C();
  (*(v91 + 32))(&v1[v37], v38, v98);
  v39 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService_locationQueue;
  sub_24B8F37E8(0, &qword_27F0644F0);
  sub_24BAA9E4C();
  *&v100 = v33;
  sub_24B9140C4(&qword_27F064570, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064578);
  sub_24B8F384C(&qword_27F064580, &qword_27F064578);
  sub_24BAAA48C();
  (*(v96 + 104))(v95, *MEMORY[0x277D85260], v97);
  *&v1[v39] = sub_24BAAA35C();
  v40 = &v1[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_localRegion];
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v40[32] = 1;
  v1[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_searchNearCurrentLocation] = 1;
  sub_24BAA7D1C();
  v41 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v42 = sub_24BAA7D2C();
  v43 = [v41 initWithURL_];

  if (v43)
  {
    v44 = type metadata accessor for LocationService(0);
    v102.receiver = v1;
    v102.super_class = v44;
    v45 = objc_msgSendSuper2(&v102, sel_init);
    v46 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundle:v43 delegate:v45 onQueue:*&v45[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_locationQueue]];
    v47 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService_locationManager;
    v48 = *&v45[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_locationManager];
    *&v45[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_locationManager] = v46;

    v49 = *&v45[v47];
    if (v49)
    {
      [v49 startUpdatingLocation];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v100 = 0uLL;
    v101 = 4;
    v50 = v45;
    sub_24BAA81CC();
    swift_beginAccess();
    v51 = v71;
    sub_24BAA818C();
    swift_endAccess();
    swift_getKeyPath();
    v52 = OBJC_IVAR____TtC15FocusSettingsUI15LocationService_completer;
    *&v100 = *&v50[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_completer];
    v53 = v100;
    sub_24B8F384C(&qword_27F064588, &qword_27F064548);
    v54 = v53;
    v55 = v73;
    v56 = sub_24BAA821C();

    (*(v72 + 8))(v51, v55);
    *&v50[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_completionCancellable] = v56;

    [*&v50[v52] setDelegate_];
    [*&v50[v52] setResultTypes_];
    swift_beginAccess();
    v57 = v74;
    sub_24BAA818C();
    swift_endAccess();
    v58 = sub_24BAAA33C();
    *&v100 = v58;
    v59 = sub_24BAAA31C();
    v60 = v76;
    (*(*(v59 - 8) + 56))(v76, 1, 1, v59);
    sub_24B8F384C(&qword_27F064590, &qword_27F064530);
    sub_24B914180();
    v61 = v77;
    v62 = v78;
    sub_24BAA81FC();
    sub_24B8F35E4(v60, &qword_27F064528);

    (*(v75 + 8))(v57, v62);
    sub_24B8F37E8(0, &qword_27F064518);
    sub_24B8F384C(&qword_27F0645A0, &qword_27F064538);
    v63 = v83;
    v64 = v81;
    sub_24BAA81EC();
    (*(v79 + 8))(v61, v64);
    v65 = swift_allocObject();
    *(v65 + 16) = v50;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_24B9141E8;
    *(v66 + 24) = v65;
    sub_24B8F384C(&qword_27F0645A8, &qword_27F064540);
    v67 = v50;
    v68 = v85;
    v69 = sub_24BAA820C();

    (*(v84 + 8))(v63, v68);
    (*(v80 + 8))(v99, v82);
    *&v67[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_queryCancellable] = v69;
  }

  else
  {
    __break(1u);
  }
}

void sub_24B911AD0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 queryFragment];
  v4 = sub_24BAAA01C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_24B911B28@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_24B911D04(void *a1, void *a2)
{
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v4 = sub_24BAA812C();
  __swift_project_value_buffer(v4, qword_27F077038);
  v5 = a2;
  v6 = sub_24BAA810C();
  v7 = sub_24BAAA2AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24B8D3000, v6, v7, "[CLLocationManager] error retrieving location| error: %@", v8, 0xCu);
    sub_24B8F35E4(v9, &qword_27F064510);
    MEMORY[0x24C251390](v9, -1, -1);
    MEMORY[0x24C251390](v8, -1, -1);
  }

  [a1 stopUpdatingLocation];
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  return sub_24B911FC8(v13);
}

uint64_t sub_24B911FC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24BAA9E2C();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24BAA9E5C();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_localRegion];
  v11 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v11;
  v10[32] = *(a1 + 32);
  sub_24B8F37E8(0, &qword_27F0644F0);
  v12 = sub_24BAAA33C();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  aBlock[4] = sub_24B914014;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_73;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_24BAA9E4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B9140C4(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v9, v6, v14);
  _Block_release(v14);

  (*(v18 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v17);
}

void sub_24B9122DC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_24BAA81CC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  sub_24B9123B4(1);
}

void sub_24B9123B4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  sub_24B913EEC(v13, *(&v13 + 1), v14);
  if (v14 != 4 || v13 != 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD4E38]) initWithCompletion_];
    v5 = v4;
    if ((v1[OBJC_IVAR____TtC15FocusSettingsUI15LocationService_localRegion + 32] & 1) == 0)
    {
      [v4 setRegion_];
    }

    v6 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = a1;
    v16 = sub_24B913F68;
    v17 = v7;
    *&v13 = MEMORY[0x277D85DD0];
    *(&v13 + 1) = 1107296256;
    v14 = sub_24B912988;
    v15 = &block_descriptor_0;
    v8 = _Block_copy(&v13);
    v9 = v1;
    v10 = a1;

    [v6 startWithCompletionHandler_];
    _Block_release(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v10;
    LOBYTE(v14) = 0;
    v11 = v9;
    v12 = v10;
    sub_24BAA81CC();
  }
}

void sub_24B9125C8(void *a1, void *a2, void *a3, unint64_t a4)
{
  if (a1)
  {
    v6 = &off_279018000;
    v26 = a1;
    v7 = [v26 mapItems];
    sub_24B8F37E8(0, &qword_27F0644E8);
    v8 = sub_24BAAA12C();

    if (v8 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24BAAA52C())
    {
      v24 = a3;
      v25 = a4;
      a4 = 0;
      a3 = (v8 & 0xC000000000000001);
      while (1)
      {
        if (a3)
        {
          v10 = MEMORY[0x24C2506E0](a4, v8);
        }

        else
        {
          if (a4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v10 = *(v8 + 8 * a4 + 32);
        }

        v11 = v10;
        v6 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
          break;
        }

        v12 = [v10 placemark];
        v13 = [v12 postalAddress];

        if (v13)
        {

          sub_24BAAA66C();
          sub_24BAAA69C();
          sub_24BAAA6AC();
          sub_24BAAA67C();
        }

        else
        {
        }

        ++a4;
        if (v6 == i)
        {
          a3 = v24;
          a4 = v25;
          v6 = &off_279018000;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = a3;
    sub_24BAA81CC();
    v20 = [v26 v6[323]];
    v21 = sub_24BAAA12C();

    if (v21 >> 62)
    {
      sub_24BAAA52C();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v19;
    v23 = a4;
    sub_24BAA81CC();
  }

  else if (a2)
  {
    swift_getErrorValue();
    v15 = a2;
    sub_24BAAA7DC();
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = a3;

    sub_24BAA81CC();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = a3;
    v18 = a4;
    sub_24BAA81CC();
  }
}

void sub_24B912988(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24B912C24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationService(0);
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

uint64_t sub_24B912C64@<X0>(uint64_t *a1@<X8>)
{
  sub_24B8F37E8(0, &qword_27F064518);
  result = sub_24BAAA60C();
  *a1 = result;
  return result;
}

BOOL static MKPlacemark.== infix(_:_:)(void *a1, void *a2)
{
  [a1 coordinate];
  v5 = v4;
  [a2 coordinate];
  if (vabdd_f64(v5, v6) >= 2.22044605e-16)
  {
    return 0;
  }

  [a1 coordinate];
  v8 = v7;
  [a2 coordinate];
  return vabdd_f64(v8, v9) < 2.22044605e-16;
}

BOOL static MKPlacemark.!= infix(_:_:)(void *a1, void *a2)
{
  [a1 coordinate];
  v5 = v4;
  [a2 coordinate];
  if (vabdd_f64(v5, v6) >= 2.22044605e-16)
  {
    return 1;
  }

  [a1 coordinate];
  v8 = v7;
  [a2 coordinate];
  return vabdd_f64(v8, v9) >= 2.22044605e-16;
}

void sub_24B912E24()
{
  sub_24B91303C(319, &qword_27F0668A0);
  if (v0 <= 0x3F)
  {
    sub_24B91303C(319, &qword_27F064480);
    if (v1 <= 0x3F)
    {
      sub_24B913088(319, &qword_27F064488, &qword_27F064490);
      if (v2 <= 0x3F)
      {
        sub_24B913088(319, &qword_27F064498, &qword_27F0644A0);
        if (v3 <= 0x3F)
        {
          sub_24B913088(319, &qword_27F0644A8, &qword_27F0644B0);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24B91303C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24BAA81DC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24B913088(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_24BAA81DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B9130F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

id sub_24B91315C(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithCoordinate_];
  v6 = [v5 postalAddress];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() singleLineStringFromPostalAddress:v6 addCountryName:0];
    if (v8)
    {
      v9 = v8;
      v10 = sub_24BAAA01C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    swift_beginAccess();
    v23 = v10;
    v24 = v12;
    sub_24BAA817C();
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_24BAA817C();
    swift_endAccess();
  }

  v22.receiver = v1;
  v22.super_class = type metadata accessor for ReverseGeocoder(0);
  v13 = objc_msgSendSuper2(&v22, sel_init);
  v14 = objc_allocWithZone(MEMORY[0x277CBFBE8]);
  v15 = v13;
  v16 = [v14 init];
  v17 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v3 longitude:v4];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v21[4] = sub_24B9142A8;
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_24B913538;
  v21[3] = &block_descriptor_107;
  v19 = _Block_copy(v21);

  [v16 reverseGeocodeLocation:v17 completionHandler:v19];
  _Block_release(v19);

  sub_24B9142B0(a1);
  return v15;
}

void sub_24B9133E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2 && a1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C2506E0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v4 = *(a1 + 32);
    }

    v10 = v4;
    v5 = [v4 postalAddress];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() singleLineStringFromPostalAddress:v5 addCountryName:0];
      if (v7)
      {
        v8 = v7;
        sub_24BAAA01C();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v9 = a3;
      sub_24BAA81CC();
    }

    else
    {
    }
  }
}

uint64_t sub_24B913538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24B8F37E8(0, &unk_27F0645B0);
    v4 = sub_24BAAA12C();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_24B913624(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24B913704()
{
  sub_24B91303C(319, &qword_27F0668A0);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_15FocusSettingsUI15LocationServiceC0D6StatusO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B9137D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B91381C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B913860(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24B913894@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReverseGeocoder(0);
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

double sub_24B9138FC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_24B913984(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v4;
  sub_24B913FD8(v2, v3, v5);
  return sub_24BAA81CC();
}

uint64_t sub_24B913A54@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  return result;
}

uint64_t sub_24B913AE4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_24BAA81CC();
}

uint64_t sub_24B913B58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  return result;
}

uint64_t sub_24B913BD8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_24BAA81CC();
}

uint64_t sub_24B913C60@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B913CF0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_24BAA81CC();
}

uint64_t sub_24B913D6C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 != 1)
      {
        return 0;
      }
    }

    else if (a6)
    {
      return 0;
    }

LABEL_21:
    sub_24B8F37E8(0, &unk_27F067FA0);
    return sub_24BAAA3CC() & 1;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (a3 != 3)
  {
    if (a1 | a2)
    {
      if (a6 == 4 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 4 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 3)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_24BAAA78C();
}

void sub_24B913EEC(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

uint64_t sub_24B913F28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24B913FD8(id result, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return result;
    }

    return result;
  }

  if (a3 == 2)
  {
    return result;
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_24B9140C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B91411C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_24BAA9FDC();
  [v2 setQueryFragment_];
}

unint64_t sub_24B914180()
{
  result = qword_27F064598;
  if (!qword_27F064598)
  {
    sub_24B8F37E8(255, &qword_27F0644F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064598);
  }

  return result;
}

uint64_t sub_24B91420C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B914270()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B91431C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_24B914D68(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_24B914D68((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

void *sub_24B914494(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_24BAAA52C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x24C2506E0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_24BAAA66C();
          sub_24BAAA69C();
          v5 = v14;
          sub_24BAAA6AC();
          v3 = &v18;
          sub_24BAAA67C();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

BOOL sub_24B914650(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v3);
  v4 = sub_24BAAA84C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_24B91471C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24BAAA7FC();
  sub_24BAAA07C();
  v6 = sub_24BAAA84C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24BAAA78C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24B914814(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_24BAAA57C();
  }

  else if (*(a2 + 16) && (sub_24B915A1C(), v5 = sub_24BAAA3BC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_24BAAA3CC();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_24B91491C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24BAAA7FC();
  sub_24B9AA96C(a4, a5, v22, a1, a2);
  v10 = sub_24BAAA84C();
  v11 = -1 << *(a3 + 32);
  v12 = v10 & ~v11;
  if (((*(a3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v16 = *(a3 + 48) + 32 * v12;
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (*v16)
    {
      break;
    }

    if (!a1)
    {
      v20 = v18 == a4;
      goto LABEL_4;
    }

LABEL_11:
    v12 = (v12 + 1) & v13;
    if (((*(a3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  if ([*(*v16 + 16) isEqual_])
  {
    v20 = v18 == a4;
  }

  else
  {
    v20 = 0;
  }

LABEL_4:
  if (!v20 || v17 != a5 || v19 != a2)
  {
    goto LABEL_11;
  }

  return 1;
}

id sub_24B914A68(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_24BAAA57C();

    return (v4 & 1);
  }

  else if (*(a2 + 16) && (sub_24BAAA7FC(), v6 = sub_24BAAA84C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      result = [*(*(*(a2 + 48) + 8 * v8) + 16) isEqual_];
      if (result)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static ActivitySource.firstAvailableSymbol(excluding:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 <= 0x30)
  {
    v5 = 48;
  }

  else
  {
    v5 = v2;
  }

  while (v2 != v5)
  {
    v6 = &unk_285EBE848 + 16 * v2;
    v8 = *(v6 + 4);
    v7 = *(v6 + 5);
    ++v2;
    if (!*(v1 + 16))
    {

LABEL_16:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B914D68(0, v4[2] + 1, 1);
      }

      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_24B914D68((v15 > 1), v16 + 1, 1);
      }

      v4[2] = v16 + 1;
      v17 = &v4[2 * v16];
      v17[4] = v8;
      v17[5] = v7;
      if (v2 == 48)
      {
LABEL_24:
        v18 = v4[4];

        goto LABEL_26;
      }

      goto LABEL_2;
    }

    sub_24BAAA7FC();

    sub_24BAAA07C();
    v9 = sub_24BAAA84C();
    v10 = -1 << *(v1 + 32);
    v11 = v9 & ~v10;
    if (((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }

    v12 = ~v10;
    while (1)
    {
      v13 = (*(v1 + 48) + 16 * v11);
      v14 = *v13 == v8 && v13[1] == v7;
      if (v14 || (sub_24BAAA78C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v2 == 48)
    {
      if (v4[2])
      {
        goto LABEL_24;
      }

      v18 = 0;
LABEL_26:

      return v18;
    }
  }

  __break(1u);
  return result;
}

char *sub_24B914D68(char *a1, int64_t a2, char a3)
{
  result = sub_24B914ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24B914D88(size_t a1, int64_t a2, char a3)
{
  result = sub_24B915030(a1, a2, a3, *v3, &unk_27F066AE0, &unk_24BAB4F40, type metadata accessor for Trigger);
  *v3 = result;
  return result;
}

size_t sub_24B914DCC(size_t a1, int64_t a2, char a3)
{
  result = sub_24B915030(a1, a2, a3, *v3, &qword_27F0645C8, &unk_24BAAEEF0, type metadata accessor for FocusSystemConfigurationAction);
  *v3 = result;
  return result;
}

size_t sub_24B914E10(size_t a1, int64_t a2, char a3)
{
  result = sub_24B915030(a1, a2, a3, *v3, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
  *v3 = result;
  return result;
}

char *sub_24B914E54(char *a1, int64_t a2, char a3)
{
  result = sub_24B915300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24B914E74(char *a1, int64_t a2, char a3)
{
  result = sub_24B91540C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24B914E94(char *a1, int64_t a2, char a3)
{
  result = sub_24B915528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24B914EB4(char *a1, int64_t a2, char a3)
{
  result = sub_24B915638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24B914ED4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0669E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24B915030(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24B91520C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0645E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_24B915300(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0645D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B91540C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0645E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B915528(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0645C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B915638(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s15FocusSettingsUI14ActivitySourceV25inverseVariantIfAvailable3for17isDarkColorSchemeS2S_SbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1;
  v8 = a1;
  v9 = a2;
  v7[2] = &v8;
  if ((sub_24BA3AB94(sub_24B915A68, v7, &unk_285EBEB68) & 1) != 0 && (a3 & 1) == 0)
  {
    v8 = v5;
    v9 = a2;

    MEMORY[0x24C250160](0x65737265766E692ELL, 0xE800000000000000);
    return v8;
  }

  else
  {
  }

  return v5;
}

uint64_t _s15FocusSettingsUI14ActivitySourceV17accessibilityName3forS2S_tFZ_0(uint64_t a1, unint64_t a2)
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

  sub_24BAAA5FC();

  MEMORY[0x24C250160](a1, a2);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v5 = sub_24BAA7C2C();

  return v5;
}

uint64_t getEnumTagSinglePayload for ActivitySource(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ActivitySource(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24B915A1C()
{
  result = qword_27F0631A0;
  if (!qword_27F0631A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0631A0);
  }

  return result;
}

id sub_24B915A88(uint64_t a1)
{
  v35 = a1;
  v1 = type metadata accessor for FocusConfigurationAction(0);
  v2 = MEMORY[0x28223BE20](v1);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  v6 = objc_allocWithZone(MEMORY[0x277D7D758]);
  v7 = sub_24BAA9FDC();
  v8 = sub_24BAA9FDC();

  v9 = [v6 initWithIdentifier:v7 localizedTitle:v8 isDestructive:1];

  v10 = objc_allocWithZone(MEMORY[0x277D23848]);
  v11 = sub_24BAA9FDC();
  v12 = sub_24BAA9FDC();
  v33 = [v10 initWithActionIdentifier:v11 bundleIdentifier:v12];

  type metadata accessor for FocusAppConfigurationDetailView(0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
  MEMORY[0x24C24FC10]();
  LODWORD(v11) = v5[v1[5]];
  sub_24B919000(v5, type metadata accessor for FocusConfigurationAction);
  v14 = 0;
  if (v11 == 1)
  {
    MEMORY[0x24C24FC10](v13);
    v14 = *&v5[v1[9]];
    sub_24B919000(v5, type metadata accessor for FocusConfigurationAction);
  }

  v32 = v14;
  v15 = [objc_allocWithZone(MEMORY[0x277D23C28]) init];
  MEMORY[0x24C24FC10](v13);
  v16 = v5[v1[5]];
  sub_24B919000(v5, type metadata accessor for FocusConfigurationAction);
  v31 = v9;
  if (v16 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24BAAE690;
    *(v17 + 32) = v9;
    v18 = v9;
  }

  MEMORY[0x24C24FC10](v13);
  v19 = v5[v1[5]];
  sub_24B919000(v5, type metadata accessor for FocusConfigurationAction);
  v20 = v34;
  MEMORY[0x24C24FC10](v13);
  v21 = *(v20 + v1[6]);
  sub_24B919000(v20, type metadata accessor for FocusConfigurationAction);
  v22 = objc_allocWithZone(MEMORY[0x277D7D768]);
  sub_24B919060();
  v23 = sub_24BAAA11C();

  v24 = v22;
  v26 = v32;
  v25 = v33;
  v27 = [v24 initWithFocusConfigurationActionIdentifier:v33 action:v32 suggestionContext:v15 footerButtons:v23 showsEnablementButton:v19 isEnabled:v21];

  v28 = [objc_allocWithZone(MEMORY[0x277D7D770]) initWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064708);
  sub_24BAA906C();
  v29 = v36;
  [v28 setDelegate_];

  return v28;
}

void sub_24B915F14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v87 - v7;
  v9 = type metadata accessor for FocusConfigurationAction(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v87 - v13;
  v15 = type metadata accessor for FocusAppConfigurationDetailView(0);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v21 = &v87 - v20;
  if (!a1)
  {
    goto LABEL_27;
  }

  v95 = v19;
  v96 = v17;
  v98 = v18;
  v99 = v9;
  v93 = v12;
  v97 = v8;
  v94 = a2;
  v22 = a1;
  v23 = [v22 isValid];
  v24 = a3 + v15[8];
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v24) = *(v24 + 16);
  v105 = v25;
  v106 = v26;
  LOBYTE(v107) = v24;
  LOBYTE(v103[0]) = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B6C();
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v28 = sub_24BAA812C();
  __swift_project_value_buffer(v28, qword_27F077038);
  sub_24B9190AC(a3, v21, type metadata accessor for FocusAppConfigurationDetailView);
  v29 = sub_24BAA810C();
  v30 = sub_24BAAA29C();
  v31 = os_log_type_enabled(v29, v30);
  v100 = v22;
  v101 = a3;
  if (v31)
  {
    v32 = v14;
    v33 = swift_slowAlloc();
    v34 = v15;
    v35 = swift_slowAlloc();
    *&v103[0] = v35;
    *v33 = 136446466;
    *(v33 + 4) = sub_24B8E49D4(0xD00000000000001FLL, 0x800000024BAAEF50, v103);
    *(v33 + 12) = 2080;
    v36 = &v21[v34[8]];
    v37 = *v36;
    v38 = *(v36 + 1);
    LOBYTE(v36) = v36[16];
    v105 = v37;
    v106 = v38;
    LOBYTE(v107) = v36;
    MEMORY[0x24C24FC10](&v102, v27);
    if (v102)
    {
      v39 = 0x64696C6176;
    }

    else
    {
      v39 = 0x696C617620746F6ELL;
    }

    if (v102)
    {
      v40 = 0xE500000000000000;
    }

    else
    {
      v40 = 0xE900000000000064;
    }

    sub_24B919000(v21, type metadata accessor for FocusAppConfigurationDetailView);
    v41 = sub_24B8E49D4(v39, v40, v103);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_24B8D3000, v29, v30, "[%{public}s] Updating app configuration with state that is %s", v33, 0x16u);
    swift_arrayDestroy();
    v42 = v35;
    v15 = v34;
    v22 = v100;
    MEMORY[0x24C251390](v42, -1, -1);
    v43 = v33;
    v14 = v32;
    a3 = v101;
    MEMORY[0x24C251390](v43, -1, -1);
  }

  else
  {

    sub_24B919000(v21, type metadata accessor for FocusAppConfigurationDetailView);
  }

  v44 = [v22 action];
  v45 = sub_24BAA810C();
  v46 = sub_24BAAA29C();
  v47 = os_log_type_enabled(v45, v46);
  if (v44)
  {
    v48 = v14;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v105 = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_24B8E49D4(0xD00000000000001FLL, 0x800000024BAAEF50, &v105);
      _os_log_impl(&dword_24B8D3000, v45, v46, "[%{public}s] Updating to app configuration that should have all required fields populated", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C251390](v50, -1, -1);
      MEMORY[0x24C251390](v49, -1, -1);
    }

    v51 = v99;
    v91 = v15;
    v52 = v15[7];
    v53 = v44;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    v55 = v48;
    MEMORY[0x24C24FC10]();
    v56 = *(v51 + 36);

    v92 = v53;
    *&v48[v56] = v53;
    sub_24BAA9B6C();
    v57 = v100;
    LOBYTE(v53) = [v100 isEnabled];
    MEMORY[0x24C24FC10](v54);
    v55[*(v51 + 24)] = v53;
    v90 = v52;
    sub_24BAA9B6C();
    v58 = sub_24BAAA1DC();
    v59 = *(v58 - 8);
    v60 = *(v59 + 56);
    v61 = v97;
    v89 = v58;
    v88 = v60;
    v87 = v59 + 56;
    (v60)(v97, 1, 1);
    v62 = v96;
    sub_24B9190AC(a3, v96, type metadata accessor for FocusAppConfigurationDetailView);
    sub_24BAAA1BC();
    v63 = sub_24BAAA1AC();
    v64 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v65 = swift_allocObject();
    v66 = MEMORY[0x277D85700];
    *(v65 + 16) = v63;
    *(v65 + 24) = v66;
    sub_24B91927C(v62, v65 + v64, type metadata accessor for FocusAppConfigurationDetailView);
    v67 = v65;
    v68 = v57;
    sub_24B981384(0, 0, v61, &unk_24BAAF158, v67);

    v69 = [v57 displayRepresentation];
    if (!v69)
    {
      v88(v61, 1, 1, v89);
      sub_24B9190AC(v101, v62, type metadata accessor for FocusAppConfigurationDetailView);
      v80 = sub_24BAAA1AC();
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      *(v81 + 24) = MEMORY[0x277D85700];
      sub_24B91927C(v62, v81 + v64, type metadata accessor for FocusAppConfigurationDetailView);
      sub_24B981384(0, 0, v61, &unk_24BAAF168, v81);

      return;
    }

    v70 = v69;
    v71 = v69;
    a3 = v101;
    v72 = v93;
    MEMORY[0x24C24FC10](v54);
    v73 = *(v99 + 44);
    v74 = *&v72[v73];
    v75 = v68;
    v15 = v91;
    v76 = v92;
    if (v74)
    {
      if (v71 == v74)
      {

        goto LABEL_26;
      }
    }

    *&v72[v73] = v70;
LABEL_26:
    sub_24BAA9B6C();

    a2 = v94;
LABEL_27:
    v82 = a3 + v15[9];
    v83 = *(v82 + 8);
    v84 = *(v82 + 48);
    v105 = *v82;
    v106 = v83;
    v85 = *(v82 + 32);
    v107 = *(v82 + 16);
    v108 = v85;
    v109 = v84;
    v86 = *(a2 + 16);
    v103[0] = *a2;
    v103[1] = v86;
    v104 = *(a2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0646F0);
    sub_24BAA9B6C();
    return;
  }

  if (v47)
  {
    v77 = v22;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v105 = v79;
    *v78 = 136446210;
    *(v78 + 4) = sub_24B8E49D4(0xD00000000000001FLL, 0x800000024BAAEF50, &v105);
    _os_log_impl(&dword_24B8D3000, v45, v46, "[%{public}s] The updated configuration state has no action", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x24C251390](v79, -1, -1);
    MEMORY[0x24C251390](v78, -1, -1);
  }

  else
  {
  }
}